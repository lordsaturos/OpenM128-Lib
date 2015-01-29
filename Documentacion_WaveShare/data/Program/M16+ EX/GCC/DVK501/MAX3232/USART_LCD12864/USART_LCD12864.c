/*
*========================================================================================================
*
* File                : USART_LCD12864.c
* Hardware Environment:	DVK501 && M16+ EX
* Build Environment   : AVR Studio 4.16 + Winavr 20090313
* Version             : V1.0
* By                  : Wu Ze
*
*                                  (c) Copyright 2005-2009, WaveShare
*                                       http://www.waveshare.net
*                                          All Rights Reserved
*
*========================================================================================================
*/

#define _DVK501_M16_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_usart_port.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{
	uint8_t tmp=0;
	usartInit();
	st7920LcdInit(); /*LCD初始化*/
	showLine(0,0,lcd_buffer,"MAX3232 Example");
	showLine(0,1,lcd_buffer,"USART TX<->RX");
	showLine(0,2,lcd_buffer,"Data：");
	refreshLCD(lcd_buffer); /*刷新LCD*/
	while(1)
	{
		putUsart0(tmp);
		_delay_ms(10);
		showLine(6,2,lcd_buffer,"0x%x2",(uint8_t)getUsart0());
		refreshLCD(lcd_buffer); /*刷新LCD*/
		tmp++;
		_delay_ms(1000);
	}
}
