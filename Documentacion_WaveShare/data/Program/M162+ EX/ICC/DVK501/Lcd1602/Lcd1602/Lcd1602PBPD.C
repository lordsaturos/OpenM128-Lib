

#include <iom162v.h>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.H"

#define SET_RS  sbi(PORTB,5)
#define CLR_RS  cbi(PORTB,5)
#define OUT_RS  sbi(DDRB,5)

#define SET_RW  sbi(PORTB,6)
#define CLR_RW  cbi(PORTB,6)
#define OUT_RW  sbi(DDRB,6)

#define SET_E   sbi(PORTB,7)
#define CLR_E   cbi(PORTB,7)
#define OUT_E   sbi(DDRB,7)


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


#define GET_BF	gbi(PIND,7)
#define OUT_BF	sbi(DDRD,7)
#define IN_BF	cbi(DDRD,7)

#include "D:\ICC_H\LCD1602_.H"

const uint8  userCh0[8]={0x10,0x1f,0x01,0x02,0x04,0x08,0x10,0x1f};
const uint8  userCh1[8]={0x00,0x08,0x0f,0x01,0x02,0x04,0x08,0x0f};
const uint8  userCh2[8]={0x00,0x00,0x04,0x07,0x01,0x02,0x04,0x07};


void main()
{

	LCD1602_init();

	while(1)
	{
		LCD1602_puts(0xC6,"Sleeping");
		delay50ms(5);
		LCD1602_setCmd("CLR_SCR");
		delay50ms(5);
		LCD1602_puts(0xC6,"Sleeping");
		delay50ms(5);
		LCD1602_setCmd("CLR_SCR");
		delay50ms(5);
		LCD1602_puts(0xC6,"Sleeping");
		delay50ms(5);

		LCD1602_setCGRAM(CGRAM0,userCh0);	
		LCD1602_setCGRAM(CGRAM1,userCh1);	
		LCD1602_setCGRAM(CGRAM2,userCh2);	
		
		LCD1602_putc(0x84,CGRAM2);		
		delay50ms(10);
		LCD1602_putc(0x83,CGRAM1);		
		delay50ms(12);
		LCD1602_putc(0x82,CGRAM0);		
		delay50ms(14);

		LCD1602_setCmd("CLR_SCR");
	}
}