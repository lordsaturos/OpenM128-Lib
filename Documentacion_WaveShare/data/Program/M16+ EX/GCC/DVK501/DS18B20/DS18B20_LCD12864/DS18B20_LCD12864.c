/********************************************************************************************************
*********************************************************************************************************
*
* File                : DS18B20_LCD12864.c
* Hardware Environment:
* Build Environment   : AVR Studio 4.16 + Winavr 20090313 (ICCAVR-->GCCAVR)
* Version             : V1.0
* By                  : Wu Ze
*
*                                  (c) Copyright 2005-2009, WaveShare
*                                       http://www.waveShare.net
*                                          All Rights Reserved
*
*********************************************************************************************************
********************************************************************************************************/

#define _DVK501_M16_EX_
#include <avr/io.h>
#include <util/delay.h>
#include <ws_ds18b20.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{
	st7920LcdInit(); /*LCD³õÊ¼»¯*/
	showLine(0,0,lcd_buffer,"DS18B20");
	showLine(0,1,lcd_buffer,"Temperature Measure Experiment");
	showLine(0,3,lcd_buffer,"TEMP£º  ¡æ");
	while(1)
	{
		showLine(6,3,lcd_buffer,"%d2",readTemp());
		refreshLCD(lcd_buffer); /*Ë¢ÐÂLCD*/
		_delay_ms(1000);
	}
}
