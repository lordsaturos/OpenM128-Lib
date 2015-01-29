CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION=722 -DATMega128  -l -g -MLongJump -MHasMul -MEnhanced -Wf-use_elpm 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib\ -g -e:0x20000 -ucrtatmega.o -bfunc_lit:0x8c.0x20000 -dram_end:0x10ff -bdata:0x100.0x10ff -dhwstk_size:16 -beeprom:0.4096 -fihx_coff -S2
FILES = WDT.o 

WDT:	$(FILES)
	$(CC) -o WDT $(LFLAGS) @WDT.lk   -lcatm128
WDT.o: C:\icc\include\iom128v.h .\..\..\..\..\..\ICC_H\CmmICC.H C:\icc\include\math.h C:\icc\include\string.h C:\icc\include\_const.h C:\icc\include\stdio.h C:\icc\include\stdarg.h C:\icc\include\macros.h C:\icc\include\AVRdef.h C:\icc\include\eeprom.h .\..\..\..\..\..\ICC_H\Software.H .\..\..\..\..\..\ICC_H\Hardware.H .\..\..\..\..\..\ICC_H\I2C.H
WDT.o:	..\..\..\..\KERNEL~1\ATmega128\ÄÚºË£­WDT\WDT\WDT.C
	$(CC) -c $(CFLAGS) ..\..\..\..\KERNEL~1\ATmega128\ÄÚºË£­WDT\WDT\WDT.C
