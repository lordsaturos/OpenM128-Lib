

#define _DVK501_M128_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_iic_port.h>
#include <ws_pcf8591.h>

int main(void)
{
	uint8_t DAval=0,pGetDat;
	DDRA=0xFF;
	twi_init();	     	
	while(1)
	{
		PCF8591_getAD(MODE0,CHNL0,&pGetDat);
		PORTA = pGetDat;
		PCF8591_setDA(DAval++);
		_delay_ms(50);
	}
}
