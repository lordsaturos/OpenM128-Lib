#define NO_INCLUDE_I2C_H 1
#include <iom16v.h>
#include "d:\icc_h\CmmICC.h"
int main(void)
{
	DDRA=0xFF;	
	PORTA=0x55;
	while(1)
	{
		delay50ms(500);
		PORTA=~PORTA;	
	}
}
