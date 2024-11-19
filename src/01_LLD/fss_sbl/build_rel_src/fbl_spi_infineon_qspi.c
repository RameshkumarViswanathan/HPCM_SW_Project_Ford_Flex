/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief        Serial Peripheral Interface Driver (Infineon Qspi)
 *
 *  --------------------------------------------------------------------------------------------------------------------
 *  COPYRIGHT
 *  --------------------------------------------------------------------------------------------------------------------
 *  \par Copyright
 *  \verbatim
 *  Copyright (c) 2021 by Vector Informatik GmbH.                                                  All rights reserved.
 *
 *                This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 */
/**********************************************************************************************************************/

/***********************************************************************************************************************
 *  TEMPLATE REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  03.00.00   2015-11-18  visase  -                Initial version
 *  03.00.01   2016-06-01  visrie  ESCAN00090444    Added interface version check against used SPI IF
 *  03.01.00   2018-06-04  visrie  ESCAN00099571    No changes
 *  03.02.00   2018-06-20  visrie  ESCAN00099737    Update to latest VectorIf version
 *  03.03.00   2021-03-21  visjdn  FBL-3250         Polling frequency support
 *  --------------------------------------------------------------------------------------------------------------------
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  01.00.00   2014-12-11  visfr   -                Initial version
 *  01.01.00   2015-02-02  visfr   ESCAN00081000    No changes
 *                         visfr   ESCAN00081001    No changes
 *  02.00.00   2016-07-05  viskjs  ESCAN00090671    Upgrade to SPI template revision 03.00.01
 *                                 ESCAN00090696    Use more than one FIFO entry
 *  02.00.01   2017-11-08  viskjs  ESCAN00097541    No changes
 *  02.00.02   2018-12-19  visci   ESCAN00099533    [TC3xx] Clock is not properly selected
 *  02.00.03   2019-01-10  visshs  ESCAN00101735    No changes
 *  02.01.00   2021-04-29  vistmo  FBL-3254         Upgrade to SPI template revision 03.03.00
 *                                                  Added/adapted MemMap sections
 *  02.01.01   2021-05-11  visjdn  ESCAN00107658    Internal/external Chip Select handling
 *  02.01.02   2021-06-25  vishor  ESCAN00107753    Parallel SPI transmission on separate SPI units is not possible
 **********************************************************************************************************************/

#define FBL_SPI_INFINEON_QSPI_SOURCE

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "fbl_spi_infineon_qspi_inc.h"
#include "fbl_spi_infineon_qspi_cfg.h"

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

#if ( FBLDRVSPI_INFINEONQSPI_VERSION != 0x0201u ) || \
    ( FBLDRVSPI_INFINEONQSPI_RELEASE_VERSION != 0x02u )
# error "Error in fbl_spi_<...>.c: Source and header file are inconsistent!"
#endif

/* Interface version compatibility check */
#if ( FBLDRVSPI_VECTORIF_API_VERSION_MAJOR != FBLDRVSPI_VECTORIF_API_REFERENCE_INFINEONQSPI_VERSION_MAJOR ) || \
    ( FBLDRVSPI_VECTORIF_API_VERSION_MINOR > FBLDRVSPI_VECTORIF_API_REFERENCE_INFINEONQSPI_VERSION_MINOR )
# error "Error in fbl_spi_<...>.c: Interface version compatibility check failed!"
#endif

/***********************************************************************************************************************
 *  CONFIGURATION CHECKS
 **********************************************************************************************************************/

#if ( FBL_SPI_NUMBER_OF_HANDLES > FBL_SPI_MAX_NUMBER_OF_HANDLES )
# error "Error in fbl_spi_<...>.c: Inconsistent configuration of number of handles!"
#endif

#if ( FBL_SPI_NUMBER_OF_HANDLES < 1u )
# error "Error in fbl_spi_<...>.c: Invalid configuration of number of handles!"
#endif /* ( FBL_SPI_NUMBER_OF_HANDLES < 1u ) */

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

#define FBL_SPI_IOS(type, base, offset)      (*((volatile type *)((base) + (offset))))  /* PRQA S 3453 */ /* MD_FblSpi_3453 */

/* Base address of currently used channel */
#define FBL_SPI_BASE_ADDRESS                 g_SpiInfineonQspiConfigParam[FBL_SPI_HANDLE].baseAddress

/* QSPI registers */
#define FBL_SPI_QSPI_PISEL                   FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0x04uL)
#define FBL_SPI_QSPI_ID                      FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0x08uL)
#define FBL_SPI_QSPI_GLOBALCON               FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0x10uL)
#define FBL_SPI_QSPI_GLOBALCON1              FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0x14uL)
#define FBL_SPI_QSPI_BACON                   FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0x18uL)
#define FBL_SPI_QSPI_ECON(x)                 FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS + 0x20uL, ((x) * 0x04uL))  /* PRQA S 3453 */ /* MD_FblSpi_3453 */
#define FBL_SPI_QSPI_STATUS                  FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0x40uL)
#define FBL_SPI_QSPI_STATUS1                 FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0x44uL)
#define FBL_SPI_QSPI_SSOC                    FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0x48uL)
#define FBL_SPI_QSPI_FLAGSCLEAR              FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0x54uL)
#define FBL_SPI_QSPI_MIXENTRY                FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0x5CuL)
#define FBL_SPI_QSPI_BACONENTRY              FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0x60uL)
#define FBL_SPI_QSPI_DATAENTRY(x)            FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS + 0x64uL, ((x) * 0x04uL))  /* PRQA S 3453 */ /* MD_FblSpi_3453 */
#define FBL_SPI_QSPI_RXEXIT                  FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0x90uL)
#define FBL_SPI_QSPI_RXEXITD                 FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0x94uL)

