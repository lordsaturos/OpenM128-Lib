/*********************************************************************
	΢ ѩ �� ��   WaveShare   http://www.waveShare.net	

����Ŀ��:   ����"MatrixKeyBoard"ģ��

Ŀ��ϵͳ:   �����κ�AVR��Ƭ��

Ӧ�����:   ICCAVR                                               

��    ��:   Version 1.0

Բ��ʱ��:   2005-03-01

������Ա:   SEE

˵    ��:   ��������ҵ��;���뱣���˶����ֻ�ע��������Դ 

	�� �� �� ΢ ѩ �� �� �� �� �� ˾ �� �� �� �� �� �� Ȩ
*********************************************************************/

/*01010101010101010101010101010101010101010101010101010101010101010101
----------------------------------------------------------------------
�汾���¼�¼��

----------------------------------------------------------------------
ʵ�����ݣ�
ѭ����ʾ��������ʹ��PB�ڵ�LEDָʾ��ָʾ��������ֵ��
ѧϰ��������ŵ㣬�����˿ڿ�����ָ���������������ͬһ��PORT���ϡ�
----------------------------------------------------------------------
Ӳ�����ӣ�
MatrixKeyBoard��K0----K7
                 |
SMK1632��       PA0--PA7
----------------------------------------------------------------------
ע�����
��1�����м��ؿ⺯�����뽫���̸�Ŀ¼�µġ��⺯�����µġ�ICC_H���ļ��п���D��
��2������ϸ�Ķ���ʹ�ñض�����������ϡ�
----------------------------------------------------------------------
10101010101010101010101010101010101010101010101010101010101010101010*/

#include <iom16v.H>
#include "D:\ICC_H\CmmICC.H"

#define LED_DDR 	DDRB
#define LED_PORT 	PORTB

#define OUT_K0    	sbi(DDRA,0)
#define OUT_K1    	sbi(DDRA,1)
#define OUT_K2    	sbi(DDRA,2)
#define OUT_K3    	sbi(DDRA,3)

#define IN_K4    	cbi(DDRA,4)
#define IN_K5    	cbi(DDRA,5)
#define IN_K6    	cbi(DDRA,6)
#define IN_K7    	cbi(DDRA,7)

#define SET_K0		sbi(PORTA,0)
#define SET_K1		sbi(PORTA,1)
#define SET_K2		sbi(PORTA,2)
#define SET_K3		sbi(PORTA,3)

#define CLR_K0		cbi(PORTA,0)
#define CLR_K1		cbi(PORTA,1)
#define CLR_K2		cbi(PORTA,2)
#define CLR_K3		cbi(PORTA,3)

#define SET_K4		sbi(PORTA,4)
#define SET_K5		sbi(PORTA,5)
#define SET_K6		sbi(PORTA,6)
#define SET_K7		sbi(PORTA,7)

#define GET_K4		gbi(PINA,4)
#define GET_K5		gbi(PINA,5)
#define GET_K6		gbi(PINA,6)
#define GET_K7		gbi(PINA,7)

/*--------------------------------------------------------------------
�������ƣ�
�������ܣ�
ע�����
��ʾ˵����
��    �룺
��    �أ�
--------------------------------------------------------------------*/
void KeyBoard_setSta(uint8 status)
{
	//SET_K4;		
	//SET_K5;		
	//SET_K6;		
	//SET_K7;	

	if( status&0x01 )
		SET_K0;
	else 
		CLR_K0;

	if( status&0x02 )
		SET_K1;
	else 
		CLR_K1;

	if( status&0x04 )
		SET_K2;
	else 
		CLR_K2;

	if( status&0x08 )
		SET_K3;
	else 
		CLR_K3;
}
/*--------------------------------------------------------------------
�������ƣ�
�������ܣ�
ע�����
��ʾ˵����
��    �룺
��    �أ�
--------------------------------------------------------------------*/
uint8 KeyBoard_getSta()
{
	uint8 status = 0xF0;

	if( !GET_K4 )
		status = 0xe0;

	if( !GET_K5 )
		status = 0xd0;

	if( !GET_K6 )
		status = 0xb0;

	if( !GET_K7 )
		status = 0x70;

	return status;
}
/*--------------------------------------------------------------------
�������ƣ�
�������ܣ�
ע�����
��ʾ˵����
��    �룺
��    �أ�
--------------------------------------------------------------------*/
/*
	K4-----K5-----K6-----K7
     |      |      |      |
	03H----02H----01H----00H ��K0
	07H----06H----05H----04H ��K1
	0BH----0AH----09H----08H ��K2
	0FH----0EH----0DH----0CH ��K3
*/
const uint8 setSta_[4]={0xfe,0xfd,0xfb,0xf7};	
const uint8 getSta_[4]={0x70,0xb0,0xd0,0xe0};   
uint8 GetKeyVal()
{
	uint8 i,j,getSta,keyVal;

	for(i=0;i<4;i++)              
	{							
		//KEY_PORT = setSta_[i];
		KeyBoard_setSta(setSta_[i]);
		delay50us(1);  		
		//if(KEY_PIN!=setSta_[i])
		getSta = KeyBoard_getSta();
		//if( getSta!=setSta_[i] )
		if( getSta!=0xF0 )
		{
			//getSta = KEY_PIN&0xf0;
			//getSta = KeyBoard_getSta();
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
/*--------------------------------------------------------------------
�������ƣ�
�������ܣ�
ע�����
��ʾ˵����
��    �룺
��    �أ�
--------------------------------------------------------------------*/
void KeyBoard_init()
{
	OUT_K0;    
	OUT_K1;    
	OUT_K2;    	
	OUT_K3;    	
	IN_K4;    	
	IN_K5;    
	IN_K6;   
	IN_K7;    
	SET_K4;		
	SET_K5;		
	SET_K6;		
	SET_K7;		
}
/*--------------------------------------------------------------------
�������ƣ�
�������ܣ�
ע�����
��ʾ˵����
��    �룺
��    �أ�
--------------------------------------------------------------------*/
void main()
{
 	uint8 keyVal;
	LED_DDR = 0XFF;
	KeyBoard_init();		
	while(1)
	{
	 	keyVal = GetKeyVal();
		if( keyVal!=0xFF )		
			LED_PORT = keyVal;
	}
}