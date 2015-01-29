

#define _DVK501_M169_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_iicsim_port.h>
#include <ws_at24cxx_port.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{
	uint8_t n=0;
	st7920LcdInit(); 
	showLine(0,0,lcd_buffer,"AT24CXX 实验");
	showLine(0,1,lcd_buffer,"读取内容：");
	refreshLCD(lcd_buffer); 
	while(1)
	{
		iicWByte(AT24C_WR_ADDR,n,n);
		while(iicReadBusy(AT24C_WR_ADDR));
		showLine(10,1,lcd_buffer,"%d3",iicRByte(AT24C_WR_ADDR,n));
		refreshLCD(lcd_buffer); 
		if(n==0xFF)break;
		n++;
		_delay_ms(1000);
	}
	while(1);
}
