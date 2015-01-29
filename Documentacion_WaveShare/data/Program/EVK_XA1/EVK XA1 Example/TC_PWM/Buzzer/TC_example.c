/********************************************************************************************************
*********************************************************************************************************
*
* File                : TC_example.c
* Hardware Environment:	EVK XA1
* Build Environment   : AVR Studio 4.18 sp1 + Winavr 20100110
* Version             : V1.0
* By                  : Wu Ze
* DATE				  : 20100320
*
*                                  (c) Copyright 2005-2010, WaveShare
*                                       http://www.waveShare.net
*                                          All Rights Reserved
*
*********************************************************************************************************
********************************************************************************************************/

#include "avr_compiler.h"
#include "TC_driver.h"
#include <util/delay.h>

#define F_CPU           2000000UL
#define CPU_PRESCALER   1

#define BUZZER_TC TCF1

int main( void )
{
	uint16_t compareValue = 10;

	/* Enable output on PF4. */
	PORTF.DIR = 0x01<<4;

	/* Configure the TC for frequency generation mode. */
	TC1_ConfigWGM( &BUZZER_TC, TC_WGMODE_FRQ_gc );

	/* Enable Compare channel A. */
	TC1_EnableCCChannels( &BUZZER_TC, TC1_CCAEN_bm );

	/* Start timer by selecting a clock source. */
	TC1_ConfigClockSource( &BUZZER_TC, TC_CLKSEL_DIV64_gc );

	do {
		if(compareValue<50)
			compareValue++;
		else 
			compareValue=10;
		
		/* For frequency generation the period time (T) is
		controlled by the CCA register instead of PER. */
		TC_SetCompareA( &BUZZER_TC, compareValue );

		_delay_ms(200);

	} while (1);
}
