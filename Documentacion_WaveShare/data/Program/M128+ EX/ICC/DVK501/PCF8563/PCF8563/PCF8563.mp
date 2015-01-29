NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   008C   0003 =      3. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __idata_start
       008F  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0090   08A4 =   2212. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0048  __start
       0048  __text_start
       006A  _exit
       006B  _speaData
       00C4  _I2C_Start
       00D4  _I2C_Restart
       00E4  _I2C_SendWrDAdr
       00F6  _I2C_SendWrDAdr_
       0113  _I2C_SendRdDAdr
       0125  _I2C_SendRdDAdr_
       0140  _I2C_SendDat
       0152  _I2C_RcvNAckDat
       0166  _I2C_RcvAckDat
       017A  _I2C_Write
       019E  _I2C_Read
       01D1  _I2C_Read_
       0219  _delay50us
       0229  _delay50ms
       0247  _delayus
       0254  _WriteAByte
       0267  _ReadNByte
       027E  _PCF8563_getTime
       02D6  _PCF8563_setTime
       0310  _PCF8563_init
       0316  _errDisp
       032A  _twi_init
       0333  _main
       0353  push_arg4
       0355  push_arg2
       0358  div32u
       035A  mod32u
       035E  div32s
       0360  mod32s
       038C  long_div_prolog
       039F  long_div_epilog
       03AF  tst_R16_R19
       03B4  tst_R24_R27
       03B9  neg_R24_R27
       03C2  mod8u
       03C4  div8u
       03C5  xdiv8u
       03DA  empy32u
       03DA  empy32s
       040E  pop_xgset00FC
       0415  pop_xgset30FC
       041E  pop_xgsetF0FC
       0429  push_xgsetF0FC
       042B  push_xgset30FC
       042D  push_xgset00FC
       042F  push_xgset003C
       0434  push_xgsetF00C
       043B  pop_xgsetF00C
       0442  push_xgsetF03C
       044B  pop_xgsetF03C
       0454  neg32
       045D  long_prolog
       046B  long_epilog
       0476  tstzero1
       047C  tstzero2
       0482  asgnblk
       049A  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0103  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0103   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0103  __bss_start
       0103  _dataElem
       0109  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

c:\icc\lib\crtatmega.o	[ crtatmega.s ]
PCF8563.o	[ PCF8563.C ]
<library>	[ asave.s, div32.s, div8u.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpushb.s, lneg.s, longutil.s ]
[ struct.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:0.4096

