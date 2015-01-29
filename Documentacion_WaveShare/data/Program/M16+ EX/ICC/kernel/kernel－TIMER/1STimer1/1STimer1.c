#include <iom16v.h>
#include <macros.h>

#define DISP_DDR   DDRD
#define DISP_PORT  PORTD

void timer1_init(void)
{
	TCCR1B = 0x00;		//stop timer

	TCNT1H = 0xE3;		
	TCNT1L = 0xE1;	
	
	//OCR1AH = 0x1C;	
	//OCR1AL = 0x20;	

	//OCR1BH = 0x1C;	
	//OCR1BL = 0x20;	

	//ICR1H  = 0x1C;	
	//ICR1L  = 0x20;	

	TCCR1A = 0x00;
	TCCR1B = 0x05;		

	MCUCR = 0x00;		
	GICR  = 0x00;		
	TIMSK = 0x04;		
	//SEI();			//enable interrupts
}

#pragma interrupt_handler timer1_ovf_isr:9
void timer1_ovf_isr(void)
{
	TCNT1H = 0xE3;		//reload counter high value
	TCNT1L = 0xE1;		//reload counter low value
	DISP_PORT++;
}

void main(void)
{
	DISP_DDR = 0XFF;
	timer1_init();
	SEI();
	while(1);
}

