CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include -e -D__ICC_VERSION=722 -DATMega128  -l -g -MLongJump -MHasMul -MEnhanced -Wf-use_elpm 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib -g -e:0x20000 -ucrtatmega.o -bfunc_lit:0x8c.0x20000 -dram_end:0x10ff -bdata:0x100.0x10ff -dhwstk_size:30 -beeprom:0.4096 -fihx_coff -S2
FILES = MatrixKey.o 

MATRIXKEY:	$(FILES)
	$(CC) -o MATRIXKEY $(LFLAGS) @MATRIXKEY.lk   -lcatm128
MatrixKey.o: C:\icc\include\iom128v.H D:\ICC_H\CmmICC.H C:\icc\include\math.h C:\icc\include\string.h C:\icc\include\_const.h C:\icc\include\stdio.h C:\icc\include\stdarg.h C:\icc\include\macros.h C:\icc\include\AVRdef.h C:\icc\include\eeprom.h D:\ICC_H\Software.H D:\ICC_H\Hardware.H D:\ICC_H\I2C.H D:\ICC_H\LCD12864_ST7920_.H D:\ICC_H\CmmIcc.h
MatrixKey.o:	..\..\..\M128_E~1\MATRIX~1\MatrixKeyBoard_LCD12864\MatrixKey.c
	$(CC) -c $(CFLAGS) ..\..\..\M128_E~1\MATRIX~1\MatrixKeyBoard_LCD12864\MatrixKey.c
