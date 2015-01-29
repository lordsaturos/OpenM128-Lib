



#include <iom128v.h>

#define RD_DADR		0xA1		
#define WR_DADR		0xA0		
#include "D:\ICC_H\AT24CXX.H"

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

void twi_init()	 	 	
{
	TWBR = 0X03;		
	TWSR &= 0XFC;		
}

void main(void)
{
	uint8 adr,WrDat,t;	
	uint8 *pRdDat=&t;	
	
	DISP_DDR = 0XFF;
	twi_init();

	adr=0x20;			
	WrDat=0x55;			
	if( AT24CXX_Write(adr,WrDat)!=AT24CXX_ERR )	
	{
		delay50ms(1);	
		if( AT24CXX_Read(adr,pRdDat)!=AT24CXX_ERR )	
			DISP_PORT=*pRdDat;   		
		else
			errDisp();
	}	
	else
		errDisp();		  
	while(1);
}