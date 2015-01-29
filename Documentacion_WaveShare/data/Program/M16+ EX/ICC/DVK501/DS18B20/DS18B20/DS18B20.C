#include <iom16v.h>
#include <macros.h>
#include "D:\ICC_H\CmmICC.H"
/*DQ使用PB0口*/
#define DDRx DDRB
#define PORTx PORTB 
#define PINx PINB
#define ds18b20_dq 2
#include "D:\ICC_H\DS18B20_DVK501.H"
//----端口初始化----

void main(void)
{	
	DDRA=0xFF;
	while(1)
	{
		delay50ms(20);
		PORTA=read_temperature();	
	}
}