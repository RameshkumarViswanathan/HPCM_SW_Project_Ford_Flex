/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief         Main module of DemoAppl
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
 *  05.00.00   2019-10-10  vistmo  FBL-388          Adapt main function interface for vBaseEnv
 *  05.01.00   2019-11-14  visrcn  FBL-830          Add support for VTT use case
 *  05.01.01   2020-02-27  vistbe  ESCAN00105432    [DemoAppl] No diagnostic requests can be processed
 *  06.00.00   2020-04-08  visrie  FBL-1016         Support of EcuM functions, support of new FblSb interface
 *  06.01.00   2020-04-29  vistmo  FBL-1584         Adding OTA startup support
 *  06.01.01   2020-10-28  visrcn  ESCAN00107190    Compiler error: Wrong definition for FblMain function
 *  06.01.02   2020-11-26  visrcn  ESCAN00107979    Tester connection is not shutdown after StayInBoot check
 *  06.02.00   2022-04-08  vishor  FBL-4852         Add support for new swap API
 *  06.03.00   2022-05-06  vishor  FBL-5148         Encapsulate call of FblInterruptDisable
 *  06.04.00   2022-07-06  vismix  FBL-5235         Use Pre Timer/Wd init as standard
 *  06.05.00   2022-11-30  visrie  FBL-6065         Encapsulate FblMain declaration
 *  06.05.01   2023-04-06  vishor  ESCAN00113532    [DemoAppl only] FblCwClrCheckForStartMsg is not cleared if Stay
 *                                                   in Boot is enabled - DemoAppl is not responding
 *  06.06.00   2023-05-24  vismix  FBL-7036         P2 timeout in tester after the programming session request
 **********************************************************************************************************************/

#define FBLMAIN_SOURCE

/***********************************************************************************************************************
 *  INCLUDES
 **********************************************************************************************************************/

#include "fbl_inc.h"

#include "EcuM.h"

/***********************************************************************************************************************
 *  VERSION
 **********************************************************************************************************************/

#if ( FBL_MAIN_VERSION != 0x0606u ) || \
    ( FBL_MAIN_RELEASE_VERSION != 0x00u )
# error "Error in fbl_main.c: Source and header file are inconsistent!"
#endif

#if ( FBL_MAIN_VERSION != _FBL_MAIN_VERSION ) || \
    ( FBL_MAIN_RELEASE_VERSION != _FBL_MAIN_RELEASE_VERSION)
# error "Error in fbl_main.c: Source and v_ver.h are inconsistent!"
#endif

#if defined( _MICROSOFT_C_VTT_ )
# define FBL_MAIN_ENABLE_VTT_USECASE
#endif /* _MICROSOFT_C_VTT_ */

/***********************************************************************************************************************
 *  DEFINES
 **********************************************************************************************************************/

#if !defined( FBL_BM_HEADER_ADDRESS )
# define FBL_BM_HEADER_ADDRESS &FblBmHdrHeader
#endif /* FBL_BM_HEADER_ADDRESS */

/* FblStart feature */
#if defined( FBL_ENABLE_FBL_START )
# if !defined( FblStartReset )
#  define FblStartReset() ApplFblReset()
# endif
#endif /* FBL_ENABLE_FBL_START */

# if defined( FBL_ENABLE_STAY_IN_BOOT )
#  if !defined( kFblMainStartMessageDelay )
#   define kFblMainStartMessageDelay 20u      /**< Start message delay default value: 20ms */
#  endif
#  define kFblMainStartMessageReceived 0u     /**< Indicates that a startup message has been received */
#  define kFblMainStartMessageTimeout  1u     /**< No startup message has been received before timeout */
# endif /* FBL_ENABLE_STAY_IN_BOOT */

/* Main state handling */
#define FblMainSetStartFromReset()                 SetFblMainState( kFblMainStateStartFromReset )
#define FblMainSetStartFromAppl()                  SetFblMainState( kFblMainStateStartFromAppl )
#define FblMainSetStartFromXcp()                   SetFblMainState( kFblMainStateStartFromXcp )
#define FblMainSetStartFromOta()                   SetFblMainState( kFblMainStateStartFromOta )
#define FblMainSetApplicationValid()               SetFblMainState( kFblMainStateApplicationValid )
#define FblMainSetWaitStartMessage()   {                                               \
                                       SetFblMainState( kFblMainStateWaitStartMessage );    \
                                       startMessageDelay = kFblMainStartMessageDelay + 1u;   \
                                       }
