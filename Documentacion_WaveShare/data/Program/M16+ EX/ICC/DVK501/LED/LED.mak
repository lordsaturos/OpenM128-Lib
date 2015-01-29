CC = iccavr
LIB = ilibw
CFLAGS =  -ID:\PROGRA~1\iccv7avr\include -e -D__ICC_VERSION=722 -DATMega16  -l -g -Wa-ID:\PROGRA~1\iccv7avr\include -MLongJump -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LD:\PROGRA~1\iccv7avr\lib -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:30 -beeprom:0.512 -fihx_coff -S2
FILES = LED.o 

LED:	$(FILES)
	$(CC) -o LED $(LFLAGS) @LED.lk   -lcatmega
LED.o: D:\PROGRA~1\iccv7avr\include\iom16v.h .\..\..\..\icc_h\CmmICC.h D:\PROGRA~1\iccv7avr\include\math.h D:\PROGRA~1\iccv7avr\include\string.h D:\PROGRA~1\iccv7avr\include\_const.h D:\PROGRA~1\iccv7avr\include\stdio.h D:\PROGRA~1\iccv7avr\include\stdarg.h D:\PROGRA~1\iccv7avr\include\macros.h D:\PROGRA~1\iccv7avr\include\AVRdef.h D:\PROGRA~1\iccv7avr\include\eeprom.h .\..\..\..\ICC_H\Software.H .\..\..\..\ICC_H\Hardware.H
LED.o:	..\..\M16_EX~1\LED\LED.C
	$(CC) -c $(CFLAGS) ..\..\M16_EX~1\LED\LED.C