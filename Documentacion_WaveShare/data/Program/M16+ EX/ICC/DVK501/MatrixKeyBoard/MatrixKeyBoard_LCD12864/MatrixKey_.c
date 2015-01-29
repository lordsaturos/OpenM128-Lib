/*********************************************************************
	微 雪 电 子   WaveShare   http://www.waveShare.net	

功能目的:   测试"MatrixKeyBoard"模块

目标系统:   基于任何AVR单片机

应用软件:   ICCAVR                                               

版    本:   Version 1.0

圆版时间:   2005-03-01

开发人员:   SEE

说    明:   若用于商业用途，请保留此段文字或注明代码来源 

	深 圳 市 微 雪 电 子 有 限 公 司 保 留 所 有 的 版 权
*********************************************************************/

/*01010101010101010101010101010101010101010101010101010101010101010101
----------------------------------------------------------------------
版本更新记录：

----------------------------------------------------------------------
实验内容：
循环显示按键，并使用PB口的LED指示灯指示按键的码值。
学习本程序的优点，按键端口可任意指定，而不需分配在同一个PORT口上。
----------------------------------------------------------------------
硬件连接：
MatrixKeyBoard：K0----K7
                 |
SMK1632：       PA0--PA7
----------------------------------------------------------------------
注意事项：
（1）若有加载库函数，请将光盘根目录下的“库函数”下的“ICC_H”文件夹拷到D盘
（2）请详细阅读“使用必读”及相关资料。
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
函数名称：
函数功能：
注意事项：
提示说明：
输    入：
返    回：
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
函数名称：
函数功能：
注意事项：
提示说明：
输    入：
返    回：
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
函数名称：
函数功能：
注意事项：
提示说明：
输    入：
返    回：
--------------------------------------------------------------------*/
/*
	K4-----K5-----K6-----K7
     |      |      |      |
	03H----02H----01H----00H －K0
	07H----06H----05H----04H －K1
	0BH----0AH----09H----08H －K2
	0FH----0EH----0DH----0CH －K3
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
函数名称：
函数功能：
注意事项：
提示说明：
输    入：
返    回：
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
函数名称：
函数功能：
注意事项：
提示说明：
输    入：
返    回：
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