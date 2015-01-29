CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include -e -D__ICC_VERSION=722 -D_EE_EXTIO -DATMega48  -l -g -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib -g -e:0x1000 -bfunc_lit:0x34.0x1000 -dram_end:0x2ff -bdata:0x100.0x2ff -dhwstk_size:16 -beeprom:0.256 -fihx_coff -S2
FILES = AT45DB161.o 

AT45DB161:	$(FILES)
	$(CC) -o AT45DB161 $(LFLAGS) @AT45DB161.lk  
AT45DB161.o: C:\icc\include\iom16v.h C:\icc\include\macros.h C:\icc\include\AVRdef.h D:\ICC_H\CmmICC.H C:\icc\include\math.h C:\icc\include\string.h C:\icc\include\_const.h C:\icc\include\stdio.h C:\icc\include\stdarg.h C:\icc\include\eeprom.h D:\ICC_H\Software.H D:\ICC_H\Hardware.H D:\ICC_H\I2C.H D:\ICC_H\AT45DB161.H D:\ICC_H\LCD12864_ST7920.H D:\ICC_H\CmmIcc.h
AT45DB161.o:	..\..\..\STK16_~1.0\AT45DB~1\AT45DB161_LCD12864\AT45DB161.C
	$(CC) -c $(CFLAGS) ..\..\..\STK16_~1.0\AT45DB~1\AT45DB161_LCD12864\AT45DB161.C
