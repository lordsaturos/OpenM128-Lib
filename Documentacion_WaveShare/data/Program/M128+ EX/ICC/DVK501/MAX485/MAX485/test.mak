CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION=722 -DATMega8535  -l -g -MHasMul -MEnhanced -Wa-W 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib\ -g -e:0x2000 -Wl-W -bfunc_lit:0x2a.0x2000 -dram_end:0x25f -bdata:0x60.0x25f -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = test.o 

TEST:	$(FILES)
	$(CC) -o TEST $(LFLAGS) @TEST.lk  
test.o: C:\icc\include\iom128v.h D:\ICC_H\CmmICC.H C:\icc\include\math.h C:\icc\include\string.h C:\icc\include\_const.h C:\icc\include\stdio.h C:\icc\include\stdarg.h C:\icc\include\macros.h C:\icc\include\AVRdef.h C:\icc\include\eeprom.h D:\ICC_H\Software.H D:\ICC_H\Hardware.H D:\ICC_H\I2C.H
test.o:	..\..\..\M128_E~1\MAX485~1\MAX485\test.c
	$(CC) -c $(CFLAGS) ..\..\..\M128_E~1\MAX485~1\MAX485\test.c
