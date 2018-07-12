/*
 * spp.h
 *
 *  Created on: 3 de abr. de 2018
 *      Author: Salva
 */

#ifndef SPP_H_
#define SPP_H_


#define image_length    4736

/*************************************/
/* STRUCT TO SAVE THE IMG			 */
/*************************************/
typedef struct
{
	unsigned char data[image_length];	// Vector to storage data
	uint32 pointer;				// Pointer to control the storage
	uint32 num_bytes_received;	// Nums of bytes count
	uint32 num_packets_recived; // Nums of packets count
} image_struct;


void spp_init(int* _main_state);
void printStats(image_struct *image);
void reset_variables(image_struct *image);
void copy_Image(image_struct *image_1, image_struct *image_2 );

#endif /* SPP_H_ */
