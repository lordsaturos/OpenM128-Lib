

#define _DVK501_M162_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_usart_port.h>

int main(void)
{
	uint8_t tmp=0;
	DDRA=0xFF;
	PORTA=0x00;

	usartInit();
	while(1)
	{
		putUsart0(tmp);
		_delay_ms(10);
		PORTA=(uint8_t)getUsart0();
		tmp++;
		_delay_ms(500);
	}
}
