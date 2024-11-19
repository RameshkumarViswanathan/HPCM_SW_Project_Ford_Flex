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
 *  06.02.00   2020-07-29  visrie  FBL-2038         Added constants for DER key parts
 *  06.03.00   2020-12-10  vistmo  FBL-2141         Add support for Software Signing Solution 2.0
 *  06.03.01   2021-04-19  vistbe  ESCAN00107978    Compile error
 *  06.04.00   2021-09-06  visjdn  FBL-2859         MISRA 2012 environment creation
 *  06.05.00   2022-07-06  vismix  FBL-4527         Support User Callouts for Mode Switching
 *  06.05.01   2023-01-17  visrie  ESCAN00113624    No changes
 *  06.06.00   2023-02-09  vistmo  FBL-6438         Implement unsupported requirements for SyncP
 **********************************************************************************************************************/
/***********************************************************************************************************************
 *  --------------------------------------------------------------------------------------------------------------------
 *  REVISION HISTORY (kbFbl_apAPI.c)
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  02.00.00   2018-09-14  visrie  ESCAN00100739    Added support for FblLib_NvPattern
 *                                                  Removed unused code
 *                         viscb   ESCAN00101418    Callout function for memory condition check
 *                         visach  ESCAN00101686    Added interface definition for vendor verification routine
 *  02.01.00   2019-02-26  visrie  ESCAN00102257    Added additional callout functions
 *  02.01.01   2019-09-23  visrie  FBL-452          Added support for FrArTp
 *  02.02.00   2019-12-05  visrie  FBL-458          Added FblMio callout functions
 *  02.03.00   2020-05-07  visrie  FBL-1414         Added callout functions for One-Step-Updater
 *  02.03.01   2020-06-02  visjdn  ESCAN00106533    Update to latest MISRA version
 *  02.03.02   2020-09-14  visrcn  FBL-2257         Add MISRA justifications
 *  02.03.03   2020-11-23  visrcn  FBL-2564         Add MISRA justifications
 *  02.03.04   2021-03-19  visjdn  FBL-2916         Add MISRA justifications
 *  02.04.00   2021-05-26  vishor  FBL-3165         MISRA corrections and justifications
 *  02.05.00   2021-06-15  visrie  FBL-3591         Provide default implementation for ApplFbl_DetEntryHandler
 *                                                  Add MISRA justifications
 *  02.06.00   2021-07-15  visjdn  FBL-3381         Re-mapping of EcuM_SetWakeupEvent
 *  02.07.00   2021-07-22  visrie  FBL-3822         Update to QAC9 Helix-2021
 *  02.08.00   2021-09-14  visjdn  FBL-2859         Add MISRA justifications
 *  02.09.00   2021-10-12  vistmo  FBL-3901         Add authentication callbacks
 *  02.10.00   2021-10-15  visrie  FBL-3945         Remove content of ApplFblStartApplication
 *  02.10.01   2021-11-12  vishor  ESCAN00110133    Compiler error: Unknown symbols
 *                                                   ApplFblSave/RestoreStatusSector/Dynamic
 *  02.10.02   2022-06-27  visrie  FBL-4694         Add MISRA justifications
 *  02.10.03   2022-10-20  visjns  FBL-5452         Add MISRA justifications
 *  02.11.00   2022-12-22  vistbe  FBL-5691         Add support for LZSS compression
 *  02.11.01   2023-04-25  visjns  ESCAN00113808    Compiler error: TPLIN_VERSION/tLinFrameHandleType is not defined
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  REVISION HISTORY (KbFbl_apOem.c, Ford)
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  09.00.00   2021-02-23  visrie  FBL-1525         Added support for STJLR.18.089 Issue 5
 *  09.00.01   2021-04-19  vistbe  ESCAN00108065    Compile error
 *  09.00.02   2021-06-17  vishor  ESCAN00109177    Public Key Hash Calculation Returns Incorrect Hash
 *                                 ESCAN00108819    FESN isn't part of the initialization
 *  09.01.00   2021-06-28  vistbe  FBL-3522         Updated signing solution (new token format)
 *  09.02.00   2021-09-06  visjdn  FBL-2859         MISRA 2012 environment creation
 *  09.02.01   2023-01-17  visrie  ESCAN00112646    Security Bytes in RAM in ApplFblSecurityKey is not cleared after use
 *                                 ESCAN00112929    Wrong answer length for DID D071
 *  09.03.00   2023-02-09  vistmo  FBL-6438         Implement unsupported requirements for SyncP
 *  09.03.01   2023-03-15  visjns  ESCAN00113286    Compiler error: undefined symbols CheckSuppressPosRspMsgIndication/
 *                                                   kDiagSubRoutineType1_Sync in ApplDiagRoutineControl
 *  09.03.02   2023-05-26  vismix  ESCAN00108784    [XCP] Bootloader does not process XCP messages
 **********************************************************************************************************************/

#define FBL_APDI_SOURCE

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

/* PRQA S 0857 EOF */ /* MD_MSR_1.1_857 */
#include "fbl_inc.h"

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

#if ( FBLKBAPI_FRAMEDIAG_FORD_VERSION != 0x0606u ) || \
    ( FBLKBAPI_FRAMEDIAG_FORD_RELEASE_VERSION != 0x00u )
# error "Error in fbl_apdi.c: Source and header file are inconsistent!"
#endif

#if ( FBLKBAPI_FRAMEDIAG_FORD_VERSION != _FBLKBAPI_FRAMEDIAG_OEM_VERSION ) || \
    ( FBLKBAPI_FRAMEDIAG_FORD_RELEASE_VERSION != _FBLKBAPI_FRAMEDIAG_OEM_RELEASE_VERSION )
# error "Error in fbl_apdi.c: Source and v_ver.h are inconsistent!"
#endif

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
#  define FBL_DER_KEY_PART1_LENGTH 0x21u
#  define FBL_DER_KEY_PART2_LENGTH 0x02u
# endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

