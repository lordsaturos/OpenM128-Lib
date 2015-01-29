#include <iom16v.h>
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

	ADCSR = 0x00;				//disable adc
	ADMUX = (1<<REFS0)|(AdcMux&0x0F);	//set AVcc as Vref, set adc input channel
	ACSR = (1<<ACD);			//close analog comparator
	//ADCSRA=(1<<ADEN)|(1<<ADIE)|(1<<ADSC)|(1<<ADPS2)|(1<<ADPS1);
}

void main(void)
{
	H_VAL_DISP_DDR = 0xFF;
	L_VAL_DISP_DDR = 0xFF;
	AdcMux = 0;				
	adc_init(); 
	while(1)
	{ 
		ADCSRA=(1<<ADEN)|(1<<ADSC)|(1<<ADPS2)|(1<<ADPS1); 	
		while(!ADSC);
		H_VAL_DISP_PORT = (ADC&0x300)>>8;	
		L_VAL_DISP_PORT = ADC&0xFF;			
	}
}
