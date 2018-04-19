/**
* Copyright (c) Pervasive Displays Inc. All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*
* 1. Redistributions of source code must retain the above copyright notice,
*    this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright notice,
*    this list of conditions and the following disclaimer in the documentation
*    and/or other materials provided with the distribution.
*
* 3. The name of Atmel may not be used to endorse or promote products derived
*    from this software without specific prior written permission.
*
* 4. This software may only be redistributed and used in connection with an
*    Atmel microcontroller product.
*
* THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
* EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
* ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
* OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
* HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
* STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
* ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
* POSSIBILITY OF SUCH DAMAGE.
**/

#include "em_usart.h"
#include "em_cmu.h"
#include "em_gpio.h"
#include "Board_HW_Driver.h"
volatile uint32_t msTicks,EPD_Counter;

#define SPI_FREQ 10000000
#define DEBUG_BREAK           __asm__("BKPT #0");


//----------------------------GPIO------------------------
void Config_BS1_Pin()
{
	//config_gpio_dir_o(BS1_PORT,BS1_PIN);
}
void BS1_high()
{
	//set_gpio_high(BS1_PORT,BS1_PIN);
}
void BS1_low()
{
	//set_gpio_low(BS1_PORT,BS1_PIN);
}
void Enable_SW_Pin()
{
	//config_gpio_dir_i(SW1_PORT,SW1_PIN |SW2_PIN );
}
void Disable_SW_Pin()
{
	//config_gpio_dir_o(BS1_PORT,BS1_PIN);
	//BS1_low();
}
bool SW1_State()
{
	//return (bool)input_get(SW1_PORT,SW1_PIN);
	return 0;
}
bool SW2_State()
{
	//return (bool)input_get(SW2_PORT,SW2_PIN);
	return 0;
}

void Config_LED1_Pin()
{
	//config_gpio_dir_o(LED1_PORT,LED1_PIN);
}
void LED1_high()
{
	//set_gpio_high(LED1_PORT,LED1_PIN);
}
void LED1_low()
{
	//set_gpio_low(LED1_PORT,LED1_PIN);
}

void Config_Busy_Pin()
{
	config_gpio_dir_i(EPD_BUSY_PORT,EPD_BUSY_PIN);
}
bool EPD_IsBusy()
{
	return (bool)input_get(EPD_BUSY_PORT,EPD_BUSY_PIN);
}

void Config_EPD_cs_Pin()
{
	config_gpio_dir_o(EPD_CS_PORT,EPD_CS_PIN);
}
void EPD_cs_high()
{
	set_gpio_high(EPD_CS_PORT,EPD_CS_PIN);
}
void EPD_cs_low()
{
	set_gpio_low(EPD_CS_PORT,EPD_CS_PIN);
}

void Config_EPD_flash_cs_Pin()
{
	config_gpio_dir_o(Flash_CS_PORT,Flash_CS_PIN);
}
void EPD_flash_cs_high()
{
	set_gpio_high(Flash_CS_PORT,Flash_CS_PIN);
}
void EPD_flash_cs_low()
{
	set_gpio_low(Flash_CS_PORT,Flash_CS_PIN);
}

void Config_EPD_rst_Pin()
{
	config_gpio_dir_o(EPD_RST_PORT,EPD_RST_PIN);
}
void EPD_rst_high()
{
	set_gpio_high(EPD_RST_PORT,EPD_RST_PIN);
}
void EPD_rst_low()
{
	set_gpio_low(EPD_RST_PORT,EPD_RST_PIN);
}

void Config_EPD_discharge_Pin()
{
	config_gpio_dir_o(EPD_DISCHARGE_PORT,EPD_DISCHARGE_PIN);
}
void EPD_discharge_high()
{
	set_gpio_high(EPD_DISCHARGE_PORT,EPD_DISCHARGE_PIN);
}
void EPD_discharge_low()
{
	set_gpio_low(EPD_DISCHARGE_PORT,EPD_DISCHARGE_PIN);
}

