/*
*========================================================================================================
*
* File                : TIMER_EXAMPLE.C
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
#include <avr/interrupt.h>
#include <util/delay.h>
ISR(TIMER1_OVF_vect,ISR_BLOCK)
{
	TCNT1=58162;	
	PORTA=~PORTA;
}

int main(void)
{
	DDRA=0xFF;	
	PORTA=0x00;
	TCCR1A=0x00;
	TCCR1B=(1<<CS12)|(1<<CS10);
	TCNT1=58162;
	TIMSK=(1<<TOIE1);
	asm("SEI");
	while(1);
}
