#include <iom16v.h>
#include <macros.h>
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\PCF8574.H"
#include "D:\ICC_H\LCD12864_ST7920.H"

void port_init(void)
{
    //PORTA = 0x00;
 //   DDRA  = 0xFF;
    PORTB = 0x01;
    DDRB  = 0xFE;
    PORTC = 0x03; 
    DDRC  = 0x00;
    PORTD = 0x00;
    DDRD  = 0xFF;
}
void main(void)
{
	unsigned char NO;
	char tmp;
	port_init();

	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"PCF8574-LCD12864");
	lcd_puts(2,1,"��չоƬ����");
	lcd_puts(3,1,"I2C ����ź�");
	lcd_puts(4,1,"IO:");
	
	for(NO=0;NO<10;NO++)		
	{
		Write_PCF8574(NO);
		lcd_putd(4,3,NO,2);
    delay50ms(10);
	}
	lcd_puts(3,1,"I2C ��ȡ�ź�");
	while(1)
	{
		tmp=Read_PCF8574();	
		lcd_puts(4,3,"     ");
		lcd_putd(4,3,tmp,2);
		delay50ms(5);
	}
}