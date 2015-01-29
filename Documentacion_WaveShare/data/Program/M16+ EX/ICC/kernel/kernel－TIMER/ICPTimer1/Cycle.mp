NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   00AD =    173. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0101  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0102   0F36 =   3894. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0081  __start
       0081  __text_start
       00A1  _exit
       00A2  _speaData
       0101  _I2C_Start
       010E  _I2C_Restart
       011B  _I2C_SendWrDAdr
       0129  _I2C_SendWrDAdr_
       0143  _I2C_SendRdDAdr
       0151  _I2C_SendRdDAdr_
       016B  _I2C_SendDat
       0179  _I2C_RcvNAckDat
       0189  _I2C_RcvAckDat
       0199  _I2C_Write
       01BA  _I2C_Read
       01E7  _I2C_Read_
       0229  _delay50us
       023B  _delay50ms
       0251  _busy
       02B9  _write
       0345  _LCD1602_setCGRAM
       035E  _LCD1602_setCmd
       04F1  _LCD1602_init
       0560  _LCD1602_putc
       056D  _LCD1602_puts
       0581  _LCD1602_putd0
       05AC  _LCD1602_putd
       0664  _timer1_init
       066F  _timer1_capt_isr
       06DC  _timer1_ovf_isr
       06EE  _mcu_init
       06F7  _main
       071C  _strcmp
       0729  push_arg4
       072B  push_arg2
       072E  div32u
       0730  mod32u
       0734  div32s
       0736  mod32s
       0761  long_div_prolog
       0774  long_div_epilog
       0783  tst_R16_R19
       0788  tst_R24_R27
       078D  neg_R16_R19
       0796  neg_R24_R27
       079F  empy32s
       079F  empy32u
       07CF  pop_gset2
       07D2  pop_gset4
       07D5  pop_gset5
       07D8  push_gset5
       07DA  push_gset4
       07DC  push_gset3
       07DE  push_gset2
       07E0  push_gset1
       07E3  pop_gset1
       07E4  pop
       07F7  long_prolog
       0805  long_epilog
       0810  tstzero1
       0816  tstzero2
       081C  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   00AD =    173. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       0060  _LCD1602Err
       0066  _T1OvfTimes
       010D  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   010D   000B =     11. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       010D  _cycle
       010D  __bss_start
       0111  _bdat
       0112  _dataElem
       0118  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0024 =     36. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
CycleLower65535us.o	[ CycleLower65535us.c ]
<library>	[ strcmp.s, asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpop5.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:1.512

