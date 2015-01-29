/********************************************************************************************************
*********************************************************************************************************
*
* File                : PCF8574.c
* Hardware Environment:
* Build Environment   : AVR Studio 4.16 + Winavr 20090313  (ICCAVR --> GCCAVR)
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
#include <util/delay.h>
#include <ws_iic_port.h>
#include <ws_pcf8574.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{
	uint8_t tmp=0;
	st7920LcdInit(); /*LCD初始化*/
	showLine(0,0,lcd_buffer,"PCF8574 Example");
	showLine(0,1,lcd_buffer,"I2C->Parallel");
	showLine(0,2,lcd_buffer,"Focus on LED");
	showLine(0,3,lcd_buffer,"Values：");
	refreshLCD(lcd_buffer); /*刷新LCD*/

	while(1)
	{
		Write_PCF8574(tmp);
		showLine(8,3,lcd_buffer,"0x%x2",tmp);
		refreshLCD(lcd_buffer); /*刷新LCD*/
		tmp++;
		_delay_ms(1000);
	}
}
