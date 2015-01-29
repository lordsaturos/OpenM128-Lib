CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:1.512 -fihx_coff -S2
FILES = OC0PWM.o 

OC0PWM:	$(FILES)
	$(CC) -o OC0PWM $(LFLAGS) @OC0PWM.lk   -lcatmega
OC0PWM.o: C:/icc/include/iom16v.h C:/icc/include/macros.h
OC0PWM.o:	E:\微雪电子CD1\产品资料\开发板实验板\SMK系列\SMK1632\实验教程\内核及主板相关实验\内核－PWM\OC0PWM\OC0PWM.C
	$(CC) -c $(CFLAGS) E:\微雪电子CD1\产品资料\开发板实验板\SMK系列\SMK1632\实验教程\内核及主板相关实验\内核－PWM\OC0PWM\OC0PWM.C
