NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   008C   0700 =   1792. bytes (rel,con,rom)

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
       0252  _Write_PCF8574
       026C  _Read_PCF8574
       029B  _port_init
       02AA  _main
       02BD  push_arg4
       02BF  push_arg2
       02C2  div32u
       02C4  mod32u
       02C8  div32s
       02CA  mod32s
       02F6  long_div_prolog
       0309  long_div_epilog
       0319  tst_R16_R19
       031E  tst_R24_R27
       0323  neg_R24_R27
       032C  empy32s
       032C  empy32u
       0360  pop_xgset00FC
       0367  pop_xgset30FC
       0370  pop_xgsetF0FC
       037B  push_xgsetF0FC
       037D  push_xgset30FC
       037F  push_xgset00FC
       0381  push_xgset003C
       0386  push_xgsetF03C
       038F  pop_xgsetF03C
       0398  neg32
       03A1  long_prolog
       03AF  long_epilog
       03BA  tstzero1
       03C0  tstzero2
       03C6  __text_end

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
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:0.4096

