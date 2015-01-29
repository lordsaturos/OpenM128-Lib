

#define _DVK501_M128_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_iic_port.h>
#include <ws_pcf8591.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{
	uint8_t pGetDat,tmp=0;
	twi_init();	
	st7920LcdInit(); 
	showLine(0,0,lcd_buffer,"PCF8591 试验");
	showLine(0,1,lcd_buffer,"当前值：");
	refreshLCD(lcd_buffer); 
	while(1)
	{
		PCF8591_getAD(MODE0,CHNL0,&pGetDat);
		if(pGetDat!=tmp)
		{
			showLine(8,1,lcd_buffer,"%d3",pGetDat);
			refreshLCD(lcd_buffer); 
			tmp=pGetDat;
		}
	}
}
