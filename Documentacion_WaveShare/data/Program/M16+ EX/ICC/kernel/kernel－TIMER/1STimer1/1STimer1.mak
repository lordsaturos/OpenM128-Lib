CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:1.512 -fihx_coff -S2
FILES = 1STimer1.o 

1STimer1:	$(FILES)
	$(CC) -o 1STimer1 $(LFLAGS) @1STimer1.lk   -lcatmega
1STimer1.o: C:/icc/include/iom16v.h C:/icc/include/macros.h
1STimer1.o:	E:\微雪电子CD1\产品资料\开发板实验板\SMK系列\SMK1632\实验教程\内核及主板相关实验\内核－TIMER\1STimer1\1STimer1.c
	$(CC) -c $(CFLAGS) E:\微雪电子CD1\产品资料\开发板实验板\SMK系列\SMK1632\实验教程\内核及主板相关实验\内核－TIMER\1STimer1\1STimer1.c
