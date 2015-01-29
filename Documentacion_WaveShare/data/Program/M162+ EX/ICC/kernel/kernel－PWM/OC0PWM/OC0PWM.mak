CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION=722 -DATMega162  -l -g -MLongJump -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x70.0x4000 -dram_end:0x4ff -bdata:0x100.0x4ff -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = OC0PWM.o 

OC0PWM:	$(FILES)
	$(CC) -o OC0PWM $(LFLAGS) @OC0PWM.lk   -lcatmega
OC0PWM.o: C:\icc\include\iom162v.h C:\icc\include\macros.h C:\icc\include\AVRdef.h
OC0PWM.o:	..\..\..\..\KERNEL~1\ATmega162\ÄÚºË£­PWM\OC0PWM\OC0PWM.C
	$(CC) -c $(CFLAGS) ..\..\..\..\KERNEL~1\ATmega162\ÄÚºË£­PWM\OC0PWM\OC0PWM.C
