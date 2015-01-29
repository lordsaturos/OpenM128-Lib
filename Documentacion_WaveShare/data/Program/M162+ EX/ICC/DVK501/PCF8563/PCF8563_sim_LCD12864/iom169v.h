#ifndef __iom169v_h
#define __iom169v_h












#define PINA	(*(volatile unsigned char *)0x20)
#define DDRA	(*(volatile unsigned char *)0x21)
#define PORTA	(*(volatile unsigned char *)0x22)


#define PINB	(*(volatile unsigned char *)0x23)
#define DDRB	(*(volatile unsigned char *)0x24)
#define PORTB	(*(volatile unsigned char *)0x25)


#define PINC	(*(volatile unsigned char *)0x26)
#define DDRC	(*(volatile unsigned char *)0x27)
#define PORTC	(*(volatile unsigned char *)0x28)


#define PIND	(*(volatile unsigned char *)0x29)
#define DDRD	(*(volatile unsigned char *)0x2a)
#define PORTD	(*(volatile unsigned char *)0x2b)


#define PINE	(*(volatile unsigned char *)0x2c)
#define DDRE	(*(volatile unsigned char *)0x2d)
#define PORTE	(*(volatile unsigned char *)0x2e)


#define PINF	(*(volatile unsigned char *)0x2f)
#define DDRF	(*(volatile unsigned char *)0x30)
#define PORTF	(*(volatile unsigned char *)0x31)


#define PING	(*(volatile unsigned char *)0x32)
#define DDRG	(*(volatile unsigned char *)0x33)
#define PORTG	(*(volatile unsigned char *)0x34)


#define GPIOR0	(*(volatile unsigned char *)0x3e)
#define GPIOR1	(*(volatile unsigned char *)0x4a)
#define GPIOR2	(*(volatile unsigned char *)0x4b)


#define EECR	(*(volatile unsigned char *)0x3f)
#define  EERIE    3
#define  EEMWE    2
#define  EEWE     1
#define  EERE     0
#define EEDR	(*(volatile unsigned char *)0x40)
#define EEAR	(*(volatile unsigned int *)0x41)
#define EEARL	(*(volatile unsigned char *)0x41)
#define EEARH	(*(volatile unsigned char *)0x42)


#define SPCR	(*(volatile unsigned char *)0x4c)
#define  SPIE     7
#define  SPE      6
#define  DORD     5
#define  MSTR     4
#define  CPOL     3
#define  CPHA     2
#define  SPR1     1
#define  SPR0     0
#define SPSR	(*(volatile unsigned char *)0x4d)
#define  SPIF     7
#define  WCOL     6
#define  SPI2X    0
#define SPDR	(*(volatile unsigned char *)0x4e)


#define ACSR	(*(volatile unsigned char *)0x50)
#define  ACD      7
#define  ACBG     6
#define  ACO      5
#define  ACI      4
#define  ACIE     3
#define  ACIC     2
#define  ACIS1    1
#define  ACIS0    0


#define OCDR	(*(volatile unsigned char *)0x51)
#define  IDRD     7
 










#define SMCR	(*(volatile unsigned char *)0x53)
#define  SM2      3
#define  SM1      2
#define  SM0      1
#define  SE       0

#define MCUCSR	(*(volatile unsigned char *)0x54)
#define MCUSR	(*(volatile unsigned char *)0x54)
#define	 JTRF     4
#define	 WDRF     3
#define  BORF     2
#define  EXTRF    1
#define  PORF     0
#define MCUCR	(*(volatile unsigned char *)0x55)
#define  JTD      7
#define  PUD      4
#define  IVSEL    1
#define  IVCE     0


#define SPMCSR	(*(volatile unsigned char *)0x57)
#define SPMCR	(*(volatile unsigned char *)0x57)
#define  SPMIE    7
#define  RWWSB    6
#define  RWWSRE   4
#define  BLBSET   3
#define  PGWRT    2
#define  PGERS    1
#define  SPMEN    0


