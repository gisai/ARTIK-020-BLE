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

#include <stdbool.h>
#include <stdint.h>
#include "em_gpio.h"
#ifndef BOARD_HW_DRIVER_H_
#define BOARD_HW_DRIVER_H_

typedef void (*Systick_handler)(uint32_t tick);
typedef struct Em_register_array
{
	uint8_t register_index;
	uint8_t len;
	uint8_t *register_data;
} Em_register_array_t;

#define	_BV(bit)   								(1 << (bit % 8)) /**< left shift 1 bit */
#define	_HIGH      								1            /**< signal high */
#define	_LOW       								!_HIGH       /**< signal low */

#define	config_gpio_dir_o(DDR, Pin)  			GPIO_PinModeSet(DDR, Pin, gpioModePushPull, 0) /**< set output direction for an IOPORT pin */
#define	config_gpio_dir_i(DDR, Pin)  			GPIO_PinModeSet(DDR, Pin, gpioModeInput, 0)  /**< set input direction for an IOPORT pin */
#define	set_gpio_high(Port, Pin)      			GPIO_PinOutSet(Port, Pin) /**< set HIGH for an IOPORT pin */
#define	set_gpio_low(Port, Pin)       			GPIO_PinOutClear(Port, Pin)  /**< set LOW for an IOPORT pin */
#define	set_gpio_invert(Port, Pin)    			GPIO_PinOutToggle(Port, Pin) /**< toggle the value of an IOPORT pin */
#define	input_get(Port, Pin)          			GPIO_PinInGet (Port, Pin)   /**< get current value of an IOPORT pin */

