/**
 * Copyright (c) 2021 WIZnet Co.,Ltd
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/**
  * ----------------------------------------------------------------------------------------------------
  * Includes
  * ----------------------------------------------------------------------------------------------------
  */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "pico/stdlib.h"
#include "pico/binary_info.h"
#include "pico/critical_section.h"
#include "hardware/spi.h"
#include "hardware/dma.h"

#include "wizchip_conf.h"
#include "socket.h"
#include "w5x00_spi.h"
#include "timer.h"

#include "mbedtls/x509_crt.h"
#include "mbedtls/error.h"
#include "mbedtls/ssl.h"
#include "mbedtls/ctr_drbg.h"
#include "mbedtls/compat-1.3.h"

/**
  * ----------------------------------------------------------------------------------------------------
  * Macros
  * ----------------------------------------------------------------------------------------------------
  */
/* Buffer */
#define ETHERNET_BUF_MAX_SIZE (1024 * 2)

/* Socket */
#define SOCKET_SSL 0

/* Port */
#define PORT_SSL 443

/**
  * ----------------------------------------------------------------------------------------------------
  * Variables
  * ----------------------------------------------------------------------------------------------------
  */
/* Network */
static wiz_NetInfo g_net_info =
    {
        .mac = {0x00, 0x08, 0xDC, 0x12, 0x34, 0x56}, // MAC address
        .ip = {192, 168, 11, 2},                     // IP address
        .sn = {255, 255, 255, 0},                    // Subnet Mask
        .gw = {192, 168, 11, 1},                     // Gateway
        .dns = {8, 8, 8, 8},                         // DNS server
        .dhcp = NETINFO_STATIC                       // DHCP enable/disable
};

/* SSL */
static uint8_t g_ssl_buf[ETHERNET_BUF_MAX_SIZE] = {
    0,
};
static uint8_t g_ssl_target_ip[4] = {192, 168, 11, 3};

static mbedtls_ctr_drbg_context g_ctr_drbg;
static mbedtls_ssl_context g_ssl;
static mbedtls_ssl_config g_conf;

/* Timer  */
static struct repeating_timer g_timer;
static volatile uint32_t g_devtime_msec = 0;

/* Critical section */
extern critical_section_t g_wizchip_cri_sec;

#ifdef USE_SPI_DMA
extern uint dma_tx;
extern uint dma_rx;
extern dma_channel_config dma_channel_config_tx;
extern dma_channel_config dma_channel_config_rx;
#endif

/**
  * ----------------------------------------------------------------------------------------------------
  * Functions
  * ----------------------------------------------------------------------------------------------------
  */
/* SSL */
static int wizchip_ssl_init(uint8_t *socket_fd);
static int ssl_random_callback(void *p_rng, unsigned char *output, size_t output_len);
static int recv_timeout(void *ctx, unsigned char *buf, size_t len, uint32_t timeout);

/**
  * ----------------------------------------------------------------------------------------------------
  * Main
  * ----------------------------------------------------------------------------------------------------
  */
