/***********************************************************************************************//**
 * \file   app.h
 * \brief  Application header file
 ***************************************************************************************************
 * <b> (C) Copyright 2015 Silicon Labs, http://www.silabs.com</b>
 ***************************************************************************************************
 * This file is licensed under the Silabs License Agreement. See the file
 * "Silabs_License_Agreement.txt" for details. Before using this software for
 * any purpose, you must agree to the terms of that agreement.
 **************************************************************************************************/

#ifndef APP_H
#define APP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************************************************************************************
 *  Public Macros and Definitions
 **************************************************************************************************/
/* Text definitions*/
/* Must match length of APP_DEVNAME_DEFAULT after printf formatting */
#define APP_DEVNAME                  "SCREEN-%2u"
#define APP_DEVNAME_DEFAULT          "SCREEN-00"
/* subtract 1 because of terminating NULL character */
#define APP_DEVNAME_LEN              (sizeof(APP_DEVNAME_DEFAULT) - 1)

#define STATE_ADVERTISING   	1
#define STATE_CONNECTED     	2
#define STATE_SPP_MODE      	3
#define STATE_PRINTING_SCREEN 	4

/***********************************************************************************************//**
 * \defgroup app Application Code
 * \brief Sample Application Implementation
 **************************************************************************************************/

/***********************************************************************************************//**
 * @addtogroup Application
 * @{
 **************************************************************************************************/

/***********************************************************************************************//**
 * @addtogroup app
 * @{
 **************************************************************************************************/

/***************************************************************************************************
 * Type Definitions
 **************************************************************************************************/

/***************************************************************************************************
 * Function Declarations
 **************************************************************************************************/

/***********************************************************************************************//**
 *  \brief  Initialise application, set device name.
 **************************************************************************************************/
void appInit(int* _main_state);


/***********************************************************************************************//**
 *  \brief  Handle application events.
 *  \param[in]  evt  incoming event ID
 **************************************************************************************************/
void appHandleEvents(struct gecko_cmd_packet *evt);

/** @} (end addtogroup app) */
/** @} (end addtogroup Application) */

#ifdef __cplusplus
};
#endif

#endif /* APP_H */
