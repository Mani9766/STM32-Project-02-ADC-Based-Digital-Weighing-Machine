/*
 * moving_average.h
 *
 *  Created on: Jul 23, 2026
 *      Author: Manisha Daigavhane
 */

#ifndef MOVING_AVERAGE_H_
#define MOVING_AVERAGE_H_


#include <stdint.h>

#define WEIGHING_MACHINE_FILTER_SIZE  5U

#define WEIGHING_MACHINE_CALIBRATION_SAMPLES 32U

typedef struct
{
    uint16_t *buffer;

    uint16_t bufferSize;

    uint16_t index;

    uint16_t sampleCount;

    uint32_t sum;

} MovingAverageFilter_t;

void MovingAverage_Init(MovingAverageFilter_t *filter,
                        uint16_t *buffer,
                        uint16_t bufferSize);

void MovingAverage_AddSample(MovingAverageFilter_t *filter,
                             uint16_t sample);

uint16_t MovingAverage_GetValue(MovingAverageFilter_t *filter);


#endif /* MOVING_AVERAGE_H_ */