/* Definition of supported data identifiers */
V_MEMROM0 V_MEMROM1 tFblDidTable V_MEMROM2 fblDidTable[] =
{
   {
      /* ECU Core Assembly Number */
      kDiagDataIdEcuCoreAssemblyNumber, kDiagFmtDataIdEcuCoreAssemblyNumberSize, kDiagComplexDidData
   },
   {
      /* ECU Delivery Assembly Number */
      kDiagDataIdEcuDeliveryAssemblyNumber, kDiagFmtDataIdEcuDeliveryAssemblyNumberSize, kDiagComplexDidData
   },
   {
      /* ECU Serial Number */
      kDiagDataIdEcuSerialNumber, kDiagFmtDataIdEcuSerialNumberSize, kDiagComplexDidData
   },
   {
      /* Boot Software Identification */
      kDiagDataIdBootSoftwareIdentification, kDiagFmtDataIdBootSoftwareIdentificationSize, kDiagComplexDidData
   },
   {
      /* Bootloader Generation Tool Version Number */
      kDiagDataIdBootloaderGenToolVersionNumber, kDiagFmtDataIdBootloaderGenToolVersionNumberSize, kDiagComplexDidData
   },
   {
      /* Ford Electronic Serial Number */
      kDiagDataIdFordElectronicSerialNumber, kDiagFmtDataIdFordElectronicSerialNumberSize, kDiagComplexDidData
   }
# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
   ,{
      /* Get 16-bit Random Number */
      kDiagDataIdRandomValue, kDiagDataIdRandomValueSize, kDiagComplexDidData
   }
#  if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
   ,{
      /* Get the last received Token */
      kDiagDataIdLastToken, kDiagDataIdLastTokenSize, kDiagComplexDidData
   }
#  endif
   ,{
       /* Application Signature Validation Status */
       kDiagDataIdApplSignatureValidationStatus, kDiagFmtDataIdApplSignatureValidationStatusSize, kDiagComplexDidData
    }
   ,{
       /* Application Signature Validation Status */
       kDiagDataIdPublicKeyHash, kDiagFmtDataIdPublicKeyHashSize, kDiagComplexDidData
    }
# endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */
};

V_MEMROM0 V_MEMROM1 vuint8 V_MEMROM2 kNrOfDids = sizeof(fblDidTable) / sizeof(fblDidTable[0]);

#if defined( FBL_DIAG_ENABLE_STATIC_SEED )
V_MEMRAM0 V_MEMRAM1 vuint8 V_MEMRAM2 secStateSeedResponse;
#endif

# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
/* PRQA S 3218 1 */ /* MD_FblApDi_3218 */
V_MEMROM0 static V_MEMROM1 vuint8 V_MEMROM2 kFblDerKeyPart1[FBL_DER_KEY_PART1_LENGTH] = {
   0x30u, 0x82u, 0x01u, 0x22u, 0x30u, 0x0Du, 0x06u, 0x09u, 0x2Au, 0x86u, 0x48u, 0x86u, 0xF7u, 0x0Du, 0x01u, 0x01u,
   0x01u, 0x05u, 0x00u, 0x03u, 0x82u, 0x01u, 0x0Fu, 0x00u, 0x30u, 0x82u, 0x01u, 0x0Au, 0x02u, 0x82u, 0x01u, 0x01u,
   0x00u
};

/* PRQA S 3218 1 */ /* MD_FblApDi_3218 */
V_MEMROM0 static V_MEMROM1 vuint8 V_MEMROM2 kFblDerKeyPart2[FBL_DER_KEY_PART2_LENGTH] = {
   0x02u, 0x03u
};
# endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */

/***********************************************************************************************************************
 *  LOCAL DATA
 **********************************************************************************************************************/

/* PRQA S 3218 TAG_FblApDi_3218_1 */ /* MD_FblApDi_3218 */
#if defined( SEC_ENABLE_SEED_KEY_ENTROPY_POOL ) && \
    defined( SEC_ENABLE_SEED_KEY_EXPLICIT_ENTROPY )
V_MEMRAM0 static V_MEMRAM1 SecM_EntropyPoolType    V_MEMRAM2 secEntropyPool;
V_MEMRAM0 static V_MEMRAM1 vuint8                  V_MEMRAM2 secEntropyInput[2];
V_MEMRAM0 static V_MEMRAM1 SecM_SeedKeyContextType V_MEMRAM2 secSeedContext;
V_MEMRAM0 static V_MEMRAM1 SecM_SeedStorageType    V_MEMRAM2 secSeedData;
#endif /* SEC_ENABLE_SEED_KEY_ENTROPY_POOL && SEC_ENABLE_SEED_KEY_EXPLICIT_ENTROPY */

V_MEMRAM0 static V_MEMRAM1 SecM_SeedType           V_MEMRAM2 seed;
/* PRQA L:TAG_FblApDi_3218_1 */


/***********************************************************************************************************************
 *  EXTERNAL DATA
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  PROTOTYPES
 **********************************************************************************************************************/

#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
static SecM_SizeType ApplFblReadBootloaderROM( SecM_AddrType address, SecM_RamDataType buffer, SecM_SizeType length);
#endif

/***********************************************************************************************************************
 *  GLOBAL FUNCTIONS
 **********************************************************************************************************************/
#if defined( FBL_ENABLE_USERSERVICE )
/***********************************************************************************************************************
 *  ApplDiagUserService
 **********************************************************************************************************************/
/*! \brief         Call-back function for user diagnostic services. pbDiagData points to subfunction.
 *  \details       This function is called when a diagnostic service has been received that is not managed by the FBL
 *                 itself -> can be managed by user.
 *  \param[in,out] pbDiagData Pointer to diag service data (after SID!)
 *  \param[in]     diagReqDataLen Service data length (without SID!)
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_FblKbApi_3673 */
void ApplDiagUserService( vuint8 * pbDiagData, tTpDataType diagReqDataLen )
{
   vuint8 * pbDiagDataLocal = pbDiagData;

   /* Check requested service ID */
   switch (DiagGetRequestSId())
   {
      /* User service example */
      case 0x55u:
         /* Check request length */
         if (diagReqDataLen != 0x01u)
         {
            DiagNRCIncorrectMessageLengthOrInvalidFormat();
         }
         else
         {
            /*
             * Service with subfunction: check if the service response shall be
             * suppressed.
             */
#if defined( FBLDIAG_14229_CORE_VERSION )
            if ((pbDiagDataLocal[0] & kDiagSuppressPosRspMsgIndicationBit) != 0u)
            {
               SetFblDiagState(kFblDiagStateSuppressPosRspMsg); /* Set internal flag for response processor */
               pbDiagDataLocal[0] &= FblInvert8Bit(kDiagSuppressPosRspMsgIndicationBit); /* Clear indication bit */
            }
#else
            CheckSuppressPosRspMsgIndication(&pbDiagDataLocal[0]);
#endif /* FBLDIAG_14229_CORE_VERSION */

            /*
             * <<< If required, check additional service restrictions       >>>
             * <<< (e.g. diagnostic session, security access, memory driver >>>
             * <<< initialized).                                            >>>
             */

            /* Check requested subfunction ID */
            switch (pbDiagDataLocal[0])
            {
               /* User subfunction example */
               case 0x01u:
                  /* <<< User service/subfunction specific handling >>> */

                  /* Send response */
                  DiagProcessingDone(0x01u);
                  break;

               /* Incorrect subfunction requested for this user service */
               default:
                  /* Service ID not supported, set corresponding response code */
                  DiagNRCSubFunctionNotSupported();
                  break;
            }
         }
         break;

      /* Service ID not supported, set corresponding response code */
      default:
         DiagNRCServiceNotSupported();
         break;
   }
}
#endif /* FBL_ENABLE_USERSERVICE */

