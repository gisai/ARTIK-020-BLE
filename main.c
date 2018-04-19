/***********************************************************************************************//**
 * \file   main.c
 * \brief  Silicon Labs Empty Example Project
 *
 * This example demonstrates the bare minimum needed for a Blue Gecko C application
 * that allows Over-the-Air Device Firmware Upgrading (OTA DFU). The application
 * starts advertising after boot and restarts advertising after a connection is closed.
 ***************************************************************************************************
 * <b> (C) Copyright 2016 Silicon Labs, http://www.silabs.com</b>
 ***************************************************************************************************
 * This file is licensed under the Silabs License Agreement. See the file
 * "Silabs_License_Agreement.txt" for details. Before using this software for
 * any purpose, you must agree to the terms of that agreement.
 **************************************************************************************************/

/****************************************************************************************************/
/*

/* Board headers */
#include "init_mcu.h"
#include "init_board.h"
#include "init_app.h"
#include "ble-configuration.h"
#include "board_features.h"

/* Bluetooth stack headers */
#include "bg_types.h"
#include "native_gecko.h"
#include "gatt_db.h"

/* Libraries containing default Gecko configuration values */
#include "em_emu.h"
#include "em_cmu.h"

/* Device initialization header */
#include "hal-config.h"

/* VCOM headers */
#include "stdio.h"
#include "retargetserial.h"

/* APP includes */
#include "app.h"
#include "spp.h"

#if defined(HAL_CONFIG)
#include "bsphalconfig.h"
#else
#include "bspconfig.h"
#endif

/*************************************************
 * BLE MODE DEFINE
 *************************************************/



#ifndef MAX_CONNECTIONS
#define MAX_CONNECTIONS 4
#endif


volatile int _main_state = STATE_ADVERTISING;


uint8_t bluetooth_stack_heap[DEFAULT_BLUETOOTH_HEAP(MAX_CONNECTIONS)];

// Gecko configuration parameters (see gecko_configuration.h)
static const gecko_configuration_t config = {
  .config_flags = 0,
  .sleep.flags = SLEEP_FLAGS_DEEP_SLEEP_ENABLE,
  .bluetooth.max_connections = MAX_CONNECTIONS,
  .bluetooth.heap = bluetooth_stack_heap,
  .bluetooth.heap_size = sizeof(bluetooth_stack_heap),
  .bluetooth.sleep_clock_accuracy = 100, // ppm
  .gattdb = &bg_gattdb_data,
  .ota.flags = 0,
  .ota.device_name_len = 3,
  .ota.device_name_ptr = "OTA",
#if (HAL_PA_ENABLE) && defined(FEATURE_PA_HIGH_POWER)
  .pa.config_enable = 1, // Enable high power PA
  .pa.input = GECKO_RADIO_PA_INPUT_VBAT, // Configure PA input to VBAT
#endif // (HAL_PA_ENABLE) && defined(FEATURE_PA_HIGH_POWER)
};

// Flag for indicating DFU Reset must be performed
uint8_t boot_to_dfu = 0;



/**
 * @brief  Main function
 */
void main(void){
  // Initialize device
  initMcu();
  // Initialize board
  initBoard();
  // Initialize application
  initApp();

  // Initialize stack
  gecko_init(&config);

  // Initialize VCOM
  RETARGET_SerialInit();

  // Initialize bluetooth name
  appInit(&_main_state);

  // Initialize ssp Service
  spp_init(&_main_state);

  _main_state = STATE_ADVERTISING;

  while(1){
 	  /* Event pointer for handling events */
 	    struct gecko_cmd_packet* evt;

 	    if (_main_state == STATE_SPP_MODE || _main_state == STATE_PRINTING_SCREEN){

 	    	/* if SPP data mode is active, use non-blocking gecko_peek_event() */
 	    	evt = gecko_peek_event();

 	    	if (evt == NULL){

 				continue;  /* jump directly to next iteration i.e. call gecko_peek_event() again */
 	    	}

 	    } else {
 	    	/* SPP data mode not active -> check for stack events using the blocking API */
 	       	evt = gecko_wait_event();
 	    }

 	    appHandleEvents(evt);
   }

 }

/** @} (end addtogroup app) */
/** @} (end addtogroup Application) */
