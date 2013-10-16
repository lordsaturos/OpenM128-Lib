/* lcd12864st - Waveshare LCD12864ST functions
 *
 * Copyright (c) 2013, Sven Hesse <drmccoy@drmccoy.de>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#include <string.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include "lcd12864st.h"
#include "util.h"


// The buffer holding all character data
static char lcd12864st_buffer[LCD12864ST_LINES * LCD12864ST_COLUMNS];


// -- Internal LCD support functions --

#define LCD_DELAY() _delay_us(75)

static void lcd12864st_spi_send(uint8_t data) {
	SPDR = data;
	while (!(SPSR & (1 << SPIF)));
}

void lcd12864st_st7920_send_code(uint8_t code) {
	lcd12864st_spi_send(0xF8);

	lcd12864st_spi_send(code & 0xF0);
	lcd12864st_spi_send((code << 4));

	LCD_DELAY();
}

void lcd12864st_st7920_send_data(uint8_t data) {
	lcd12864st_spi_send(0xFA);

	lcd12864st_spi_send(data & 0xF0);
	lcd12864st_spi_send((data << 4));

	LCD_DELAY();
}


// -- Public LCD functions --

void lcd12864st_init() {
	// Set pin directions and set relevant pull-ups
	DDRB  |= 0x87;
	PORTB |= 0xF8;

	SPCR = 0x50; // Enable SPI + SPI master (no interrupt, MSB first, leading rising edge, fosc/4 clock)
	SPSR = 0x01; // Clear SPI status register, double SPI speed

	lcd12864st_st7920_send_code(0x0C);
	lcd12864st_st7920_send_code(0x01);

	_delay_ms(2);

	lcd12864st_clear();
	lcd12864st_refresh();
}

void lcd12864st_clear() {
	memset(lcd12864st_buffer, ' ', sizeof(lcd12864st_buffer));
}

void lcd12864st_clearLine(uint8_t line) {
	memset(lcd12864st_buffer + line * LCD12864ST_COLUMNS, ' ', LCD12864ST_COLUMNS);
}

void lcd12864st_print(uint8_t line, uint8_t column, const char *str) {
	if ((line >= LCD12864ST_LINES) || (column >= LCD12864ST_COLUMNS))
		return;

	char *data = lcd12864st_buffer + line * LCD12864ST_COLUMNS + column;

	memcpy(data, str, MIN(LCD12864ST_COLUMNS - column, strlen(str)));
}

void lcd12864st_print_P(uint8_t line, uint8_t column, const char *str) {
	if ((line >= LCD12864ST_LINES) || (column >= LCD12864ST_COLUMNS))
		return;

	char *data = lcd12864st_buffer + line * LCD12864ST_COLUMNS + column;

	memcpy_P(data, str, MIN(LCD12864ST_COLUMNS - column, strlen_P(str)));
}

void lcd12864st_refresh() {
	lcd12864st_st7920_send_code(0x02);

	// Send even lines
	for (uint8_t y = 0; y < LCD12864ST_LINES; y += 2)
		for (uint8_t x = 0; x < LCD12864ST_COLUMNS; x++)
			lcd12864st_st7920_send_data(lcd12864st_buffer[y * LCD12864ST_COLUMNS + x]);

	// Send odd lines
	for (uint8_t y = 1; y < LCD12864ST_LINES; y += 2)
		for (uint8_t x = 0; x < LCD12864ST_COLUMNS; x++)
			lcd12864st_st7920_send_data(lcd12864st_buffer[y * LCD12864ST_COLUMNS + x]);
}