/* QSPI BPI registers */
#define FBL_SPI_QSPI_CLC                     FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0x00uL)
#define FBL_SPI_QSPI_OCS                     FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0xE8uL)
#define FBL_SPI_QSPI_KRSTCLR                 FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0xECuL)
#define FBL_SPI_QSPI_KRST1                   FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0xF0uL)
#define FBL_SPI_QSPI_KRST0                   FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0xF4uL)
#define FBL_SPI_QSPI_ACCEN1                  FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0xF8uL)
#define FBL_SPI_QSPI_ACCEN0                  FBL_SPI_IOS(vuint32,  FBL_SPI_BASE_ADDRESS, 0xFCuL)

/* BACON masks and macros */
#define FBL_SPI_BACON_MASK                   0x002FFFFEuL /*<< CS, ,DL, BYTE, UINT and LAST shall not be configured by user */
#define FBL_SPI_BACON_DEFAULT                0x03800000uL /*<< DL=7, BYTE=0, UINT=0 shall always be set in BACON register */
#define FBL_SPI_BACON_LAST                   0x00000001uL
#define FBL_SPI_BACON_SET_CS(cs)             (((vuint32)(cs) & 0x0000000FuL) << 28u) /* PRQA S 3453 */ /* MD_FblSpi_3453 */

/* GLOBALCON1 masks and macros */
#define FBL_SPI_GLOBALCON1_RXFIFOINT_MASK    0x000C0000uL
#define FBL_SPI_GLOBALCON1_SET_RXFIFOINT(n)  ((((n) - 1u) & 0x00000003uL) << 18u) /*<< Sets RXFIFO treshold for the reception of n bytes */ /* PRQA S 3453 */ /* MD_FblSpi_3453 */

/* Configuration parameter */
#define FBL_SPI_QSPI_CLC_DISR                (1uL <<  0u)
#define FBL_SPI_QSPI_GLOBALCON_EN            (1uL << 24u)
#define FBL_SPI_QSPI_GLOBALCON_CLKSEL        (1uL << 29u)

#define FBL_SPI_QSPI_GLOBALCON1_RXFM         (2uL << 28u) /*<< Sets RXFIFO Mode to Batch Move Mode */
#define FBL_SPI_QSPI_GLOBALCON1_TXFM         (2uL << 26u) /*<< Sets TXFIFO Mode to Batch Move Mode */
#define FBL_SPI_QSPI_GLOBALCON1_PT2          (5uL << 23u) /*<< Sets Phase Transition Event 2 to: End of Frame */
#define FBL_SPI_QSPI_GLOBALCON1_PT1          (0uL << 20u) /*<< Sets Phase Transition Event 1 to: BUSY (end of WAIT phase) */
#define FBL_SPI_QSPI_GLOBALCON1_RXFIFOINT    (1uL << 18u)
#define FBL_SPI_QSPI_GLOBALCON1_TXFIFOINT    (1uL << 16u)
#define FBL_SPI_QSPI_GLOBALCON1_PT2EN        (1uL << 12u)
#define FBL_SPI_QSPI_GLOBALCON1_PT1EN        (1uL << 11u)
#define FBL_SPI_QSPI_GLOBALCON1_RXEN         (1uL << 10u)
#define FBL_SPI_QSPI_GLOBALCON1_TXEN         (1uL <<  9u)

#define FBL_SPI_QSPI_FLAGSCLEAR_PT2C         (1uL << 12u)
#define FBL_SPI_QSPI_FLAGSCLEAR_PT1C         (1uL << 11u)
#define FBL_SPI_QSPI_FLAGSCLEAR_RXC          (1uL << 10u)
#define FBL_SPI_QSPI_FLAGSCLEAR_TXC          (1uL <<  9u)
#define FBL_SPI_QSPI_ERRORCLEARS             0x1FFuL

#define FBL_SPI_QSPI_STATUS_PT2F             (1uL << 12u)
#define FBL_SPI_QSPI_STATUS_PT1F             (1uL << 11u)
#define FBL_SPI_QSPI_STATUS_RXF              (1uL << 10u)
#define FBL_SPI_QSPI_STATUS_TXF              (1uL <<  9u)
#define FBL_SPI_QSPI_STATUS_ERRORFLAGS       0x1FFuL

/** FIFO size (transmit and receive FIFO) */
#define FBL_SPI_FIFO_SIZE                    4u

/***********************************************************************************************************************
 *  LOCAL DATA TYPES AND STRUCTURES
 **********************************************************************************************************************/

/** SPI task status */
typedef enum
{
   FBL_SPI_TASK_STATUS_IDLE,           /**< Task is idle, no transfer pending */
   FBL_SPI_TASK_STATUS_BUSY            /**< Task is busy, transfer is pending */
} tFblSpiTaskStatus;

/***********************************************************************************************************************
 *  LOCAL FUNCTION PROTOTYPES
 **********************************************************************************************************************/

