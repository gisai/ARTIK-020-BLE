################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/Device/SiliconLabs/EFR32BG1B/Source/GCC/startup_efr32bg1b.c 

OBJS += \
./platform/Device/SiliconLabs/EFR32BG1B/Source/GCC/startup_efr32bg1b.o 

C_DEPS += \
./platform/Device/SiliconLabs/EFR32BG1B/Source/GCC/startup_efr32bg1b.d 


# Each subdirectory must supply rules for building sources it contributes
platform/Device/SiliconLabs/EFR32BG1B/Source/GCC/startup_efr32bg1b.o: ../platform/Device/SiliconLabs/EFR32BG1B/Source/GCC/startup_efr32bg1b.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__STACK_SIZE=0x800' '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\emlib\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\Device\SiliconLabs\EFR32BG1B\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\hardware\kit\common\halconfig" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\emlib\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\hardware\kit\common\drivers" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\protocol\bluetooth_2.7\ble_stack\inc\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\hardware\kit\common\bsp" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\CMSIS\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\emdrv\tempdrv\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\radio\rail_lib\chip\efr32" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\Device\SiliconLabs\EFR32BG1B\Source" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\hardware\kit\EFR32BG1_BRD4300C\config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\emdrv\tempdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\Device\SiliconLabs\EFR32BG1B\Source\GCC" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\app\bluetooth_2.7\common\stack_bridge" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\radio\rail_lib\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\emdrv\sleep\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\protocol\bluetooth_2.7\ble_stack\inc\soc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\emdrv\common\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\emdrv\sleep\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\halconfig\inc\hal-config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\emdrv\uartdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\bootloader\api" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\bootloader" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/Device/SiliconLabs/EFR32BG1B/Source/GCC/startup_efr32bg1b.d" -MT"platform/Device/SiliconLabs/EFR32BG1B/Source/GCC/startup_efr32bg1b.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


