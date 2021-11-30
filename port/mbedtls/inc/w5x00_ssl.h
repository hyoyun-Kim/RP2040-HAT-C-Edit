#ifndef _W5X00_SSL_H_
#define _W5X00_SSL_H_

/**
  * ----------------------------------------------------------------------------------------------------
  * Functions
  * ----------------------------------------------------------------------------------------------------
  */
/* SSL */
int wizchip_ssl_init(uint8_t *socket_fd);
int ssl_random_callback(void *p_rng, unsigned char *output, size_t output_len);
int recv_timeout(void *ctx, unsigned char *buf, size_t len, uint32_t timeout);

/* Timer */
time_t millis(void);
void repeating_timer_callback(void);
#endif
