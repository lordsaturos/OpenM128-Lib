CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include -e -D__ICC_VERSION=722 -DATMega16  -l -g -MLongJump -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = PCF8574.o 

PCF8574:	$(FILES)
	$(CC) -o PCF8574 $(LFLAGS) @PCF8574.lk   -lcatmega
PCF8574.o: C:\icc\include\iom16v.h C:\icc\include\macros.h C:\icc\include\AVRdef.h D:\ICC_H\CmmICC.H C:\icc\include\math.h C:\icc\include\string.h C:\icc\include\_const.h C:\icc\include\stdio.h C:\icc\include\stdarg.h C:\icc\include\eeprom.h D:\ICC_H\Software.H D:\ICC_H\Hardware.H D:\ICC_H\I2C.H D:\ICC_H\PCF8574.H
PCF8574.o:	..\..\..\STK16_~1.0\PCF8574_IO扩展设备\PCF8574\PCF8574.C
	$(CC) -c $(CFLAGS) ..\..\..\STK16_~1.0\PCF8574_IO扩展设备\PCF8574\PCF8574.C
