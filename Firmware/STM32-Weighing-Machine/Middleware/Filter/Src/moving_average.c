/*
 * moving_average.c
 *
 *  Created on: Jul 23, 2026
 *      Author: Manisha Daigavhane
 */

#include "moving_average.h"

void MovingAverage_Init(MovingAverageFilter_t *filter,
                        uint16_t *buffer,
                        uint16_t bufferSize)
{
    filter->buffer = buffer;

    filter->bufferSize = bufferSize;

    filter->index = 0U;

    filter->sampleCount = 0U;

    filter->sum = 0U;

    for(uint16_t i = 0U; i < bufferSize; i++)
    {
        filter->buffer[i] = 0U;
    }
}

void MovingAverage_AddSample(MovingAverageFilter_t *filter,
                             uint16_t sample)
{
    filter->sum -= filter->buffer[filter->index];

    filter->buffer[filter->index] = sample;

    filter->sum += sample;

    filter->index = (filter->index + 1U) % filter->bufferSize;

    if(filter->sampleCount < filter->bufferSize)
    {
        filter->sampleCount++;
    }
}

uint16_t MovingAverage_GetValue(MovingAverageFilter_t *filter)
{
    if(filter->sampleCount == 0U)
    {
        return 0U;
    }

    return (uint16_t)(filter->sum / filter->sampleCount);
}
