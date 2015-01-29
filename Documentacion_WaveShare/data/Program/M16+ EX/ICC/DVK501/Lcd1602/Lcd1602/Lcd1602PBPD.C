#include <iom48v.h>
#include "D:\ICC_H\CmmICC.H"
/* control port */
#define SET_RS  sbi(PORTC,0)
#define CLR_RS  cbi(PORTC,0)
#define OUT_RS  sbi(DDRC,0)

#define SET_RW  sbi(PORTD,6)
#define CLR_RW  cbi(PORTD,6)
#define OUT_RW  sbi(DDRD,6)

#define SET_E   sbi(PORTD,7)
#define CLR_E   cbi(PORTD,7)
#define OUT_E   sbi(DDRD,7)

/* data port */
#define SET_D4  sbi(PORTC,1)
#define CLR_D4  cbi(PORTC,1)
#define OUT_D4  sbi(DDRC,1)

#define SET_D5  sbi(PORTC,2)
#define CLR_D5  cbi(PORTC,2)
#define OUT_D5  sbi(DDRC,2)

#define SET_D6  sbi(PORTC,3)
#define CLR_D6  cbi(PORTC,3)
#define OUT_D6  sbi(DDRC,3)

#define SET_D7  sbi(PORTC,4)
#define CLR_D7  cbi(PORTC,4)
#define OUT_D7  sbi(DDRC,4)

/* busy port */
#define GET_BF	gbi(PINC,4)
#define OUT_BF	sbi(DDRC,4)
#define IN_BF	cbi(DDRC,4)

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

		LCD1602_setCGRAM(CGRAM0,userCh0);	//Set CGRAM0' data
		LCD1602_setCGRAM(CGRAM1,userCh1);	//Set CGRAM1' data
		LCD1602_setCGRAM(CGRAM2,userCh2);	//Set CGRAM2' data
		
		LCD1602_putc(0x84,CGRAM2);		//putc to 0x84 by CGRAM2' data
		delay50ms(10);
		LCD1602_putc(0x83,CGRAM1);		//putc to 0x83 by CGRAM1' data
		delay50ms(12);
		LCD1602_putc(0x82,CGRAM0);		//putc to 0x84 by CGRAM0' data
		delay50ms(14);

		LCD1602_setCmd("CLR_SCR");
	}
}