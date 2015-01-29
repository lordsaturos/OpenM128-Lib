

#include <iom162v.h>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.H"

#define DISP_DDR    DDRB
#define DISP_PORT   PORTB

#define SOURCE_DDR  DDRA
#define SOURCE_PORT PORTA

#define IN_RXD		cbi(DDRD,0)	   
#define GET_RXD		gbi(PIND,0)

#define OUT_TXD  	sbi(DDRD,1)	   
#define SET_TXD 	sbi(PORTD,1)
#define CLR_TXD  	cbi(PORTD,1)

#define OUT_PL		sbi(DDRD,4)	   
#define SET_PL		sbi(PORTD,4)
#define CLR_PL		cbi(PORTD,4)


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
	SOURCE_DDR = 0XFF;
   SOURCE_PORT =0;
	OUT_PL;
	OUT_TXD;
	IN_RXD;
   
	while(1)
	{
		SOURCE_PORT++;
		SET_PL;
		CLR_PL;
		SET_PL;
		DISP_PORT = getDat();
    delay50ms(5);
	}
}
