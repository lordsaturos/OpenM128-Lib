

#define _DVK501_M169_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_iicsim_port.h>
#include <ws_pcf8563sim.h>

int main(void)
{
	DDRA=0xFF;
	PORTA=0x00;

	uint8_t time[3];
	PCF8563_init();	
	PCF8563_setTime(0,0,0); 
	
	while(1)
	{	
		PCF8563_getTime(time);
		PORTA = time[0];
	}
}
