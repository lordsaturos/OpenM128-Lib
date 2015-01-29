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

#include <avr/io.h>
#include <util/delay.h>
#include <avr/wdt.h> 

void showReset(void)
{
	DDRB=0xFF;
	PORTB=0x55;
	_delay_ms(300);
	PORTB=~PORTB;
	_delay_ms(300);
	PORTB=~PORTB;
	_delay_ms(300);
	PORTB=~PORTB;
	_delay_ms(300);
	PORTB=~PORTB;
	_delay_ms(300);
	PORTB=0x00;
}

int main(void)
{
	showReset();	
	wdt_enable(WDTO_500MS); 
	while(1)
	{
		wdt_reset();
		_delay_ms(350);	
	}
}
