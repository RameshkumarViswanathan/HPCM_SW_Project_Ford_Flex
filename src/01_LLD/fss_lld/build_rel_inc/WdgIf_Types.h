/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief WdgIf_Types ASR4 stub for flash bootloader
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
//TechM: added for Build error fix from old code
/**********************************************************************************************************************
 *  REVISION HISTORY
 *  -------------------------------------------------------------------------------------------------------------------
 *  Refer to the module's header file.
 **********************************************************************************************************************/

#ifndef WDGIF_TYPES_H
#define WDGIF_TYPES_H

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/
#include "Std_Types.h"

/**********************************************************************************************************************
 *  GLOBAL DATA TYPES AND STRUCTURES
 *********************************************************************************************************************/

/*! \brief Type for the abstraction of the watchdog modes. */
typedef enum
{
    WDGIF_OFF_MODE = 0,
    WDGIF_SLOW_MODE,
    WDGIF_FAST_MODE
} WdgIf_ModeType;

#endif /* WDGIF_TYPES_H */

/**********************************************************************************************************************
 *  END OF FILE: WdgIf_Types.h
 *********************************************************************************************************************/