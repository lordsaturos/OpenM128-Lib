#include <iom48v.h>
#include "D:\ICC_H\CmmICC.H"

#define LED_DDR  DDRB
#define LED_P0RT PORTB
#define KEY_DDR  DDRD
#define KEY_PORT PORTD
#define KEY_PIN  PIND

void scanKey()
{
    KEY_DDR=0X00;
    KEY_PORT=0xFF;
    if(KEY_PIN==0xFE) 
        LED_P0RT=0x01;
    if(KEY_PIN==0xFD) 
        LED_P0RT=0x02;
    if(KEY_PIN==0xFB) 
        LED_P0RT=0x04;
    if(KEY_PIN==0xF7) 
        LED_P0RT=0x08;
    if(KEY_PIN==0xEF) 
        LED_P0RT=0x10;
    if(KEY_PIN==0xDF) 
        LED_P0RT=0x20;
    if(KEY_PIN==0xBF) 
        LED_P0RT=0x40;
    if(KEY_PIN==0x7F) 
        LED_P0RT=0x80;
 }

void main()
{
    LED_DDR=0XFF;
    while(1)
        scanKey();
}
