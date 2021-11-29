/**
  * ----------------------------------------------------------------------------------------------------
  * Includes
  * ----------------------------------------------------------------------------------------------------
  */ 
#include <stdio.h>

#include "pico/stdlib.h"

#include "timer.h"


/**
  * ----------------------------------------------------------------------------------------------------
  * Variables
  * ----------------------------------------------------------------------------------------------------
  */
static struct repeating_timer g_timer;

/* Timer  */
volatile uint32_t g_msec_cnt = 0;

void (*callback_ptr)(void);

/**
  * ----------------------------------------------------------------------------------------------------
  * Functions
  * ----------------------------------------------------------------------------------------------------
  */
/* Timer */
void wizchip_1ms_timer_initialize(void (*callback)(void))
{
  callback_ptr = callback;
  add_repeating_timer_us(-1000, wizchip_1ms_timer_callback, NULL, &g_timer);
}

bool wizchip_1ms_timer_callback(struct repeating_timer *t)
{
    callback_ptr();
}

time_t millis(void)
{
    return g_msec_cnt;
}

/* Delay */
void wizchip_delay_ms (uint32_t ms)
{
  sleep_ms(ms);
}