#define FBL_SPI_INFINEON_QSPI_INIT_INTERNAL_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
static void FblSpiInitInternal( FBL_SPI_HANDLE_TYPE_ONLY );
#define FBL_SPI_INFINEON_QSPI_INIT_INTERNAL_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_TXTASK_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
static void FblSpiTxTask( FBL_SPI_HANDLE_TYPE_ONLY );
#define FBL_SPI_INFINEON_QSPI_TXTASK_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_RXTASK_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
static void FblSpiRxTask( FBL_SPI_HANDLE_TYPE_ONLY );
#define FBL_SPI_INFINEON_QSPI_RXTASK_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_TASK_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
static void FblSpiTask( FBL_SPI_HANDLE_TYPE_ONLY );
#define FBL_SPI_INFINEON_QSPI_TASK_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_INIT_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
static tFblResult FblSpiInit( FBL_SPI_HANDLE_TYPE_ONLY );
#define FBL_SPI_INFINEON_QSPI_INIT_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_DEINIT_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
static tFblResult FblSpiDeinit( FBL_SPI_HANDLE_TYPE_ONLY );
#define FBL_SPI_INFINEON_QSPI_DEINIT_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_TRANSFER_ASYNC_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
static tFblResult FblSpiTransferAsync( FBL_SPI_HANDLE_TYPE_FIRST V_MEMRAM1 tFblSpiTransferParam V_MEMRAM2 V_MEMRAM3 * transferParam );
#define FBL_SPI_INFINEON_QSPI_TRANSFER_ASYNC_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_GET_TRANSFER_STATUS_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
static tFblSpiTransferStatus FblSpiGetTransferStatus( FBL_SPI_HANDLE_TYPE_ONLY );
#define FBL_SPI_INFINEON_QSPI_GET_TRANSFER_STATUS_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_TRANSFER_SYNC_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
static tFblResult FblSpiTransferSync( FBL_SPI_HANDLE_TYPE_FIRST V_MEMRAM1 tFblSpiTransferParam V_MEMRAM2 V_MEMRAM3 * transferParam );
#define FBL_SPI_INFINEON_QSPI_TRANSFER_SYNC_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_CANCEL_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
static tFblResult FblSpiCancel( FBL_SPI_HANDLE_TYPE_ONLY );
#define FBL_SPI_INFINEON_QSPI_CANCEL_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#if ( FBL_SPI_MAX_NUMBER_OF_HANDLES > 1u )
#define FBL_SPI_INFINEON_QSPI_CHANGE_CONFIGURATION_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
static tFblResult FblSpiChangeConfiguration( vuint8 spiHandle, vuint8 newSpiHandle );
#define FBL_SPI_INFINEON_QSPI_CHANGE_CONFIGURATION_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
#endif /* ( FBL_SPI_MAX_NUMBER_OF_HANDLES > 1u ) */

#define FBL_SPI_INFINEON_QSPI_SET_TRANSFER_MODE_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
static tFblResult FblSpiSetTransferMode( FBL_SPI_HANDLE_TYPE_FIRST tFblSpiTransferMode transferMode );
#define FBL_SPI_INFINEON_QSPI_SET_TRANSFER_MODE_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

#define FBL_SPI_INFINEON_QSPI_START_SEC_CONST
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/* SPI driver interface */
V_MEMROM0 V_MEMROM1 tFblSpiIf V_MEMROM2 g_FblSpiInfineonQspi =
{
   FblSpiInit,
   FblSpiDeinit,
   FblSpiTransferAsync,
   FblSpiGetTransferStatus,
   FblSpiTransferSync,
   FblSpiCancel,
#if ( FBL_SPI_MAX_NUMBER_OF_HANDLES > 1u )
   FblSpiChangeConfiguration,
#endif /* ( FBL_SPI_MAX_NUMBER_OF_HANDLES > 1u ) */
   FblSpiSetTransferMode
};
#define FBL_SPI_INFINEON_QSPI_STOP_SEC_CONST
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  LOCAL DATA
 **********************************************************************************************************************/

#define FBL_SPI_INFINEON_QSPI_START_SEC_VAR
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

/** The temporarily buffered transfer parameter provided with FblSpiTransferAsync() / FblSpiTransferSync() */
V_MEMRAM0 static V_MEMRAM1 tFblSpiTransferParam V_MEMRAM2 V_MEMRAM3 * g_TransferParam[FBL_SPI_NUMBER_OF_HANDLES];

/** The current transfer status (transfer status for all data provided with g_TransferParam[]) */
V_MEMRAM0 static V_MEMRAM1 tFblSpiTransferStatus V_MEMRAM2 g_TransferStatus[FBL_SPI_NUMBER_OF_HANDLES];

/** The current task status (transfer status for data fragments, e.g. in case a FIFO is used) */
V_MEMRAM0 static V_MEMRAM1 tFblSpiTaskStatus V_MEMRAM2 g_TaskStatus[FBL_SPI_NUMBER_OF_HANDLES];

/** The already transferred length */
V_MEMRAM0 static V_MEMRAM1 vuint16 V_MEMRAM2 g_TransferredLength[FBL_SPI_NUMBER_OF_HANDLES];

/** The current pending length */
V_MEMRAM0 static V_MEMRAM1 vuint16 V_MEMRAM2 g_PendingLength[FBL_SPI_NUMBER_OF_HANDLES];

#define FBL_SPI_INFINEON_QSPI_STOP_SEC_VAR
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  LOCAL FUNCTIONS
 **********************************************************************************************************************/

#define FBL_SPI_INFINEON_QSPI_INIT_INTERNAL_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  FblSpiInitInternal
 **********************************************************************************************************************/
