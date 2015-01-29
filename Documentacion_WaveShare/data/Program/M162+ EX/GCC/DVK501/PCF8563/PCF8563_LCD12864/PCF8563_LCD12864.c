

#define _DVK501_M162_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_iicsim_port.h>
#include <ws_pcf8563sim.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{	
	uint8_t time[3]={0,0,0},tmp=0;
	st7920LcdInit(); 
	showLine(0,0,lcd_buffer,"PCF8563  ‘—È");
	showLine(0,1,lcd_buffer," ±º‰£∫");
	refreshLCD(lcd_buffer); 
	PCF8563_init();	
	PCF8563_setTime(1,2,3); 
	
	while(1)
	{	
		PCF8563_getTime(time);
		if(time[0]!=tmp)
		{
			showLine(6,1,lcd_buffer,"%d2:%d2:%d2",time[2],time[1],time[0]);
			refreshLCD(lcd_buffer); 
		}
		tmp=time[0];
	}
}
