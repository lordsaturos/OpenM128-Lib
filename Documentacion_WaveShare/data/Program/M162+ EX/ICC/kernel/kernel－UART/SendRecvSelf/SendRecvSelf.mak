CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega16  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:1.512 -fihx_coff -S2
FILES = SendRecvSelf.o 

SendRecvSelf:	$(FILES)
	$(CC) -o SendRecvSelf $(LFLAGS) @SendRecvSelf.lk   -lcatmega
SendRecvSelf.o: C:/icc/include/iom16v.h D:\ICC_H\CmmICC.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/_const.h C:/icc/include/stdio.h C:/icc/include/stdarg.h C:/icc/include/_const.h C:/icc/include/macros.h C:/icc/include/eeprom.h\
 D:\ICC_H\Software.H C:/icc/include/math.h C:/icc/include/string.h D:\ICC_H\Hardware.H C:/icc/include/math.h C:/icc/include/string.h C:/icc/include/stdio.h C:/icc/include/macros.h C:/icc/include/eeprom.h D:\ICC_H\I2C.H D:\ICC_H\CmmICC.H
SendRecvSelf.o:	E:\΢ѩ����CD1\��Ʒ����\������ʵ���\SMKϵ��\SMK1632\ʵ��̳�\�ں˼��������ʵ��\�ںˣ�UART\SendRecvSelf\SendRecvSelf.c
	$(CC) -c $(CFLAGS) E:\΢ѩ����CD1\��Ʒ����\������ʵ���\SMKϵ��\SMK1632\ʵ��̳�\�ں˼��������ʵ��\�ںˣ�UART\SendRecvSelf\SendRecvSelf.c
