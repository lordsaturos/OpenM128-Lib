#include <iom16v.h>

#define WR_DADR		0xA2
#define RD_DADR		0xA3
#include "D:\ICC_H\PCF8563.H"

#define DISP_DDR	DDRA
#define DISP_PORT	PORTA

void errDisp()	  	   	
{
 	DISP_PORT = 0XAA;
	delay50ms(2);
	DISP_PORT = 0X00;
	delay50ms(2);
 	DISP_PORT = 0X55;
	delay50ms(2);
	DISP_PORT = 0X00;
	delay50ms(2);
}

void twi_init()	 	 	
{
	TWBR = 0X03;		
	TWSR &= 0XFC;		
}

void main()
{
	uint8 time[3]={0,1,2};
	
	DISP_DDR = 0XFF;
	twi_init();	
	PCF8563_init();	
	PCF8563_setTime(9,32,7); 
	
	while(1)
	{	
		PCF8563_getTime(time);
		DISP_PORT = time[0];
	}
}