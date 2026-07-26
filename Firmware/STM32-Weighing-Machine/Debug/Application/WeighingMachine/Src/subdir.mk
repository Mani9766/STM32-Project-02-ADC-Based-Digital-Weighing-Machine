################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/WeighingMachine/Src/weighing_machine.c 

OBJS += \
./Application/WeighingMachine/Src/weighing_machine.o 

C_DEPS += \
./Application/WeighingMachine/Src/weighing_machine.d 


# Each subdirectory must supply rules for building sources it contributes
Application/WeighingMachine/Src/%.o Application/WeighingMachine/Src/%.su Application/WeighingMachine/Src/%.cyclo: ../Application/WeighingMachine/Src/%.c Application/WeighingMachine/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"D:/Manisha Daigavhane/software/workspace/Github_Repositories/stm32-project-02-weighing-machine/Firmware/STM32-Weighing-Machine/Middleware/Filter/Inc" -I"D:/Manisha Daigavhane/software/workspace/Github_Repositories/stm32-project-02-weighing-machine/Firmware/STM32-Weighing-Machine/Middleware/Callibration/Inc" -I"D:/Manisha Daigavhane/software/workspace/Github_Repositories/stm32-project-02-weighing-machine/Firmware/STM32-Weighing-Machine/Application/WeighingMachine/Inc" -I"D:/Manisha Daigavhane/software/workspace/Github_Repositories/stm32-project-02-weighing-machine/Firmware/STM32-Weighing-Machine/Drivers/ADC/Inc" -I"D:/Manisha Daigavhane/software/workspace/Github_Repositories/stm32-project-02-weighing-machine/Firmware/STM32-Weighing-Machine/Drivers/GPIO/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Application-2f-WeighingMachine-2f-Src

clean-Application-2f-WeighingMachine-2f-Src:
	-$(RM) ./Application/WeighingMachine/Src/weighing_machine.cyclo ./Application/WeighingMachine/Src/weighing_machine.d ./Application/WeighingMachine/Src/weighing_machine.o ./Application/WeighingMachine/Src/weighing_machine.su

.PHONY: clean-Application-2f-WeighingMachine-2f-Src

