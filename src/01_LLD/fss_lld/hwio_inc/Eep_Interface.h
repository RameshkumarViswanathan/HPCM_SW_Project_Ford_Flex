/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Eep_Interface.h                                          */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD)                                      */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   Target specific initialization code                                     */
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
/* [1]         24.07.2023    Sagar H              Created                    */
/*****************************************************************************/
#ifndef Eep_Interface_H
#define Eep_Interface_H

/*****************************************************************************/
/*                      Include Section                                      */
/*****************************************************************************/
/* Header Include Files */
#include "Std_Types.h"


/* SR bits definitions */
#define E2_SR_WIP   0x01 /* Write in Progress */

/*****************************************************************************/
/*                      Enum Definition                                      */
/*****************************************************************************/

enum
{
    EEPROM_WRITE_SUCCESSFUL  = 0x00,
    EEPROM_WRITE_IN_PROGRESS = 0x01,
    EEPROM_WRITE_FAILURE     = 0x02
}Eep_WRSR_Cmd_Status;

enum
{
    EEPROM_DISABLE_PROTECTION = 0,
    EEPROM_ENABLE_PROTECTION  = 1
}Eep_Protection;

enum
{
    EEPROM_PROTECTION_STATUS_UPDATE_SUCCESSFUL = 0x00,
    EEPROM_PROTECTION_BUSY                     = 0x01,
    EEPROM_FUNCTION_FAILURE                    = 0x02
}Eep_Protection_Status;

enum 
{
    EEPROM_WRITE_COMMAND_INITIATED            = 0,
    EEPROM_WRITE_COMMAND_FAILURE_DEVICE_ERROR,
    EEPROM_WRITE_COMMAND_PROTECT_ERROR,
    EEPROM_WRITE_COMMAND_DEFAULT
}Eep_Write_Cmd_Status;

enum
{
    EEPROM_READ_COMMAND_COMPLETED_SUCCESSFUL = 0x00,
    EEPROM_READ_FAILURE_EEPROM_BUSY          = 0x01,
    EEPROM_READ_FAILURE_DEVICE_ERROR         = 0x02
}Eep_Read_Cmd_Status;

/*****************************************************************************/
/*                      Macro Definition                                     */
/*****************************************************************************/

#define	SpiConf_SpiChannel_EEPROM_8BIT		(SpiConf_SpiChannel_SpiConf_SpiChannel_EEPROM_8BIT )
#define	SpiConf_SpiChannel_EEPROM_16BIT		(SpiConf_SpiChannel_SpiConf_SpiChannel_EEPROM_16BIT)
#define	SpiConf_SpiChannel_EEPROM_32BIT     (SpiConf_SpiChannel_SpiConf_SpiChannel_EEPROM_32BIT)

#define SpiConf_SpiSequence_EEPROM_CMD      (SpiConf_SpiSequence_SpiConf_SpiSequence_EEPROM_CMD  )
#define SpiConf_SpiSequence_EEPROM_CMD2     (SpiConf_SpiSequence_SpiConf_SpiSequence_EEPROM_CMD2 )
#define SpiConf_SpiSequence_EEPROM_READ     (SpiConf_SpiSequence_SpiConf_SpiSequence_EEPROM_READ )
#define SpiConf_SpiSequence_EEPROM_WRITE    (SpiConf_SpiSequence_SpiConf_SpiSequence_EEPROM_WRITE)

/*****************************************************************************/
/*                      Global Function Prototype                            */
/*****************************************************************************/
/* Non Volatile Memory Fucntions */
extern U32 HWIO_EEPROM_Read(U16 in_addr, U8 * out_addr, U32 length);
extern U32 HWIO_EEPROM_Write(U16 in_addr, U8 * in_data, U32 length);
extern U32 HWIO_EEPROM_Write_Status(void);
extern U32 HWIO_EEPROM_Write_Protect(uint8 BlockId, FLAG ProtectionEnabled);
extern void HWIO_EEPROM_Init(void );

#endif /* Eep_Interface_H */