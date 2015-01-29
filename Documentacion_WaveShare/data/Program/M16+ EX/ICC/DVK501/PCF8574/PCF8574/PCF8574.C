#include <iom16v.h>
#include <macros.h>
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\PCF8574.H"
void port_init(void)
{
    //PORTA = 0x00;
 //   DDRA  = 0xFF;
    PORTB = 0x01;
    DDRB  = 0xFE;
    PORTC = 0x03; 
    DDRC  = 0x00;
    PORTD = 0x00;
    DDRD  = 0xFF;
}
void main(void)
{
	unsigned char NO;
	port_init();
	for(NO=0;NO<255;NO++)		
	{
		Write_PCF8574(NO);
		delay50ms(1);
	}
	while(1)
	{
		PORTD=Read_PCF8574();	
		delay50ms(1);
	}
}