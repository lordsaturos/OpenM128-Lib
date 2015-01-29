CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION=722 -DATMega128  -l -g -MLongJump -MHasMul -MEnhanced -Wf-use_elpm 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib\ -g -e:0x20000 -ucrtatmega.o -bfunc_lit:0x8c.0x20000 -dram_end:0x10ff -bdata:0x100.0x10ff -dhwstk_size:16 -beeprom:0.4096 -fihx_coff -S2
FILES = test.o 

TEST:	$(FILES)
	$(CC) -o TEST $(LFLAGS) @TEST.lk   -lcatm128
test.o: C:\icc\include\iom128v.h D:\ICC_H\LCD12864_ST7920_.H D:\ICC_H\CmmIcc.h C:\icc\include\math.h C:\icc\include\string.h C:\icc\include\_const.h C:\icc\include\stdio.h C:\icc\include\stdarg.h C:\icc\include\macros.h C:\icc\include\AVRdef.h C:\icc\include\eeprom.h D:\ICC_H\Software.H D:\ICC_H\Hardware.H D:\ICC_H\I2C.H
test.o:	..\..\..\M128_E~1\MAX232~1\MAX232_LCD12864\test.c
	$(CC) -c $(CFLAGS) ..\..\..\M128_E~1\MAX232~1\MAX232_LCD12864\test.c
