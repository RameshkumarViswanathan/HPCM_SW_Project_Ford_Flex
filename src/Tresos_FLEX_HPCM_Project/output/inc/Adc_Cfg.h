/*******************************************************************************
**                                                                            **
** Copyright (C) Infineon Technologies (2018)                                 **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This document contains proprietary information belonging to Infineon       **
** Technologies. Passing on and copying of this document, and communication   **
** of its contents is not permitted without prior written authorization.      **
**                                                                            **
********************************************************************************
**                                                                            **
**  FILENAME  : Adc_Cfg.h                                                     **
**                                                                            **
**  VERSION   : 9.0.0                                                         **
**                                                                            **
**  DATE, TIME: 2024-11-05, 15:19:04        !!!IGNORE-LINE!!!                 **
**                                                                            **
**  GENERATOR : Build b210315-0853          !!!IGNORE-LINE!!!                 **
**                                                                            **
**  BSW MODULE DECRIPTION : Adc.bmd                                           **
**                                                                            **
**  VARIANT   : Variant PB                                                    **
**                                                                            **
**  PLATFORM  : Infineon AURIX2G                                              **
**                                                                            **
**  AUTHOR    : DL-AUTOSAR-Engineering                                        **
**                                                                            **
**  VENDOR    : Infineon Technologies                                         **
**                                                                            **
**  DESCRIPTION  : Adc configuration generated out of ECUC file               **
**                                                                            **
**  SPECIFICATION(S) : Specification of ADC Driver, AUTOSAR Release 4.2.2     **
**                                                                            **
**  MAY BE CHANGED BY USER : no                                               **
**                                                                            **
*******************************************************************************/
#ifndef ADC_CFG_H
#define ADC_CFG_H
/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
#define ADC_AR_RELEASE_MAJOR_VERSION      (4U)
#define ADC_AR_RELEASE_MINOR_VERSION      (2U)
#define ADC_AR_RELEASE_REVISION_VERSION   (2U)

#define ADC_SW_MAJOR_VERSION  (10U)
#define ADC_SW_MINOR_VERSION  (40U)
#define ADC_SW_PATCH_VERSION  (0U)

/*
  Configuration Options: ADC_PRIORITY_IMPLEMENTATION
  Options for the Priority Mechanism supported in ADC Driver
*/
#define ADC_PRIORITY_NONE  (0U)
#define ADC_PRIORITY_HW  (1U)
#define ADC_PRIORITY_HW_SW  (2U) 

/*
  Configuration Options: ADC_RESULT_HANDLING_IMPLEMENTATION
  Options for the Result Handling Mechanism supported in ADC Driver
*/
#define ADC_INTERRUPT_MODE_RESULT_HANDLING  (0U)
#define ADC_DMA_MODE_RESULT_HANDLING  (1U)
#define ADC_POLLING_MODE_RESULT_HANDLING  (2U) 

/*
  Configuration Options: ADC_SLEEP_MODE_CFG
  Options for the Sleep Mode supported in ADC Driver
*/
#define ADC_SLEEP_MODE_ACCEPT  (0U)
#define ADC_SLEEP_MODE_REJECT  (1U)

/*
  Configuration Options: ADC_RESULT_ALIGNMENT
  Options for the Result Alignment supported in ADC Driver
*/
#define ADC_ALIGN_RIGHT  (0U)
#define ADC_ALIGN_LEFT  (1U)

/*
  Configuration Options: ADC_SUPPLY_VOLTAGE
  Options for the Supply Voltages supported in ADC Driver
*/
#define ADC_VOLTAGE_CONTROLLED_BY_SUPPLY  (0U)
#define ADC_VOLTAGE_5V  (1U)
#define ADC_VOLTAGE_3P3V  (2U)

/*
  Configuration Options for DEM
  Options for the enabling/disabling of DEM in ADC Driver
*/
#define ADC_DISABLE_DEM_REPORT  (0U)
#define ADC_ENABLE_DEM_REPORT  (1U)

/*
  Configuration Options for the setting the privilege mode in ADC Driver
*/
#define ADC_MCAL_SUPERVISOR  (0U)
#define ADC_MCAL_USER1  (1U)


