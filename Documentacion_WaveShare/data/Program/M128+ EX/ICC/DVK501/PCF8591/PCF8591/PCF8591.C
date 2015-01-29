



#include <iom128v.h>

#define WR_DADR		0x90	
#define RD_DADR		0x91	
#include "D:\ICC_H\PCF8591.H"

#define DISP_DDR	DDRA
#define DISP_PORT	PORTA


void errDisp()				
{
 	DISP_PORT = 0X55;
	delay50ms(4);
	DISP_PORT = 0X00;
	delay50ms(4);
	DISP_PORT = 0XAA;
	delay50ms(4);
	DISP_PORT = 0X00;
	delay50ms(4);
}  

void main()
{
	unsigned char DAval=0;
	unsigned char pGetDat;	
       TWBR = 0X12;
	DISP_DDR = 0XFF;   	     	
	while(1)
	{
		PCF8591_getAD(MODE0,CHNL0,&pGetDat);
		DISP_PORT = pGetDat;
		PCF8591_setDA(DAval++);
		delay50ms(1);
	}
}
