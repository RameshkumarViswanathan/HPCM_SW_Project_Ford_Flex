/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         HIS IO driver types
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
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  03.00.00   2018-09-11  visrie  ESCAN00100690    No changes
 *  03.01.00   2019-03-07  visrie  ESCAN00102398    No changes
 *                                 ESCAN00102414    No changes
 *  03.01.01   2019-06-03  vistbe  ESCAN00102476    No changes
 *  04.00.00   2019-12-04  visrie  FBL-456          No changes
 *                                                  No changes
 *  04.00.01   2020-11-25  visjre  ESCAN00108003    No changes
 *  04.00.02   2021-03-31  visrie  ESCAN00108287    No changes
 **********************************************************************************************************************/

#ifndef IO_TYPES_H
#define IO_TYPES_H

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "fbl_def.h"

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

#define IO_E_OK         0x00u             /**< Memory driver action successful */
#define IO_E_NOT_OK     0x01u             /**< Memory driver action failed */
#define IO_E_ERASED     0xE5u             /**< Read failure (e.g. ECC), but memory is assumed to be erased */

/***********************************************************************************************************************
 *  TYPEDEFS
 **********************************************************************************************************************/

typedef vuint8    IO_U8;
typedef vuint16   IO_U16;
typedef vuint32   IO_U32;
typedef vsint8    IO_S8;
typedef vsint16   IO_S16;
typedef vsint32   IO_S32;

#if ( !defined( C_CPUTYPE_8BIT ) || \
    defined( FBL_PROCESSOR_BANKED ))
typedef vuint32   IO_SizeType;
typedef vuint32   IO_PositionType;
#else
typedef vuint16   IO_SizeType;
typedef vuint16   IO_PositionType;
#endif

typedef vuint16   IO_ErrorType;
typedef vuint8*   IO_MemPtrType;

#endif /* __IO_TYPES_H__ */

/***********************************************************************************************************************
 *  END OF FILE: IOTYPES.H
 **********************************************************************************************************************/