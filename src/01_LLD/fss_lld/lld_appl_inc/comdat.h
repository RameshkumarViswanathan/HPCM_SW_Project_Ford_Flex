/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         Definition of common data structures which are shared between bootloader and application software
 *
 *  \note          Please note, that this file contains a collection of callback functions to be used with the
 *                 Flash Bootloader. These functions may influence the behavior of the bootloader in principle.
 *                 Therefore, great care must be taken to verify the correctness of the implementation.
 *                 The contents of the originally delivered files are only examples resp. implementation proposals.
 *                 With regard to the fact that these functions are meant for demonstration purposes only, Vector
 *                 Informatik's liability shall be expressly excluded in cases of ordinary negligence, to the extent
 *                 admissible by law or statute.
 *
 *  --------------------------------------------------------------------------------------------------------------------
 *  COPYRIGHT
 *  --------------------------------------------------------------------------------------------------------------------
 *  \par Copyright
 *  \verbatim
 *  Copyright (c) 2019 by Vector Informatik GmbH.                                                  All rights reserved.
 *
 *                This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 */
/**********************************************************************************************************************/

/***********************************************************************************************************************
 *  AUTHOR IDENTITY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Name                          Initials      Company
 *  --------------------------------------------------------------------------------------------------------------------
 *  Andre Caspari                 Ci            Vector Informatik GmbH
 *  Christian Ralcewicz           RCn           Vector Informatik GmbH
 *  --------------------------------------------------------------------------------------------------------------------
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  01.00.00   2009-12-02  Ci                       Initial Version
 *  01.00.01   2018-08-23  Ci      ESCAN00100454    Introduced DemoAppl configuration switch
 *  01.01.00   2019-12-05  RCn     FBL-908          Added additional tFblCommonData Member
 **********************************************************************************************************************/

#ifndef COMDAT_H
#define COMDAT_H
#include "fbl_main_types.h"

/* Generation tool Compatibility */
#define VGEN_ENABLE_CANFBL
#define VGEN_DELIVERY_VERSION_BYTE_0         0x00u       /* Replace this value with major release version.For example, in case of Rel Tag 28.07.20 use value 28 here   */
#define VGEN_DELIVERY_VERSION_BYTE_1         0x00u       /* Replace this value with minor release version. For example, in case of Rel Tag 28.07.20 use value 07 here  */
#define VGEN_DELIVERY_VERSION_BYTE_2         0x00u       /* Replace this value with bugfix release version.For example,in case of Rel Tag 28.07.20 use value 20 here   */
#define VGEN_DELIVERY_VERSION_BYTE_3         0x00u       /* Replace this value with byte 3 of CBD number. For example, in case of CBD2200179 D01 use value 02 here     */
#define VGEN_DELIVERY_VERSION_BYTE_4         0x00u       /* Replace this value with byte 2 of CBD number. For example, in case of CBD2200179 D01 use value 20 here     */
#define VGEN_DELIVERY_VERSION_BYTE_5         0x00u       /* Replace this value with byte 1 of CBD number. For example, in case of CBD2200179 D01 use value 01 here     */
#define VGEN_DELIVERY_VERSION_BYTE_6         0x00u       /* Replace this value with byte 0 of CBD number. For example, in case of CBD2200179 D01 use value 79 here     */
#define VGEN_DELIVERY_VERSION_BYTE_7         0x00u       /* Replace this value with delivery number. For example, in case of CBD2200179 D01 use value 01 here          */
#define VGEN_DELIVERY_VERSION_BYTE_8         0x00u       /* Unused */
#define VGEN_DELIVERY_VERSION_BYTE_9         0x00u       /* Unused */


/*
   The following typedefs avoid the usage of Vector types (e.g. vuint8) so
   they can be easily re-used in the application software.
 */
typedef struct tBootSwId_tag
{
   unsigned char     NumberOfModules;
   /* char string: take one additional byte into account for the NULL delimiter */
   unsigned char     IdentificationParameterRecord[24];
} tBootSwId;

typedef struct tBootGenToolVer_tag
{
   unsigned char     GenerationToolSupplier;
   unsigned char     GenerationToolVersionNumber[10];
} tBootGenToolVer;

typedef struct tFblCommonData_tag
{
   /* char string: take one additional byte into account for the NULL delimiter */
   unsigned char     EcuCoreAssemblyNumber[24];
   unsigned char     EcuDeliveryAssemblyNumber[24];
   unsigned char     EcuSerialNumber[16];
   tBootSwId         BootSoftwareIdentification;
   tBootGenToolVer   BootloaderGenToolVersionNumber;
   unsigned char     FordElectronicSerialNumber[8];
} tFblCommonData;

/* TestAppl: use macro to access common data */
# define fblCommonData   (*((V_MEMROM1_FAR tFblCommonData V_MEMROM2_FAR *)GetFblCommonDataPtr()))

#endif /* COMDAT_H */

/***********************************************************************************************************************
 *  END OF FILE: COMDAT.H
 **********************************************************************************************************************/

