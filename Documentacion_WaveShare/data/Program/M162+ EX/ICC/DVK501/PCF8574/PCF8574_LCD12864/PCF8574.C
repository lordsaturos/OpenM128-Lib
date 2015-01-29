



#include <iom162v.h>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\LCD12864_ST7920_M48.H"
void sDelay()
{
   unsigned char n=0x07;
   while(n--);
}

#define DELAY_NOP  sDelay()


#define SDA_IN		{cbi(DDRD,4);DELAY_NOP;}
#define SDA_OUT		{sbi(DDRD,4);DELAY_NOP;}
#define SDA_SET		{sbi(PORTD,4);DELAY_NOP;}
#define SDA_CLR		{cbi(PORTD,4);DELAY_NOP;}
#define SDA_PIN		gbi(PIND,4)


#define SCL_IN  	{cbi(DDRD,5);DELAY_NOP;}
#define SCL_OUT		{sbi(DDRD,5);DELAY_NOP;}
#define SCL_SET		{sbi(PORTD,5);DELAY_NOP;}
#define SCL_CLR		{cbi(PORTD,5);DELAY_NOP;}
#define SCL_PIN		gbi(PIND,5)


#include "D:\ICC_H\DVK501_IIC_sim.h"
#include "D:\ICC_H\PCF8574_sim.H"



void port_init(void)
{
    PORTA = 0x00;
    DDRA  = 0xFF;
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
	lcd_puts(2,1,"¿©’π–æ∆¨≤‚ ‘");
	lcd_puts(3,1,"I2C  ‰≥ˆ–≈∫≈");
	lcd_puts(4,1,"IO:");
	
	for(NO=0;NO<10;NO++)		
	{
		PCF8574_wByte(NO);
		lcd_putd(4,3,NO,2);
		delay50ms(10);
		
	}
	lcd_puts(3,1,"I2C ∂¡»°–≈∫≈");
	while(1)
	{
		tmp=PCF8574_rByte();;	
		lcd_puts(4,3,"     ");
		lcd_putd(4,3,tmp,2);
		delay50ms(5);
	}
}