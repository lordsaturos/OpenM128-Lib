NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0070   008E =    142. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0038  __text_start
       0038  __start
       005A  _exit
       005B  _timer1_init
       0069  _timer1_ovf_isr
       0079  _main
       007F  __text_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0024 =     36. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
1STimer1.o	[ _1STimer1.c ]
<library>	

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

