CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION=722 -DATMega16  -l -g -MLongJump -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = PS2SimpleSoft.o 

PS2SIMPLESOFT:	$(FILES)
	$(CC) -o PS2SIMPLESOFT $(LFLAGS) @PS2SIMPLESOFT.lk   -lcatmega
PS2SimpleSoft.o: C:\icc\include\iom16v.h D:\ICC_H\CmmICC.H C:\icc\include\math.h C:\icc\include\string.h C:\icc\include\_const.h C:\icc\include\stdio.h C:\icc\include\stdarg.h C:\icc\include\macros.h C:\icc\include\AVRdef.h C:\icc\include\eeprom.h D:\ICC_H\Software.H D:\ICC_H\Hardware.H D:\ICC_H\I2C.H D:\ICC_H\PS2.H D:\ICC_H\LCD12864_ST7920.H D:\ICC_H\CmmIcc.h
PS2SimpleSoft.o:	..\..\..\STK16_~1.0\PS2PC~1\PS2SimpleSoft_LCD12864\PS2SimpleSoft.c
	$(CC) -c $(CFLAGS) ..\..\..\STK16_~1.0\PS2PC~1\PS2SimpleSoft_LCD12864\PS2SimpleSoft.c
