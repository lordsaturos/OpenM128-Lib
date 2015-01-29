

#include <avr/io.h>
int main(void)
{
	DDRA=0xFF;
	DDRB=0x00;
	while(1)
	{
		PORTA=~PINB;
	}
}
