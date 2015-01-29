CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega162  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x70.0x4000 -dram_end:0x4ff -bdata:0x100.0x4ff -dhwstk_size:16 -beeprom:1.512 -fihx_coff -S2
FILES = LCD12864_ST7920.o 

LCD12864_ST7920:	$(FILES)
	$(CC) -o LCD12864_ST7920 $(LFLAGS) @LCD12864_ST7920.lk   -lcatmega
LCD12864_ST7920.o: C:/icc/include/iom16v.h D:\ICC_H\LCD12864_ST7920.H D:\ICC_H\CmmIcc.h C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/_const.h C:/icc/include/stdio.h C:/icc/include/stdarg.h C:/icc/include/_const.h\
 C:/icc/include/macros.h C:/icc/include/eeprom.h D:\ICC_H\Software.H C:/icc/include/math.h C:/icc/include/string.h D:\ICC_H\Hardware.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/stdio.h C:/icc/include/macros.h\
 C:/icc/include/eeprom.h D:\ICC_H\I2C.H
LCD12864_ST7920.o:	E:\������򱸷�\��ֲ����\STK162~1.0\LCD128~1\LCD12864_ST7920\LCD12864_ST7920.C
	$(CC) -c $(CFLAGS) E:\������򱸷�\��ֲ����\STK162~1.0\LCD128~1\LCD12864_ST7920\LCD12864_ST7920.C
