################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/emdrv/sleep/src/sleep.c 

OBJS += \
./platform/emdrv/sleep/src/sleep.o 

C_DEPS += \
./platform/emdrv/sleep/src/sleep.d 


# Each subdirectory must supply rules for building sources it contributes
platform/emdrv/sleep/src/sleep.o: ../platform/emdrv/sleep/src/sleep.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__STACK_SIZE=0x800' '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\halconfig" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\drivers" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\bsp" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\CMSIS\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\chip\efr32" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\EFR32BG1_BRD4300C\config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source\GCC" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\app\bluetooth_2.7\common\stack_bridge" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\soc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\common\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\halconfig\inc\hal-config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\uartdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader\api" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emdrv/sleep/src/sleep.d" -MT"platform/emdrv/sleep/src/sleep.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


