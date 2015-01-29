#define _DVK501_M16_EX_
#include <avr/io.h>
#include <ws_74hc164_port.h>
#include <ws_74hc165_port.h>
#include <ws_lcd_ST7920_port.h>
#include <util/delay.h>

int main(void)
{
	uint8_t tmp = 10;

	hc164Init();	 //74HC164��ʼ��
	hc165Init();	 //74HC165��ʼ��
	st7920LcdInit(); //LCD��ʼ��

	hc164SetDat(tmp);
	tmp = hc165GetDat();

	showLine(0,0,lcd_buffer,"74HC164--74HC165");
	showLine(0,1,lcd_buffer,"Serial��Parallel");
	showLine(0,2,lcd_buffer,"Parallel��Serial");
	showLine(0,3,lcd_buffer,"Data: ");
	showLine(5,3,lcd_buffer,"0x%x2",tmp);
	refreshLCD(lcd_buffer); //ˢ��LCD
	while(1)
	{

	}
}
