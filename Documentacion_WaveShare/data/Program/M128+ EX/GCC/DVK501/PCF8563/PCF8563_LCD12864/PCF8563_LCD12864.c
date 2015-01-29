

#define _DVK501_M128_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_iic_port.h>
#include <ws_pcf8563_port.h>
#include <ws_lcd_ST7920_port.h>



int main(void)
{	
	uint8_t time[3],tmp=0;
	st7920LcdInit(); 
	PCF8563_init();	
	showLine(0,0,lcd_buffer,"PCF8563 实验");
	showLine(0,1,lcd_buffer,"设定时间: OK");
	showLine(0,2,lcd_buffer,"时间:");
	refreshLCD(lcd_buffer); 
	twi_init();	
	PCF8563_setTime(1,2,3); 
	_delay_ms(10);
	while(1)
	{	
		PCF8563_getTime(time);
		if(time[0]!=tmp)
		{
			showLine(6,2,lcd_buffer,"%d2:%d2:%d2",time[2],time[1],time[0]);
			refreshLCD(lcd_buffer); 
		}
		tmp=time[0];
	}
}
