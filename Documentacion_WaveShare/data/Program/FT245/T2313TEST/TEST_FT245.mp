NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0026   0118 =    280. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0013  __start
       0013  __text_start
       0032  _exit
       0033  _delay50us
       0043  _delay50ms
       0057  _write_to_ft245
       0066  _read_from_ft245
       006F  _main
       0080  push_gset5
       0082  push_gset4
       0084  push_gset3
       0086  push_gset2
       0088  push_gset1
       008B  pop_gset1
       008C  pop
       009F  __text_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0002 =      2. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtAVR.o	[ crtavr.s ]
TEST_FT245.o	[ TEST_FT245.C ]
<library>	[ gpush.s ]

User Global Definitions

ram_end = 0xdf
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x26
data = 0x60
eeprom:1.128

