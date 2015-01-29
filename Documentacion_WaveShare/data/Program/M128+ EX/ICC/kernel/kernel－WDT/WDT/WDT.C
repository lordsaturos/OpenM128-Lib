



#include <iom128v.h>
#include "D:\ICC_H\CmmICC.H"

#define DISP_DDR	DDRB
#define DISP_PORT	PORTB


void wdt_init(void)
{
	asm("wdr");			
	WDTCR=0x0F;			
} 

void main(void) 
{
	uint8 i;
	
	DISP_DDR = 0XFF;
	wdt_init();

	while(1)
	{
		DISP_PORT++;
		asm("wdr");	   
		delay50ms(20);	
	} 			
}