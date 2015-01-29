

#define _DVK501_M169_EX_ 1
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
	for(num=0;num<255;num++) 
	{
		write_buffer((uint16_t)num,num);
		_delay_ms(1);
	}
	for(num=0;num<255;num++) 
	{
		tmp[num]=read_buffer(num);
		_delay_ms(1);
	}
	st7920LcdInit(); 
	showLine(0,0,lcd_buffer,"深圳微雪电子");
	showLine(0,1,lcd_buffer,"读取flash:");
	refreshLCD(lcd_buffer); 
	for(num=0;num<255;num++)
	{
		showLine(11,1,lcd_buffer,"%d3",tmp[num]);
		refreshLCD(lcd_buffer); 
		_delay_ms(1000);
	}
	while(1);
}
