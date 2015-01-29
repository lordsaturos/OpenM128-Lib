
 
#include <iom162v.h>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.h"

#define LED_DDR		DDRA
#define LED_PORT	PORTA

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
#define SCL_PIN		bi(PIND,5)

#include "D:\ICC_H\DVK501_IIC_sim.h"
#include "D:\ICC_H\PCF8563_sim.h"



void main()
{
	uchar time[3]={0,1,2};
	
	LED_DDR = 0XFF;
	PCF8563_init();	
	PCF8563_setTime(9,32,7); 
	
	while(1)
	{	
		PCF8563_getTime(time);
		LED_PORT = time[0];  
	}
}