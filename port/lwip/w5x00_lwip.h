#ifndef _W5x00_LWIP_H_
#define _W5x00_LWIP_H_

#include "lwip/netif.h"


/**
  * ----------------------------------------------------------------------------------------------------
  * Macros
  * ----------------------------------------------------------------------------------------------------
  */
/* LWIP */
#define ETHERNET_MTU 1500

/**
  * ----------------------------------------------------------------------------------------------------
  * Functions
  * ----------------------------------------------------------------------------------------------------
  */
/* W5x00 */
/*! \brief W5x00 chip reset
 *  \ingroup w5x00_spi
 * 
 * Set a reset pin and reset.
 *
 * \param none
 */
err_t netif_initialize(struct netif *netif);

err_t netif_output(struct netif *netif, struct pbuf *p);

int32_t send_lwip(uint8_t sn, uint8_t *buf, uint16_t len);

int32_t recv_lwip(uint8_t sn, uint8_t * buf, uint16_t len);

void netif_link_callback(struct netif *netif);
void netif_status_callback(struct netif *netif);
#endif
