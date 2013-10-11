/* adkeypad - Reading the keys Waveshare AD Keypad
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

#include "adkeypad.h"
#include "util.h"
#include "adc.h"

#define ADKEYPAD_KEY_COUNT      16
#define ADKEYPAD_ADC_RESOLUTION 10

#define ADKEYPAD_VALUE_PER_KEY ((1 << ADKEYPAD_ADC_RESOLUTION) / ADKEYPAD_KEY_COUNT)

#define ADKEYPAD_ERROR_RANGE 10

uint8_t adkeypad_get(uint8_t pin) {
	int16_t adc = adc_get_average(pin, kADCReferenceAVCC);

	for (uint8_t i = 0; i < ADKEYPAD_KEY_COUNT; i++) {
		const int16_t key_value = i * ADKEYPAD_VALUE_PER_KEY;

		if (ABS(key_value - adc) < ADKEYPAD_ERROR_RANGE)
			return i;

		if  (key_value > adc)
			// Encountered an adc value that's not within reasonable margins of error => invalid
			return 0xFE;
	}

	if (adc < ((1 << ADKEYPAD_ADC_RESOLUTION) - ADKEYPAD_ERROR_RANGE))
		// adc value lies between key15_value + ERROR_RANGE and keyNone_value - ERROR_RANGE => invalid
		return 0xFE;

	// No key pressed
	return 0xFF;
}