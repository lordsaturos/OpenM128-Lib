CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION=722 -DATMega162  -l -g -MLongJump -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x70.0x4000 -dram_end:0x4ff -bdata:0x100.0x4ff -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = WDT.o 

WDT:	$(FILES)
	$(CC) -o WDT $(LFLAGS) @WDT.lk   -lcatmega
WDT.o: C:\icc\include\iom162v.h .\..\..\..\..\..\ICC_H\CmmICC.H C:\icc\include\math.h C:\icc\include\string.h C:\icc\include\_const.h C:\icc\include\stdio.h C:\icc\include\stdarg.h C:\icc\include\macros.h C:\icc\include\AVRdef.h C:\icc\include\eeprom.h .\..\..\..\..\..\ICC_H\Software.H .\..\..\..\..\..\ICC_H\Hardware.H
WDT.o:	..\..\..\..\KERNEL~1\ATmega162\ÄÚºË£­WDT\WDT\WDT.C
	$(CC) -c $(CFLAGS) ..\..\..\..\KERNEL~1\ATmega162\ÄÚºË£­WDT\WDT\WDT.C
