

#define _DVK501_M162_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_iicsim_port.h>
#include <ws_pcf8591sim.h>

int main(void)
{
	uint8_t DAval=0;
	DDRA=0xFF;
	while(1)
	{
		PORTA=pcf8591GetAD(MODE0,CHNL0); 
		pcf8591SetDA(DAval++); 
		_delay_ms(50);
	}
}
