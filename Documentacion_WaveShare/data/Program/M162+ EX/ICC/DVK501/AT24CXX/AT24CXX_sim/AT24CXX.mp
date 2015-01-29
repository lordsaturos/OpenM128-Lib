NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0070   059A =   1434. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0038  __text_start
       0038  __start
       005A  _exit
       005B  _speaData
       00B4  _delay50us
       00C4  _delay50ms
       00E2  _delayus
       00EF  _sDelay
       00F6  _I2C_Start
       0102  _I2C_Stop
       010E  _I2C_Send_DataAddr
       0136  _I2C_Read_DataAddr
       015F  _I2C_ReadBusy
       0188  _AT24C_wByte
       019A  _AT24C_wPage
       01B7  _AT24C_rByte
       01CF  _AT24C_rPage
       01F5  _main
       0214  push_arg4
       0216  push_arg2
       0219  div32u
       021B  mod32u
       021F  div32s
       0221  mod32s
       024D  long_div_prolog
       0260  long_div_epilog
       0270  tst_R16_R19
       0275  tst_R24_R27
       027A  neg_R24_R27
       0283  empy32u
       0283  empy32s
       02B7  push_xgset303C
       02BE  pop_xgset303C
       02C5  push_xgsetF03C
       02CE  pop_xgsetF03C
       02D7  neg32
       02E0  long_prolog
       02EE  long_epilog
       02F9  tstzero1
       02FF  tstzero2
       0305  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0100   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __bss_start
       0100  _dataElem
       0106  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
AT24CXX.o	[ AT24CXX.C ]
<library>	[ asave.s, div32.s, emul32.s, gpusha.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

