/********************************************************************************************************
*********************************************************************************************************
*
* File                : PCF8563.c
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
#include <ws_iic_port.h>
#include <ws_pcf8563_port.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{	
	uint8_t time[3],tmp=0;
	st7920LcdInit(); /*LCD初始化*/
	showLine(0,0,lcd_buffer,"PCF8563 Example");
	showLine(0,1,lcd_buffer,"Set Time: OK");
	showLine(0,2,lcd_buffer,"Read Time:");
	refreshLCD(lcd_buffer); /*刷新LCD*/
	twi_init();	
	PCF8563_init();	
	PCF8563_setTime(11,0,0); 
	
	while(1)
	{	
		PCF8563_getTime(time);
		if(time[0]!=tmp)
		{
			showLine(8,3,lcd_buffer,"%d2:%d2:%d2",time[2],time[1],time[0]);
			refreshLCD(lcd_buffer); /*刷新LCD*/
		}
		tmp=time[0];
	}
}
