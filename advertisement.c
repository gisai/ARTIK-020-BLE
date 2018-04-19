/***********************************************************************************************//**
 * \file   advertisement.c
 * \brief  Functions and data related to advertisement
 ***************************************************************************************************
/****************************************************************************************************/
/* 	In this file we have the advertisement mode configuration.
 *
 */

#include "ble-configuration.h"
#include "board_features.h"

#ifndef FEATURE_BOARD_DETECTED
#error This sample app only works with a Silicon Labs Board
#endif

#include <stdint.h>
#include <string.h>
#include <stdio.h>

/* BG stack headers */
#include "bg_types.h"
#include "native_gecko.h"
#include "infrastructure.h"

/* application specific headers*/
#include "connected.h"

/* Own header */
#include "advertisement.h"

/***********************************************************************************************//**
 * @addtogroup Advertisement
 * @{
 **************************************************************************************************/

/***********************************************************************************************//**
 * @addtogroup adv
 * @{
 **************************************************************************************************/

/***************************************************************************************************
   Local Macros and Definitions
***************************************************************************************************/


/***************************************************************************************************
   Local Variables
 **************************************************************************************************/

static bool advConnectableMode = true;

static bool advIsConnected = false;

/***************************************************************************************************
   Function Definitions
 **************************************************************************************************/

/**
 * Function to set advertising parameters
 */

void advParameters(){

    /* Set advertising parameters. 100ms advertisement interval. All channels used.
     * The first two parameters are minimum and maximum advertising interval, both in
     * units of (milliseconds * 1.6). The third parameter '7' sets advertising on all channels. */

	gecko_cmd_le_gap_set_adv_parameters(min_interval_adv, max_interval_adv, channel_map_adv);

	/* Set the advertising intervals before stop the advertising mode.
	 * The value 0 won't stop the adv mode.
	 */
	gecko_cmd_le_gap_set_adv_timeout(timeout_adv);

	printf("[CMD-GAP]: ADV Parameters set: int_min: %d ms int_max: %d ms\n", min_interval_adv, max_interval_adv);
}
/**
 * Function to start advertising mode
 */
void advSetup(void)
{
  if (advConnectableMode == true) {
    /* set server advertising data and start advertising */
    /* start advertising */
    gecko_cmd_le_gap_set_mode(le_gap_general_discoverable, le_gap_undirected_connectable);

    printf("[CMD-GAP]: START ADVERTISING \n");

  } else {
    bcnSetupAdvBeaconing(); // cambia el modo a beacon
  }

  advIsConnected = false;
}



void advSwitchAdvMessage(void)
{
  if (!advIsConnected) {
    /* switch mode from beaconing to connectable adv. and vica versa */
    advConnectableMode = (advConnectableMode == true) ? false : true;

    /* stop advertisement*/
    gecko_cmd_le_gap_set_mode(le_gap_non_connectable, le_gap_non_discoverable);
  }
  advSetup();
}

void setDiscoverableMode(void){

    gecko_cmd_le_gap_set_mode(le_gap_general_discoverable, le_gap_undirected_connectable);
    printf("[CMD-GAP]: START ADVERTISING \n");
}

void setUnDiscoverableMode(void){
	gecko_cmd_le_gap_set_mode(le_gap_non_connectable, le_gap_non_discoverable);
	printf("[CMD-GAP]: STOP ADVERTISING \n");
}

void advConnectionStoped(void){
	 advIsConnected = false;
}

void advConnectionStarted(void)
{
  advIsConnected = true;
}

/** @} (end addtogroup adv) */
/** @} (end addtogroup Advertisement) */