#define SP	(*(volatile unsigned int *)0x5D)
#define SPL	(*(volatile unsigned char *)0x5D)
#define SPH	(*(volatile unsigned char *)0x5E)


#define SREG	(*(volatile unsigned char *)0x5F)



#define EIFR	(*(volatile unsigned char *)0x3c)
#define  PCIF1    7
#define  PCIF0    6
#define  INTF0    0
#define EIMSK	(*(volatile unsigned char *)0x3d)
#define  PCIE1    7
#define  PCIE0    6
#define  INT0     0


#define TIFR0	(*(volatile unsigned char *)0x35)
#define  OCF0A    1
#define  OCF0     1
#define  TOV0     0
#define TIFR1	(*(volatile unsigned char *)0x36)
#define  ICF1     5
#define  OCF1B    2
#define  OCF1A    1
#define  TOV1     0
#define TIFR2	(*(volatile unsigned char *)0x37)
#define  OCF2A    1
#define  OCF2     1
#define  TOV2     0


#define GTCCR	(*(volatile unsigned char *)0x43)
#define  TSM      7
#define  PSR2     1
#define  PSR10    0

#define  PSR1     PSR10
#define  PSR0     PSR10


#define TCCR0A	(*(volatile unsigned char *)0x44)
#define TCCR0	(*(volatile unsigned char *)0x44)
#define  FOC0     7
#define  FOC0A    7
#define  WGM00    6
#define  COM01    5
#define  COM00    4
#define  COM0A1   5
#define  COM0A0   4
#define  WGM01    3
#define  CS02     2
#define  CS01     1
#define  CS00     0
#define TCNT0	(*(volatile unsigned char *)0x46)
#define OCR0A	(*(volatile unsigned char *)0x47)
#define OCR0	(*(volatile unsigned char *)0x47)





#define WDTCR	(*(volatile unsigned char *)0x60)
#define  WDTOE    4
#define  WDCE     4
#define  WDE      3
#define  WDP2     2
#define  WDP1     1
#define  WDP0     0


#define CLKPR	(*(volatile unsigned char *)0x61)
#define  CLKPCE   7
#define  CLKPS3   3
#define  CLKPS2   2
#define  CLKPS1   1
#define  CLKPS0   0
#define OSCCAL	(*(volatile unsigned char *)0x66)


#define EICRA	(*(volatile unsigned char *)0x69)
#define  ISC01    1  
#define  ISC00    0



#define PCMSK0	(*(volatile unsigned char *)0x6b)

#define PCMSK1	(*(volatile unsigned char *)0x6c)


#define TIMSK0	(*(volatile unsigned char *)0x6e)
#define  OCIE0A   1
#define  OCIE0    1
#define  TOIE0    0
#define TIMSK1	(*(volatile unsigned char *)0x6f)
#define  TICIE1   5
#define  ICIE1    5  
#define  OCIE1B   2
#define  OCIE1A   1
#define  TOIE1    0
#define TIMSK2	(*(volatile unsigned char *)0x70)
#define  OCIE2A   1
#define  OCIE2    1
#define  TOIE2    0


#define TCCR1A	(*(volatile unsigned char *)0x80)
#define  COM1A1   7
#define  COM1A0   6
#define  COM1B1   5
#define  COM1B0   4
#define  WGM11    1
#define  WGM10    0
#define TCCR1B	(*(volatile unsigned char *)0x81)
#define  ICNC1    7
#define  ICES1    6
#define  WGM13    4
#define  WGM12    3
#define  CS12     2
#define  CS11     1
#define  CS10     0
#define TCCR1C	(*(volatile unsigned char *)0x82)
#define  FOC1A    7
#define  FOC1B    6
#define TCNT1	(*(volatile unsigned int *)0x84)
#define TCNT1L	(*(volatile unsigned char *)0x84)
#define TCNT1H	(*(volatile unsigned char *)0x85)
#define ICR1	(*(volatile unsigned int *)0x86)
#define ICR1L	(*(volatile unsigned char *)0x86)
#define ICR1H	(*(volatile unsigned char *)0x87)
#define OCR1A	(*(volatile unsigned int *)0x88)
#define OCR1AL	(*(volatile unsigned char *)0x88)
#define OCR1AH	(*(volatile unsigned char *)0x89)
#define OCR1B	(*(volatile unsigned int *)0x8a)
#define OCR1BL	(*(volatile unsigned char *)0x8a)
#define OCR1BH	(*(volatile unsigned char *)0x8b)


