

#define _DVK501_M128_EX_ 1
#include <avr/io.h>
#include <ws_lcd_ST7920_port.h>
int main(void)
{
st7920LcdInit(); 
showLine(2,1,lcd_buffer,"ÉîÛÚÎ¢Ñ©µç×Ó");
showLine(2,2,lcd_buffer,"waveshare.net");
refreshLCD(lcd_buffer); 
while(1);

}
