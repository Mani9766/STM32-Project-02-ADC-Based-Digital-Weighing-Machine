/*
 * calibration.h
 *
 *  Created on: Jul 25, 2026
 *      Author: Manisha Daigavhane
 */

#ifndef CALIBRATION_H_
#define CALIBRATION_H_

#include <stdint.h>

typedef struct
{
    uint16_t zeroOffset;
    float scaleFactor;

} Calibration_t;

/* Initialize calibration structure */
void Calibration_Init(Calibration_t *calibration);

/* Set zero offset */
void Calibration_SetZero(Calibration_t *calibration,
                         uint16_t adcValue);

/* Calculate scale factor */
void Calibration_SetScale(Calibration_t *calibration,
                          uint16_t adcValue,
                          float knownWeight);

/* Convert ADC value to weight */
float Calibration_GetWeight(const Calibration_t *calibration,
                            uint16_t adcValue);

#endif
