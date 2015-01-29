
#define _DVK501_M162_EX_
#include <avr/io.h>
#include <util/delay.h>
#include <ws_ps2port.h>
#include <ws_ps2_code.h>

#define DDR_LED DDRA
#define PORT_LED PORTA

int main(void)
{

DDR_LED = 0xFF; 
PORT_LED = 0x00;

ps2IntInit();


ps2Init();

sei();
while(1)
{
	PORT_LED = ps2GetChar();
}
}
