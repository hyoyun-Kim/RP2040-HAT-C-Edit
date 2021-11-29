#ifndef _TIMER_H_
#define _TIMER_H_

/**
  * ----------------------------------------------------------------------------------------------------
  * Macros
  * ----------------------------------------------------------------------------------------------------
  */
 /* Timeout */
#define RECV_TIMEOUT (1000 * 10) //  10 seconds


/**
  * ----------------------------------------------------------------------------------------------------
  * Functions
  * ----------------------------------------------------------------------------------------------------
  */
/* Timer */
void wizchip_1ms_timer_initialize(void (*callback)(void));
bool wizchip_1ms_timer_callback(struct repeating_timer *t);

void wizchip_delay_ms(uint32_t ms);

time_t millis(void);

#endif
