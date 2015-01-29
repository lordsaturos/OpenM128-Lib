


#include <iom169v.h>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.H

#define DISP_DDR    DDRA
#define DISP_PORT   PORTA

#define IN_RXD		cbi(DDRE,0)	   
#define GET_RXD		gbi(PINE,0)

#define OUT_TXD  	sbi(DDRE,1)	   
#define SET_TXD 	sbi(PORTE,1)
#define CLR_TXD  	cbi(PORTE,1)

#define OUT_PL		sbi(DDRE,5)	   
#define SET_PL		sbi(PORTE,5)
#define CLR_PL		cbi(PORTE,5)


uint8 getDat()
{
	uint8 i,dat;
	for(i=0;i<8;i++)
	{
		CLR_TXD;
		dat = dat<<1;
		if(GET_RXD)
			dat |= 0x01;
		SET_TXD;
	}
	return dat;
}

void main()
{
	uint8 i;	
	DISP_DDR = 0XFF;
	OUT_PL;
	OUT_TXD;
	IN_RXD;
	while(1)
	{
		SET_PL;
		CLR_PL;
		SET_PL;
		DISP_PORT = getDat();
	}
}