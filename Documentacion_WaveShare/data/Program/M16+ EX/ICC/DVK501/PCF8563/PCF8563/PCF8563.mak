CC = iccavr
LIB = ilibw
CFLAGS =  -Ic:\icc\include\ -e -D__ICC_VERSION=722 -DATMega16  -l -g -MLongJump -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -Lc:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = PCF8563.o 

PCF8563:	$(FILES)
	$(CC) -o PCF8563 $(LFLAGS) @PCF8563.lk   -lcatmega
PCF8563.o: c:\icc\include\iom16v.h D:\ICC_H\PCF8563.H D:\ICC_H\CmmICC.H c:\icc\include\math.h c:\icc\include\string.h c:\icc\include\_const.h c:\icc\include\stdio.h c:\icc\include\stdarg.h c:\icc\include\macros.h c:\icc\include\AVRdef.h c:\icc\include\eeprom.h D:\ICC_H\Software.H D:\ICC_H\Hardware.H D:\ICC_H\I2C.H
PCF8563.o:	..\..\..\STK16_~1.0\PCF856~1\PCF8563\PCF8563.C
	$(CC) -c $(CFLAGS) ..\..\..\STK16_~1.0\PCF856~1\PCF8563\PCF8563.C
