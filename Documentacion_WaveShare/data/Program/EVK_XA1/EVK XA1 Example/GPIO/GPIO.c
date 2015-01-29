/********************************************************************************************************
*********************************************************************************************************
*
* File                : GPIO.c
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
#include <avr/io.h>
#include <util/delay.h>

int main(void)
{
	uint8_t n,tmp;
	PORTC.DIR =0xFF;
	PORTC.OUT =0x55;
	PORTE.DIR =0x00;
	
	for(n=0; n<6; n++){
		_delay_ms(500);
		PORTC.OUT =~PORTC.OUT;
	}

	while(1){
		tmp =~PORTE.IN;
		for(n=0; n<8; n++){
			if(tmp&0x01) PORTC.OUT =~n;
			else if((PORTE.IN) ==0xFF) PORTC.OUT = 0x00;
			tmp >>=1;
		}
	}
}