#define FblMainSetStartMessageReceived()           SetFblMainState( kFblMainStateStartMessageReceived )

#define FblMainClrStartFromReset()                 ClrFblMainState( kFblMainStateStartFromReset )
#define FblMainClrStartFromAppl()                  ClrFblMainState( kFblMainStateStartFromAppl )
#define FblMainClrStartFromXcp()                   ClrFblMainState( kFblMainStateStartFromXcp )
#define FblMainClrStartFromOta()                   ClrFblMainState( kFblMainStateStartFromOta )
#define FblMainClrApplicationValid()               ClrFblMainState( kFblMainStateApplicationValid )
#define FblMainClrWaitStartMessage()               ClrFblMainState( kFblMainStateWaitStartMessage )
#define FblMainClrStartMessageReceived()           ClrFblMainState( kFblMainStateStartMessageReceived )

/***********************************************************************************************************************
 *  GLOBAL DATA
 **********************************************************************************************************************/

# define FBLMAIN_START_SEC_VAR
# include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */
V_MEMRAM0 V_MEMRAM1 vuint8 V_MEMRAM2 fblStartReset;   /**< Controls wether a FblStart call or a reset is done. */

/***********************************************************************************************************************
 *  LOCAL DATA
 **********************************************************************************************************************/

V_MEMRAM0 V_MEMRAM1_NEAR tFblStateBitmap V_MEMRAM2_NEAR fblMainStates[FBL_STATE_INDEX(kFblMainNumberOfStates - 1u) + 1u];

#define FBLMAIN_STOP_SEC_VAR
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  LOCAL FUNCTION PROTOTYPES
 **********************************************************************************************************************/

#define FBLMAIN_START_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

void FblInitPowerOn( void );
void FblInit( vuint8 initposition );

void FblDeinit( void );

void FblRepeat( void );

/***********************************************************************************************************************
 *  LOCAL FUNCTIONS
 **********************************************************************************************************************/


/***********************************************************************************************************************
 *  FblInitPowerOn
 **********************************************************************************************************************/
/*! \brief       Pre-initialization of Bootloader variables
 *  \details     Initializes all variables needed to control the Bootloader
 **********************************************************************************************************************/
 void FblInitPowerOn(void) /* PRQA S 3006 */ /* MD_FblMain_3006 */
{
   vuintx i;

#if defined( FBL_ENABLE_INTERRUPT_DISABLE_AT_POWER_ON )
   /* Disable global interrupt handling */
   FblInterruptDisable();  /* PRQA S 1006 */ /* MD_FblMain_1006 */
#endif /* FBL_ENABLE_INTERRUPT_DISABLE_AT_POWER_ON */


   /* Initialization of main variables */
   for (i = 0u; i < (sizeof(fblMainStates) / sizeof(fblMainStates[0])); i++)
   {
      fblMainStates[i] = (tFblStateBitmap)0x00u;
   }

   /* Power on initialization of core modules */
//   ClrWDInit();

   FblDiagInitPowerOn();

   MemDriver_InitPowerOn();
   /* Initialize intermediate access layer for LBT */
   FblLbtInitPowerOn();

#if defined( FBL_ENABLE_HARDWARE_SWAP )
   /* Initialize hardware swap module */
   FblSwapInitPowerOn();
#endif

# if defined( FBL_ENABLE_SECMOD_VECTOR )
   (void)SecM_InitPowerOn(V_NULL);
# endif /* FBL_ENABLE_SECMOD_VECTOR */

   fblStartReset = kFblMainRegularReset;
}

/***********************************************************************************************************************
 *  FblInit
 **********************************************************************************************************************/
/*! \brief       Do initializations after reset or start out of application
 **********************************************************************************************************************/
