/**
  * ----------------------------------------------------------------------------------------------------
  * Includes
  * ----------------------------------------------------------------------------------------------------
  */ 
#include<stdio.h>

#include "pico/stdlib.h"

#include "timer.h"


/**
  * ----------------------------------------------------------------------------------------------------
  * Variables
  * ----------------------------------------------------------------------------------------------------
  */
static volatile uint32_t g_devtime_msec = 0;

/**
  * ----------------------------------------------------------------------------------------------------
  * Functions
  * ----------------------------------------------------------------------------------------------------
  */
/* Timer */
bool repeating_timer_callback(struct repeating_timer *t)
{
    g_devtime_msec++;
}

time_t millis(void)
{
    return g_devtime_msec;
}