void Config_EPD_panelon_Pin()
{
	config_gpio_dir_o(EPD_PANELON_PORT,EPD_PANELON_PIN);
}
void EPD_Vcc_turn_on()
{
	set_gpio_high(EPD_PANELON_PORT,EPD_PANELON_PIN);
}
void EPD_Vcc_turn_off()
{
	set_gpio_low(EPD_PANELON_PORT,EPD_PANELON_PIN);
}

void Config_EPD_border_Pin()
{
	config_gpio_dir_o(EPD_BORDER_PORT,EPD_BORDER_PIN);
}
void EPD_border_high()
{
	set_gpio_high(EPD_BORDER_PORT,EPD_BORDER_PIN);
}
void EPD_border_low()
{
	set_gpio_low(EPD_BORDER_PORT,EPD_BORDER_PIN);
}

void Config_EPD_pwm_Pin()
{
	config_gpio_dir_o(PWM_PORT,PWM_PIN);
}
void EPD_pwm_high()
{
	set_gpio_high(PWM_PORT,PWM_PIN);
}
void EPD_pwm_low()
{
	set_gpio_low(PWM_PORT,PWM_PIN);
}

void SPIMISO_low()
{
	set_gpio_low(SPIMISO_PORT,SPIMISO_PIN);
}
void SPIMOSI_low()
{
	set_gpio_low(SPIMOSI_PORT,SPIMOSI_PIN);
}
void SPICLK_low()
{
	set_gpio_low(SPICLK_PORT,SPICLK_PIN);
}

void Config_EPD_DC_Pin()
{
	config_gpio_dir_o(PWM_PORT,PWM_PIN);
}
void EPD_DC_high()
{
	set_gpio_high(PWM_PORT,PWM_PIN);
}
void EPD_DC_low()
{
	set_gpio_low(PWM_PORT,PWM_PIN);
}

void Config_EPD_DB1_Pin()
{
	config_gpio_dir_i(EPD_BORDER_PORT,EPD_BORDER_PIN);
}
bool Get_EPD_DB1()
{
	return (bool)input_get(EPD_BORDER_PORT,EPD_BORDER_PIN);
}

void Config_EPD_DB2_Pin()
{
	//config_gpio_dir_i(EPD_DB2_PORT,EPD_DB2_PIN);
}
bool Get_EPD_DB2()
{
	//return (bool)input_get(EPD_DB2_PORT,EPD_DB2_PIN);
	return 0;

}

inline void Config_SPIMOSI_Pin()
{
	GPIO_PinModeSet(SPIMOSI_PORT, SPIMOSI_PIN, gpioModePushPull, 1);
}



//-----------------------------------------------------------
uint32_t getnowtime(void)
{
	return msTicks;
}
/**
 * \brief Start Timer
 * \note
 * desired value: 1mSec
 * actual value:  1.00mSec
 */
void Systick_Configuration(void)
{
	/* Configuring SysTick to trigger at 48000 (MCLK is 48MHz so this will
	 * make it toggle every ~1ms) */
	/*MAP_SysTick_enableModule();
	MAP_SysTick_setPeriod((CPU_F/1000));
	MAP_Interrupt_enableSleepOnIsrExit();
	MAP_SysTick_enableInterrupt();*/
	if (SysTick_Config(CMU_ClockFreqGet(cmuClock_CORE) / 1000))
	      {
	            DEBUG_BREAK;
	      }
	msTicks =0;

}
void SysTick_Handler(void)
{
      /* Increment counter necessary in Delay()*/
      msTicks++;
}
void systick_Stop(void)
{
	//MAP_SysTick_disableInterrupt();
	//MAP_SysTick_disableModule();
	SysTick->CTRL &= ~SysTick_CTRL_ENABLE_Msk;
}
void systick_Start(void)
{
	Systick_Configuration();
}
/**
 * \brief Start Timer
 * \note
 * desired value: 1mSec
 * actual value:  1.000mSec
 */
