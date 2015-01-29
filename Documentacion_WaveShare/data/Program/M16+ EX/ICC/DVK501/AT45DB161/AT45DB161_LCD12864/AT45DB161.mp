NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0034   0028 =     40. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0034  __idata_start
       005C  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   005C   0A6E =   2670. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       002E  __text_start
       002E  __start
       004F  _exit
       0050  _speaData
       00A3  _I2C_Start
       00B0  _I2C_Restart
       00BD  _I2C_SendWrDAdr
       00CB  _I2C_SendWrDAdr_
       00E8  _I2C_SendRdDAdr
       00F6  _I2C_SendRdDAdr_
       0111  _I2C_SendDat
       011F  _I2C_RcvNAckDat
       012F  _I2C_RcvAckDat
       013F  _I2C_Write
       0160  _I2C_Read
       0190  _I2C_Read_
       01D5  _delay50us
       01E5  _delay50ms
       0203  _delayus
       0210  _spi_init
       0213  _spi_transmit_byte
       0217  _write_buffer
       0227  _read_buffer
       023D  _SPI_init
       0246  _lcd_wrByte
       024A  _lcd_wrCmd
       0257  _lcd_wrDat
       0264  _lcd_set_xy
       028D  _lcd_putc
       029F  _lcd_putd0
       02D4  _lcd_putd
       037B  _lcd_puts
       039B  _lcd_puts_
       03BC  _lcd_clr
       03C2  _lcd_init
       03D5  _main
       0441  push_arg4
       0443  push_arg2
       0446  div32u
       0448  mod32u
       044C  div32s
       044E  mod32s
       0479  long_div_prolog
       048C  long_div_epilog
       049B  tst_R16_R19
       04A0  tst_R24_R27
       04A5  neg_R24_R27
       04AE  empy32u
       04AE  empy32s
       04DE  pop_xgset003C
       04E3  pop_xgset00FC
       04EA  pop_xgset30FC
       04F3  pop_xgsetF0FC
       04FE  push_xgsetF0FC
       0500  push_xgset30FC
       0502  push_xgset00FC
       0504  push_xgset003C
       0509  push_xgsetF00C
       0510  pop_xgsetF00C
       0517  push_xgset303C
       051E  pop_xgset303C
       0525  push_xgsetF03C
       052E  pop_xgsetF03C
       0537  neg32
       0540  long_prolog
       054E  long_epilog
       0559  tstzero1
       055F  tstzero2
       0565  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0028 =     40. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0128  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0128   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0128  __bss_start
       0128  _dataElem
       012E  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0002 =      2. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtAVR.o	[ crtavr.s ]
AT45DB161.o	[ AT45DB161.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s ]
[ lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x2ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x34
data = 0x100
eeprom:0.256

