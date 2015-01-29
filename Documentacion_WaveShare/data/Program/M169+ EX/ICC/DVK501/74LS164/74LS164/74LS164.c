



#include <iom169v.h>


#define NO_INCLUDE_I2C_H 1

#include "D:\ICC_H\CmmICC.H"

#define OUT_RXD		sbi(DDRB,6)	   
#define SET_RXD		sbi(PORTB,6)
#define CLR_RXD		cbi(PORTB,6)

#define OUT_TXD  	sbi(DDRB,7)	   
#define SET_TXD 	sbi(PORTB,7)
#define CLR_TXD  	cbi(PORTB,7)


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
    uint8 dat=0X55;	
	OUT_RXD;
	OUT_TXD;
	setDat(dat);
	while(1);
}
