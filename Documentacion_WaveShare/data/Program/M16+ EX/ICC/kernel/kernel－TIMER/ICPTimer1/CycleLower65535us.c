include <iom16v.h>
#include "D:\ICC_H\CmmICC.H"

/* lcd control and data port direction */
#define LCD_DDR_OUT {DDRD|= 0xF0;DDRB |= 0xE0;}

/* control port */
#define SET_RS  sbi(PORTB,5)
#define CLR_RS  cbi(PORTB,5)
#define OUT_RS  sbi(DDRB,5)

#define SET_RW  sbi(PORTB,6)
#define CLR_RW  cbi(PORTB,6)
#define OUT_RW  sbi(DDRB,6)

#define SET_E   sbi(PORTB,7)
#define CLR_E   cbi(PORTB,7)
#define OUT_E   sbi(DDRB,7)

/* data port */
#define SET_D4  sbi(PORTD,4)
#define CLR_D4  cbi(PORTD,4)
#define OUT_D4  sbi(DDRD,4)

#define SET_D5  sbi(PORTD,5)
#define CLR_D5  cbi(PORTD,5)
#define OUT_D5  sbi(DDRD,5)

#define SET_D6  sbi(PORTD,6)
#define CLR_D6  cbi(PORTD,6)
#define OUT_D6  sbi(DDRD,6)

#define SET_D7  sbi(PORTD,7)
#define CLR_D7  cbi(PORTD,7)
#define OUT_D7  sbi(DDRD,7)

/* busy port */
#define GET_BF	gbi(PIND,7)
#define OUT_BF	sbi(DDRD,7)
#define IN_BF	cbi(DDRD,7)

#include "D:\ICC_H\LCD1602_.H"

uint32 cycle;  
uint16 T1OvfTimes=0;

void timer1_init(void)
{
	TCCR1B = 0x00;		//stop
	TCNT1 = 0; 			//setup
	ICR1 =  0;
	TCCR1A = 0x00;
	TCCR1B = 0xC2;		//start Timer, prescale:8
}

#pragma interrupt_handler timer1_capt_isr:6
void timer1_capt_isr(void)
{
	TCCR1B = 0x00;		//stop
	//frq=(ICR1+86);
	//frq=TIME_1S/frq;	// read (int)value in ICR1 using
	cycle=ICR1-24;
	//cycle = 1000000;
	if(T1OvfTimes!=0)
		cycle += (uint32)T1OvfTimes*65535;
	T1OvfTimes = 0;
	ICR1=0;
	TCNT1=0;
	TCCR1B=0XC2;
}

#pragma interrupt_handler timer1_ovf_isr:9
void timer1_ovf_isr(void)
{
	T1OvfTimes++;
}

void mcu_init(void)
{
	CLI();
	timer1_init();
	MCUCR = 0x00;
	GICR  = 0x00;
	TIMSK = 0x24; 
	SEI(); 
}

void main(void)
{
	mcu_init();
	DDRB = 0X00;	//set ICP port as input
	LCD_DDR_OUT;	//set lcd port as output

	LCD1602_init();
	LCD1602_puts(0x80,"Cycle:   s ms us");
	while(1)
	{ 
		LCD1602_putd(0xcf,cycle,7);
		delay50ms(10);
	}
}