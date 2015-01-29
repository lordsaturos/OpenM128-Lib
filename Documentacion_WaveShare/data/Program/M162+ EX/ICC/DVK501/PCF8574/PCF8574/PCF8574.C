

#include <iom162v.h>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.h"

#define LED_DDR		DDRB
#define LED_PORT	PORTB

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
	port_init();
	for(NO=0;NO<255;NO++)		
	{
		PCF8574_wByte(NO);
		delay50ms(5);
	}
	while(1)
	{
		PORTD=PCF8574_rByte();	
		delay50ms(5);
	}
}