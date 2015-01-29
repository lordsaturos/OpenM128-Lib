#line 1 "E:\wsŒ‚√Ù ¶–÷≥Ã–Ú\DVK500\stk128+\PS2PC~1\PS2SimpleHard\PS2SimpleHard.C"

#line 20 "E:\wsŒ‚√Ù ¶–÷≥Ã–Ú\DVK500\stk128+\PS2PC~1\PS2SimpleHard\PS2SimpleHard.C"


#line 45 "E:\wsŒ‚√Ù ¶–÷≥Ã–Ú\DVK500\stk128+\PS2PC~1\PS2SimpleHard\PS2SimpleHard.C"

#line 1 "C:/icc/include/iom128v.h"




#line 7 "C:/icc/include/iom128v.h"


#line 11 "C:/icc/include/iom128v.h"


#line 14 "C:/icc/include/iom128v.h"


#line 17 "C:/icc/include/iom128v.h"


#line 20 "C:/icc/include/iom128v.h"






























































































































































































































































































































































































































































































































































































































































































































































































#line 47 "E:\wsŒ‚√Ù ¶–÷≥Ã–Ú\DVK500\stk128+\PS2PC~1\PS2SimpleHard\PS2SimpleHard.C"
#line 1 "D:\ICC_H\CmmICC.H"

#line 20 "D:\ICC_H\CmmICC.H"


#line 39 "D:\ICC_H\CmmICC.H"




#line 1 "C:/icc/include/math.h"










float fabs(float x);
float frexp(float x, int *eptr);
float tanh(float x);
float sin(float x);
float atan(float x);
float atan2(float y, float x);
float asin(float x);
float exp10(float x);
float log10(float x);
float fmod(float y, float z);
float sqrt(float x);
float cos(float x);
float ldexp(float d, int n);
float modf(float y, float *i);
float floor(float y);
float ceil(float y);
float fround(float d);
float tan(float x);
float acos(float x);
float exp(float x);
float log(float x);
float pow(float x,float y);
float sinh(float x);
float cosh(float x);












#line 49 "C:/icc/include/math.h"











#line 44 "D:\ICC_H\CmmICC.H"
#line 1 "C:/icc/include/string.h"


#line 1 "C:/icc/include/_const.h"




#line 10 "C:/icc/include/_const.h"







#line 4 "C:/icc/include/string.h"


















typedef unsigned int size_t;


void *memcpy(void *, void *, size_t);
void *memset(void *, int, size_t);
void *memchr(void *, int, size_t);
int memcmp(void *, void *, size_t);
void *memmove(void *, void *, size_t);

char *strchr( char *, int);
int strcoll( char *, char *);
size_t strcspn( char *, char *);
char *strncat(char *, char *, size_t);
int strncmp( char *, char *, size_t);
char *strncpy(char *, char *, size_t);
char *strpbrk( char *, char *);
char *strrchr( char *, int);
size_t strspn( char *, char *);
char *strstr( char *, char *);


char *strtok(char *, char *);


size_t strlen( char *);
char *strcpy(char *, char *);
int strcmp( char *, char *);
char *strcat(char *, char *);


size_t cstrlen(const char *cs);
char *cstrcpy(char *, const char *cs);
char *cstrncpy(char *, const char *cs, size_t);
int cstrcmp(const char *cs, char *);
char *cstrcat(char *, const char *);



int cstrncmp(const char *cs, char *i, int);

char *cstrstr(char *ramstr, const char *romstr);
char *cstrstrx(char *ramstr, const char *romstr);
void *cmemcpy(void *, const void *, size_t);
void *cmemchr(const void *, int, size_t);
int cmemcmp(const void *, void *, size_t);



#line 72 "C:/icc/include/string.h"

#line 45 "D:\ICC_H\CmmICC.H"
#line 1 "C:/icc/include/stdio.h"


#line 1 "C:/icc/include/stdarg.h"


typedef char *va_list;




#line 9 "C:/icc/include/stdarg.h"

char *_va_start(void *, int);

#line 13 "C:/icc/include/stdarg.h"




#line 4 "C:/icc/include/stdio.h"
#line 1 "C:/icc/include/_const.h"




#line 10 "C:/icc/include/_const.h"







#line 5 "C:/icc/include/stdio.h"

int getchar(void);
int putchar(char);
int puts( char *);
int printf( char *, ...);
int vprintf( char *, va_list va);
int sprintf(char *, char *, ...);
int vsprintf(char *, char *, va_list va);

