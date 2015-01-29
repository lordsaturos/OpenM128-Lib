NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0070   0018 =     24. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0070  __lit_start
       0070  _userCh0
       0078  _userCh1
       0080  _userCh2
       0088  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0088   00A3 =    163. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0088  __idata_start
       012B  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   012C   0C1E =   3102. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0096  __text_start
       0096  __start
       00B6  _exit
       00B7  _speaData
       0116  _delay50us
       0128  _delay50ms
       013E  _delayus
       014C  _busy
       01B4  _write
       0240  _LCD1602_setCGRAM
       0259  _LCD1602_setCmd
       03EC  _LCD1602_init
       045B  _LCD1602_putc
       0468  _LCD1602_puts
       047C  _LCD1602_putd0
       04A7  _LCD1602_putd
       055F  _main
       05A5  _strcmp
       05B2  push_arg4
       05B4  push_arg2
       05B7  div32u
       05B9  mod32u
       05BD  div32s
       05BF  mod32s
       05EA  long_div_prolog
       05FD  long_div_epilog
       060C  tst_R16_R19
       0611  tst_R24_R27
       0616  neg_R16_R19
       061F  neg_R24_R27
       0628  empy32u
       0628  empy32s
       0658  pop_gset2
       065B  pop_gset4
       065E  pop_gset5
       0661  push_gset5
       0663  push_gset4
       0665  push_gset3
       0667  push_gset2
       0669  push_gset1
       066C  pop_gset1
       066D  pop
       0680  long_prolog
       068E  long_epilog
       0699  tstzero1
       069F  tstzero2
       06A5  __text_end

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

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:1.512

