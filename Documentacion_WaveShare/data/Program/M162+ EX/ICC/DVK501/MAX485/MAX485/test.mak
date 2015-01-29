CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATMEGA -DATMega162  -l -g -Mavr_enhanced 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -ucrtatmega.o -bfunc_lit:0x70.0x4000 -dram_end:0x4ff -bdata:0x100.0x4ff -dhwstk_size:16 -beeprom:1.512 -fihx_coff -S2
FILES = test.o 

test:	$(FILES)
	$(CC) -o test $(LFLAGS) @test.lk   -lcatmega
test.o: C:/icc/include/iom162v.h
test.o:	E:\吴泽程序备份\DVK500\新建文件夹\STK162~1.0\MAX485~1\test.c
	$(CC) -c $(CFLAGS) E:\吴泽程序备份\DVK500\新建文件夹\STK162~1.0\MAX485~1\test.c
