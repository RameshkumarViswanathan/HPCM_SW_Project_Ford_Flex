#ifndef TLF35585_CFG_H_
#define TLF35585_CFG_H_

/*====================================================================================================================*/
/*  <MESSAGE ID>    <CODE LINE>    <REASON>
 *
 */
/*====================================================================================================================*/


/*====================================================================================================================*/
/*                                                     Includes                                                       */
/*====================================================================================================================*/
#include "Spi.h"
/*====================================================================================================================*/
/*                                          TLF35585Lib Macro Definitions                                             */
/*====================================================================================================================*/
#define     TLF35585LIB_VERSION_MAJOR        		(uint8)0x01U
#define     TLF35585LIB_VERSION_MINOR        		(uint8)0x00U
#define     TLF35585LIB_VERSION_PATCH        		(uint8)0x0AU

#define     TLF35585_MAX_ADDRESS                ((uint8)0x3FU)    
#define     TLF35585_SLEEP_TIME_MIN             ((uint32)0U)      
#define     TLF35585_SLEEP_TIME_MAX             ((uint32)2796U)  

/*====================================================================================================================*/
/*                                   MUNIU Tool Generate Macro Definitions                                            */
/*====================================================================================================================*/
#define     TLF35585_CLOCK_uC_STM               ((uint32)100)    /* uint:MHz */
#define     TLF35585_MAX_EBBUFF			        ((uint8)30U)      
#define     TLF35585_MAX_DELAY_TIME		       	  ((uint16)5000U)   
#define     TLF35585_SHUT_DOWN_DELAY_TIME       ((uint16)100U)   

#define     SpiChannel_TLF35585                 SpiConf_SpiChannel_SpiConf_SpiChannel_TLF35585
#define     SpiSequence_TLF35585                SpiConf_SpiSequence_SpiConf_SpiSequence_TLF35585
#define     TLF35585LIB_DEBUG_LED               (DIO_CHANNEL_23_0)                  
#define     TLF35585_SS1_CHANNEL                (DIO_CHANNEL_32_4)
#define     TLF35585_SS2_CHANNEL                (DIO_CHANNEL_32_4)
#define     TLF35585_WDI_CHANNEL                (DIO_CHANNEL_14_9)
#define     TLF35585_TM_CHANNEL                 (DIO_CHANNEL_34_5)
#define     TLF35585_INH_CHANNEL                (TLF35585LIB_DEBUG_LED)             
#define     TLF35585_RTC_INT_CHANNEL            (TLF35585LIB_DEBUG_LED)            
#define     TLF35585_LOCK_CHANNEL               (TLF35585LIB_DEBUG_LED)            
#define     TLF35585_KL15_CHANNEL               (TLF35585LIB_DEBUG_LED)      
#define     TLF35585_VCU_CHANNEL                (TLF35585LIB_DEBUG_LED)             
#define     TLF35585_AC_CHANNEL                 (TLF35585LIB_DEBUG_LED)             
#define     TLF35585_DC_CHANNEL                 (TLF35585LIB_DEBUG_LED)           

#define     TLF35585_SAFETLIB_USED              (1U)		
#define     TLF35585_SELF_TEST                  (1U)		

#define     TLF35585_ACAN_WAKEUP                (1U)
#define     TLF35585_RTC_WAKEUP                 (1U)
#define     TLF35585_LOCK_MCU                   (1U)
#define     TLF35585_KL15_WAKEUP                (0U)
#define     TLF35585_VCU_WAKEUP                 (0U)
#define     TLF35585_AC_WAKEUP                  (0U)
#define     TLF35585_DC_WAKEUP                  (0U)
#define     TLF35585_DYNAMIC_TEST               (0U)

#define     TLF35585_DIO_USED                   (0U)
#define     TLF35585_MPS_USED                   (1U)

#define     TLF35585_ROT_ERRPIN_SELF_TEST       (1U)

#define     TLF35585_OffFullPath_SELF_TEST      (1U)
#define     TLF35585_OffPath_SELF_TEST          (1U)
#define     TLF35585_IntFullPath_SELF_TEST      (1U)
#define     TLF35585_IntEvent_SELF_TEST         (1U)

#define     TLF35585_WWDInt_SELF_TEST           (1U)        
#define     TLF35585_WWDSafe_SELF_TEST          (1U)

#define     TLF35585_FWDInt_SELF_TEST           (1U)       
#define     TLF35585_FWDSafe_SELF_TEST           (1U)

#define     TLF35585_INIT_RETRY_MAX             (3U)       
#define     TLF35585_RW_RETRY_MAX               (3U)        


#define     TLF35585_DET_USED                   (0U)       
#define     TLF35585_MODULE_ID                  (1007U)     
#define     TLF35585_VENDOR                     (1000U)    

/*====================================================================================================================*/
/*                                                Typedef Definitions                                                 */
/*====================================================================================================================*/

/*====================================================================================================================*/
/*                                           Global Variable Declarations                                             */
/*====================================================================================================================*/

/*====================================================================================================================*/
/*                                           Global Function Declarations                                             */
/*====================================================================================================================*/

#endif /* TLF35585_CFG_H_ */

