

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
ISR(TIMER1_OVF_vect,ISR_BLOCK)
{
	TCNT1=58162;	
	PORTA=~PORTA;
}

int main(void)
{
	DDRA=0xFF;	
	PORTA=0x00;
	TCCR1A=0x00;
	TCCR1B=(1<<CS12)|(1<<CS10); 
	TCCR1C=0x00;
	TCNT1=58162;
	TIMSK1=(1<<TOIE1);
	asm("SEI");
	while(1);
}