/* PRQA S 6050 1 */ /* MD_MSR_STCAL */
void FblInit( vuint8 initposition )
{
   /* User initialization before core initializations */
   ApplFblStartup(kFblInitPreCallback | initposition); /* PRQA S 2986 */ /* MD_FblMain_2986 */

   switch (initposition)
   {
      /* Initialization steps the application validity is checked */
      case kFblInitBaseInitialization:
      {
         /* Initialize watchdog handling */
         FblInitWatchdog();
         /* Initialize Timer */
         FblTimerInit();
         break;
      }

      /* Initialization steps after the application validity is checked */
      case kFblInitFblCommunication:
      {

         EcuM_StartupTwo();

         /* Initialize diagnostic module */
         FblDiagInit();

#if defined( FBLBM_ENABLE_SECURE_BOOT )
         /* Initialize SecureBoot functionality */
         FblSb_Init();
#endif /* FBLBM_ENABLE_SECURE_BOOT */
         break;
      }

      /* Initialization steps executed after the Bootloader is invoked */
      case kFblInitFblFinalize:
      {

         /* Diagnostic layer - init steps after NV-memory init */
         FblDiagPostInit();
         break;
      }

      default:
      {
         assertFblInternal(0u, kFblSysAssertParameterOutOfRange); /* PRQA S 2741,4558 */ /* MD_FblMain_2741_4558 */
         break;
      }
   }

   /* User initialization after core initialization */
   ApplFblStartup(kFblInitPostCallback | initposition);
}

/***********************************************************************************************************************
 *  FblDeinit
 **********************************************************************************************************************/
/*! \brief       Do necessary deinitializations
 **********************************************************************************************************************/
void FblDeinit( void )
{
   /* Deinitialize communication wrapper */
# if( FBL_CW_API_REFERENCE_VERSION_MAJOR == 0x02u )
   FblCw_Deinit();
# else
   FblCwDeinit();
# endif /* FBL_CW_API_REFERENCE_VERSION_MAJOR == 0x02u */

#if defined( FBL_WATCHDOG_ON )
   /* Synchronize watchdog before reset */
   ApplFblWDLong();
#endif /* FBL_WATCHDOG_ON */
   FblTimerStopp();  /* PRQA S 0303 */ /* MD_FBL_0303_MemoryMappedRegAccess */
}


/***********************************************************************************************************************
 *  FblRepeat
 **********************************************************************************************************************/
/*! \brief       This function contains the main loop of the FBL.
 *  \details     In this loop, the Bus is polled and the watchdog is triggered.
 *               This function is used by the boot procedure for the start delay and for the real operation.
 *  \pre         Hardware has to be initialized before.
 *  \return      The return value is used by the boot procedure to determine whether to stay in FBL or start the appl.
 **********************************************************************************************************************/
void FblRepeat( void )
{
   /* This loop will be left only for reset */
   if (!FblMainGetFblShutdownRequest())   /*while (!FblMainGetFblShutdownRequest())*/
   {
      /* Check if 1ms hardware timer expired */
      if ((FblLookForWatchdog() & FBL_TM_TRIGGERED) == FBL_TM_TRIGGERED)
      {
         /* Run 1ms based tasks */
         FblDiagTimerTask();
#if defined( FBL_ENABLE_APPL_TIMER_TASK )
         /* Call cyclic function of fbl application module (if configured) */
         // ApplFblTask();
#endif /* FBL_ENABLE_APPL_TIMER_TASK */          
      }     
         /* Check if the FBL or FD (erase/write) is active */
         // if (0u != FblCwIsTimerTaskAllowed())
         // {
         //    /* the FBL is active, this task can now be called e.g. from the FLASH */
         //    FblCwTimerTask();
         // }
      /* Run non-timer relevant operations */
      // FblDiagTimerTask();
      // ApplFblTask();
      FblDiagStateTask();
      FblCwIdleTask();
      
# if defined( FBL_MEM_ENABLE_PIPELINING )
      if (FblMemTaskIsPending())
      {
         FblMemTask();
      }
# endif /* FBL_MEM_ENABLE_PIPELINING */

#if defined( FBL_ENABLE_APPL_STATE_TASK )
      /* Call background function of fbl application module (if configured) */
      ApplFblStateTask();
#endif /* FBL_ENABLE_APPL_STATE_TASK */

   }
}

/***********************************************************************************************************************
 *  GLOBAL FUNCTIONS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  FblMain
 **********************************************************************************************************************/
/*! \brief       Wrapper function to call the actual FblMainInternal function
 **********************************************************************************************************************/
#if !defined( FBLBM_INSTANCE_BOOTMANAGER )
void V_API_NEAR FblMain( void ) /* PRQA S 5209 */ /* MD_FblMain_5209 */
{
  FblMainInternal();
}
#endif /* !FBLBM_INSTANCE_BOOTMANAGER */

