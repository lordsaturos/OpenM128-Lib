#include <iom16v.h>
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\PS2.H"
#include "D:\ICC_H\LCD12864_ST7920.H"

#define SET_SDA		sbi(PORTD,3)
#define CLR_SDA		cbi(PORTD,3)
#define GET_SDA		gbi(PIND,3)
#define OUT_SDA 	sbi(DDRD,3)
#define IN_SDA 		cbi(DDRD,3)

#define SET_SCK		sbi(PORTD,2)
#define CLR_SCK		cbi(PORTD,2)
#define GET_SCK		gbi(PIND,2)
#define OUT_SCK 	sbi(DDRD,2)
#define IN_SCK 		cbi(DDRD,2)

#define DELAY() {NOP();NOP();NOP();NOP();}

bool rcvF		= 0; 	
uint8 keyVal; 			
uint8 tmp,tmp2;

void check(void)
{
    static uint8 rcvBits = 0;	
	
	OUT_SCK; 		   			
	DELAY();
	SET_SCK;					
	DELAY();
	
	IN_SCK;						
	DELAY();
	if(!GET_SCK)
	{
		if((rcvBits>0) && (rcvBits<9))
		{ 
			keyVal=keyVal>>1; 	
			//IN_SDA;			
			//DELAY();
			if(GET_SDA) 
	 			keyVal=keyVal|0x80; 
		}
		rcvBits++;
		while(!GET_SCK); 		
	
		if(rcvBits>10)
		{
			rcvBits=0; 			
			rcvF=1; 			
		}
	}
}

void keyHandle(uint8 val) 
{
	uint8 i;
	static bool isUp=0;			
	static bool shift=0;		
	rcvF = 0; 
	tmp= val;		
	if(!isUp)
	{
		switch(val)
		{
			case 0xF0 :			// a relase action
				isUp = 1;
				break;
			case 0x12 :			// Left shift
				shift = 1;
				break;
			case 0x59 :			// Right shift
				shift = 1;
				break;
			default:
				if(!shift)		// If shift not pressed
				{ 

					for(i=0; unshifted[i][0]!=val && i<59; i++)
						;
					if(unshifted[i][0] == val) 
						;	
					
				} 
				else			// If shift pressed
				{			
					for(i=0; shifted[i][0]!=val && i<59; i++)
						;
					//if(shifted[i][0] == val) 
						//SHIFT_DATA_PORT = val;
				}
		}
	}
	else 
	{
		isUp=0;					
		switch(val)
		{
			case 0x12 :			// Left SHIFT
				shift = 0;
				break;
			case 0x59 :			// Right SHIFT
				shift = 0;
				break;
		}
	}
}  

void main(void)
{
   unsigned char i;
    //PRESS_DATA_DDR = 0XFF;
	//SHIFT_DATA_DDR = 0XFF;
	DDRC=0xFF;
	PORTC|=0x01;
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"PS2 键盘实验");
	lcd_puts(2,1,"PS2 PORT");
	lcd_puts(3,1,"读取键盘的值:");	
	
	PORTC=0x00;
	
	IN_SDA;
	while(1)
	{
	 	
		check();
		if(rcvF)
		{
			keyHandle(keyVal);
			PORTC=0x01;
			lcd_clr();
			
			//lcd_puts(3,1,"写入并读取内容");	
			for(i=0;i<59;i++)
			{
			  if(unshifted[i][0]==tmp) 
			  {
			   tmp2=unshifted[i][1];
			  }
			}
			//PRESS_DATA_PORT = tmp2;
			lcd_putc(4,5,tmp2);
			delay50us(2);
			PORTC=0x00;
		}	
	}
}

