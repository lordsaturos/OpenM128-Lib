

#include <avr/io.h>
#include <util/delay.h>
#include <avr/wdt.h> 

void showReset(void)
{
	DDRB=0xFF;
	PORTB=0x55;
	_delay_ms(300);
	PORTB=~PORTB;
	_delay_ms(300);
	PORTB=~PORTB;
	_delay_ms(300);
	PORTB=~PORTB;
	_delay_ms(300);
	PORTB=~PORTB;
	_delay_ms(300);
	PORTB=0x00;
}

int main(void)
{
	showReset();	
	wdt_enable(WDTO_500MS); 
	while(1)
	{
		wdt_reset();
		_delay_ms(350);	
	}
}
