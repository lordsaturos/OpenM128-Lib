#include <iom16v.h>
#include "D:\ICC_H\LCD12864_ST7920.H"
void UART_init(void)
{
// USART0 initialization
// Communication Parameters: 8 Data, 1 Stop, No Parity
// USART0 Receiver: On
// USART0 Transmitter: On
// USART0 Mode: Asynchronous
// USART0 Baud Rate: 9600
UCSRA=0x00;
UCSRB=0x18;
UCSRC=0x06;
UBRRH=0x00;
UBRRL=0x2F;
}

void uart_putchar0(char c) 
{ 
    while(!(UCSRA & 0x20));
    UDR = c; 
} 

unsigned int uart_getchar0(void) 
{ 
    unsigned char status,res; 
    if(!(UCSRA & 0x80)) return -1;        //no data to be received 
    status = UCSRA; 
    res = UDR; 
    if (status & 0x1c) return -1;        // If error, return -1 
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
 	unsigned char tmp;
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