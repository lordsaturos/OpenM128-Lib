


#include <iom128v.h>
#include <macros.h>
#include "D:\ICC_H\CmmICC.H"

#define DDRx DDRB
#define PORTx PORTB
#define PINx PINB
#define ds18b20_dq 5 

#include "D:\ICC_H\DS18B20_DVK501.H"

void port_init(void)
{
    PORTA = 0x00;
    DDRA  = 0xFF;
    PORTB = 0xFF;
    DDRB  = 0xFF;
    PORTC = 0xFF; 
    DDRC  = 0xFF;
    PORTD = 0xFF;
    DDRD  = 0xFF;
}
void main(void)
{	
	port_init();
	while(1)
	{
		delay50ms(20);
		PORTA=read_temperature();	
	}
}