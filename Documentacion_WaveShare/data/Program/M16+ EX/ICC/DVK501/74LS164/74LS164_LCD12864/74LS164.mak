CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION=722 -DATMega16  -l -g -MLongJump -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = 74LS164.o 

74LS164:	$(FILES)
	$(CC) -o 74LS164 $(LFLAGS) @74LS164.lk   -lcatmega
74LS164.o: C:\icc\include\iom16v.h D:\ICC_H\CmmICC.H C:\icc\include\math.h C:\icc\include\string.h C:\icc\include\_const.h C:\icc\include\stdio.h C:\icc\include\stdarg.h C:\icc\include\macros.h C:\icc\include\AVRdef.h C:\icc\include\eeprom.h D:\ICC_H\Software.H D:\ICC_H\Hardware.H D:\ICC_H\I2C.H D:\ICC_H\LCD12864_ST7920.H D:\ICC_H\CmmIcc.h
74LS164.o:	..\..\..\STK16_~1.0\74LS16~2\74LS164_LCD12864\74LS164.c
	$(CC) -c $(CFLAGS) ..\..\..\STK16_~1.0\74LS16~2\74LS164_LCD12864\74LS164.c
