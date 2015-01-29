NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   005C   052C =   1324. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       002E  __start
       002E  __text_start
       0050  _exit
       0051  _speaData
       00AA  _delay50us
       00BA  _delay50ms
       00D8  _delayus
       00E5  _I2C_Start
       00EC  _I2C_Stop
       00F3  _I2C_Send_DataAddr
       010E  _I2C_Read_DataAddr
       012D  _I2C_ReadBusy
       0148  _AT24C_wByte
       015A  _AT24C_wPage
       0177  _AT24C_rByte
       018F  _AT24C_rPage
       01B5  _main
       01D3  push_arg4
       01D5  push_arg2
       01D8  div32u
       01DA  mod32u
       01DE  div32s
       01E0  mod32s
       020C  long_div_prolog
       021F  long_div_epilog
       022F  tst_R16_R19
       0234  tst_R24_R27
       0239  neg_R24_R27
       0242  empy32s
       0242  empy32u
       0276  push_xgset303C
       027D  pop_xgset303C
       0284  push_xgsetF03C
       028D  pop_xgsetF03C
       0296  neg32
       029F  long_prolog
       02AD  long_epilog
       02B8  tstzero1
       02BE  tstzero2
       02C4  __text_end

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

func_lit = 0x5c
data = 0x100
eeprom:0.512

