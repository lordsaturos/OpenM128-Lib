
#define _DVK501_M128_EX_ 1
#include <avr/io.h>
#include <ws_matkey_port.h>

int main(void)
{
	uint8_t tmp;
	DDRB=0xFF;
	while(1)
	{
		tmp=getKeyVal();
		if(tmp==0xFF) PORTB=0x00;
		else PORTB=tmp;
	}
}
