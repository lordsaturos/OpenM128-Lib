CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include -e -D__ICC_VERSION=722 -DATMega162  -l -g -MLongJump -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x70.0x4000 -dram_end:0x4ff -bdata:0x100.0x4ff -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = DS18B20.o 

DS18B20:	$(FILES)
	$(CC) -o DS18B20 $(LFLAGS) @DS18B20.lk   -lcatmega
DS18B20.o: C:\icc\include\iom162v.h D:\ICC_H\CmmICC.H C:\icc\include\math.h C:\icc\include\string.h C:\icc\include\_const.h C:\icc\include\stdio.h C:\icc\include\stdarg.h C:\icc\include\macros.h C:\icc\include\AVRdef.h C:\icc\include\eeprom.h D:\ICC_H\Software.H D:\ICC_H\Hardware.H D:\ICC_H\LCD12864_ST7920_M48.H D:\ICC_H\CmmIcc.h D:\ICC_H\DS18B20_DVK501.H D:\ICC_H\onewirefords18b20.H
DS18B20.o:	..\..\..\STK162~1.0\DS18B20_温度测量\DS18B20_LCD12864\DS18B20.C
	$(CC) -c $(CFLAGS) ..\..\..\STK162~1.0\DS18B20_温度测量\DS18B20_LCD12864\DS18B20.C
