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
 *  03.00.01   2016-06-01  visrie  ESCAN00090444    Added SPI IF reference interface version defines
 *  03.01.00   2018-06-04  visrie  ESCAN00099571    Removed _EXPORT string from MemMap define
 *  03.02.00   2018-06-20  visrie  ESCAN00099737    Update to latest VectorIf version
 *  03.03.00   2021-03-21  visjdn  FBL-3250         No changes
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
 *  02.00.02   2018-12-19  visci   ESCAN00099533    No changes
 *  02.00.03   2019-01-10  visshs  ESCAN00101735    No changes
 *  02.01.00   2021-04-29  vistmo  FBL-3254         Upgrade to SPI template revision 03.03.00
 *  02.01.01   2021-05-11  visjdn  ESCAN00107658    No changes
 *  02.01.02   2021-06-25  vishor  ESCAN00107753    No changes
 **********************************************************************************************************************/

#ifndef FBL_SPI_INFINEON_QSPI_H
#define FBL_SPI_INFINEON_QSPI_H

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

/* ##V_CFG_MANAGEMENT ##CQProject : FblDrvSpi_InfineonQspi CQComponent : Implementation */
#define FBLDRVSPI_INFINEONQSPI_VERSION            0x0201u
#define FBLDRVSPI_INFINEONQSPI_RELEASE_VERSION    0x02u

/* Reference interface version */
/** Major interface version identifies incompatible changes */
#define FBLDRVSPI_VECTORIF_API_REFERENCE_INFINEONQSPI_VERSION_MAJOR     0x03u
/** Minor interface version identifies backward compatible changes */
#define FBLDRVSPI_VECTORIF_API_REFERENCE_INFINEONQSPI_VERSION_MINOR     0x01u
/** Release interface version identifies cosmetic changes */
#define FBLDRVSPI_VECTORIF_API_REFERENCE_INFINEONQSPI_VERSION_RELEASE   0x00u

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

/* Defines for function-like SPI interface access */
#define FblSpiInfineonQspiInit                    g_FblSpiInfineonQspi.initFct
#define FblSpiInfineonQspiDeinit                  g_FblSpiInfineonQspi.deinitFct
#define FblSpiInfineonQspiTransferAsync           g_FblSpiInfineonQspi.transferAsyncFct
#define FblSpiInfineonQspiGetTransferStatus       g_FblSpiInfineonQspi.getTransferStatusFct
#define FblSpiInfineonQspiTransferSync            g_FblSpiInfineonQspi.transferSyncFct
#define FblSpiInfineonQspiCancel                  g_FblSpiInfineonQspi.cancelFct
#if ( FBL_SPI_MAX_NUMBER_OF_HANDLES > 1u )
# define FblSpiInfineonQspiChangeConfiguration    g_FblSpiInfineonQspi.changeConfigurationFct
#endif /* ( FBL_SPI_MAX_NUMBER_OF_HANDLES > 1u ) */
#define FblSpiInfineonQspiSetTransferMode         g_FblSpiInfineonQspi.setTransferModeFct

/***********************************************************************************************************************
 *  GLOBAL DATA PROTOTYPES
 **********************************************************************************************************************/

#define FBL_SPI_INFINEON_QSPI_START_SEC_CONST_EXPORT
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */
/* SPI driver interface */
V_MEMROM0 extern V_MEMROM1 tFblSpiIf V_MEMROM2 g_FblSpiInfineonQspi;
#define FBL_SPI_INFINEON_QSPI_STOP_SEC_CONST_EXPORT
#include "MemMap.h"  /* PRQA S 5087 */ /* MD_MSR_MemMap */

#endif /* FBL_SPI_INFINEON_QSPI_H */

/***********************************************************************************************************************
 *  END OF FILE: FBL_SPI_INFINEON_QSPI.H
 **********************************************************************************************************************/
