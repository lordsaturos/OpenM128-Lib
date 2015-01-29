CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION=722 -D_EE_EXTIO -DATtiny88  -l -g -MLongJump -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x5c.0x4000 -dram_end:0x4ff -bdata:0x100.0x4ff -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = 74LS164.o 

74LS164:	$(FILES)
	$(CC) -o 74LS164 $(LFLAGS) @74LS164.lk   -lcatmega
74LS164.o: C:\icc\include\iom169v.h D:\ICC_H\CmmICC.H C:\icc\include\math.h C:\icc\include\string.h C:\icc\include\_const.h C:\icc\include\stdio.h C:\icc\include\stdarg.h C:\icc\include\macros.h C:\icc\include\AVRdef.h C:\icc\include\eeprom.h D:\ICC_H\Software.H D:\ICC_H\Hardware.H
74LS164.o:	..\..\..\M169_E~1\74LS16~2\74LS164\74LS164.c
	$(CC) -c $(CFLAGS) ..\..\..\M169_E~1\74LS16~2\74LS164\74LS164.c