/*! \brief           Initialize the modules global states
 *  \param[in]       spiHandle Optional: Specifies the SPI configuration entry in g_Spi<...>ConfigParam
 **********************************************************************************************************************/
static void FblSpiInitInternal( FBL_SPI_HANDLE_TYPE_ONLY )
{
   g_TransferParam[FBL_SPI_HANDLE] = V_NULL;
   g_TransferStatus[FBL_SPI_HANDLE] = FBL_SPI_TRANSFER_STATUS_IDLE;
   g_TaskStatus[FBL_SPI_HANDLE] = FBL_SPI_TASK_STATUS_IDLE;
   g_TransferredLength[FBL_SPI_HANDLE] = 0u;
   g_PendingLength[FBL_SPI_HANDLE] = 0u;
}
#define FBL_SPI_INFINEON_QSPI_INIT_INTERNAL_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_TXTASK_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  FblSpiTxTask
 **********************************************************************************************************************/
/*! \brief           Handles the actual data transmission
 *  \param[in]       spiHandle Optional: Specifies the SPI configuration entry in g_Spi<...>ConfigParam
 **********************************************************************************************************************/
static void FblSpiTxTask( FBL_SPI_HANDLE_TYPE_ONLY )
{
   vuint16 transferIndex;
   vuint16 remainingLength;
   vuint32 tempBACON;
   vuint32 i;

   /* Clear interrupt and error flags */
   FBL_SPI_QSPI_FLAGSCLEAR |= ( FBL_SPI_QSPI_FLAGSCLEAR_PT2C  | /* PRQA S 0303 */ /* MD_FblSpi_0303 */
                                 FBL_SPI_QSPI_FLAGSCLEAR_PT1C |
                                 FBL_SPI_QSPI_FLAGSCLEAR_RXC  |
                                 FBL_SPI_QSPI_FLAGSCLEAR_TXC  |
                                 FBL_SPI_QSPI_ERRORCLEARS );

   /* Assemble BACON */
   tempBACON = ((g_SpiInfineonQspiConfigParam[FBL_SPI_HANDLE].bacon & FBL_SPI_BACON_MASK) | FBL_SPI_BACON_DEFAULT);

   tempBACON |= FBL_SPI_BACON_SET_CS(FBL_SPI_HANDLE); /* PRQA S 2985 */ /* MD_FblSpi_2985 */

   /* Do the actual (partial) transfer without blocking */
   remainingLength = g_TransferParam[FBL_SPI_HANDLE]->transferLength - g_TransferredLength[FBL_SPI_HANDLE];

   if (remainingLength > FBL_SPI_FIFO_SIZE)
   {
      g_PendingLength[FBL_SPI_HANDLE] = FBL_SPI_FIFO_SIZE;
   }
   else
   {
      g_PendingLength[FBL_SPI_HANDLE] = remainingLength;
   }

   /* Set Rx FIFO Interrupt Threshold */
   FBL_SPI_QSPI_GLOBALCON1 &= FblInvert32Bit(FBL_SPI_GLOBALCON1_RXFIFOINT_MASK); /* PRQA S 0303 1 */ /* MD_FblSpi_0303 */
   FBL_SPI_QSPI_GLOBALCON1 |= FBL_SPI_GLOBALCON1_SET_RXFIFOINT((vuint32) g_PendingLength[FBL_SPI_HANDLE]);

   /* Do the data transmission
      * The for-loop is intentionally duplicated to avoid the if-condition check in each cycle */
   if (V_NULL == g_TransferParam[FBL_SPI_HANDLE]->pTransmitBuffer)
   {
      /* If more than one byte shall be transmitted, use initial BACON entry */
      if (g_PendingLength[FBL_SPI_HANDLE] != 1u)
      {
         FBL_SPI_QSPI_MIXENTRY = tempBACON; /* PRQA S 0303 */ /* MD_FblSpi_0303 */
      }

      for (i = 0u; i < ((vuint32) g_PendingLength[FBL_SPI_HANDLE] - 1u); i++)
      {
         /* Send FBL_SPI_DUMMY_DATA */
         FBL_SPI_QSPI_MIXENTRY = (vuint32)FBL_SPI_DUMMY_DATA; /* PRQA S 0303 */ /* MD_FblSpi_0303 */
      }

      /* Use BACON with LAST=1 for last byte */
      FBL_SPI_QSPI_MIXENTRY = (tempBACON | FBL_SPI_BACON_LAST); /* PRQA S 0303 */ /* MD_FblSpi_0303 */

      /* Send FBL_SPI_DUMMY_DATA */
      FBL_SPI_QSPI_MIXENTRY = (vuint32)FBL_SPI_DUMMY_DATA; /* PRQA S 0303 */ /* MD_FblSpi_0303 */
   }
   else /* V_NULL != pTransmitBuffer */
   {
      transferIndex = g_TransferredLength[FBL_SPI_HANDLE];

      /* If more than one bytes shall be transmitted, use initial BACON entry */
      if(g_PendingLength[FBL_SPI_HANDLE] != 1u)
      {
         FBL_SPI_QSPI_MIXENTRY = tempBACON; /* PRQA S 0303 */ /* MD_FblSpi_0303 */
      }

      for (i = 0u; i < ((vuint32) g_PendingLength[FBL_SPI_HANDLE] - 1u); i++)
      {
         /* Send one byte of transmit buffer */
         FBL_SPI_QSPI_MIXENTRY = (vuint32)g_TransferParam[FBL_SPI_HANDLE]->pTransmitBuffer[transferIndex + i]; /* PRQA S 0303 */ /* MD_FblSpi_0303 */
      }

      /* Use BACON with LAST=1 for last byte */
      FBL_SPI_QSPI_MIXENTRY = (tempBACON | FBL_SPI_BACON_LAST); /* PRQA S 0303 */ /* MD_FblSpi_0303 */

      /* Send one byte of transmit buffer */
      FBL_SPI_QSPI_MIXENTRY = (vuint32)g_TransferParam[FBL_SPI_HANDLE]->pTransmitBuffer[transferIndex + i]; /* PRQA S 0303 */ /* MD_FblSpi_0303 */
   }

   g_TaskStatus[FBL_SPI_HANDLE] = FBL_SPI_TASK_STATUS_BUSY;
}
#define FBL_SPI_INFINEON_QSPI_TXTASK_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_RXTASK_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  FblSpiRxTask
 **********************************************************************************************************************/
