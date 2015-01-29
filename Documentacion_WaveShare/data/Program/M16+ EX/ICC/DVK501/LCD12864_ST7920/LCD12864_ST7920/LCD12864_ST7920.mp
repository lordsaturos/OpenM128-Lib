NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   001D =     29. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0071  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0072   0996 =   2454. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0039  __text_start
       0039  __start
       005B  _exit
       005C  _speaData
       00B5  _I2C_Start
       00C2  _I2C_Restart
       00CF  _I2C_SendWrDAdr
       00DD  _I2C_SendWrDAdr_
       00FA  _I2C_SendRdDAdr
       0108  _I2C_SendRdDAdr_
       0123  _I2C_SendDat
       0131  _I2C_RcvNAckDat
       0141  _I2C_RcvAckDat
       0151  _I2C_Write
       0174  _I2C_Read
       01A6  _I2C_Read_
       01ED  _delay50us
       01FD  _delay50ms
       021B  _delayus
       0228  _SPI_init
       0230  _lcd_wrByte
       0234  _lcd_wrCmd
       0241  _lcd_wrDat
       024E  _lcd_set_xy
       0279  _lcd_putc
       028D  _lcd_putd0
       02C4  _lcd_putd
       036D  _lcd_puts
       038F  _lcd_puts_
       03B2  _lcd_clr
       03B8  _lcd_init
       03CB  _main
       03DF  push_arg4
       03E1  push_arg2
       03E4  div32u
       03E6  mod32u
       03EA  div32s
       03EC  mod32s
       0418  long_div_prolog
       042B  long_div_epilog
       043B  tst_R16_R19
       0440  tst_R24_R27
       0445  neg_R24_R27
       044E  empy32u
       044E  empy32s
       0482  pop_xgset00FC
       0489  pop_xgset30FC
       0492  pop_xgsetF0FC
       049D  push_xgsetF0FC
       049F  push_xgset30FC
       04A1  push_xgset00FC
       04A3  push_xgset003C
       04A8  push_xgsetF00C
       04AF  pop_xgsetF00C
       04B6  push_xgset303C
       04BD  pop_xgset303C
       04C4  push_xgsetF03C
       04CD  pop_xgsetF03C
       04D6  neg32
       04DF  long_prolog
       04ED  long_epilog
       04F8  tstzero1
       04FE  tstzero2
       0504  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   001D =     29. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       007D  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   007D   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       007D  __bss_start
       007D  _dataElem
       0083  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
LCD12864_ST7920.o	[ LCD12864_ST7920.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s ]
[ longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

