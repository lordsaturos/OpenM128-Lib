NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0070   0003 =      3. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0070  __idata_start
       0073  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0074   074A =   1866. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       003A  __text_start
       003A  __start
       005C  _exit
       005D  _speaData
       00B6  _delay50us
       00C6  _delay50ms
       00E4  _delayus
       00F1  _sDelay
       00F8  _I2C_Start
       0104  _I2C_Stop
       0110  _I2C_Send_DataAddr
       0138  _I2C_Read_DataAddr
       0161  _I2C_ReadBusy
       018A  _PCF8563_wByte
       019C  _PCF8563_rByte
       01B4  _PCF8563_rPage
       01D9  _PCF8563_getTime
       0233  _PCF8563_setTime
       0272  _PCF8563_init
       027F  _main
       029E  push_arg4
       02A0  push_arg2
       02A3  div32u
       02A5  mod32u
       02A9  div32s
       02AB  mod32s
       02D7  long_div_prolog
       02EA  long_div_epilog
       02FA  tst_R16_R19
       02FF  tst_R24_R27
       0304  neg_R24_R27
       030D  mod8u
       030F  div8u
       0310  xdiv8u
       0325  empy32u
       0325  empy32s
       0359  pop_xgset00FC
       0360  push_xgsetF0FC
       0362  push_xgset30FC
       0364  push_xgset00FC
       0366  push_xgset003C
       036B  push_xgsetF00C
       0372  pop_xgsetF00C
       0379  push_xgset303C
       0380  pop_xgset303C
       0387  push_xgsetF03C
       0390  pop_xgsetF03C
       0399  neg32
       03A2  long_prolog
       03B0  long_epilog
       03BB  tstzero1
       03C1  tstzero2
       03C7  asgnblk
       03DF  __text_end

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

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
PCF8563.o	[ PCF8563.C ]
<library>	[ asave.s, div32.s, div8u.s, emul32.s, gpop3.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s, longutil.s ]
[ struct.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

