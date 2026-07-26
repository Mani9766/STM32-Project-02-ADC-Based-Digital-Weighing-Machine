/*
 * calibration.c
 *
 *  Created on: Jul 25, 2026
 *      Author: Manisha Daigavhane
 */

#include "calibration.h"

void Calibration_Init(Calibration_t *calibration)
{
    calibration->zeroOffset = 0U;
    calibration->scaleFactor = 1.0f;
}

void Calibration_SetZero(Calibration_t *calibration,
                         uint16_t adcValue)
{
    calibration->zeroOffset = adcValue;
}

void Calibration_SetScale(Calibration_t *calibration,
                          uint16_t adcValue,
                          float knownWeight)
{
    uint16_t adcDifference;

    adcDifference = adcValue - calibration->zeroOffset;

    if(adcDifference != 0U)
    {
        calibration->scaleFactor =
            knownWeight / (float)adcDifference;
    }
}

float Calibration_GetWeight(const Calibration_t *calibration,
                            uint16_t adcValue)
{
    return (adcValue - calibration->zeroOffset) *
            calibration->scaleFactor;
}
