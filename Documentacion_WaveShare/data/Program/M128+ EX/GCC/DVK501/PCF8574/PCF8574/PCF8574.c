
#define _DVK501_M128_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_iic_port.h>
#include <ws_pcf8574.h>

int main(void)
{
	uint8_t tmp=0;
	while(1)
	{
		Write_PCF8574(tmp);
		tmp++;
		_delay_ms(500);
	}
}