#define TCCR2A	(*(volatile unsigned char *)0xb0)
#define TCCR2	(*(volatile unsigned char *)0xb0)
#define  FOC2     7
#define  FOC2A    7
#define  WGM20    6
#define  COM21    5
#define  COM20    4
#define  COM2A1   5
#define  COM2A0   4
#define  WGM21    3
#define  CS22     2
#define  CS21     1
#define  CS20     0
#define TCNT2	(*(volatile unsigned char *)0xb2)
#define OCR2A	(*(volatile unsigned char *)0xb3)
#define OCR2	(*(volatile unsigned char *)0xb3)
#define ASSR	(*(volatile unsigned char *)0xb6)
#define  EXCLK    4
#define  AS2      3
#define  TCN2UB   2
#define  OCR2UB   1
#define  TCR2UB   0


#define ADC 	(*(volatile unsigned int *)0x78)
#define ADCL	(*(volatile unsigned char *)0x78)
#define ADCH	(*(volatile unsigned char *)0x79)
#define ADCSRA	(*(volatile unsigned char *)0x7a)
#define  ADEN     7
#define  ADSC     6
#define  ADATE    5
#define  ADFR     5
#define  ADIF     4
#define  ADIE     3
#define  ADPS2    2
#define  ADPS1    1
#define  ADPS0    0
#define ADCSRB	(*(volatile unsigned char *)0x7b)
#define  ADHSM    7
#define  ACME     6
#define  ADTS2    2
#define  ADTS1    1
#define  ADTS0    0
#define ADMUX	(*(volatile unsigned char *)0x7c)
#define  REFS1    7
#define  REFS0    6
#define  ADLAR    5
#define  MUX4     4
#define  MUX3     3
#define  MUX2     2
#define  MUX1     1
#define  MUX0     0

#define DIDR0	(*(volatile unsigned char *)0x7e)
#define  ADC7D    7
#define  ADC6D    6
#define  ADC5D    5
#define  ADC4D    4
#define  ADC3D    3
#define  ADC2D    2
#define  ADC1D    1
#define  ADC0D    0
#define DIDR1	(*(volatile unsigned char *)0x7f)
#define  AIN1D    1
#define  AIN0D    0


#define USICR	(*(volatile unsigned char *)0xb8)
#define  USISIE   7
#define  USIOIE   6
#define  USIWM1   5
#define  USIWM0   4
#define  USICS1   3
#define  USICS0   2
#define  USICLK   1
#define  USITC    0
#define USISR	(*(volatile unsigned char *)0xb9)
#define  USISIF   7
#define  USIOIF   6
#define  USIPF    5
#define  USIDC    4
#define  USICNT3  3
#define  USICNT2  2
#define  USICNT1  1
#define  USICNT0  0
#define USIDR	(*(volatile unsigned char *)0xba)


