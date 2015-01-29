



#include <avr/io.h>
#include <util/delay.h>

int main(void)
{
	DDRA=0xFF;	
	PORTA=0x55;
	while(1)
	{
		_delay_ms(500);	
		PORTA=~PORTA;	
	}
}