void start_EPD_timer(void)
{
	EPD_Counter=msTicks;
}

/**
 * \brief Stop Timer
 */
void stop_EPD_timer(void)
{

}
/**
 * \brief Get current Timer after starting a new one
 */
uint32_t get_EPD_time_tick(void)
{
	return (msTicks-EPD_Counter);
}

/**
 * \brief Delay mini-seconds
 * \param ms The number of mini-seconds
 */
void EPD_delay_ms(unsigned int ms)
{
	start_EPD_timer();
	while(get_EPD_time_tick()<=ms)
	{

	}

}

void delay_btwn_CS_H_L(void)
{
	//delay > 80ns
}
/**
 * \brief PWM toggling.
 *
 * \param ms The interval of PWM toggling (mini seconds)
 */
void PWM_run(uint16_t ms)
{
	/*start_EPD_timer();
	do
	{
		//~156K Hz
		EPD_pwm_high();
		__delay_cycles(20);
		EPD_pwm_low();
		__delay_cycles(20);
	}
	while (get_EPD_time_tick() < ms);   //wait Delay Time

	stop_EPD_timer();*/

}
//******************************************************************
//* SPI  Configuration
//******************************************************************
bool spi_state=false;
/**
 * \brief Configure SPI
 */
/* SPI Master Configuration Parameter */
/*const eUSCI_SPI_MasterConfig spiMasterConfig =
{
	EUSCI_B_SPI_CLOCKSOURCE_SMCLK,              		 		// SMCLK Clock Source
	CPU_F,                                     			 		// SMCLK = 48Mhz
	COG_SPI_baudrate,                                    		// SPICLK = 12Mhz
	EUSCI_B_SPI_MSB_FIRST,                     			 		// MSB First
	EUSCI_B_SPI_PHASE_DATA_CHANGED_ONFIRST_CAPTURED_ON_NEXT,    // Phase
	EUSCI_B_SPI_CLOCKPOLARITY_INACTIVITY_HIGH, 					// High polarity
	EUSCI_B_SPI_3PIN                           					// 3Wire SPI Mode
};*/
/**
 * \brief Configure SPI
 */
void epd_spi_init(uint32_t spi_baudrate)
{
	/* Selecting P1.1 P1.2 and P1.3 in SPI mode
	GPIO_setAsPeripheralModuleFunctionInputPin(SPICLK_PORT,
	        SPICLK_PIN | SPIMISO_PIN | SPIMOSI_PIN, GPIO_PRIMARY_MODULE_FUNCTION);

	 Configuring SPI in 3wire master mode
	spi_state=SPI_initMaster(EUSCI_B0_BASE, &spiMasterConfig);

	 Enable SPI module
	if(spi_state)SPI_enableModule(EUSCI_B0_BASE);*/

	USART_InitSync_TypeDef spiInit = USART_INITSYNC_DEFAULT;

	  CMU_ClockEnable(cmuClock_USART1, true);
	  CMU_ClockEnable(cmuClock_GPIO, true);

	  /* MOSI */
	  GPIO_PinModeSet(SPIMOSI_PORT, SPIMOSI_PIN, gpioModePushPull, 1);

	  /* CS */
	  //GPIO_PinModeSet(EPD_PIN_CS, gpioModePushPull, 0);

	  /* CLK */
	  GPIO_PinModeSet(SPICLK_PORT, SPICLK_PIN, gpioModePushPull, 0);

	  /* BUSY */
	  GPIO_PinModeSet(EPD_BUSY_PORT, EPD_BUSY_PIN, gpioModeInput, 0);

	  /* Only enable TX output (no RX) */
	  spiInit.enable = usartEnableTx;

	  /* Set SPI speed */
	  spiInit.baudrate = 1000000;

	  /* Send most significant bit first */
	  spiInit.msbf = true;
	  spiInit.autoCsEnable=false;

	  /* Set USART1 registers */
	  USART_InitSync(USART1, &spiInit);

	  /* Route to location 1 and enable TX pin (PD0) */
	  //USART1->ROUTE = USART_ROUTE_TXPEN | USART_ROUTE_CLKPEN | USART_ROUTE_LOCATION_LOC1;
	  USART1->ROUTEPEN = USART_ROUTEPEN_TXPEN | USART_ROUTEPEN_CLKPEN;
	  USART1->ROUTELOC0 = USART_ROUTELOC0_TXLOC_LOC11 | USART_ROUTELOC0_CLKLOC_LOC11
			  | USART_ROUTELOC0_RXLOC_LOC11;

	  spi_state=1;


}
/**
 * \brief Initialize SPI
 */
