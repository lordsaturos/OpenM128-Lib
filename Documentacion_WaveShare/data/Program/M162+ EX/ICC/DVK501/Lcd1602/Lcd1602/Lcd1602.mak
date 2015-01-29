CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega162  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x70.0x4000 -dram_end:0x4ff -bdata:0x100.0x4ff -dhwstk_size:16 -beeprom:1.512 -fihx_coff -S2
FILES = Lcd1602PBPD.o 

Lcd1602:	$(FILES)
	$(CC) -o Lcd1602 $(LFLAGS) @Lcd1602.lk   -lcatmega
Lcd1602PBPD.o: C:/icc/include/iom162v.h D:\ICC_H\CmmICC.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/_const.h C:/icc/include/stdio.h C:/icc/include/stdarg.h C:/icc/include/_const.h C:/icc/include/macros.h C:/icc/include/eeprom.h\
 D:\ICC_H\Software.H C:/icc/include/math.h C:/icc/include/string.h D:\ICC_H\Hardware.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/stdio.h C:/icc/include/macros.h C:/icc/include/eeprom.h D:\ICC_H\LCD1602_.H D:\ICC_H\CmmICC.H
Lcd1602PBPD.o:	E:\吴泽程序备份\移植程序\STK162~1.0\LCD160~1\Lcd1602\Lcd1602PBPD.C
	$(CC) -c $(CFLAGS) E:\吴泽程序备份\移植程序\STK162~1.0\LCD160~1\Lcd1602\Lcd1602PBPD.C
