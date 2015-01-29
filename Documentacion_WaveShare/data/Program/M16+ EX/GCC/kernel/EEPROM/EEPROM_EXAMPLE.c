/*
*========================================================================================================
*
* File                : EEPROM_EXAMPLE.C
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
#include <avr/eeprom.h>

int main(void)
{
	int16_t tmp;
	for(tmp=0;tmp<255;tmp++)
	{
		_EEPUT(tmp,tmp);	 
	}
	_EEPUT(tmp,tmp);		
	while(1);
}
