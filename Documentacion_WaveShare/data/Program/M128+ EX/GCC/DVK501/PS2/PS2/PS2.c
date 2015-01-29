

#include <avr/io.h>
#include <util/delay.h>
#define _DVK501_M128_EX_
#include <ws_ps2port.h>
#include <ws_ps2_code.h>

#define DDR_LED DDRA
#define PORT_LED PORTA

int main(void)
{

DDR_LED = 0xFF; 
PORT_LED = 0x00;



EICRA = 0x20;
EICRB = 0x00;
EIMSK = 0x04;
EIFR = 0x04;


ps2Init();

sei();
while(1)
{
	PORT_LED = ps2GetChar();
}
}
