/*****************************************************************************
**                                                                            **
** Copyright (C) Infineon Technologies (2019)                                 **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This document contains proprietary information belonging to Infineon       **
** Technologies. Passing on and copying of this document, and communication   **
** of its contents is not permitted without prior written authorization.      **
**                                                                            **
********************************************************************************
**                                                                            **
**  FILENAME  : Adc_PBcfg.c                                                   **
**                                                                            **
**  VERSION   : 8.0.0                                                         **
**                                                                            **
**  DATE, TIME: 2024-11-05, 15:19:04            !!!IGNORE-LINE!!!             **
**                                                                            **
**  GENERATOR : Build b210315-0853              !!!IGNORE-LINE!!!             **
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
**  DESCRIPTION :  Adc configuration generated out of ECUC file               **
**                                                                            **
**  SPECIFICATION(S) : Specification of ADC Driver, AUTOSAR Release 4.2.2     **
**                                                                            **
**  MAY BE CHANGED BY USER : no                                               **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
/* Inclusion of module header file */
#include "Adc.h"
/*Function declaration for Notification Function of AdcGroup_1*/
extern void AdcGroup1_Notification(void);
/*Function declaration for Notification Function of AdcGroup_2*/
extern void AdcGroup2_Notification(void);
/*Function declaration for Notification Function of AdcGroup_3*/
extern void AdcGroup3_Notification(void);
/*Function declaration for Notification Function of AdcGroup_8_Eddy*/
extern void AdcGroup8_Notification_Eddy(void);
/*Function declaration for Notification Function of AdcGroup_8*/
extern void AdcGroup8_Notification(void);
/*Function declaration for Notification Function of AdcGroup_9*/
extern void AdcGroup9_Notification(void);
/*Function declaration for Notification Function of AdcGroup_10*/
extern void AdcGroup10_Notification(void);
/*Function declaration for Notification Function of AdcGroup_11*/
extern void AdcGroup11_Notification(void);

/***********Configuration for External HW trigger and gating signals***********/
/*Gtm Trigger Configuration for AdcGroup_1 of HW Unit 1 */
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

