
#define _DVK501_M162_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_iicsim_port.h>
#include <ws_pcf8574sim.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{
	uint8_t tmp=0;
	st7920LcdInit(); 
	showLine(0,0,lcd_buffer,"PCF8574  ‘—È");
	showLine(0,1,lcd_buffer," ‰≥ˆ÷µ£∫");
	refreshLCD(lcd_buffer); 
	while(1)
	{
		writePcf8574(tmp);
		showLine(8,1,lcd_buffer,"%d3",tmp);
		refreshLCD(lcd_buffer); 
		tmp++;
		_delay_ms(1000);
	}
}

