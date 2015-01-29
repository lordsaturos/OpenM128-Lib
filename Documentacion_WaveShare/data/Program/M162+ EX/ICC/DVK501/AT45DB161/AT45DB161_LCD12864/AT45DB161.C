


#include <iom162v.h>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\LCD12864_ST7920_M48.H"

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
	uint i;
	uchar tmp[256];
	DDRA=0xFF;

	 port_init();
    spi_init();  
    sbi(DDRB,3);
	 cbi(PORTB,3); 
    
    delay50ms(1); 
    
    
    for(i=0;i<256;i++)
    {  
        PORTB&=0xef;	   
        write_buffer(i,i);	     
    	PORTB|=0x10;        
		delay50us(10);
    }                                 
    delay50ms(2);                   
   	for(i=0;i<256;i++)           
	{	
    	PORTB&=0xef;	
		tmp[i]=read_buffer(i);   
        PORTB|=0x10;	
		delay50us(10);
	}    
	   
    
	
	sbi(PORTB,3); 
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"AT45DBX-LCD12864");
	lcd_puts(2,1,"FLASH   Òº¾§ÏÔÊ¾");
	lcd_puts(3,1,"ÄÚÈÝ:");
	
	for(i=0;i<256;i++)
	{
	    lcd_putd(3,5,tmp[i],1);  
		delay50ms(20); 
	}
	
	while(1);
}