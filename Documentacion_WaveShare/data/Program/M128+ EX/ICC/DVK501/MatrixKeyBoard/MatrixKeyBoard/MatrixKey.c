



#include <iom128v.H>
#include "D:\ICC_H\CmmICC.H"

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
    uint8 keyVal;
    LED_DDR = 0XFF;
    KEY_DDR = 0X0F;     
    while(1)
    {
        keyVal = GetKeyVal();
        if( keyVal!=0xFF )  	
            LED_PORT = keyVal;
    }
}
