/**********************************************************************************************************************
 *  FILE DESCRIPTION
 *  -----------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief        Configuration of the HIS security module - Seed/key authentication
 *
 *  \note         Please note, that this file contains an implementation/configuration example for the security
 *                access service used by the respective vehicle manufacturer.
 *                This code may influence the behavior of the diagnostic security access in principle. Therefore,
 *                great care must be taken to verify the correctness of the implementation.
 *
 *                The contents of the originally delivered files are only examples resp. implementation proposals.
 *                With regard to the fact that these functions are meant for demonstration purposes only, Vector
 *                Informatik's liability shall be expressly excluded in cases of ordinary negligence, to the extent
 *                admissible by law or statute.
 *  -------------------------------------------------------------------------------------------------------------------
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \par Copyright
 *  \verbatim
 *  Copyright (c) 2022 by Vector Informatik GmbH.                                                  All rights reserved.
 *
 *                This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 */
/*********************************************************************************************************************/

/***********************************************************************************************************************
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  02.00.00   2020-10-01  visdkl  FBL-2127         Initial release for SWDL006
 *  02.00.01   2021-01-04  visjdn  ESCAN00108043    No changes
 *  02.00.02   2022-02-16  vishor  FBL-3957         Add template information in file header
 **********************************************************************************************************************/

#ifndef SEC_SEEDKEY_CFG_H
#define SEC_SEEDKEY_CFG_H

/***********************************************************************************************************************
 *   VERSION
 **********************************************************************************************************************/

/* ##V_CFG_MANAGEMENT ##CQProject : SecAccess_His_Ford CQComponent : Implementation */
#define SECACCESS_HIS_FORD_VERSION                  0x0200u
#define SECACCESS_HIS_FORD_RELEASE_VERSION          0x02u

/* Reference interface version */
/** Major interface version identifies incompatible changes */
#define SECACCESS_API_REFERENCE_VERSION_MAJOR      0x01u
/** Minor interface version identifies backward compatible changes */
#define SECACCESS_API_REFERENCE_VERSION_MINOR      0x00u
/** Release interface version identifies cosmetic changes */
#define SECACCESS_API_REFERENCE_VERSION_RELEASE    0x00u

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/


/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/


#endif /* SEC_SEEDKEY_CFG_H */

/***********************************************************************************************************************
 *  END OF FILE: SEC_SEEDKEY_CFG.H
 **********************************************************************************************************************/