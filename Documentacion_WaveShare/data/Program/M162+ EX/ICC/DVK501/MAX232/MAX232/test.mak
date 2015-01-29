CC = iccavr
LIB = ilibw
CFLAGS =  -IC:\icc\include\ -e -D__ICC_VERSION=722 -DATMega162  -l -g -MLongJump -MHasMul -MEnhanced 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\icc\lib\ -g -e:0x4000 -ucrtatmega.o -bfunc_lit:0x70.0x4000 -dram_end:0x4ff -bdata:0x100.0x4ff -dhwstk_size:16 -beeprom:0.512 -fihx_coff -S2
FILES = test.o 

TEST:	$(FILES)
	$(CC) -o TEST $(LFLAGS) @TEST.lk   -lcatmega
test.o: C:\icc\include\iom162v.h
test.o:	..\..\..\STK162~1.0\MAX232~1\MAX232\test.c
	$(CC) -c $(CFLAGS) ..\..\..\STK162~1.0\MAX232~1\MAX232\test.c
