CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION=722 -DATMega162  -l -g -MLongJump -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x70.0x4000 -dram_end:0x4ff -bdata:0x100.0x4ff -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = 74LS165.o 

74LS165:	$(FILES)
	$(CC) -o 74LS165 $(LFLAGS) @74LS165.lk   -lcatmega
74LS165.o: C:\icc\include\iom162v.h D:\ICC_H\CmmICC.H C:\icc\include\math.h C:\icc\include\string.h C:\icc\include\_const.h C:\icc\include\stdio.h C:\icc\include\stdarg.h C:\icc\include\macros.h C:\icc\include\AVRdef.h C:\icc\include\eeprom.h D:\ICC_H\Software.H D:\ICC_H\Hardware.H
74LS165.o:	..\..\..\STK162~1.0\74LS16~1\74LS165\74LS165.c
	$(CC) -c $(CFLAGS) ..\..\..\STK162~1.0\74LS16~1\74LS165\74LS165.c
