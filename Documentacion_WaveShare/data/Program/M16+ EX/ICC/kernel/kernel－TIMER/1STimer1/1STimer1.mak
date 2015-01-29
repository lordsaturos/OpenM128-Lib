CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:1.512 -fihx_coff -S2
FILES = 1STimer1.o 

1STimer1:	$(FILES)
	$(CC) -o 1STimer1 $(LFLAGS) @1STimer1.lk   -lcatmega
1STimer1.o: C:/icc/include/iom16v.h C:/icc/include/macros.h
1STimer1.o:	E:\΢ѩ����CD1\��Ʒ����\������ʵ���\SMKϵ��\SMK1632\ʵ��̳�\�ں˼��������ʵ��\�ںˣ�TIMER\1STimer1\1STimer1.c
	$(CC) -c $(CFLAGS) E:\΢ѩ����CD1\��Ʒ����\������ʵ���\SMKϵ��\SMK1632\ʵ��̳�\�ں˼��������ʵ��\�ںˣ�TIMER\1STimer1\1STimer1.c