void EPD_spi_attach()
{
	if(spi_state) return;
	EPD_flash_cs_high();
	EPD_cs_high();
	epd_spi_init(COG_SPI_baudrate);
}
/**
 * \brief Disable SPI and change to GPIO
 */
void EPD_spi_detach(void)
{
	if(!spi_state) return;
	//SPI_disableModule(EUSCI_B0_BASE);
	USART_Reset(USART1);
	GPIO_PinModeSet(SPIMOSI_PORT, SPIMOSI_PIN, gpioModePushPull, 0);
	/* CS */
	GPIO_PinModeSet(EPD_CS_PORT, EPD_CS_PIN, gpioModePushPull, 0);
	/* CLK */
	GPIO_PinModeSet(SPICLK_PORT, SPICLK_PIN, gpioModePushPull, 0);
	SPIMISO_low();
	SPIMOSI_low();
	SPICLK_low();
	spi_state=false;
}
bool check_flash_spi(void)
{
	if(!spi_state) EPD_spi_attach();
	return spi_state;
}
/**
 * \brief SPI synchronous read
 */
void EPD_spi_read(unsigned char data)
{
	//SPI_transmitData(EUSCI_B0_BASE, data);
	USART_Tx(USART1, data);
	 //USCI_B0 TX buffer ready?
	//while (!(SPI_getInterruptStatus(EUSCI_B0_BASE, EUSCI_B_SPI_TRANSMIT_INTERRUPT)));
	while ( !(USART1->STATUS & USART_STATUS_TXC) );
}

/**
 * \brief SPI synchronous write
 */
void EPD_spi_write(unsigned char data)
{
	EPD_spi_read(data);
}
void iTC_spi_sendReg(uint8_t register_index)
{
	EPD_cs_low();
	EPD_DC_low();
	EPD_spi_write(register_index);
	EPD_DC_high();
}
void iTC_spi_sendRegData(uint8_t register_data)
{
	EPD_spi_write(register_data);
}

void iTC_spi_send(uint8_t register_index,uint8_t *register_data,uint8_t len)
{
#if 0
	UartSend((const uint8_t *)&register_index,1);
	if(len>0)UartSend((const uint8_t *)register_data,len);
#endif
	EPD_cs_low();
	EPD_DC_low();
	EPD_spi_write(register_index);
	EPD_DC_high();
	while(len--)
	{
		EPD_spi_write(*register_data++);
	}

	EPD_cs_high();
}
void iTC_spi_send_array(Em_register_array_t *register_array,uint8_t len)
{
	uint8_t i;
	for(i=0; i<len; i++)
	{
		iTC_spi_send(register_array[i].register_index,register_array[i].register_data,register_array[i].len);
	}
}
/**
* \brief SPI command
*
* \param register_index The Register Index as SPI Data to COG
* \param register_data The Register Data for sending command data to COG
* \return the SPI read value
*/
uint8_t EPD_Gx_spi_r(uint8_t register_index, uint8_t register_data)
{
	uint8_t result;
	EPD_cs_low ();
	EPD_spi_write (0x70); // header of Register Index
	EPD_spi_write (register_index);
	EPD_cs_high ();
	delay_btwn_CS_H_L ();
	EPD_cs_low ();

	EPD_spi_write (0x73); // header of Register Data of read command
	//result=EPD_spi_read (register_data);

	EPD_cs_high ();

	//return result;
	return 0;
}
uint8_t EPD_Gx_spi_rid(void)
{
	uint8_t result;
	EPD_cs_low ();
	EPD_spi_write (0x71);
	//result=EPD_spi_read (0x00);
	EPD_cs_high ();
	//return result;
	return 0;
}

