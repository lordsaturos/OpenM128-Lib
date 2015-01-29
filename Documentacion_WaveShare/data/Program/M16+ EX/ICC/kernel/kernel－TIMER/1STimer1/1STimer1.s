	.module _1STimer1.c
	.area text(rom, con, rel)
	.dbfile E:\΢ѩ����CD1\��Ʒ����\������ʵ���\SMKϵ��\SMK1632\ʵ��̳�\�ں˼��������ʵ��\�ںˣ�TIMER\1STimer1\1STimer1.c
	.dbfunc e timer1_init _timer1_init fV
	.even
_timer1_init::
	.dbline -1
	.dbline 54
; /*********************************************************************
; 	΢ ѩ �� ��   WaveShare   http://www.waveShare.net            	
; 		                                                        
; Ŀ    ��:   ����ʹ��Timer1��1S��ʱ��ʾ������
; 	
; Ŀ��ϵͳ:   ����AVR��Ƭ��
; 		                                                                
; Ӧ�����:   ICCAVR
; 		                                                                
; ��    ��:   Version 1.0                                                          
; 		                                                                
; Բ��ʱ��:   2005-06-25
; 	
; ������Ա:   SEE
; 
; ˵    ��:   ��������ҵ��;���뱣���˶����ֻ�ע��������Դ
; 	
; 	�� �� �� ΢ ѩ �� �� �� �� �� ˾ �� �� �� �� �� �� Ȩ     
; *********************************************************************/
; 
; /*01010101010101010101010101010101010101010101010101010101010101010101
; ---------------------------------------------------------------------
; �汾���¼�¼��
; 
; ----------------------------------------------------------------------
; ʵ�����ݣ�
; ʹ��TIMER1��1S��ʱ����ʹ��PD�ڵ�LEDָʾ����ָʾ��
; ----------------------------------------------------------------------
; Ӳ�����ӣ�	
; ��PD�ڵ�LEDָʾ��ʹ�ܿ����л���"ON"״̬��
; ----------------------------------------------------------------------
; ע����� 
; ��1�����м��ؿ⺯�����뽫���̸�Ŀ¼�µġ��⺯�����µġ�ICC_H���ļ��п���D��
; ��2������ϸ�Ķ������̸�Ŀ¼�µġ���Ʒ����\������ʵ���\SMKϵ��\SMK1632\˵�����ϡ�
; 		
; ----------------------------------------------------------------------
; 10101010101010101010101010101010101010101010101010101010101010101010*/
; 
; #include <iom16v.h>
; #include <macros.h>
; 
; #define DISP_DDR   DDRD
; #define DISP_PORT  PORTD
; 
; /*--------------------------------------------------------------------
; �������ƣ�
; �������ܣ�
; ע�����
; ��ʾ˵����
; ��    �룺
; ��    �أ�
; --------------------------------------------------------------------*/
; void timer1_init(void)
; {
	.dbline 55
; 	TCCR1B = 0x00;		//stop timer
	clr R2
	out 0x2e,R2
	.dbline 57
; 
; 	TCNT1H = 0xE3;		//���� TC1 �� �����Ĵ��� ��8λֵ
	ldi R24,227
	out 0x2d,R24
	.dbline 58
; 	TCNT1L = 0xE1;		//���� TC1 �� �����Ĵ��� ��8λֵ
	ldi R24,225
	out 0x2c,R24
	.dbline 69
; 
; 	//OCR1AH = 0x1C;	//���� TC1 �� ����ȽϼĴ���A ��8λֵ
; 	//OCR1AL = 0x20;	//���� TC1 �� ����ȽϼĴ���A ��8λֵ
; 
; 	//OCR1BH = 0x1C;	//���� TC1 �� ����ȽϼĴ���B ��8λֵ
; 	//OCR1BL = 0x20;	//���� TC1 �� ����ȽϼĴ���B ��8λֵ
; 
; 	//ICR1H  = 0x1C;	//���� TC1 �� ���벶��Ĵ��� ��8λֵ
; 	//ICR1L  = 0x20;	//���� TC1 �� ���벶��Ĵ��� ��8λֵ
; 
; 	TCCR1A = 0x00;
	out 0x2f,R2
	.dbline 70
; 	TCCR1B = 0x05;		//����TC1 Ϊ CLK/1024��Ƶ������TC1
	ldi R24,5
	out 0x2e,R24
	.dbline 72
; 
; 	MCUCR = 0x00;		//���� MCU �� ���ƼĴ���
	out 0x35,R2
	.dbline 73
; 	GICR  = 0x00;		//���� �жϿ��ƼĴ���
	out 0x3b,R2
	.dbline 74
; 	TIMSK = 0x04;		//���� ��ʱ������ �� ���μĴ���
	ldi R24,4
	out 0x39,R24
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbend
	.area vector(rom, abs)
	.org 32
	jmp _timer1_ovf_isr
	.area text(rom, con, rel)
	.dbfile E:\΢ѩ����CD1\��Ʒ����\������ʵ���\SMKϵ��\SMK1632\ʵ��̳�\�ں˼��������ʵ��\�ںˣ�TIMER\1STimer1\1STimer1.c
	.dbfunc e timer1_ovf_isr _timer1_ovf_isr fV
	.even
_timer1_ovf_isr::
	st -y,R24
	st -y,R25
	in R24,0x3f
	st -y,R24
	.dbline -1
	.dbline 87
; 	//SEI();			//enable interrupts
; }
; /*--------------------------------------------------------------------
; �������ƣ�
; �������ܣ�
; ע�����
; ��ʾ˵����
; ��    �룺
; ��    �أ�
; --------------------------------------------------------------------*/
; #pragma interrupt_handler timer1_ovf_isr:9
; void timer1_ovf_isr(void)
; {
	.dbline 88
; 	TCNT1H = 0xE3;		//reload counter high value
	ldi R24,227
	out 0x2d,R24
	.dbline 89
; 	TCNT1L = 0xE1;		//reload counter low value
	ldi R24,225
	out 0x2c,R24
	.dbline 90
; 	DISP_PORT++;
	in R24,0x12
	subi R24,255    ; addi 1
	out 0x12,R24
	.dbline -2
L2:
	ld R24,y+
	out 0x3f,R24
	ld R25,y+
	ld R24,y+
	.dbline 0 ; func end
	reti
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 101
; }
; /*--------------------------------------------------------------------
; �������ƣ�
; �������ܣ�
; ע�����
; ��ʾ˵����
; ��    �룺
; ��    �أ�
; --------------------------------------------------------------------*/
; void main(void)
; {
	.dbline 102
; 	DISP_DDR = 0XFF;
	ldi R24,255
	out 0x11,R24
	.dbline 103
; 	timer1_init();
	xcall _timer1_init
	.dbline 104
; 	SEI();
	sei
L4:
	.dbline 105
L5:
	.dbline 105
	xjmp L4
X0:
	.dbline -2
L3:
	.dbline 0 ; func end
	ret
	.dbend
