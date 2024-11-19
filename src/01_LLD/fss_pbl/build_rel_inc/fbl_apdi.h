/* Kernbauer Version: 1.12 Konfiguration: FBL Erzeugungsgangnummer: 1 */

/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         Application dependent diagnostic routines
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
 *  Copyright (c) 2023 by Vector Informatik GmbH.                                                  All rights reserved.
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
 *  06.00.00   2019-06-03  visrie  ESCAN00103334    Align Ford SLP7 (derived from 04.03.00) and JLR SLP2 (derived from
 *                                                  05.00.01)
 *  06.01.00   2019-11-18  visrcn  FBL-908          Add support for additional DIDs
 *  06.01.01   2020-05-14  visjdn  ESCAN00105585    Support Read Ford Electronic Serial Number also when OTA not defined
 *  06.02.00   2020-07-29  visrie  FBL-2038         No changes
 *  06.03.00   2020-12-10  vistmo  FBL-2141         Add support for Software Signing Solution 2.0
 *  06.03.01   2021-04-19  vistbe  ESCAN00107978    No changes
 *  06.04.00   2021-09-06  visjdn  FBL-2859         MISRA 2012 environment creation
 *  06.05.00   2022-07-06  vismix  FBL-4527         Support User Callouts for Mode Switching
 *  06.05.01   2023-01-17  visrie  ESCAN00113624    Wrong answer length for DID D071
 *  06.06.00   2023-02-09  vistmo  FBL-6438         Implement unsupported requirements for SyncP
 **********************************************************************************************************************/
/***********************************************************************************************************************
 *  --------------------------------------------------------------------------------------------------------------------
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  02.00.00   2018-09-14  visrie  ESCAN00100739    Added support for FblLib_NvPattern
 *                                                  Removed unused code
 *                         viscb   ESCAN00101418    Callout function for memory condition check
 *                         visach  ESCAN00101686    No changes
 *  02.01.00   2019-02-26  visrie  ESCAN00102257    Added additional callout functions
 *  02.01.01   2019-09-23  visrie  FBL-452          No changes
 *  02.02.00   2019-12-05  visrie  FBL-458          Added FblMio callout functions
 *  02.03.00   2020-05-07  visrie  FBL-1414         Added callout functions for One-Step-Updater
 *  02.03.01   2020-06-02  visjdn  ESCAN00106533    No changes
 *  02.03.02   2020-09-14  visrcn  FBL-2257         No changes
 *  02.03.03   2020-11-23  visrcn  FBL-2564         No changes
 *  02.03.04   2021-03-19  visjdn  FBL-2916         No changes
 *  02.04.00   2021-05-25  vishor  FBL-3165         MISRA corrections and justifications
 *  02.05.00   2021-06-15  visrie  FBL-3591         No changes
 *  02.06.00   2021-07-15  visjdn  FBL-3381         Re-mapping of EcuM_SetWakeupEvent
 *  02.07.00   2021-07-23  visrie  FBL-3822         No changes
 *  02.08.00   2021-09-14  visjdn  FBL-2859         No changes
 *  02.09.00   2021-10-12  vistmo  FBL-3901         Add authentication callbacks
 *  02.10.00   2021-10-15  visrie  FBL-3945         Remove content of ApplFblStartApplication
 *  02.10.01   2021-11-12  vishor  ESCAN00110133    Compiler error: Unknown symbols
 *                                                   ApplFblSave/RestoreStatusSector/Dynamic
 *  02.10.02   2022-06-27  visrie  FBL-4694         No changes
 *  02.10.03   2022-10-20  visjns  FBL-5452         No changes
 *  02.11.00   2022-12-22  vistbe  FBL-5691         No changes
 *  02.11.01   2023-04-25  visjns  ESCAN00113808    No changes
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  REVISION HISTORY (KbFbl_apOem.h, Ford)
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  09.00.00   2021-02-23  visrie  FBL-1525         Added support for STJLR.18.089 Issue 5
 *  09.00.01   2021-04-19  vistbe  ESCAN00108065    No changes
 *  09.00.02   2021-06-17  vishor  ESCAN00109177    No changes
 *                                 ESCAN00108819    No changes
 *  09.01.00   2021-06-28  vistbe  FBL-3522         No changes
 *  09.02.00   2021-09-06  visjdn  FBL-2859         No changes
 *  09.02.01   2023-01-17  visrie  ESCAN00112646    No changes
 *                                 ESCAN00112929    No changes
 *  09.03.00   2023-02-09  vistmo  FBL-6438         No changes
 *  09.03.01   2023-03-15  visjns  ESCAN00113286    No changes
 *  09.03.02   2023-05-26  vismix  ESCAN00108784    No changes
 **********************************************************************************************************************/

#ifndef FBL_APDI_H
#define FBL_APDI_H

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

/* ##V_CFG_MANAGEMENT ##CQProject : FblKbApi_FrameDiag_Ford CQComponent : Implementation */
#define FBLKBAPI_FRAMEDIAG_FORD_VERSION                    0x0606u
#define FBLKBAPI_FRAMEDIAG_FORD_RELEASE_VERSION            0x00u

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

/* Additional data identifiers */
#define kDiagDataIdEcuCoreAssemblyNumber                    ((vuint16) 0xF111u)
#define kDiagDataIdEcuDeliveryAssemblyNumber                ((vuint16) 0xF113u)
#define kDiagDataIdEcuSerialNumber                          ((vuint16) 0xF18Cu)
# define kDiagDataIdBootSoftwareIdentification              ((vuint16) 0xF180u)
# define kDiagDataIdBootloaderGenToolVersionNumber          ((vuint16) 0xF17Cu)
# define kDiagDataIdFordElectronicSerialNumber              ((vuint16) 0xF17Fu)
# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
#  define kDiagDataIdApplSignatureValidationStatus          ((vuint16) 0xD028u)
#  define kDiagDataIdPublicKeyHash                          ((vuint16) 0xD03Fu)
#  define kDiagDataIdRandomValue                            ((vuint16) 0xD070u)
#  if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
#   define kDiagDataIdLastToken                              ((vuint16) 0xD071u)
#  endif
# endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */

