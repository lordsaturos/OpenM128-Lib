NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   008C   064C =   1612. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0046  __start
       0046  __text_start
       0068  _exit
       0069  _speaData
       00C2  _I2C_Start
       00D2  _I2C_Restart
       00E2  _I2C_SendWrDAdr
       00F4  _I2C_SendWrDAdr_
       0111  _I2C_SendRdDAdr
       0123  _I2C_SendRdDAdr_
       013E  _I2C_SendDat
       0150  _I2C_RcvNAckDat
       0164  _I2C_RcvAckDat
       0178  _I2C_Write
       019C  _I2C_Read
       01CF  _I2C_Read_
       0217  _delay50us
       0227  _delay50ms
       0245  _delayus
       0252  _wdt_init
       0256  _main
       0263  push_arg4
       0265  push_arg2
       0268  div32u
       026A  mod32u
       026E  div32s
       0270  mod32s
       029C  long_div_prolog
       02AF  long_div_epilog
       02BF  tst_R16_R19
       02C4  tst_R24_R27
       02C9  neg_R24_R27
       02D2  empy32s
       02D2  empy32u
       0306  pop_xgset00FC
       030D  pop_xgset30FC
       0316  pop_xgsetF0FC
       0321  push_xgsetF0FC
       0323  push_xgset30FC
       0325  push_xgset00FC
       0327  push_xgset003C
       032C  push_xgsetF03C
       0335  pop_xgsetF03C
       033E  neg32
       0347  long_prolog
       0355  long_epilog
       0360  tstzero1
       0366  tstzero2
       036C  __text_end

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
WDT.o	[ WDT.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:0.4096

