NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0070   04F6 =   1270. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0038  __start
       0038  __text_start
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
       0188  _PCF8574_wByte
       0192  _PCF8574_rByte
       01A0  _port_init
       01AF  _main
       01C2  push_arg4
       01C4  push_arg2
       01C7  div32u
       01C9  mod32u
       01CD  div32s
       01CF  mod32s
       01FB  long_div_prolog
       020E  long_div_epilog
       021E  tst_R16_R19
       0223  tst_R24_R27
       0228  neg_R24_R27
       0231  empy32u
       0231  empy32s
       0265  push_xgset303C
       026C  pop_xgset303C
       0273  push_xgsetF03C
       027C  pop_xgsetF03C
       0285  neg32
       028E  long_prolog
       029C  long_epilog
       02A7  tstzero1
       02AD  tstzero2
       02B3  __text_end

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
PCF8574.o	[ PCF8574.C ]
<library>	[ asave.s, div32.s, emul32.s, gpusha.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

