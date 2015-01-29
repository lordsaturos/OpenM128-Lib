CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA  -l -g -Mavr_enhanced -Wf-use_elpm 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x8c.0x20000 -dram_end:0x105f -bdata:0x100.0x105f -dhwstk_size:16 -beeprom:1.4096 -fihx_coff -S2
FILES = PCF8591.o 

PCF8591:	$(FILES)
	$(CC) -o PCF8591 $(LFLAGS) @PCF8591.lk   -lcatmega
PCF8591.o: C:/icc/include/iom128v.h D:\ICC_H\LCD12864_ST7920_.H D:\ICC_H\CmmIcc.h C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/_const.h C:/icc/include/stdio.h C:/icc/include/stdarg.h C:/icc/include/_const.h C:/icc/include/macros.h\
 C:/icc/include/eeprom.h D:\ICC_H\Software.H C:/icc/include/math.h C:/icc/include/string.h D:\ICC_H\Hardware.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/stdio.h C:/icc/include/macros.h C:/icc/include/eeprom.h D:\ICC_H\I2C.H\
 D:\ICC_H\PCF8591.H D:\ICC_H\CmmICC.H D:\ICC_H\I2C.H
PCF8591.o:	E:\DVK500光盘内容\stk128+\PCF859~1\PCF8591_LCD12864\PCF8591.C
	$(CC) -c $(CFLAGS) E:\DVK500光盘内容\stk128+\PCF859~1\PCF8591_LCD12864\PCF8591.C
