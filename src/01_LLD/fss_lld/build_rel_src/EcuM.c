/**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *
 *                 This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                 Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                 All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  LICENSE
 *  -------------------------------------------------------------------------------------------------------------------
 *            Module: vBRS
 *           Program: FBL FORD
 *          Customer: 
 *       Expiry Date: Not restricted
 *  Ordered Derivat.: TC387
 *    License Scope : The usage is restricted to CBD2100753_D00
 *
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *              File: ..\Source\EcuM.c
 *   Generation Time: 2021-10-08 12:15:38
 *           Project: DemoBm - Version 1.0
 *          Delivery: CBD2100753_D00
 *      Tool Version: DaVinci Configurator  5.24.21
 *
 *
 *********************************************************************************************************************/

/**********************************************************************************************************************
*  EXAMPLE CODE ONLY
*  -------------------------------------------------------------------------------------------------------------------
*  This Example Code is only intended for illustrating an example of a possible BSW integration and BSW configuration.
*  The Example Code has not passed any quality control measures and may be incomplete. The Example Code is neither
*  intended nor qualified for use in series production. The Example Code as well as any of its modifications and/or
*  implementations must be tested with diligent care and must comply with all quality requirements which are necessary
*  according to the state of the art before their use.
*********************************************************************************************************************/

/**********************************************************************************************************************
  INCLUDES
**********************************************************************************************************************/
#include "EcuM.h"
#include "Compiler_Cfg.h"
#include "Os.h"
#include "Os_Cfg.h"
#include "Icu_17_TimerIp.h"
#include "Det.h"
#include "CryIf.h"
#include "Crypto_30_LibCv.h"
#include "Csm.h"
#include "Smu.h"
#include "Mcu.h"
#include "Fls_17_Dmu.h"
#include "Fee.h"
#include "WrapNv.h"
#include "Port.h"
#include "Spi.h"
#include "TLF35585.h"
#include "Eep.h"
#include "Eep_Interface.h"
#include "Testapp_EEPROM.h"
#include "Testapp_TLF35585.h"
#include "UCC5880.h"
#include "Testapp_Gatedriver.h"
#include "IoHwAb_Adc.h"
#include "Adc.h"
#include "Dma.h"
#include "Pwm3ph.h"
#include "Irq.h"
#include "IfxSrc_reg.h"
#include "Pwm_17_GtmCcu6.h"
#include "L2Sample_FS.h"
#include "Dsadc.h"
#include "PhC_Drv.h"
#include "Diag_Pid.h"
#include "CanIf.h"
#include "CanTp.h"
#include "Can.h"
#include "CryIf.h"
#include "Crypto_30_LibCv.h"
#include "Csm.h"
#include "fbl_inc.h"
#include "Det.h"
#include "PduR.h"
#include "Sec.h"
#include "WrapNv.h"
#include "appl_main.h"
#include "HwCan.h"
#include "Gpt.h"
/**********************************************************************************************************************
  PROTOTYPES OF LOCAL FUNCTIONS
**********************************************************************************************************************/
void EcuM_StartOS(AppModeType appMode);
void Lld_Init(void);
U32 dma_init_status = E_NOT_OK;

/**********************************************************************************************************************
  FUNCTION DEFINITIONS
**********************************************************************************************************************/
void EcuM_Init(void)
{
   /* Module: Lld / InitPhase */
  Lld_Init();
}

