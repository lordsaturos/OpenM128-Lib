

#define _DVK501_M162_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_iicsim_port.h>
#include <ws_at24cxx_port.h>

int main(void)
{
	uint8_t n=0;
	DDRA=0xFF;
	while(1)
	{
		iicWByte(AT24C_WR_ADDR,n,n);
		while(iicReadBusy(AT24C_WR_ADDR));
		PORTA=iicRByte(AT24C_WR_ADDR,n);
		if(n==0xFF)break;
		n++;
		_delay_ms(1000);
	}
	while(1);
}
