################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freertos/freertos-kernel/croutine.c \
../freertos/freertos-kernel/event_groups.c \
../freertos/freertos-kernel/list.c \
../freertos/freertos-kernel/queue.c \
../freertos/freertos-kernel/stream_buffer.c \
../freertos/freertos-kernel/tasks.c \
../freertos/freertos-kernel/timers.c 

C_DEPS += \
./freertos/freertos-kernel/croutine.d \
./freertos/freertos-kernel/event_groups.d \
./freertos/freertos-kernel/list.d \
./freertos/freertos-kernel/queue.d \
./freertos/freertos-kernel/stream_buffer.d \
./freertos/freertos-kernel/tasks.d \
./freertos/freertos-kernel/timers.d 

OBJS += \
./freertos/freertos-kernel/croutine.o \
./freertos/freertos-kernel/event_groups.o \
./freertos/freertos-kernel/list.o \
./freertos/freertos-kernel/queue.o \
./freertos/freertos-kernel/stream_buffer.o \
./freertos/freertos-kernel/tasks.o \
./freertos/freertos-kernel/timers.o 


# Each subdirectory must supply rules for building sources it contributes
freertos/freertos-kernel/%.o: ../freertos/freertos-kernel/%.c freertos/freertos-kernel/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MCXN947VDF -DCPU_MCXN947VDF_cm33 -DCPU_MCXN947VDF_cm33_core0 -DMCUXPRESSO_SDK -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DSDK_OS_FREE_RTOS -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\source" -I"C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\drivers" -I"C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\CMSIS" -I"C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\CMSIS\m-profile" -I"C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\device" -I"C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\device\periph" -I"C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\utilities" -I"C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\utilities\str" -I"C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\utilities\debug_console_lite" -I"C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\component\uart" -I"C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\freertos\freertos-kernel\include" -I"C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\freertos\freertos-kernel\portable\GCC\ARM_CM33_NTZ\non_secure" -I"C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\board" -I"C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\freertos\freertos-kernel\template" -I"C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\freertos\freertos-kernel\template\ARM_CM33_3_priority_bits" -O0 -fno-common -g3 -gdwarf-4 -mcpu=cortex-m33 -c -ffunction-sections -fdata-sections -fno-builtin -imacros "C:\Users\Sebas\Documents\MCUXpressoIDE_24.12.148\workspace\frdmmcxn947_queues_freertos_hello_cm33_core0\source\mcux_config.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-freertos-2f-freertos-2d-kernel

clean-freertos-2f-freertos-2d-kernel:
	-$(RM) ./freertos/freertos-kernel/croutine.d ./freertos/freertos-kernel/croutine.o ./freertos/freertos-kernel/event_groups.d ./freertos/freertos-kernel/event_groups.o ./freertos/freertos-kernel/list.d ./freertos/freertos-kernel/list.o ./freertos/freertos-kernel/queue.d ./freertos/freertos-kernel/queue.o ./freertos/freertos-kernel/stream_buffer.d ./freertos/freertos-kernel/stream_buffer.o ./freertos/freertos-kernel/tasks.d ./freertos/freertos-kernel/tasks.o ./freertos/freertos-kernel/timers.d ./freertos/freertos-kernel/timers.o

.PHONY: clean-freertos-2f-freertos-2d-kernel