int scanf( char *, ...);
int vscanf( char *, va_list va);
int sscanf(char *, char *, ...);
int vsscanf(char *, char *, va_list va);






int cprintf(const char *, ...);
int csprintf(char *, const char *, ...);



#line 46 "D:\ICC_H\CmmICC.H"
#line 1 "C:/icc/include/macros.h"






























#line 35 "C:/icc/include/macros.h"














void _StackCheck(void);
void _StackOverflowed(char);




#line 47 "D:\ICC_H\CmmICC.H"
#line 1 "C:/icc/include/eeprom.h"

#line 4 "C:/icc/include/eeprom.h"























int EEPROMwrite( int location, unsigned char);
unsigned char EEPROMread( int);

void EEPROMReadBytes(int addr, void *ptr, int size);
void EEPROMWriteBytes(int addr, void *ptr, int size);






#line 48 "D:\ICC_H\CmmICC.H"
#line 1 "D:\ICC_H\Software.H"

#line 20 "D:\ICC_H\Software.H"


#line 39 "D:\ICC_H\Software.H"




#line 1 "C:/icc/include/math.h"














































#line 49 "C:/icc/include/math.h"











#line 44 "D:\ICC_H\Software.H"
#line 1 "C:/icc/include/string.h"





































































#line 72 "C:/icc/include/string.h"

#line 45 "D:\ICC_H\Software.H"


typedef unsigned char	uchar;
typedef unsigned int	uint;
typedef unsigned long	ulong;
typedef signed char		schar;
typedef signed int		sint;
typedef signed long		slong;


typedef unsigned char	bool;
typedef unsigned char	uint8;
typedef unsigned int	uint16;
typedef unsigned long   uint32;
typedef signed  char	sint8;
typedef signed	int		sint16;
typedef signed	long	sint32;
typedef signed  char	int8;
typedef signed  int		int16;
typedef signed  long	int32;










































#line 114 "D:\ICC_H\Software.H"
uint8 dataElem[6];
void speaData(uint32 dat,sint8 len)
{
    uint8 i;
    uint32 j,y;
    for(i=0,j=1;i<len;i++)
    {
        y=dat/j;
        dataElem[i]=y%10;
        j*=10;
    }
}

#line 134 "D:\ICC_H\Software.H"


#line 143 "D:\ICC_H\Software.H"


#line 152 "D:\ICC_H\Software.H"


#line 161 "D:\ICC_H\Software.H"



#line 49 "D:\ICC_H\CmmICC.H"
#line 1 "D:\ICC_H\Hardware.H"

#line 20 "D:\ICC_H\Hardware.H"


#line 39 "D:\ICC_H\Hardware.H"




#line 1 "C:/icc/include/math.h"














































#line 49 "C:/icc/include/math.h"











#line 44 "D:\ICC_H\Hardware.H"
#line 1 "C:/icc/include/string.h"





































































#line 72 "C:/icc/include/string.h"

#line 45 "D:\ICC_H\Hardware.H"
#line 1 "C:/icc/include/stdio.h"




























#line 46 "D:\ICC_H\Hardware.H"
#line 1 "C:/icc/include/macros.h"






























#line 35 "C:/icc/include/macros.h"




















#line 47 "D:\ICC_H\Hardware.H"
#line 1 "C:/icc/include/eeprom.h"

#line 4 "C:/icc/include/eeprom.h"


































#line 48 "D:\ICC_H\Hardware.H"







#line 1 "D:\ICC_H\I2C.H"

#line 20 "D:\ICC_H\I2C.H"


#line 39 "D:\ICC_H\I2C.H"














































#line 88 "D:\ICC_H\I2C.H"




#line 94 "D:\ICC_H\I2C.H"
























#line 125 "D:\ICC_H\I2C.H"
bool I2C_Start()
{
((*(volatile unsigned char *)0x74)=(1<< 7)|(1<< 5)|(1<< 2));
{while(!((*(volatile unsigned char *)0x74)&(1<< 7)));};
	if(((*(volatile unsigned char *)0x71)&0xf8)!= 0x08 )
		return 0;
	return 1;
}

#line 141 "D:\ICC_H\I2C.H"
bool I2C_Restart()
{
((*(volatile unsigned char *)0x74)=(1<< 7)|(1<< 5)|(1<< 2));
{while(!((*(volatile unsigned char *)0x74)&(1<< 7)));};
	if(((*(volatile unsigned char *)0x71)&0xf8)!= 0x10 )
		return 0;
	return 1;
}

