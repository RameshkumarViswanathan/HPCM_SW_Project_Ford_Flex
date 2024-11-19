#ifndef DIAG_PID_H
#define DIAG_PID_H

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE  Diag_Pid.h                                                        */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION          PROJECT (FORD)                                           */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   creating Diag_Pid.h file to return address                              */
/*****************************************************************************/
/* FUNCTIONS FORD function prototypes                                        */
/*                                                                           */
/*****************************************************************************/
/* REMARKS                                                                   */
/*                                                                           */
/*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/* [1]         02.01.2023    Bhavya MR         Created                       */
/*****************************************************************************/


/*****************************************************************************/
/*                        Inclustions                                        */
/*****************************************************************************/
#include "Platform_Types.h"

/*****************************************************************************/
/*                        DEFINITIONS                                        */
/*****************************************************************************/

#define DIAGSWC_DID_VERSION_INFO_BYTES      (24U)
#define DIAGSWC_DID_ECU_NUM_INFO_BYTES      (16U)


#define DID_F111_ECU_CORE_ASSEMBLY_NUMBER_OFFSET 		     (0U)
/* +1 for char string: take one additional byte into account for the NULL delimiter */
#define DID_F113_ECU_DELIVERY_ASSEMBLY_NUMBER_OFFSET	     (DIAGSWC_DID_VERSION_INFO_BYTES)
#define DID_F18C_ECU_SERIAL_NUMBER_OFFSET			         (DIAGSWC_DID_VERSION_INFO_BYTES + DID_F113_ECU_DELIVERY_ASSEMBLY_NUMBER_OFFSET)
#define BOOT_SOFTWARE_IDENTIFICATION_OFFSET                  (DIAGSWC_DID_VERSION_INFO_BYTES + DIAGSWC_DID_VERSION_INFO_BYTES + DIAGSWC_DID_ECU_NUM_INFO_BYTES)

/*****************************************************************************/
/*                        Varibales                                          */
/*****************************************************************************/


/*****************************************************************************/
/*                        Global Functions                                   */
/*****************************************************************************/
/*Not reentrant. Called on demand by Application.This function shall return
the memory address of the stored part number in the boot block.*/

U32 get_hwio_core_assy_num( void );
U32 get_hwio_delivery_assy_num( void );
U32 get_hwio_serial_num( void );
U32 get_hwio_boot_software_id( void );

void Part_Numbering_init(void);



#endif /* DIAG_PID_H */