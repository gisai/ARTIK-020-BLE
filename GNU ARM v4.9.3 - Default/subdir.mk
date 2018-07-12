################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../advertisement.c \
../app.c \
../application_properties.c \
../debug_printf.c \
../gatt_db.c \
../init_app.c \
../init_board.c \
../init_mcu.c \
../main.c \
../pti.c \
../retargetio.c \
../retargetserial.c \
../spp.c 

OBJS += \
./advertisement.o \
./app.o \
./application_properties.o \
./debug_printf.o \
./gatt_db.o \
./init_app.o \
./init_board.o \
./init_mcu.o \
./main.o \
./pti.o \
./retargetio.o \
./retargetserial.o \
./spp.o 

C_DEPS += \
./advertisement.d \
./app.d \
./application_properties.d \
./debug_printf.d \
./gatt_db.d \
./init_app.d \
./init_board.d \
./init_mcu.d \
./main.d \
./pti.d \
./retargetio.d \
./retargetserial.d \
./spp.d 


# Each subdirectory must supply rules for building sources it contributes
advertisement.o: ../advertisement.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__STACK_SIZE=0x800' '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\halconfig" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\drivers" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\bsp" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\CMSIS\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\chip\efr32" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\EFR32BG1_BRD4300C\config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source\GCC" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\app\bluetooth_2.7\common\stack_bridge" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\soc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\common\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\halconfig\inc\hal-config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\uartdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader\api" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"advertisement.d" -MT"advertisement.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app.o: ../app.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__STACK_SIZE=0x800' '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\halconfig" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\drivers" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\bsp" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\CMSIS\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\chip\efr32" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\EFR32BG1_BRD4300C\config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source\GCC" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\app\bluetooth_2.7\common\stack_bridge" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\soc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\common\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\halconfig\inc\hal-config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\uartdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader\api" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"app.d" -MT"app.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

application_properties.o: ../application_properties.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__STACK_SIZE=0x800' '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\halconfig" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\drivers" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\bsp" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\CMSIS\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\chip\efr32" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\EFR32BG1_BRD4300C\config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source\GCC" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\app\bluetooth_2.7\common\stack_bridge" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\soc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\common\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\halconfig\inc\hal-config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\uartdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader\api" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"application_properties.d" -MT"application_properties.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

debug_printf.o: ../debug_printf.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__STACK_SIZE=0x800' '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\halconfig" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\drivers" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\bsp" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\CMSIS\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\chip\efr32" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\EFR32BG1_BRD4300C\config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source\GCC" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\app\bluetooth_2.7\common\stack_bridge" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\soc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\common\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\halconfig\inc\hal-config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\uartdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader\api" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"debug_printf.d" -MT"debug_printf.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gatt_db.o: ../gatt_db.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__STACK_SIZE=0x800' '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\halconfig" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\drivers" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\bsp" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\CMSIS\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\chip\efr32" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\EFR32BG1_BRD4300C\config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source\GCC" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\app\bluetooth_2.7\common\stack_bridge" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\soc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\common\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\halconfig\inc\hal-config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\uartdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader\api" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"gatt_db.d" -MT"gatt_db.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

init_app.o: ../init_app.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__STACK_SIZE=0x800' '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\halconfig" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\drivers" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\bsp" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\CMSIS\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\chip\efr32" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\EFR32BG1_BRD4300C\config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source\GCC" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\app\bluetooth_2.7\common\stack_bridge" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\soc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\common\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\halconfig\inc\hal-config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\uartdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader\api" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"init_app.d" -MT"init_app.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

init_board.o: ../init_board.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__STACK_SIZE=0x800' '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\halconfig" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\drivers" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\bsp" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\CMSIS\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\chip\efr32" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\EFR32BG1_BRD4300C\config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source\GCC" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\app\bluetooth_2.7\common\stack_bridge" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\soc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\common\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\halconfig\inc\hal-config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\uartdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader\api" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"init_board.d" -MT"init_board.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

init_mcu.o: ../init_mcu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__STACK_SIZE=0x800' '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\halconfig" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\drivers" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\bsp" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\CMSIS\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\chip\efr32" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\EFR32BG1_BRD4300C\config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source\GCC" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\app\bluetooth_2.7\common\stack_bridge" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\soc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\common\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\halconfig\inc\hal-config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\uartdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader\api" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"init_mcu.d" -MT"init_mcu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.o: ../main.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__STACK_SIZE=0x800' '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\halconfig" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\drivers" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\bsp" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\CMSIS\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\chip\efr32" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\EFR32BG1_BRD4300C\config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source\GCC" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\app\bluetooth_2.7\common\stack_bridge" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\soc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\common\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\halconfig\inc\hal-config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\uartdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader\api" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"main.d" -MT"main.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

pti.o: ../pti.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__STACK_SIZE=0x800' '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\halconfig" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\drivers" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\bsp" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\CMSIS\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\chip\efr32" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\EFR32BG1_BRD4300C\config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source\GCC" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\app\bluetooth_2.7\common\stack_bridge" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\soc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\common\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\halconfig\inc\hal-config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\uartdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader\api" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"pti.d" -MT"pti.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

retargetio.o: ../retargetio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__STACK_SIZE=0x800' '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\halconfig" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\drivers" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\bsp" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\CMSIS\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\chip\efr32" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\EFR32BG1_BRD4300C\config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source\GCC" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\app\bluetooth_2.7\common\stack_bridge" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\soc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\common\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\halconfig\inc\hal-config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\uartdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader\api" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"retargetio.d" -MT"retargetio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

retargetserial.o: ../retargetserial.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__STACK_SIZE=0x800' '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\halconfig" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\drivers" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\bsp" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\CMSIS\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\chip\efr32" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\EFR32BG1_BRD4300C\config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source\GCC" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\app\bluetooth_2.7\common\stack_bridge" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\soc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\common\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\halconfig\inc\hal-config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\uartdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader\api" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"retargetserial.d" -MT"retargetserial.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

spp.o: ../spp.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__STACK_SIZE=0x800' '-D__HEAP_SIZE=0xD00' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\halconfig" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emlib\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\drivers" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\common\bsp" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\CMSIS\Include" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\chip\efr32" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\hardware\kit\EFR32BG1_BRD4300C\config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\tempdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\Device\SiliconLabs\EFR32BG1B\Source\GCC" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\app\bluetooth_2.7\common\stack_bridge" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\radio\rail_lib\common" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\src" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\protocol\bluetooth_2.7\ble_stack\inc\soc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\common\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\sleep\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\halconfig\inc\hal-config" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\uartdrv\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader\api" -I"C:\Users\Salva\SimplicityStudio\v4_workspace\ARTIK-020-BLE\platform\bootloader" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"spp.d" -MT"spp.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