#line 157 "D:\ICC_H\I2C.H"
bool I2C_SendWrDAdr(uint8 wrDAdr)
{
{(*(volatile unsigned char *)0x73)=(wrDAdr);(*(volatile unsigned char *)0x74)=(1<< 7)|(1<< 2);};
{while(!((*(volatile unsigned char *)0x74)&(1<< 7)));};
	if(((*(volatile unsigned char *)0x71)&0xf8)!= 0x18 )
		return 0;
	return 1;
}

#line 173 "D:\ICC_H\I2C.H"
bool I2C_SendWrDAdr_(uint16 wrDAdr)
{
	if( wrDAdr&0xF000 == 0xF000 )
		if( I2C_SendWrDAdr( (uint8)wrDAdr>>8 )== 0 )
			return 0;
	if( I2C_SendWrDAdr( (uint8)wrDAdr )== 0 )
		return 0;
	return 1;
}

#line 190 "D:\ICC_H\I2C.H"
bool I2C_SendRdDAdr(uint8 rdDAdr)
{
{(*(volatile unsigned char *)0x73)=(rdDAdr);(*(volatile unsigned char *)0x74)=(1<< 7)|(1<< 2);};
{while(!((*(volatile unsigned char *)0x74)&(1<< 7)));};
	if(((*(volatile unsigned char *)0x71)&0xf8)!= 0x40 )
		return 0;
	return 1;
}

#line 206 "D:\ICC_H\I2C.H"
bool I2C_SendRdDAdr_(uint8 rdDAdr)
{
	if( rdDAdr&0xF000 == 0xF000 )
		if( I2C_SendWrDAdr( (uint8)rdDAdr>>8 )== 0 )
			return 0;
	if( I2C_SendWrDAdr( (uint8)rdDAdr )== 0 )
		return 0;
	return 1;
}

#line 223 "D:\ICC_H\I2C.H"
bool I2C_SendDat(uint8 configDat)
{
{(*(volatile unsigned char *)0x73)=(configDat);(*(volatile unsigned char *)0x74)=(1<< 7)|(1<< 2);};
{while(!((*(volatile unsigned char *)0x74)&(1<< 7)));};
	if(((*(volatile unsigned char *)0x71)&0xf8)!= 0x28 )
		return 0;
	return 1;
}

#line 239 "D:\ICC_H\I2C.H"
bool I2C_RcvNAckDat(uint8 *pRdDat)
{
((*(volatile unsigned char *)0x74)=(1<< 7)|(1<< 2));
{while(!((*(volatile unsigned char *)0x74)&(1<< 7)));};
	if(((*(volatile unsigned char *)0x71)&0xf8)!= 0x58 )
		return 0;
	*pRdDat=(*(volatile unsigned char *)0x73);
	return 1;
}

#line 256 "D:\ICC_H\I2C.H"
bool I2C_RcvAckDat(uint8 *pRdDat)
{
((*(volatile unsigned char *)0x74)=(1<< 7)|(1<< 2)|(1<< 6));
{while(!((*(volatile unsigned char *)0x74)&(1<< 7)));};
	if(((*(volatile unsigned char *)0x71)&0xf8)!= 0x50 )
		return 0;
	*pRdDat=(*(volatile unsigned char *)0x73);
	return 1;
}

#line 275 "D:\ICC_H\I2C.H"
bool I2C_Write(uint16 wrDAdr,uint8 wordAdr,uint8 dat)
{
	if( I2C_Start()== 0 )
		return 0;

	if( I2C_SendWrDAdr_(wrDAdr)== 0 )
		return 0;

	if( I2C_SendDat(wordAdr)== 0 )
		return 0;

	if( I2C_SendDat(dat)== 0 )
		return 0;

((*(volatile unsigned char *)0x74)=(1<< 7)|(1<< 4)|(1<< 2));

	return 1;
}

#line 304 "D:\ICC_H\I2C.H"






#line 320 "D:\ICC_H\I2C.H"
bool I2C_Read(uint16 wrDAdr,uint8 wordAdr,
			  uint8 rdDAdr,uint8 *pRdDat)
{
	if( I2C_Start()== 0 )
		return 0;

	if( I2C_SendWrDAdr_(wrDAdr)== 0 )
		return 0;

	if( I2C_SendDat(wordAdr)== 0 )
		return 0;

	if( I2C_Restart()== 0 )
		return 0;

	if( I2C_SendRdDAdr(rdDAdr)== 0 )
		return 0;

	if( I2C_RcvNAckDat(pRdDat)== 0 )
		return 0;

((*(volatile unsigned char *)0x74)=(1<< 7)|(1<< 4)|(1<< 2));

	return 1;
}

