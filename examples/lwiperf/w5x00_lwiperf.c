/**
 * Copyright (c) 2022 WIZnet Co.,Ltd
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
#include "w5x00_lwip.h"
#include "socket.h"

#include "lwip/init.h"
#include "lwip/timeouts.h"
#include "lwip/netif.h"

#include "lwip/apps/lwiperf.h"
#include "lwip/etharp.h"


/**
  * ----------------------------------------------------------------------------------------------------
  * Macros
  * ----------------------------------------------------------------------------------------------------
  */
/* Socket */
#define SOCKET_MACRAW 0

/* Port */
#define PORT_LWIPERF 5001

/**
  * ----------------------------------------------------------------------------------------------------
  * Variables
  * ----------------------------------------------------------------------------------------------------
  */
/* Network */
static ip_addr_t static_ip, addr, mask;

extern uint8_t mac[6];

/* LWIP */
struct netif g_netif;

lwiperf_report_fn fn;


/**
  * ----------------------------------------------------------------------------------------------------
  * Main
  * ----------------------------------------------------------------------------------------------------
  */
int main()
{
    // Initialize
    uint32_t retval = 0;
    uint16_t packet_len = 0;

    // Network
    IP4_ADDR(&static_ip, 192, 168, 1, 15);
    IP4_ADDR(&mask, 255, 255, 255, 0);
    IP4_ADDR(&addr, 192, 168, 1, 1);

    // Initialize stdio after the clock change
    stdio_init_all();

    // Set main clock to 125MHz
    set_clock_khz();
    sleep_ms(3000);
    
    // Initialize LWIP in NO SYS mode
    lwip_init();
    netif_add(&g_netif, &static_ip, &mask, &addr, NULL, netif_initialize, netif_input);    
    g_netif.name[0] = 'e';
    g_netif.name[1] = '0';
    
    // Assign callbacks for link and status
    netif_set_link_callback(&g_netif, netif_link_callback);
    netif_set_status_callback(&g_netif, netif_status_callback);
    
    // Set the default interface and bring it up
    netif_set_default(&g_netif);
    netif_set_up(&g_netif);

    wizchip_spi_initialize();
    wizchip_cris_initialize();

    wizchip_reset();
    wizchip_initialize();
    wizchip_check();

    // Set chip mac address
    setSHAR(mac);
    
    ctlwizchip(CW_RESET_PHY, 0);
    sleep_ms(3000);

    // MACRAW socket open
    retval = socket(SOCKET_MACRAW, Sn_MR_MACRAW, PORT_LWIPERF, 0x00);
    
    if(retval < 0)
    {
      printf("MACRAW socket open failed\n"); 
    }
    
    uint8_t *eth_pkt = malloc(ETHERNET_MTU);
    struct pbuf *p = NULL;

    netif_set_link_up(&g_netif);
    
    // Start lwiperf server
    lwiperf_start_tcp_server_default(fn, NULL);
    

    /* Infinite loop */
    while (1)
    {
      getsockopt(SOCKET_MACRAW, SO_RECVBUF, &packet_len);

      if (packet_len > 0)
      {
        packet_len = recv_lwip(0, (uint8_t *)eth_pkt, packet_len);

        if (packet_len)
        {
          p = pbuf_alloc(PBUF_RAW, packet_len, PBUF_POOL);
          pbuf_take(p, eth_pkt, packet_len);
          free(eth_pkt);

          eth_pkt = malloc(ETHERNET_MTU);
        }
        else
        {
          // printf("w5100s: no packet received\n");
        }

        if (packet_len && p != NULL)
        {
          LINK_STATS_INC(link.recv);

          if (g_netif.input(p, &g_netif) != ERR_OK)
          {
            pbuf_free(p);
          }
        }
      }

      /* Cyclic lwIP timers check */
      sys_check_timeouts();
    }
}