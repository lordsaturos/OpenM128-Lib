CC = iccavr
CFLAGS =  -IC:\icc\include -e -DATMEGA -DATMega128  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib -g -ucrtatmega.o -bfunc_lit:0x8c.0x20000 -dram_end:0x10ff -bdata:0x100.0x10ff -dhwstk_size:30 -beeprom:1.4096 -fihx_coff -S2
FILES = MatrixKey.o 

MatrixKey:	$(FILES)
	$(CC) -o MatrixKey $(LFLAGS) @MatrixKey.lk   -lcatmega
MatrixKey.o: C:/icc/include/iom128v.H D:\ICC_H\CmmICC.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/_const.h C:/icc/include/stdio.h C:/icc/include/stdarg.h C:/icc/include/_const.h C:/icc/include/macros.h C:/icc/include/eeprom.h\
 D:\ICC_H\Software.H C:/icc/include/math.h C:/icc/include/string.h D:\ICC_H\Hardware.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/stdio.h C:/icc/include/macros.h C:/icc/include/eeprom.h D:\ICC_H\I2C.H
MatrixKey.o:	E:\吴泽程序备份\DVK500\stk128+\MATRIX~1\MatrixKeyBoard\MatrixKey.c
	$(CC) -c $(CFLAGS) E:\吴泽程序备份\DVK500\stk128+\MATRIX~1\MatrixKeyBoard\MatrixKey.c
