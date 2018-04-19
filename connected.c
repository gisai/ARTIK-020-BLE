/*
 * connected.c
 *
 *  Created on: 13 de feb. de 2018
 *      Author: Salva
 */

/* BG stack headers */
#include "bg_types.h"
#include "native_gecko.h"
#include "infrastructure.h"

#include "connected.h"

void SetupConnParameters(void){
	/*
	 * Set the connection parameters. See IDE for more details.
	 */
	gecko_cmd_le_gap_set_conn_parameters(min_interval_conn, max_interval_conn, latency_conn, timeout_conn);

	printf("[CMD-GAP]: Conection Param set: Int_min: %d ms Int_max: %d ms Timeout: %d s\n",
						min_interval_conn*(int)1.25, max_interval_conn*(int)1.25, timeout_conn/(int)100);
}
