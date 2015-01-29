#include <iom16v.h>
#include "D:\ICC_H\CmmICC.H"

#define OUT_RXD		sbi(DDRB,1)	   
#define SET_RXD		sbi(PORTB,1)
#define CLR_RXD		cbi(PORTB,1)

#define OUT_TXD  	sbi(DDRB,0)	  
#define SET_TXD 	sbi(PORTB,0)
#define CLR_TXD  	cbi(PORTB,0)


void setDat(uint8 dat)
{
	uint8 i;

	for(i=0;i<8;i++)
	{
		CLR_TXD;
		if((bool)dat&0x80)
			SET_RXD;
		else
			CLR_RXD;
		SET_TXD;
		dat = dat<<1;
	}
}

void main()
{
    uint8 dat=0x55;	
	OUT_RXD;
	OUT_TXD;
	setDat(dat);
	while(1);
}
