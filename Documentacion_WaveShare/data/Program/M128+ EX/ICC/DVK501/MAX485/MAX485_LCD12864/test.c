



#include <iom128v.h>
#include "D:\ICC_H\LCD12864_ST7920_.H"

void UART_init(void)
{






UCSR0A=0x00;
UCSR0B=0x18;
UCSR0C=0x06;
UBRR0H=0x00;
UBRR0L=0x2F;
}


void uart_putchar0(char c) 
{ 
    while(!(UCSR0A & 0x20));
    UDR0 = c; 
} 

unsigned int uart_getchar0(void) 
{ 
    unsigned char status,res; 
    if(!(UCSR0A & 0x80)) return -1;        
    status = UCSR0A; 
    res = UDR0; 
    if (status & 0x1c) return -1;        
    return res; 
} 

unsigned char uart_waitchar0(void) 
{ 
    unsigned int c; 
    while((c=uart_getchar0())==-1); 
    return (unsigned char)c; 
} 

void main(void)
{
 	char tmp;
 	DDRA=0xFF;

	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"MAX485-LCD12864");
	lcd_puts(2,1,"´®¿Ú  Òº¾§ÏÔÊ¾");
	lcd_puts(3,1,"ÄÚÈÝ:");
	
 	UART_init();
	uart_putchar0('c');
	
	tmp=uart_waitchar0();
	
	lcd_putc(3,4,tmp);
	while(1);
}