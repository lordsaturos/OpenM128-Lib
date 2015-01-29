/*
*========================================================================================================
*
* File                : PS2_LCD12864.c
* Hardware Environment:	DVK501 && M128+ EX
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

#define _DVK501_M16_EX_
#include <avr/io.h>
#include <util/delay.h>
#include <ws_ps2port.h>
#include <ws_ps2_code.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{
	ps2IntInit();
	st7920LcdInit();

	showLine(0,0,lcd_buffer,"Keyboard Example");
	showLine(0,1,lcd_buffer,"Press the Keyboard:");
	refreshLCD(lcd_buffer);
	/*PS2 initialization*/
	ps2Init();

	sei();
	while(1)
	{
		showLine(4,2,lcd_buffer,"%c",ps2GetChar());
		refreshLCD(lcd_buffer);
	}
}
