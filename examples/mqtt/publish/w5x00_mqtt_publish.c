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
#include <string.h>

#include "pico/stdlib.h"
#include "pico/binary_info.h"
#include "pico/critical_section.h"
#include "hardware/spi.h"
#include "hardware/dma.h"

#include "wizchip_conf.h"

#include "mqtt_interface.h"
#include "MQTTClient.h"
#include "w5x00_spi.h"

/**
  * ----------------------------------------------------------------------------------------------------
  * Macros
  * ----------------------------------------------------------------------------------------------------
  */
/* Buffer */
#define ETHERNET_BUF_MAX_SIZE (1024 * 2)

/* Socket */
#define SOCKET_MQTT 0

/* Port */
#define PORT_MQTT 1883

/* Timeout */
#define DEFAULT_TIMEOUT 1000 // 1 second

/* MQTT */
#define MQTT_CLIENT_ID "rpi-pico"
#define MQTT_USERNAME "wiznet"
#define MQTT_PASSWORD "0123456789"
#define MQTT_PUBLISH_TOPIC "publish_topic"
#define MQTT_PUBLISH_PAYLOAD "Hello, World!"
#define MQTT_KEEP_ALIVE 60 // 60 milliseconds

/**
  * ----------------------------------------------------------------------------------------------------
  * Variables
  * ----------------------------------------------------------------------------------------------------
  */
/* Network */
static wiz_NetInfo g_net_info =
	{
		.mac = {0x00, 0x08, 0xDC, 0x12, 0x34, 0x56}, // MAC address
		.ip = {192, 168, 1, 15},					 // IP address
		.sn = {255, 255, 255, 0},					 // Subnet Mask
		.gw = {192, 168, 1, 1},					 	 // Gateway
		.dns = {8, 8, 8, 8},						 // DNS server
		.dhcp = NETINFO_STATIC						 // DHCP enable/disable
};

/* Critical section */
extern critical_section_t g_wizchip_cri_sec;

#ifdef USE_SPI_DMA
extern uint dma_tx;
extern uint dma_rx;
extern dma_channel_config dma_channel_config_tx;
extern dma_channel_config dma_channel_config_rx;
#endif

/* MQTT */
static uint8_t g_mqtt_send_buf[ETHERNET_BUF_MAX_SIZE] = {
	0,
};
static uint8_t g_mqtt_recv_buf[ETHERNET_BUF_MAX_SIZE] = {
	0,
};
static uint8_t g_mqtt_broker_ip[4] = {192, 168, 1, 2};
static Network g_mqtt_network;
static MQTTClient g_mqtt_client;
static MQTTPacket_connectData g_mqtt_packet_connect_data = MQTTPacket_connectData_initializer;
static MQTTMessage g_mqtt_message;


/**
  * ----------------------------------------------------------------------------------------------------
  * Main
  * ----------------------------------------------------------------------------------------------------
  */
int main()
{
	/* Initialize */
	int32_t retval = 0;

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

	network_initialize(g_net_info);

	/* Get network information */
	print_network_information(g_net_info);

	NewNetwork(&g_mqtt_network, SOCKET_MQTT);

	retval = ConnectNetwork(&g_mqtt_network, g_mqtt_broker_ip, PORT_MQTT);

	if (retval != 1)
	{
		printf(" Network connect failed\n");

		while (1)
			;
	}

	/* Initialize MQTT client */
	MQTTClientInit(&g_mqtt_client, &g_mqtt_network, DEFAULT_TIMEOUT, g_mqtt_send_buf, ETHERNET_BUF_MAX_SIZE, g_mqtt_recv_buf, ETHERNET_BUF_MAX_SIZE);

	/* Connect to the MQTT broker */
	g_mqtt_packet_connect_data.MQTTVersion = 3;
	g_mqtt_packet_connect_data.cleansession = 1;
	g_mqtt_packet_connect_data.willFlag = 0;
	g_mqtt_packet_connect_data.keepAliveInterval = MQTT_KEEP_ALIVE;
	g_mqtt_packet_connect_data.clientID.cstring = MQTT_CLIENT_ID;
	g_mqtt_packet_connect_data.username.cstring = MQTT_USERNAME;
	g_mqtt_packet_connect_data.password.cstring = MQTT_PASSWORD;

	retval = MQTTConnect(&g_mqtt_client, &g_mqtt_packet_connect_data);

	if (retval < 0)
	{
		printf(" MQTT connect failed : %d\n", retval);

		while (1)
			;
	}

	printf(" MQTT connected\n");

	/* Publish */
	g_mqtt_message.qos = QOS0;
	g_mqtt_message.retained = 0;
	g_mqtt_message.dup = 0;
	g_mqtt_message.payload = MQTT_PUBLISH_PAYLOAD;
	g_mqtt_message.payloadlen = strlen(g_mqtt_message.payload);

	retval = MQTTPublish(&g_mqtt_client, MQTT_PUBLISH_TOPIC, &g_mqtt_message);

	if (retval < 0)
	{
		printf(" Publish failed : %d\n", retval);

		while (1)
			;
	}

	printf(" Published\n");

	/* Infinite loop */
	while (1)
	{
		; // nothing to do
	}
}

