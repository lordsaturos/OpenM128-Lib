



#include <iom128v.h>
#include "D:\ICC_H\CmmICC.H"

#define OUT_DATA		sbi(DDRB,6)	   
#define SET_DATA		sbi(PORTB,6)
#define CLR_DATA		cbi(PORTB,6)

#define OUT_CLK  	sbi(DDRB,7)	   
#define SET_CLK 	sbi(PORTB,7)
#define CLR_CLK  	cbi(PORTB,7)


void setDat(uint8 dat)
{
	uint8 i;

	for(i=0;i<8;i++)
	{
		CLR_CLK;
		if((bool)dat&0x80)
			SET_DATA;
		else
			CLR_DATA;
		SET_CLK;
		dat = dat<<1;
	}
}

void main()
{
    uchar dat=0x00;	
	OUT_DATA;
	OUT_CLK;
	while(1)
	{
	 	setDat(dat);
		dat++;
		delay50ms(10);
	}
}
