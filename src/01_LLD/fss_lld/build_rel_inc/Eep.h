/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Eep.h                                                            */
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
#ifndef EEP_H_
#define EEP_H_
/*****************************************************************************/
/*                      Include Section                                      */
/*****************************************************************************/
#include "Std_Types.h"
#include "MemIf_Types.h"
#include "Spi.h"

/*******************************************************************************/
/*                     Macro Definitions                                       */
/*******************************************************************************/

typedef U16 Eep_AddressType;
typedef Eep_AddressType Eep_LengthType;
typedef U8 Spi_DataType;

#define EEP_LID_SET                        (0x02)
#define EEP_LID_RESET                      (0x00)
#define EEP_LID_ADDRESS_H                  (0x04)
#define EEP_LID_ADDRESS_L                  (0x00)
#define EEP_ID_ADDRESS_H                   (0x00)
#define EEP_ID_ADDRESS_OFFSET              (0x003F)
#define EEP_LID_LENGTH                     (0x04)

#define EEP_INSTRUCTION_CODE_BYTE          (1)
#define EEP_ADDRESS_CODE_BYTE              (2)
      
#define EEP_MAX_DATA_WRITE_SIZE            (67)
#define EEP_MAX_DATA_READ_SIZE             (67)
#define EEP_DATA_MARGIN                    (EEP_INSTRUCTION_CODE_BYTE + EEP_ADDRESS_CODE_BYTE)

#define EEP_E_MAX_ADDRESS                        (0x3FFF)
#define EEP_E_BASE_ADDRESS                       (0)
#define EEP_E_PAGE_DATA_MAX_LENGTH               (64) 
#define EEP_E_FIRSTPAGE_DATA_MAX_LENGTH          (61)  
#define EEP_E_FIRSTPAGE_DATA_MAX_LENGTH_MARGIN   (3) 
 
#define EEP_SHIFT_DATA_8BIT                (8)
#define EEP_SHIFT_DATA_16BIT               (16) 
#define EEP_SHIFT_DATA_24BIT               (24)  
#define EEP_STS_REG_READ_DATA_LEN          (1)
#define EEP_STS_REG_WRITE_DATA_LEN         (1)
#define EEP_STS_REG_WRDI_DATA_LEN          (1)
#define EEP_STS_REG_WREN_DATA_LEN          (1)
#define EEP_STS_REG_BP1_BP0_SET            (0x0C)
#define EEP_STS_REG_BP1_BP0_UNSET          (0xF3)
#define EEP_STS_REG_BP1_ONLY_SET           (0x08)
#define EEP_STS_REG_BP1_UNSET              (0xF7)
#define EEP_STS_REG_BP0_ONLY_SET           (0x04)
#define EEP_STS_REG_BP0_UNSET              (0xFB)
#define EEP_STS_REG_WPEN_BP1_BP0_UNSET     (0xFF)

#define EEP_PROTECTION_BLOCK_ID_0          (0x00) /*Protected Block - None,Protected Addresses - None */
#define EEP_PROTECTION_BLOCK_ID_1          (0x01) /*Protected Block - Upper 1/4,Protected Addresses - 3000h to 3FFFh */
#define EEP_PROTECTION_BLOCK_ID_2          (0x02) /*Protected Block - Upper 1/2 ,Protected Addresses - 2000h to 3FFFh */
#define EEP_PROTECTION_BLOCK_ID_3          (0x03) /*Protected Block - Whole Memory,Protected Addresses - 0000h to 3FFFh also ID Page */

#define EEP_PROTECTION_BLOCK_ID_1_MIN      (0x3000)
#define EEP_PROTECTION_BLOCK_ID_1_MAX      (0x3FFF)
#define EEP_PROTECTION_BLOCK_ID_2_MIN      (0x2000)
#define EEP_PROTECTION_BLOCK_ID_2_MAX      (0x3FFF)

#define EEP_ID_PAGE_ADDRESS_MIN            (0x0000)
#define EEP_ID_PAGE_ADDRESS_MAX            (0x0002)                 

#define EEP_WREN                            (0x6 )      /* Write Enable 0000 0110 */
#define EEP_WRDI                            (0x4 )      /* Write Disable 0000 0100 */
#define EEP_READ                            (0x3 )      /* Read from Memory Array 0000 0011 */
#define EEP_WRITE                           (0x2 )      /* WRITE  Write to Memory Array  0000 0010 */
#define EEP_RDSR                            (0x5 )      /* Read Status Register  0000 0101 */
#define EEP_WRSR                            (0x1 )      /* Write Status Register  0000 0001 */
#define EEP_RDID                            (0x83)      /* Read ID Page 1000 0011 */
#define EEP_WRID                            (0x82)      /* Write ID Page 1000 0010 */
#define EEP_RDLS                            (0x83)      /* Read Lock Status 1000 0011 */
#define EEP_LID                             (0x82)      /* Lock ID page 1000 0010 */

/*******************************************************************************/
/*                     Enum & Structure Declaration                            */
/*******************************************************************************/
typedef struct
{
    boolean READY_BUSY : 1;
    boolean WEN        : 1;
    boolean BP0        : 1;
    boolean BP1        : 1;
    boolean D4         : 1;
    boolean D5         : 1;
    boolean D6         : 1;
    boolean WPEN       : 1;
}Eep_Status_Reg;

typedef struct 
{
    Eep_LengthType	EepSize;
    Eep_AddressType EepBaseAddress;
    Eep_AddressType EepPageSize;
    
    Spi_JobResultType JobResultType;
    Spi_JobResultType WriteJobResultType;
    Spi_StatusType    Spi_Status;

    Spi_DataType   EepCmd;
    Spi_DataType   Protected_Blk_Area;
    Spi_DataType   Status_RegValue;
    Eep_Status_Reg StatusReg_BitVal;

    Spi_DataBufferType Eep_Tx_Buffer[EEP_MAX_DATA_WRITE_SIZE];
    Spi_DataBufferType Eep_Rx_Buffer[EEP_MAX_DATA_READ_SIZE];

} Eep_GlobalType;

/*******************************************************************************/
/*                     Global Function Prototype                               */
/*******************************************************************************/
void Eep_Init(void);

Std_ReturnType Eep_Write (Eep_AddressType EepromAddress,
                          const U8 *DataBufferPtr,
                          Eep_LengthType Length);

Std_ReturnType Eep_Read (Eep_AddressType EepromAddress,
                         U8 *TargetAddressPtr,
                         Eep_LengthType Length);

Spi_DataType Eep_ReadStatusRegister (void);
Std_ReturnType Eep_WriteStatusRegister(uint8 Eep_WRSR_RegVal);
Std_ReturnType Eep_WRDI(void);
Std_ReturnType Eep_WREN(void);
Spi_JobResultType Eep_Write_Status (void);
Std_ReturnType Eep_RDID (Eep_AddressType EepromAddress, U8* TargetAddressPtr, Eep_LengthType Length);
Std_ReturnType Eep_WRID (Eep_AddressType EepromAddress, const U8* DataBufferPtr, Eep_LengthType Length);
Std_ReturnType Eep_RDLS (U8* TargetAddressPtr, Eep_LengthType Length);
Std_ReturnType Eep_LID (U8 EEP_LID_Status);

#endif /*EEP_H_*/