/* Configuration: ADC_DEINIT_API
Adc_DeInit API configuration
- if STD_ON, Adc_DeInit API is available
- if STD_OFF, Adc_DeInit API is not available
*/
#define ADC_DEINIT_API  (STD_ON)
/* Configuration: ADC_ENABLE_START_STOP_GROUP_API
Start/Stop Group conversion API configuration
- if STD_ON, Adc_StartGroupConversion() and Adc_StopGroupConversion() Group
conversion APIs are available
- if STD_OFF, Adc_StartGroupConversion() and Adc_StopGroupConversion() Group
conversion APIs are not available
*/
#define ADC_ENABLE_START_STOP_GROUP_API  (STD_ON)
/* Configuration: ADC_HW_TRIGGER_API
Adc HW Trigger API configuration
- if STD_ON, Adc_EnableHardwareTrigger() and Adc_DisableHardwareTrigger() APIs
are available
- if STD_OFF, Adc_EnableHardwareTrigger() and Adc_DisableHardwareTrigger() APIs
are not available
*/
#define ADC_HW_TRIGGER_API  (STD_ON)
/* Configuration: ADC_GTM_AVAILABLE
  Determines, whether GTM is available or not.
- if STD_ON, GTM is available
- if STD_OFF, GTM is not available
*/
#define ADC_GTM_AVAILABLE  (STD_ON)

/* Configuration: ADC_READ_GROUP_API
Adc_ReadGroup API switch
- if STD_ON, Adc_ReadGroup() API is available
- if STD_OFF, Adc_ReadGroup() API is not available
*/
#define ADC_READ_GROUP_API  (STD_ON)
/* Configuration: ADC_VERSION_INFO_API
Version Information API configuration
- if STD_ON, Adc_GetVersionInfo API is available
- if STD_OFF, Adc_GetVersionInfo API is not available
*/
#define ADC_VERSION_INFO_API  (STD_ON)
/* Configuration: ADC_STARTUP_CALIB_API
Calibration API configuration
- if STD_ON, Adc_GetStartupCalStatus() and Adc_TriggerStartupCal() API are available
- if STD_OFF, Adc_GetStartupCalStatus() and Adc_TriggerStartupCal() API are not available
*/
#define ADC_STARTUP_CALIB_API  (STD_ON)
/* Configuration: ADC_TRIGGER_ONE_CONV_ENABLE
Dummy Converison before startup calibration (Refer Errata ADC_TC.083)
- if STD_ON, Execute of one dummy conversion for each configured HW unit, before start-up calibration is triggered in the API Adc_TriggerStartupCal()
- if STD_OFF, Dont Execute of one dummy conversion for each configured HW unit, before start-up calibration is triggered in the API Adc_TriggerStartupCal()
*/
#define ADC_TRIGGER_ONE_CONV_ENABLE  (STD_OFF)
/*
Configuration: ADC_DEV_ERROR_DETECT
Preprocessor switch for enabling the development error detection and 
reporting. 
- if STD_ON, DET is Enabled 
- if STD_OFF,DET is Disabled 
*/
#define ADC_DEV_ERROR_DETECT  (STD_OFF)
/*
Configuration: ADC_ENABLE_LIMIT_CHECK
Preprocessor switch for enabling the limit checking feature of ADC. 
- if STD_ON, Limit checking feature of ADC is Enabled 
- if STD_OFF,Limit checking feature of ADC is Disabled 
*/
#define ADC_ENABLE_LIMIT_CHECK  (STD_OFF)
/* Configuration: ADC_GRP_NOTIF_CAPABILITY
Adc Notification capability configuration 
- if STD_ON, Notification capability is Enabled 
- if STD_OFF, Notification capability is Disabled 
*/
#define ADC_GRP_NOTIF_CAPABILITY  (STD_ON)
/* Configuration: ADC_ENABLE_QUEUING
Determines, if the queuing mechanism is active in case of priority mechanism 
disabled.
Note: This macro is only applicable in NO_PRIORITY MODE. Queueing is enabled 
only if AdcEnableStartStopGroupApi is set to true, since only SW triggered
groups can be Queued.
- if STD_ON, Queuing mechanism in no priority is Enabled.
- if STD_OFF, Queuing mechanism in no priority is Disabled.
*/
#define ADC_ENABLE_QUEUING  (STD_OFF)

