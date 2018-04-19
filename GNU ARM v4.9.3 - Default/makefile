################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include protocol/bluetooth_2.7/lib/EFR32BG1B/GCC/subdir.mk
-include platform/emlib/src/subdir.mk
-include platform/emdrv/tempdrv/src/subdir.mk
-include platform/emdrv/sleep/src/subdir.mk
-include platform/Device/SiliconLabs/EFR32BG1B/Source/GCC/subdir.mk
-include platform/Device/SiliconLabs/EFR32BG1B/Source/subdir.mk
-include pervasive/FPL_drivers/subdir.mk
-include pervasive/subdir.mk
-include hardware/kit/common/drivers/subdir.mk
-include hardware/kit/common/bsp/subdir.mk
-include Images/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: Transfer-v0.axf

# Tool invocations
Transfer-v0.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -T "C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\efr32bg1b232f256gm48.ld" -Xlinker --gc-sections -Xlinker -Map="Transfer-v0.map" -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -o Transfer-v0.axf -Wl,--start-group "./Images/Image_iTC_287_01.o" "./Images/Image_iTC_287_02.o" "./Images/Image_iTC_287_03.o" "./advertisement.o" "./app.o" "./application_properties.o" "./connected.o" "./debug_printf.o" "./gatt_db.o" "./init_app.o" "./init_board.o" "./init_mcu.o" "./main.o" "./pti.o" "./retargetio.o" "./retargetserial.o" "./spp.o" "./hardware/kit/common/bsp/bsp_stk.o" "./hardware/kit/common/drivers/mx25flash_spi.o" "./pervasive/EPD_Temperature_IIC.o" "./pervasive/EPD_interface.o" "./pervasive/FPL_drivers/Board_HW_Driver.o" "./pervasive/FPL_drivers/eTC_G1_Size_Aurora_Mb.o" "./pervasive/FPL_drivers/eTC_G2_Size_Aurora_Ma.o" "./pervasive/FPL_drivers/eTC_G2_Size_Aurora_Mb.o" "./pervasive/FPL_drivers/iTC_215_Aurora_Mb.o" "./pervasive/FPL_drivers/iTC_287_Aurora_Mb.o" "./pervasive/FPL_drivers/iTC_287_Spectra.o" "./pervasive/FPL_drivers/iTC_420_Aurora_Mb.o" "./pervasive/FPL_drivers/iTC_420_Spectra.o" "./pervasive/FPL_drivers/iTC_Engine.o" "./platform/Device/SiliconLabs/EFR32BG1B/Source/GCC/startup_efr32bg1b.o" "./platform/Device/SiliconLabs/EFR32BG1B/Source/system_efr32bg1b.o" "./platform/emdrv/sleep/src/sleep.o" "./platform/emdrv/tempdrv/src/tempdrv.o" "./platform/emlib/src/em_cmu.o" "./platform/emlib/src/em_core.o" "./platform/emlib/src/em_cryotimer.o" "./platform/emlib/src/em_crypto.o" "./platform/emlib/src/em_emu.o" "./platform/emlib/src/em_gpio.o" "./platform/emlib/src/em_i2c.o" "./platform/emlib/src/em_msc.o" "./platform/emlib/src/em_rmu.o" "./platform/emlib/src/em_rtcc.o" "./platform/emlib/src/em_system.o" "./platform/emlib/src/em_usart.o" "C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\protocol\bluetooth_2.7\lib\EFR32BG1B\GCC\libmbedtls.a" "C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\protocol\bluetooth_2.7\lib\EFR32BG1B\GCC\libpsstore.a" "C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\platform\radio\rail_lib\autogen\librail_release\librail_efr32xg1_gcc_release.a" "C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\protocol\bluetooth_2.7\lib\EFR32BG1B\GCC\binapploader.o" "C:\Users\Salva\SimplicityStudio\v4_workspace\Transfer-v0\protocol\bluetooth_2.7\lib\EFR32BG1B\GCC\libbluetooth.a" -lm -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: Transfer-v0.hex'
	arm-none-eabi-objcopy -O ihex "Transfer-v0.axf" "Transfer-v0.hex"
	@echo ' '

	@echo 'Building bin file: Transfer-v0.bin'
	arm-none-eabi-objcopy -O binary "Transfer-v0.axf" "Transfer-v0.bin"
	@echo ' '

	@echo 'Building s37 file: Transfer-v0.s37'
	arm-none-eabi-objcopy -O srec "Transfer-v0.axf" "Transfer-v0.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "Transfer-v0.axf"
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) Transfer-v0.axf
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
