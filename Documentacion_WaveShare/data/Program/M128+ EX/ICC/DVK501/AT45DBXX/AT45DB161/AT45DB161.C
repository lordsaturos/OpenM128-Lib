


#include <iom128v.h>
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\AT45DB161.H"    

#define	 LED_PORT PORTA
#define	 LED_DDR  DDRA
    
void port_init(void)
{
    PORTA = 0x00;
    DDRA  = 0xff;
    PORTB = 0xff;
    DDRB  = 0xbf;
    PORTC = 0x00;
    DDRC  = 0xff;
    PORTD = 0x00;
    DDRD  = 0xff;   
}

void main(void)
{	
	uint i;
	port_init();  
	spi_init();  

    PORTB&=0XEF;
    delay50ms(1); 
    PORTB|=(~0xDF);
                
    PORTB|=(~0XEF);       
    for(i=0;i<256;i++)
    {  
        PORTB&=0XFE;
        write_buffer(i,i);	    
    	  PORTB|=(~0XFE);
    }                                 
    delay50ms(2);                   
   	for(i=0;i<256;i++)           
	{	
    	PORTB&=0XFE;
			LED_PORT=read_buffer(i);		
      PORTB|=(~0XFE);
		  delay50ms(10);
	}    
    PORTB&=0xDF;
	while(1);
}