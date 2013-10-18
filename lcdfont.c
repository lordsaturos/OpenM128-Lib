/* lcdfont - LCD-friendly fonts
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

#include <avr/pgmspace.h>

#include "lcdfont.h"

#if LCDFONT_8X16REGULAR == 1
/** This is the Terminus 8x16 regular font (<http://terminus-font.sourceforge.net/>) version 4.38 by
 *  Dimitar Zhekov <dimitar.zhekov@gmail.com>. The ll2 patch has been applied.
 *
 *  The Terminus Font is licensed under the SIL Open Font License, Version 1.1. The license is included
 *  as OFL.TXT, and is also available with a FAQ at <http://scripts.sil.org/OFL>.
 */
const uint8_t lcdfont_8x16regular[128 * 16] PROGMEM = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x00
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x01
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x02
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x03
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x04
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x05
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x06
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x07
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x08
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x09
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0A
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0B
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0C
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0D
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0E
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0F
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x10
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x11
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x12
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x13
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x14
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x15
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x16
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x17
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x18
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x19
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1A
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1B
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1C
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1D
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1E
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1F
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x20 (' ')
	0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, // 0x21 ('!')
	0x00, 0x24, 0x24, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x22 ('"')
	0x00, 0x00, 0x24, 0x24, 0x24, 0x7E, 0x24, 0x24, 0x7E, 0x24, 0x24, 0x24, 0x00, 0x00, 0x00, 0x00, // 0x23 ('#')
	0x00, 0x10, 0x10, 0x7C, 0x92, 0x90, 0x90, 0x7C, 0x12, 0x12, 0x92, 0x7C, 0x10, 0x10, 0x00, 0x00, // 0x24 ('$')
	0x00, 0x00, 0x64, 0x94, 0x68, 0x08, 0x10, 0x10, 0x20, 0x2C, 0x52, 0x4C, 0x00, 0x00, 0x00, 0x00, // 0x25 ('%')
	0x00, 0x00, 0x18, 0x24, 0x24, 0x18, 0x30, 0x4A, 0x44, 0x44, 0x44, 0x3A, 0x00, 0x00, 0x00, 0x00, // 0x26 ('&')
	0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x27 (''')
	0x00, 0x00, 0x08, 0x10, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x10, 0x08, 0x00, 0x00, 0x00, 0x00, // 0x28 ('(')
	0x00, 0x00, 0x20, 0x10, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x10, 0x20, 0x00, 0x00, 0x00, 0x00, // 0x29 (')')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x18, 0x7E, 0x18, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x2A ('*')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x7C, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x2B ('+')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x20, 0x00, 0x00, 0x00, // 0x2C (',')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x2D ('-')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, // 0x2E ('.')
	0x00, 0x00, 0x04, 0x04, 0x08, 0x08, 0x10, 0x10, 0x20, 0x20, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, // 0x2F ('/')
	0x00, 0x00, 0x3C, 0x42, 0x42, 0x46, 0x4A, 0x52, 0x62, 0x42, 0x42, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x30 ('0')
	0x00, 0x00, 0x08, 0x18, 0x28, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x3E, 0x00, 0x00, 0x00, 0x00, // 0x31 ('1')
	0x00, 0x00, 0x3C, 0x42, 0x42, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x7E, 0x00, 0x00, 0x00, 0x00, // 0x32 ('2')
	0x00, 0x00, 0x3C, 0x42, 0x42, 0x02, 0x1C, 0x02, 0x02, 0x42, 0x42, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x33 ('3')
	0x00, 0x00, 0x02, 0x06, 0x0A, 0x12, 0x22, 0x42, 0x7E, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, // 0x34 ('4')
	0x00, 0x00, 0x7E, 0x40, 0x40, 0x40, 0x7C, 0x02, 0x02, 0x02, 0x42, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x35 ('5')
	0x00, 0x00, 0x1C, 0x20, 0x40, 0x40, 0x7C, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x36 ('6')
	0x00, 0x00, 0x7E, 0x02, 0x02, 0x04, 0x04, 0x08, 0x08, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, // 0x37 ('7')
	0x00, 0x00, 0x3C, 0x42, 0x42, 0x42, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x38 ('8')
	0x00, 0x00, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x3E, 0x02, 0x02, 0x04, 0x38, 0x00, 0x00, 0x00, 0x00, // 0x39 ('9')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x00, 0x00, 0x00, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, // 0x3A (':')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x00, 0x00, 0x00, 0x10, 0x10, 0x20, 0x00, 0x00, 0x00, // 0x3B (';')
	0x00, 0x00, 0x00, 0x04, 0x08, 0x10, 0x20, 0x40, 0x20, 0x10, 0x08, 0x04, 0x00, 0x00, 0x00, 0x00, // 0x3C ('<')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x7E, 0x00, 0x00, 0x7E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x3D ('=')
	0x00, 0x00, 0x00, 0x40, 0x20, 0x10, 0x08, 0x04, 0x08, 0x10, 0x20, 0x40, 0x00, 0x00, 0x00, 0x00, // 0x3E ('>')
	0x00, 0x00, 0x3C, 0x42, 0x42, 0x42, 0x04, 0x08, 0x08, 0x00, 0x08, 0x08, 0x00, 0x00, 0x00, 0x00, // 0x3F ('?')
	0x00, 0x00, 0x7C, 0x82, 0x9E, 0xA2, 0xA2, 0xA2, 0xA6, 0x9A, 0x80, 0x7E, 0x00, 0x00, 0x00, 0x00, // 0x40 ('@')
	0x00, 0x00, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x7E, 0x42, 0x42, 0x42, 0x42, 0x00, 0x00, 0x00, 0x00, // 0x41 ('A')
	0x00, 0x00, 0x7C, 0x42, 0x42, 0x42, 0x7C, 0x42, 0x42, 0x42, 0x42, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x42 ('B')
	0x00, 0x00, 0x3C, 0x42, 0x42, 0x40, 0x40, 0x40, 0x40, 0x42, 0x42, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x43 ('C')
	0x00, 0x00, 0x78, 0x44, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x44, 0x78, 0x00, 0x00, 0x00, 0x00, // 0x44 ('D')
	0x00, 0x00, 0x7E, 0x40, 0x40, 0x40, 0x78, 0x40, 0x40, 0x40, 0x40, 0x7E, 0x00, 0x00, 0x00, 0x00, // 0x45 ('E')
	0x00, 0x00, 0x7E, 0x40, 0x40, 0x40, 0x78, 0x40, 0x40, 0x40, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, // 0x46 ('F')
	0x00, 0x00, 0x3C, 0x42, 0x42, 0x40, 0x40, 0x4E, 0x42, 0x42, 0x42, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x47 ('G')
	0x00, 0x00, 0x42, 0x42, 0x42, 0x42, 0x7E, 0x42, 0x42, 0x42, 0x42, 0x42, 0x00, 0x00, 0x00, 0x00, // 0x48 ('H')
	0x00, 0x00, 0x38, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x38, 0x00, 0x00, 0x00, 0x00, // 0x49 ('I')
	0x00, 0x00, 0x0E, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x44, 0x44, 0x38, 0x00, 0x00, 0x00, 0x00, // 0x4A ('J')
	0x00, 0x00, 0x42, 0x44, 0x48, 0x50, 0x60, 0x60, 0x50, 0x48, 0x44, 0x42, 0x00, 0x00, 0x00, 0x00, // 0x4B ('K')
	0x00, 0x00, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x7E, 0x00, 0x00, 0x00, 0x00, // 0x4C ('L')
	0x00, 0x00, 0x82, 0xC6, 0xAA, 0x92, 0x92, 0x82, 0x82, 0x82, 0x82, 0x82, 0x00, 0x00, 0x00, 0x00, // 0x4D ('M')
	0x00, 0x00, 0x42, 0x42, 0x42, 0x62, 0x52, 0x4A, 0x46, 0x42, 0x42, 0x42, 0x00, 0x00, 0x00, 0x00, // 0x4E ('N')
	0x00, 0x00, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x4F ('O')
	0x00, 0x00, 0x7C, 0x42, 0x42, 0x42, 0x42, 0x7C, 0x40, 0x40, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, // 0x50 ('P')
	0x00, 0x00, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x4A, 0x3C, 0x02, 0x00, 0x00, 0x00, // 0x51 ('Q')
	0x00, 0x00, 0x7C, 0x42, 0x42, 0x42, 0x42, 0x7C, 0x50, 0x48, 0x44, 0x42, 0x00, 0x00, 0x00, 0x00, // 0x52 ('R')
	0x00, 0x00, 0x3C, 0x42, 0x40, 0x40, 0x3C, 0x02, 0x02, 0x42, 0x42, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x53 ('S')
	0x00, 0x00, 0xFE, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, // 0x54 ('T')
	0x00, 0x00, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x55 ('U')
	0x00, 0x00, 0x42, 0x42, 0x42, 0x42, 0x42, 0x24, 0x24, 0x24, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, // 0x56 ('V')
	0x00, 0x00, 0x82, 0x82, 0x82, 0x82, 0x82, 0x92, 0x92, 0xAA, 0xC6, 0x82, 0x00, 0x00, 0x00, 0x00, // 0x57 ('W')
	0x00, 0x00, 0x42, 0x42, 0x24, 0x24, 0x18, 0x18, 0x24, 0x24, 0x42, 0x42, 0x00, 0x00, 0x00, 0x00, // 0x58 ('X')
	0x00, 0x00, 0x82, 0x82, 0x44, 0x44, 0x28, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, // 0x59 ('Y')
	0x00, 0x00, 0x7E, 0x02, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x40, 0x7E, 0x00, 0x00, 0x00, 0x00, // 0x5A ('Z')
	0x00, 0x00, 0x38, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x38, 0x00, 0x00, 0x00, 0x00, // 0x5B ('[')
	0x00, 0x00, 0x40, 0x40, 0x20, 0x20, 0x10, 0x10, 0x08, 0x08, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00, // 0x5C ('\')
	0x00, 0x00, 0x38, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x38, 0x00, 0x00, 0x00, 0x00, // 0x5D (']')
	0x00, 0x10, 0x28, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x5E ('^')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7E, 0x00, 0x00, // 0x5F ('_')
	0x10, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x60 ('`')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x02, 0x3E, 0x42, 0x42, 0x42, 0x3E, 0x00, 0x00, 0x00, 0x00, // 0x61 ('a')
	0x00, 0x00, 0x40, 0x40, 0x40, 0x7C, 0x42, 0x42, 0x42, 0x42, 0x42, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x62 ('b')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x42, 0x40, 0x40, 0x40, 0x42, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x63 ('c')
	0x00, 0x00, 0x02, 0x02, 0x02, 0x3E, 0x42, 0x42, 0x42, 0x42, 0x42, 0x3E, 0x00, 0x00, 0x00, 0x00, // 0x64 ('d')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x42, 0x42, 0x7E, 0x40, 0x40, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x65 ('e')
	0x00, 0x00, 0x0E, 0x10, 0x10, 0x7C, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, // 0x66 ('f')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x3E, 0x42, 0x42, 0x42, 0x42, 0x42, 0x3E, 0x02, 0x02, 0x3C, 0x00, // 0x67 ('g')
	0x00, 0x00, 0x40, 0x40, 0x40, 0x7C, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x00, 0x00, 0x00, 0x00, // 0x68 ('h')
	0x00, 0x00, 0x10, 0x10, 0x00, 0x30, 0x10, 0x10, 0x10, 0x10, 0x10, 0x38, 0x00, 0x00, 0x00, 0x00, // 0x69 ('i')
	0x00, 0x00, 0x04, 0x04, 0x00, 0x0C, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x44, 0x44, 0x38, 0x00, // 0x6A ('j')
	0x00, 0x00, 0x40, 0x40, 0x40, 0x42, 0x44, 0x48, 0x70, 0x48, 0x44, 0x42, 0x00, 0x00, 0x00, 0x00, // 0x6B ('k')
	0x00, 0x00, 0x30, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x0C, 0x00, 0x00, 0x00, 0x00, // 0x6C ('l')
	0x00, 0x00, 0x00, 0x00, 0x00, 0xFC, 0x92, 0x92, 0x92, 0x92, 0x92, 0x92, 0x00, 0x00, 0x00, 0x00, // 0x6D ('m')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x00, 0x00, 0x00, 0x00, // 0x6E ('n')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x42, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x6F ('o')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 0x42, 0x42, 0x42, 0x42, 0x42, 0x7C, 0x40, 0x40, 0x40, 0x00, // 0x70 ('p')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x3E, 0x42, 0x42, 0x42, 0x42, 0x42, 0x3E, 0x02, 0x02, 0x02, 0x00, // 0x71 ('q')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x5E, 0x60, 0x40, 0x40, 0x40, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, // 0x72 ('r')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x3E, 0x40, 0x40, 0x3C, 0x02, 0x02, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x73 ('s')
	0x00, 0x00, 0x10, 0x10, 0x10, 0x7C, 0x10, 0x10, 0x10, 0x10, 0x10, 0x0E, 0x00, 0x00, 0x00, 0x00, // 0x74 ('t')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x3E, 0x00, 0x00, 0x00, 0x00, // 0x75 ('u')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x42, 0x42, 0x24, 0x24, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, // 0x76 ('v')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x82, 0x82, 0x92, 0x92, 0x92, 0x92, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x77 ('w')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x42, 0x24, 0x18, 0x24, 0x42, 0x42, 0x00, 0x00, 0x00, 0x00, // 0x78 ('x')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x3E, 0x02, 0x02, 0x3C, 0x00, // 0x79 ('y')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x7E, 0x04, 0x08, 0x10, 0x20, 0x40, 0x7E, 0x00, 0x00, 0x00, 0x00, // 0x7A ('z')
	0x00, 0x00, 0x0C, 0x10, 0x10, 0x10, 0x20, 0x10, 0x10, 0x10, 0x10, 0x0C, 0x00, 0x00, 0x00, 0x00, // 0x7B ('{')
	0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, // 0x7C ('|')
	0x00, 0x00, 0x30, 0x08, 0x08, 0x08, 0x04, 0x08, 0x08, 0x08, 0x08, 0x30, 0x00, 0x00, 0x00, 0x00, // 0x7D ('}')
	0x00, 0x62, 0x92, 0x8C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x7E ('~')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00  // 0x7F
};
#endif

#if LCDFONT_8X16BOLD == 1
/** This is the Terminus 8x16 bold font (<http://terminus-font.sourceforge.net/>) version 4.38 by
 *  Dimitar Zhekov <dimitar.zhekov@gmail.com>. The ll2 patch has been applied.
 *
 *  The Terminus Font is licensed under the SIL Open Font License, Version 1.1. The license is included
 *  as OFL.TXT, and is also available with a FAQ at <http://scripts.sil.org/OFL>.
 */

const uint8_t lcdfont_8x16bold[128 * 16] PROGMEM = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x00
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x01
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x02
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x03
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x04
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x05
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x06
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x07
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x08
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x09
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0A
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0B
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0C
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0D
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0E
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0F
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x10
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x11
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x12
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x13
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x14
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x15
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x16
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x17
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x18
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x19
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1A
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1B
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1C
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1D
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1E
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1F
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x20 (' ')
	0x00, 0x00, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, // 0x21 ('!')
	0x00, 0x66, 0x66, 0x66, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x22 ('"')
	0x00, 0x00, 0x6C, 0x6C, 0x6C, 0xFE, 0x6C, 0x6C, 0xFE, 0x6C, 0x6C, 0x6C, 0x00, 0x00, 0x00, 0x00, // 0x23 ('#')
	0x00, 0x10, 0x10, 0x7C, 0xD6, 0xD0, 0xD0, 0x7C, 0x16, 0x16, 0xD6, 0x7C, 0x10, 0x10, 0x00, 0x00, // 0x24 ('$')
	0x00, 0x00, 0x66, 0xD6, 0x6C, 0x0C, 0x18, 0x18, 0x30, 0x36, 0x6B, 0x66, 0x00, 0x00, 0x00, 0x00, // 0x25 ('%')
	0x00, 0x00, 0x38, 0x6C, 0x6C, 0x38, 0x76, 0xDC, 0xCC, 0xCC, 0xDC, 0x76, 0x00, 0x00, 0x00, 0x00, // 0x26 ('&')
	0x00, 0x18, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x27 (''')
	0x00, 0x00, 0x0C, 0x18, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x18, 0x0C, 0x00, 0x00, 0x00, 0x00, // 0x28 ('(')
	0x00, 0x00, 0x30, 0x18, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x18, 0x30, 0x00, 0x00, 0x00, 0x00, // 0x29 (')')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x38, 0xFE, 0x38, 0x6C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x2A ('*')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x7E, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x2B ('+')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x30, 0x00, 0x00, 0x00, // 0x2C (',')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x2D ('-')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, // 0x2E ('.')
	0x00, 0x00, 0x06, 0x06, 0x0C, 0x0C, 0x18, 0x18, 0x30, 0x30, 0x60, 0x60, 0x00, 0x00, 0x00, 0x00, // 0x2F ('/')
	0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xCE, 0xDE, 0xF6, 0xE6, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x30 ('0')
	0x00, 0x00, 0x18, 0x38, 0x78, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x7E, 0x00, 0x00, 0x00, 0x00, // 0x31 ('1')
	0x00, 0x00, 0x7C, 0xC6, 0xC6, 0x06, 0x0C, 0x18, 0x30, 0x60, 0xC0, 0xFE, 0x00, 0x00, 0x00, 0x00, // 0x32 ('2')
	0x00, 0x00, 0x7C, 0xC6, 0xC6, 0x06, 0x3C, 0x06, 0x06, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x33 ('3')
	0x00, 0x00, 0x06, 0x0E, 0x1E, 0x36, 0x66, 0xC6, 0xFE, 0x06, 0x06, 0x06, 0x00, 0x00, 0x00, 0x00, // 0x34 ('4')
	0x00, 0x00, 0xFE, 0xC0, 0xC0, 0xC0, 0xFC, 0x06, 0x06, 0x06, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x35 ('5')
	0x00, 0x00, 0x3C, 0x60, 0xC0, 0xC0, 0xFC, 0xC6, 0xC6, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x36 ('6')
	0x00, 0x00, 0xFE, 0x06, 0x06, 0x0C, 0x0C, 0x18, 0x18, 0x30, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, // 0x37 ('7')
	0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xC6, 0x7C, 0xC6, 0xC6, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x38 ('8')
	0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xC6, 0xC6, 0x7E, 0x06, 0x06, 0x0C, 0x78, 0x00, 0x00, 0x00, 0x00, // 0x39 ('9')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, // 0x3A (':')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x18, 0x18, 0x30, 0x00, 0x00, 0x00, // 0x3B (';')
	0x00, 0x00, 0x00, 0x06, 0x0C, 0x18, 0x30, 0x60, 0x30, 0x18, 0x0C, 0x06, 0x00, 0x00, 0x00, 0x00, // 0x3C ('<')
	0x00, 0x00, 0x00, 0x00, 0x00, 0xFE, 0x00, 0x00, 0xFE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x3D ('=')
	0x00, 0x00, 0x00, 0x60, 0x30, 0x18, 0x0C, 0x06, 0x0C, 0x18, 0x30, 0x60, 0x00, 0x00, 0x00, 0x00, // 0x3E ('>')
	0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xC6, 0x0C, 0x18, 0x18, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, // 0x3F ('?')
	0x00, 0x00, 0x7C, 0xC6, 0xCE, 0xD6, 0xD6, 0xD6, 0xD6, 0xCE, 0xC0, 0x7E, 0x00, 0x00, 0x00, 0x00, // 0x40 ('@')
	0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xC6, 0xC6, 0xFE, 0xC6, 0xC6, 0xC6, 0xC6, 0x00, 0x00, 0x00, 0x00, // 0x41 ('A')
	0x00, 0x00, 0xFC, 0xC6, 0xC6, 0xC6, 0xFC, 0xC6, 0xC6, 0xC6, 0xC6, 0xFC, 0x00, 0x00, 0x00, 0x00, // 0x42 ('B')
	0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xC0, 0xC0, 0xC0, 0xC0, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x43 ('C')
	0x00, 0x00, 0xF8, 0xCC, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xCC, 0xF8, 0x00, 0x00, 0x00, 0x00, // 0x44 ('D')
	0x00, 0x00, 0xFE, 0xC0, 0xC0, 0xC0, 0xF8, 0xC0, 0xC0, 0xC0, 0xC0, 0xFE, 0x00, 0x00, 0x00, 0x00, // 0x45 ('E')
	0x00, 0x00, 0xFE, 0xC0, 0xC0, 0xC0, 0xF8, 0xC0, 0xC0, 0xC0, 0xC0, 0xC0, 0x00, 0x00, 0x00, 0x00, // 0x46 ('F')
	0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xC0, 0xC0, 0xDE, 0xC6, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x47 ('G')
	0x00, 0x00, 0xC6, 0xC6, 0xC6, 0xC6, 0xFE, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x00, 0x00, 0x00, 0x00, // 0x48 ('H')
	0x00, 0x00, 0x3C, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x49 ('I')
	0x00, 0x00, 0x1E, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0xCC, 0xCC, 0x78, 0x00, 0x00, 0x00, 0x00, // 0x4A ('J')
	0x00, 0x00, 0xC6, 0xC6, 0xCC, 0xD8, 0xF0, 0xF0, 0xD8, 0xCC, 0xC6, 0xC6, 0x00, 0x00, 0x00, 0x00, // 0x4B ('K')
	0x00, 0x00, 0xC0, 0xC0, 0xC0, 0xC0, 0xC0, 0xC0, 0xC0, 0xC0, 0xC0, 0xFE, 0x00, 0x00, 0x00, 0x00, // 0x4C ('L')
	0x00, 0x00, 0x82, 0xC6, 0xEE, 0xFE, 0xD6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x00, 0x00, 0x00, 0x00, // 0x4D ('M')
	0x00, 0x00, 0xC6, 0xC6, 0xC6, 0xE6, 0xF6, 0xDE, 0xCE, 0xC6, 0xC6, 0xC6, 0x00, 0x00, 0x00, 0x00, // 0x4E ('N')
	0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x4F ('O')
	0x00, 0x00, 0xFC, 0xC6, 0xC6, 0xC6, 0xC6, 0xFC, 0xC0, 0xC0, 0xC0, 0xC0, 0x00, 0x00, 0x00, 0x00, // 0x50 ('P')
	0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xDE, 0x7C, 0x06, 0x00, 0x00, 0x00, // 0x51 ('Q')
	0x00, 0x00, 0xFC, 0xC6, 0xC6, 0xC6, 0xC6, 0xFC, 0xF0, 0xD8, 0xCC, 0xC6, 0x00, 0x00, 0x00, 0x00, // 0x52 ('R')
	0x00, 0x00, 0x7C, 0xC6, 0xC0, 0xC0, 0x7C, 0x06, 0x06, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x53 ('S')
	0x00, 0x00, 0xFF, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, // 0x54 ('T')
	0x00, 0x00, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x55 ('U')
	0x00, 0x00, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x6C, 0x6C, 0x6C, 0x38, 0x38, 0x00, 0x00, 0x00, 0x00, // 0x56 ('V')
	0x00, 0x00, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xD6, 0xFE, 0xEE, 0xC6, 0x82, 0x00, 0x00, 0x00, 0x00, // 0x57 ('W')
	0x00, 0x00, 0xC6, 0xC6, 0x6C, 0x6C, 0x38, 0x38, 0x6C, 0x6C, 0xC6, 0xC6, 0x00, 0x00, 0x00, 0x00, // 0x58 ('X')
	0x00, 0x00, 0xC3, 0xC3, 0x66, 0x66, 0x3C, 0x18, 0x18, 0x18, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, // 0x59 ('Y')
	0x00, 0x00, 0xFE, 0x06, 0x06, 0x0C, 0x18, 0x30, 0x60, 0xC0, 0xC0, 0xFE, 0x00, 0x00, 0x00, 0x00, // 0x5A ('Z')
	0x00, 0x00, 0x3C, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x5B ('[')
	0x00, 0x00, 0x60, 0x60, 0x30, 0x30, 0x18, 0x18, 0x0C, 0x0C, 0x06, 0x06, 0x00, 0x00, 0x00, 0x00, // 0x5C ('\')
	0x00, 0x00, 0x3C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x5D (']')
	0x00, 0x18, 0x3C, 0x66, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x5E ('^')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFE, 0x00, 0x00, // 0x5F ('_')
	0x30, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x60 ('`')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 0x06, 0x7E, 0xC6, 0xC6, 0xC6, 0x7E, 0x00, 0x00, 0x00, 0x00, // 0x61 ('a')
	0x00, 0x00, 0xC0, 0xC0, 0xC0, 0xFC, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xFC, 0x00, 0x00, 0x00, 0x00, // 0x62 ('b')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 0xC6, 0xC0, 0xC0, 0xC0, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x63 ('c')
	0x00, 0x00, 0x06, 0x06, 0x06, 0x7E, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x7E, 0x00, 0x00, 0x00, 0x00, // 0x64 ('d')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xFE, 0xC0, 0xC0, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x65 ('e')
	0x00, 0x00, 0x1E, 0x30, 0x30, 0xFC, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, // 0x66 ('f')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x7E, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x7E, 0x06, 0x06, 0x7C, 0x00, // 0x67 ('g')
	0x00, 0x00, 0xC0, 0xC0, 0xC0, 0xFC, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x00, 0x00, 0x00, 0x00, // 0x68 ('h')
	0x00, 0x00, 0x18, 0x18, 0x00, 0x38, 0x18, 0x18, 0x18, 0x18, 0x18, 0x3C, 0x00, 0x00, 0x00, 0x00, // 0x69 ('i')
	0x00, 0x00, 0x06, 0x06, 0x00, 0x0E, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x66, 0x66, 0x3C, 0x00, // 0x6A ('j')
	0x00, 0x00, 0xC0, 0xC0, 0xC0, 0xC6, 0xCC, 0xD8, 0xF0, 0xD8, 0xCC, 0xC6, 0x00, 0x00, 0x00, 0x00, // 0x6B ('k')
	0x00, 0x00, 0x70, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, // 0x6C ('l')
	0x00, 0x00, 0x00, 0x00, 0x00, 0xFC, 0xD6, 0xD6, 0xD6, 0xD6, 0xD6, 0xD6, 0x00, 0x00, 0x00, 0x00, // 0x6D ('m')
	0x00, 0x00, 0x00, 0x00, 0x00, 0xFC, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x00, 0x00, 0x00, 0x00, // 0x6E ('n')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x6F ('o')
	0x00, 0x00, 0x00, 0x00, 0x00, 0xFC, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xFC, 0xC0, 0xC0, 0xC0, 0x00, // 0x70 ('p')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x7E, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x7E, 0x06, 0x06, 0x06, 0x00, // 0x71 ('q')
	0x00, 0x00, 0x00, 0x00, 0x00, 0xDE, 0xF0, 0xE0, 0xC0, 0xC0, 0xC0, 0xC0, 0x00, 0x00, 0x00, 0x00, // 0x72 ('r')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x7E, 0xC0, 0xC0, 0x7C, 0x06, 0x06, 0xFC, 0x00, 0x00, 0x00, 0x00, // 0x73 ('s')
	0x00, 0x00, 0x30, 0x30, 0x30, 0xFC, 0x30, 0x30, 0x30, 0x30, 0x30, 0x1E, 0x00, 0x00, 0x00, 0x00, // 0x74 ('t')
	0x00, 0x00, 0x00, 0x00, 0x00, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x7E, 0x00, 0x00, 0x00, 0x00, // 0x75 ('u')
	0x00, 0x00, 0x00, 0x00, 0x00, 0xC6, 0xC6, 0xC6, 0x6C, 0x6C, 0x38, 0x38, 0x00, 0x00, 0x00, 0x00, // 0x76 ('v')
	0x00, 0x00, 0x00, 0x00, 0x00, 0xC6, 0xC6, 0xD6, 0xD6, 0xD6, 0xD6, 0x7C, 0x00, 0x00, 0x00, 0x00, // 0x77 ('w')
	0x00, 0x00, 0x00, 0x00, 0x00, 0xC6, 0xC6, 0x6C, 0x38, 0x6C, 0xC6, 0xC6, 0x00, 0x00, 0x00, 0x00, // 0x78 ('x')
	0x00, 0x00, 0x00, 0x00, 0x00, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x7E, 0x06, 0x06, 0x7C, 0x00, // 0x79 ('y')
	0x00, 0x00, 0x00, 0x00, 0x00, 0xFE, 0x0C, 0x18, 0x30, 0x60, 0xC0, 0xFE, 0x00, 0x00, 0x00, 0x00, // 0x7A ('z')
	0x00, 0x00, 0x1C, 0x30, 0x30, 0x30, 0x60, 0x30, 0x30, 0x30, 0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, // 0x7B ('{')
	0x00, 0x00, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, // 0x7C ('|')
	0x00, 0x00, 0x70, 0x18, 0x18, 0x18, 0x0C, 0x18, 0x18, 0x18, 0x18, 0x70, 0x00, 0x00, 0x00, 0x00, // 0x7D ('}')
	0x00, 0x73, 0xDB, 0xCE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x7E ('~')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00  // 0x7F
};
#endif

