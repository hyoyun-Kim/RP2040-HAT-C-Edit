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

#include "port_common.h"

#include "wizchip_conf.h"
#include "w5x00_spi.h"

#include "ftpc.h"

/**
  * ----------------------------------------------------------------------------------------------------
  * Macros
  * ----------------------------------------------------------------------------------------------------
  */
/* Buffer */
#define ETHERNET_BUF_MAX_SIZE (1024 * 2)

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

/* FTP */
static uint8_t g_ftp_buf[ETHERNET_BUF_MAX_SIZE] = {
    0,
};

/**
  * ----------------------------------------------------------------------------------------------------
  * Main
  * ----------------------------------------------------------------------------------------------------
  */
int main()
{
    /* Initialize */
    uint8_t retval = 0;


    set_clock_khz();

    stdio_init_all();

    wizchip_spi_initialize();
    wizchip_cris_initialize();

    wizchip_reset();
    wizchip_initialize();
    wizchip_check();

    network_initialize(g_net_info);

    ftpc_init(g_net_info.ip);

    /* Get network information */
    print_network_information(g_net_info);

    /* Infinite loop */
    while (1)
    {
        /* Run FTP client */
        if ((retval = ftpc_run(g_ftp_buf)) < 0)
        {
            printf(" FTP client error : %d\n", retval);

            while (1)
                ;
        }
    }
}