/* Configuration: ADC_PRIORITY_IMPLEMENTATION
Determines the type of prioritization mechanism
*/
#define ADC_PRIORITY_IMPLEMENTATION  (ADC_PRIORITY_HW)

/* Configuration: ADC_RESULT_HANDLING_IMPLEMENTATION
Determines the result handling mechanism
*/
#define ADC_RESULT_HANDLING_IMPLEMENTATION  (ADC_INTERRUPT_MODE_RESULT_HANDLING)

/* Configuration: ADC_SLEEP_MODE_CFG
Determines the status of Sleep mode
*/
#define ADC_SLEEP_MODE_CFG  (ADC_SLEEP_MODE_ACCEPT)

/* Configuration: ADC_RESULT_ALIGNMENT
Determines the type of Result Alignment
*/
#define ADC_RESULT_ALIGNMENT  (ADC_ALIGN_RIGHT)

/* Configuration: ADC_SUPPLY_VOLTAGE
Determines the type of Supply Voltage
*/
#define ADC_SUPPLY_VOLTAGE  (ADC_VOLTAGE_CONTROLLED_BY_SUPPLY)
/*
Configuration: ADC_SAFETY_ENABLE
Switch for enabling the Safety Checking feature of ADC. 
- if STD_ON, Safety checking feature of ADC is Enabled 
- if STD_OFF,Safety checking feature of ADC is Disabled 
*/
#define ADC_SAFETY_ENABLE  (STD_OFF)
/*
Configuration: ADC_INIT_CHECK_API
Switch for enabling the Init Checking feature of ADC. 
- if STD_ON, Init checking feature of ADC is Enabled 
- if STD_OFF,Init checking feature of ADC is Disabled 
*/
#define ADC_INIT_CHECK_API  (STD_ON)
/*
Configuration: ADC_MULTICORE_ERROR_DETECT
Switch for enabling the Multicore error detection feature of ADC. 
- if STD_ON, Multicore Error Detection feature of ADC is Enabled 
- if STD_OFF,Multicore Error Detection feature of ADC is Disabled 
*/
#define ADC_MULTICORE_ERROR_DETECT  (STD_OFF)
/*
Configuration: ADC_LOW_POWER_STATE_SUPPORT
Switch for enabling the Low Power States Support features of ADC. 
- if STD_ON, Low Power States Support feature of ADC is Enabled 
- if STD_OFF,Low Power States Support feature of ADC is Disabled 
*/
#define ADC_LOW_POWER_STATE_SUPPORT  (STD_OFF)
/* This parameter provides the bit state for Configured Power modes with decreasing
   power consumptions based on the instances of Adc Power State Configurations i.e.
   0th bit position indicates the 1st instances,1st bit position indicates the 2nd instances so on..*/
#define ADC_POWER_MODES_AVAILABLE  (0x00000000U)
/*
Configuration: ADC_SYNC_CONV_ENABLE
Switch for Enabling the synchronous conversions across ADC HW groups. 
- if STD_ON, Synchronous conversions across ADC HW groups is Enabled 
- if STD_OFF,Synchronous conversions across ADC HW groups is Disabled 
*/
#define ADC_SYNC_CONV_ENABLE  (STD_ON)
/* Configuration: ADC_RUN_TIME_API_MODE
Determines the privilege mode in which the runtime APIs would operate
*/
#define ADC_RUN_TIME_API_MODE  (ADC_MCAL_SUPERVISOR)

/* Configuration: ADC_INIT_DEINIT_API_MODE
Determines the privilege mode in which the Initialization and De-initialization APIs would operate
*/
#define ADC_INIT_DEINIT_API_MODE  (ADC_MCAL_SUPERVISOR)

