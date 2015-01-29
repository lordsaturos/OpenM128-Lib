CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega128  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x8c.0x20000 -dram_end:0x10ff -bdata:0x100.0x10ff -dhwstk_size:16 -beeprom:1.4096 -fihx_coff -S2
FILES = 74LS164.o 

74LS164:	$(FILES)
	$(CC) -o 74LS164 $(LFLAGS) @74LS164.lk   -lcatmega
74LS164.o: C:/icc/include/iom128v.h D:\ICC_H\CmmICC.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/_const.h C:/icc/include/stdio.h C:/icc/include/stdarg.h C:/icc/include/_const.h C:/icc/include/macros.h C:/icc/include/eeprom.h\
 D:\ICC_H\Software.H C:/icc/include/math.h C:/icc/include/string.h D:\ICC_H\Hardware.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/stdio.h C:/icc/include/macros.h C:/icc/include/eeprom.h D:\ICC_H\I2C.H D:\ICC_H\LCD12864_ST7920_.H\
 D:\ICC_H\CmmIcc.h
74LS164.o:	E:\吴泽备份\DVK501光盘内容\M128_E~1\74LS16~1\74LS164_LCD12864\74LS164.c
	$(CC) -c $(CFLAGS) E:\吴泽备份\DVK501光盘内容\M128_E~1\74LS16~1\74LS164_LCD12864\74LS164.c
