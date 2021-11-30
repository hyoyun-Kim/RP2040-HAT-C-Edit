/**
  * ----------------------------------------------------------------------------------------------------
  * Includes
  * ----------------------------------------------------------------------------------------------------
  */ 
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "pico/stdlib.h"

#include "wizchip_conf.h"
#include "socket.h"
#include "w5x00_ssl.h"
#include "timer.h"

#include "mbedtls/x509_crt.h"
#include "mbedtls/error.h"
#include "mbedtls/ssl.h"
#include "mbedtls/ctr_drbg.h"
#include "mbedtls/compat-1.3.h"


/**
  * ----------------------------------------------------------------------------------------------------
  * Variables
  * ----------------------------------------------------------------------------------------------------
  */
static mbedtls_ctr_drbg_context g_ctr_drbg;
static mbedtls_ssl_config g_conf;
mbedtls_ssl_context g_ssl;


/**
  * ----------------------------------------------------------------------------------------------------
  * Functions
  * ----------------------------------------------------------------------------------------------------
  */
int wizchip_ssl_init(uint8_t *socket_fd)
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

int ssl_random_callback(void *p_rng, unsigned char *output, size_t output_len)
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

int recv_timeout(void *ctx, unsigned char *buf, size_t len, uint32_t timeout)
{
    uint32_t start_ms = millis();
    uint16_t rcv_len;

    do
    {
        getsockopt((uint8_t)ctx, SO_RECVBUF, &rcv_len);
        if(rcv_len > 0)
        {
            return recv((uint8_t)ctx, (uint8_t *)buf, (uint16_t)len);
        }
    } while ((millis() - start_ms) < timeout);

    return MBEDTLS_ERR_SSL_TIMEOUT;
}