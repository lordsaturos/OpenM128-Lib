CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega162  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x70.0x4000 -dram_end:0x4ff -bdata:0x100.0x4ff -dhwstk_size:16 -beeprom:1.512 -fihx_coff -S2
FILES = test.o 

test:	$(FILES)
	$(CC) -o test $(LFLAGS) @test.lk   -lcatmega
test.o: C:/icc/include/iom162v.h D:\ICC_H\CmmICC.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/_const.h C:/icc/include/stdio.h C:/icc/include/stdarg.h C:/icc/include/_const.h C:/icc/include/macros.h C:/icc/include/eeprom.h\
 D:\ICC_H\Software.H C:/icc/include/math.h C:/icc/include/string.h D:\ICC_H\Hardware.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/stdio.h C:/icc/include/macros.h C:/icc/include/eeprom.h D:\ICC_H\LCD12864_ST7920_M48.H\
 D:\ICC_H\CmmIcc.h
test.o:	E:\DVK500光盘内容\STK162~1.0\MAX485~1\MAX485_LCD12864\test.c
	$(CC) -c $(CFLAGS) E:\DVK500光盘内容\STK162~1.0\MAX485~1\MAX485_LCD12864\test.c
