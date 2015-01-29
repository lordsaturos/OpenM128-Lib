void errDisp()				
{
 	DISP_PORT = 0X55;
	delay50ms(4);
	DISP_PORT = 0X00;
	delay50ms(4);
	DISP_PORT = 0XAA;
	delay50ms(4);
	DISP_PORT = 0X00;
	delay50ms(4);
}

void twi_init()	 	 	
{
	TWBR = 0X03;		  
	TWSR &= 0XFC;		
}

void main(void)
{
	uint8 adr,WrDat,t;	
	uint8 *pRdDat=&t;	
	
	DISP_DDR = 0XFF;
	twi_init();

	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"AT24CXX-LCD12864");
	lcd_puts(2,1,"eeprom  液晶显示");
	lcd_puts(3,1,"内容:");	
	
	adr=0x20;			
	WrDat=99;			
	if( AT24CXX_Write(adr,WrDat)!=AT24CXX_ERR )	//AT24CXX写成功？
	{
		delay50ms(1);	
		if( AT24CXX_Read(adr,pRdDat)!=AT24CXX_ERR )	//AT24CXX读成功？
			lcd_putd(3,4,*pRdDat,3);   		
		else
			lcd_puts(3,4,"error"); 
	}	
	else
		lcd_puts(3,4,"error");   
	while(1);
}