#if defined( FBL_ENABLE_USERSUBFUNCTION )
/***********************************************************************************************************************
 *  ApplDiagUserSubFunction
 **********************************************************************************************************************/
/*! \brief         Call-back function for user diagnostic services. pbDiagData points to subfunction.
 *  \details       This function is called when the bootloader manages the diagnostic service, but the sub-parameter
 *                 is unknown -> subparameter of the service can be managed by user.
 *  \param[in,out] pbDiagData Pointer to diag service data (after SID!)
 *  \param[in]     diagReqDataLen Service data length (without SID!!)
 **********************************************************************************************************************/
/* PRQA S 3673 1 */ /* MD_FblKbApi_3673 */
void ApplDiagUserSubFunction( vuint8 * pbDiagData, tTpDataType diagReqDataLen )
{
   /* Check requested service ID */
   switch (DiagGetRequestSId())
   {
      /* User subfunction example for service ID 0x3E */
      case kDiagSidTesterPresent:
         /* Check requested subfunction ID */
         switch (pbDiagData[0u] & FblInvert8Bit(kDiagSuppressPosRspMsgIndicationBit))
         {
            case 0x55u:
               /* Check request length */
               if (diagReqDataLen != 0x01u)
               {
                  DiagNRCIncorrectMessageLengthOrInvalidFormat();
               }
               else
               {
                  /*
                   * <<< If required, check additional subfunction restrictions   >>>
                   * <<< (e.g. diagnostic session, security access, memory driver >>>
                   * <<< initialized).                                            >>>
                   */

                  /* <<< User subfunction specific handling >>> */

                  /* Send response */
                  pbDiagData[0u] = 0xAAu;
                  DiagProcessingDone(1u);
               }
               break;

            /* Subfunction ID not supported for this service */
            default:
               DiagNRCSubFunctionNotSupported();
               break;
         }
         break;

      /* No user subfunction defined for this service ID */
      default:
         DiagNRCSubFunctionNotSupported();
         break;
   }
}
#endif /* FBL_ENABLE_USERSUBFUNCTION */

#if defined( FBL_ENABLE_USERROUTINE )
/***********************************************************************************************************************
 *  ApplDiagRoutineControl
 **********************************************************************************************************************/
/*! \brief         Call-back function for user diagnostic services. pbDiagData points to subfunction.
 *  \param[in,out] pbDiagData Pointer to diag service data (after SID!)
 *  \param[in]     diagReqDataLen Service data length (without SID!)
 **********************************************************************************************************************/
void ApplDiagRoutineControl( vuint8 * pbDiagData, tTpDataType diagReqDataLen )
{
   vuint16 routineId;
   vuint8 routineControlType;
   vuint8 * pbDiagDataLocal = pbDiagData;

   /* Check if the service response shall be suppressed */
#if defined( FBLDIAG_14229_CORE_VERSION )
   if ((pbDiagDataLocal[0] & kDiagSuppressPosRspMsgIndicationBit) != 0u)
   {
      SetFblDiagState(kFblDiagStateSuppressPosRspMsg); /* Set internal flag for response processor */
      pbDiagDataLocal[0] &= FblInvertBits(kDiagSuppressPosRspMsgIndicationBit, vuint8); /* Clear indication bit */
   }
#else
   CheckSuppressPosRspMsgIndication(&pbDiagDataLocal[0u]);
#endif /* FBLDIAG_14229_CORE_VERSION */

   /* Get routine control type from diag buffer */
   routineControlType = pbDiagDataLocal[0u];

   /* Get 2-byte routine ID from diag buffer */
   routineId = ((vuint16)pbDiagDataLocal[1u] << 8u) | pbDiagDataLocal[2u];

   /* Advance pointer to diag buffer so it points to the payload data */
   pbDiagDataLocal = &(pbDiagDataLocal[3u]);

   /* Setup initial response length. The payload length is added below. */
   DiagDataLength = 0x03u;

   switch (routineId)
   {
      /* Example: development specific routine */
      case 0xDC00u:
      {
         /* Check routine control type for this routine ID */
         if (routineControlType != kDiagSubStartRoutine)
         {
            DiagNRCSubFunctionNotSupported();
         }
         else
         {
            /* Check total data length */
            if (diagReqDataLen != (kDiagRqlRoutineControl /* + routine specific parameter size */))
            {
               DiagNRCIncorrectMessageLengthOrInvalidFormat();
            }
            else
            {
               /* Check programming mode - is the SBL present and activated? */
               if (! GetMemDriverInitialized())
               {
                  DiagNRCConditionsNotCorrect();
               }
               else
               {
                  /* Check further preconditions and the parameter values if required */

                  /* CUSTOMER SPECIFIC: Perform routine specific operation(s) */

                  /* Prepare positive response */
#if defined( FBLDIAG_14229_FORD_VERSION )
                  pbDiagDataLocal[0u] = (vuint8)((kDiagSubRoutineType1_Sync << 4u) | kDiagSubRoutineStatusCompleted );
#else
                  pbDiagDataLocal[0u] = (vuint8)( kDiagSubRoutineStatusCompleted );
#endif /* FBLDIAG_14229_FORD_VERSION */
                  DiagDataLength += 1u;
               }
               /* Note: no response handling required (performed by fbl_diag)! */
            }
         }
         break;
      }
      /* No user routine defined with this ID */
      default:
      {
         DiagNRCRequestOutOfRange();
         break;
      }
   }
}
#endif /* FBL_ENABLE_USERROUTINE */

/***********************************************************************************************************************
 *  ApplFblReadDataByIdentifier
 **********************************************************************************************************************/
/*! \brief         ReadDataByIdentifier service function.
 *  \param[in,out] pbDiagData Pointer to diag service data (after SID!)
 *  \param[in]     diagReqDataLen Service data length (without SID!)
 **********************************************************************************************************************/
