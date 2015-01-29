

#define _DVK501_M162_EX_
#include <avr/io.h>
#include <util/delay.h>
#include <ws_ds18b20.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{
	st7920LcdInit();
	showLine(0,0,lcd_buffer,"DS18B20 Œ¬∂» ‘—È");
	showLine(0,1,lcd_buffer," “Œ¬£∫  °Ê");
	while(1)
	{
		showLine(6,1,lcd_buffer,"%d2",readTemp());
		refreshLCD(lcd_buffer); 
		_delay_ms(1000);
	}
}
