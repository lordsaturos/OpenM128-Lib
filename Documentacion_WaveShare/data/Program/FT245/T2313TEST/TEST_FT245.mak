CC = iccavr
CFLAGS =  -IC:\icc\include\ -e -DATtiny2313  -l -g 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -LC:\icc\lib\ -g -bfunc_lit:0x26.0x800 -dram_end:0xdf -bdata:0x60.0xdf -dhwstk_size:16 -beeprom:1.128 -fihx_coff -S2
FILES = TEST_FT245.o 

TEST_FT245:	$(FILES)
	$(CC) -o TEST_FT245 $(LFLAGS) @TEST_FT245.lk  
TEST_FT245.o: C:/icc/include/iot2313v.h C:/icc/include/macros.h
TEST_FT245.o:	E:\USBTOOLS_CD\FT245E~1\目标MCU源程序\T2313TEST\TEST_FT245.C
	$(CC) -c $(CFLAGS) E:\USBTOOLS_CD\FT245E~1\目标MCU源程序\T2313TEST\TEST_FT245.C
