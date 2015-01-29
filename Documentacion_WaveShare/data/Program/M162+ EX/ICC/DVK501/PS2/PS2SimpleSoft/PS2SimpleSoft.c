

#include <iom162v.h>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.H"

#include "D:\ICC_H\PS2.H"

#define PRESS_DATA_DDR	DDRA
#define PRESS_DATA_PORT PORTA
#define SHIFT_DATA_DDR	DDRD
#define SHIFT_DATA_PORT PORTD

#define SET_SDA		sbi(PORTD,3)
#define CLR_SDA		cbi(PORTD,3)
#define GET_SDA		gbi(PIND,3)
#define OUT_SDA 	sbi(DDRD,3)
#define IN_SDA 		cbi(DDRD,3)

#define SET_SCK		sbi(PORTD,2)
#define CLR_SCK		cbi(PORTD,2)
#define GET_SCK		gbi(PIND,2)
#define OUT_SCK 	sbi(DDRD,2)
#define IN_SCK 		cbi(DDRD,2)

#define DELAY() {NOP();NOP();NOP();NOP();}

bool rcvF		= 0; 	
uint8 keyVal; 			


void check(void)
{
    static uint8 rcvBits = 0;	
	
	OUT_SCK; 		   			
	DELAY();
	SET_SCK;					
	DELAY();
	
	IN_SCK;						
	DELAY();
	if(!GET_SCK)
	{
		if((rcvBits>0) && (rcvBits<9))
		{ 
			keyVal=keyVal>>1; 	
			
			
			if(GET_SDA) 
	 			keyVal=keyVal|0x80; 
		}
		rcvBits++;
		while(!GET_SCK); 		
	
		if(rcvBits>10)
		{
			rcvBits=0; 			
			rcvF=1; 			
		}
	}
}

void keyHandle(uint8 val) 
{
	uint8 i;
	static bool isUp=0;			
	static bool shift=0;		
	rcvF = 0; 
	PRESS_DATA_PORT = val;		
	if(!isUp)
	{
		switch(val)
		{
			case 0xF0 :			
				isUp = 1;
				break;
			case 0x12 :			
				shift = 1;
				break;
			case 0x59 :			
				shift = 1;
				break;
			default:
				if(!shift)		
				{ 

					for(i=0; unshifted[i][0]!=val && i<59; i++)
						;
					if(unshifted[i][0] == val) 
						;		
					
				} 
				else			
				{			

					for(i=0; shifted[i][0]!=val && i<59; i++)
						;
					if(shifted[i][0] == val) 
						SHIFT_DATA_PORT = val;
				}
		}
	}
	else 
	{
		isUp=0;					
		switch(val)
		{
			case 0x12 :			
				shift = 0;
				break;
			case 0x59 :			
				shift = 0;
				break;
		}
	}
}  

void main(void)
{
    PRESS_DATA_DDR = 0XFF;
	SHIFT_DATA_DDR = 0XFF;
	IN_SDA;
	while(1)
	{
		check();
		if(rcvF)
			keyHandle(keyVal);
	}
}




