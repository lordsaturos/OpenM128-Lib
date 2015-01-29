



#include <iom128v.h> 
#include <macros.h> 

#define OC0_OUT_EN	DDRB |= 0b00001000


void timer0_init(void) 
{ 
	TCCR0 = (1<<WGM01)|(1<<WGM00)|(1<<COM01)|(1<<COM00)|(1<<CS00);	

	TCNT0 = 0x00;			
	OCR0  = 0x10;			
} 

void main(void) 
{
	OC0_OUT_EN;				
	timer0_init(); 
	SEI(); 
	while(1);
}