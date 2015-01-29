
#define _DVK501_M169_EX_ 1
#include <avr/io.h>
#include <ws_matkey_port.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{
	uint8_t tmp1=0,tmp2=0;
	st7920LcdInit(); 
	showLine(0,0,lcd_buffer,"æÿ’Û Ωº¸≈Ã ‘—È");
	showLine(0,1,lcd_buffer,"º¸÷µ£∫");
	while(1)
	{
		tmp1=getKeyVal();
		if(tmp1!=tmp2)
		{
			if(tmp1==0xFF) showLine(6,1,lcd_buffer,"  ");
			else showLine(6,1,lcd_buffer,"%d2",tmp1);
			refreshLCD(lcd_buffer); 
		}
		tmp2=tmp1;
	}
}
