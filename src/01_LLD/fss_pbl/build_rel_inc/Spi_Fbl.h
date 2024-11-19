/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief        MSR-SPI API wrapper for FBL-SPI API
 *
 *  --------------------------------------------------------------------------------------------------------------------
 *  COPYRIGHT
 *  --------------------------------------------------------------------------------------------------------------------
 *  \par Copyright
 *  \verbatim
 *  Copyright (c) 2022 by Vector Informatik GmbH.                                                  All rights reserved.
 *
 *                This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 */
/**********************************************************************************************************************/

/***********************************************************************************************************************
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  01.00.00   2016-11-15  visrie  -                Initial version
 *  01.01.00   2017-06-09  visrie  ESCAN00095838    Added configuration for Tja1145, EthSwt, ExtFlash and SBC
 *                                 ESCAN00095837    Fixed initialization of spiHandle
 *  01.02.00   2018-01-11  visrie  ESCAN00097933    Added support for byte swapping
 *  01.03.00   2018-02-16  visrie  ESCAN00098430    Added MemMap sections
 *  01.04.00   2018-06-04  visrie  ESCAN00099338    Fixed type of Spi_Fbl_Cfg.h::tSpiFblFunctionList::hardwareChannel
 *                                 ESCAN00100006    Added support for FBL-SIO interface
 *                                 ESCAN00100007    Consider data width for transfer length
 *  01.04.01   2019-01-22  visawh  ESCAN00101850    SBC: Bytes to be send to SBC are in wrong order
 *                         visrie  ESCAN00101856    Added configuration for Tle9255
 *  01.05.00   2021-11-17  vishor  FBL-3639         Remove _COMMENT switches from use cases
 *  01.06.00   2022-06-23  visstn  FBL-4366         Perform MISRA 2012 migration
 **********************************************************************************************************************/

#ifndef SPI_FBL_H
#define SPI_FBL_H

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

/* ##V_CFG_MANAGEMENT ##CQProject : DrvSpi_FblSpi01Asr4 CQComponent : Implementation */
#define DRVSPI_FBLSPI01ASR4_VERSION             0x0106u
#define DRVSPI_FBLSPI01ASR4_RELEASE_VERSION     0x00u

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "fbl_def.h"

#endif /* SPI_FBL_H */

/***********************************************************************************************************************
 *  END OF FILE: SPI_FBL.H
 **********************************************************************************************************************/
