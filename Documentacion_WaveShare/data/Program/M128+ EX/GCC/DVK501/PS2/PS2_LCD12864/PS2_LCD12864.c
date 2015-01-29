

#define _DVK501_M128_EX_
#include <avr/io.h>
#include <util/delay.h>
#include <ws_ps2port.h>
#include <ws_ps2_code.h>
#include <ws_lcd_ST7920_port.h>

int main(void)
{


EICRA = 0x20;
EICRB = 0x00;
EIMSK = 0x04;
EIFR = 0x04;

st7920LcdInit();

showLine(0,0,lcd_buffer,"¼üÅÌ--LCD12864");
showLine(0,1,lcd_buffer,"Çë°´¼üÅÌ:");
refreshLCD(lcd_buffer);

ps2Init();

sei();
while(1)
{
	showLine(10,1,lcd_buffer,"%c",ps2GetChar());
	refreshLCD(lcd_buffer);
}
}
