/********************************************************************************************************
*********************************************************************************************************
*
* File                : at24cxx_lcd12864.c
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
#include <ws_at24cxx_port.h>
#include <ws_lcd_ST7920_port.h>


int main(void)
{
	uint8_t adr,WrDat,t;	
	uint8_t *pRdDat=&t;	//����"*pRdDat"һ�������ַ�������ڴ淢������

	st7920LcdInit(); /*LCD��ʼ��*/
	showLine(0,0,lcd_buffer,"AT24CXX Example:");
	showLine(0,1,lcd_buffer,"Program and");
	showLine(0,2,lcd_buffer,"Verify");
	showLine(0,3,lcd_buffer,"Results:");
	refreshLCD(lcd_buffer); /*ˢ��LCD*/
	adr=0x00;
	WrDat='P';
	twi_init();		
	if( I2C_Write(AT24C_WR_ADDR,adr,WrDat)!=I2C_ERR )	//AT24CXXд�ɹ���
	{
		_delay_ms(50);	//�ȴ�EERPOMд��
		if( I2C_Read(AT24C_WR_ADDR,adr,AT24C_RD_ADDR,pRdDat)!=I2C_ERR )	//AT24CXX���ɹ���
			showLine(9,3,lcd_buffer,"%cass",*pRdDat);
		else
			showLine(9,3,lcd_buffer,"Error");	//��ȡ���󣬷��������ź�
	}	
	else
		showLine(9,3,lcd_buffer,"Error");	//д����󣬷��������ź�

	refreshLCD(lcd_buffer); /*ˢ��LCD*/
	while(1);
}