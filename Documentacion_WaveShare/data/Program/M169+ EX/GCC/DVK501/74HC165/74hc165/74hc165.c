

#define	_DVK501_M169_EX_ 1
#include <avr/io.h>
#include <ws_74hc165_port.h>

int main(void)
{
	DDRA=0xFF;
	hc165Init();
	while(1)
	{
		PORTA=hc165GetDat();
	}	
}