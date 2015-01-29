CC = iccavr
CFLAGS =  -Ic:\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -Lc:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:1.512 -fihx_coff -S2
FILES = IntAD.o 

IntAD:	$(FILES)
	$(CC) -o IntAD $(LFLAGS) @IntAD.lk   -lcatmega
IntAD.o: c:/icc/include/iom16v.h D:\ICC_H\CmmICC.H c:/icc/include/math.h c:/icc/include/string.h c:/icc/include/_const.h c:/icc/include/stdio.h c:/icc/include/stdarg.h c:/icc/include/_const.h c:/icc/include/macros.h c:/icc/include/eeprom.h\
 D:\ICC_H\Software.H c:/icc/include/math.h c:/icc/include/string.h D:\ICC_H\Hardware.H c:/icc/include/math.h c:/icc/include/string.h c:/icc/include/stdio.h c:/icc/include/macros.h c:/icc/include/eeprom.h D:\ICC_H\I2C.H D:\ICC_H\CmmICC.H
IntAD.o:	E:\΢ѩ����CD1\��Ʒ����\������ʵ���\SMKϵ��\SMK1632\ʵ��̳�\�ں˼��������ʵ��\�ںˣ�AD\IntAD\IntAD.C
	$(CC) -c $(CFLAGS) E:\΢ѩ����CD1\��Ʒ����\������ʵ���\SMKϵ��\SMK1632\ʵ��̳�\�ں˼��������ʵ��\�ںˣ�AD\IntAD\IntAD.C