#define UCSR0A	(*(volatile unsigned char *)0xc0)
#define UCSRA	(*(volatile unsigned char *)0xc0)
#define  RXC0     7
#define  TXC0     6
#define  UDRE0    5
#define  FE0      4
#define  DOR0     3
#define  UPE0     2
#define  U2X0     1
#define  MPCM0    0
#define  RXC      7
#define  TXC      6
#define  UDRE     5
#define  FE       4
#define  DOR      3
#define  OVR      3    
#define  UPE      2
#define  PE       2
#define  U2X      1
#define  MPCM     0
#define UCSR0B	(*(volatile unsigned char *)0xc1)
#define UCSRB	(*(volatile unsigned char *)0xc1)
#define  RXCIE0   7
#define  TXCIE0   6
#define  UDRIE0   5
#define  RXEN0    4
#define  TXEN0    3
#define  UCSZ02   2
#define  RXB80    1
#define  TXB80    0
#define  RXCIE    7
#define  TXCIE    6
#define  UDRIE    5
#define  RXEN     4
#define  TXEN     3
#define  UCSZ2    2
#define  RXB8     1
#define  TXB8     0
#define UCSR0C	(*(volatile unsigned char *)0xc2)
#define UCSRC	(*(volatile unsigned char *)0xc2)
#define  UMSEL0   6
#define  UPM01    5
#define  UPM00    4
#define  USBS0    3
#define  UCSZ01   2
#define  UCSZ00   1
#define  UCPOL0   0
#define  UMSEL    6
#define  UPM1     5
#define  UPM0     4
#define  USBS     3
#define  UCSZ1    2
#define  UCSZ0    1
#define  UCPOL    0
#define UBRR0L	(*(volatile unsigned char *)0xc4)
#define UBRRL	(*(volatile unsigned char *)0xc4)
#define UBRR0H	(*(volatile unsigned char *)0xc5)
#define UBRRH	(*(volatile unsigned char *)0xc5)
#define UDR0	(*(volatile unsigned char *)0xc6)
#define UDR 	(*(volatile unsigned char *)0xc6)


#define LCDCRA	(*(volatile unsigned char *)0xe4)
#define  LCDEN    7
#define  LCDAB    6
#define  LCDIF    4
#define  LCDIE    3
#define  LCDBL    0
#define LCDCRB	(*(volatile unsigned char *)0xe5)
#define  LCDCS    7
#define  LCD2B    6  
#define  LCDMUX1  5
#define  LCDMUX0  4
#define  LCDPM2   2
#define  LCDPM1   1
#define  LCDPM0   0
#define LCDFRR	(*(volatile unsigned char *)0xe6)
#define  LCDPS2   6
#define  LCDPS1   5
#define  LCDPS0   4
#define  LCDCD2   2
#define  LCDCD1   1
#define  LCDCD0   0
#define LCDCCR	(*(volatile unsigned char *)0xe7)
#define  LCDCC3   3
#define  LCDCC2   2
#define  LCDCC1   1
#define  LCDCC0   0
#define LCDDR0	(*(volatile unsigned char *)0xec)
#define LCDDR1	(*(volatile unsigned char *)0xed)
#define LCDDR2	(*(volatile unsigned char *)0xee)
#define LCDDR3	(*(volatile unsigned char *)0xef)
#define LCDDR5	(*(volatile unsigned char *)0xf1)
#define LCDDR6	(*(volatile unsigned char *)0xf2)
#define LCDDR7	(*(volatile unsigned char *)0xf3)
#define LCDDR8	(*(volatile unsigned char *)0xf4)
#define LCDDR10	(*(volatile unsigned char *)0xf6)
#define LCDDR11	(*(volatile unsigned char *)0xf7)
#define LCDDR12	(*(volatile unsigned char *)0xf8)
#define LCDDR13	(*(volatile unsigned char *)0xf9)
#define LCDDR15	(*(volatile unsigned char *)0xfb)
#define LCDDR16	(*(volatile unsigned char *)0xfc)
#define LCDDR17	(*(volatile unsigned char *)0xfd)
#define LCDDR18	(*(volatile unsigned char *)0xfe)




#define  PORTA7   7
#define  PORTA6   6
#define  PORTA5   5
#define  PORTA4   4
#define  PORTA3   3
#define  PORTA2   2
#define  PORTA1   1
#define  PORTA0   0
#define  PA7      7
#define  PA6      6
#define  PA5      5
#define  PA4      4
#define  PA3      3
#define  PA2      2
#define  PA1      1
#define  PA0      0

