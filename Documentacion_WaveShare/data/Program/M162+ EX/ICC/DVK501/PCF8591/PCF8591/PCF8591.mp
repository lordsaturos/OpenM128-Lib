NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0070   04D4 =   1236. bytes (rel,con,rom)

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
       0188  _PCF8591_getAD
       0199  _PCF8591_setDA
       01A5  _main
       01B1  push_arg4
       01B3  push_arg2
       01B6  div32u
       01B8  mod32u
       01BC  div32s
       01BE  mod32s
       01EA  long_div_prolog
       01FD  long_div_epilog
       020D  tst_R16_R19
       0212  tst_R24_R27
       0217  neg_R24_R27
       0220  empy32s
       0220  empy32u
       0254  push_xgset303C
       025B  pop_xgset303C
       0262  push_xgsetF03C
       026B  pop_xgsetF03C
       0274  neg32
       027D  long_prolog
       028B  long_epilog
       0296  tstzero1
       029C  tstzero2
       02A2  __text_end

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
PCF8591.o	[ PCF8591.C ]
<library>	[ asave.s, div32.s, emul32.s, gpusha.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

