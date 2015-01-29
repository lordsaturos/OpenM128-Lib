CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION=722 -DATMega128  -l -g -MLongJump -MHasMul -MEnhanced -Wf-use_elpm 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib\ -g -e:0x20000 -ucrtatmega.o -bfunc_lit:0x8c.0x20000 -dram_end:0x10ff -bdata:0x100.0x10ff -dhwstk_size:16 -beeprom:0.4096 -fihx_coff -S2
FILES = PCF8591.o 

PCF8591:	$(FILES)
	$(CC) -o PCF8591 $(LFLAGS) @PCF8591.lk   -lcatm128
PCF8591.o: C:\icc\include\iom128v.h D:\ICC_H\PCF8591.H D:\ICC_H\CmmICC.H C:\icc\include\math.h C:\icc\include\string.h C:\icc\include\_const.h C:\icc\include\stdio.h C:\icc\include\stdarg.h C:\icc\include\macros.h C:\icc\include\AVRdef.h C:\icc\include\eeprom.h D:\ICC_H\Software.H D:\ICC_H\Hardware.H D:\ICC_H\I2C.H
PCF8591.o:	..\..\..\M128_E~1\PCF859~1\PCF8591\PCF8591.C
	$(CC) -c $(CFLAGS) ..\..\..\M128_E~1\PCF859~1\PCF8591\PCF8591.C
