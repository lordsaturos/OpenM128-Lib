CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION=722 -DATMega16  -l -g -MLongJump -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x54.0x4000 -dram_end:0x45f -bdata:0x60.0x45f -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = test.o 

TEST:	$(FILES)
	$(CC) -o TEST $(LFLAGS) @TEST.lk   -lcatmega
test.o: C:\icc\include\iom16v.h
test.o:	..\..\..\STK16_~1.0\MAX485~1\MAX485\test.c
	$(CC) -c $(CFLAGS) ..\..\..\STK16_~1.0\MAX485~1\MAX485\test.c
