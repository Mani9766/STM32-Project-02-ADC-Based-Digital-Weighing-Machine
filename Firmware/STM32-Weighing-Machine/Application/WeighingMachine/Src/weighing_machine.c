/*
 * weighing_machine.c
 *
 *  Created on: Jul 25, 2026
 *      Author: Manisha Daigavhane
 */

#include "weighing_machine.h"


#define ZERO_BUTTON_PORT    GPIOA
#define ZERO_BUTTON_PIN     0U

static MovingAverageFilter_t filter;

static uint16_t filterBuffer[WEIGHING_MACHINE_FILTER_SIZE];

static Calibration_t calibration;

void WeighingMachine_Init(void)
{
	GPIO_ConfigPin(GPIOA,
	               0U,  //Button is connected to PA0
	               GPIO_INPUT,
	               GPIO_PUSH_PULL,
	               GPIO_NO_PULL,
	               GPIO_LOW_SPEED);

	/* Configure ADC */
    ADC_Init(ADC1,
             ADC_CLOCK_DIV4,
             Bit_Resolution_12,
             Right_Alignment,
             Scan_disable,
             Cont_Conversion,
             ADC_En);

    /* Configure Temperature Sensor Channel */
    ADC_ConfigChannel(ADC1,
                      16U,
                      Cycles_480,
                      conv_seq_1,
                      1U);

    /* Start Continuous Conversion */
    ADC_StartConversion(ADC1);

    /* Initialize Moving Average Filter */
    MovingAverage_Init(&filter,
                       filterBuffer,
                       WEIGHING_MACHINE_FILTER_SIZE);

    /* Initialize Calibration */
    Calibration_Init(&calibration);
}


void WeighingMachine_SetZero(void)
{
    uint32_t sum = 0U;

    for(uint8_t i = 0U; i < WEIGHING_MACHINE_CALIBRATION_SAMPLES; i++)
    {
        ADC_WaitForConversion(ADC1);

        MovingAverage_AddSample(&filter,
                                ADC_ReadData(ADC1));

        sum += MovingAverage_GetValue(&filter);
    }

    Calibration_SetZero(&calibration,
                        (uint16_t)(sum / WEIGHING_MACHINE_CALIBRATION_SAMPLES));
}

float WeighingMachine_GetValue(void)
{
    uint16_t filteredValue;

    ADC_WaitForConversion(ADC1);

    MovingAverage_AddSample(&filter,
                            ADC_ReadData(ADC1));

    filteredValue = MovingAverage_GetValue(&filter);

    return Calibration_GetWeight(&calibration,
                                 filteredValue);
}

uint8_t Button_IsPressed(void)
{
    static uint8_t previousState = 0U;

    uint8_t currentState = GPIO_ReadPin(GPIOA, 0U);

    if((currentState == 1U) && (previousState == 0U))
    {
        previousState = currentState;
        return 1U;
    }

    previousState = currentState;

    return 0U;
}