static const Mcu_17_Gtm_TomAtomChConfigType Adc_kHwUnit1GrpAdcGroup_1GtmTrig_Config=
{
  MCU_GTM_TIMER_ATOM, /*GTM_ATOM Timer Type Used*/
  0x00000004U, /* Timer ID */
  0x00001802U, /*Control Register Value for GTM_ATOM_0 */
  0x00000000U, /*CN0 Register value*/
  0x00001388U, /*CM0 register value*/
  0x000009c4U, /*CM1 register value*/
  0x00001388U, /*SR0 register value*/
  0x000009c4U, /*SR1 register value*/
  0U, /*Timer Channel output Config*/
  0x00U /*Interrupt Enable and Interrupt Mode values*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*Gtm Trigger Configuration for AdcGroup_2 of HW Unit 2 */
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

static const Mcu_17_Gtm_TomAtomChConfigType Adc_kHwUnit2GrpAdcGroup_2GtmTrig_Config=
{
  MCU_GTM_TIMER_TOM, /*GTM_TOM Timer Type Used*/
  0x00000003U, /* Timer ID */
  0x00000800U, /*Control Register Value for GTM_TOM_0 */
  0x00000000U, /*CN0 Register value*/
  0x00004e20U, /*CM0 register value*/
  0x00002710U, /*CM1 register value*/
  0x00004e20U, /*SR0 register value*/
  0x00002710U, /*SR1 register value*/
  0U, /*Timer Channel output Config*/
  0x00U /*Interrupt Enable and Interrupt Mode values*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*Gtm Trigger Configuration for AdcGroup_3 of HW Unit 3 */
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

static const Mcu_17_Gtm_TomAtomChConfigType Adc_kHwUnit3GrpAdcGroup_3GtmTrig_Config=
{
  MCU_GTM_TIMER_TOM, /*GTM_TOM Timer Type Used*/
  0x00000203U, /* Timer ID */
  0x00000800U, /*Control Register Value for GTM_TOM_2 */
  0x00000000U, /*CN0 Register value*/
  0x00004e20U, /*CM0 register value*/
  0x00002710U, /*CM1 register value*/
  0x00004e20U, /*SR0 register value*/
  0x00002710U, /*SR1 register value*/
  0U, /*Timer Channel output Config*/
  0x00U /*Interrupt Enable and Interrupt Mode values*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*Gtm Trigger Configuration for AdcGroup_8_Eddy of HW Unit 8 */
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

static const Mcu_17_Gtm_TomAtomChConfigType Adc_kHwUnit8GrpAdcGroup_8_EddyGtmTrig_Config=
{
  MCU_GTM_TIMER_ATOM, /*GTM_ATOM Timer Type Used*/
  0x00000005U, /* Timer ID */
  0x00001802U, /*Control Register Value for GTM_ATOM_0 */
  0x00000000U, /*CN0 Register value*/
  0x00001f40U, /*CM0 register value*/
  0x00000fa0U, /*CM1 register value*/
  0x00001f40U, /*SR0 register value*/
  0x00000fa0U, /*SR1 register value*/
  0U, /*Timer Channel output Config*/
  0x00U /*Interrupt Enable and Interrupt Mode values*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*Gtm Trigger Configuration for AdcGroup_8 of HW Unit 8 */
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

static const Mcu_17_Gtm_TomAtomChConfigType Adc_kHwUnit8GrpAdcGroup_8GtmTrig_Config=
{
  MCU_GTM_TIMER_TOM, /*GTM_TOM Timer Type Used*/
  0x00000004U, /* Timer ID */
  0x00000800U, /*Control Register Value for GTM_TOM_0 */
  0x00000000U, /*CN0 Register value*/
  0x00004e20U, /*CM0 register value*/
  0x00002710U, /*CM1 register value*/
  0x00004e20U, /*SR0 register value*/
  0x00002710U, /*SR1 register value*/
  0U, /*Timer Channel output Config*/
  0x00U /*Interrupt Enable and Interrupt Mode values*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*Gtm Trigger Configuration for AdcGroup_11 of HW Unit 11 */
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

static const Mcu_17_Gtm_TomAtomChConfigType Adc_kHwUnit11GrpAdcGroup_11GtmTrig_Config=
{
  MCU_GTM_TIMER_TOM, /*GTM_TOM Timer Type Used*/
  0x00000103U, /* Timer ID */
  0x00000800U, /*Control Register Value for GTM_TOM_1 */
  0x00000000U, /*CN0 Register value*/
  0x00004e20U, /*CM0 register value*/
  0x00002710U, /*CM1 register value*/
  0x00004e20U, /*SR0 register value*/
  0x00002710U, /*SR1 register value*/
  0U, /*Timer Channel output Config*/
  0x00U /*Interrupt Enable and Interrupt Mode values*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/*******************Group Definition - Channel Sequence*******************/

/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
/**Group Definition of AdcGroup_1- ID32 of HW Unit 1 */
static const Adc_GroupDefType Adc_kHwUnit1GrpAdcGroup_1_Config[1]=
{
  /*AS Logical Channel*/ /*Analog Channel*/ /*Result Register*/
  {  0U,                   0U,                0U  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
/**Group Definition of AdcGroup_2- ID64 of HW Unit 2 */
static const Adc_GroupDefType Adc_kHwUnit2GrpAdcGroup_2_Config[6]=
{
  /*AS Logical Channel*/ /*Analog Channel*/ /*Result Register*/
  {  1U,                   2U,                1U  },
  {  2U,                   3U,                2U  },
  {  3U,                   4U,                3U  },
  {  4U,                   5U,                4U  },
  {  5U,                   6U,                5U  },
  {  6U,                   7U,                6U  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
/**Group Definition of AdcGroup_3- ID96 of HW Unit 3 */
static const Adc_GroupDefType Adc_kHwUnit3GrpAdcGroup_3_Config[4]=
{
  /*AS Logical Channel*/ /*Analog Channel*/ /*Result Register*/
  {  1U,                   1U,                1U  },
  {  2U,                   2U,                2U  },
  {  3U,                   3U,                3U  },
  {  4U,                   4U,                4U  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
/**Group Definition of AdcGroup_8_Eddy- ID256 of HW Unit 8 */
static const Adc_GroupDefType Adc_kHwUnit8GrpAdcGroup_8_Eddy_Config[1]=
{
  /*AS Logical Channel*/ /*Analog Channel*/ /*Result Register*/
  {  0U,                   0U,                0U  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
/**Group Definition of AdcGroup_8- ID257 of HW Unit 8 */
static const Adc_GroupDefType Adc_kHwUnit8GrpAdcGroup_8_Config[4]=
{
  /*AS Logical Channel*/ /*Analog Channel*/ /*Result Register*/
  {  1U,                   1U,                1U  },
  {  2U,                   7U,                2U  },
  {  3U,                   12U,                3U  },
  {  4U,                   14U,                4U  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
/**Group Definition of AdcGroup_9- ID288 of HW Unit 9 */
static const Adc_GroupDefType Adc_kHwUnit9GrpAdcGroup_9_Config[1]=
{
  /*AS Logical Channel*/ /*Analog Channel*/ /*Result Register*/
  {  0U,                   0U,                0U  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
/**Group Definition of AdcGroup_10- ID320 of HW Unit 10 */
static const Adc_GroupDefType Adc_kHwUnit10GrpAdcGroup_10_Config[1]=
{
  /*AS Logical Channel*/ /*Analog Channel*/ /*Result Register*/
  {  0U,                   0U,                0U  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
/**Group Definition of AdcGroup_11- ID352 of HW Unit 11 */
static const Adc_GroupDefType Adc_kHwUnit11GrpAdcGroup_11_Config[2]=
{
  /*AS Logical Channel*/ /*Analog Channel*/ /*Result Register*/
  {  1U,                   1U,                1U  },
  {  2U,                   6U,                2U  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/***********************Group Configuration Definition***********************/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*****Group Configuration Definition of HW Unit 1 ******/
static const Adc_GroupCfgType Adc_kHwUnit1Grp_Config[1]=
{

  {/*Group Configuration structure for AdcGroup_1 - ID32*/
    /*
      Group Properties:
      Trigger Source: ADC_TRIGG_SRC_HW
      Trigger Edge: ADC_HW_TRIG_RISING_EDGE
      HW Trigger Source: ADC_TRIG_8_GxREQTRI_GTM_ADCx_TRIG0
      HW Gate Source: ADC_GATE_NONE
      Gate Level: ADC_GATE_LVL_HIGH
    */
    /* Notification Function Address */
    AdcGroup1_Notification,
    /*Address for Group Definition Structure*/
    &Adc_kHwUnit1GrpAdcGroup_1_Config[0U],
    /*Address for the GTM trigger configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)&Adc_kHwUnit1GrpAdcGroup_1GtmTrig_Config,
    /*Address for the GTM gate configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)0U,
    /*Address for the ERU trigger configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Address for the ERU gate configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Configuration value for the G1QCTRL register*/
    0x00004800U,
    /*Configuration value for the G1QMR register*/
    0x00000005U,
    /*Configuration value for the G1ALIAS register*/
    0x00000100U,
    /* Configuration value for G1REQTM register*/
    0x00000000U,
    /*Bit Mask for all the analog channels configured for the group*/
    0x0001U,
    /*Bit Mask for all the result registers configured for the group*/
    0x0001U,
    /*Bit Mask for all the analog channels configured for synchronous conversion*/
    0x0001U,
    /*Bit Mask for all the result registers configured for synchronous conversion*/
    0x0001U,
    ADC_TRIGG_SRC_HW,
    ADC_CONV_MODE_ONESHOT,
    ADC_ACCESS_MODE_SINGLE,
    ADC_STREAM_BUFFER_CIRCULAR,
    1U, /*Number of streaming samples for the group*/
    ADC_GTM_HW_USED, /*HW peripheral used for Trigger*/
    ADC_OTHER_HW_USED, /*HW peripheral used for Gate*/
    2U, /*Priority Level for the group*/
    1U, /*Channel Count for the group*/
    0U /*Limit Check enabled for the group*/
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*****Group Configuration Definition of HW Unit 2 ******/
static const Adc_GroupCfgType Adc_kHwUnit2Grp_Config[1]=
{

  {/*Group Configuration structure for AdcGroup_2 - ID64*/
    /*
      Group Properties:
      Trigger Source: ADC_TRIGG_SRC_HW
      Trigger Edge: ADC_HW_TRIG_RISING_EDGE
      HW Trigger Source: ADC_TRIG_10_GxREQTRK_GTM_ADCx_TRIG2
      HW Gate Source: ADC_GATE_NONE
      Gate Level: ADC_GATE_LVL_LOW
    */
    /* Notification Function Address */
    AdcGroup2_Notification,
    /*Address for Group Definition Structure*/
    &Adc_kHwUnit2GrpAdcGroup_2_Config[0U],
    /*Address for the GTM trigger configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)&Adc_kHwUnit2GrpAdcGroup_2GtmTrig_Config,
    /*Address for the GTM gate configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)0U,
    /*Address for the ERU trigger configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Address for the ERU gate configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Configuration value for the G2QCTRL register*/
    0x00004a00U,
    /*Configuration value for the G2QMR register*/
    0x00000005U,
    /*Configuration value for the G2ALIAS register*/
    0x00000100U,
    /* Configuration value for G2REQTM register*/
    0x00000000U,
    /*Bit Mask for all the analog channels configured for the group*/
    0x00fcU,
    /*Bit Mask for all the result registers configured for the group*/
    0x007eU,
    /*Bit Mask for all the analog channels configured for synchronous conversion*/
    0x0000U,
    /*Bit Mask for all the result registers configured for synchronous conversion*/
    0x0000U,
    ADC_TRIGG_SRC_HW,
    ADC_CONV_MODE_ONESHOT,
    ADC_ACCESS_MODE_SINGLE,
    ADC_STREAM_BUFFER_CIRCULAR,
    1U, /*Number of streaming samples for the group*/
    ADC_GTM_HW_USED, /*HW peripheral used for Trigger*/
    ADC_OTHER_HW_USED, /*HW peripheral used for Gate*/
    2U, /*Priority Level for the group*/
    6U, /*Channel Count for the group*/
    0U /*Limit Check enabled for the group*/
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*****Group Configuration Definition of HW Unit 3 ******/
static const Adc_GroupCfgType Adc_kHwUnit3Grp_Config[1]=
{

  {/*Group Configuration structure for AdcGroup_3 - ID96*/
    /*
      Group Properties:
      Trigger Source: ADC_TRIGG_SRC_HW
      Trigger Edge: ADC_HW_TRIG_RISING_EDGE
      HW Trigger Source: ADC_TRIG_6_GxREQTRG_GTM_ADCx_TRIG4
      HW Gate Source: ADC_GATE_NONE
      Gate Level: ADC_GATE_LVL_LOW
    */
    /* Notification Function Address */
    AdcGroup3_Notification,
    /*Address for Group Definition Structure*/
    &Adc_kHwUnit3GrpAdcGroup_3_Config[0U],
    /*Address for the GTM trigger configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)&Adc_kHwUnit3GrpAdcGroup_3GtmTrig_Config,
    /*Address for the GTM gate configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)0U,
    /*Address for the ERU trigger configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Address for the ERU gate configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Configuration value for the G3QCTRL register*/
    0x00004600U,
    /*Configuration value for the G3QMR register*/
    0x00000005U,
    /*Configuration value for the G3ALIAS register*/
    0x00000100U,
    /* Configuration value for G3REQTM register*/
    0x00000000U,
    /*Bit Mask for all the analog channels configured for the group*/
    0x001eU,
    /*Bit Mask for all the result registers configured for the group*/
    0x001eU,
    /*Bit Mask for all the analog channels configured for synchronous conversion*/
    0x0000U,
    /*Bit Mask for all the result registers configured for synchronous conversion*/
    0x0000U,
    ADC_TRIGG_SRC_HW,
    ADC_CONV_MODE_ONESHOT,
    ADC_ACCESS_MODE_SINGLE,
    ADC_STREAM_BUFFER_CIRCULAR,
    1U, /*Number of streaming samples for the group*/
    ADC_GTM_HW_USED, /*HW peripheral used for Trigger*/
    ADC_OTHER_HW_USED, /*HW peripheral used for Gate*/
    2U, /*Priority Level for the group*/
    4U, /*Channel Count for the group*/
    0U /*Limit Check enabled for the group*/
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*****Group Configuration Definition of HW Unit 8 ******/
static const Adc_GroupCfgType Adc_kHwUnit8Grp_Config[2]=
{

  {/*Group Configuration structure for AdcGroup_8_Eddy - ID256*/
    /*
      Group Properties:
      Trigger Source: ADC_TRIGG_SRC_HW
      Trigger Edge: ADC_HW_TRIG_RISING_EDGE
      HW Trigger Source: ADC_TRIG_8_GxREQTRI_GTM_ADCx_TRIG0
      HW Gate Source: ADC_GATE_NONE
      Gate Level: ADC_GATE_LVL_LOW
    */
    /* Notification Function Address */
    AdcGroup8_Notification_Eddy,
    /*Address for Group Definition Structure*/
    &Adc_kHwUnit8GrpAdcGroup_8_Eddy_Config[0U],
    /*Address for the GTM trigger configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)&Adc_kHwUnit8GrpAdcGroup_8_EddyGtmTrig_Config,
    /*Address for the GTM gate configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)0U,
    /*Address for the ERU trigger configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Address for the ERU gate configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Configuration value for the G8QCTRL register*/
    0x00004800U,
    /*Configuration value for the G8QMR register*/
    0x00000005U,
    /*Configuration value for the G8ALIAS register*/
    0x00000100U,
    /* Configuration value for G8REQTM register*/
    0x00000000U,
    /*Bit Mask for all the analog channels configured for the group*/
    0x0001U,
    /*Bit Mask for all the result registers configured for the group*/
    0x0001U,
    /*Bit Mask for all the analog channels configured for synchronous conversion*/
    0x0001U,
    /*Bit Mask for all the result registers configured for synchronous conversion*/
    0x0001U,
    ADC_TRIGG_SRC_HW,
    ADC_CONV_MODE_ONESHOT,
    ADC_ACCESS_MODE_SINGLE,
    ADC_STREAM_BUFFER_CIRCULAR,
    1U, /*Number of streaming samples for the group*/
    ADC_GTM_HW_USED, /*HW peripheral used for Trigger*/
    ADC_OTHER_HW_USED, /*HW peripheral used for Gate*/
    2U, /*Priority Level for the group*/
    1U, /*Channel Count for the group*/
    0U /*Limit Check enabled for the group*/
  },

  {/*Group Configuration structure for AdcGroup_8 - ID257*/
    /*
      Group Properties:
      Trigger Source: ADC_TRIGG_SRC_HW
      Trigger Edge: ADC_HW_TRIG_RISING_EDGE
      HW Trigger Source: ADC_TRIG_10_GxREQTRK_GTM_ADCx_TRIG2
      HW Gate Source: ADC_GATE_NONE
      Gate Level: ADC_GATE_LVL_LOW
    */
    /* Notification Function Address */
    AdcGroup8_Notification,
    /*Address for Group Definition Structure*/
    &Adc_kHwUnit8GrpAdcGroup_8_Config[0U],
    /*Address for the GTM trigger configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)&Adc_kHwUnit8GrpAdcGroup_8GtmTrig_Config,
    /*Address for the GTM gate configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)0U,
    /*Address for the ERU trigger configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Address for the ERU gate configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Configuration value for the G8QCTRL register*/
    0x00004a00U,
    /*Configuration value for the G8QMR register*/
    0x00000005U,
    /*Configuration value for the G8ALIAS register*/
    0x00000100U,
    /* Configuration value for G8REQTM register*/
    0x00000000U,
    /*Bit Mask for all the analog channels configured for the group*/
    0x5082U,
    /*Bit Mask for all the result registers configured for the group*/
    0x001eU,
    /*Bit Mask for all the analog channels configured for synchronous conversion*/
    0x0000U,
    /*Bit Mask for all the result registers configured for synchronous conversion*/
    0x0000U,
    ADC_TRIGG_SRC_HW,
    ADC_CONV_MODE_ONESHOT,
    ADC_ACCESS_MODE_SINGLE,
    ADC_STREAM_BUFFER_CIRCULAR,
    1U, /*Number of streaming samples for the group*/
    ADC_GTM_HW_USED, /*HW peripheral used for Trigger*/
    ADC_OTHER_HW_USED, /*HW peripheral used for Gate*/
    1U, /*Priority Level for the group*/
    4U, /*Channel Count for the group*/
    0U /*Limit Check enabled for the group*/
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*****Group Configuration Definition of HW Unit 9 ******/
static const Adc_GroupCfgType Adc_kHwUnit9Grp_Config[1]=
{

  {/*Group Configuration structure for AdcGroup_9 - ID288*/
    /*
      Group Properties:
      Trigger Source: ADC_TRIGG_SRC_SW
      Trigger Edge: 
      HW Trigger Source: ADC_TRIG_NONE
      HW Gate Source: ADC_GATE_NONE
      Gate Level: ADC_GATE_LVL_LOW
    */
    /* Notification Function Address */
    AdcGroup9_Notification,
    /*Address for Group Definition Structure*/
    &Adc_kHwUnit9GrpAdcGroup_9_Config[0U],
    /*Address for the GTM trigger configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)0U,
    /*Address for the GTM gate configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)0U,
    /*Address for the ERU trigger configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Address for the ERU gate configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Configuration value for the G9QCTRL register*/
    0x00000000U,
    /*Configuration value for the G9QMR register*/
    0x00000001U,
    /*Configuration value for the G9ALIAS register*/
    0x00000100U,
    /* Configuration value for G9REQTM register*/
    0x00000000U,
    /*Bit Mask for all the analog channels configured for the group*/
    0x0001U,
    /*Bit Mask for all the result registers configured for the group*/
    0x0001U,
    /*Bit Mask for all the analog channels configured for synchronous conversion*/
    0x0000U,
    /*Bit Mask for all the result registers configured for synchronous conversion*/
    0x0000U,
    ADC_TRIGG_SRC_SW,
    ADC_CONV_MODE_ONESHOT,
    ADC_ACCESS_MODE_SINGLE,
    ADC_STREAM_BUFFER_LINEAR,
    1U, /*Number of streaming samples for the group*/
    ADC_OTHER_HW_USED, /*HW peripheral used for Trigger*/
    ADC_OTHER_HW_USED, /*HW peripheral used for Gate*/
    2U, /*Priority Level for the group*/
    1U, /*Channel Count for the group*/
    0U /*Limit Check enabled for the group*/
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*****Group Configuration Definition of HW Unit 10 ******/
static const Adc_GroupCfgType Adc_kHwUnit10Grp_Config[1]=
{

  {/*Group Configuration structure for AdcGroup_10 - ID320*/
    /*
      Group Properties:
      Trigger Source: ADC_TRIGG_SRC_SW
      Trigger Edge: 
      HW Trigger Source: ADC_TRIG_NONE
      HW Gate Source: ADC_GATE_NONE
      Gate Level: ADC_GATE_LVL_LOW
    */
    /* Notification Function Address */
    AdcGroup10_Notification,
    /*Address for Group Definition Structure*/
    &Adc_kHwUnit10GrpAdcGroup_10_Config[0U],
    /*Address for the GTM trigger configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)0U,
    /*Address for the GTM gate configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)0U,
    /*Address for the ERU trigger configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Address for the ERU gate configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Configuration value for the G10QCTRL register*/
    0x00000000U,
    /*Configuration value for the G10QMR register*/
    0x00000001U,
    /*Configuration value for the G10ALIAS register*/
    0x00000100U,
    /* Configuration value for G10REQTM register*/
    0x00000000U,
    /*Bit Mask for all the analog channels configured for the group*/
    0x0001U,
    /*Bit Mask for all the result registers configured for the group*/
    0x0001U,
    /*Bit Mask for all the analog channels configured for synchronous conversion*/
    0x0000U,
    /*Bit Mask for all the result registers configured for synchronous conversion*/
    0x0000U,
    ADC_TRIGG_SRC_SW,
    ADC_CONV_MODE_ONESHOT,
    ADC_ACCESS_MODE_SINGLE,
    ADC_STREAM_BUFFER_LINEAR,
    1U, /*Number of streaming samples for the group*/
    ADC_OTHER_HW_USED, /*HW peripheral used for Trigger*/
    ADC_OTHER_HW_USED, /*HW peripheral used for Gate*/
    2U, /*Priority Level for the group*/
    1U, /*Channel Count for the group*/
    0U /*Limit Check enabled for the group*/
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*****Group Configuration Definition of HW Unit 11 ******/
static const Adc_GroupCfgType Adc_kHwUnit11Grp_Config[1]=
{

  {/*Group Configuration structure for AdcGroup_11 - ID352*/
    /*
      Group Properties:
      Trigger Source: ADC_TRIGG_SRC_HW
      Trigger Edge: ADC_HW_TRIG_RISING_EDGE
      HW Trigger Source: ADC_TRIG_10_GxREQTRK_GTM_ADCx_TRIG2
      HW Gate Source: ADC_GATE_NONE
      Gate Level: ADC_GATE_LVL_LOW
    */
    /* Notification Function Address */
    AdcGroup11_Notification,
    /*Address for Group Definition Structure*/
    &Adc_kHwUnit11GrpAdcGroup_11_Config[0U],
    /*Address for the GTM trigger configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)&Adc_kHwUnit11GrpAdcGroup_11GtmTrig_Config,
    /*Address for the GTM gate configuration structure*/
    (const Mcu_17_Gtm_TomAtomChConfigType *)0U,
    /*Address for the ERU trigger configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Address for the ERU gate configuration structure*/
    (const Adc_EruChannelCfgType *)0U,
    /*Configuration value for the G11QCTRL register*/
    0x00004a00U,
    /*Configuration value for the G11QMR register*/
    0x00000005U,
    /*Configuration value for the G11ALIAS register*/
    0x00000100U,
    /* Configuration value for G11REQTM register*/
    0x00000000U,
    /*Bit Mask for all the analog channels configured for the group*/
    0x0042U,
    /*Bit Mask for all the result registers configured for the group*/
    0x0006U,
    /*Bit Mask for all the analog channels configured for synchronous conversion*/
    0x0000U,
    /*Bit Mask for all the result registers configured for synchronous conversion*/
    0x0000U,
    ADC_TRIGG_SRC_HW,
    ADC_CONV_MODE_ONESHOT,
    ADC_ACCESS_MODE_SINGLE,
    ADC_STREAM_BUFFER_CIRCULAR,
    1U, /*Number of streaming samples for the group*/
    ADC_GTM_HW_USED, /*HW peripheral used for Trigger*/
    ADC_OTHER_HW_USED, /*HW peripheral used for Gate*/
    2U, /*Priority Level for the group*/
    2U, /*Channel Count for the group*/
    0U /*Limit Check enabled for the group*/
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"



/***********************Channel Configuration Definition***********************/
/*****Channel Configuration Definition of HW Unit 1 *****/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_ChannelCfgType Adc_kHwUnit1Ch_Config[1]=
{
  {
    0x00000400U, /*Configuration value for the G1CHCTR0 register*/
    0x00000000U, /*Configuration value for the G1BOUND register*/
    0U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*****Channel Configuration Definition of HW Unit 2 *****/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_ChannelCfgType Adc_kHwUnit2Ch_Config[7]=
{
  {
    0x00000400U, /*Configuration value for the G2CHCTR0 register*/
    0x00000000U, /*Configuration value for the G2BOUND register*/
    0U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G2CHCTR2 register*/
    0x00000000U, /*Configuration value for the G2BOUND register*/
    2U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G2CHCTR3 register*/
    0x00000000U, /*Configuration value for the G2BOUND register*/
    3U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G2CHCTR4 register*/
    0x00000000U, /*Configuration value for the G2BOUND register*/
    4U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G2CHCTR5 register*/
    0x00000000U, /*Configuration value for the G2BOUND register*/
    5U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G2CHCTR6 register*/
    0x00000000U, /*Configuration value for the G2BOUND register*/
    6U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G2CHCTR7 register*/
    0x00000000U, /*Configuration value for the G2BOUND register*/
    7U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*****Channel Configuration Definition of HW Unit 3 *****/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_ChannelCfgType Adc_kHwUnit3Ch_Config[5]=
{
  {
    0x00000400U, /*Configuration value for the G3CHCTR0 register*/
    0x00000000U, /*Configuration value for the G3BOUND register*/
    0U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G3CHCTR1 register*/
    0x00000000U, /*Configuration value for the G3BOUND register*/
    1U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G3CHCTR2 register*/
    0x00000000U, /*Configuration value for the G3BOUND register*/
    2U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G3CHCTR3 register*/
    0x00000000U, /*Configuration value for the G3BOUND register*/
    3U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G3CHCTR4 register*/
    0x00000000U, /*Configuration value for the G3BOUND register*/
    4U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*****Channel Configuration Definition of HW Unit 8 *****/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_ChannelCfgType Adc_kHwUnit8Ch_Config[5]=
{
  {
    0x00000400U, /*Configuration value for the G8CHCTR0 register*/
    0x00000000U, /*Configuration value for the G8BOUND register*/
    0U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G8CHCTR1 register*/
    0x00000000U, /*Configuration value for the G8BOUND register*/
    1U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G8CHCTR7 register*/
    0x00000000U, /*Configuration value for the G8BOUND register*/
    7U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G8CHCTR12 register*/
    0x00000000U, /*Configuration value for the G8BOUND register*/
    12U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G8CHCTR14 register*/
    0x00000000U, /*Configuration value for the G8BOUND register*/
    14U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*****Channel Configuration Definition of HW Unit 9 *****/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_ChannelCfgType Adc_kHwUnit9Ch_Config[1]=
{
  {
    0x00000400U, /*Configuration value for the G9CHCTR0 register*/
    0x00000000U, /*Configuration value for the G9BOUND register*/
    0U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*****Channel Configuration Definition of HW Unit 10 *****/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_ChannelCfgType Adc_kHwUnit10Ch_Config[1]=
{
  {
    0x00000400U, /*Configuration value for the G10CHCTR0 register*/
    0x00000000U, /*Configuration value for the G10BOUND register*/
    0U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/*****Channel Configuration Definition of HW Unit 11 *****/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_ChannelCfgType Adc_kHwUnit11Ch_Config[3]=
{
  {
    0x00000400U, /*Configuration value for the G11CHCTR0 register*/
    0x00000000U, /*Configuration value for the G11BOUND register*/
    0U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G11CHCTR1 register*/
    0x00000000U, /*Configuration value for the G11BOUND register*/
    1U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  },
  {
    0x00000000U, /*Configuration value for the G11CHCTR6 register*/
    0x00000000U, /*Configuration value for the G11BOUND register*/
    6U, /*Analog Channel number for the corresponding Logical Channel*/
    0U /*Limit Check channel or not */
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/********************HW Unit Converter Configurations********************/

/**HW Unit 1 Converter Configurations **/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_HwCfgType Adc_kHwUnit1Hw_Config=
{
  0x00980004U, /*Configuration value for G1ANCFG register*/
  0x00000003U, /*Configuration value for G1ARBCFG register*/
  0x07000210U, /*Configuration value for G1ARBPR register*/
  0x00000002U, /*Configuration value for G1ICLASS0 register*/
  0x00000002U, /*Configuration value for G1ICLASS1 register*/
  0x00000060U /*Configuration value for G1SYNCTR register*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"



/**HW Unit 2 Converter Configurations **/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_HwCfgType Adc_kHwUnit2Hw_Config=
{
  0x00980004U, /*Configuration value for G2ANCFG register*/
  0x00000000U, /*Configuration value for G2ARBCFG register*/
  0x07000210U, /*Configuration value for G2ARBPR register*/
  0x00000002U, /*Configuration value for G2ICLASS0 register*/
  0x00000002U, /*Configuration value for G2ICLASS1 register*/
  0x00000062U /*Configuration value for G2SYNCTR register*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"



/**HW Unit 3 Converter Configurations **/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_HwCfgType Adc_kHwUnit3Hw_Config=
{
  0x00980004U, /*Configuration value for G3ANCFG register*/
  0x00000000U, /*Configuration value for G3ARBCFG register*/
  0x07000210U, /*Configuration value for G3ARBPR register*/
  0x00000002U, /*Configuration value for G3ICLASS0 register*/
  0x00000002U, /*Configuration value for G3ICLASS1 register*/
  0x00000062U /*Configuration value for G3SYNCTR register*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"



/**HW Unit 8 Converter Configurations **/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_HwCfgType Adc_kHwUnit8Hw_Config=
{
  0x00980004U, /*Configuration value for G8ANCFG register*/
  0x00000003U, /*Configuration value for G8ARBCFG register*/
  0x07000210U, /*Configuration value for G8ARBPR register*/
  0x00000002U, /*Configuration value for G8ICLASS0 register*/
  0x00000002U, /*Configuration value for G8ICLASS1 register*/
  0x00000070U /*Configuration value for G8SYNCTR register*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"



/**HW Unit 9 Converter Configurations **/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_HwCfgType Adc_kHwUnit9Hw_Config=
{
  0x00980004U, /*Configuration value for G9ANCFG register*/
  0x00000000U, /*Configuration value for G9ARBCFG register*/
  0x07000210U, /*Configuration value for G9ARBPR register*/
  0x00000002U, /*Configuration value for G9ICLASS0 register*/
  0x00000002U, /*Configuration value for G9ICLASS1 register*/
  0x00000071U /*Configuration value for G9SYNCTR register*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"



/**HW Unit 10 Converter Configurations **/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_HwCfgType Adc_kHwUnit10Hw_Config=
{
  0x00980004U, /*Configuration value for G10ANCFG register*/
  0x00000000U, /*Configuration value for G10ARBCFG register*/
  0x07000210U, /*Configuration value for G10ARBPR register*/
  0x00000002U, /*Configuration value for G10ICLASS0 register*/
  0x00000002U, /*Configuration value for G10ICLASS1 register*/
  0x00000071U /*Configuration value for G10SYNCTR register*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"



/**HW Unit 11 Converter Configurations **/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_HwCfgType Adc_kHwUnit11Hw_Config=
{
  0x00980004U, /*Configuration value for G11ANCFG register*/
  0x00000000U, /*Configuration value for G11ARBCFG register*/
  0x07000210U, /*Configuration value for G11ARBPR register*/
  0x00000002U, /*Configuration value for G11ICLASS0 register*/
  0x00000002U, /*Configuration value for G11ICLASS1 register*/
  0x00000071U /*Configuration value for G11SYNCTR register*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"



/***************************HW Unit Configuration ***************************/

/*************HW Unit 1 Configuration **************/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
   #define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_HwUnitCfgType Adc_kHwUnit1_Config=
{
  &Adc_kHwUnit1Hw_Config, /*Analog Converter Configuration*/
  &Adc_kHwUnit1Ch_Config[0U], /*Channel Configuration structure*/
  &Adc_kHwUnit1Grp_Config[0U], /*Group Configuration structure*/
  0x00000000U, /* Mask for SW triggered groups*/
  0x00000001U,/* Mask for HW triggered groups*/
  ADC_SYNC_CONV_MODE_MASTER, /* Synchronous conversion mode */
  { 0x02U, 0x03U, 0xffU }, /* Slave Kernels */
  1U, /* Group Count for HW Unit 1*/
  7U /* Bit Mask for SRNs used for HW Unit 1*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/*************HW Unit 2 Configuration **************/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
   #define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_HwUnitCfgType Adc_kHwUnit2_Config=
{
  &Adc_kHwUnit2Hw_Config, /*Analog Converter Configuration*/
  &Adc_kHwUnit2Ch_Config[0U], /*Channel Configuration structure*/
  &Adc_kHwUnit2Grp_Config[0U], /*Group Configuration structure*/
  0x00000000U, /* Mask for SW triggered groups*/
  0x00000001U,/* Mask for HW triggered groups*/
  ADC_SYNC_CONV_MODE_SLAVE, /* Synchronous conversion mode */
  { 0xffU, 0xffU, 0xffU }, /* Slave Kernels */
  1U, /* Group Count for HW Unit 2*/
  7U /* Bit Mask for SRNs used for HW Unit 2*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/*************HW Unit 3 Configuration **************/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
   #define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_HwUnitCfgType Adc_kHwUnit3_Config=
{
  &Adc_kHwUnit3Hw_Config, /*Analog Converter Configuration*/
  &Adc_kHwUnit3Ch_Config[0U], /*Channel Configuration structure*/
  &Adc_kHwUnit3Grp_Config[0U], /*Group Configuration structure*/
  0x00000000U, /* Mask for SW triggered groups*/
  0x00000001U,/* Mask for HW triggered groups*/
  ADC_SYNC_CONV_MODE_SLAVE, /* Synchronous conversion mode */
  { 0xffU, 0xffU, 0xffU }, /* Slave Kernels */
  1U, /* Group Count for HW Unit 3*/
  7U /* Bit Mask for SRNs used for HW Unit 3*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/*************HW Unit 8 Configuration **************/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
   #define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_HwUnitCfgType Adc_kHwUnit8_Config=
{
  &Adc_kHwUnit8Hw_Config, /*Analog Converter Configuration*/
  &Adc_kHwUnit8Ch_Config[0U], /*Channel Configuration structure*/
  &Adc_kHwUnit8Grp_Config[0U], /*Group Configuration structure*/
  0x00000000U, /* Mask for SW triggered groups*/
  0x00000003U,/* Mask for HW triggered groups*/
  ADC_SYNC_CONV_MODE_MASTER, /* Synchronous conversion mode */
  { 0x09U, 0x0aU, 0x0bU }, /* Slave Kernels */
  2U, /* Group Count for HW Unit 8*/
  7U /* Bit Mask for SRNs used for HW Unit 8*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/*************HW Unit 9 Configuration **************/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
   #define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_HwUnitCfgType Adc_kHwUnit9_Config=
{
  &Adc_kHwUnit9Hw_Config, /*Analog Converter Configuration*/
  &Adc_kHwUnit9Ch_Config[0U], /*Channel Configuration structure*/
  &Adc_kHwUnit9Grp_Config[0U], /*Group Configuration structure*/
  0x00000001U, /* Mask for SW triggered groups*/
  0x00000000U,/* Mask for HW triggered groups*/
  ADC_SYNC_CONV_MODE_SLAVE, /* Synchronous conversion mode */
  { 0xffU, 0xffU, 0xffU }, /* Slave Kernels */
  1U, /* Group Count for HW Unit 9*/
  7U /* Bit Mask for SRNs used for HW Unit 9*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/*************HW Unit 10 Configuration **************/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
   #define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_HwUnitCfgType Adc_kHwUnit10_Config=
{
  &Adc_kHwUnit10Hw_Config, /*Analog Converter Configuration*/
  &Adc_kHwUnit10Ch_Config[0U], /*Channel Configuration structure*/
  &Adc_kHwUnit10Grp_Config[0U], /*Group Configuration structure*/
  0x00000001U, /* Mask for SW triggered groups*/
  0x00000000U,/* Mask for HW triggered groups*/
  ADC_SYNC_CONV_MODE_SLAVE, /* Synchronous conversion mode */
  { 0xffU, 0xffU, 0xffU }, /* Slave Kernels */
  1U, /* Group Count for HW Unit 10*/
  7U /* Bit Mask for SRNs used for HW Unit 10*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/*************HW Unit 11 Configuration **************/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
   #define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_HwUnitCfgType Adc_kHwUnit11_Config=
{
  &Adc_kHwUnit11Hw_Config, /*Analog Converter Configuration*/
  &Adc_kHwUnit11Ch_Config[0U], /*Channel Configuration structure*/
  &Adc_kHwUnit11Grp_Config[0U], /*Group Configuration structure*/
  0x00000000U, /* Mask for SW triggered groups*/
  0x00000001U,/* Mask for HW triggered groups*/
  ADC_SYNC_CONV_MODE_SLAVE, /* Synchronous conversion mode */
  { 0xffU, 0xffU, 0xffU }, /* Slave Kernels */
  1U, /* Group Count for HW Unit 11*/
  7U /* Bit Mask for SRNs used for HW Unit 11*/
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
/******************Global Configuration*******************/

static const Adc_GlobalCfgType Adc_kGlob_Config=
{
  0x00000000U, /*Configuration value for GLOBCFG register */
  0x00000002U, /*Configuration value for GLOBICLASS0 register */
  0x00000002U /*Configuration value for GLOBICLASS1 register */
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


/***************************Core Configuration ***************************/

/*******Core0 Configuration*******/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
static const Adc_CoreConfigType Adc_kCore0_Config=
{
  {
    (Adc_HwUnitCfgType*)0U, /* HW Unit 1 Configuration */
    &Adc_kHwUnit1_Config, /* HW Unit 2 Configuration */
    &Adc_kHwUnit2_Config, /* HW Unit 3 Configuration */
    &Adc_kHwUnit3_Config, /* HW Unit 4 Configuration */
    (Adc_HwUnitCfgType*)0U, /* HW Unit 5 Configuration */
    (Adc_HwUnitCfgType*)0U, /* HW Unit 6 Configuration */
    (Adc_HwUnitCfgType*)0U, /* HW Unit 7 Configuration */
    (Adc_HwUnitCfgType*)0U, /* HW Unit 8 Configuration */
    &Adc_kHwUnit8_Config, /* HW Unit 9 Configuration */
    &Adc_kHwUnit9_Config, /* HW Unit 10 Configuration */
    &Adc_kHwUnit10_Config, /* HW Unit 11 Configuration */
    &Adc_kHwUnit11_Config /* HW Unit 12 Configuration */
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"
  

/*******Configuration Root*******/
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/ 
#define ADC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar 
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"

/* MISRA2012_RULE_8_7_JUSTIFICATION: Module configuration data structure
   declaration is as per Autosar guidelines. This data structure is needed
   by SW units using Adc Driver APIs hence it should be declared as extern in 
   the SW unit from where it is used */
/* MISRA2012_RULE_8_4_JUSTIFICATION: Module configuration data structure
   declaration is as per Autosar guidelines. This data structure is needed
   by SW units using Adc Driver APIs hence it should be declared as extern in 
   the SW unit from where it is used */
const Adc_ConfigType Adc_Config=
{
  &Adc_kGlob_Config, /* Global Configuration */
  {
    &Adc_kCore0_Config, /* Core0 Configuration */
    (const Adc_CoreConfigType*)0U, /* Core1 Configuration */
    (const Adc_CoreConfigType*)0U /* Core2 Configuration */
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_2_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_4_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/
/* MISRA2012_RULE_5_5_JUSTIFICATION:Compiler supports macro names going beyond 
   32 chars and this macro is used only inside the ADC module*/

#define ADC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */ 
#include "Adc_MemMap.h"


