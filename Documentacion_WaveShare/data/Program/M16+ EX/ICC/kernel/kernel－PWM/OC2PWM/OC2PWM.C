#include <iom16v.h> 
#include <macros.h> 

#define OC2_OUT_EN	DDRD |= 0b10000000

void timer2_init(void) 
{ 
	TCCR2 = (1<<WGM21)|(1<<WGM20)|(1<<COM21)|(1<<COM20)|(1<<CS20);	

	TCNT2 = 0x00;			
	OCR2  = 0xE0;			
} 

void main(void) 
{
	OC2_OUT_EN;				
	timer2_init();
	SEI(); 
	while(1);
}