/**
* \brief SPI command if register data is larger than two bytes
*
* \param register_index The Register Index as SPI command to COG
* \param register_data The Register Data for sending command data to COG
* \param length The number of bytes of Register Data which depends on which
* Register Index is selected.
*/
void EPD_Gx_spi_send (unsigned char register_index, unsigned char *register_data,
                      unsigned length)
{
	EPD_cs_low ();
	EPD_spi_write (0x70); // header of Register Index
	EPD_spi_write (register_index);
	EPD_cs_high ();
	delay_btwn_CS_H_L ();
	EPD_cs_low ();

	EPD_spi_write (0x72); // header of Register Data of write command
	while(length--)
	{
		EPD_spi_write (*register_data++);
	}
	EPD_cs_high ();
}

/**
* \brief SPI command
*
* \param register_index The Register Index as SPI command to COG
* \param register_data The Register Data for sending command data to COG
*/
void EPD_Gx_spi_send_byte (uint8_t register_index, uint8_t register_data)
{
	EPD_cs_low ();
	EPD_spi_write (0x70); // header of Register Index
	EPD_spi_write (register_index);
	EPD_cs_high ();
	delay_btwn_CS_H_L ();
	EPD_cs_low ();
	EPD_spi_write (0x72); // header of Register Data
	EPD_spi_write (register_data);
	EPD_cs_high ();
}

//static uint32_t clockValue;
/*void system_init(void)
{
	 Halting the Watchdog
	MAP_WDT_A_holdTimer();

	 Enabling FPU for DCO Frequency calculation
	MAP_FPU_enableModule();

	 Setting the DCO Frequency to a non-standard 48MHz
	//MAP_CS_setDCOFrequency(48000000);
	 Setting DCO to 48MHz (upping Vcore)
	MAP_PCM_setCoreVoltageLevel(PCM_VCORE1);
	CS_setDCOCenteredFrequency(CS_DCO_FREQUENCY_48);
	MAP_Interrupt_enableMaster();
	//MAP_PCM_setCoreVoltageLevel(PCM_VCORE1);
	//CS_setDCOCenteredFrequency(CS_DCO_FREQUENCY_48);


		clockValue = CS_getACLK();//32000 Hz
		clockValue = CS_getMCLK();//48M Hz
		clockValue = CS_getSMCLK();//48M Hz
		clockValue = CS_getHSMCLK();//48M Hz
		clockValue = CS_getBCLK();//32000 Hz

}*/
/**
* \brief Configure GPIO
*/
void EPD_initialize_gpio(void)
{
	//COG Control IO Configuration
	Config_Busy_Pin();
	Config_EPD_cs_Pin();
	Config_EPD_rst_Pin();
	Config_EPD_panelon_Pin();
	Config_EPD_discharge_Pin();
	//Config_EPD_border_Pin();
	Config_EPD_flash_cs_Pin();
	Config_SPIMOSI_Pin();
	Config_EPD_pwm_Pin();
	Config_LED1_Pin();
	Config_BS1_Pin();
	BS1_low();//Must be LOW
	EPD_pwm_low();
	EPD_flash_cs_high();
	EPD_border_low();
}
/**
 * \brief Initialize the EPD hardware setting
 */
void EPD_display_hardware_init(void)
{
	EPD_initialize_gpio();
	EPD_Vcc_turn_off();
	EPD_cs_low();
	EPD_rst_low();
	EPD_discharge_low();
}

