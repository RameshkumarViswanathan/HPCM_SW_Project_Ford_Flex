/* Kernbauer Version: 1.12 Konfiguration: FBL Erzeugungsgangnummer: 1 */

/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         Application dependent routines
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
 *  05.00.00   2019-06-03  visrie  ESCAN00103307    Align Ford SLP7 (derived from 03.06.01) and JLR SLP2 (derived from
 *                                                  04.00.00)
 *  05.01.00   2020-06-08  visjdn  FBL-1982         Support of the new FblMio
 *  05.02.00   2020-09-21  visrie  FBL-2129         No changes
 *  05.03.00   2021-09-13  visjdn  FBL-2859         MISRA 2012 environment creation
 *  05.03.01   2022-06-30  visjdn  ESCAN00110613    Compiler error: function "ApplCanWakeUp" has no prototype
 *                                 ESCAN00110614    No changes
 *                                 ESCAN00111531    Compiler error: Missing function ApplFblStateTask
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
/***********************************************************************************************************************
 *  --------------------------------------------------------------------------------------------------------------------
 *  REVISION HISTORY (KbFbl_apHW.h, Brs)
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  01.00.00   2018-02-26  viscsz                   Initial version
 *  01.00.01   2018-03-08  viscsz  ESCAN00102984    No changes
 *  01.00.02   2019-04-16  viscsz  ESCAN00102985    No changes
 *  02.00.00   2020-04-08  visrie  FBL-1016         No changes
 *  02.01.00   2020-07-13  visjdn  ESCAN00106756    No changes
 *  02.01.01   2022-10-20  visjns  ESCAN00112300    No changes
 *  02.02.00   2022-12-13  visjdn  FBL-6267         No changes
 *  02.02.01   2023-01-09  vishor  ESCAN00113543    No changes
 **********************************************************************************************************************/

#ifndef FBL_AP_H
#define FBL_AP_H

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

/* Common data structures */
#include "comdat.h"

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

/* ---  Module Version --- */
/* ##V_CFG_MANAGEMENT ##CQProject : FblKbApi_Frame_Ford CQComponent : Implementation */
#define FBLKBAPI_FRAME_FORD_VERSION                0x0503u
#define FBLKBAPI_FRAME_FORD_RELEASE_VERSION        0x01u

/* ##V_CFG_MANAGEMENT ##CQProject : FblKbApi CQComponent : Implementation */
#define FBLKBAPI_VERSION                           0x0211u
#define FBLKBAPI_RELEASE_VERSION                   0x01u

/* ##V_CFG_MANAGEMENT ##CQProject : FblKbApi_Ford CQComponent : Implementation */
#define FBLKBAPI_FORD_VERSION                      0x0903u
#define FBLKBAPI_FORD_RELEASE_VERSION              0x02u

/* ##V_CFG_MANAGEMENT ##CQProject : FblKbApi_Brs CQComponent : Implementation */
#define FBLKBAPI_BRS_VERSION          0x0202u
#define FBLKBAPI_BRS_RELEASE_VERSION  0x01u


/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/


#define APPL_FBL_RESET()                  ApplFblReset()


/* Multiple nodes support for Vector CAN driver */
#if defined( FBL_ENABLE_MULTIPLE_NODES )
# define CAN_TP_TXID             CanTxId[fblEcuHandle]
# define CAN_TP_RXID             CanRxId[fblEcuHandle]
#endif /* FBL_ENABLE_MULTIPLE_NODES */

/***********************************************************************************************************************
 *  TYPEDEFS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  PROTOTYPES
 **********************************************************************************************************************/

void ApplFblInit( void );
void ApplFblStartup( vuint8 initposition );
void ApplTrcvrNormalMode( void );
void ApplFblSetVfp( void );
void ApplFblResetVfp( void );
void ApplFblReset( void );
#if defined( FBL_ENABLE_APPL_TASK ) || \
    defined( FBL_ENABLE_APPL_TIMER_TASK )
void ApplFblTask( void );
#endif /* FBL_ENABLE_APPL_TASK || FBL_ENABLE_APPL_TIMER_TASK */
#if defined( FBL_ENABLE_APPL_TASK ) ||\
    defined( FBL_ENABLE_APPL_STATE_TASK )
void ApplFblStateTask( void );
#endif /* FBL_ENABLE_APPL_TASK || FBL_ENABLE_APPL_STATE_TASK */
#if defined( FBL_ENABLE_ASSERTION )
void ApplFblFatalError( FBL_DECL_ASSERT_EXTENDED_INFO(vuint8 errorCode) );
#endif
void ApplCanWakeUp( CAN_CHANNEL_CANTYPE_ONLY );

#if defined( FBL_ENABLE_DATA_PROCESSING )
tFblResult ApplFblInitDataProcessing( tProcParam * procParam );
tFblResult ApplFblDataProcessing( tProcParam * procParam );
tFblResult ApplFblDeinitDataProcessing( tProcParam * procParam );
#endif /* FBL_ENABLE_DATA_PROCESSING */

#if defined( FBL_ENABLE_MULTIPLE_NODES ) || \
    defined( FBL_ENABLE_CAN_CONFIGURATION )
#if defined( FBL_ENABLE_MULTIPLE_NODES ) || \
    defined( FBL_ENABLE_CAN_CONFIGURATION) || \
    defined( FBL_CW_ENABLE_MULTIPLE_NODES )
void ApplFblCanParamInit( void );
#endif
#endif
void ApplFblCanBusOff( void );

#if defined( FBL_ENABLE_SLEEPMODE )
void ApplFblCwBusSleepMode( void );
#endif
void ApplTrcvrSleepMode( void );
vuint8 ApplFblCwWakeUp( void );

#if defined( FBL_MIO_ENABLE_HOOKS )
void ApplFblPreMemDriver( vuint8 device, vuint8 function );
#endif /* FBL_MIO_ENABLE_HOOKS */
#if defined( FBL_MIO_ENABLE_HOOKS )
void ApplFblPostMemDriver( vuint8 device, vuint8 function );
#endif /* FBL_MIO_ENABLE_HOOKS */

#if defined( FBL_DIAG_ENABLE_SERVICE_PREHANDLER )
tFblResult ApplFblCheckConditions( vuint8 * pbDiagData, tTpDataType diagReqDataLen );
#endif /* FBL_DIAG_ENABLE_SERVICE_PREHANDLER */
#if defined( FBL_DIAG_ENABLE_CHECK_PROGRAMMING_PRECONDITIONS )
tFblResult ApplFblCheckProgPreconditions( vuint8 * pbDiagData, tTpDataType diagReqDataLen );
#endif /* FBL_DIAG_ENABLE_CHECK_PROGRAMMING_PRECONDITIONS */





/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

V_MEMROM0 extern V_MEMROM1 tFblCommonData V_MEMROM2 fblCommonData;

#if defined( FBL_ENABLE_MULTIPLE_NODES )
V_MEMRAM0 extern V_MEMRAM1 vuint8  V_MEMRAM2 fblEcuHandle;
V_MEMROM0 extern V_MEMROM1 vuint16 V_MEMROM2 CanTxId[];
V_MEMROM0 extern V_MEMROM1 vuint16 V_MEMROM2 CanRxId[];
V_MEMRAM0 extern V_MEMRAM1 CanTransmitHandle V_MEMRAM2 fblTpTxHandle;
#endif /* FBL_ENABLE_MULTIPLE_NODES */


#endif /* __FBL_AP_H__ */

/***********************************************************************************************************************
 *  END OF FILE: FBL_AP.C
 **********************************************************************************************************************/

