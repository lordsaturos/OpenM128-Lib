CC = iccavr
LIB = ilibw
CFLAGS =  -Ic:\icc\include\ -e -D__ICC_VERSION=722 -DATMega162  -l -g -MLongJump -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -Lc:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x70.0x4000 -dram_end:0x4ff -bdata:0x100.0x4ff -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = EEPROM.o 

EEPROM:	$(FILES)
	$(CC) -o EEPROM $(LFLAGS) @EEPROM.lk   -lcatmega
EEPROM.o: c:\icc\include\iom162v.h .\..\..\..\..\..\ICC_H\CmmICC.H c:\icc\include\math.h c:\icc\include\string.h c:\icc\include\_const.h c:\icc\include\stdio.h c:\icc\include\stdarg.h c:\icc\include\macros.h c:\icc\include\AVRdef.h c:\icc\include\eeprom.h .\..\..\..\..\..\ICC_H\Software.H .\..\..\..\..\..\ICC_H\Hardware.H
EEPROM.o:	..\..\..\..\KERNEL~1\ATmega162\ÄÚºË£­EEPROM\EEPROM\EEPROM.C
	$(CC) -c $(CFLAGS) ..\..\..\..\KERNEL~1\ATmega162\ÄÚºË£­EEPROM\EEPROM\EEPROM.C
