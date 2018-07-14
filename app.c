
/*****************************************************************************************
 *						APP.C
 *	 Developed by: Salvador Fco Criado Melero (crimelero@hotmail.com)
 *	 Date: 04/04/2018
 *
 *	 Description:
 *	 In this file we will manage the operation controlled by BLE. All the event
 *	 will produce the info through an USART connection. Connect to a terminal to see it.
 *	 We have the next functionalities implemented here:
 *
 *	 	- BLE Stack Control: in appHandleEvents we have the management of
 *	 	the bluetooth low energy events. See inside for more details.
 *
 *	 	- EPD screen update : in the function pintaPantalla. We transmit the image
 *	 	to print by BLE. The storage of the image is on the struct image_to_print.
 *	 	See below for more details. We will print a message if the update was successful or not.
 *
 *	 	- Image transmission: in this file we control the reception of the image to print.
 *
 *
 ****************************************************************************************/

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
#include "app.h"
#include "pervasive/FPL_drivers/EPD_drivers.h"
#include "pervasive/EPD_interface.h"
#include "retargetserial.h"
#include "sleep.h"
#include "spp.h"





#define sz_iTC_287  6
extern unsigned char const  Image_iTC_287_01[];
extern unsigned char const  Image_iTC_287_02[];
#define  EPD_Type     dr_iTC_287_Aurora_Mb
#define  EPD_Size     EPD_287_BW
#define Image1        (uint8_t *)&Image_iTC_287_01
#define Image2        (uint8_t *)&Image_iTC_287_02


#define dr_eTC_BWa			0
#define dr_eTC_BWb			1
#define dr_iTC_BWb			2


int *main_state;



image_struct image_to_print;
image_struct image_printed;

/***************************************************************************************************
 * Function Definitions
 **************************************************************************************************/
void pintaPantalla();

/***********************************************************************************************//**
 * \brief Function that initializes the device name.
 **************************************************************************************************/
void appInit(int* _main_state)
{
	int i;

  /* Unique device ID */
  uint16_t devId;
  struct gecko_msg_system_get_bt_address_rsp_t* btAddr;
  char devName[APP_DEVNAME_LEN + 1];

  /* Initialize pointer to _main_state */
  main_state=_main_state;


  /* Init device name */
  /* Get the unique device ID */

  /* Create the device name based on the 16-bit device ID */
  btAddr = gecko_cmd_system_get_bt_address();
  devId = *((uint16*)(btAddr->address.addr));
  snprintf(devName, APP_DEVNAME_LEN + 1, APP_DEVNAME, devId);


  /* WRITE NEW NAME */
  gecko_cmd_gatt_server_write_attribute_value(gattdb_device_name,
                                              0,
                                              strlen(devName),
                                              (uint8_t *)devName);

  // Init printed image
  for(i=0;i<sizeof(Image1);i++){
	  image_printed.data[i] = Image1[i];
  }

  image_printed.pointer=sizeof(Image1)-1;



}

/***********************************************************************************************//**
 * \brief Event handler function
 * @param[in] evt Event pointer
 **************************************************************************************************/