#define  DDA7     7
#define  DDA6     6
#define  DDA5     5
#define  DDA4     4
#define  DDA3     3
#define  DDA2     2
#define  DDA1     1
#define  DDA0     0

#define  PINA7    7
#define  PINA6    6
#define  PINA5    5
#define  PINA4    4
#define  PINA3    3
#define  PINA2    2
#define  PINA1    1
#define  PINA0    0


#define  PORTB7   7
#define  PORTB6   6
#define  PORTB5   5
#define  PORTB4   4
#define  PORTB3   3
#define  PORTB2   2
#define  PORTB1   1
#define  PORTB0   0
#define  PB7      7
#define  PB6      6
#define  PB5      5
#define  PB4      4
#define  PB3      3
#define  PB2      2
#define  PB1      1
#define  PB0      0

#define  DDB7     7
#define  DDB6     6
#define  DDB5     5
#define  DDB4     4
#define  DDB3     3
#define  DDB2     2
#define  DDB1     1
#define  DDB0     0

#define  PINB7    7
#define  PINB6    6
#define  PINB5    5
#define  PINB4    4
#define  PINB3    3
#define  PINB2    2
#define  PINB1    1
#define  PINB0    0


#define  PORTC7   7
#define  PORTC6   6
#define  PORTC5   5
#define  PORTC4   4
#define  PORTC3   3
#define  PORTC2   2
#define  PORTC1   1
#define  PORTC0   0
#define  PC7      7
#define  PC6      6
#define  PC5      5
#define  PC4      4
#define  PC3      3
#define  PC2      2
#define  PC1      1
#define  PC0      0

#define  DDC7     7
#define  DDC6     6
#define  DDC5     5
#define  DDC4     4
#define  DDC3     3
#define  DDC2     2
#define  DDC1     1
#define  DDC0     0

#define  PINC7    7
#define  PINC6    6
#define  PINC5    5
#define  PINC4    4
#define  PINC3    3
#define  PINC2    2
#define  PINC1    1
#define  PINC0    0


#define  PORTD7   7
#define  PORTD6   6
#define  PORTD5   5
#define  PORTD4   4
#define  PORTD3   3
#define  PORTD2   2
#define  PORTD1   1
#define  PORTD0   0
#define  PD7      7
#define  PD6      6
#define  PD5      5
#define  PD4      4
#define  PD3      3
#define  PD2      2
#define  PD1      1
#define  PD0      0

#define  DDD7     7
#define  DDD6     6
#define  DDD5     5
#define  DDD4     4
#define  DDD3     3
#define  DDD2     2
#define  DDD1     1
#define  DDD0     0

#define  PIND7    7
#define  PIND6    6
#define  PIND5    5
#define  PIND4    4
#define  PIND3    3
#define  PIND2    2
#define  PIND1    1
#define  PIND0    0


#define  PORTE7   7
#define  PORTE6   6
#define  PORTE5   5
#define  PORTE4   4
#define  PORTE3   3
#define  PORTE2   2
#define  PORTE1   1
#define  PORTE0   0
#define  PE7      7
#define  PE6      6
#define  PE5      5
#define  PE4      4
#define  PE3      3
#define  PE2      2
#define  PE1      1
#define  PE0      0

#define  DDE7     7
#define  DDE6     6
#define  DDE5     5
#define  DDE4     4
#define  DDE3     3
#define  DDE2     2
#define  DDE1     1
#define  DDE0     0

#define  PINE7    7
#define  PINE6    6
#define  PINE5    5
#define  PINE4    4
#define  PINE3    3
#define  PINE2    2
#define  PINE1    1
#define  PINE0    0


#define  PORTF7   7
#define  PORTF6   6
#define  PORTF5   5
#define  PORTF4   4
#define  PORTF3   3
#define  PORTF2   2
#define  PORTF1   1
#define  PORTF0   0
#define  PF7      7
#define  PF6      6
#define  PF5      5
#define  PF4      4
#define  PF3      3
#define  PF2      2
#define  PF1      1
#define  PF0      0

