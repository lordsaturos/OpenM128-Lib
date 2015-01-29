



#include <iom128v.h>
#include "D:\ICC_H\CmmICC.H"

#define H_VAL_DISP_DDR  DDRD
#define L_VAL_DISP_DDR  DDRB
#define H_VAL_DISP_PORT PORTD
#define L_VAL_DISP_PORT PORTB

const uint8 ADEnStatus[8] = {0xFE,0xFD,0xFB,0xF7,0xEF,0xDF,0xBF,0x7F};

uint8 AdcMux;			  
uint16 AdcVal;			  


void adc_init()
{

	DDRA &= ADEnStatus[AdcMux];	   
	PORTA &= ADEnStatus[AdcMux];

	ADCSRA = 0x00;				
	ADMUX = (1<<REFS1)|(1<<REFS0)|(AdcMux&0x0F);	
	ACSR = (1<<ACD);			
	ADCSRA=(1<<ADEN)|(1<<ADSC)|(1<<ADIE)|(1<<ADPS2)|(1<<ADPS1); 
}

#pragma interrupt_handler adc_isr:15
void adc_isr(void)
{
	AdcVal = ADC&0x3FF;
	ADMUX = (1<<REFS0)|(AdcMux&0x0F);	
	ADCSRA |= (1<<ADSC);				
}

void main(void)
{
	H_VAL_DISP_DDR = 0xFF;
	L_VAL_DISP_DDR = 0xFF;
	AdcMux = 0;	   	 	  
	adc_init(); 
	SEI(); 
	while(1)
	{  		 
		H_VAL_DISP_PORT = (AdcVal&0x300)>>8;	
		L_VAL_DISP_PORT = AdcVal&0xFF;			
	}
}
