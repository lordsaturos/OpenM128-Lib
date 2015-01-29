



#include <iom128v.h>
#include "D:\ICC_H\LCD12864_ST7920_.H"

void main()
{             
	SEI();
	lcd_init();
   lcd_clr();
	lcd_puts(1,1,"  WaveShare.net");
	lcd_puts(3,1,"    Î¢Ñ©µç×Ó");
	while(1);
}