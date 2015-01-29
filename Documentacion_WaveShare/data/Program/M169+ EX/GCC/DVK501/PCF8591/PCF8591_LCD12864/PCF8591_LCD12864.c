


#define _DVK501_M169_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_iicsim_port.h>
#include <ws_pcf8591sim.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{
	uint8_t tmp=0,pGetDat;
	st7920LcdInit(); 
	showLine(0,0,lcd_buffer,"PCF8591 试验");
	showLine(0,1,lcd_buffer,"当前AD值:");
	refreshLCD(lcd_buffer); 
	while(1)
	{
		pGetDat=pcf8591GetAD(MODE0,CHNL0);
		if(pGetDat!=tmp)
		{
			showLine(9,1,lcd_buffer,"%d3",pGetDat);
			refreshLCD(lcd_buffer); 
			tmp=pGetDat;
		}
	}
}