/*! \brief           Handles the actual data reception
 *  \param[in]       spiHandle Optional: Specifies the SPI configuration entry in g_Spi<...>ConfigParam
 **********************************************************************************************************************/
static void FblSpiRxTask( FBL_SPI_HANDLE_TYPE_ONLY )
{
   vuint16 transferIndex;
   vuint32 i;

   /* Check if RX FIFO has reached configured interrupt threshold */
   if ((FBL_SPI_QSPI_STATUS & FBL_SPI_QSPI_STATUS_RXF) == FBL_SPI_QSPI_STATUS_RXF) /* PRQA S 0303 */ /* MD_FblSpi_0303 */
   {
      transferIndex = g_TransferredLength[FBL_SPI_HANDLE];
      g_TransferredLength[FBL_SPI_HANDLE] += g_PendingLength[FBL_SPI_HANDLE];

      /* Do the data reception
       * The for-loop is intentionally duplicated to avoid the if-condition check in each cycle */
      if (V_NULL == g_TransferParam[FBL_SPI_HANDLE]->pReceiveBuffer)
      {
         for (i = 0u; i < g_PendingLength[FBL_SPI_HANDLE]; i++)
         {
            (void)(FBL_SPI_QSPI_RXEXIT & 0xFFu); /* PRQA S 0303, 3424 */ /* MD_FblSpi_0303, MD_FblSpi_3424 */
         }
      }
      else /* V_NULL != pReceiveBuffer */
      {
         for (i = 0u; i < g_PendingLength[FBL_SPI_HANDLE]; i++)
         {
            g_TransferParam[FBL_SPI_HANDLE]->pReceiveBuffer[transferIndex + i] = (vuint8)(FBL_SPI_QSPI_RXEXIT & 0xFFu); /* PRQA S 0303 */ /* MD_FblSpi_0303 */
         }
      }

      g_PendingLength[FBL_SPI_HANDLE] = 0u;
      g_TaskStatus[FBL_SPI_HANDLE] = FBL_SPI_TASK_STATUS_IDLE;

      if (g_TransferredLength[FBL_SPI_HANDLE] == g_TransferParam[FBL_SPI_HANDLE]->transferLength)
      {
#if defined( FBL_SPI_ENABLE_INTERNAL_CS_HANDLING )
         /* Handle chip-select if requested */
         if (   (FBL_SPI_CHIP_SELECT_MODE_CLR == g_TransferParam[FBL_SPI_HANDLE]->chipSelectMode)
             || (FBL_SPI_CHIP_SELECT_MODE_BOTH == g_TransferParam[FBL_SPI_HANDLE]->chipSelectMode))
         {
            FBL_SPI_CLR_CS(FBL_SPI_HANDLE_PARAM_ONLY);
         }
#endif /* FBL_SPI_ENABLE_INTERNAL_CS_HANDLING */

         g_TransferStatus[FBL_SPI_HANDLE] = FBL_SPI_TRANSFER_STATUS_COMPLETED;
         g_TransferredLength[FBL_SPI_HANDLE] = 0u;
         g_TransferParam[FBL_SPI_HANDLE] = V_NULL;
      }
   }
}
#define FBL_SPI_INFINEON_QSPI_RXTASK_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_TASK_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  FblSpiTask
 **********************************************************************************************************************/
/*! \brief           Handles the actual data transfer
 *  \param[in]       spiHandle Optional: Specifies the SPI configuration entry in g_Spi<...>ConfigParam
 **********************************************************************************************************************/
static void FblSpiTask( FBL_SPI_HANDLE_TYPE_ONLY )
{
   if (FBL_SPI_TASK_STATUS_IDLE == g_TaskStatus[FBL_SPI_HANDLE])
   {
      FblSpiTxTask(FBL_SPI_HANDLE_PARAM_ONLY);
   }
   else /* FBL_SPI_TASK_STATUS_BUSY */
   {
      FblSpiRxTask(FBL_SPI_HANDLE_PARAM_ONLY);
   }
}
#define FBL_SPI_INFINEON_QSPI_TASK_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  GLOBAL FUNCTIONS
 **********************************************************************************************************************/

#define FBL_SPI_INFINEON_QSPI_INIT_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  FblSpiInit
 **********************************************************************************************************************/
/*! \brief           Initialize serial interface
 *  \param[in]       spiHandle Optional: Specifies the SPI configuration entry in g_Spi<...>ConfigParam
 *  \return          kFblOk if initialization succeeded, otherwise kFblFailed
 **********************************************************************************************************************/
