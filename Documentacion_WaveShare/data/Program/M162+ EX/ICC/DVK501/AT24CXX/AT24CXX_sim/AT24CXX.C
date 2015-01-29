


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
#include "D:\ICC_H\AT24CXX_sim.h"


void main(void)
{
	uchar AT24CXX_DEVICE_ADDR=0x00; 
	uchar BYTE_ADDR=0x11; 
	uchar AT24;
	uchar TEST=0xAA;	
	
	LED_DDR=0xFF;
	LED_PORT=0x00;
	
	AT24C_wByte(AT24CXX_DEVICE_ADDR,BYTE_ADDR,TEST); 
	while(1)
	{
	 		I2C_Start();
	 		if(!I2C_ReadBusy(((AT24CXX_DEVICE_ADDR<<1)&0x0E)|0xA0)) 
			    break; 
	}
	I2C_Stop();
	LED_PORT=AT24C_rByte(AT24CXX_DEVICE_ADDR,BYTE_ADDR);
	while(1){};
}