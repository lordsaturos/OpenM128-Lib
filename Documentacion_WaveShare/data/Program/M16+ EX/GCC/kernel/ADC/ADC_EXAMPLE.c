/*
*========================================================================================================
*
* File                : ADC_EXAMPLE.C
* Hardware Environment:	
* Build Environment   : AVR Studio 4.16 + Winavr 20090313
* Version             : V1.0
* By                  : Wu Ze
*
*                                  (c) Copyright 2005-2009, WaveShare
*                                       http://www.waveShare.net
*                                          All Rights Reserved
*
*========================================================================================================
*/
#define _DVK501_M16_EX_ 1
#include <avr/io.h>
#include <ws_adc_port.h>

int main(void)
{
	DDRB=0xFF;
	adcInit();
	while(1)
	{
		PORTB=getADC();
	}
}