void Lld_Init(void)
{
  uint8 CurrentCoreId = GetCoreID();
  // BrsHwSoftwareResetECU();
  Mcu_Init(&Mcu_Config); 
  Mcu_InitClock(0);while (MCU_PLL_LOCKED != Mcu_GetPllStatus());Mcu_DistributePllClock();
  // Mcu_PerformReset();
  // BrsHwSoftwareResetECU();
/* Module: CanIf / InitPhase: INIT_MEMORY */
  CanIf_InitMemory();
  /* Module: CanTp / InitPhase: INIT_MEMORY */
  CanTp_InitMemory();
  /* Module: Can / InitPhase: INIT_MEMORY */
  Can_InitMemory();
  /* Module: CryIf / InitPhase: INIT_MEMORY */
  CryIf_InitMemory();
  /* Module: Crypto / InitPhase: INIT_MEMORY */
  Crypto_30_LibCv_InitMemory();
  /* Module: Csm / InitPhase: INIT_MEMORY */
  Csm_InitMemory();
  /* Module: Dcm / InitPhase: INIT_MEMORY */
  FblCw_InitMemory();
  /* Module: Det / InitPhase: INIT_MEMORY */
  Det_InitMemory();
  /* Module: PduR / InitPhase: INIT_MEMORY */
  PduR_InitMemory();
  /* Module: Det / InitPhase: INIT_ZERO */
  Det_Init(Det_Config_Ptr);
  /* Module: PduR / InitPhase: INIT_ONE */
  PduR_PreInit(PduR_Config_Ptr);
  
  Port_Init(&Port_Config); 

  Smu_Init(&Smu_Config);
  Fls_17_Dmu_Init(&Fls_17_Dmu_Config);
  Dma_Init(&Dma_Config);
  Dma_InitCheck(&Dma_Config);  
  Spi_Init(&Spi_Config);
  TLF35585_Init(&TLF35585_Config);
  HWIO_EEPROM_Init();
  GD_Init();  
  Dsadc_Init(&Dsadc_Config);
  Pwm_17_GtmCcu6_Init(&Pwm_17_GtmCcu6_Config);
  Pwm3ph_Init();  
  Pwm3ph_EnableIsrTrigger();
  IoHwAb_Adc_Init(&Adc_Config);
  IoHwAb_ADC_StartConversion(); 
  PhC_Init();
  EddyCurrent_Init();
  Icu_17_TimerIp_Init(&Icu_17_TimerIp_Config);
  IoHwAb_ICU_StartMeasurement();
  IrqDma_Init();
  IrqDsadc_Init();
  IrqGtm_Init();
  Part_Numbering_init(); // add not to optimize APIs
  IrqGpsrGroup_Init();
  Gpt_Init(&Gpt_Config);
  Hw_Gpt_Init();
  /* Insert your module above this line */
  Os_InitializeVectorTable();
  IrqAdc_Init();
  SRE_ValueUpdate();
  Rdc_Enable_Interrupt();
  Rdc_init ();
  FblMainInternal();
  HwIo_CAN_Init();
  /*start RTAOS Slave cores*/
  if(CurrentCoreId == (uint8)CORE_0)
  {
     EcuM_Prv_StartSlaveCores();
  }
    EcuM_Prv_flgIsModuleInitialised_b  = TRUE;
    AppInit_0();
    EcuM_StartOS(OSDEFAULTAPPMODE);
}

/*******************************************************************************
** Function Name	: EcuM_Init_Core1 (void)
** Parameter[in] 	: None
** Parameter[out] : None
** Return Value	  : None
** Description    : Core1 Init
*******************************************************************************/
void EcuM_Init_Core1(void)
{
   Os_InitializeVectorTable();
   AppInit_1();
   EcuM_StartOS(OSDEFAULTAPPMODE);
}

/*******************************************************************************
** Function Name	: EcuM_Init_Core2 (void)
** Parameter[in] 	: None
** Parameter[out] : None
** Return Value	  : None
** Description    : Core2 Init
*******************************************************************************/
void EcuM_Init_Core2(void)
{
   Os_InitializeVectorTable();
   AppInit_2();
   EcuM_StartOS(OSDEFAULTAPPMODE);
}

/*******************************************************************************
** Function Name	: EcuM_StartupTwo (void)
** Parameter[in] 	: None
** Parameter[out] : None
** Return Value	  : None
** Description    : Startup two
*******************************************************************************/
void EcuM_StartupTwo(void)
{
  /* Module: Can / InitPhase: INIT_TWO_DRV */
  Can_Init(Can_Config_Ptr);
  /* Module: Crypto / InitPhase: INIT_TWO_DRV */
  Crypto_30_LibCv_Init();
  /* Module: CanIf / InitPhase: INIT_TWO_IF */
  CanIf_Init(CanIf_Config_Ptr);
  /* Module: CryIf / InitPhase: INIT_TWO_IF */
  CryIf_Init();
  /* Module: PduR / InitPhase: INIT_TWO_COM */
  PduR_Init(PduR_Config_Ptr);
  /* Module: CanTp / InitPhase: INIT_TWO_TP */
  CanTp_Init(CanTp_Config_Ptr);
  /* Module: Csm / InitPhase: INIT_TWO_SYS */
  Csm_Init();
  /* Module: Smh / InitPhase: INIT_TWO_SYS */
  SecM_Init();
  /* Module: WrapNv / InitPhase: INIT_TWO_SYS */
  WrapNv_Init();
  /* Module: Dcm / InitPhase: INIT_THREE */
  FblCw_Init(FblCw_Config_Ptr);
}


