
#include <iom162v.h>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\LCD12864_ST7920_M48.H"

#define DDRx DDRB
#define PORTx PORTB 
#define PINx PINB
#define ds18b20_dq 2
#include "D:\ICC_H\DS18B20_DVK501.H"

void port_init(void)
{
    PORTA = 0x00;
    DDRA  = 0xFF;
    PORTB = 0xFF;
    DDRB  = 0xFF;
    PORTC = 0xFF; 
    DDRC  = 0xFF;
    PORTD = 0xFF;
    DDRD  = 0xFF;
}
void main(void)
{	
	uchar tmp=0;
	port_init();
	
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"DS18B20-LCD12864");
	lcd_puts(2,1,"Òº¾§ÏÔÊ¾ÎÂ¶È");
	lcd_puts(3,1,"ÎÂ¶È:   ¡æ");
	
	while(1)
	{
		delay50ms(5);
		tmp=read_temperature();
		lcd_putd(3,4,tmp,1);	
	}
}