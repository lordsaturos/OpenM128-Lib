#include <iom16v.h>
#include "D:\ICC_H\CmmICC.H"

#define DISP_DDR   DDRB
#define DISP_PORT  PORTB

void main(void) 
{
	uint8 i;
	uint8 wrDat=0xAA;
	uint8 wrDat_[]={1,2,3,4,5,6,7,8},rdDat_[8];
	DISP_DDR=0xFF;
	EEPROMwrite(0x01,wrDat);		
	DISP_PORT=EEPROMread(0x01);		
	delay50ms(40);				
	EEPROMWriteBytes(1,wrDat_,8);						  
	EEPROMReadBytes(1,rdDat_,8);	
	for(i=0;i<7;i++)
	{
		delay50ms(40);			
		DISP_PORT=rdDat_[i];		
	} 			
	while(1);
}