#line 357 "D:\ICC_H\I2C.H"
bool I2C_Read_(uint16 wrDAdr,uint8 wordAdr,
			   uint8 rdDAdr,uint8 *pRdDat,uint8 num)
{
 	uint8 i;

	if( I2C_Start()== 0 )
		return 0;

	if( I2C_SendWrDAdr_(wrDAdr)== 0 )
		return 0;

	if( I2C_SendDat(wordAdr)== 0 )
		return 0;

	if( I2C_Restart()== 0 )
		return 0;

	if( I2C_SendRdDAdr(rdDAdr)== 0 )
		return 0;

	for(i=0;i<num-1;i++)
		if( I2C_RcvAckDat(pRdDat+i)== 0 )
			return 0;

	if( I2C_RcvNAckDat(pRdDat+i)== 0 )
			return 0;

((*(volatile unsigned char *)0x74)=(1<< 7)|(1<< 4)|(1<< 2));

	return 1;
}


#line 56 "D:\ICC_H\Hardware.H"









































#line 104 "D:\ICC_H\Hardware.H"
void delay50us(sint16 t)
{
    uint8 j;
    for(;t>0;t--)
        for(j=0;j<70;j++)
            ;
}

#line 119 "D:\ICC_H\Hardware.H"
void delay50ms(sint16 t)
{
	uint16 i;
	for(;t>0;t--)
		for(i=0;i<52642;i++)
			;
}



#line 50 "D:\ICC_H\CmmICC.H"


#line 48 "E:\wsŒ‚√Ù ¶–÷≥Ã–Ú\DVK500\stk128+\PS2PC~1\PS2SimpleHard\PS2SimpleHard.C"
#line 1 "D:\ICC_H\PS2.H"

#line 20 "D:\ICC_H\PS2.H"


#line 39 "D:\ICC_H\PS2.H"




#line 1 "D:\ICC_H\CmmICC.H"

#line 20 "D:\ICC_H\CmmICC.H"


#line 39 "D:\ICC_H\CmmICC.H"













#line 44 "D:\ICC_H\PS2.H"


#line 56 "D:\ICC_H\PS2.H"

uint8 const unshifted[][2] =
{
	0x1C, 'a',
	0x32, 'b',
	0x21, 'c',
	0x23, 'd',
	0x24, 'e',
	0x2B, 'f',
	0x34, 'g',
	0x33, 'h',
	0x43, 'i',
	0x3B, 'j',
	0x42, 'k',
	0x4B, 'l',
	0x3A, 'm',
	0x31, 'n',
	0x44, 'o',
	0x4D, 'p',
	0x15, 'q',
	0x2D, 'r',
	0x1B, 's',
	0x2C, 't',
	0x3C, 'u',
	0x2A, 'v',
	0x1D, 'w',
	0x22, 'x',
	0x35, 'y',
	0x1A, 'z',
	0x45, '0',
	0x16, '1',
	0x1E, '2',
	0x26, '3',
	0x25, '4',
	0x2E, '5',
	0x36, '6',
	0x3D, '7',
	0x3E, '8',
	0x46, '9',
	0x0E, '`',
	0x4E, '-',
	0x55, '=',
	0x5D, '\\',
	0x29, ' ',
	0x54, '[',
	0x5B, ']',
	0x4C, ';',
	0x52, '\'',
	0x41, ',',
	0x49, '.',
	0x4A, '/',
	0x71, '.',
	0x70, '0',
	0x69, '1',
	0x72, '2',
	0x7A, '3',
	0x6B, '4',
	0x73, '5',
	0x74, '6',
	0x6C, '7',
	0x75, '8',
	0x7D, '9',
};

