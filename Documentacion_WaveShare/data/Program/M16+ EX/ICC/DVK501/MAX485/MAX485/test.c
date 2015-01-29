#include <iom16v.h>
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
 	DDRA=0xFF;
 	UART_init();
	uart_putchar0(0x55);
	
	PORTA=uart_waitchar0();
	while(1);
}