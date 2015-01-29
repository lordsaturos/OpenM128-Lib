
#include <avr/io.h>
#include <avr/eeprom.h>

int main(void)
{
	int16_t tmp;
	for(tmp=0;tmp<255;tmp++)
	{
		_EEPUT(tmp,tmp);	
	}
	_EEPUT(tmp,tmp);		 
	while(1);
}
