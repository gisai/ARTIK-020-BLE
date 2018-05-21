/*
 * connected.h
 *
 *  Created on: 13 de feb. de 2018
 *      Author: Salva
 */

#ifndef CONNECTED_H_
#define CONNECTED_H_

// Conection parameters
#define min_interval_conn	0x0006 // range 7.5ms(0x0006)-4s(0x0c80) --> Value= 200*1,25ms=250ms
#define max_interval_conn	0x0006 // range 7.5ms(0x0006)-4s(0x0c80) --> Value= 200*1,25ms=250ms
#define latency_conn		0	// Default 0. Number of connection slave can skip if no data sent
#define timeout_conn		1000 // range 100ms(0x000a)-32s(0x0c80) --> Value= 100*10ms= 1000ms


#endif /* CONNECTED_H_ */