/* PRQA S 6030 1 */ /* MD_MSR_STCYC */
vuint8 ApplFblReadDataByIdentifier( vuint8 * pbDiagData, tTpDataType diagReqDataLen )
{
   vuint16 reqDid, dataIdx;
   vuint8 returnCode;

   /*
    * Important note regarding the function parameters:
    * - pbDiagData points to the location in the diag buffer where the DID is
    *   located - i.e. the actual DID data starts at offset +2.
    * - diagReqDataLen describes the actual data length of the requested DID
    *   (not including the 2-byte DID number!)
    */

   /* Initialize return code */
   returnCode = kFblOk;

   {
      /* Extract DID from diag buffer */
      reqDid = (vuint16)(((vuint16)pbDiagData[0u] << 8u) | (pbDiagData[1u]));

      switch (reqDid)
      {
		        /* DID F111: ECU Core Assembly Number */
	      case kDiagDataIdEcuCoreAssemblyNumber:
	      {
	         dataIdx = 0u;
	         while(fblCommonData.EcuCoreAssemblyNumber[dataIdx] != '\0')
	         {
	            pbDiagData[kDiagRslReadDataByIdentifier + dataIdx] = fblCommonData.EcuCoreAssemblyNumber[dataIdx];
	            dataIdx++;
	         }
	         break;
	      }
	      /* DID F13C: ECU Delivery Assembly Number */
	      case kDiagDataIdEcuDeliveryAssemblyNumber:
	      {
	         dataIdx = 0u;
	         while(fblCommonData.EcuDeliveryAssemblyNumber[dataIdx] != '\0')
	         {
	            pbDiagData[kDiagRslReadDataByIdentifier + dataIdx] = fblCommonData.EcuDeliveryAssemblyNumber[dataIdx];
	            dataIdx++;
	         }
	         break;
	      }
	      /* DID 0xF17Fu: Ford Electronic Serial Number */
	      case kDiagDataIdFordElectronicSerialNumber:
	      {
	         dataIdx = 0u;
	         while(fblCommonData.FordElectronicSerialNumber[dataIdx] != '\0')
	         {
	            pbDiagData[kDiagRslReadDataByIdentifier + dataIdx] = fblCommonData.FordElectronicSerialNumber[dataIdx];
	            dataIdx++;
	         }
	         break;
	      }
	      /* DID 0xF18C: ECU Serial Number */
	      case kDiagDataIdEcuSerialNumber:
	      {
	         dataIdx = 0u;
	         while(fblCommonData.EcuSerialNumber[dataIdx] != '\0')
	         {
	            pbDiagData[kDiagRslReadDataByIdentifier + dataIdx] = fblCommonData.EcuSerialNumber[dataIdx];
	            dataIdx++;
	         }
	         break;
	      }

         /* DID F180: Boot Software Identification (WERS) */
         case kDiagDataIdBootSoftwareIdentification:
         {
            /* Number of modules */
            pbDiagData[2u] = fblCommonData.BootSoftwareIdentification.NumberOfModules;

            /* Extract the requested information from common data table */
            for (dataIdx = 0u; dataIdx < diagReqDataLen; dataIdx++)
            {
               pbDiagData[3u + dataIdx] = fblCommonData.BootSoftwareIdentification.IdentificationParameterRecord[dataIdx];
            }
            break;
         }
         /* DID 0xF17C: Bootloader Generation Tool Version Number */
         case kDiagDataIdBootloaderGenToolVersionNumber:
         {
            /* Generation tool supplier: Vector */
            pbDiagData[2u] = fblCommonData.BootloaderGenToolVersionNumber.GenerationToolSupplier;

            /* Extract the requested information from common data table */
            for (dataIdx = 0u; dataIdx < diagReqDataLen; dataIdx++)
            {
               pbDiagData[3u + dataIdx] = fblCommonData.BootloaderGenToolVersionNumber.GenerationToolVersionNumber[dataIdx];
            }
            break;
         }
# if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
         /* DID 0xD070u: Get random 16-bit number */
         case kDiagDataIdRandomValue:
         {
            if (SecM_GenerateSeed(&seed) == SECM_OK)
            {
               /* PRQA S 0314 1 */ /* MD_FblKbApiOem_0314 */
               (void)MEMCPY(&pbDiagData[2u], seed.data, 2u);
            }
            else
            {
               returnCode = kFblFailed;
            }
            break;
         }
#  if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
         /* DID 0xD071u: Get token */
         case kDiagDataIdLastToken:
         {
            /* PRQA S 0314 1 */ /* MD_FblKbApiOem_0314 */
            (void)MEMCPY(&pbDiagData[2u], GetDiagCurrentToken(), FBL_DIAG_TOKEN_SIZE);

            /* Fill remaining bytes with 0 */
            for (dataIdx = FBL_DIAG_TOKEN_SIZE; dataIdx < diagReqDataLen; dataIdx++)
            {
               pbDiagData[2u + dataIdx] = 0u;
            }

            break;
         }
#  endif /* FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING */
         /* DID 0xD028u: Application Signature Validation Status */
         case kDiagDataIdApplSignatureValidationStatus:
         {
            /* Get 1 byte status and set it here */
            pbDiagData[2] = ApplFblGetSigValidationState();
            break;
         }
         /* DID 0xD03F: Public Key Hash */
         case kDiagDataIdPublicKeyHash:
         {
            SecM_VerifyParamType verifyParam;
            SecM_AsymKeyType     pubKey;
            FL_SegmentInfoType   verifySegmentInfo[4u];
            SecM_StatusType      secStatus;

            pubKey.shared.size = sizeof(SecM_RsaMod);
            pubKey.individual.size = sizeof(SecM_RsaExp);

            if (ApplFblReadVerificationKey(&pubKey) != kFblOk)
            {
               DiagNRCConditionsNotCorrect();
               returnCode = kFblFailed;
            }
            else
            {
               /* Configure segment which shall be verified */
               verifySegmentInfo[0u].targetAddress      = (SecM_AddrType)kFblDerKeyPart1; /* PRQA S 0306 */ /* MD_FblKbApiOem_0306 */
               verifySegmentInfo[0u].transferredAddress = verifySegmentInfo[0u].targetAddress;
               verifySegmentInfo[0u].length             = sizeof(kFblDerKeyPart1);
               verifySegmentInfo[1u].targetAddress      = (SecM_AddrType)pubKey.shared.data; /* PRQA S 0306 */ /* MD_FblKbApiOem_0306 */
               verifySegmentInfo[1u].transferredAddress = verifySegmentInfo[1u].targetAddress;
               verifySegmentInfo[1u].length             = pubKey.shared.size;
               verifySegmentInfo[2u].targetAddress      = (SecM_AddrType)kFblDerKeyPart2; /* PRQA S 0306 */ /* MD_FblKbApiOem_0306 */
               verifySegmentInfo[2u].transferredAddress = verifySegmentInfo[2u].targetAddress;
               verifySegmentInfo[2u].length             = sizeof(kFblDerKeyPart2);
               verifySegmentInfo[3u].targetAddress      = (SecM_AddrType)&pubKey.individual.data[pubKey.individual.size - 3u]; /* PRQA S 0306 */ /* MD_FblKbApiOem_0306 */
               verifySegmentInfo[3u].transferredAddress = verifySegmentInfo[3u].targetAddress;
               verifySegmentInfo[3u].length             = 3u;
               verifyParam.segmentList.segmentInfo      = verifySegmentInfo;
               verifyParam.segmentList.nrOfSegments     = 4u;
               verifyParam.blockStartAddress            = verifySegmentInfo[0u].targetAddress;
               verifyParam.blockLength                  = 0u;
               verifyParam.verificationData             = &pbDiagData[2u];
               verifyParam.wdTriggerFct                 = (FL_WDTriggerFctType)FblRealTimeSupport; /* PRQA S 0313 */ /* MD_FblKbApiOem_0313 */
               verifyParam.readMemory                   = ApplFblReadBootloaderROM;

               /* Perform checksum calculation */
               secStatus = SecM_VerificationClassDDD(&verifyParam);

               if (SECM_VER_OK != secStatus)
               {
                  DiagNRCConditionsNotCorrect();
                  returnCode = kFblFailed;
               }
            }
            break;
         }
# endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */
         default:
         {
            /* Requested data identifier is not supported */
            returnCode = kFblFailed;
            break;
         }
      }
   }


   return returnCode;
} /* PRQA S 6030 */ /* MD_MSR_STCYC */

