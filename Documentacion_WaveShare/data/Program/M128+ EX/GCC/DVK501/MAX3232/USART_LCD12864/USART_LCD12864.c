

#define _DVK501_M128_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_usart_port.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{
	uint8_t tmp=0;
	usartInit();
	st7920LcdInit(); 
	showLine(0,0,lcd_buffer,"USART 自发自收");
	showLine(0,1,lcd_buffer,"数据：");
	refreshLCD(lcd_buffer); 
	while(1)
	{
		putUsart0(tmp);
		_delay_ms(10);
		showLine(6,1,lcd_buffer,"%d3",(uint8_t)getUsart0());
		refreshLCD(lcd_buffer); 
		tmp++;
		_delay_ms(1000);
	}
}
