

#define _DVK501_M162_EX_
#include <avr/io.h>
#include <ws_74hc164_port.h>
#include <util/delay.h>

int main(void)
{
	uint8_t tmp=0;
	hc164Init();
	while(1)
	{
		hc164SetDat(tmp);
		tmp++;
		_delay_ms(500);
	}
}