/* Configuration: ADC_MAX_CH_CONV_TIME
Determines the maximum channel conversion time in terms of wait loop count
*/
#define ADC_MAX_CH_CONV_TIME  (6000U)
/* Configuration: ADC_CLC_FAILURE_DEM_NOTIF and ADC_E_CLC_FAILURE
   Determines whether DEM for CLC failure is enabled or disabled.
*/
#define ADC_CLC_FAILURE_DEM_NOTIF  (ADC_DISABLE_DEM_REPORT)

/* Configuration: ADC_CONV_STOP_TIME_DEM_NOTIF and ADC_E_CONV_STOP_TIME_FAILURE
   Determines whether wait counts configured at AdcMaxChConvTimeCount to
   stop the conversion is sufficient or not.
*/
#define ADC_CONV_STOP_TIME_DEM_NOTIF  (ADC_DISABLE_DEM_REPORT)

/* This parameter contains the maximum number of ADC Channel groups 
configured across HW units and configuration sets.
It is required for Queue mechanism in No Priority mode of operation.
For example, if there are 4 HW Units configured with maximum 2, 3, 4 and 5 
groups respectively in each HW Units,then ADC_MAX_GROUPS 
must be configured as 5.*/
#define ADC_MAX_GROUPS  (2U)

                  
/*This parameter provides the array index for the Hw Unit 0 in the Adc_Hw_Unit
Data structure of CPU Core0. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC0_KERNEL_INDEX_CORE0  (0xFFU)

/*This parameter provides the array index for the Hw Unit 1 in the Adc_Hw_Unit
Data structure of CPU Core0. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC1_KERNEL_INDEX_CORE0  (0U)

/*This parameter provides the array index for the Hw Unit 2 in the Adc_Hw_Unit
Data structure of CPU Core0. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC2_KERNEL_INDEX_CORE0  (1U)

/*This parameter provides the array index for the Hw Unit 3 in the Adc_Hw_Unit
Data structure of CPU Core0. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC3_KERNEL_INDEX_CORE0  (2U)

/*This parameter provides the array index for the Hw Unit 4 in the Adc_Hw_Unit
Data structure of CPU Core0. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC4_KERNEL_INDEX_CORE0  (0xFFU)

/*This parameter provides the array index for the Hw Unit 5 in the Adc_Hw_Unit
Data structure of CPU Core0. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC5_KERNEL_INDEX_CORE0  (0xFFU)

/*This parameter provides the array index for the Hw Unit 6 in the Adc_Hw_Unit
Data structure of CPU Core0. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC6_KERNEL_INDEX_CORE0  (0xFFU)

/*This parameter provides the array index for the Hw Unit 7 in the Adc_Hw_Unit
Data structure of CPU Core0. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC7_KERNEL_INDEX_CORE0  (0xFFU)

/*This parameter provides the array index for the Hw Unit 8 in the Adc_Hw_Unit
Data structure of CPU Core0. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC8_KERNEL_INDEX_CORE0  (3U)

/*This parameter provides the array index for the Hw Unit 9 in the Adc_Hw_Unit
Data structure of CPU Core0. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC9_KERNEL_INDEX_CORE0  (4U)

/*This parameter provides the array index for the Hw Unit 10 in the Adc_Hw_Unit
Data structure of CPU Core0. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC10_KERNEL_INDEX_CORE0  (5U)

/*This parameter provides the array index for the Hw Unit 11 in the Adc_Hw_Unit
Data structure of CPU Core0. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC11_KERNEL_INDEX_CORE0  (6U)
  
/* This parameter stores the maximum number of ADC HW Units configured 
on CPU Core0 across all configuration sets.*/
#define ADC_KERNEL_USED_COUNT_CORE0  (7U)

/*** Group of all the indexes used for all the KERNELs on CPU Core0 ***/
#define ADCX_KERNEL_INDEX_CORE0 \
ADC0_KERNEL_INDEX_CORE0 ,\
ADC1_KERNEL_INDEX_CORE0 ,\
ADC2_KERNEL_INDEX_CORE0 ,\
ADC3_KERNEL_INDEX_CORE0 ,\
ADC4_KERNEL_INDEX_CORE0 ,\
ADC5_KERNEL_INDEX_CORE0 ,\
ADC6_KERNEL_INDEX_CORE0 ,\
ADC7_KERNEL_INDEX_CORE0 ,\
ADC8_KERNEL_INDEX_CORE0 ,\
ADC9_KERNEL_INDEX_CORE0 ,\
ADC10_KERNEL_INDEX_CORE0 ,\
ADC11_KERNEL_INDEX_CORE0 

