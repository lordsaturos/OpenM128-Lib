NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   002A   00BA =    186. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0015  __start
       0015  __text_start
       0036  _exit
       0037  _UART_init
       0043  _uart_putchar0
       0047  _uart_getchar0
       0056  _uart_waitchar0
       0061  _delay
       0068  _main
       0072  __text_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0002 =      2. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtAVR.o	[ crtavr.s ]
test.o	[ test.c ]
<library>	

User Global Definitions

ram_end = 0x25f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x2a
data = 0x60
eeprom:0.512

