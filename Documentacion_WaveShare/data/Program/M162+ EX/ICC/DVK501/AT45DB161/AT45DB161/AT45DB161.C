
#include <iom162v.h>
#define NO_INCLUDE_I2C_H 1

#include <macros.h>
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\AT45DB161.H"        
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
	unsigned char i;
	port_init();  
    spi_init();  

    PORTB&=0xfb;      
    delay50ms(1); 
    PORTB|=0x08;	    
                
    PORTB|=0x04;     	         
    for(i=0;i<255;i++)
    {  
        PORTB&=0xef;	   
        write_buffer(i,i);	    
    	PORTB|=0x10;        
		delay50us(2);
    }                                                    
   	for(i=0;i<255;i++)           
	{	
    	PORTB&=0xef;	
		PORTA=read_buffer(i);		     
        PORTB|=0x10;	
		delay50ms(5);
	}    
    PORTB&=0xf7;
	while(1);
}