/*******************************************************************************
** Function Name	: EcuM_StartOS(AppModeType appMode)
** Parameter[in] 	: None
** Parameter[out] : None
** Return Value	  : None
** Description    : 
*******************************************************************************/
void EcuM_StartOS(AppModeType appMode)
{

  /* Start OS must be called for each core */
  StartOS(appMode);
}

/*******************************************************************************
** Function Name	: EcuM_BswErrorHook(uint16 moduleId, uint8 errorId)
** Parameter[in] 	: None
** Parameter[out] : None
** Return Value	  : None
** Description    : 
*******************************************************************************/
void EcuM_BswErrorHook(uint16 moduleId, uint8 errorId)
{
#if defined (ECUM_STUB_BSWERRORHOOK_CALLOUT)
  BrsTestsuite_EcuM_BswErrorHook_Callout(moduleId, errorId);
#endif
}

/*******************************************************************************
** Function Name	: EcuM_CheckWakeup(EcuM_WakeupSourceType wakeupSource)
** Parameter[in] 	: None
** Parameter[out] : None
** Return Value	  : None
** Description    : 
*******************************************************************************/
void EcuM_CheckWakeup(EcuM_WakeupSourceType wakeupSource)
{
#if defined (ECUM_STUB_CHECKWAKEUP_CALLOUT)
  BrsTestsuite_EcuM_CheckWakeup_Callout(wakeupSource);
#endif
}

/*******************************************************************************
** Function Name	: EcuM_GeneratorCompatibilityError(uint16 moduleId, uint8 instanceId)
** Parameter[in] 	: None
** Parameter[out] : None
** Return Value	  : None
** Description    : 
*******************************************************************************/
void EcuM_GeneratorCompatibilityError(uint16 moduleId, uint8 instanceId)
{
#if defined (ECUM_STUB_GENERATORCOMPATIBILITYERROR_CALLOUT)
  BrsTestsuite_EcuM_GeneratorCompatibilityError_Callout(moduleId, instanceId);
#endif
}

void EcuM_SetWakeupEvent(EcuM_WakeupSourceType wakeupSource)
{
#if defined (ECUM_STUB_SETWAKEUPEVENT_CALLOUT)
  BrsTestsuite_EcuM_SetWakeupEvent_Callout(wakeupSource);
#endif
}

void EcuM_ValidationWakeupEvent(EcuM_WakeupSourceType wakeupSource)
{
#if defined (ECUM_STUB_VALIDATIONWAKEUPEVENT_CALLOUT)
  BrsTestsuite_EcuM_ValidationWakeupEvent_Callout(wakeupSource);
#endif
}
/*TODO: Techm: Added for RTOS */
/***********************************************************************************
  Function name :   EcuM_Prv_StartSlaveCores
  Description   :   For Multicore configuration, the slave cores are started by the master core, if the core
                    starting failed ErrorHook is called with ECUM_E_START_CORE_FAILED .
  Parameter in  :   void
  Parameter out :
  Return value  :   void
  Remarks       :
 ************************************************************************************/
