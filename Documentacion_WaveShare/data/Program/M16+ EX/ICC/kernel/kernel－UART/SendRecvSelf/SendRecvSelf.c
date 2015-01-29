#include <iom16v.h>
#include "D:\ICC_H\CmmICC.H"

#define DISP_PORT PORTB
#define DISP_DDR  DDRB

void uart0_init(void)
{
    UCSRB = 0x00;   //disable while setting baud rate
    UCSRA = 0x00;   
    UCSRC = 0x86; 
    UBRRL = 47;     
    UBRRH = 0x00;  
    UCSRB = 0x98;   
}

#pragma interrupt_handler uart0_rx_isr:12
void uart0_rx_isr(void)
{
    DISP_PORT = UDR;
}

void mcu_init(void)
{
    CLI(); 
    uart0_init();
    MCUCR = 0x00;
    GICR  = 0x00;
    TIMSK = 0x00;   //timer interrupt sources
    SEI();          //re-enable interrupts
}

void main()
{
    uint8 counter=0;

    mcu_init();

    DISP_DDR=0xFF;

    while(1)
    {
        UDR=counter++;          
        while(!(UCSRA&0x40));   
        UCSRA|=0x40;            

        delay50ms(4);
    }
}
