/*********************************************************************
	΢ ѩ �� ��   WaveShare   http://www.waveShare.net            	
		                                                        
Ŀ    ��:   ����ʹ��MAX232��ʾ������
	
Ŀ��ϵͳ:   ����AVR��Ƭ��
		                                                                
Ӧ������:   ICCAVR
		                                                                
��    ��:   Version 1.0                                                          
		                                                                
Բ��ʱ��:   2009-03-31
	
������Ա:   zz

˵    ��:   ��������ҵ��;���뱣���˶����ֻ�ע��������Դ
	
	�� �� �� ΢ ѩ �� �� �� �� �� ˾ �� �� �� �� �� �� Ȩ     
*********************************************************************/

/*01010101010101010101010101010101010101010101010101010101010101010101
----------------------------------------------------------------------
�汾���¼�¼��

----------------------------------------------------------------------
ʵ�����ݣ�
�Ȱ�д���ݲ���ʾ��MAX232�Է���������
----------------------------------------------------------------------
Ӳ�����ӣ�
			LCD12864_ST7920			ATmega16
				RS(CS)	--------	VCC
				R/W(SID)--------	MOSI/PB5
				E(SCLK)	--------	SCK/PB7
				PSB		--------	GND
			   
			   DVK501				  ATmega16+
				VCC		---------	  VCC
				GND		---------	  GND
				RXD1   ---------	  PD0(TXD0)
				TXD1	---------	  PD1(RXD0)
				��DB9�ӿڵ�2�ź�3�Ŷ̽�
----------------------------------------------------------------------
ע����� 
��1�����м��ؿ⺯�����뽫���̸�Ŀ¼�µġ��⺯�����µġ�ICC_H���ļ��п���D��
��2������ϸ�Ķ���ʹ�ñض�����������ϡ�
----------------------------------------------------------------------
10101010101010101010101010101010101010101010101010101010101010101010*/

#include <iom16v.h>
#include "D:\ICC_H\LCD12864_ST7920.H"

void UART_init(void)
{
// USART0 initialization
// Communication Parameters: 8 Data, 1 Stop, No Parity
// USART0 Receiver: On
// USART0 Transmitter: On
// USART0 Mode: Asynchronous
// USART0 Baud Rate: 9600
UCSRA=0x00;
UCSRB=0x18;
UCSRC=0x06;
UBRRH=0x00;
UBRRL=0x2F;
}


//��RS232����һ���ֽ� 
void uart_putchar0(char c) 
{ 
    while(!(UCSRA & 0x20));
    UDR = c; 
} 
//��RS232����һ���ֽ� 
unsigned int uart_getchar0(void) 
{ 
    unsigned char status,res; 
    if(!(UCSRA & 0x80)) return -1;        //no data to be received 
    status = UCSRA; 
    res = UDR; 
    if (status & 0x1c) return -1;        // If error, return -1 
    return res; 
}
//�ȴ���RS232����һ����Ч���ֽ� 
unsigned char uart_waitchar0(void) 
{ 
    unsigned int c; 
    while((c=uart_getchar0())==-1); 
    return (unsigned char)c; 
} 

void main(void)
{
 	unsigned char tmp;
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"MAX232-LCD12864");
	lcd_puts(2,1,"����  Һ����ʾ");
	lcd_puts(3,1,"����:");
	
 	UART_init();
	uart_putchar0('c');
	
	tmp=uart_waitchar0();
	
	lcd_putc(3,4,tmp);
	while(1);
}