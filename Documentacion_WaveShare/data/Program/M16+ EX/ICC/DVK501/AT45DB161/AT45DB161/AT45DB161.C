#include <iom16v.h>
#include <macros.h>
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\AT45DB161.H" 

#define OUT_CS sbi(DDRB,4)
#define SET_CS sbi(PORTB,4)
#define CLR_CS cbi(PORTB,4)
void main(void)
{
	uint i;
    DDRA=0xFF;
	PORTA=0x00;
	DDRB=0xFF;
	PORTB=0x00;
	spi_init();  
    delay50ms(1); 
  	
	SET_CS;
    for(i=0;i<256;i++)
    {  
	   	CLR_CS;
        write_buffer(i,i);	    
		SET_CS;
    }                                 
    delay50us(20);                   
   	for(i=0;i<256;i++)           
	{	
		CLR_CS;
		PORTA=read_buffer(i);		
		SET_CS;  
		delay50ms(10);
		
	} 
	while(1);
}