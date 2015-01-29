


#include <iom128v.h>
#include <macros.h>
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\LCD12864_ST7920_.H"
#include "D:\ICC_H\AT45DB161.H"

#define LCD_CLOSE cbi(PORTB,4)
#define LCD_OPEN sbi(PORTB,4)
void port_init(void)
{

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
	
	port_init();  
    spi_init();  
    PORTB&=0XEF;
    delay50ms(1); 
    PORTB|=(~0xDF);
    PORTB|=(~0XEF);    
	LCD_CLOSE;  
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
		tmp[i]=read_buffer(i);		
     	PORTB|=(~0XFE);
	    delay50us(1);
	   
	} 
    PORTB&=0xDF;
	
	LCD_OPEN; 
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"AT45DBX-LCD12864");
	lcd_puts(2,1,"FLASH   Òº¾§ÏÔÊ¾");
	lcd_puts(3,1,"ÄÚÈÝ:");
	
	for(i=0;i<256;i++)
	{
	    lcd_putd(3,5,tmp[i],1);  
		delay50ms(10); 
	}
	
	while(1);
}