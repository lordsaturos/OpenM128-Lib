CC = iccavr
CFLAGS =  -IC:\icc\include -e -DATMEGA  -l -g -Mavr_enhanced -Wf-use_elpm 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib -g -ucrtatmega.o -bfunc_lit:0x8c.0x20000 -dram_end:0x105f -bdata:0x100.0x105f -dhwstk_size:16 -beeprom:1.4096 -fihx_coff -S2
FILES = AT45DB161.o 

AT45DB161:	$(FILES)
	$(CC) -o AT45DB161 $(LFLAGS) @AT45DB161.lk   -lcatmega
AT45DB161.o: C:/icc/include/iom128v.h D:\ICC_H\CmmICC.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/_const.h C:/icc/include/stdio.h C:/icc/include/stdarg.h C:/icc/include/_const.h C:/icc/include/macros.h C:/icc/include/eeprom.h\
 D:\ICC_H\Software.H C:/icc/include/math.h C:/icc/include/string.h D:\ICC_H\Hardware.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/stdio.h C:/icc/include/macros.h C:/icc/include/eeprom.h D:\ICC_H\I2C.H D:\ICC_H\AT45DB161.H
AT45DB161.o:	E:\吴泽备份\DVK501光盘内容\M128_E~1\AT45DB~1\AT45DB161\AT45DB161.C
	$(CC) -c $(CFLAGS) E:\吴泽备份\DVK501光盘内容\M128_E~1\AT45DB~1\AT45DB161\AT45DB161.C
