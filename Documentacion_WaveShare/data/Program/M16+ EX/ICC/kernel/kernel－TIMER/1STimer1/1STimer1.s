	.module _1STimer1.c
	.area text(rom, con, rel)
	.dbfile E:\微雪电子CD1\产品资料\开发板实验板\SMK系列\SMK1632\实验教程\内核及主板相关实验\内核－TIMER\1STimer1\1STimer1.c
	.dbfunc e timer1_init _timer1_init fV
	.even
_timer1_init::
	.dbline -1
	.dbline 54
; /*********************************************************************
; 	微 雪 电 子   WaveShare   http://www.waveShare.net            	
; 		                                                        
; 目    的:   建立使用Timer1做1S定时的示例程序
; 	
; 目标系统:   基于AVR单片机
; 		                                                                
; 应用软件:   ICCAVR
; 		                                                                
; 版    本:   Version 1.0                                                          
; 		                                                                
; 圆版时间:   2005-06-25
; 	
; 开发人员:   SEE
; 
; 说    明:   若用于商业用途，请保留此段文字或注明代码来源
; 	
; 	深 圳 市 微 雪 电 子 有 限 公 司 保 留 所 有 的 版 权     
; *********************************************************************/
; 
; /*01010101010101010101010101010101010101010101010101010101010101010101
; ---------------------------------------------------------------------
; 版本更新记录：
; 
; ----------------------------------------------------------------------
; 实验内容：
; 使用TIMER1做1S定时，并使用PD口的LED指示灯做指示。
; ----------------------------------------------------------------------
; 硬件连接：	
; 将PD口的LED指示灯使能开关切换到"ON"状态。
; ----------------------------------------------------------------------
; 注意事项： 
; （1）若有加载库函数，请将光盘根目录下的“库函数”下的“ICC_H”文件夹拷到D盘
; （2）请详细阅读：光盘根目录下的“产品资料\开发板实验板\SMK系列\SMK1632\说明资料”
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
; 函数名称：
; 函数功能：
; 注意事项：
; 提示说明：
; 输    入：
; 返    回：
; --------------------------------------------------------------------*/
; void timer1_init(void)
; {
	.dbline 55
; 	TCCR1B = 0x00;		//stop timer
	clr R2
	out 0x2e,R2
	.dbline 57
; 
; 	TCNT1H = 0xE3;		//设置 TC1 的 计数寄存器 高8位值
	ldi R24,227
	out 0x2d,R24
	.dbline 58
; 	TCNT1L = 0xE1;		//设置 TC1 的 计数寄存器 低8位值
	ldi R24,225
	out 0x2c,R24
	.dbline 69
; 
; 	//OCR1AH = 0x1C;	//设置 TC1 的 输出比较寄存器A 高8位值
; 	//OCR1AL = 0x20;	//设置 TC1 的 输出比较寄存器A 低8位值
; 
; 	//OCR1BH = 0x1C;	//设置 TC1 的 输出比较寄存器B 高8位值
; 	//OCR1BL = 0x20;	//设置 TC1 的 输出比较寄存器B 低8位值
; 
; 	//ICR1H  = 0x1C;	//设置 TC1 的 输入捕获寄存器 高8位值
; 	//ICR1L  = 0x20;	//设置 TC1 的 输入捕获寄存器 低8位值
; 
; 	TCCR1A = 0x00;
	out 0x2f,R2
	.dbline 70
; 	TCCR1B = 0x05;		//设置TC1 为 CLK/1024分频，启动TC1
	ldi R24,5
	out 0x2e,R24
	.dbline 72
; 
; 	MCUCR = 0x00;		//设置 MCU 的 控制寄存器
	out 0x35,R2
	.dbline 73
; 	GICR  = 0x00;		//设置 中断控制寄存器
	out 0x3b,R2
	.dbline 74
; 	TIMSK = 0x04;		//设置 定时计数器 的 屏蔽寄存器
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
	.dbfile E:\微雪电子CD1\产品资料\开发板实验板\SMK系列\SMK1632\实验教程\内核及主板相关实验\内核－TIMER\1STimer1\1STimer1.c
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
; 函数名称：
; 函数功能：
; 注意事项：
; 提示说明：
; 输    入：
; 返    回：
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
; 函数名称：
; 函数功能：
; 注意事项：
; 提示说明：
; 输    入：
; 返    回：
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
