CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION=722 -DATMega128  -l -g -MLongJump -MHasMul -MEnhanced -Wf-use_elpm 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib\ -g -e:0x20000 -ucrtatmega.o -bfunc_lit:0x8c.0x20000 -dram_end:0x10ff -bdata:0x100.0x10ff -dhwstk_size:16 -beeprom:0.4096 -fihx_coff -S2
FILES = OC0PWM.o 

OC0PWM:	$(FILES)
	$(CC) -o OC0PWM $(LFLAGS) @OC0PWM.lk   -lcatm128
OC0PWM.o: C:\icc\include\iom128v.h C:\icc\include\macros.h C:\icc\include\AVRdef.h
OC0PWM.o:	..\..\..\..\KERNEL~1\ATmega128\ÄÚºË£­PWM\OC0PWM\OC0PWM.C
	$(CC) -c $(CFLAGS) ..\..\..\..\KERNEL~1\ATmega128\ÄÚºË£­PWM\OC0PWM\OC0PWM.C