int main()
{
    /* Initialize */
    const int *list = NULL;
    uint16_t len = 0;
    uint32_t retval = 0;
    uint32_t start_ms = 0;

    stdio_init_all();

    // this example will use SPI0 at 5MHz
    spi_init(SPI_PORT, 5000 * 1000);

    critical_section_init(&g_wizchip_cri_sec);

    gpio_set_function(PIN_SCK, GPIO_FUNC_SPI);
    gpio_set_function(PIN_MOSI, GPIO_FUNC_SPI);
    gpio_set_function(PIN_MISO, GPIO_FUNC_SPI);

    // make the SPI pins available to picotool
    bi_decl(bi_3pins_with_func(PIN_MISO, PIN_MOSI, PIN_SCK, GPIO_FUNC_SPI));

    // chip select is active-low, so we'll initialise it to a driven-high state
    gpio_init(PIN_CS);
    gpio_set_dir(PIN_CS, GPIO_OUT);
    gpio_put(PIN_CS, 1);

    // make the SPI pins available to picotool
    bi_decl(bi_1pin_with_name(PIN_CS, "W5x00 CHIP SELECT"));

#ifdef USE_SPI_DMA
    dma_tx = dma_claim_unused_channel(true);
    dma_rx = dma_claim_unused_channel(true);

    dma_channel_config_tx = dma_channel_get_default_config(dma_tx);
    channel_config_set_transfer_data_size(&dma_channel_config_tx, DMA_SIZE_8);
    channel_config_set_dreq(&dma_channel_config_tx, DREQ_SPI0_TX);

    // We set the inbound DMA to transfer from the SPI receive FIFO to a memory buffer paced by the SPI RX FIFO DREQ
    // We coinfigure the read address to remain unchanged for each element, but the write
    // address to increment (so data is written throughout the buffer)
    dma_channel_config_rx = dma_channel_get_default_config(dma_rx);
    channel_config_set_transfer_data_size(&dma_channel_config_rx, DMA_SIZE_8);
    channel_config_set_dreq(&dma_channel_config_rx, DREQ_SPI0_RX);
    channel_config_set_read_increment(&dma_channel_config_rx, false);
    channel_config_set_write_increment(&dma_channel_config_rx, true);
#endif

    wizchip_reset();
    wizchip_initialize();
    wizchip_check();

    add_repeating_timer_us(-1000, repeating_timer_callback, NULL, &g_timer);

    network_initialize(g_net_info);

    /* Get network information */
    print_network_information(g_net_info);

    retval = wizchip_ssl_init(SOCKET_SSL);

    if (retval < 0)
    {
        printf(" SSL initialize failed %d\n", retval);

        while (1)
            ;
    }

    /* Get ciphersuite information */
    printf(" Supported ciphersuite lists\n");

    list = mbedtls_ssl_list_ciphersuites();

    while (*list)
    {
        printf(" %-42s\n", mbedtls_ssl_get_ciphersuite_name(*list));

        list++;

        if (!*list)
        {
            break;
        }

        printf(" %s\n", mbedtls_ssl_get_ciphersuite_name(*list));

        list++;
    }

    retval = socket((uint8_t)(g_ssl.p_bio), Sn_MR_TCP, PORT_SSL, SF_TCP_NODELAY);

    if (retval != SOCKET_SSL)
    {
        printf(" Socket failed %d\n", retval);

        while (1)
            ;
    }

    start_ms = millis();

    do
    {
        retval = connect((uint8_t)(g_ssl.p_bio), g_ssl_target_ip, PORT_SSL);

        if ((retval == SOCK_OK) || (retval == SOCKERR_TIMEOUT))
        {
            break;
        }
    } while ((millis() - start_ms) < RECV_TIMEOUT);

    if ((retval != SOCK_OK) || (retval == SOCK_BUSY))
    {
        printf(" Connect failed %d\n", retval);

        while (1)
            ;
    }

    printf(" Connected %d\n", retval);

    while ((retval = mbedtls_ssl_handshake(&g_ssl)) != 0)
    {
        if ((retval != MBEDTLS_ERR_SSL_WANT_READ) && (retval != MBEDTLS_ERR_SSL_WANT_WRITE))
        {
            printf(" failed\n  ! mbedtls_ssl_handshake returned -0x%x\n", -retval);

            while (1)
                ;
        }
    }

    printf(" ok\n    [ Ciphersuite is %s ]\n", mbedtls_ssl_get_ciphersuite(&g_ssl));

    memset(g_ssl_buf, 0x00, ETHERNET_BUF_MAX_SIZE);
    strcpy(g_ssl_buf, " W5x00 TCP over SSL test\n");

    mbedtls_ssl_write(&g_ssl, g_ssl_buf, strlen(g_ssl_buf));

    /* Infinite loop */
    while (1)
    {
        len = getSn_RX_RSR((uint8_t)(g_ssl.p_bio));

        if (len > 0)
        {
            if (len > ETHERNET_BUF_MAX_SIZE)
            {
                len = ETHERNET_BUF_MAX_SIZE;
            }

            memset(g_ssl_buf, 0x00, ETHERNET_BUF_MAX_SIZE);

            mbedtls_ssl_read(&g_ssl, g_ssl_buf, len);

            printf("%s", g_ssl_buf);
        }
    }
}

/**
  * ----------------------------------------------------------------------------------------------------
  * Functions
  * ----------------------------------------------------------------------------------------------------
  */
static int wizchip_ssl_init(uint8_t *socket_fd)
{
    int retval;

    mbedtls_ctr_drbg_init(&g_ctr_drbg);
    mbedtls_ssl_init(&g_ssl);
    mbedtls_ssl_config_init(&g_conf);

    if ((retval = mbedtls_ssl_config_defaults(&g_conf,
                                              MBEDTLS_SSL_IS_CLIENT,
                                              MBEDTLS_SSL_TRANSPORT_STREAM,
                                              MBEDTLS_SSL_PRESET_DEFAULT)) != 0)
    {
        printf(" failed\n  ! mbedtls_ssl_config_defaults returned %d\n", retval);

        return -1;
    }

    printf(" Socket descriptor %d\n", socket_fd);

    mbedtls_ssl_conf_authmode(&g_conf, MBEDTLS_SSL_VERIFY_NONE);
    mbedtls_ssl_conf_rng(&g_conf, ssl_random_callback, &g_ctr_drbg);
    mbedtls_ssl_conf_endpoint(&g_conf, MBEDTLS_SSL_IS_CLIENT);
    mbedtls_ssl_conf_read_timeout(&g_conf, 1000 * 10);

    if ((retval = mbedtls_ssl_setup(&g_ssl, &g_conf)) != 0)
    {
        printf(" failed\n  ! mbedtls_ssl_setup returned %d\n", retval);

        return -1;
    }

    mbedtls_ssl_set_bio(&g_ssl, socket_fd, send, recv, recv_timeout);
}

static int ssl_random_callback(void *p_rng, unsigned char *output, size_t output_len)
{
    int i;

    if (output_len <= 0)
    {
        return -1;
    }

    for (i = 0; i < output_len; i++)
    {
        *output++ = rand() % 0xff;
    }

    srand(rand());

    return 0;
}

static int recv_timeout(void *ctx, unsigned char *buf, size_t len, uint32_t timeout)
{
    uint32_t start_ms = millis();

    do
    {
        if (getSn_RX_RSR((uint8_t)ctx))
        {
            return recv((uint8_t)ctx, (uint8_t *)buf, (uint16_t)len);
        }
    } while ((millis() - start_ms) < timeout);

    return MBEDTLS_ERR_SSL_TIMEOUT;
}
