#include <iom16v.h>
#include "D:\ICC_H\CmmICC.H"

#define DISP_DDR    DDRA
#define DISP_PORT   PORTA

#define IN_DATA		cbi(DDRD,0)	  
#define GET_DATA	gbi(PIND,0)

#define OUT_CLK  	sbi(DDRD,1)	  
#define SET_CLK 	sbi(PORTD,1)
#define CLR_CLK  	cbi(PORTD,1)

#define OUT_PL		sbi(DDRC,1)	  
#define SET_PL		sbi(PORTC,1)
#define CLR_PL		cbi(PORTC,1)

uint8 getDat()
{
	uint8 i,dat;
	for(i=0;i<8;i++)
	{
		CLR_CLK;
		dat = dat<<1;
		if(GET_DATA)
			dat |= 0x01;
		SET_CLK;
	}
	return dat;
}

void main(void)
{
   	OUT_PL;
	 OUT_CLK;
	 IN_DATA;
    DISP_DDR = 0XFF;
	while(1)
	{
		SET_PL;
		CLR_PL;
		SET_PL;
		DISP_PORT = getDat();

	}
}
