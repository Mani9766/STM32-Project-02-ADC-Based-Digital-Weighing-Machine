################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middleware/Callibration/Src/calibration.c 

OBJS += \
./Middleware/Callibration/Src/calibration.o 

C_DEPS += \
./Middleware/Callibration/Src/calibration.d 


# Each subdirectory must supply rules for building sources it contributes
Middleware/Callibration/Src/%.o Middleware/Callibration/Src/%.su Middleware/Callibration/Src/%.cyclo: ../Middleware/Callibration/Src/%.c Middleware/Callibration/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"D:/Manisha Daigavhane/software/workspace/Github_Repositories/stm32-project-02-weighing-machine/Firmware/STM32-Weighing-Machine/Middleware/Filter/Inc" -I"D:/Manisha Daigavhane/software/workspace/Github_Repositories/stm32-project-02-weighing-machine/Firmware/STM32-Weighing-Machine/Middleware/Callibration/Inc" -I"D:/Manisha Daigavhane/software/workspace/Github_Repositories/stm32-project-02-weighing-machine/Firmware/STM32-Weighing-Machine/Application/WeighingMachine/Inc" -I"D:/Manisha Daigavhane/software/workspace/Github_Repositories/stm32-project-02-weighing-machine/Firmware/STM32-Weighing-Machine/Drivers/ADC/Inc" -I"D:/Manisha Daigavhane/software/workspace/Github_Repositories/stm32-project-02-weighing-machine/Firmware/STM32-Weighing-Machine/Drivers/GPIO/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Middleware-2f-Callibration-2f-Src

clean-Middleware-2f-Callibration-2f-Src:
	-$(RM) ./Middleware/Callibration/Src/calibration.cyclo ./Middleware/Callibration/Src/calibration.d ./Middleware/Callibration/Src/calibration.o ./Middleware/Callibration/Src/calibration.su

.PHONY: clean-Middleware-2f-Callibration-2f-Src

