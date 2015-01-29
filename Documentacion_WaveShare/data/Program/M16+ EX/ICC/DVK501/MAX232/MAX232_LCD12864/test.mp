NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   0025 =     37. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0079  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   007A   0A08 =   2568. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       003D  __text_start
       003D  __start
       005F  _exit
       0060  _speaData
       00B9  _I2C_Start
       00C6  _I2C_Restart
       00D3  _I2C_SendWrDAdr
       00E1  _I2C_SendWrDAdr_
       00FE  _I2C_SendRdDAdr
       010C  _I2C_SendRdDAdr_
       0127  _I2C_SendDat
       0135  _I2C_RcvNAckDat
       0145  _I2C_RcvAckDat
       0155  _I2C_Write
       0178  _I2C_Read
       01AA  _I2C_Read_
       01F1  _delay50us
       0201  _delay50ms
       021F  _delayus
       022C  _SPI_init
       0235  _lcd_wrByte
       0239  _lcd_wrCmd
       0246  _lcd_wrDat
       0253  _lcd_set_xy
       027E  _lcd_putc
       0292  _lcd_putd0
       02C9  _lcd_putd
       0372  _lcd_puts
       0394  _lcd_puts_
       03B7  _lcd_clr
       03BD  _lcd_init
       03D0  _UART_init
       03DA  _uart_putchar0
       03DE  _uart_getchar0
       03ED  _uart_waitchar0
       03F8  _main
       041C  push_arg4
       041E  push_arg2
       0421  div32u
       0423  mod32u
       0427  div32s
       0429  mod32s
       0455  long_div_prolog
       0468  long_div_epilog
       0478  tst_R16_R19
       047D  tst_R24_R27
       0482  neg_R24_R27
       048B  empy32u
       048B  empy32s
       04BF  pop_xgset00FC
       04C6  pop_xgset30FC
       04CF  pop_xgsetF0FC
       04DA  push_xgsetF0FC
       04DC  push_xgset30FC
       04DE  push_xgset00FC
       04E0  push_xgset003C
       04E5  push_xgsetF00C
       04EC  pop_xgsetF00C
       04F3  push_xgset303C
       04FA  pop_xgset303C
       0501  push_xgsetF03C
       050A  pop_xgsetF03C
       0513  neg32
       051C  long_prolog
       052A  long_epilog
       0535  tstzero1
       053B  tstzero2
       0541  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0025 =     37. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       0085  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0085   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0085  __bss_start
       0085  _dataElem
       008B  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
test.o	[ test.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s ]
[ longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

