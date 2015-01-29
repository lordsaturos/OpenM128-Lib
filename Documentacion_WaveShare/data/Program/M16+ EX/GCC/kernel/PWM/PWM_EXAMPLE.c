/*
*========================================================================================================
*
* File                : PWM_EXAMPLE.C
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
#include <avr/io.h>
#include <util/delay.h>
int main(void)
{
	DDRB=0xFF;
	TCCR0=(1<<WGM01)|(1<<WGM00)|(1<<COM01)|(1<<CS00);
	OCR0=0;	
	while(1)
	{
		_delay_ms(10);
		OCR0++;
	}
}