/******************************************************************************
* GPIO Defines
*****************************************************************************/
/*
#define SPICLK_PORT             		GPIO_PORT_P1       *< LaunchPad P1.5
#define SPICLK_PIN              		GPIO_PIN5
#define EPD_BUSY_PORT           		GPIO_PORT_P4       *< LaunchPad P4.6
#define EPD_BUSY_PIN            		GPIO_PIN6
#define PWM_PORT                		GPIO_PORT_P6       *< LaunchPad P6.5
#define PWM_PIN                 		GPIO_PIN5
#define EPD_RST_PORT            		GPIO_PORT_P6       *< LaunchPad P6.4
#define EPD_RST_PIN             		GPIO_PIN4
#define EPD_PANELON_PORT        		GPIO_PORT_P3       *< LaunchPad P3.6
#define EPD_PANELON_PIN         		GPIO_PIN6
#define EPD_DISCHARGE_PORT      		GPIO_PORT_P5       *< LaunchPad P5.2
#define EPD_DISCHARGE_PIN       		GPIO_PIN2
#define EPD_BORDER_PORT         		GPIO_PORT_P5       *< LaunchPad P5.0
#define EPD_BORDER_PIN          		GPIO_PIN0
#define SPIMISO_PORT            		GPIO_PORT_P1       *< LaunchPad P1.7
#define SPIMISO_PIN             		GPIO_PIN7
#define SPIMOSI_PORT            		GPIO_PORT_P1       *< LaunchPad P1.6
#define SPIMOSI_PIN             		GPIO_PIN6
#define Flash_CS_PORT           		GPIO_PORT_P3       *< LaunchPad P3.0
#define Flash_CS_PIN            		GPIO_PIN0
#define EPD_CS_PORT             		GPIO_PORT_P2       *< LaunchPad P2.5
#define EPD_CS_PIN              		GPIO_PIN5

#define EPD_DC_PORT             		GPIO_PORT_P6       *< LaunchPad P6.5
#define EPD_DC_PIN              		GPIO_PIN5
#define EPD_DB1_PORT             		GPIO_PORT_P5       *< LaunchPad P5.0
#define EPD_DB1_PIN              		GPIO_PIN0
#define EPD_DB2_PORT             		GPIO_PORT_P6       *< LaunchPad P6.0
#define EPD_DB2_PIN              		GPIO_PIN0

#define LED1_PORT           		    GPIO_PORT_P1       *< LaunchPad P1.0
#define LED1_PIN            			GPIO_PIN0
#define BS1_PORT           				GPIO_PORT_P5       *< LaunchPad P5.7
#define BS1_PIN            				GPIO_PIN7

#define SW2_PORT           				GPIO_PORT_P1       *< LaunchPad P1.4
#define SW2_PIN            				GPIO_PIN4
#define SW1_PORT           				GPIO_PORT_P1       *< LaunchPad P1.1
#define SW1_PIN            				GPIO_PIN1
*/
/*
#define EPD_PIN_MOSI       gpioPortC,6	//Ext.Board Pin 4
#define EPD_PIN_MISO       gpioPortC,7	//Ext.Board Pin 6
#define EPD_PIN_CLK        gpioPortC,8	//Ext.Board Pin 8
#define EPD_PIN_CS         gpioPortC,9	//Ext.Board Pin 10
#define EPD_PIN_RESET      gpioPortA,1	//Ext.Board Pin 14
#define EPD_PIN_BORDER     gpioPortB,11	//Ext.Board Pin 11
#define EPD_PIN_PWM        gpioPortA,2	//Ext.Board Pin 3
#define EPD_PIN_BUSY       gpioPortF,3	//Ext.Board Pin 13
#define EPD_PIN_PANEL_ON   gpioPortC,10	//Ext.Board Pin 16
#define EPD_PIN_DISCHARGE  gpioPortF,5	//Ext.Board Pin 9
//#define EPD_PIN_PANEL_VDD  gpioPortF,3	//Ext.Board Pin 13
#define Flash_CS  		   gpioPortF,4	//Ext.Board Pin 7

*/
/*
inline void Config_BS1_Pin()
{
	//config_gpio_dir_o(BS1_PORT,BS1_PIN);
}
inline void BS1_high()
{
	//set_gpio_high(BS1_PORT,BS1_PIN);
}
inline void BS1_low()
{
	//set_gpio_low(BS1_PORT,BS1_PIN);
}
inline void Enable_SW_Pin()
{
	//config_gpio_dir_i(SW1_PORT,SW1_PIN |SW2_PIN );
}
inline void Disable_SW_Pin()
{
	//config_gpio_dir_o(BS1_PORT,BS1_PIN);
	//BS1_low();
}
inline bool SW1_State()
{
	//return (bool)input_get(SW1_PORT,SW1_PIN);
}
inline bool SW2_State()
{
	//return (bool)input_get(SW2_PORT,SW2_PIN);
}

inline void Config_LED1_Pin()
{
	//config_gpio_dir_o(LED1_PORT,LED1_PIN);
}
inline void LED1_high()
{
	//set_gpio_high(LED1_PORT,LED1_PIN);
}
inline void LED1_low()
{
	//set_gpio_low(LED1_PORT,LED1_PIN);
}

inline void Config_Busy_Pin()
{
	//onfig_gpio_dir_i(EPD_PIN_BUSY,0);
	GPIO_PinModeSet(EPD_PIN_BUSY, gpioModeInput, 0);
}
inline bool EPD_IsBusy()
{
	return (bool)input_get(EPD_PIN_BUSY);
}
inline void Config_EPD_cs_Pin()
{
	GPIO_PinModeSet(EPD_PIN_CS,gpioModePushPull,0);
}
static inline void EPD_cs_high()
{
	set_gpio_high(EPD_PIN_CS);
}
static inline void EPD_cs_low()
{
	set_gpio_low(EPD_PIN_CS);
}

inline void Config_EPD_flash_cs_Pin()
{
	GPIO_PinModeSet(Flash_CS,gpioModePushPull, 0);
}
static inline void EPD_flash_cs_high()
{
	set_gpio_high(Flash_CS);
}
static inline void EPD_flash_cs_low()
{
	set_gpio_low(Flash_CS);
}

inline void Config_EPD_rst_Pin()
{
	GPIO_PinModeSet(EPD_PIN_RESET,gpioModePushPull, 0);
}
inline void EPD_rst_high()
{
	set_gpio_high(EPD_PIN_RESET);
}
inline void EPD_rst_low()
{
	set_gpio_low(EPD_PIN_RESET);
}

inline void Config_EPD_discharge_Pin()
{
	GPIO_PinModeSet(EPD_PIN_DISCHARGE,gpioModePushPull, 0);
}
static inline void EPD_discharge_high()
{
	set_gpio_high(EPD_PIN_DISCHARGE);
}
static inline void EPD_discharge_low()
{
	set_gpio_low(EPD_PIN_DISCHARGE);
}

inline void Config_EPD_panelon_Pin()
{
	GPIO_PinModeSet(EPD_PIN_PANEL_ON,gpioModePushPull, 0);
}
static inline void EPD_Vcc_turn_on()
{
	set_gpio_high(EPD_PIN_PANEL_ON);
}
static inline void EPD_Vcc_turn_off()
{
	set_gpio_low(EPD_PIN_PANEL_ON);
}

inline void Config_EPD_border_Pin()
{
	GPIO_PinModeSet(EPD_PIN_BORDER,gpioModePushPull, 1);
}
static inline void EPD_border_high()
{
	set_gpio_high(EPD_PIN_BORDER);
}
static inline void EPD_border_low()
{
	set_gpio_low(EPD_PIN_BORDER);
}

inline void Config_EPD_pwm_Pin()
{
	GPIO_PinModeSet(EPD_PIN_PWM,gpioModePushPull, 0);
}
static inline void EPD_pwm_high()
{
	set_gpio_high(EPD_PIN_PWM);
}
static inline void EPD_pwm_low()
{
	set_gpio_low(EPD_PIN_PWM);
}

inline void Config_SPIMISO_Pin()
{
	GPIO_PinModeSet(EPD_PIN_MISO,gpioModePushPull, 0);
}
inline void Config_SPIMOSI_Pin()
{
	GPIO_PinModeSet(EPD_PIN_MOSI,gpioModePushPull, 1);
}
static inline void SPIMISO_low()
{
	set_gpio_low(EPD_PIN_MISO);
}
static inline void SPIMOSI_low()
{
	set_gpio_low(EPD_PIN_MOSI);
}
static inline void SPICLK_low()
{
	set_gpio_low(EPD_PIN_CLK);
}

inline void Config_EPD_DC_Pin()
{
	GPIO_PinModeSet(EPD_PIN_PWM, gpioModePushPull, 0);
}
static inline void EPD_DC_high()
{
	set_gpio_high(EPD_PIN_PWM);
}
static inline void EPD_DC_low()
{
	set_gpio_low(EPD_PIN_PWM);
}

inline void Config_EPD_DB1_Pin()
{
	GPIO_PinModeSet(EPD_PIN_BORDER, gpioModeInput, 0);
	//config_gpio_dir_i(EPD_PIN_BORDER, 0);
}
static inline bool Get_EPD_DB1()
{
	return (bool)input_get(EPD_PIN_BORDER);
}

inline void Config_EPD_DB2_Pin()
{
	//config_gpio_dir_i(EPD_DB2_PORT,EPD_DB2_PIN);
}
inline bool Get_EPD_DB2()
{
	//return (bool)input_get(EPD_DB2_PORT,EPD_DB2_PIN);
}
*/

