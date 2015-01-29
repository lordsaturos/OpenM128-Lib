NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0054   05A2 =   1442. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       002A  __start
       002A  __text_start
       004A  _exit
       004B  _speaData
       00AA  _I2C_Start
       00B7  _I2C_Restart
       00C4  _I2C_SendWrDAdr
       00D2  _I2C_SendWrDAdr_
       00EC  _I2C_SendRdDAdr
       00FA  _I2C_SendRdDAdr_
       0114  _I2C_SendDat
       0122  _I2C_RcvNAckDat
       0132  _I2C_RcvAckDat
       0142  _I2C_Write
       0163  _I2C_Read
       0190  _I2C_Read_
       01D2  _delay50us
       01E4  _delay50ms
       01FA  _wdt_init
       01FE  _main
       020B  push_arg4
       020D  push_arg2
       0210  div32u
       0212  mod32u
       0216  div32s
       0218  mod32s
       0243  long_div_prolog
       0256  long_div_epilog
       0265  tst_R16_R19
       026A  tst_R24_R27
       026F  neg_R16_R19
       0278  neg_R24_R27
       0281  empy32u
       0281  empy32s
       02B1  pop_gset2
       02B4  pop_gset4
       02B7  push_gset5
       02B9  push_gset4
       02BB  push_gset3
       02BD  push_gset2
       02BF  push_gset1
       02C2  pop_gset1
       02C3  pop
       02D6  long_prolog
       02E4  long_epilog
       02EF  tstzero1
       02F5  tstzero2
       02FB  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0060   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __bss_start
       0060  _dataElem
       0066  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
WDT.o	[ WDT.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:1.512

