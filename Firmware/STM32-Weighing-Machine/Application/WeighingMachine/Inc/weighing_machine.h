/*
 * weighing_machine.h
 *
 *  Created on: Jul 25, 2026
 *      Author: Manisha Daigavhane
 */

#ifndef WEIGHING_MACHINE_H_
#define WEIGHING_MACHINE_H_

#include <stdint.h>
#include "gpio.h"
#include "adc.h"
#include "moving_average.h"
#include "calibration.h"

void WeighingMachine_Init(void);

void WeighingMachine_SetZero(void);

float WeighingMachine_GetValue(void);

uint8_t Button_IsPressed(void);
#endif
