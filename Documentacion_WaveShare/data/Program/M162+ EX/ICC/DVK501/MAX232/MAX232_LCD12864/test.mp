NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0070   0025 =     37. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0070  __idata_start
       0095  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0096   075E =   1886. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       004B  __text_start
       004B  __start
       006B  _exit
       006C  _speaData
       00CB  _delay50us
       00DD  _delay50ms
       00F3  _delayus
       0100  _SPI_init
       0108  _lcd_wrByte
       010C  _lcd_wrCmd
       0119  _lcd_wrDat
       0126  _lcd_set_xy
       0151  _lcd_putc
       0165  _lcd_putd0
       019F  _lcd_putd
       0254  _lcd_puts
       0277  _lcd_puts_
       029B  _lcd_clr
       02A2  _lcd_init
       02B6  _UART_init
       02C0  _uart_putchar0
       02C4  _uart_getchar0
       02D3  _uart_waitchar0
       02DE  _main
       0304  push_arg4
       0306  push_arg2
       0309  div32u
       030B  mod32u
       030F  div32s
       0311  mod32s
       033C  long_div_prolog
       034F  long_div_epilog
       035E  tst_R16_R19
       0363  tst_R24_R27
       0368  neg_R16_R19
       0371  neg_R24_R27
       037A  empy32s
       037A  empy32u
       03AA  pop_gset2
       03AD  pop_gset3
       03B0  pop_gset4
       03B3  pop_gset5
       03B6  push_gset5
       03B8  push_gset4
       03BA  push_gset3
       03BC  push_gset2
       03BE  push_gset1
       03C1  pop_gset1
       03C2  pop
       03D5  long_prolog
       03E3  long_epilog
       03EE  tstzero1
       03F4  tstzero2
       03FA  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0025 =     37. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0125  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0125   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0125  __bss_start
       0125  _dataElem
       012B  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
test.o	[ test.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:1.512