#if defined( FBL_DIAG_ENABLE_WRITE_DATA_BY_IDENTIFIER )
/***********************************************************************************************************************
 *  ApplDiagWriteDataByIdentifier
 **********************************************************************************************************************/
/*! \brief         WriteDataByIdentifier service function.
 *  \param[in,out] pbDiagData Pointer to diag service data (after SID!)
 *  \param[in]     diagReqDataLen Service data length (without SID!)
 *  \return        Success of operation
 **********************************************************************************************************************/
/* PRQA S 3673, 6030, 6080 1 */ /* MD_FblKbApi_3673, MD_MSR_STCYC, MD_MSR_STMIF */
vuint8 ApplFblWriteDataByIdentifier( vuint8 * pbDiagData, tTpDataType diagReqDataLen )
{
   vuint16 reqDid;
   vuint8 returnCode;

   /*
    * Important note regarding the function parameters:
    * - pbDiagData points to the location in the diag buffer where the DID is
    *   located - i.e. the actual DID data starts at offset +2.
    * - diagReqDataLen describes the actual data length of the requested DID
    *   plus the 2-byte DID number!
    */

   /* Get 2-byte DID from diag buffer */
   reqDid = (vuint16)(((vuint16)pbDiagData[0u] << 8u) | (pbDiagData[1u]));

   switch (reqDid)
   {
      /* DID 0xF18C: ECU Serial Number (write once) */
      case kDiagDataIdEcuSerialNumber:
      {
         if (diagReqDataLen != kDiagRqlWriteDataByIdentifierEcuSerialNumber)
         {
            DiagNRCIncorrectMessageLengthOrInvalidFormat();
            returnCode = kFblFailed;
         }
         else
         {
            if (kDiagSecLevelFlash != GetCurrentSecLvl())
            {
               DiagNRCSecurityAccessDenied();
               returnCode = kFblFailed;
            }
            else
            {
               /* Check programming mode - is the SBL present and activated? */
               if (! GetMemDriverInitialized())
               {
                  DiagNRCConditionsNotCorrect();
                  returnCode = kFblFailed;
               }
               else
               {
                  /* Pretend that the DID has already been written */
                  DiagNRCRequestOutOfRange();
                  returnCode = kFblFailed;
               }
            }
         }
         break;
      }
      /* Requested data identifier is not supported */
      default:
      {
         /* Requested data identifier is not supported */
         DiagNRCRequestOutOfRange();
         returnCode = kFblFailed;
         break;
      }
   }

   return returnCode;
} /* PRQA S 6030, 6080 */ /* MD_MSR_STCYC, MD_MSR_STMIF */
#endif /* FBL_ENABLE_WRITE_DATA_BY_IDENTIFIER */

/***********************************************************************************************************************
 *  ApplFblMemConditionCheck
 **********************************************************************************************************************/
/*! \brief       Memory condition checks like programming voltage can be implemented here.
 *  \details     This function is called before AND after each memory operation, i.e. before and after erase- and write.
 *  \return      kFblMemStatus_Ok: Programming conditions OK
                 kFblMemStatus_XXX: Violated programming condition
 **********************************************************************************************************************/
tFblMemStatus ApplFblMemConditionCheck( void )
{
   tFblMemStatus checkResult;

   /*
    * Use the following return codes:
    * kFblMemStatus_Ok
    * kFblMemStatus_VoltageTooHigh
    * kFblMemStatus_VoltageTooLow
    * */
   checkResult = kFblMemStatus_Ok;

   /*
    * Distinguish between erase and write with TransferDataAllowed flag
    * TransferDataAllowed is set only for write operations.
    */

   /* if (FblDiagGetTransferDataAllowed()) */
   {
      /* TODO_CUSTOMER: Check programming voltage */

      /* Voltage too high */
      /* checkResult = kFblMemStatus_VoltageTooHigh; */

      /* Voltage too low */
      /* checkResult = kFblMemStatus_VoltageTooLow; */
   }

   return checkResult;
}

/***********************************************************************************************************************
 *  ApplFblSecurityInit
 **********************************************************************************************************************/
/*! \brief       Initialize security module.
 *  \return      Status of security module initialization
 **********************************************************************************************************************/
vuint8 ApplFblSecurityInit( void )
{
#if defined( SEC_ENABLE_SEED_KEY_ENTROPY_POOL ) && \
    defined( SEC_ENABLE_SEED_KEY_EXPLICIT_ENTROPY )
   /* Initialize entropy pool and context variables */
   SecM_InitEntropy(&secEntropyPool);

   seed.entropyPool = &secEntropyPool;
   seed.data = secSeedData;

   secEntropyPool.context = &secSeedContext; /* PRQA S 0315 */ /* MD_FblKbApiOem_0315 */
   secSeedContext.wdTriggerFct = (FL_WDTriggerFctType)FblRealTimeSupport; /* PRQA S 0313 */ /* MD_FblKbApiOem_0313 */
   secSeedContext.workspace.data = SEC_DEFAULT_WORKSPACE;
   secSeedContext.workspace.size = SEC_DEFAULT_WORKSPACE_SIZE;
#else
# if defined( SEC_BYTE_ARRAY_SEED ) || \
     defined( SEC_WORD_ARRAY_SEED )
   seed[0u] = 0u;
   seed[1u] = 0u;
# endif /* SEC_BYTE_ARRAY_SEED ||  SEC_WORD_ARRAY_SEED */
#endif /* SEC_ENABLE_SEED_KEY_ENTROPY_POOL && SEC_ENABLE_SEED_KEY_EXPLICIT_ENTROPY */

   return kFblOk;
}