void EcuM_Prv_StartSlaveCores( void )
{
/*local variables*/
    VAR (StatusType,AUTOMATIC) dataStatus_chr = E_NOT_OK;
    VAR(uint16, AUTOMATIC) cntrLoopCtr_u16;
 /*Starting all the OS Cores in a loop*/


        for( cntrLoopCtr_u16=0; cntrLoopCtr_u16<OS_NUM_CORES ; cntrLoopCtr_u16++ )
        {
            StartCore( cntrLoopCtr_u16, &dataStatus_chr);
            if(dataStatus_chr != E_OK)
            {
                /* StartCore Failed*/

                EcuM_ErrorHook(ECUM_E_START_CORE_FAILED);

            }
        }

}
/*******************************************************************************
** Function Name	: EcuM_Shutdown (void)
** Parameter[in] 	: None
** Parameter[out] : None
** Return Value	  : None
** Description    : Function to perform shutdown sequence
*******************************************************************************/
void EcuM_Shutdown(void)
{
  #if(ECUM_CFG_MULTICORE_ENABLED == STD_ON)
    /* MR12 RULE 8.4 VIOLATION: The declaration of GetCoreID is expected from Os */
    if(GetCoreID() == 0)//ECUM_CFG_STARTUP_CORE = 0
    {
    #endif//ECUM_CFG_MULTICORE_ENABLED
	      /*Check if module was initialized*/
	    if ( EcuM_Prv_flgIsModuleInitialised_b == FALSE )
        {
           // #if(MCU_MULTICORE_ERROR_DETECT == STD_ON)
            //(void)Det_ReportError( ECUM_MODULE_ID, ECUM_INSTANCE_ID, ECUM_SHUTDOWN_APIID, ECUM_E_UNINIT );
           // #endif  /* ECUM_DEV_ERROR_DETECT */
			    //  return; /*EcuM_Shutdown function cannot return*/
        }
	     EcuM_Prv_dataPresentPhase_u8 = ECUM_PRV_PHASE_OFF_POSTOS;
       /*This call allows the system designer to notify that the GO OFF II state is about to be entered.*/
        //EcuM_OnGoOffTwo();
        /* For ShutdownTarget selected as RESET*/
        // if(EcuM_Prv_dataSelectedShutdownTarget_st.ShutdownTarget == ECUM_SHUTDOWN_TARGET_RESET)
        // {
        //     /* Callout for resetting the ECU*/
        //     EcuM_AL_Reset( (EcuM_ResetType) EcuM_Prv_dataSelectedShutdownTarget_st.mode);
        // }
        // else
        // {
            //EcuM_AL_SwitchOff();/* Callout for switching OFF the ECU*/
        // }

        EcuM_AL_SwitchOff();/* Callout for switching OFF the ECU*/
    #if(ECUM_CFG_MULTICORE_ENABLED == STD_ON)
    }
   #endif//ECUM_CFG_MULTICORE_ENABLED
}

/*************************************************************************************************
  Function name     :   EcuM_ErrorHook

  Description       :   In case of serious error conditions like consistancy check failure or
              Ram check failure, ecuM will initiate this call. In such situations it is not possible to
              continue processing and Ecu has to be stopped.
  Parameter         :   Std_ReturnType reason
  Return value      :   none

************************************************************************************/
void EcuM_ErrorHook(uint16 reason)
{
	uint16 local_Var;
	local_Var = reason;
}

/**********************************************************************************
  Function name    :  EcuM_AL_SwitchOff
  Description    :  This callout shall take the code for shutting off the power
              supply of the ECU. If the ECU cannot unpower itself, a reset
              may be an adequate reaction.
  Parameter  (in)  :  None
  Parameter  (inout)  :  None
  Parameter  (out)  :  None
  Return value    :  None
  Remarks      :
***********************************************************************************/
void EcuM_AL_SwitchOff (void )
{
	All_ShutDown();
}

/*******************************************************************************
** Function Name	: All_ShutDown()
** Parameter[in] 	: None
** Parameter[out] 	: None
** Return Value	  	: None
** Note	  			:
** Description	  	:
*******************************************************************************/
void All_ShutDown(void)
{

	//Pwm_17_Gtm_SetPeriodAndDuty(Pwm_17_GtmConf_PwmChannel_PWM_18V_L1,0,0);/*P10.2 PWM*/
	//Pwm_17_Gtm_SetPeriodAndDuty(Pwm_17_GtmConf_PwmChannel_PWM_18V_H1,0,0);/*P21.1 PWM*/

	/*close 18V Enboost*/
	// Dio_WriteChannel(DO_EN_BOOTST,STD_HIGH);
	/*close UBR power supply*/
	// Dio_WriteChannel(DO_EN_EFUSE,STD_LOW);

//Pws_DevCtrl(State_STBY);
	Tlf35584SafeWdg_GoTOStandby();
	//Timer_DelayTicks(500000);			   /*delay 5ms*/
  
  /*set all ports to Tristate*/
    Set_Ports_Tristate();
		//Timer_DelayTicks(500000);			/*delay 5ms*/
	  Mcu_PerformReset();
	
}

void Tlf35584SafeWdg_GoTOStandby(void)
{
  ;
}