/*This parameter provides the array index for the Hw Unit 0 in the Adc_Hw_Unit
Data structure of CPU Core1. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC0_KERNEL_INDEX_CORE1  (0xFFU)

/*This parameter provides the array index for the Hw Unit 1 in the Adc_Hw_Unit
Data structure of CPU Core1. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC1_KERNEL_INDEX_CORE1  (0xFFU)

/*This parameter provides the array index for the Hw Unit 2 in the Adc_Hw_Unit
Data structure of CPU Core1. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC2_KERNEL_INDEX_CORE1  (0xFFU)

/*This parameter provides the array index for the Hw Unit 3 in the Adc_Hw_Unit
Data structure of CPU Core1. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC3_KERNEL_INDEX_CORE1  (0xFFU)

/*This parameter provides the array index for the Hw Unit 4 in the Adc_Hw_Unit
Data structure of CPU Core1. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC4_KERNEL_INDEX_CORE1  (0xFFU)

/*This parameter provides the array index for the Hw Unit 5 in the Adc_Hw_Unit
Data structure of CPU Core1. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC5_KERNEL_INDEX_CORE1  (0xFFU)

/*This parameter provides the array index for the Hw Unit 6 in the Adc_Hw_Unit
Data structure of CPU Core1. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC6_KERNEL_INDEX_CORE1  (0xFFU)

/*This parameter provides the array index for the Hw Unit 7 in the Adc_Hw_Unit
Data structure of CPU Core1. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC7_KERNEL_INDEX_CORE1  (0xFFU)

/*This parameter provides the array index for the Hw Unit 8 in the Adc_Hw_Unit
Data structure of CPU Core1. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC8_KERNEL_INDEX_CORE1  (0xFFU)

/*This parameter provides the array index for the Hw Unit 9 in the Adc_Hw_Unit
Data structure of CPU Core1. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC9_KERNEL_INDEX_CORE1  (0xFFU)

/*This parameter provides the array index for the Hw Unit 10 in the Adc_Hw_Unit
Data structure of CPU Core1. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC10_KERNEL_INDEX_CORE1  (0xFFU)

/*This parameter provides the array index for the Hw Unit 11 in the Adc_Hw_Unit
Data structure of CPU Core1. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC11_KERNEL_INDEX_CORE1  (0xFFU)
  
/* This parameter stores the maximum number of ADC HW Units configured 
on CPU Core1 across all configuration sets.*/
#define ADC_KERNEL_USED_COUNT_CORE1  (0U)

/*** Group of all the indexes used for all the KERNELs on CPU Core1 ***/
#define ADCX_KERNEL_INDEX_CORE1 \
ADC0_KERNEL_INDEX_CORE1 ,\
ADC1_KERNEL_INDEX_CORE1 ,\
ADC2_KERNEL_INDEX_CORE1 ,\
ADC3_KERNEL_INDEX_CORE1 ,\
ADC4_KERNEL_INDEX_CORE1 ,\
ADC5_KERNEL_INDEX_CORE1 ,\
ADC6_KERNEL_INDEX_CORE1 ,\
ADC7_KERNEL_INDEX_CORE1 ,\
ADC8_KERNEL_INDEX_CORE1 ,\
ADC9_KERNEL_INDEX_CORE1 ,\
ADC10_KERNEL_INDEX_CORE1 ,\
ADC11_KERNEL_INDEX_CORE1 

