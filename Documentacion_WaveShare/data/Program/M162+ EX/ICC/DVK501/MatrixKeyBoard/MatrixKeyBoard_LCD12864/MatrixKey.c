

#include <iom162v.H>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\LCD12864_ST7920_M48.H"

#define LED_DDR     DDRB
#define LED_PORT    PORTB
#define KEY_DDR     DDRA
#define KEY_PORT    PORTA
#define KEY_PIN     PINA



const uint8 setSta_[4]={0xfe,0xfd,0xfb,0xf7};       
const uint8 getSta_[4]={0x70,0xb0,0xd0,0xe0};  
uint8 GetKeyVal()
{
    uint8 i,j,getSta,keyVal;
    
    for(i=0;i<4;i++)              
    {               			
        KEY_PORT = setSta_[i];
        delay50us(1);       
        if(KEY_PIN!=setSta_[i])
        {
            getSta=KEY_PIN&0xf0;
            for(j=0;j<4;j++)    
                if(getSta==getSta_[j])                                 
            	{
                    keyVal=j+i*4;
                    return keyVal;
            	}
        }
    }
    return 0xFF;
}

void main()
{
    uint8 keyVal=0,keyVal_tmp=0;
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"¼üÅÌ²âÊÔ³ÌÐò");
	lcd_puts(2,1,"¼üÅÌ  Òº¾§ÏÔÊ¾");
	lcd_puts(3,1,"Çë°´¼ü:");
	
    KEY_DDR = 0X0F;     
    while(1)
    {
        keyVal = GetKeyVal();
        if( keyVal!=keyVal_tmp )  	
        {
		 lcd_puts(3,5,"   ");
		 lcd_putd(3,5,keyVal,2);
		 keyVal_tmp=keyVal;
		}
		else if(keyVal==0xFF)
		{
		 lcd_puts(3,5,"   ");
		 keyVal_tmp=keyVal;
		}
	}
}
