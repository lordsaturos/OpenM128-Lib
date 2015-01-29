



#include <iom128v.h>
#include <macros.h>

#define DISP_DDR   DDRD
#define DISP_PORT  PORTD


void timer1_init(void)
{
	TCCR1B = 0x00;		

	TCNT1H = 0xE3;		
	TCNT1L = 0xE1;		

	
	

	
	

	
	

	TCCR1A = 0x00;
	TCCR1B = 0x05;		

	MCUCR = 0x00;		
	TIMSK = 0x04;		
	
}

#pragma interrupt_handler timer1_ovf_isr:9
void timer1_ovf_isr(void)
{
	TCNT1H = 0xE3;		
	TCNT1L = 0xE1;		
	DISP_PORT++;
}

void main(void)
{
	DISP_DDR = 0XFF;
	timer1_init();
	SEI();
	while(1);
}

