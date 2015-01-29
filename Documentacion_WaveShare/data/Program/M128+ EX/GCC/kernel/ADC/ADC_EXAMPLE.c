
#define _DVK501_M128_EX_ 1
#include <avr/io.h>
#include <ws_adc_port.h>

int main(void)
{
	DDRB=0xFF;
	adcInit();
	while(1)
	{
		PORTB=getADC();
	}
}
