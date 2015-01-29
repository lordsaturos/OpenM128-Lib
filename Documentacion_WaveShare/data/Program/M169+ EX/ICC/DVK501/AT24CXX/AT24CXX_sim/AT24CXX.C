



#include <iom169v.h>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.h"

#define LED_DDR		DDRB
#define LED_PORT	PORTB

#define DELAY_NOP  asm("nop")


#define SDA_IN		cbi(DDRE,5)
#define SDA_OUT		sbi(DDRE,5)
#define SDA_SET		sbi(PORTE,5)
#define SDA_CLR		cbi(PORTE,5)
#define SDA_PIN		gbi(PINE,5)


#define SCL_IN  	cbi(DDRE,4)
#define SCL_OUT		sbi(DDRE,4)
#define SCL_SET		sbi(PORTE,4)
#define SCL_CLR		cbi(PORTE,4)
#define SCL_PIN		gbi(PINE,4)


#include "D:\ICC_H\DVK501_IIC_sim.h"
#include "D:\ICC_H\AT24CXX_sim.h"


void main(void)
{
	uchar AT24CXX_DEVICE_ADDR=0x00; 
	uchar BYTE_ADDR=0x21; 
	uchar AT24;
	uchar TEST=0x5A;	
	
	LED_DDR=0xFF;
	LED_PORT=0xFF;
	
	AT24C_wByte(AT24CXX_DEVICE_ADDR,BYTE_ADDR,TEST); 
	while(1)
	{
	 		I2C_Start();
	 		if(!I2C_ReadBusy(((AT24CXX_DEVICE_ADDR<<1)&0x0E)|0xA0)) 
			    break; 
	}
	I2C_Stop();
	LED_PORT=AT24C_rByte(AT24CXX_DEVICE_ADDR,BYTE_ADDR);
	while(1);
}