uint8 const shifted[][2] =
{
	0x1C, 'A',
	0x32, 'B',
	0x21, 'C',
	0x23, 'D',
	0x24, 'E',
	0x2B, 'F',
	0x34, 'G',
	0x33, 'H',
	0x43, 'I',
	0x3B, 'J',
	0x42, 'K',
	0x4B, 'L',
	0x3A, 'M',
	0x31, 'N',
	0x44, 'O',
	0x4D, 'P',
	0x15, 'Q',
	0x2D, 'R',
	0x1B, 'S',
	0x2C, 'T',
	0x3C, 'U',
	0x2A, 'V',
	0x1D, 'W',
	0x22, 'X',
	0x35, 'Y',
	0x1A, 'Z',
	0x45, '0',
	0x16, '1',
	0x1E, '2',
	0x26, '3',
	0x25, '4',
	0x2E, '5',
	0x36, '6',
	0x3D, '7',
	0x3E, '8',
	0x46, '9',
	0x0E, '~',
	0x4E, '_',
	0x55, '+',
	0x5D, '|',
	0x29, ' ',
	0x54, '{',
	0x5B, '}',
	0x4C, ':',
	0x52, '"',
	0x41, '<',
	0x49, '>',
	0x4A, '?',
	0x71, '.',
	0x70, '0',
	0x69, '1',
	0x72, '2',
	0x7A, '3',
	0x6B, '4',
	0x73, '5',
	0x74, '6',
	0x6C, '7',
	0x75, '8',
	0x7D, '9',
};


#line 49 "E:\wsŒ‚√Ù ¶–÷≥Ã–Ú\DVK500\stk128+\PS2PC~1\PS2SimpleHard\PS2SimpleHard.C"


















bool rcvF = 0;
uint8 keyVal;


#line 78 "E:\wsŒ‚√Ù ¶–÷≥Ã–Ú\DVK500\stk128+\PS2PC~1\PS2SimpleHard\PS2SimpleHard.C"
#pragma interrupt_handler int1_isr:3
void int1_isr(void)
{
    static uint8 rcvBits = 0;
	if((rcvBits>0) && (rcvBits<9))
	{
		keyVal=keyVal>>1;


		if(((*(volatile unsigned char *)0x30) & (1<< 4) ))
	 		keyVal=keyVal|0x80;
	}
	rcvBits++;
	while(!((*(volatile unsigned char *)0x30) & (1<< 3) ));

	if(rcvBits>10)
	{
		rcvBits=0;
		rcvF=1;
	}
}

#line 107 "E:\wsŒ‚√Ù ¶–÷≥Ã–Ú\DVK500\stk128+\PS2PC~1\PS2SimpleHard\PS2SimpleHard.C"
void keyHandle(uint8 val)
{
	uint8 i;
	static bool isUp=0;
	static bool shift=0;
	rcvF = 0;
(*(volatile unsigned char *)0x3B) = val;
	if(!isUp)
	{
		switch(val)
		{
			case 0xF0 :
				isUp = 1;
				break;
			case 0x12 :
				shift = 1;
				break;
			case 0x59 :
				shift = 1;
				break;
			default:
				if(!shift)
				{

#line 135 "E:\wsŒ‚√Ù ¶–÷≥Ã–Ú\DVK500\stk128+\PS2PC~1\PS2SimpleHard\PS2SimpleHard.C"
					for(i=0; unshifted[i][0]!=val && i<59; i++)
						;
					if(unshifted[i][0] == val)
						;

				}
				else
				{

#line 148 "E:\wsŒ‚√Ù ¶–÷≥Ã–Ú\DVK500\stk128+\PS2PC~1\PS2SimpleHard\PS2SimpleHard.C"
					for(i=0; shifted[i][0]!=val && i<59; i++)
						;
					if(shifted[i][0] == val)
(*(volatile unsigned char *)0x38) = val;
				}
		}
	}
	else
	{
		isUp=0;
		switch(val)
		{
			case 0x12 :
				shift = 0;
				break;
			case 0x59 :
				shift = 0;
				break;
		}
	}
}

#line 177 "E:\wsŒ‚√Ù ¶–÷≥Ã–Ú\DVK500\stk128+\PS2PC~1\PS2SimpleHard\PS2SimpleHard.C"
void int1_init()
{
((*(volatile unsigned char *)0x31) &= ~(1<< 3) );
((*(volatile unsigned char *)0x32) |= (1<< 3) );
(*(volatile unsigned char *)0x55) |= 0b11110011;
	GICR0  |= 0b10000000;
 asm("sei");
}

#line 193 "E:\wsŒ‚√Ù ¶–÷≥Ã–Ú\DVK500\stk128+\PS2PC~1\PS2SimpleHard\PS2SimpleHard.C"
void main(void)
{
(*(volatile unsigned char *)0x3A) = 0XFF;
(*(volatile unsigned char *)0x37) = 0XFF;
((*(volatile unsigned char *)0x31) &= ~(1<< 4) );
	int1_init();
	while(1)
	{
		if(rcvF)
			keyHandle(keyVal);
	}
}

