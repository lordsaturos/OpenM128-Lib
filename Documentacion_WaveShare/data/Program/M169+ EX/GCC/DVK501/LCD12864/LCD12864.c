

#define _DVK501_M169_EX_ 1
#include <avr/io.h>
#include <ws_lcd_ST7920_port.h>
int main(void)
{
st7920LcdInit(); 
showLine(0,0,lcd_buffer,"����΢ѩ����");
showLine(0,1,lcd_buffer,"waveshare.net");
showLine(0,2,lcd_buffer,"�����и�������·���Ϲ��� 621��");
refreshLCD(lcd_buffer); 
while(1);

}
