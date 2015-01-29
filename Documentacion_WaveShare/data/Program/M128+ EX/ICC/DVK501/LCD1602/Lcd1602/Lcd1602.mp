NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   008C   0018 =     24. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __lit_start
       008C  _userCh0
       0094  _userCh1
       009C  _userCh2
       00A4  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   00A4   00A3 =    163. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       00A4  __idata_start
       0147  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0148   0EA6 =   3750. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       00A4  __start
       00A4  __text_start
       00C4  _exit
       00C5  _speaData
       0124  _I2C_Start
       0134  _I2C_Restart
       0144  _I2C_SendWrDAdr
       0156  _I2C_SendWrDAdr_
       0170  _I2C_SendRdDAdr
       0182  _I2C_SendRdDAdr_
       019C  _I2C_SendDat
       01AE  _I2C_RcvNAckDat
       01C2  _I2C_RcvAckDat
       01D6  _I2C_Write
       01F8  _I2C_Read
       0226  _I2C_Read_
       0269  _delay50us
       027B  _delay50ms
       0291  _delayus
       029E  _busy
       0306  _write
       0392  _LCD1602_setCGRAM
       03AB  _LCD1602_setCmd
       053E  _LCD1602_init
       05AD  _LCD1602_putc
       05BA  _LCD1602_puts
       05CE  _LCD1602_putd0
       05F9  _LCD1602_putd
       06B1  _main
       06F7  _strcmp
       0704  push_arg4
       0706  push_arg2
       0709  div32u
       070B  mod32u
       070F  div32s
       0711  mod32s
       073C  long_div_prolog
       074F  long_div_epilog
       075E  tst_R16_R19
       0763  tst_R24_R27
       0768  neg_R16_R19
       0771  neg_R24_R27
       077A  empy32s
       077A  empy32u
       07AA  pop_gset2
       07AD  pop_gset4
       07B0  pop_gset5
       07B3  push_gset5
       07B5  push_gset4
       07B7  push_gset3
       07B9  push_gset2
       07BB  push_gset1
       07BE  pop_gset1
       07BF  pop
       07D2  long_prolog
       07E0  long_epilog
       07EB  tstzero1
       07F1  tstzero2
       07F7  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   00A3 =    163. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0100  _LCD1602Err
       01A3  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   01A3   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       01A3  __bss_start
       01A3  _bdat
       01A4  _dataElem
       01AA  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
Lcd1602PBPD.o	[ Lcd1602PBPD.C ]
<library>	[ strcmp.s, asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpop5.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x105f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