static tFblResult FblSpiInit( FBL_SPI_HANDLE_TYPE_ONLY )
{
   FBL_SPI_INIT_CLOCKS(FBL_SPI_HANDLE_PARAM_ONLY);
   FBL_SPI_INIT_PINS(FBL_SPI_HANDLE_PARAM_ONLY);

   /* Enable SPI module */
   FBL_SPI_QSPI_REGISTER_UNLOCK();
   FBL_SPI_QSPI_CLC &= FblInvert32Bit(FBL_SPI_QSPI_CLC_DISR); /* PRQA S 0303, 2985 */ /* MD_FblSpi_0303, MD_FblSpi_2985 */
   FBL_SPI_QSPI_REGISTER_LOCK();

   /* Setup Prescaler and select clock (TC3xx)  */
   FBL_SPI_QSPI_GLOBALCON &= 0xFFFFFF00uL; /* PRQA S 0303 2 */ /* MD_FblSpi_0303 */
   FBL_SPI_QSPI_GLOBALCON |= (g_SpiInfineonQspiConfigParam[FBL_SPI_HANDLE].globalconTq | FBL_SPI_QSPI_GLOBALCON_CLKSEL); /* PRQA S 0303 */ /* MD_FblSpi_0303 */

   /* Set Default values for GLOBALCON:
    * - Batch move mode
    * - Rx and Tx interrupt treshold = 0 (Is set individually before every transfer)
    * - Rx and Tx enabled
    * - PT1: Busy, PT2: EOF
    */
   FBL_SPI_QSPI_GLOBALCON1 = ( FBL_SPI_QSPI_GLOBALCON1_PT2    | /* PRQA S 0303 */ /* MD_FblSpi_0303 */
                               FBL_SPI_QSPI_GLOBALCON1_RXFM   |
                               FBL_SPI_QSPI_GLOBALCON1_TXFM   |
                               FBL_SPI_QSPI_GLOBALCON1_PT1    |
                               FBL_SPI_QSPI_GLOBALCON1_PT2EN  |
                               FBL_SPI_QSPI_GLOBALCON1_PT1EN  |
                               FBL_SPI_QSPI_GLOBALCON1_RXEN   |
                               FBL_SPI_QSPI_GLOBALCON1_TXEN  );

   /* set up the input signal selection of the SSC module */
   FBL_SPI_QSPI_PISEL = g_SpiInfineonQspiConfigParam[FBL_SPI_HANDLE].pisel; /* PRQA S 0303 */ /* MD_FblSpi_0303 */

   /* Enable module */
   FBL_SPI_QSPI_GLOBALCON |= FBL_SPI_QSPI_GLOBALCON_EN; /* PRQA S 0303 */ /* MD_FblSpi_0303 */

   /* Slave Select HW enable/disable setting */
   FBL_SPI_QSPI_SSOC = g_SpiInfineonQspiConfigParam[FBL_SPI_HANDLE].ssoc; /* PRQA S 0303 */ /* MD_FblSpi_0303 */

   /* Timing characteristics */
   FBL_SPI_QSPI_ECON(FBL_SPI_HANDLE) = g_SpiInfineonQspiConfigParam[FBL_SPI_HANDLE].econ; /* PRQA S 0303, 2985 */ /* MD_FblSpi_0303, MD_FblSpi_2985 */

#if defined( FBL_SPI_ENABLE_INTERNAL_CS_HANDLING )
   FBL_SPI_INIT_CS(FBL_SPI_HANDLE_PARAM_ONLY);
   FBL_SPI_CLR_CS(FBL_SPI_HANDLE_PARAM_ONLY);
#endif /* FBL_SPI_ENABLE_INTERNAL_CS_HANDLING */

   FblSpiInitInternal(FBL_SPI_HANDLE_PARAM_ONLY);

   return kFblOk;
}
#define FBL_SPI_INFINEON_QSPI_INIT_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_DEINIT_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  FblSpiDeinit
 **********************************************************************************************************************/
/*! \brief           Deinitialize serial interface
 *  \param[in]       spiHandle Optional: Specifies the SPI configuration entry in g_Spi<...>ConfigParam
 *  \return          kFblOk if deinitialization succeeded, otherwise kFblFailed
 **********************************************************************************************************************/
static tFblResult FblSpiDeinit( FBL_SPI_HANDLE_TYPE_ONLY )
{
   /* Disable module */
   FBL_SPI_QSPI_GLOBALCON &= FblInvert32Bit(FBL_SPI_QSPI_GLOBALCON_EN); /* PRQA S 0303 */ /* MD_FblSpi_0303 */

#if defined( FBL_SPI_ENABLE_INTERNAL_CS_HANDLING )
   FBL_SPI_CLR_CS(FBL_SPI_HANDLE_PARAM_ONLY);
   FBL_SPI_DEINIT_CS(FBL_SPI_HANDLE_PARAM_ONLY);
#endif /* FBL_SPI_ENABLE_INTERNAL_CS_HANDLING */

   FBL_SPI_DEINIT_PINS(FBL_SPI_HANDLE_PARAM_ONLY);
   FBL_SPI_DEINIT_CLOCKS(FBL_SPI_HANDLE_PARAM_ONLY);

   FblSpiInitInternal(FBL_SPI_HANDLE_PARAM_ONLY);

   return kFblOk;
}
#define FBL_SPI_INFINEON_QSPI_DEINIT_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_TRANSFER_ASYNC_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  FblSpiTransferAsync
 **********************************************************************************************************************/
