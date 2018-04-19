/*
 * ssp.c
 *
 *  Created on: 3 de abr. de 2018
 *      Author: Salva
 */


/*********
 * INCLUDES
 *********/
#include "gatt_db.h"
#include "app.h"
#include "bg_errorcodes.h"
#include "native_gecko.h"
#include "spp.h"

int* main_state;


/************************
 * LOCAL DEFINITIONS
 ***********************/





void spp_init(int* _main_state){
	/* Initialize pointer to _main_state */
	main_state=_main_state;
}

void reset_variables(image_struct *image)
{

	image->pointer=0;
	image->num_bytes_received=0;
	image->num_packets_recived=0;
}


/**
 * We use this function to copy the first image into the second
 * and reset the parameter of the first one
 */
void copy_Image(image_struct *image_1, image_struct *image_2 ){
	int i;

	image_2->num_bytes_received=image_1->num_bytes_received;
	image_2->num_packets_recived=image_1->num_packets_recived;
	image_2->pointer=image_1->pointer;

	for(i=0;i<image_1->pointer;i++){
		image_2->data[i]=image_1->data[i];
	}

	reset_variables(image_1);
}




void printStats(image_struct *image)
{
	printf("Image reception Stats:\n");
	printf("bytes/packets received: %d / %d ", image->num_bytes_received, image->num_packets_recived);

}

/***************************************************
 * In this function we will check if the received image was
 * correct.
 * Return 0 if it is not.
 */

uint8_t checkRecivedImage(image_struct *image){
	if (image-> pointer != image_length - 1)
		return 0;
	else return 1;
}