/*This parameter provides the array index for the Hw Unit 0 in the Adc_Hw_Unit
Data structure of CPU Core2. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC0_KERNEL_INDEX_CORE2  (0xFFU)

/*This parameter provides the array index for the Hw Unit 1 in the Adc_Hw_Unit
Data structure of CPU Core2. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC1_KERNEL_INDEX_CORE2  (0xFFU)

/*This parameter provides the array index for the Hw Unit 2 in the Adc_Hw_Unit
Data structure of CPU Core2. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC2_KERNEL_INDEX_CORE2  (0xFFU)

/*This parameter provides the array index for the Hw Unit 3 in the Adc_Hw_Unit
Data structure of CPU Core2. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC3_KERNEL_INDEX_CORE2  (0xFFU)

/*This parameter provides the array index for the Hw Unit 4 in the Adc_Hw_Unit
Data structure of CPU Core2. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC4_KERNEL_INDEX_CORE2  (0xFFU)

/*This parameter provides the array index for the Hw Unit 5 in the Adc_Hw_Unit
Data structure of CPU Core2. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC5_KERNEL_INDEX_CORE2  (0xFFU)

/*This parameter provides the array index for the Hw Unit 6 in the Adc_Hw_Unit
Data structure of CPU Core2. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC6_KERNEL_INDEX_CORE2  (0xFFU)

/*This parameter provides the array index for the Hw Unit 7 in the Adc_Hw_Unit
Data structure of CPU Core2. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC7_KERNEL_INDEX_CORE2  (0xFFU)

/*This parameter provides the array index for the Hw Unit 8 in the Adc_Hw_Unit
Data structure of CPU Core2. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC8_KERNEL_INDEX_CORE2  (0xFFU)

/*This parameter provides the array index for the Hw Unit 9 in the Adc_Hw_Unit
Data structure of CPU Core2. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC9_KERNEL_INDEX_CORE2  (0xFFU)

/*This parameter provides the array index for the Hw Unit 10 in the Adc_Hw_Unit
Data structure of CPU Core2. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC10_KERNEL_INDEX_CORE2  (0xFFU)

/*This parameter provides the array index for the Hw Unit 11 in the Adc_Hw_Unit
Data structure of CPU Core2. Value of 0xFF is for an unconfigured Hw Unit */
#define ADC11_KERNEL_INDEX_CORE2  (0xFFU)
  
/* This parameter stores the maximum number of ADC HW Units configured 
on CPU Core2 across all configuration sets.*/
#define ADC_KERNEL_USED_COUNT_CORE2  (0U)

/*** Group of all the indexes used for all the KERNELs on CPU Core2 ***/
#define ADCX_KERNEL_INDEX_CORE2 \
ADC0_KERNEL_INDEX_CORE2 ,\
ADC1_KERNEL_INDEX_CORE2 ,\
ADC2_KERNEL_INDEX_CORE2 ,\
ADC3_KERNEL_INDEX_CORE2 ,\
ADC4_KERNEL_INDEX_CORE2 ,\
ADC5_KERNEL_INDEX_CORE2 ,\
ADC6_KERNEL_INDEX_CORE2 ,\
ADC7_KERNEL_INDEX_CORE2 ,\
ADC8_KERNEL_INDEX_CORE2 ,\
ADC9_KERNEL_INDEX_CORE2 ,\
ADC10_KERNEL_INDEX_CORE2 ,\
ADC11_KERNEL_INDEX_CORE2 

/* This parameter stores the maximum number of ADC HW Units present in the HW*/
#define ADC_MAX_KERNELS  (8U)

/* This parameter stores the ADC HW Unit ID of the last KERNEL + 1 present in the HW*/
#define ADC_MAX_KERNEL_ID  (12U)

/* This parameter defines the ADC HW Unit ID for the last primary KERNEL */
#define ADC_LAST_PRIMARY_KERNELID  (3U)

/* This parameter determines the availibility of ADC Secondary kernels in the HW
- if STD_ON, Secondary Kernels support are available
- if STD_OFF, Secondary Kernels support are not available
*/
#define ADC_SECONDARY_KERNEL_AVAILABLE  (STD_ON)

/* This parameter provides the Request Source available per ADC KERNEL */
#define ADC_REQSRC_COUNT (3U)

/* This parameter provides the Request Source used per ADC KERNEL */
#define ADC_REQSRC_USED_COUNT (3U)


