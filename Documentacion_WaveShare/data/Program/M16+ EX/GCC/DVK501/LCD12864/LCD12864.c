/********************************************************************************************************
*********************************************************************************************************
*
* File                : LCD12864.c
* Hardware Environment:
* Build Environment   : AVR Studio 4.16 + Winavr 20090313
* Version             : V1.0
* By                  : Wu Ze
*
*                                  (c) Copyright 2005-2009, WaveShare
*                                       http://www.waveShare.net
*                                          All Rights Reserved
*
*********************************************************************************************************
********************************************************************************************************/

#define _DVK501_M16_EX_ 1
#include <avr/io.h>
#include <ws_lcd_ST7920_port.h>
int main(void)
{
	st7920LcdInit(); /*LCD³õÊ¼»¯*/
	showLine(0,0,lcd_buffer,"LCD12864 Example");
	showLine(2,1,lcd_buffer,"SZ WaveShare");
	refreshLCD(lcd_buffer); /*Ë¢ÐÂLCD*/
	while(1)
	{
	}
}
