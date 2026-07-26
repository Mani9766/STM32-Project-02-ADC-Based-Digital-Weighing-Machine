################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middleware/Filter/Src/moving_average.c 

OBJS += \
./Middleware/Filter/Src/moving_average.o 

C_DEPS += \
./Middleware/Filter/Src/moving_average.d 


# Each subdirectory must supply rules for building sources it contributes
Middleware/Filter/Src/%.o Middleware/Filter/Src/%.su Middleware/Filter/Src/%.cyclo: ../Middleware/Filter/Src/%.c Middleware/Filter/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"D:/Manisha Daigavhane/software/workspace/Github_Repositories/stm32-project-02-weighing-machine/Firmware/STM32-Weighing-Machine/Middleware/Filter/Inc" -I"D:/Manisha Daigavhane/software/workspace/Github_Repositories/stm32-project-02-weighing-machine/Firmware/STM32-Weighing-Machine/Middleware/Callibration/Inc" -I"D:/Manisha Daigavhane/software/workspace/Github_Repositories/stm32-project-02-weighing-machine/Firmware/STM32-Weighing-Machine/Application/WeighingMachine/Inc" -I"D:/Manisha Daigavhane/software/workspace/Github_Repositories/stm32-project-02-weighing-machine/Firmware/STM32-Weighing-Machine/Drivers/ADC/Inc" -I"D:/Manisha Daigavhane/software/workspace/Github_Repositories/stm32-project-02-weighing-machine/Firmware/STM32-Weighing-Machine/Drivers/GPIO/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Middleware-2f-Filter-2f-Src

clean-Middleware-2f-Filter-2f-Src:
	-$(RM) ./Middleware/Filter/Src/moving_average.cyclo ./Middleware/Filter/Src/moving_average.d ./Middleware/Filter/Src/moving_average.o ./Middleware/Filter/Src/moving_average.su

.PHONY: clean-Middleware-2f-Filter-2f-Src

