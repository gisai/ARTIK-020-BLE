/*
 * debug_printf.c
 *
 *  Created on: 7 de feb. de 2018
 *      Author: Salva
 */

/* standard library headers */
#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>

/* BG stack headers */
#include "bg_types.h"
#include "native_gecko.h"

/* profiles */


/* BG stack headers*/
#include "gatt_db.h"

/* em library */
#include "em_system.h"

/* application specific headers */
#include "advertisement.h"
#include "connected.h"
#include "board_features.h"

/* Own header */
#include "app.h"
#include "debug_printf.h"

void printf_ble_address(){
	  struct gecko_msg_system_get_bt_address_rsp_t* btAddr;
	  uint16_t devId;

	  btAddr = gecko_cmd_system_get_bt_address();
      devId = *((uint16*)(btAddr->address.addr));

      printf("[INFO]DEVICE ADDRESS: %d", devId);

}
