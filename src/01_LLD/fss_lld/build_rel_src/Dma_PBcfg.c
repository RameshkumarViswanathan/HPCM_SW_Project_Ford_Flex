/*******************************************************************************
**                                                                            **
** Copyright (C) Infineon Technologies (2021)                                 **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This document contains proprietary information belonging to Infineon       **
** Technologies. Passing on and copying of this document, and communication   **
** of its contents is not permitted without prior written authorization.      **
**                                                                            **
********************************************************************************
**                                                                            **
**  FILENAME  : Dma_PBCfg.c                                                   **
**                                                                            **
**  VERSION   : 16.0.0                                                        **
**                                                                            **
**  DATE, TIME: 2024-01-10, 17:28:50               !!!IGNORE-LINE!!!          **
**                                                                            **
**  GENERATOR : Build b191017-0938                 !!!IGNORE-LINE!!!          **
**                                                                            **
**  BSW MODULE DECRIPTION : NA                                                **
**                                                                            **
**  VARIANT   : Variant PB                                                    **
**                                                                            **
**  PLATFORM  : Infineon AURIX2G                                              **
**                                                                            **
**  AUTHOR    : DL-AUTOSAR-Engineering                                        **
**                                                                            **
**  VENDOR    : Infineon Technologies                                         **
**                                                                            **
**  DESCRIPTION  : Dma configuration generated out of ECUC file               **
**                                                                            **
**  SPECIFICATION(S) : NA                                                     **
**                                                                            **
**  MAY BE CHANGED BY USER : no                                               **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                            Includes                                        **
*******************************************************************************/
/* Include module header file */
#include "Dma.h"

/*******************************************************************************
**                    Customer specific includes                              **
*******************************************************************************/

/*******************************************************************************
**          Channel specific move engine error notification functions         **
*******************************************************************************/

/* User defined move engine error notification functions to be called by DMA driver in case
 * of error  */
/* Channel specific Error notification function for Channel 31  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 32  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 33  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 21  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 22  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 23  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 24  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 25  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 26  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 27  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 28  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 29  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 30  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 11  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 12  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 13  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 14  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 15  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 16  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 17  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 18  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 19  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 20  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 34  */ 
/* <**No notification function is configured for this Channel**> */
/* Channel specific Error notification function for Channel 37  */ 
/* <**No notification function is configured for this Channel**> */
  
/* ************************************************************************** */

/*******************************************************************************
**              Channel specific notification functions                       **
*******************************************************************************/

/* User defined notification functions for channels to be called by
 * the DMA driver in case of channel interrupts */
/* Channel specific notification function for Channel 31  */
extern void DmaCh31_AdcG3_Ch0_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 32  */
extern void DmaCh32_AdcG2_Ch0_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 33  */
extern void DmaCh33_AdcG1_Ch0_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 21  */
extern void DmaCh21_AdcG11_Ch0_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 22  */
extern void DmaCh22_AdcG10_Ch0_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 23  */
extern void DmaCh23_AdcG9_Ch0_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 24  */
extern void DmaCh24_AdcG8_Ch0_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 25  */
extern void DmaCh25_AdcG8_Ch1_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 26  */
extern void DmaCh26_AdcG8_Ch7_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 27  */
extern void DmaCh27_AdcG8_Ch12_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 28  */
extern void DmaCh28_AdcG8_Ch14_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 29  */
extern void DmaCh29_AdcG11_Ch1_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 30  */
extern void DmaCh30_AdcG11_Ch6_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 11  */
extern void DmaCh11_AdcG2_Ch2_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 12  */
extern void DmaCh12_AdcG2_Ch3_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 13  */
extern void DmaCh13_AdcG2_Ch4_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 14  */
extern void DmaCh14_AdcG2_Ch5_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 15  */
extern void DmaCh15_AdcG2_Ch6_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 16  */
extern void DmaCh16_AdcG2_Ch7_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 17  */
extern void DmaCh17_AdcG3_Ch1_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 18  */
extern void DmaCh18_AdcG3_Ch2_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 19  */
extern void DmaCh19_AdcG3_Ch3_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 20  */
extern void DmaCh20_AdcG3_Ch4_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 34  */
extern void DmaCh34_DSADC_Ch0_Notification(uint8 Channel, uint32 Event);
/* Channel specific notification function for Channel 37  */
extern void DmaCh37_DSADC_Ch3_Notification(uint8 Channel, uint32 Event);
/* ******************************************************************* */


