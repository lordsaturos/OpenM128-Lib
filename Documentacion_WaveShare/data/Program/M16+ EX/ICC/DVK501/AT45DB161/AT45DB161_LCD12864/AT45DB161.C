#include <iom16v.h>
#include <macros.h>
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\AT45DB161.H" 
#include "D:\ICC_H\LCD12864_ST7920.H"  

#define OUT_DBCS sbi(DDRB,4)
#define SET_DBCS sbi(PORTB,4)
#define CLR_DBCS cbi(PORTB,4)

#define OUT_LCDCS sbi(DDRB,3)
#define SET_LCDCS sbi(PORTB,3)
#define CLR_LCDCS cbi(PORTB,3)

void main(void)
{
	uint i;
	uchar tmp[256];
	DDRB=0xFF;	
	CLR_LCDCS;
	spi_init();  
    delay50ms(1); 
  	
	SET_DBCS;
    for(i=0;i<256;i++)
    {  
	   	CLR_DBCS;
        write_buffer(i,i);	    
		SET_DBCS;
    }   
   	for(i=0;i<256;i++)         
	{
		CLR_DBCS;
		tmp[i]=read_buffer(i);		
		SET_DBCS;  
	} 
	OUT_LCDCS;                            
	SET_LCDCS;
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"AT45DBX-LCD12864");
	lcd_puts(2,1,"FLASH   Òº¾§ÏÔÊ¾");
	lcd_puts(3,1,"ÄÚÈÝ:");
	for(i=0;i<256;i++)
	{
		lcd_putd(3,5,tmp[i],2);
		delay50ms(20);
	}
	while(1);
}