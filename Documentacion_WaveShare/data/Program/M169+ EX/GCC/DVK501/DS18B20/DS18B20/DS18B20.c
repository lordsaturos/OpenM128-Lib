
#define _DVK501_M169_EX_
#include <avr/io.h>
#include <util/delay.h>
#include <ws_ds18b20.h>

int main(void)
{
	DDRA=0xFF;
	while(1)
	{
		PORTA=readTemp();
		_delay_ms(1000);
	}
}