/* ***************** Configuration of the TCSes ***************** */
                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 31 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_31_TcsConfigRoot[]=
{
  /* Dma Channel 31 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x00300001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 32 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_32_TcsConfigRoot[]=
{
  /* Dma Channel 32 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 33 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_33_TcsConfigRoot[]=
{
  /* Dma Channel 33 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 21 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_21_TcsConfigRoot[]=
{
  /* Dma Channel 21 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x00300001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 22 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_22_TcsConfigRoot[]=
{
  /* Dma Channel 22 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 23 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_23_TcsConfigRoot[]=
{
  /* Dma Channel 23 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 24 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_24_TcsConfigRoot[]=
{
  /* Dma Channel 24 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 25 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_25_TcsConfigRoot[]=
{
  /* Dma Channel 25 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x00300001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 26 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_26_TcsConfigRoot[]=
{
  /* Dma Channel 26 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 27 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_27_TcsConfigRoot[]=
{
  /* Dma Channel 27 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 28 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_28_TcsConfigRoot[]=
{
  /* Dma Channel 28 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 29 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_29_TcsConfigRoot[]=
{
  /* Dma Channel 29 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x00300001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 30 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_30_TcsConfigRoot[]=
{
  /* Dma Channel 30 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 11 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_11_TcsConfigRoot[]=
{
  /* Dma Channel 11 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x00300001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 12 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_12_TcsConfigRoot[]=
{
  /* Dma Channel 12 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 13 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_13_TcsConfigRoot[]=
{
  /* Dma Channel 13 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 14 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_14_TcsConfigRoot[]=
{
  /* Dma Channel 14 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 15 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_15_TcsConfigRoot[]=
{
  /* Dma Channel 15 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 16 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_16_TcsConfigRoot[]=
{
  /* Dma Channel 16 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 17 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_17_TcsConfigRoot[]=
{
  /* Dma Channel 17 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x00300001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 18 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_18_TcsConfigRoot[]=
{
  /* Dma Channel 18 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 19 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_19_TcsConfigRoot[]=
{
  /* Dma Channel 19 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 20 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_20_TcsConfigRoot[]=
{
  /* Dma Channel 20 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x10380001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 34 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_34_TcsConfigRoot[]=
{
  /* Dma Channel 34 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x00300001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

                    
          
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going
* beyond 32 chars because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is
* repeatedly included without include guard. This is
* as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of
* MoveEngine Notification before #include memap.h
* - Accepted deviation in AUTOSAR */


#include "Dma_MemMap.h"

/* DMA channel 37 Transaction set control Configuration */
static const Dma_TransactionCtrlSetType Dma_kChannel_37_TcsConfigRoot[]=
{
  /* Dma Channel 37 TCS 0 */
  {
    /* Configuration for DMA source address register DMA_SADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */                  
    (uint32 *)NULL_PTR,
    /* Configuration for DMA destination address register DMA_DADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
    (uint32 *)NULL_PTR,
    /* Configuration for DMA Channel Address and Interrupt Control
    * Register DMA_ADICRz */
    0x08300088U,
    /* Configuration for DMA Channel Configuration Register DMA_CHCFGRz */
    0x00300001U,
    /* Configuration for DMA Channel Shadow Address Register DMA_SHADRz */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: Memory address is generated as a numerical value 
    configuration and in code, it is accessed as a pointer to the RAM address. Hence an 
    explicit typecast from integer to uint32 based pointer. */ 
  }
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_256
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"

/* ************************************************************** */

/* *************** Channel root configuration list ************** */


/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"
/* Configuration of all the DMA channels */
static const Dma_ChConfigType Dma_kChConfigRoot_Core0[]=
{
  {
    &Dma_kChannel_31_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh31_AdcG3_Ch0_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)31U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_32_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh32_AdcG2_Ch0_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)32U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_33_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh33_AdcG1_Ch0_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)33U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_21_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh21_AdcG11_Ch0_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)21U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_22_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh22_AdcG10_Ch0_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)22U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_23_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh23_AdcG9_Ch0_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)23U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_24_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh24_AdcG8_Ch0_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)24U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_25_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh25_AdcG8_Ch1_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)25U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_26_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh26_AdcG8_Ch7_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)26U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_27_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh27_AdcG8_Ch12_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)27U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_28_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh28_AdcG8_Ch14_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)28U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_29_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh29_AdcG11_Ch1_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)29U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_30_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh30_AdcG11_Ch6_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)30U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_11_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh11_AdcG2_Ch2_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)11U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_12_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh12_AdcG2_Ch3_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)12U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_13_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh13_AdcG2_Ch4_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)13U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_14_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh14_AdcG2_Ch5_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)14U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_15_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh15_AdcG2_Ch6_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)15U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_16_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh16_AdcG2_Ch7_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)16U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_17_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh17_AdcG3_Ch1_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)17U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_18_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh18_AdcG3_Ch2_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)18U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_19_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh19_AdcG3_Ch3_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)19U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_20_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh20_AdcG3_Ch4_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)20U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_34_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh34_DSADC_Ch0_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)34U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  },
  {
    &Dma_kChannel_37_TcsConfigRoot[0U], /* TCS config Root */
    DmaCh37_DSADC_Ch3_Notification, /* Channel Notification */
    0x00000010U, /* TSR configuration */
    (uint8)37U, /* Dma Channel ID */
    (uint8)0x0U, /* Channel Assigned partition */
    NULL_PTR /* Error Notification */
  }};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"