/******Symbolic Name for all the AdcGroup with Group ID******/
/******Symbolic Name for all the AdcGroup of HW Unit 1******/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcGroup_AdcGroup_1
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcGroup_AdcGroup_1  (32U)
#endif

/******Symbolic Name for all the AdcGroup of HW Unit 2******/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcGroup_AdcGroup_2
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcGroup_AdcGroup_2  (64U)
#endif

/******Symbolic Name for all the AdcGroup of HW Unit 3******/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcGroup_AdcGroup_3
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcGroup_AdcGroup_3  (96U)
#endif

/******Symbolic Name for all the AdcGroup of HW Unit 8******/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcGroup_AdcGroup_8_Eddy
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcGroup_AdcGroup_8_Eddy  (256U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcGroup_AdcGroup_8
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcGroup_AdcGroup_8  (257U)
#endif

/******Symbolic Name for all the AdcGroup of HW Unit 9******/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcGroup_AdcGroup_9
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcGroup_AdcGroup_9  (288U)
#endif

/******Symbolic Name for all the AdcGroup of HW Unit 10******/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcGroup_AdcGroup_10
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcGroup_AdcGroup_10  (320U)
#endif

/******Symbolic Name for all the AdcGroup of HW Unit 11******/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcGroup_AdcGroup_11
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcGroup_AdcGroup_11  (352U)
#endif


/******Symbolic Name for all the AdcChannel with Channel ID******/
/******Symbolic Name for all the AdcChannel of HW Unit 1******/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_1_Iph_U_MCU
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_1_Iph_U_MCU  (0U)
#endif

/******Symbolic Name for all the AdcChannel of HW Unit 2******/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_2_Iph_V_MCU
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_2_Iph_V_MCU  (0U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_2_5V2_FB
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_2_5V2_FB  (1U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_2_5V_COM_FB
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_2_5V_COM_FB  (2U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_2_5V_REF_FB
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_2_5V_REF_FB  (3U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_2_3V3_FB
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_2_3V3_FB  (4U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_2_1V25_FB
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_2_1V25_FB  (5U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_2_PSR_RELAY_FB
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_2_PSR_RELAY_FB  (6U)
#endif

/******Symbolic Name for all the AdcChannel of HW Unit 3******/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_3_Iph_W_MCU
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_3_Iph_W_MCU  (0U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_3_5V_HV_STBY_FB
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_3_5V_HV_STBY_FB  (1U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_3_5V1_LIMIT_FB
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_3_5V1_LIMIT_FB  (2U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_3_5V1_FB
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_3_5V1_FB  (3U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_3_2_048V_REF
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_3_2_048V_REF  (4U)
#endif

/******Symbolic Name for all the AdcChannel of HW Unit 8******/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_8_Cos_P_Sync
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_8_Cos_P_Sync  (0U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_8_TMCOIL_MCU
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_8_TMCOIL_MCU  (1U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_8_TOIL_MCU
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_8_TOIL_MCU  (2U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_8_HVDC_MCU
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_8_HVDC_MCU  (3U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_8_HV_LV_SUP_FB
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_8_HV_LV_SUP_FB  (4U)
#endif

/******Symbolic Name for all the AdcChannel of HW Unit 9******/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_9_Cos_N_Sync
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_9_Cos_N_Sync  (0U)
#endif

/******Symbolic Name for all the AdcChannel of HW Unit 10******/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_10_Sin_P_Sync
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_10_Sin_P_Sync  (0U)
#endif

/******Symbolic Name for all the AdcChannel of HW Unit 11******/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_11_Sin_N_Sync
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_11_Sin_N_Sync  (0U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_11_TCOOL_IN_MCU
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_11_TCOOL_IN_MCU  (1U)
#endif
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/ 
#ifndef AdcConf_AdcChannel_AdcChannel_11_TCOOL_OUT_MCU
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
   in generated code due to Autosar Naming constraints.*/

#define AdcConf_AdcChannel_AdcChannel_11_TCOOL_OUT_MCU  (2U)
#endif


/******Symbolic Name for Power State Config******/

#endif


