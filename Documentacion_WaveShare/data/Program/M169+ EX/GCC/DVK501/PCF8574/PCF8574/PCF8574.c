
#define _DVK501_M169_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_iicsim_port.h>
#include <ws_pcf8574sim.h>

int main(void)
{
	uint8_t tmp=0;
	while(1)
	{
		writePcf8574(tmp);
		tmp++;
		_delay_ms(500);
	}
}