/* *************************************************************** */
/* ************* Configuration structure of each core ************* */
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"
static const Dma_CoreSpecificChConfigType Dma_ChConfigRootCore0=
{
  /* Core specific config pointer */
  &Dma_kChConfigRoot_Core0[0],
  /* Total number of DMA channels in core 0 */
  25
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"
/* **************************************************************** */

/* ************* Base Configuration Structure of DMA ************* */
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/  
#define DMA_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
#include "Dma_MemMap.h"
const Dma_ConfigType Dma_Config=
{
  {
    /* Channel Configuration root for Core 0*/
    /* This is the number of resources:0 */
    &Dma_ChConfigRootCore0,
    /* Channel Configuration root for Core 1*/
    /* This is the number of resources:0 */
    NULL_PTR,
    /* Channel Configuration root for Core 2*/
    /* This is the number of resources:0 */
    NULL_PTR,
  },
  /* MoveEngine Error config for ME0 and ME1 */
  {0X00000000U,0X00000000U}, 
  
  
  /* Access partition configuration */
  {
    /* Bus master configuration */
    {0XFFFFFFFFU,0XFFFFFFFFU,0XFFFFFFFFU,0XFFFFFFFFU},
    /* Resource partition configuration */
    {  0X00U,  0X00U,  0X00U,  0X00U}
  },
  /* { Channel Position Index, Channel Core Map } - The mapping data of channels */
  {
    {255, 255 }, /* Channel 0 */
    {255, 255 }, /* Channel 1 */
    {255, 255 }, /* Channel 2 */
    {255, 255 }, /* Channel 3 */
    {255, 255 }, /* Channel 4 */
    {255, 255 }, /* Channel 5 */
    {255, 255 }, /* Channel 6 */
    {255, 255 }, /* Channel 7 */
    {255, 255 }, /* Channel 8 */
    {255, 255 }, /* Channel 9 */
    {255, 255 }, /* Channel 10 */
    {13, 0 }, /* Channel 11 */
    {14, 0 }, /* Channel 12 */
    {15, 0 }, /* Channel 13 */
    {16, 0 }, /* Channel 14 */
    {17, 0 }, /* Channel 15 */
    {18, 0 }, /* Channel 16 */
    {19, 0 }, /* Channel 17 */
    {20, 0 }, /* Channel 18 */
    {21, 0 }, /* Channel 19 */
    {22, 0 }, /* Channel 20 */
    {3, 0 }, /* Channel 21 */
    {4, 0 }, /* Channel 22 */
    {5, 0 }, /* Channel 23 */
    {6, 0 }, /* Channel 24 */
    {7, 0 }, /* Channel 25 */
    {8, 0 }, /* Channel 26 */
    {9, 0 }, /* Channel 27 */
    {10, 0 }, /* Channel 28 */
    {11, 0 }, /* Channel 29 */
    {12, 0 }, /* Channel 30 */
    {0, 0 }, /* Channel 31 */
    {1, 0 }, /* Channel 32 */
    {2, 0 }, /* Channel 33 */
    {23, 0 }, /* Channel 34 */
    {255, 255 }, /* Channel 35 */
    {255, 255 }, /* Channel 36 */
    {24, 0 }, /* Channel 37 */
    {255, 255 }, /* Channel 38 */
    {255, 255 }, /* Channel 39 */
    {255, 255 }, /* Channel 40 */
    {255, 255 }, /* Channel 41 */
    {255, 255 }, /* Channel 42 */
    {255, 255 }, /* Channel 43 */
    {255, 255 }, /* Channel 44 */
    {255, 255 }, /* Channel 45 */
    {255, 255 }, /* Channel 46 */
    {255, 255 }, /* Channel 47 */
    {255, 255 }, /* Channel 48 */
    {255, 255 }, /* Channel 49 */
    {255, 255 }, /* Channel 50 */
    {255, 255 }, /* Channel 51 */
    {255, 255 }, /* Channel 52 */
    {255, 255 }, /* Channel 53 */
    {255, 255 }, /* Channel 54 */
    {255, 255 }, /* Channel 55 */
    {255, 255 }, /* Channel 56 */
    {255, 255 }, /* Channel 57 */
    {255, 255 }, /* Channel 58 */
    {255, 255 }, /* Channel 59 */
    {255, 255 }, /* Channel 60 */
    {255, 255 }, /* Channel 61 */
    {255, 255 }, /* Channel 62 */
    {255, 255 }, /* Channel 63 */
    {255, 255 }, /* Channel 64 */
    {255, 255 }, /* Channel 65 */
    {255, 255 }, /* Channel 66 */
    {255, 255 }, /* Channel 67 */
    {255, 255 }, /* Channel 68 */
    {255, 255 }, /* Channel 69 */
    {255, 255 }, /* Channel 70 */
    {255, 255 }, /* Channel 71 */
    {255, 255 }, /* Channel 72 */
    {255, 255 }, /* Channel 73 */
    {255, 255 }, /* Channel 74 */
    {255, 255 }, /* Channel 75 */
    {255, 255 }, /* Channel 76 */
    {255, 255 }, /* Channel 77 */
    {255, 255 }, /* Channel 78 */
    {255, 255 }, /* Channel 79 */
    {255, 255 }, /* Channel 80 */
    {255, 255 }, /* Channel 81 */
    {255, 255 }, /* Channel 82 */
    {255, 255 }, /* Channel 83 */
    {255, 255 }, /* Channel 84 */
    {255, 255 }, /* Channel 85 */
    {255, 255 }, /* Channel 86 */
    {255, 255 }, /* Channel 87 */
    {255, 255 }, /* Channel 88 */
    {255, 255 }, /* Channel 89 */
    {255, 255 }, /* Channel 90 */
    {255, 255 }, /* Channel 91 */
    {255, 255 }, /* Channel 92 */
    {255, 255 }, /* Channel 93 */
    {255, 255 }, /* Channel 94 */
    {255, 255 }, /* Channel 95 */
    {255, 255 }, /* Channel 96 */
    {255, 255 }, /* Channel 97 */
    {255, 255 }, /* Channel 98 */
    {255, 255 }, /* Channel 99 */
    {255, 255 }, /* Channel 100 */
    {255, 255 }, /* Channel 101 */
    {255, 255 }, /* Channel 102 */
    {255, 255 }, /* Channel 103 */
    {255, 255 }, /* Channel 104 */
    {255, 255 }, /* Channel 105 */
    {255, 255 }, /* Channel 106 */
    {255, 255 }, /* Channel 107 */
    {255, 255 }, /* Channel 108 */
    {255, 255 }, /* Channel 109 */
    {255, 255 }, /* Channel 110 */
    {255, 255 }, /* Channel 111 */
    {255, 255 }, /* Channel 112 */
    {255, 255 }, /* Channel 113 */
    {255, 255 }, /* Channel 114 */
    {255, 255 }, /* Channel 115 */
    {255, 255 }, /* Channel 116 */
    {255, 255 }, /* Channel 117 */
    {255, 255 }, /* Channel 118 */
    {255, 255 }, /* Channel 119 */
    {255, 255 }, /* Channel 120 */
    {255, 255 }, /* Channel 121 */
    {255, 255 }, /* Channel 122 */
    {255, 255 }, /* Channel 123 */
    {255, 255 }, /* Channel 124 */
    {255, 255 }, /* Channel 125 */
    {255, 255 }, /* Channel 126 */
    {255, 255 }, /* Channel 127 */
  },
  {
    /* Bit map of the channels with TRL enabled */
    0xfffff800U,
    0x27U,
    0x0U,
    0x0U,
  },
  /* Total number of DMA channels */
  0X00000019U,
};
/* ************************************************************** */


/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
* because of naming convention*/
#define DMA_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
/* MISRA2012_RULE_4_10_JUSTIFICATION: Dma_Memmap.h is repeatedly included
* without include guard. This is as per AUTOSAR */
/* MISRA2012_RULE_20_1_JUSTIFICATION: declaration of MoveEngine Notification
* before #include memap.h - Accepted deviation in AUTOSAR */
#include "Dma_MemMap.h"