//#define Temper_PIN              4
//#define Temper_PORT             gpioPortD
#define SPIMOSI_PIN             6
#define SPIMOSI_PORT            gpioPortC
#define SPIMISO_PIN             7
#define SPIMISO_PORT            gpioPortC
#define SPICLK_PIN              2
#define SPICLK_PORT             gpioPortC
#define EPD_BUSY_PIN            3
#define EPD_BUSY_PORT           gpioPortF
#define PWM_PIN                 5
#define PWM_PORT                gpioPortF
#define EPD_RST_PIN             1
#define EPD_RST_PORT            gpioPortA
#define EPD_PANELON_PIN         10
#define EPD_PANELON_PORT        gpioPortC
#define EPD_DISCHARGE_PIN       2
#define EPD_DISCHARGE_PORT      gpioPortA
#define EPD_BORDER_PIN          11
#define EPD_BORDER_PORT         gpioPortB
#define Flash_CS_PIN            4
#define Flash_CS_PORT           gpioPortF
#define EPD_CS_PIN              9
#define EPD_CS_PORT             gpioPortC

void Config_BS1_Pin();
void BS1_high();
void BS1_low();
void Enable_SW_Pin();
void Disable_SW_Pin();
bool SW1_State();
bool SW2_State();
void Config_LED1_Pin();
void LED1_high();
void LED1_low();
void Config_Busy_Pin();
bool EPD_IsBusy();
void Config_EPD_cs_Pin();
void EPD_cs_high();
void EPD_cs_low();
void Config_EPD_flash_cs_Pin();
void EPD_flash_cs_high();
void EPD_flash_cs_low();
void Config_EPD_rst_Pin();
void EPD_rst_high();
void EPD_rst_low();
void Config_EPD_discharge_Pin();
void EPD_discharge_high();
void EPD_discharge_low();
void Config_EPD_panelon_Pin();
void EPD_Vcc_turn_on();
void EPD_Vcc_turn_off();
void Config_EPD_border_Pin();
void EPD_border_high();
void EPD_border_low();
void Config_EPD_pwm_Pin();
void EPD_pwm_high();
void EPD_pwm_low();
void SPIMISO_low();
void SPIMOSI_low();
void SPICLK_low();
void Config_EPD_DC_Pin();
void EPD_DC_high();
void EPD_DC_low();
void Config_EPD_DB1_Pin();
bool Get_EPD_DB1();
void Config_EPD_DB2_Pin();
bool Get_EPD_DB2();
void Config_SPIMOSI_Pin();