/***********************************************************************************************************************
 *  FblMainInternal
 **********************************************************************************************************************/
/*! \brief       Main function of the Bootloader.
 *  \details     The FBL initializes the hardware and waits for a download request.
 **********************************************************************************************************************/
void V_API_NEAR FblMainInternal( void ) /* PRQA S 5209 */ /* MD_FblMain_5209 */
{
   /* Initialize variables */
   FblInitPowerOn();

   /* Base initialization step - valid for both application and Bootloader */
   FblInit(kFblInitBaseInitialization);


   /* Bootloader initialization step 1 - hardware and basic communication */
   FblInit(kFblInitFblCommunication);

   /* Start message is not polled for demo application */
   FblMainClrWaitStartMessage();
   /* Clear flag so received messages can be copied to diagnostic buffer */
   FblCwClrCheckForStartMsg();

   /* Bootloader initialization step 2 - full diagnostics initialization */
   FblInit(kFblInitFblFinalize);

   /* Bootloader execution */
   //FblRepeat();

   /* Deinitialize test application */
   //FblDeinit();

# if defined ( FBL_ENABLE_FBL_START )
   if (fblStartReset == kFblMainFblStartReset)
   {
#  if defined( FBL_MAIN_ENABLE_FBLSTART_PARAM )
      /* PRQA S 0306 1 */ /* MD_FblMain_FblHeader */
      CallFblStart((void*)&fblStartParameter, sizeof(fblStartParameter));
#  else
      /* PRQA S 0306 1 */ /* MD_FblMain_FblHeader */
      //CallFblStart(); /*TODO: TechM Commented for Appl Diag*/
#  endif /* FBL_MAIN_ENABLE_FBLSTART_PARAM */
   }
# endif /* FBL_ENABLE_FBL_START */

   /* Perform reset */
   //ApplFblReset();
}

#define FBLMAIN_STOP_SEC_CODE
#include "MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/***********************************************************************************************************************
 *  MISRA DEVIATIONS
 **********************************************************************************************************************/

/* Module specific MISRA deviations:

   MD_FBL_0303_MemoryMappedRegAccess:
      Reason:     Addressing memory mapped registers or other hardware specific feature requires casting a pointer type to
                  an integral type. This is a usual pattern for MCAL (Micro Controller Abstraction Layer) software.
      Risk:       Unintended read or write access into memory location.
      Prevention: Code inspection focus on correct access to expected memory location.

   MD_FblMain_1006:
      Reason:     Assembler code is used to deactivate interrupts and set context information.
      Risk:       The code is not portable for different compilers.
      Prevention: The assembler code provided by each FblHw module has to be tested.

   MD_FblMain_1514_FblHeader
      Reason:     MISRA: The object FblBmHeader is only referenced by function ..., in the translation unit where it is defined
                  This object is exported globally to other translation units
      Risk:       Name space pollution
      Prevention: No Prevention necessary

   MD_FblMain_2741_4558:
      Reason:     Assertion macros have to be disabled in production code and are used only for development.
      Risk:       Assertion code may be enabled in production code unintentionally. If a assertion condition is unexpectedly
                  false, the code is active. A problem may occur if the Macro is additionally changed from single statement
                  to multiple statement.
      Prevention: Macro is not allowed to be changed without review. Development code is automatically disabled via
                  configuration of project state "Production".

   MD_FblMain_2986:
      Reason:     This code is redundant but kept for clarity.
      Risk:       No risk.
      Prevention: No prevention necessary.

   MD_FblMain_3006:
      Reason:     Assembler code is used to deactivate interrupts and set context information.
      Risk:       The code is not portable for different compilers.
      Prevention: The assembler code provided by each FblHw module has to be tested.

   MD_FblMain_5209:
      Reason:     The Vector standard API for main function follows ANSI C typical definition of main function returning int.
      Risk:       No identifiable risk.
      Prevention: No prevention required.

   MD_FblMain_FblHeader:
      Reason:     A memory address is compared to a configured value. The configured value is interpreted as an integer.
      Risk:       The comparison may fail due to different data types.
      Prevention: If this check fails, the configuration checks done by assertions have to verified manually.

*/

/***********************************************************************************************************************
 *  END OF FILE: FBL_MAIN.C
 **********************************************************************************************************************/