# define FBLAP_RAMCODE_START_SEC_CODE
# include "MemMap.h"   /* PRQA S 5087 */ /* MD_MSR_MemMap */
/***********************************************************************************************************************
 *  ApplFblSecuritySeedInit
 **********************************************************************************************************************/
/*! \brief       Initialize seed values.
 *  \return      Status of seed initialization
 **********************************************************************************************************************/
vuint8 ApplFblSecuritySeedInit( void )
{
#if defined( SEC_ENABLE_SEED_KEY_ENTROPY_POOL ) && \
    defined( SEC_ENABLE_SEED_KEY_EXPLICIT_ENTROPY )
   vuint16 hwTimer;

   /* Read current hardware timer value */
   hwTimer = FblGetTimerValue();

   /* Fill entropy pool */
   secEntropyInput[1] = (vuint8)(hwTimer & 0xFFu);
   secEntropyInput[0] = (vuint8)(hwTimer >> 8u);
   (void)SecM_ProvideEntropy(&secEntropyPool, secEntropyInput, 2u);
#else
# if defined( SEC_BYTE_ARRAY_SEED ) || \
     defined( SEC_WORD_ARRAY_SEED )
   seed[1u] += seed[0u];
   seed[0u]  = (SecM_SeedBaseType)FblGetTimerValue();
# endif /* SEC_BYTE_ARRAY_SEED ||  SEC_WORD_ARRAY_SEED */
#endif /* SEC_ENABLE_SEED_KEY_ENTROPY_POOL && SEC_ENABLE_SEED_KEY_EXPLICIT_ENTROPY */

   return kFblOk;
}
# define FBLAP_RAMCODE_STOP_SEC_CODE
# include "MemMap.h"   /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  ApplFblSecuritySeed
 **********************************************************************************************************************/
/*! \brief       This function is called when the tester requests the security seed.
 *  \return      Status of seed generation
 **********************************************************************************************************************/
/* PRQA S 6010, 6030, 6080 1 */ /* MD_MSR_STPTH, MD_MSR_STCYC, MD_MSR_STMIF */
vuint8 ApplFblSecuritySeed( void )
{
   vuint8 retVal;
   vuint8 seedLength;
#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
   vuint8 reqSecLvl;
#endif

#if !defined( FBL_ENABLE_SEED_KEY_MODULE )
   vuintx i;
#endif

   retVal = kFblOk;

   /* Note: Supported security levels don't have to be checked here; this is already performed by fbl_diag */
   /* Set seed length according to requested security level */
   seedLength = GetRequestedSeedLength();

#if defined( FBL_DIAG_ENABLE_STATIC_SEED )
   /* Last seed is repeated if it was already sent to tester */
   if (securitySeedResponse != kSeedAlreadyRequested)
#endif
   {
#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
      /* Extract requested security level from DiagBuffer */
      reqSecLvl = DiagBuffer[kDiagFmtSubparam];

      if (reqSecLvl != kDiagSecLevelFlash)
      {
#  error "TODO_CUSTOMER: Implement SecAccess level specific seed handling"
      }
      else /* reqSecLvl == kDiagSecLevelFlash */
#endif
      {
#if defined( SEC_ENABLE_SEED_KEY_ENTROPY_POOL ) && \
    defined( SEC_ENABLE_SEED_KEY_EXPLICIT_ENTROPY )
         /* Ensure that seed has been initialized */
         while (secEntropyPool.fillLevel < SEC_ENTROPY_POOL_SIZE)
         {
            (void)ApplFblSecuritySeedInit();
         }
#endif /* SEC_ENABLE_SEED_KEY_ENTROPY_POOL && SEC_ENABLE_SEED_KEY_EXPLICIT_ENTROPY */

         /* Generate seed */
         if (SECM_OK != SecM_GenerateSeed(&seed))
         {
            retVal = kFblFailed;
         }
      }
   }

#if defined( FBL_ENABLE_SEED_KEY_MODULE )
   /* Write seed value into DiagBuffer */
   if (kFblOk == retVal)
   {
# if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
      if (reqSecLvl != kDiagSecLevelFlash)
      {
#   error "TODO_CUSTOMER: Copy SecAccess level specific seed to DiagBuffer"
      }
      else /* reqSecLvl == kDiagSecLevelFlash */
# endif
      {
         /* Copy seed to DiagBuffer */
#if defined( SEC_ENABLE_SEED_KEY_ENTROPY_POOL ) && \
    defined( SEC_ENABLE_SEED_KEY_EXPLICIT_ENTROPY )
         /* PRQA S 0314 1 */ /* MD_FblKbApiOem_0314 */
         (void)MEMCPY(&DiagBuffer[kDiagFmtSeedKeyStart], (const void *)secSeedData, seedLength);
#else
         /* PRQA S 0314 1 */ /* MD_FblKbApiOem_0314 */
         (void)MEMCPY(&DiagBuffer[kDiagFmtSeedKeyStart], (const void *)seed, seedLength);
#endif /* SEC_ENABLE_SEED_KEY_ENTROPY_POOL && SEC_ENABLE_SEED_KEY_EXPLICIT_ENTROPY */
      }
# if defined( FBL_DIAG_ENABLE_STATIC_SEED )
      /* Set seed status to seed requested */
      securitySeedResponse = kSeedAlreadyRequested;
# endif
   }
#else
   /* Fill dummy seed */
   for (i = kDiagFmtSeedKeyStart; i < (kDiagFmtSeedKeyStart + seedLength); i++)
   {
      DiagBuffer[i] = i;
   }
#endif

   return retVal;
} /* PRQA S 6010, 6030, 6080 */ /* MD_MSR_STPTH, MD_MSR_STCYC, MD_MSR_STMIF */

/***********************************************************************************************************************
 *  ApplFblSecurityKey
 **********************************************************************************************************************/
/*! \brief       This function is called when the security key has been received from tester
 *  \return      Status of key verification
 **********************************************************************************************************************/
