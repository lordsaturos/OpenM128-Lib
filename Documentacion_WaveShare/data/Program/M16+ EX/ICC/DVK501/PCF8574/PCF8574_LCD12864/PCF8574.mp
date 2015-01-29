NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   0042 =     66. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0096  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0096   0AC4 =   2756. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       004B  __start
       004B  __text_start
       006D  _exit
       006E  _speaData
       00C7  _I2C_Start
       00D4  _I2C_Restart
       00E1  _I2C_SendWrDAdr
       00EF  _I2C_SendWrDAdr_
       010C  _I2C_SendRdDAdr
       011A  _I2C_SendRdDAdr_
       0135  _I2C_SendDat
       0143  _I2C_RcvNAckDat
       0153  _I2C_RcvAckDat
       0163  _I2C_Write
       0186  _I2C_Read
       01B8  _I2C_Read_
       01FF  _delay50us
       020F  _delay50ms
       022D  _delayus
       023A  _Write_PCF8574
       0253  _Read_PCF8574
       027D  _SPI_init
       0286  _lcd_wrByte
       028A  _lcd_wrCmd
       0297  _lcd_wrDat
       02A4  _lcd_set_xy
       02CF  _lcd_putc
       02E3  _lcd_putd0
       031A  _lcd_putd
       03C3  _lcd_puts
       03E5  _lcd_puts_
       0408  _lcd_clr
       040E  _lcd_init
       0421  _port_init
       042D  _main
       0488  push_arg4
       048A  push_arg2
       048D  div32u
       048F  mod32u
       0493  div32s
       0495  mod32s
       04C1  long_div_prolog
       04D4  long_div_epilog
       04E4  tst_R16_R19
       04E9  tst_R24_R27
       04EE  neg_R24_R27
       04F7  empy32s
       04F7  empy32u
       052B  pop_xgset00FC
       0532  pop_xgset30FC
       053B  pop_xgsetF0FC
       0546  push_xgsetF0FC
       0548  push_xgset30FC
       054A  push_xgset00FC
       054C  push_xgset003C
       0551  push_xgsetF00C
       0558  pop_xgsetF00C
       055F  push_xgset303C
       0566  pop_xgset303C
       056D  push_xgsetF03C
       0576  pop_xgsetF03C
       057F  neg32
       0588  long_prolog
       0596  long_epilog
       05A1  tstzero1
       05A7  tstzero2
       05AD  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0042 =     66. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       00A2  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   00A2   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       00A2  __bss_start
       00A2  _dataElem
       00A8  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
PCF8574.o	[ PCF8574.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s ]
[ longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