#define  DDF7     7
#define  DDF6     6
#define  DDF5     5
#define  DDF4     4
#define  DDF3     3
#define  DDF2     2
#define  DDF1     1
#define  DDF0     0

#define  PINF7    7
#define  PINF6    6
#define  PINF5    5
#define  PINF4    4
#define  PINF3    3
#define  PINF2    2
#define  PINF1    1
#define  PINF0    0


#define  PORTG5   5
#define  PORTG4   4
#define  PORTG3   3
#define  PORTG2   2
#define  PORTG1   1
#define  PORTG0   0
#define  PG5      5
#define  PG4      4
#define  PG3      3
#define  PG2      2
#define  PG1      1
#define  PG0      0

#define  DDG4     4
#define  DDG3     3
#define  DDG2     2
#define  DDG1     1
#define  DDG0     0

#define  PING5    5
#define  PING4    4
#define  PING3    3
#define  PING2    2
#define  PING1    1
#define  PING0    0


#define  SEG24    0

#define  SEG23    7
#define  SEG22    6
#define  SEG21    5
#define  SEG20    4
#define  SEG19    3
#define  SEG18    2
#define  SEG17    1  
#define  SEG16    0

#define  SEG15    7
#define  SEG14    6
#define  SEG13    5
#define  SEG12    4
#define  SEG11    3
#define  SEG10    2
#define  SEG9     1
#define  SEG8     0

#define  SEG7     7
#define  SEG6     6
#define  SEG5     5
#define  SEG4     4
#define  SEG3     3
#define  SEG2     2
#define  SEG1     1
#define  SEG0     0



#define  PCINT15  7
#define  PCINT14  6
#define  PCINT13  5
#define  PCINT12  4
#define  PCINT11  3
#define  PCINT10  2
#define  PCINT9   1
#define  PCINT8   0

#define  PCINT7   7
#define  PCINT6   6
#define  PCINT5   5
#define  PCINT4   4
#define  PCINT3   3
#define  PCINT2   2
#define  PCINT1   1
#define  PCINT0   0




#define  BLB12    5
#define  BLB11    4
#define  BLB02    3
#define  BLB01    2
#define  LB2      1
#define  LB1      0


#define  BODLEVEL 7
#define  BODEN    6
#define  SUT1     5
#define  SUT0     4
#define  CKSEL3   3
#define  CKSEL2   2
#define  CKSEL1   1
#define  CKSEL0   0


#define  OCDEN    7
#define  JTAGEN   6
#define  SPIEN    5
#define  CKOPT    4
#define  EESAVE   3
#define  BOOTSZ1  2
#define  BOOTSZ0  1
#define  BOOTRST  0




#define iv_RESET        1
#define iv_INT0         2
#define iv_PC_INT0      3
#define iv_PC_INT1      4
#define iv_TIMER2_COMPA 5
#define iv_TIMER2_COMP  5
#define iv_TIMER2_OVF   6
#define iv_TIMER1_CAPT  7
#define iv_TIMER1_COMPA 8
#define iv_TIMER1_COMPB 9
#define iv_TIMER1_OVF   10
#define iv_TIMER0_COMPA 11
#define iv_TIMER0_COMP  11
#define iv_TIMER0_OVF   12
#define iv_SPI_STC      13
#define iv_UART_RX      14
#define iv_UART_RXC     14
#define iv_UART0_RXC    14
#define iv_UART_DRE     15
#define iv_UART_UDRE    15
#define iv_UART0_UDRE   15
#define iv_UART_TX      16
#define iv_UART_TXC     16
#define iv_UART0_TXC    16
#define iv_USI_START    17
#define iv_USI_OVF      18
#define iv_ANA_COMP     19
#define iv_ANALOG_COMP  19
#define iv_ADC          20
#define iv_EE_RDY       21
#define iv_EE_READY     21
#define iv_SPM_RDY      22
#define iv_SPM_READY    22
#define iv_LCD_FRAME    23



#endif
