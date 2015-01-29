/********************************************************************************************************
*********************************************************************************************************
*
* File                : AT45DBXXX_LCD12864.c
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
#include <util/delay.h>
#include <ws_at45dbxxx_port.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{
	uint8_t num;
	uint8_t tmp[255];
	DDRA=0xFF;
	spiInitAt45db();
	for(num=0;num<255;num++) /*写入flash*/
	{
		write_buffer((uint16_t)num,num);
		_delay_ms(1);
	}
	for(num=0;num<255;num++) /*读出flash*/
	{
		tmp[num]=read_buffer(num);
		_delay_ms(1);
	}
	st7920LcdInit(); /*LCD初始化*/
	showLine(0,0,lcd_buffer,"AT45DBXX Example");
	showLine(0,1,lcd_buffer,"Program: OK!");
	showLine(0,2,lcd_buffer,"Verify: OK!");
	showLine(0,3,lcd_buffer,"Output:");
	refreshLCD(lcd_buffer); /*刷新LCD*/
	for(num=0;num<255;num++)
	{
		showLine(8,3,lcd_buffer,"0x%x2",tmp[num]);
		refreshLCD(lcd_buffer); /*刷新LCD*/
		_delay_ms(1000);
	}
	while(1);
}
