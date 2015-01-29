#include <iom16v.h>
#include <macros.h>
#include "D:\ICC_H\CmmICC.H"

#define DDRx DDRB
#define PORTx PORTB
#define PINx PINB
#define ds18b20_dq 2
#include "D:\ICC_H\DS18B20_DVK501.H"
#include "D:\ICC_H\LCD12864_ST7920.H"

void main(void)
{	
	uchar tmp=0;	
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"DS18B20-LCD12864");
	lcd_puts(2,1,"Òº¾§ÏÔÊ¾ÎÂ¶È");
	lcd_puts(3,1,"ÎÂ¶È:   ¡æ");
	
	while(1)
	{
		delay50ms(20);
		tmp=read_temperature();
		lcd_putd(3,4,tmp,1);	
	}
}