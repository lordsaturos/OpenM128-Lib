/********************************************************************************************************
*********************************************************************************************************
*
* File                : PCF8591_LCD12864.c
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
#include <ws_pcf8591.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{
	uint8_t pGetDat,tmp=0;
	twi_init();	
	st7920LcdInit(); /*LCD初始化*/
	showLine(0,0,lcd_buffer,"PCF8591 Example");
	showLine(0,1,lcd_buffer,"AD Values:");
	refreshLCD(lcd_buffer); /*刷新LCD*/
	while(1) 
	{
		PCF8591_getAD(MODE0,CHNL0,&pGetDat);
		if(pGetDat!=tmp)
		{
			showLine(11,1,lcd_buffer,"0x%x2",pGetDat);
			refreshLCD(lcd_buffer); /*刷新LCD*/
			tmp=pGetDat;
		}
	}
}
