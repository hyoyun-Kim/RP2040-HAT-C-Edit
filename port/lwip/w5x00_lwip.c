/**
  * ----------------------------------------------------------------------------------------------------
  * Includes
  * ----------------------------------------------------------------------------------------------------
  */
#include <stdio.h>

#include "socket.h"

#include "netif/etharp.h"

#include "w5x00_lwip.h"


/**
  * ----------------------------------------------------------------------------------------------------
  * Variables
  * ----------------------------------------------------------------------------------------------------
  */
uint8_t mac[6] = {0xAA, 0x6F, 0x77, 0x47, 0x75, 0x8C};


/**
  * ----------------------------------------------------------------------------------------------------
  * Functions
  * ----------------------------------------------------------------------------------------------------
  */
err_t netif_output(struct netif *netif, struct pbuf *p)
{
   uint send_len = 0;

   send_len = send_lwip(0, p->payload, p->len);

   return ERR_OK;
}

err_t netif_initialize(struct netif *netif)
{
   netif->linkoutput = netif_output;
   netif->output = etharp_output;
   netif->mtu = ETHERNET_MTU;
   netif->flags = NETIF_FLAG_BROADCAST | NETIF_FLAG_ETHARP | NETIF_FLAG_ETHERNET | NETIF_FLAG_IGMP | NETIF_FLAG_MLD6;
   SMEMCPY(netif->hwaddr, mac, sizeof(netif->hwaddr));
   netif->hwaddr_len = sizeof(netif->hwaddr);
   return ERR_OK;
}

int32_t send_lwip(uint8_t sn, uint8_t *buf, uint16_t len)
{
   uint8_t tmp = 0;
   uint16_t freesize = 0;

   tmp = getSn_SR(sn);

   freesize = getSn_TxMAX(sn);
   if (len > freesize) len = freesize; // check size not to exceed MAX size.   
   
   // while(1)
   // {
   //    freesize = getSn_TX_FSR(sn);
   //    //tmp = getSn_SR(sn);
   //    if(tmp == 0) return -1;
      
   //    if(len <= freesize) break;
   // };
   
   wiz_send_data(sn, buf, len);
   setSn_CR(sn, Sn_CR_SEND);
   while(getSn_CR(sn));   
   
   while(1)
   {
      uint8_t IRtemp = getSn_IR(sn);
      if(IRtemp & Sn_IR_SENDOK)
      {
         setSn_IR(sn, Sn_IR_SENDOK);
         //printf("Packet sent ok\n");
         break;
      }
      else if (IRtemp & Sn_IR_TIMEOUT)
      {
         setSn_IR(sn, Sn_IR_TIMEOUT);
         //printf("Socket is closed\n");
         // There was a timeout
         return -1;
      }

   }
   
   return (int32_t)len;
}

int32_t recv_lwip(uint8_t sn, uint8_t * buf, uint16_t len)
{  
   uint8_t head[2];
   uint16_t pack_len = 0;   

   pack_len = getSn_RX_RSR(sn);
   
   if(pack_len > 0)
   {
      wiz_recv_data(sn, head, 2);
      setSn_CR(sn, Sn_CR_RECV);

      // byte size of data packet (2byte)
      pack_len = head[0];
      pack_len = (pack_len << 8) + head[1];
      pack_len -= 2;

      if (pack_len > len)
      {
         // Packet is bigger than buffer - drop the packet
         wiz_recv_ignore(sn, pack_len);
         setSn_CR(sn, Sn_CR_RECV);
         return 0;
      }

      wiz_recv_data(sn, buf, pack_len); // data copy      
      setSn_CR(sn,Sn_CR_RECV);
   }

   return (int32_t)pack_len;
}

void netif_link_callback(struct netif *netif)
{
    printf("netif link status changed %s\n", netif_is_link_up(netif) ? "up" : "down");
}

void netif_status_callback(struct netif *netif)
{
    printf("netif status changed %s\n", ip4addr_ntoa(netif_ip4_addr(netif)));
}