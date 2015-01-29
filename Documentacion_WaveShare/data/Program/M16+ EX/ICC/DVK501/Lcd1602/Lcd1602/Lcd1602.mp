NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0034   0018 =     24. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0034  __lit_start
       0034  _userCh0
       003C  _userCh1
       0044  _userCh2
       004C  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   004C   00A3 =    163. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       004C  __idata_start
       00EF  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00F0   0E30 =   3632. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0078  __start
       0078  __text_start
       0097  _exit
       0098  _speaData
       00F1  _I2C_Start
       0101  _I2C_Restart
       0111  _I2C_SendWrDAdr
       0123  _I2C_SendWrDAdr_
       013B  _I2C_SendRdDAdr
       014D  _I2C_SendRdDAdr_
       0165  _I2C_SendDat
       0177  _I2C_RcvNAckDat
       018B  _I2C_RcvAckDat
       019F  _I2C_Write
       01BF  _I2C_Read
       01EB  _I2C_Read_
       022C  _delay50us
       023C  _delay50ms
       0250  _delayus
       025C  _busy
       02C4  _write
       034E  _LCD1602_setCGRAM
       0365  _LCD1602_setCmd
       04E6  _LCD1602_init
       0555  _LCD1602_putc
       0560  _LCD1602_puts
       0572  _LCD1602_putd0
       059B  _LCD1602_putd
       0651  _main
       0697  _strcmp
       06A4  push_arg4
       06A6  push_arg2
       06A9  div32u
       06AB  mod32u
       06AF  div32s
       06B1  mod32s
       06DC  long_div_prolog
       06EF  long_div_epilog
       06FE  tst_R16_R19
       0703  tst_R24_R27
       0708  neg_R16_R19
       0711  neg_R24_R27
       071A  empy32s
       071A  empy32u
       0746  pop_gset2
       0748  pop_gset4
       074A  pop_gset5
       074C  push_gset5
       074E  push_gset4
       0750  push_gset3
       0752  push_gset2
       0754  push_gset1
       0757  pop_gset1
       0758  pop
       076B  long_prolog
       0779  long_epilog
       0784  tstzero1
       078A  tstzero2
       0790  __text_end

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
                          vector   0000   0002 =      2. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtAVR.o	[ crtavr.s ]
Lcd1602PBPD.o	[ Lcd1602PBPD.C ]
<library>	[ strcmp.s, asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpop5.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x2ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x34
data = 0x100
eeprom:1.256

