
#define _DVK501_M128_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_ds2401.h>
#include <ws_lcd_ST7920_port.h>

uint8_t serial_number[8];

int main(void)
{
	uint8_t n;
	getDs2401Number(serial_number);
	st7920LcdInit(); 
	showLine(0,0,lcd_buffer,"DS2401实验");
	showLine(0,1,lcd_buffer,"读取序列号:");
	refreshLCD(lcd_buffer); 
	for(n=0;n<8;n++)
	{
		showLine(n*4,2,lcd_buffer,"%x2H",serial_number[n]);
	}
	refreshLCD(lcd_buffer); 
	while(1);
}