/*! \brief           Transfers the given block of data asynchronously (function does not block)
 *  \param[in]       spiHandle Optional: Specifies the SPI configuration entry in g_Spi<...>ConfigParam
 *  \param[in,out]   transferParam The transfer parameter structure
 *  \return          kFblOk if transfer succeeded, otherwise kFblFailed
 **********************************************************************************************************************/
static tFblResult FblSpiTransferAsync( FBL_SPI_HANDLE_TYPE_FIRST V_MEMRAM1 tFblSpiTransferParam V_MEMRAM2 V_MEMRAM3 * transferParam )
{
   tFblResult result;

   /* The function argument checks are intentionally omitted, we assume the caller to use the module correctly */

   if (FBL_SPI_TRANSFER_STATUS_BUSY == g_TransferStatus[FBL_SPI_HANDLE])
   {
      result = kFblFailed;
   }
   else
   {
#if defined( FBL_SPI_ENABLE_INTERNAL_CS_HANDLING )
      /* Handle chip-select if requested */
      if (   (FBL_SPI_CHIP_SELECT_MODE_SET == transferParam->chipSelectMode)
          || (FBL_SPI_CHIP_SELECT_MODE_BOTH == transferParam->chipSelectMode))
      {
         FBL_SPI_SET_CS(FBL_SPI_HANDLE_PARAM_ONLY);
      }
#endif /* FBL_SPI_ENABLE_INTERNAL_CS_HANDLING */

      g_TransferParam[FBL_SPI_HANDLE] = transferParam;
      g_TransferStatus[FBL_SPI_HANDLE] = FBL_SPI_TRANSFER_STATUS_BUSY;

      /* Immediately trigger first transfer:
       * - Master mode: Reduces latencies, i.e. improves performance
       * - Slave mode: Callee typically assumes that data has been transferred to SPI registers once function returns */
      FblSpiTask(FBL_SPI_HANDLE_PARAM_ONLY);

      result = kFblOk;
   }

   return result;
}
#define FBL_SPI_INFINEON_QSPI_TRANSFER_ASYNC_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_GET_TRANSFER_STATUS_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  FblSpiGetTransferStatus
 **********************************************************************************************************************/
/*! \brief           Handles the actual transfer of the data provided to FblSpiTransferAsync() /
 *                   FblSpiTransferSync() and provides the transfer status
 *  \param[in]       spiHandle Optional: Specifies the SPI configuration entry in g_Spi<...>ConfigParam
 *  \return          The transfer status
 **********************************************************************************************************************/
static tFblSpiTransferStatus FblSpiGetTransferStatus( FBL_SPI_HANDLE_TYPE_ONLY )
{
   if (FBL_SPI_TRANSFER_STATUS_BUSY == g_TransferStatus[FBL_SPI_HANDLE])
   {
      FblSpiTask(FBL_SPI_HANDLE_PARAM_ONLY);
   }

   return g_TransferStatus[FBL_SPI_HANDLE];
}
#define FBL_SPI_INFINEON_QSPI_GET_TRANSFER_STATUS_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_TRANSFER_SYNC_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  FblSpiTransferSync
 **********************************************************************************************************************/
/*! \brief           Transfers the given block of data synchronously (function blocks)
 *  \param[in]       spiHandle Optional: Specifies the SPI configuration entry in g_Spi<...>ConfigParam
 *  \param[in,out]   transferParam The transfer parameter structure
 *  \return          kFblOk if transfer succeeded, otherwise kFblFailed
 **********************************************************************************************************************/
static tFblResult FblSpiTransferSync( FBL_SPI_HANDLE_TYPE_FIRST V_MEMRAM1 tFblSpiTransferParam V_MEMRAM2 V_MEMRAM3 * transferParam )
{
   vuint16 pollingCount;
   tFblResult result;
   tFblSpiTransferStatus transferStatus;

   result = FblSpiTransferAsync(FBL_SPI_HANDLE_PARAM_FIRST transferParam);

   if (kFblOk == result)
   {
      pollingCount = FBL_SPI_POLLING_MULTIPLIER - 1u;

      do
      {
         transferStatus = FblSpiGetTransferStatus(FBL_SPI_HANDLE_PARAM_ONLY);

         if (FBL_SPI_POLLING_FCT_NULL != transferParam->pollingFct)
         {
            if (0u == pollingCount)
            {
               transferParam->pollingFct();

               pollingCount = FBL_SPI_POLLING_MULTIPLIER - 1u;
            }
            else
            {
               pollingCount--;
            }
         }
      }
      while (FBL_SPI_TRANSFER_STATUS_BUSY == transferStatus);

      if (FBL_SPI_TRANSFER_STATUS_COMPLETED != transferStatus)
      {
         result = kFblFailed;
      }
   }

   return result;
}
#define FBL_SPI_INFINEON_QSPI_TRANSFER_SYNC_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#define FBL_SPI_INFINEON_QSPI_CANCEL_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  FblSpiCancel
 **********************************************************************************************************************/
/*! \brief           Cancels any pending transfers
 *  \param[in]       spiHandle Optional: Specifies the SPI configuration entry in g_Spi<...>ConfigParam
 *  \return          kFblOk if cancellation succeeded, otherwise kFblFailed
 **********************************************************************************************************************/
