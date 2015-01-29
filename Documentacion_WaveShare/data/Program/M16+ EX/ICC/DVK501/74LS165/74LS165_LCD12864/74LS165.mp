NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   002C =     44. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0080  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0080   0A08 =   2568. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0040  __text_start
       0040  __start
       0062  _exit
       0063  _speaData
       00BC  _I2C_Start
       00C9  _I2C_Restart
       00D6  _I2C_SendWrDAdr
       00E4  _I2C_SendWrDAdr_
       0101  _I2C_SendRdDAdr
       010F  _I2C_SendRdDAdr_
       012A  _I2C_SendDat
       0138  _I2C_RcvNAckDat
       0148  _I2C_RcvAckDat
       0158  _I2C_Write
       017B  _I2C_Read
       01AD  _I2C_Read_
       01F4  _delay50us
       0204  _delay50ms
       0222  _delayus
       022F  _SPI_init
       0238  _lcd_wrByte
       023C  _lcd_wrCmd
       0249  _lcd_wrDat
       0256  _lcd_set_xy
       0281  _lcd_putc
       0295  _lcd_putd0
       02CC  _lcd_putd
       0375  _lcd_puts
       0397  _lcd_puts_
       03BA  _lcd_clr
       03C0  _lcd_init
       03D3  _getDat
       03DF  _main
       041F  push_arg4
       0421  push_arg2
       0424  div32u
       0426  mod32u
       042A  div32s
       042C  mod32s
       0458  long_div_prolog
       046B  long_div_epilog
       047B  tst_R16_R19
       0480  tst_R24_R27
       0485  neg_R24_R27
       048E  empy32u
       048E  empy32s
       04C2  pop_xgset00FC
       04C9  pop_xgset30FC
       04D2  pop_xgsetF0FC
       04DD  push_xgsetF0FC
       04DF  push_xgset30FC
       04E1  push_xgset00FC
       04E3  push_xgset003C
       04E8  push_xgsetF00C
       04EF  pop_xgsetF00C
       04F6  push_xgset303C
       04FD  pop_xgset303C
       0504  push_xgsetF03C
       050D  pop_xgsetF03C
       0516  neg32
       051F  long_prolog
       052D  long_epilog
       0538  tstzero1
       053E  tstzero2
       0544  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   002C =     44. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       008C  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   008C   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __bss_start
       008C  _dataElem
       0092  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
74LS165.o	[ _74LS165.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s ]
[ longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

