CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA  -l -g -Mavr_enhanced -Wf-use_elpm 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x8c.0x20000 -dram_end:0x105f -bdata:0x100.0x105f -dhwstk_size:16 -beeprom:1.4096 -fihx_coff -S2
FILES = AT24CXX.o 

AT24CXX:	$(FILES)
	$(CC) -o AT24CXX $(LFLAGS) @AT24CXX.lk   -lcatmega
AT24CXX.o: C:/icc/include/iom128v.h D:\ICC_H\AT24CXX.H D:\ICC_H\CmmICC.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/_const.h C:/icc/include/stdio.h C:/icc/include/stdarg.h C:/icc/include/_const.h C:/icc/include/macros.h\
 C:/icc/include/eeprom.h D:\ICC_H\Software.H C:/icc/include/math.h C:/icc/include/string.h D:\ICC_H\Hardware.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/stdio.h C:/icc/include/macros.h C:/icc/include/eeprom.h D:\ICC_H\I2C.H\
 D:\ICC_H\I2C.H
AT24CXX.o:	E:\吴泽备份\DVK501光盘内容\M128_E~1\AT24CX~1\AT24CXX\AT24CXX.C
	$(CC) -c $(CFLAGS) E:\吴泽备份\DVK501光盘内容\M128_E~1\AT24CX~1\AT24CXX\AT24CXX.C
