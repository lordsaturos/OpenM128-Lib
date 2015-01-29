CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:1.512 -fihx_coff -S2
FILES = OC0PWM.o 

OC0PWM:	$(FILES)
	$(CC) -o OC0PWM $(LFLAGS) @OC0PWM.lk   -lcatmega
OC0PWM.o: C:/icc/include/iom16v.h C:/icc/include/macros.h
OC0PWM.o:	E:\΢ѩ����CD1\��Ʒ����\������ʵ���\SMKϵ��\SMK1632\ʵ��̳�\�ں˼��������ʵ��\�ںˣ�PWM\OC0PWM\OC0PWM.C
	$(CC) -c $(CFLAGS) E:\΢ѩ����CD1\��Ʒ����\������ʵ���\SMKϵ��\SMK1632\ʵ��̳�\�ں˼��������ʵ��\�ںˣ�PWM\OC0PWM\OC0PWM.C
