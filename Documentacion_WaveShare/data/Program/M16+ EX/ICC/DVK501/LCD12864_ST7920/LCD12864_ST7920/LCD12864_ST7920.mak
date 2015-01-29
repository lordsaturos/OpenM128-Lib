CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION=722 -DATMega16  -l -g -MLongJump -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = LCD12864_ST7920.o 

LCD12864_ST7920:	$(FILES)
	$(CC) -o LCD12864_ST7920 $(LFLAGS) @LCD12864_ST7920.lk   -lcatmega
LCD12864_ST7920.o: C:\icc\include\iom16v.h .\..\..\..\STK16_~1.0\LCD128~1\LCD12864_ST7920\LCD12864_ST7920.H D:\ICC_H\CmmIcc.h C:\icc\include\math.h C:\icc\include\string.h C:\icc\include\_const.h C:\icc\include\stdio.h C:\icc\include\stdarg.h C:\icc\include\macros.h C:\icc\include\AVRdef.h C:\icc\include\eeprom.h D:\ICC_H\Software.H D:\ICC_H\Hardware.H D:\ICC_H\I2C.H
LCD12864_ST7920.o:	..\..\..\STK16_~1.0\LCD128~1\LCD12864_ST7920\LCD12864_ST7920.C
	$(CC) -c $(CFLAGS) ..\..\..\STK16_~1.0\LCD128~1\LCD12864_ST7920\LCD12864_ST7920.C
