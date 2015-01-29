

#define _DVK501_M162_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_at45dbxxx_port.h>

#define DISP_DDR DDRA
#define DISP_PORT PORTA

int main(void)
{
	uint8_t num;
	spiInitAt45db();
	DISP_DDR=0xFF;
	DISP_PORT=0x00;
	for(num=0;num<255;num++)
	{
		write_buffer((uint16_t)num,num);
		_delay_ms(1);
	}
	for(num=0;num<255;num++)
	{
		DISP_PORT=read_buffer((uint16_t)num);
		_delay_ms(500);
	}
	while(1);
}
