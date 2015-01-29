/*********************************************************************
	微 雪 电 子   WaveShare   http://www.waveShare.net            	
	                                                        
目    的:   建立LCD12864_ST7920的串模式操作库

目标系统:   基于AVR单片机
	                                                                
应用软件:   ICCAVR                                               
	                                                                
版    本:   Version 1.0
	                                                                
圆版时间:   2005-09-06

开发人员:   SEE

说    明:   若用于商业用途，请保留此段文字或注明代码来源

	深 圳 市 微 雪 电 子 有 限 公 司 保 留 所 有 的 版 权 
*********************************************************************/

/*01010101010101010101010101010101010101010101010101010101010101010101
----------------------------------------------------------------------
版本更新记录：



----------------------------------------------------------------------
入口参数说明：
	//#define OUT_LCD_CS	sbi(DDRD,0)
	//#define SET_LCD_CS	sbi(PORTD,0)
	//#define CLR_LCD_CS	cbi(PORTD,0)

----------------------------------------------------------------------
待定参数说明：
	

----------------------------------------------------------------------	
对外变量说明：

----------------------------------------------------------------------
对外函数说明：

----------------------------------------------------------------------
10101010101010101010101010101010101010101010101010101010101010101010*/


/*--------------------------------------------------------------------
接口定义：

LCD12864_ST7920			ATmega16
1.GND		--------	GND
2.VCC		--------	VCC
3.V0		--------	V0
4.RS(CS)	--------	VCC
5.R/W(SID)	--------	MOSI/PB5
6.E(SCLK)	--------	SCK/PB7
7.D0		--------	NC
8.D1		--------	NC
9.D2		--------	NC
10.D3		--------	NC
11.D4		--------	NC
12.D5		--------	NC
13.D6		--------	NC
14.D7		--------	NC
15.PSB		--------	GND
16.NC		--------	NC
17.RST		--------	NC
18.NC		--------	NC
19.LED+		--------	VCC
20.LED-		--------	GND

说明：
（1）使用ATmega16的硬件SPI操作LCD12864_ST7920
（2）PIN4/CS接VCC，其实也可接到特定的IO口，但外部程序需要指定
--------------------------------------------------------------------*/

#ifndef LCD12864_ST7920_H
#define LCD12864_ST7920_H

#include "D:\ICC_H\CmmIcc.h"

void SPI_init()
{
	DDRB |=0b00010100;
	SPCR = 0x50;	//setup SPI
	SPSR = 0x01;	//setup SPI
	SEI();			
}

void lcd_wrByte(uint8 data)
{  
	SPDR = data;        
	while ((SPSR & 0x80) == 0);  
}

void lcd_wrCmd(uint8 HC,uint8 LC)
{
	lcd_wrByte(0xF8);
	lcd_wrByte(HC);		//传输高四位
	lcd_wrByte(LC);		//传输低四位
}

void lcd_wrDat(uint8 HD,uint8 LD)
{
	lcd_wrByte(0xFA);
	lcd_wrByte(HD);		//传输高四位
	lcd_wrByte(LD);		//传输低四位
} 

/*
x表示在第几行显示，y表示在第几列显示
*/
void lcd_set_xy(uint8 x,uint8 y) 
{
	uint8 adr;

	switch(x)
	{
	case 1: adr = 0x7F + y;
		break;		//在第1行y列显示
	case 2: adr = 0x8F + y;
		break;		//在第2行y列显示
	case 3: adr = 0x87 + y;
		break;		//在第3行y列显示
	case 4: adr = 0x97 + y;
		break;		//在第4行y列显示
	default:	;
	}
	lcd_wrCmd(adr&0xF0,(adr&0x0F)<<4);
}

void lcd_putc(uint8 x,uint8 y,uint8 ch)
{
	lcd_set_xy(x,y);
	delay50us(20); 
	lcd_wrDat(ch&0xF0,(ch&0x0F)<<4);
}

void lcd_putd0(uint8 x,uint8 y,uint32 dat,uint8 length)
{
	sint8 i;

	speaData(dat,length);
	lcd_set_xy(x,y);
	delay50us(40);
	for(i=length-1;i>=0;i--)
	{
		lcd_wrDat( (dataElem[i]+0x30)&0xF0 ,( (dataElem[i]+0x30)&0x0F )<<4 );
		delay50us(40); 
	}
}

void lcd_putd(uint8 x,uint8 y,uint32 dat,uint8 length)
{
	sint8 i;
	sint8 effectLen;

	if(dat>999999)
		effectLen=7;
	else if(dat>99999)
		effectLen=6;
	else if(dat>9999)
		effectLen=5;
	else if(dat>999)
		effectLen=4;
	else if(dat>99)
		effectLen=3;
	else if(dat>9)
		effectLen=2;
	else
		effectLen=1;
	speaData(dat,effectLen);

	lcd_set_xy(x,y);
	delay50us(40); 
	if(length>effectLen)
	{
		for(i=length-effectLen-1;i>=0;i--)
		{
			lcd_wrDat(' '&0xF0,(' '&0x0F)<<4);
			delay50us(40); 
		}
	}
	for(i=effectLen-1;i>=0;i--)
	{
		lcd_wrDat( (dataElem[i]+0x30)&0xF0 ,( (dataElem[i]+0x30)&0x0F )<<4 );
		delay50us(40);
	}
}

void lcd_puts(uint8 x,uint8 y,uint8 *str)
{ 
	lcd_set_xy(x,y);
	delay50us(20);   
	while(*str)
	{
		lcd_wrDat((*(str))&0xF0,((*(str))&0x0F)<<4);
		str++;
		delay50us(20);
	} 
}

void lcd_puts_(uint8 x,uint8 y,uint8 *str,uint8 dlyMs)
{ 
	lcd_set_xy(x,y);
	delay50us(20);   
	while(*str)
	{
		lcd_wrDat((*(str))&0xF0,((*(str))&0x0F)<<4);
		str++;
		delay50ms(dlyMs);
	} 
}

void lcd_clr()
{
	lcd_wrCmd(0x00,0x10);
	delay50us(200);
}

void lcd_init(void)
{
	SPI_init();	
	//OUT_LCD_CS;		//若LCD_CS
	//SET_LCD_CS;		
	delay50ms(1);
	lcd_wrCmd(0x30,0x30);	//使用8位控制界面,使用基本指令集
	//lcd_wrCmd(0x00,0xF0);	//整体显示ON
	lcd_wrCmd(0x00,0xC0);	//整体显示ON
	lcd_wrCmd(0x00,0x10);	//清屏
	//lcd_wrCmd(0x10,0x00);	//光标
	lcd_wrCmd(0x00,0x60);
	//lcd_wrCmd(0x00,0x70);	//显示右移
	delay50ms(1);		//不可省去！！！
}

#endif