/* Additional data identifier length definitions */
/* Note: the length excludes the DID!            */
#define kDiagFmtDataIdEcuCoreAssemblyNumberSize                    24u
#define kDiagFmtDataIdEcuDeliveryAssemblyNumberSize                24u
#define kDiagFmtDataIdEcuSerialNumberSize                          16u
#define kDiagFmtDataIdBootSoftwareIdentificationSize               25u
# define kDiagFmtDataIdBootloaderGenToolVersionNumberSize          11u
# define kDiagFmtDataIdFordElectronicSerialNumberSize              8u
# define kDiagRqlWriteDataByIdentifierFordElectronicSerialNumber   8u
# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
#  define kDiagFmtDataIdApplSignatureValidationStatusSize          1u
#  define kDiagFmtDataIdPublicKeyHashSize                          32u
#  define kDiagDataIdRandomValueSize                               2u
#  if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
#   define kDiagDataIdLastTokenSize                                2134u
#  endif
# endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */
# define kDiagRqlWriteDataByIdentifierEcuCoreAssemblyNumber        24u
#define kDiagRqlWriteDataByIdentifierEcuSerialNumber               18u

/* Modifier for complex DID data which is handled in ApplFblReadDataByIdentifier() */
#define kDiagComplexDidData                                        V_NULL

#if defined( FBL_DIAG_ENABLE_STATIC_SEED )
/* Security seed response status defines */
# define kDiagSecStateSeedAlreadyRequested                  0x00u    /**< Seed sent out, but no key received */
# define kDiagSecStateNewSeedRequest                        0x01u    /**< No seed sent out, new seed should be sent */
#endif

/***********************************************************************************************************************
 *  TYPEDEFS
 **********************************************************************************************************************/

typedef V_MEMROM1_FAR vuint8 V_MEMROM2_FAR V_MEMROM3 * tDidDataPtr;

typedef struct tFblDidTable_tag
{
   vuint16 did;
   vuint16 size;
   tDidDataPtr ptr;
} tFblDidTable;

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

#if defined( FBL_DIAG_ENABLE_STATIC_SEED )
V_MEMRAM0 extern V_MEMRAM1 vuint8 V_MEMRAM2 secStateSeedResponse;
#endif
V_MEMROM0 extern V_MEMROM1 tFblDidTable V_MEMROM2 fblDidTable[]; /* PRQA S 3684 */ /* MD_FblApDi_3684 */
V_MEMROM0 extern V_MEMROM1 vuint8 V_MEMROM2 kNrOfDids;

/***********************************************************************************************************************
 *  PROTOTYPES
 **********************************************************************************************************************/

#if defined( FBL_ENABLE_USERSERVICE )
void ApplDiagUserService( vuint8 * pbDiagData, tTpDataType diagReqDataLen );
#endif /* FBL_ENABLE_USERSERVICE */
#if defined( FBL_ENABLE_USERSUBFUNCTION )
void ApplDiagUserSubFunction( vuint8 * pbDiagData, tTpDataType diagReqDataLen );
#endif /* FBL_ENABLE_USERSUBFUNCTION */
#if defined( FBL_ENABLE_USERROUTINE )
void ApplDiagRoutineControl( vuint8 * pbDiagData, tTpDataType diagReqDataLen );
#endif /* FBL_ENABLE_USERROUTINE */
vuint8 ApplFblReadDataByIdentifier( vuint8 * pbDiagData, tTpDataType diagReqDataLen );
#if defined( FBL_DIAG_ENABLE_WRITE_DATA_BY_IDENTIFIER )
vuint8 ApplFblWriteDataByIdentifier( vuint8 * pbDiagData, tTpDataType diagReqDataLen );
#endif /* FBL_DIAG_ENABLE_WRITE_DATA_BY_IDENTIFIER */
#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
void ApplFblTokenRevertKey( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf, vuint16 tokenLength );
void ApplFblTokenUseDevPermKey( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf, vuint16 tokenLength );
void ApplFblTokenUseDevTempKey( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf, vuint16 tokenLength );
tTokenHdlResult ApplFblTokenUseDevDateKey( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf, vuint16 tokenLength );
tTokenHdlResult ApplFblTokenUseDevIgniKey( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf, vuint16 tokenLength );
void ApplFblTokenProgKey( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf, vuint16 tokenLength );
# endif
#endif
#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
tFblResult ApplFblGetSecLvlSupport( vuint8 secLevel );
#endif /* FBL_ENABLE_SEC_ADDITIONAL_LEVELS */
#if defined( FBL_ENABLE_DEBUG_STATUS )
void ApplFblInitErrStatus( void );
#endif

tFblMemStatus ApplFblMemConditionCheck( void );

vuint8 ApplFblSecurityInit( void );
#define FBLAP_RAMCODE_START_SEC_CODE_EXPORT
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
vuint8 ApplFblSecuritySeedInit( void );
#define FBLAP_RAMCODE_STOP_SEC_CODE_EXPORT
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
vuint8 ApplFblSecuritySeed( void );
vuint8 ApplFblSecurityKey( void );

#endif /* __FBL_APDI_H__ */

/***********************************************************************************************************************
 *  END OF FILE: FBL_APDI.C
 **********************************************************************************************************************/

