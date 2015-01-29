CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMega48  -l -g -Mavr_enhanced_small 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -bfunc_lit:0x34.0x1000 -dram_end:0x2ff -bdata:0x100.0x2ff -dhwstk_size:16 -beeprom:1.256 -fihx_coff -S2
FILES = Lcd1602PBPD.o 

Lcd1602:	$(FILES)
	$(CC) -o Lcd1602 $(LFLAGS) @Lcd1602.lk  
Lcd1602PBPD.o: C:/icc/include/iom48v.h D:\ICC_H\CmmICC.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/_const.h C:/icc/include/stdio.h C:/icc/include/stdarg.h C:/icc/include/_const.h C:/icc/include/macros.h C:/icc/include/eeprom.h\
 D:\ICC_H\Software.H C:/icc/include/math.h C:/icc/include/string.h D:\ICC_H\Hardware.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/stdio.h C:/icc/include/macros.h C:/icc/include/eeprom.h D:\ICC_H\I2C.H D:\ICC_H\LCD1602_.H\
 D:\ICC_H\CmmICC.H
Lcd1602PBPD.o:	E:\吴泽程序备份\DVK500\stk48+\LCD160~1\Lcd1602\Lcd1602PBPD.C
	$(CC) -c $(CFLAGS) E:\吴泽程序备份\DVK500\stk48+\LCD160~1\Lcd1602\Lcd1602PBPD.C