static tFblResult FblSpiCancel( FBL_SPI_HANDLE_TYPE_ONLY )
{
   tFblResult result;

   result = FblSpiDeinit(FBL_SPI_HANDLE_PARAM_ONLY);

   if (kFblOk == result) /* PRQA S 2991, 2995 */ /* MD_FblDrvSpi_2991_2995 */
   {
      result = FblSpiInit(FBL_SPI_HANDLE_PARAM_ONLY);
   }

   /* Override FBL_SPI_TRANSFER_STATUS_IDLE which has been set in initialization function */
   g_TransferStatus[FBL_SPI_HANDLE] = FBL_SPI_TRANSFER_STATUS_CANCELLED;

   return result;
}
#define FBL_SPI_INFINEON_QSPI_CANCEL_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#if ( FBL_SPI_MAX_NUMBER_OF_HANDLES > 1u )
# define FBL_SPI_INFINEON_QSPI_CHANGE_CONFIGURATION_START_SEC_CODE
# include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  FblSpiChangeConfiguration
 **********************************************************************************************************************/
/*! \brief           Changes the configuration of a SPI module
 *  \details         This function is intended to be used in case there are multiple users with different SPI
 *                   configuration requirements sharing a single channel.
 *  \param[in]       spiHandle Specifies the SPI configuration entry in g_Spi<...>ConfigParam
 *  \param[in]       newSpiHandle Specifies the SPI configuration entry to be used for new configuration
 *  \return          kFblOk is operation succeeded, otherwise kFblFailed
 **********************************************************************************************************************/
static tFblResult FblSpiChangeConfiguration( vuint8 spiHandle, vuint8 newSpiHandle )
{
   tFblResult result;

   result = FblSpiDeinit(spiHandle);

   if (kFblOk == result) /* PRQA S 2991, 2995 */ /* MD_FblDrvSpi_2991_2995 */
   {
      result = FblSpiInit(newSpiHandle);
   }

   return result;
}
# define FBL_SPI_INFINEON_QSPI_CHANGE_CONFIGURATION_STOP_SEC_CODE
# include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
#endif /* ( FBL_SPI_MAX_NUMBER_OF_HANDLES > 1u ) */

#define FBL_SPI_INFINEON_QSPI_SET_TRANSFER_MODE_START_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  FblSpiSetTransferMode
 **********************************************************************************************************************/
/*! \brief           Changes the transfer mode of a SPI module
 *  \details         The transfer mode configures the usage of the SPI pins during transfer. Typical SPI slave devices
 *                   use single mode (full-duplex), some memory devices use dual- or quad-mode to improve performance
 *                   (half-duplex, multiple pins are used for transfer in the respective direction).
 *  \param[in]       spiHandle Optional: Specifies the SPI configuration entry in g_Spi<...>ConfigParam
 *  \param[in]       transferMode The transfer mode to be used
 *  \return          kFblOk is operation succeeded, otherwise kFblFailed
 **********************************************************************************************************************/
static tFblResult FblSpiSetTransferMode( FBL_SPI_HANDLE_TYPE_FIRST tFblSpiTransferMode transferMode )
{
   tFblResult result;

#if defined( V_ENABLE_USE_DUMMY_STATEMENT )
# if ( FBL_SPI_MAX_NUMBER_OF_HANDLES > 1u )
   (void)FBL_SPI_HANDLE_PARAM_ONLY; /* PRQA S 3112 */ /* MD_MSR_14.2 */
# endif /* ( FBL_SPI_MAX_NUMBER_OF_HANDLES > 1u ) */
#endif /* V_ENABLE_USE_DUMMY_STATEMENT */

   if (FBL_SPI_TRANSFER_MODE_SINGLE == transferMode)
   {
      /* Mode supported, nothing to be done */
      result = kFblOk;
   }
   else
   {
      /* Mode not supported */
      result = kFblFailed;
   }

   return result;
}
#define FBL_SPI_INFINEON_QSPI_SET_TRANSFER_MODE_STOP_SEC_CODE
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

/**********************************************************************************************************************
 *  MISRA
 *********************************************************************************************************************/

/* Module specific MISRA deviations:

   MD_FblSpi_0303:
      Reason:     Casting of integer to pointer type is required through memory mapped register.
      Risk:       No risk.
      Prevention: No prevention.

   MD_FblSpi_2985:
      Reason:     Depending on the configuration, this operation is not neccessarily redundant
      Risk:       No risk.
      Prevention: No prevention.

   MD_FblDrvSpi_2991_2995:
      Reason:     The 'if' condition is kept since it can be necessary for further extension of the driver functionality.
      Risk:       No risk.
      Prevention: No prevention required.

   MD_FblSpi_3424:
      Reason:     Reading a byte from the register is required here.
      Risk:       No risk.
      Prevention: No prevention.

   MD_FblSpi_3453:
      Reason:     Since efficiency is a primary implementation target it is necessary to use macros.
      Risk:       Resulting code is difficult to understand or may not work as expected.
      Prevention: Code inspection and test of the different variants in the component test.
     
   MD_FblSpi_3684_config:
      Reason:     Size of the array is configuration dependent and undefined for the purpose of MISRA analysis. The
                  used array is only an example configuration that can be adjusted freely.
      Risk:       No risk. The correct configuration is the responsibility of the end-user.
      Prevention: No prevention required.
*/

/***********************************************************************************************************************
 *  END OF FILE: FBL_SPI_INFINEON_QSPI.C
 **********************************************************************************************************************/