#if LCDFONT_8X8REGULAR == 1
/** This is a 8x8 font by John Reeves Hall (<http://overcode.yak.net/12>), released as
 *  "free to use for any purpose".
 *
 *  RIP John.
 */

const uint8_t lcdfont_8x8regular[128 * 8] PROGMEM = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x00
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x01
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x02
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x03
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x04
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x05
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x06
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x07
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x08
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x09
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0A
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0B
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0C
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0D
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0E
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x0F
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x10
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x11
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x12
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x13
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x14
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x15
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x16
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x17
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x18
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x19
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1A
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1B
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1C
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1D
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1E
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x1F
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x20 (' ')
	0x08, 0x08, 0x08, 0x08, 0x08, 0x00, 0x08, 0x00, // 0x21 ('!')
	0x14, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x22 ('"')
	0x14, 0x14, 0x7F, 0x14, 0x7F, 0x14, 0x14, 0x00, // 0x23 ('#')
	0x08, 0x1E, 0x28, 0x1C, 0x0A, 0x3C, 0x08, 0x00, // 0x24 ('$')
	0x00, 0x32, 0x34, 0x08, 0x16, 0x26, 0x00, 0x00, // 0x25 ('%')
	0x18, 0x28, 0x10, 0x28, 0x46, 0x44, 0x3A, 0x00, // 0x26 ('&')
	0x08, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x27 (''')
	0x04, 0x08, 0x10, 0x10, 0x10, 0x08, 0x04, 0x00, // 0x28 ('(')
	0x10, 0x08, 0x04, 0x04, 0x04, 0x08, 0x10, 0x00, // 0x29 (')')
	0x08, 0x49, 0x2A, 0x1C, 0x2A, 0x49, 0x08, 0x00, // 0x2A ('*')
	0x08, 0x08, 0x08, 0x7F, 0x08, 0x08, 0x08, 0x00, // 0x2B ('+')
	0x00, 0x00, 0x00, 0x00, 0x0C, 0x0C, 0x04, 0x08, // 0x2C (',')
	0x00, 0x00, 0x00, 0x7F, 0x00, 0x00, 0x00, 0x00, // 0x2D ('-')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x0C, 0x00, // 0x2E ('.')
	0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x00, // 0x2F ('/')
	0x1C, 0x22, 0x22, 0x2A, 0x22, 0x22, 0x1C, 0x00, // 0x30 ('0')
	0x08, 0x18, 0x08, 0x08, 0x08, 0x08, 0x1C, 0x00, // 0x31 ('1')
	0x1C, 0x22, 0x02, 0x04, 0x08, 0x10, 0x3E, 0x00, // 0x32 ('2')
	0x1C, 0x22, 0x02, 0x0C, 0x02, 0x22, 0x1C, 0x00, // 0x33 ('3')
	0x0C, 0x14, 0x24, 0x3E, 0x04, 0x04, 0x0E, 0x00, // 0x34 ('4')
	0x3E, 0x20, 0x20, 0x3C, 0x02, 0x22, 0x1C, 0x00, // 0x35 ('5')
	0x1C, 0x22, 0x20, 0x3C, 0x22, 0x22, 0x1C, 0x00, // 0x36 ('6')
	0x3E, 0x02, 0x04, 0x08, 0x10, 0x10, 0x10, 0x00, // 0x37 ('7')
	0x1C, 0x22, 0x22, 0x1C, 0x22, 0x22, 0x1C, 0x00, // 0x38 ('8')
	0x1C, 0x22, 0x22, 0x1E, 0x02, 0x22, 0x1C, 0x00, // 0x39 ('9')
	0x00, 0x0C, 0x0C, 0x00, 0x0C, 0x0C, 0x00, 0x00, // 0x3A (':')
	0x00, 0x0C, 0x0C, 0x00, 0x0C, 0x0C, 0x04, 0x08, // 0x3B (';')
	0x04, 0x08, 0x10, 0x20, 0x10, 0x08, 0x04, 0x00, // 0x3C ('<')
	0x00, 0x00, 0x7F, 0x00, 0x7F, 0x00, 0x00, 0x00, // 0x3D ('=')
	0x20, 0x10, 0x08, 0x04, 0x08, 0x10, 0x20, 0x00, // 0x3E ('>')
	0x1C, 0x22, 0x02, 0x04, 0x08, 0x00, 0x08, 0x00, // 0x3F ('?')
	0x1C, 0x22, 0x2E, 0x2A, 0x2E, 0x20, 0x1C, 0x00, // 0x40 ('@')
	0x1C, 0x22, 0x22, 0x3E, 0x22, 0x22, 0x22, 0x00, // 0x41 ('A')
	0x3C, 0x22, 0x22, 0x3C, 0x22, 0x22, 0x3C, 0x00, // 0x42 ('B')
	0x1C, 0x22, 0x20, 0x20, 0x20, 0x22, 0x1C, 0x00, // 0x43 ('C')
	0x3C, 0x22, 0x22, 0x22, 0x22, 0x22, 0x3C, 0x00, // 0x44 ('D')
	0x3E, 0x20, 0x20, 0x3C, 0x20, 0x20, 0x3E, 0x00, // 0x45 ('E')
	0x3E, 0x20, 0x20, 0x3E, 0x20, 0x20, 0x20, 0x00, // 0x46 ('F')
	0x1C, 0x22, 0x20, 0x2E, 0x22, 0x22, 0x1C, 0x00, // 0x47 ('G')
	0x22, 0x22, 0x22, 0x3E, 0x22, 0x22, 0x22, 0x00, // 0x48 ('H')
	0x1C, 0x08, 0x08, 0x08, 0x08, 0x08, 0x1C, 0x00, // 0x49 ('I')
	0x0E, 0x04, 0x04, 0x04, 0x24, 0x24, 0x18, 0x00, // 0x4A ('J')
	0x22, 0x22, 0x24, 0x38, 0x24, 0x22, 0x22, 0x00, // 0x4B ('K')
	0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x1E, 0x00, // 0x4C ('L')
	0x41, 0x63, 0x55, 0x49, 0x41, 0x41, 0x41, 0x00, // 0x4D ('M')
	0x22, 0x32, 0x2A, 0x2A, 0x26, 0x22, 0x22, 0x00, // 0x4E ('N')
	0x1C, 0x22, 0x22, 0x22, 0x22, 0x22, 0x1C, 0x00, // 0x4F ('O')
	0x1C, 0x12, 0x12, 0x1C, 0x10, 0x10, 0x10, 0x00, // 0x50 ('P')
	0x1C, 0x22, 0x22, 0x22, 0x22, 0x22, 0x1C, 0x06, // 0x51 ('Q')
	0x3C, 0x22, 0x22, 0x3C, 0x28, 0x24, 0x22, 0x00, // 0x52 ('R')
	0x1C, 0x22, 0x20, 0x1C, 0x02, 0x22, 0x1C, 0x00, // 0x53 ('S')
	0x3E, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x00, // 0x54 ('T')
	0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x1C, 0x00, // 0x55 ('U')
	0x22, 0x22, 0x22, 0x14, 0x14, 0x08, 0x08, 0x00, // 0x56 ('V')
	0x41, 0x41, 0x41, 0x2A, 0x2A, 0x14, 0x14, 0x00, // 0x57 ('W')
	0x22, 0x22, 0x14, 0x08, 0x14, 0x22, 0x22, 0x00, // 0x58 ('X')
	0x22, 0x22, 0x14, 0x08, 0x08, 0x08, 0x08, 0x00, // 0x59 ('Y')
	0x3E, 0x02, 0x04, 0x08, 0x10, 0x20, 0x3E, 0x00, // 0x5A ('Z')
	0x1C, 0x10, 0x10, 0x10, 0x10, 0x10, 0x1C, 0x00, // 0x5B ('[')
	0x40, 0x20, 0x10, 0x08, 0x04, 0x02, 0x01, 0x00, // 0x5C ('\')
	0x1C, 0x04, 0x04, 0x04, 0x04, 0x04, 0x1C, 0x00, // 0x5D (']')
	0x08, 0x14, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x5E ('^')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, // 0x5F ('_')
	0x10, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0x60 ('`')
	0x00, 0x1C, 0x02, 0x1E, 0x22, 0x22, 0x1D, 0x00, // 0x61 ('a')
	0x10, 0x10, 0x1C, 0x12, 0x12, 0x12, 0x2C, 0x00, // 0x62 ('b')
	0x00, 0x00, 0x1C, 0x20, 0x20, 0x20, 0x1C, 0x00, // 0x63 ('c')
	0x02, 0x02, 0x0E, 0x12, 0x12, 0x12, 0x0D, 0x00, // 0x64 ('d')
	0x00, 0x00, 0x1C, 0x22, 0x3E, 0x20, 0x1C, 0x00, // 0x65 ('e')
	0x0C, 0x12, 0x10, 0x38, 0x10, 0x10, 0x10, 0x00, // 0x66 ('f')
	0x00, 0x00, 0x1D, 0x22, 0x22, 0x1E, 0x02, 0x1C, // 0x67 ('g')
	0x20, 0x20, 0x2C, 0x32, 0x22, 0x22, 0x22, 0x00, // 0x68 ('h')
	0x00, 0x08, 0x00, 0x08, 0x08, 0x08, 0x08, 0x00, // 0x69 ('i')
	0x00, 0x08, 0x00, 0x08, 0x08, 0x08, 0x08, 0x30, // 0x6A ('j')
	0x20, 0x20, 0x24, 0x28, 0x30, 0x28, 0x24, 0x00, // 0x6B ('k')
	0x18, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x00, // 0x6C ('l')
	0x00, 0x00, 0xB6, 0x49, 0x49, 0x41, 0x41, 0x00, // 0x6D ('m')
	0x00, 0x00, 0x2C, 0x12, 0x12, 0x12, 0x12, 0x00, // 0x6E ('n')
	0x00, 0x00, 0x1C, 0x22, 0x22, 0x22, 0x1C, 0x00, // 0x6F ('o')
	0x00, 0x00, 0x2C, 0x12, 0x12, 0x1C, 0x10, 0x10, // 0x70 ('p')
	0x00, 0x00, 0x1A, 0x24, 0x24, 0x1C, 0x04, 0x04, // 0x71 ('q')
	0x00, 0x00, 0x2C, 0x30, 0x20, 0x20, 0x20, 0x00, // 0x72 ('r')
	0x00, 0x00, 0x1C, 0x20, 0x18, 0x04, 0x38, 0x00, // 0x73 ('s')
	0x00, 0x08, 0x1C, 0x08, 0x08, 0x08, 0x08, 0x00, // 0x74 ('t')
	0x00, 0x00, 0x24, 0x24, 0x24, 0x24, 0x1A, 0x00, // 0x75 ('u')
	0x00, 0x00, 0x22, 0x22, 0x22, 0x14, 0x08, 0x00, // 0x76 ('v')
	0x00, 0x00, 0x41, 0x41, 0x49, 0x55, 0x22, 0x00, // 0x77 ('w')
	0x00, 0x00, 0x22, 0x14, 0x08, 0x14, 0x22, 0x00, // 0x78 ('x')
	0x00, 0x00, 0x12, 0x12, 0x12, 0x0E, 0x02, 0x1C, // 0x79 ('y')
	0x00, 0x00, 0x3C, 0x04, 0x08, 0x10, 0x3C, 0x00, // 0x7A ('z')
	0x0C, 0x10, 0x10, 0x20, 0x10, 0x10, 0x0C, 0x00, // 0x7B ('{')
	0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x00, // 0x7C ('|')
	0x30, 0x08, 0x08, 0x04, 0x08, 0x08, 0x30, 0x00, // 0x7D ('}')
	0x00, 0x00, 0x30, 0x49, 0x06, 0x00, 0x00, 0x00, // 0x7E ('~')
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00  // 0x7F
};
#endif

const uint8_t *lcdfont_getChar(lcdfont_t font, char c, uint8_t *width, uint8_t *height) {
	switch (font) {
		#if LCDFONT_8X16REGULAR == 1
		case kLCDFont8x16Regular:
			if ((uint8_t)c >= 128)
				return 0;

			*width  =  8;
			*height = 16;
			return (const uint8_t *) lcdfont_8x16regular + c * 16;
		#endif

		#if LCDFONT_8X16BOLD == 1
		case kLCDFont8x16Bold:
			if ((uint8_t)c >= 128)
				return 0;

			*width  =  8;
			*height = 16;
			return (const uint8_t *) lcdfont_8x16bold + c * 16;
		#endif

		#if LCDFONT_8X8REGULAR == 1
		case kLCDFont8x8Regular:
			if ((uint8_t)c >= 128)
				return 0;

			*width  = 8;
			*height = 8;
			return (const uint8_t *) lcdfont_8x8regular + c * 8;
		#endif

		default:
			break;
	}

	return 0;
}