#define CPU_F 									((double)48000000)

/** The SPI frequency of this kit (8MHz) */
#define COG_SPI_baudrate    					8000000
#define FLASH_SPI_baudrate    					12000000

#define _delay_us(A)\
  __delay_cycles( (uint32_t) ( (double)(CPU_F) *((A)/1000000.0) + 0.5))

#define _delay_ms(A)\
  __delay_cycles( (uint32_t) ( (double)(CPU_F)*((A)/1000.0) + 0.5))

#define _delay_s(A)\
  __delay_cycles( (uint32_t) ( (double)(CPU_F)*((A)/1.0) + 0.5))



//========================================================================================================
//void system_init(void);
uint32_t getnowtime(void);
void Systick_Configuration(void);
void systick_Start(void);
void systick_Stop(void);

void start_EPD_timer(void);
void stop_EPD_timer(void);
uint32_t get_EPD_time_tick(void);
void EPD_delay_ms(unsigned int ms);

void EPD_spi_attach (void);
void EPD_spi_detach (void);
bool check_flash_spi(void);
void EPD_spi_read(uint8_t data);
void EPD_spi_write (uint8_t data);

void iTC_spi_sendReg(uint8_t register_index);
void iTC_spi_sendRegData(uint8_t register_data);
void iTC_spi_send(uint8_t register_index,uint8_t *register_data,uint8_t len);
void iTC_spi_send_array(Em_register_array_t *register_array,uint8_t len);

void EPD_Gx_spi_send (unsigned char register_index, unsigned char *register_data, unsigned Length);
void EPD_Gx_spi_send_byte (uint8_t register_index, uint8_t register_data);
uint8_t EPD_Gx_spi_r(uint8_t register_index, uint8_t register_data);
uint8_t EPD_Gx_spi_rid(void);

void EPD_display_hardware_init (void);
void PWM_run(uint16_t time);

#define delay_ms(x)  EPD_delay_ms(x)

#endif /* BOARD_HW_DRIVER_H_ */