vuint8 ApplFblSecurityKey( void )
{
   vuint8 result;
#if defined( FBL_ENABLE_SECMOD_FORD )
#else
   SecM_LengthType keyLength;
#endif /* FBL_ENABLE_SECMOD_FORD */
#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
   vuint8 reqSecLvl;
#endif /* FBL_ENABLE_SEC_ADDITIONAL_LEVELS */

#if defined( FBL_ENABLE_SECMOD_FORD )
   /* Seed key SHA1 */
   SecM_KeyType securityKey;
   SecM_ComputeKeySymParamType seedKeyContext;
   vuint8 securityBytes[kSecSecretKeyLength];
   const vuint8 securityBytesZero[kSecSecretKeyLength] = { 0u };
#else
   SecM_KeyType key;
#endif /* FBL_ENABLE_SECMOD_FORD */

   /* Initialize variables */
   result = kFblFailed;

#if defined( FBL_ENABLE_SECMOD_FORD )
#else
   /* Note: Supported security levels don't have to be checked here; this is already performed by fbl_diag */
   /* Set key length according to requested security level */
   keyLength = (SecM_LengthType)GetRequestedKeyLength();
#endif /* FBL_ENABLE_SECMOD_FORD */

#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
   /* Extract requested security level from DiagBuffer */
   reqSecLvl = (vuint8)(DiagBuffer[kDiagFmtSubparam] - 1u);

   if (reqSecLvl != kDiagSecLevelFlash)
   {
#  error "TODO_CUSTOMER: Implement SecAccess level specific key handling"
   }
   else /* reqSecLvl == kDiagSecLevelFlash */
#endif /* FBL_ENABLE_SEC_ADDITIONAL_LEVELS */
   {
#if defined( FBL_ENABLE_SECMOD_FORD )
      /* Get secret key from user callback */
      ApplFblReadSecurityBytes(securityBytes, kSecSecretKeyLength);

      /* Initialize seed/key context */
      seedKeyContext.secretKey.data = securityBytes;
      seedKeyContext.secretKey.size = kSecSecretKeyLength;
      seedKeyContext.common.workspace.size = 0u;
      seedKeyContext.common.wdTriggerFct   = (FL_WDTriggerFctType)FblRealTimeSupport; /* PRQA S 0313 */ /* MD_FblKbApiOem_0313 */

      /* Set key data */
      securityKey.data    = &DiagBuffer[kDiagFmtSeedKeyStart];
      securityKey.context = &seedKeyContext; /* PRQA S 0315 */ /* MD_FblKbApiOem_0315 */

      /* Check key from tester using saved seed value */
      if (SecM_CompareKey(securityKey, seed) == SECM_OK)
      {
         /* Valid key valid received, unlock ECU */
         result = kFblOk;
      }

      (void)MEMCPY(securityBytes, securityBytesZero, sizeof(securityBytes));
#else
      /* Check key from tester */
      (void)MEMCPY(key, &DiagBuffer[kDiagFmtSeedKeyStart], keyLength);
      if (SECM_OK == SecM_CompareKey(key, seed))
      {
         /* Key bytes are accepted */
         result = kFblOk;
      }
#endif /* FBL_ENABLE_SECMOD_FORD */
   }

   return result;
}

#if ( SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC )
/***********************************************************************************************************************
 *  ApplFblReadBootloaderROM
 **********************************************************************************************************************/
/*! \brief       This function copies a given amount of bytes from the bootloader flash memory.
 *               The function FblReadProm couldn't be used because the FBL area isn't part of the Flash Block table
 *  \param[in]   address Memory address to read out
 *  \param[out]  buffer Target buffer
 *  \param[in]   length Number of bytes to read
 *  \return      Number of actually copied bytes
 **********************************************************************************************************************/
static SecM_SizeType ApplFblReadBootloaderROM( SecM_AddrType address, SecM_RamDataType buffer, SecM_SizeType length )
{
   SecM_SizeType validReadLength = 0;

   if(IO_E_OK == FlashDriver_RReadSync(buffer, length, address))
   {
      validReadLength = length;
   }

   return validReadLength;
}

# if defined( FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING )
/***********************************************************************************************************************
 *  ApplFblTokenRevertKey
 **********************************************************************************************************************/
/*! \brief       This function is called after the token was validated and key switch was successful
 *                to add additional post steps for token mode 0
 *               (Revert to production key)
 **********************************************************************************************************************/
void ApplFblTokenRevertKey( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf, vuint16 tokenLength )
{
#  if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   (void)tokenBuf;
   (void)tokenLength;
#  endif
}

/***********************************************************************************************************************
 *  ApplFblTokenUseDevPermKey
 **********************************************************************************************************************/
/*! \brief       This function is called after the token was validated and key switch was successful
 *                to add additional post steps for token mode 1.
 *               (Use development key until otherwise told)
 **********************************************************************************************************************/
void ApplFblTokenUseDevPermKey( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf, vuint16 tokenLength )
{
#  if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   (void)tokenBuf;
   (void)tokenLength;
#  endif
}

/***********************************************************************************************************************
 *  ApplFblTokenUseDevTempKey
 **********************************************************************************************************************/
/*! \brief       This function is called after the token was validated and key switch was successful
 *                to add additional post steps for token mode 2.
 *               (Use development key temporarily)
 **********************************************************************************************************************/
void ApplFblTokenUseDevTempKey( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf, vuint16 tokenLength )
{
#  if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   (void)tokenBuf;
   (void)tokenLength;
#  endif
}

/***********************************************************************************************************************
 *  ApplFblTokenUseDevDateKey
 **********************************************************************************************************************/
/*! \brief       This function is called after the token was validated to add additional post steps for token mode 3.
 *               (Use development key until date)
 *  \return      Possible return values:
 *               - tTokenHdlResult: result of this function
 **********************************************************************************************************************/
tTokenHdlResult ApplFblTokenUseDevDateKey( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf, vuint16 tokenLength )
{
#  if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   (void)tokenBuf;
   (void)tokenLength;
#  endif
   return kTokenHdlrInternalFailed;
}

/***********************************************************************************************************************
 *  ApplFblTokenUseDevIgniKey
 **********************************************************************************************************************/
/*! \brief       This function is called after the token was validated to add additional post steps for token mode 4.
 *               (Use development key until XXX ignition cycles)
 *  \return      Possible return values:
 *               - tTokenHdlResult: result of this function
 **********************************************************************************************************************/
tTokenHdlResult ApplFblTokenUseDevIgniKey( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf, vuint16 tokenLength )
{
#  if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   (void)tokenBuf;
   (void)tokenLength;
#  endif
   return kTokenHdlrInternalFailed;
}

/***********************************************************************************************************************
 *  ApplFblTokenProgKey
 **********************************************************************************************************************/
/*! \brief       This function is called after the token was validated and key switch was successful and key reprogramming was successful
 *                to add additional post steps for token mode 5.
 *               (Modify public key)
 **********************************************************************************************************************/
void ApplFblTokenProgKey( const V_MEMRAM1 vuint8 V_MEMRAM2 V_MEMRAM3 * tokenBuf, vuint16 tokenLength )
{
#  if defined( V_ENABLE_USE_DUMMY_STATEMENT )
   (void)tokenBuf;
   (void)tokenLength;
#  endif
}
# endif /* FBL_ENABLE_TOKEN_DOWNLOAD_HANDLING */
#endif /* SEC_SECURITY_CLASS_VERIFY == SEC_CLASS_CCC */

#if defined( FBL_ENABLE_SEC_ADDITIONAL_LEVELS )
/***********************************************************************************************************************
 *  ApplFblGetSecLvlSupport
 **********************************************************************************************************************/