void appHandleEvents(struct gecko_cmd_packet *evt)
{
	int i;


  /* Flag for indicating DFU Reset must be performed */
  static uint8_t boot_to_dfu = 0;
  uint8 conn_handle;



  switch (BGLIB_MSG_ID(evt->header)) {

    /****************************************************/
    /*               SYSTEM EVENTS						*/
    /****************************************************/

  	/*case gecko_evt_system_awake_id:
  		//printf("[SYSTEM-EVENT]: AWAKE FROM SLEEP MODE\n");
  		break;*/


  	  // SYSTEM START
  	case gecko_evt_system_boot_id:
  		printf("[SYSTEM-EVENT]: SYSTEM AND RADIO READY \n");

  	    gecko_cmd_system_set_tx_power(Tx_Power);

  		advParameters();
  		setDiscoverableMode();

  	  	break;


    /*****************************************************/
    /* 			  CONEXION MANAGEMENT  					 */
  	/*	Event for establiesh the conexion (le_connection */
    /*****************************************************/

    /* Event indicates the conection has finish (was closed) */
    case gecko_evt_le_connection_closed_id:

    	reset_variables(&image_to_print);

    	printf("[CONECTION-EVENT]: Closed connection\n");


        /* Restart advertising after client has disconnected */
        setDiscoverableMode();
    	*main_state = STATE_ADVERTISING;//Change state

      break;

    /* New connection opened event */
    case gecko_evt_le_connection_opened_id:
    	*main_state = STATE_CONNECTED;

    	printf("[CONECTION-EVENT]: New connection\n");
    	setUnDiscoverableMode();

    	conn_handle = evt->data.evt_le_connection_opened.connection;

        /* We set the connection interval to 7 ms */
      	gecko_cmd_le_connection_set_parameters(conn_handle, min_interval_conn,
      			max_interval_conn, latency_conn, timeout_conn);
      break;

    case gecko_evt_le_connection_parameters_id:
        	printf("Conn.parameters: interval %u units, txsize %u\r\n",
        	evt->data.evt_le_connection_parameters.interval,
    		evt->data.evt_le_connection_parameters.txsize);
        break;


     /*************************************************************/
     /*                GATT EVENTS                                */
     /*************************************************************/

        /* MTU SIZE CHANGED */
    case gecko_evt_gatt_mtu_exchanged_id:
    	/* calculate maximum data per one notification / write-without-response, this depends on the MTU.
    	 * up to ATT_MTU-3 bytes can be sent at once  */
    	printf("MTU exchanged: %d\r\n", evt->data.evt_gatt_mtu_exchanged.mtu);
    	break;

    /* User write request event.  */
    case gecko_evt_gatt_server_user_write_request_id:

      break;

      /* Value of attribute changed from the local database by remote GATT client */
      case gecko_evt_gatt_server_attribute_value_id:
    	 // New packets send by ARTIK-5. We will keep the control of transmission

    	  if (evt->data.evt_gatt_server_attribute_value.attribute == gattdb_gatt_spp_data){



           	 for(i=0;i<evt->data.evt_gatt_server_attribute_value.value.len;i++)
           	 {
           		 image_to_print.data[image_to_print.pointer]=evt->data.evt_gatt_server_attribute_value.value.data[i];
           		 image_to_print.pointer++;
           		//printf("L: %d P: %d D: %c\n", evt->data.evt_gatt_server_attribute_value.value.len, image_to_print.pointer,evt->data.evt_gatt_server_attribute_value.value.data[i]);
           	 }

           	 image_to_print.num_bytes_received += evt->data.evt_gatt_server_attribute_value.value.len;
           	 image_to_print.num_packets_recived++;

           	//printStats(&image_to_print);
    	  }
      break;


      /*
       * This event indicates that CCC descriptor has changed by client or
       * A confirmation of succesfull reception of the indication by the client
       */
      case gecko_evt_gatt_server_characteristic_status_id:
      {
      	struct gecko_msg_gatt_server_characteristic_status_evt_t *pStatus;
      	pStatus = &(evt->data.evt_gatt_server_characteristic_status);

      	if(pStatus->characteristic == gattdb_gatt_spp_data)
      	{
      		if(pStatus->status_flags == gatt_server_client_config)
      		{
      			// Characteristic client configuration (CCC) for spp_data has been changed
      			if(pStatus->client_config_flags == gatt_notification)
      			{
      				SLEEP_SleepBlockBegin(sleepEM1); // disable sleeping
      				printf("SPP mode ON\r\n");
      				*main_state = STATE_SPP_MODE;
      				copy_Image(&image_to_print, &image_printed);
      			}
      			else
      			{
//      				printf("SPP mode OFF\r\n");
//      				printf("DATA STORED:\n");
//     				for(i=0;i<image_to_print.pointer;i++){
//      					printf("%c", image_to_print.data[i]);
//      				}
      				//printStats(&image_to_print);   // We print the stats of the reception
      				pintaPantalla();
      				gecko_cmd_le_connection_close(conn_handle);

      			}
      		}
      	}

      	 break;



    default:
      break;
  }
  }
}




/***********************************************************************************************//**
 * \brief Update display function
 **************************************************************************************************/
// Select the number of screen to print
// This is a long task so we will have to control the schedule of the stack.
// We change to non-block mode receiving event.
void pintaPantalla(){

	 *main_state = STATE_PRINTING_SCREEN;//Change state
	 SLEEP_SleepBlockBegin(sleepEM1); // disable sleeping
	 printf("[ENERGY-MODE]: EM1");


	/* EPD Initialize */
	EPD_display_init();
	Systick_Configuration();
	EPD_delay_ms(500);

	/* EPD Assign */
	uint8_t resultado;
	Set_AssignEPD_Drive(EPD_Type,EPD_Size,USE_Temperature_Sensor);

	/* Update Display */
	resultado = EPD_display_GU_from_pointer((uint8_t *)&image_printed.data,(uint8_t *)&image_to_print.data,OTP_Mode,true);
	EPD_delay_ms(500);

	systick_Stop();

	/* Success/Error Handling */
	if(resultado == RES_OK){
		printf("[EPD-UPDATE]: Successful Screen\n");
	}else{
		printf("[EPD-UPDATE]: ERROR!\n");
	}

	EPD_Power_off_Ex();

	SLEEP_SleepBlockEnd(sleepEM1); // enable sleeping
	printf("[ENERGY-MODE]: EM2");



	//gecko_cmd_system_reset(0);
}