/*! \brief       This function is called to check if the security level is supported or not
 *  \detail      This function will only be called with allowed security levels. There is no need to check whether the
 *               level is generally supported or not. This function can be used to restrict the amount of allowed
 *               security levels by implementation.
 *  \return      Status of level verification (kFblOk/kFblFailed)
 **********************************************************************************************************************/
tFblResult ApplFblGetSecLvlSupport( vuint8 secLevel )
{
   return kFblOk;
}
#endif /* FBL_ENABLE_SEC_ADDITIONAL_LEVELS */

#if defined( FBL_ENABLE_DEBUG_STATUS )
/***********************************************************************************************************************
 *  ApplFblInitErrStatus
 **********************************************************************************************************************/
/*! \brief       Initialize error status information.
 **********************************************************************************************************************/
void ApplFblInitErrStatus( void )
{
   errStatFlashDrvVersion[0u] = 0u;
   errStatFlashDrvVersion[1u] = 0u;
   errStatFlashDrvVersion[2u] = 0u;
   errStatFlashDrvErrorCode = 0u;
   errStatErrorCode = 0u;
   errStatFblStates = 0u;
   errStatLastServiceId = 0u;
}
#endif

/***********************************************************************************************************************
 *  MISRA DEVIATIONS
 **********************************************************************************************************************/

/* module specific MISRA deviations:

   MD_FblApDi_3218:
      Reason: The local data of this module is kept at a central location for a better overview and maintenance.
      Risk: Scope is larger than required (whole file instead of one function). Some other function could access
            the variable.
      Prevention: Restrict the functionality in this module to the intended purpose. Don't add functions which shall not
                  be able to access the local data.

   MD_FblApDi_3684:
      Reason: The unspecific declaration has been used to ease the manual configuration of the driver. Entries can
              be added to or removed from the configuration structure without having to adapt kNrOfDids afterwards
              (the value will be calculated automatically).
      Risk: No risk.
      Prevention: No prevention required.

   MD_FblKbApi_2889:
      Reason:     Multiple return paths are used to reduce code complexity, increase readability and reducing nesting level.
      Risk:       Some operations intended to conclude the function (e.g. states cleaning) can be unintentionally jumped.
      Prevention: Code inspection and runtime tests.

   MD_FblKbApi_3201:
      Reason: Configuration or platform specific dependent unreachable code.
      Risk: Incorrect behavior depend on settings.
      Prevention: No prevention required.

   MD_FblKbApi_3206:
      Reason:     Function is part of the bootloader API and the modification or not of the parameter is dependent on
                  configuration and/or platform.
      Risk:       No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApi_3218_FileScopeStatic:
      Reason: Configuration constants/tables are kept at a central location for a better overview and maintenance.
      Risk: Unintended use of object in wrong scope.
      Prevention: Architectural pattern supports prevention of incorrect use of objects in wrong context.
                  Code inspection focus on correct use of objects.

   MD_FblKbApi_3325:
      Reason: This control expression is always true or false depend on configuration aspect and used platform specific
              implementation.
      Risk: Incorrect behavior depend on settings.
      Prevention: No prevention required.

   MD_FblKbApi_3353:
      Reason: Variable is set in an other function via call-by-reference.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApi_3673:
      Reason: Function is part of the bootloader API which provides the possibility to influence the bootloader behavior
              by modifying the output parameters. The provided default implementation of the function doesn't
              necessarily make use of all available parameters.
      Risk: The parameter value might be changed unintentionally, thus causing malfunction in the calling instance.
      Prevention: Provide detailed information about the API and its usage in the user documentation.


   MD_FblKbApiOem_0290:
      Reason: Deviation is caused by shift operation which is required for efficient coding.
      Risk: Operation might not return the intended value.
      Prevention: The correct functionality has been assured for the specific use case.

   MD_FblKbApiOem_0306:
      Reason: Address conversion between integer values and pointers is required to allow for hardware independent
              configuration and address range checks.
      Risk: The size of integer required to hold the result of a pointer cast is implementation-defined.
      Prevention: The size of the respective integer data type which holds the address value is adapted on a hardware
                  specific basis.

   MD_FblKbApiOem_0313:
      Reason: Security module expects a watchdog handler with return type 'void'. The usage of a wrapper function is
              avoided due to higher voted requirements for minimized stack and runtime usage applied on the code.
      Risk: Potentially undefined behavior of the used compiler which usually leads to a warning or error during compilation.
      Prevention: The respective functionality is part of integration testing and will hence be verified before delivery.

   MD_FblKbApiOem_0314:
      Reason:     Type conversion to void * is necessary to use the standard MEMCPY API
      Risk:       No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApiOem_0315:
      Reason:     The implicit conversion from a pointer to object type to a pointer to void is used in order to pass
                  values between two types that have a known alignement and the cast is, thus, safe.
      Risk:       No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApiOem_0781:
      Reason: The variable is being used as a structure/union member as well as being a label, tag or ordinary
              identifier. This way it is more clear to the reader which purpose the variable has.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApiOem_2741_4558:
      Reason: Assertion macros have to be disabled in production code and are used only for development.
      Risk: Assertion code may be enabled in production code unintentionally. If a assertion condition is unexpectedly
            false, the code is active. A problem may occur if the Macro is additionally changed from single statement
            to multiple statement.
      Prevention: Macro is not allowed to be changed without review. Development code is automatically disabled via
                  configuration of project state "Production".

   MD_FblKbApiOem_2880_UnreachableCode:
      Reason: A code section can be executed only based on some static compile time configurations.
      Risk: A code section is never executed independently from the compiling configuration.
      Prevention: Code inspection and test of the different variants in the component test.

   MD_FblKbApiOem_ConstValue:
      Reason: Code is shared between different configurations. In other configurations,
              the result of the comparison/logical operation is not invariant.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApiOem_2987:
      Reason: The function may have no side effect in the tested configuration but additional functions can
              be added either from the HW-layer during the KB process or by the customer during integration.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApiOem_3425:
      Reason: The WrapNv call uses the ternary operator to remap the return value of IO_E_OK to kFblOk. As both of
              them are defined to the value zero the remapping has no side affects.
      Risk: No identifiable risk.
      Prevention: No prevention required.

   MD_FblKbApiOem_4342_4521_ConfigurationEnumLengthCast:
      Reason: The last element of an enum is used to determine the number of entries. This is required for
              configurable code. The enum must have more than one entry - therefore it is always possible to
              determine the last (length - 1) one.
      Risk: No identifiable risk.
      Prevention: No prevention required.


*/

/***********************************************************************************************************************
 *  END OF FILE: FBL_APDI.C
 **********************************************************************************************************************/

