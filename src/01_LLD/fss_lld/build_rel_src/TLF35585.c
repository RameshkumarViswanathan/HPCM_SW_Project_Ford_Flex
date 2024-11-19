#include "TLF35585.h"
#include "TLF35585_Cfg.h"
#include "IfxStm_reg.h"
#include "Dio.h"
#include "Spi.h"
#include "Smu.h"

// typedef struct {
//    uint16 vendorID;
//    uint16 moduleID;
//    uint8  sw_major_version;
//    uint8  sw_minor_version;
//    uint8  sw_patch_version;
// } Std_VersionInfoType; /* [STD015] */

// struct Std_VersionInfoType VersionInfo;

#ifdef TLF35585_SAFETLIB_USED
#if (1U == TLF35585_SAFETLIB_USED)
#include "Smu.h"
#include "IfxSmu_reg.h"
#endif
#endif

#ifdef TLF35585_DET_USED
#if (1U == TLF35585_DET_USED)
#include "Det.h"
#endif
#endif
uint8 test=0;
Std_ReturnType varTLF35585;
/*====================================================================================================================*/
/*                                                 Macro Definitions                                                  */
/*====================================================================================================================*/


#define TLF35585_STATE_NONE                      ((uint8)0xE8U)
#define TLF35585_STATE_INIT                      ((uint8)0xE9U)
#define TLF35585_STATE_NORMAL                    ((uint8)0xEAU)
#define TLF35585_STATE_SLEEP                     ((uint8)0xEBU)
#define TLF35585_STATE_STANDBY                   ((uint8)0xECU)
#define TLF35585_STATE_WAKE                      ((uint8)0xEDU)
#define TLF35585_STATE_MASK                      ((uint8)0x07U)

/*Register WDCFG0 WDCFG1 and FWDCFG  value for FWD watchdog test*/
#define TLF35585_FWD_START_TEST12_WDCFG0         ((uint8)0x24U)
#define TLF35585_FWD_START_TEST1_WDCFG1          ((uint8)0x0FU)
#define TLF35585_FWD_START_TEST2_WDCFG1          ((uint8)0x02U)
#define TLF35585_FWD_START_TEST12_FWDCFG         ((uint8)0x0BU)
/*Register WDCFG0 WDCFG1 and FWDCFG  value for Normal*/
#define TLF35585_FWD_STOP_TEST12_WDCFG0          ((uint8)0x91U)
#define TLF35585_FWD_STOP_TEST12_WDCFG1          ((uint8)0x09U)
#define TLF35585_FWD_STOP_TEST12_FWDCFG          ((uint8)0x0BU)

/*Register WDCFG0 value for WWD watchdog test*/
#define TLF35585_WWD_START_TEST1_WDCFG0          ((uint8)0xFAU)
#define TLF35585_WWD_START_TEST2_WDCFG0          ((uint8)0x2AU)
#define TLF35585_WWD_START_TEST12_WWDCFG0        ((uint8)0x00U)
#define TLF35585_WWD_START_TEST12_WWDCFG1        ((uint8)0x00U)
/*Register WDCFG0 value for Normal*/
#define TLF35585_WWD_STOP_TEST12_WDCFG0          ((uint8)0x91U)
#define TLF35585_WWD_STOP_TEST12_WWDCFG0         ((uint8)0x06U)
#define TLF35585_WWD_STOP_TEST12_WWDCFG1         ((uint8)0x0BU)
/*Register WDCFG0 value for disabled WWD and FWD*/
#define TLF35585_DISABLE_WWD_FWD                 ((uint8)0x93U)
#define TLF35585_WWD_ENABLE_BIT_MASK             ((uint8)0x08U)
#define TLF35585_WWD_DISABLE_BIT_MASK            ((uint8)0xF7U)
#define TLF35585_FWD_ENABLE_BIT_MASK             ((uint8)0x04U)
#define TLF35585_FWD_DISABLE_BIT_MASK            ((uint8)0xFBU)

/*Register SYSPCFG1  value for Error Pin test*/
#define TLF35585_FSP_START_TEST                  ((uint8)0x08U)
/*Gegister SYSPCFG1  value for Normal*/
#define TLF35585_FSP_STOP_TEST                   ((uint8)0x00U)

/*Register ABIST_CTRL0 value for ABIST test*/
#define TLF35585_CTRL0_OFF_SINGLE                ((uint8)0x07U)
#define TLF35585_CTRL0_OFF_SEQ                   ((uint8)0x03U)
#define TLF35585_CTRL0_INT_SINGLE                ((uint8)0x0FU)
#define TLF35585_CTRL0_INT_SEQ                   ((uint8)0x0BU)
#define TLF35585_CTRL0_NOERR_MASK                ((uint8)0xF1U)
#define TLF35585_CTRL0_NOERR                     ((uint8)0x50U)
/*Register IF value for check ABIST test*/
#define TLF35585_IF_NOERR_MASK                   ((uint8)0x48U)
#define TLF35585_IF_OFF_NOERR                    ((uint8)0x40U)
#define TLF35585_IF_INT_FULL_NOERR               ((uint8)0x08U)
#define TLF35585_IF_INT_NOERR                    ((uint8)0x48U)

/*Register ABIST_CTRL1 value for ABIST test*/
#define TLF35585_CTRL1_SEQ1                      ((uint8)0x01U)
#define TLF35585_CTRL1_SEQ2                      ((uint8)0x03U)
#define TLF35585_CTRL1_SEQ3                      ((uint8)0x01U)
#define TLF35585_CTRL1_SEQ4                      ((uint8)0x00U)

/*Register ABIST_SELECT0 value for ABIST test*/
#define TLF35585_SELECT0_OFF_SINGLE              ((uint8)0x02U)
#define TLF35585_SELECT0_OFF_SEQ                 ((uint8)0x27U)
#define TLF35585_SELECT0_INT_SINGLE              ((uint8)0x80U)
#define TLF35585_SELECT0_INT_SEQ                 ((uint8)0xD0U)

/*Register ABIST_SELECT1 value for ABIST test*/
#define TLF35585_SELECT1_OFF_SINGLE              ((uint8)0x00U)
#define TLF35585_SELECT1_OFF_SEQ                 ((uint8)0x06U)
#define TLF35585_SELECT1_INT_SINGLE              ((uint8)0x00U)
#define TLF35585_SELECT1_INT_SEQ                 ((uint8)0xF1U)

/*Register ABIST_SELECT2 value for ABIST test*/
#define TLF35585_SELECT2_OFF_SINGLE              ((uint8)0x00U)
#define TLF35585_SELECT2_OFF_SEQ                 ((uint8)0xC1U)
#define TLF35585_SELECT2_INT_SINGLE              ((uint8)0x00U)
#define TLF35585_SELECT2_INT_SEQ                 ((uint8)0x30U)

#define TLF35585_INITERR_OFF_SINGLE              ((uint8)0x00U)
#define TLF35585_INITERR_OFF_SEQ                 ((uint8)0x04U)
#define TLF35585_INITERR_VMON_MASK               ((uint8)0x04U)

#define TLF35585_SYSFAIL_OFF_SINGLE              ((uint8)0x00U)
#define TLF35585_SYSFAIL_OFF_SEQ                 ((uint8)0x00U)
#define TLF35585_SYSFAIL_VMON_MASK               ((uint8)0x04U)

#define TLF35585_SYSSF_CFGE_MASK          	     ((uint8)0x01U)


/* Byte sequence to be written to PROTCFG register to unlock the TLF35585 */
#define TLF35585_UNLOCK_SEQU0                    ((uint8)0xABU)
#define TLF35585_UNLOCK_SEQU1                    ((uint8)0xEFU)
#define TLF35585_UNLOCK_SEQU2                    ((uint8)0x56U)
#define TLF35585_UNLOCK_SEQU3                    ((uint8)0x12U)

/* Byte sequence to be written to PROTCFG register to lock the TLF35585: */
#define TLF35585_LOCK_SEQU0                      ((uint8)0xDFU)
#define TLF35585_LOCK_SEQU1                      ((uint8)0x34U)
#define TLF35585_LOCK_SEQU2                      ((uint8)0xBEU)
#define TLF35585_LOCK_SEQU3                      ((uint8)0xCAU)

/* TLF35585 command read/write bit: */
#define TLF35585_WR_BIT                          ((uint16)0x8000U)

/*Clear all flags*/
#define TLF35585_CLEAR_FLAG_MASK                 ((uint8)0xFFU)

#define TLF35585_ERROR_SIGNATURE                 ((uint32)0xFFFFFFFFU)
#define TLF35585_DELAY_200_US                    ((uint16)200U)
#define TLF35585_DELAY_1_MS                      ((uint16)1000U)
#define TLF35585_DELAY_10_MS                     ((uint16)10000U)

#define TC275_COLD_RESET_MASK                    ((uint32)0x13810000)
#define TC275_PORST_RESET                        ((uint32)0x00010000)
#define TC275_CLEAR_COLD_RESET                   ((uint32)0x00000002)

#define TLF35585_WWD_INT_PATH                      ((uint8)0x00U)
#define TLF35585_WWD_OFF_PATH                      ((uint8)0x01U)
#define TLF35585_FWD_INT_PATH                      ((uint8)0x00U)
#define TLF35585_FWD_OFF_PATH                      ((uint8)0x01U)

#define TLF35585_ERROR_COUNT_MASK                  ((uint8)0x0FU)
#define TLF35585_ERROR_COUNT_1                     ((uint8)0x01U)
#define TLF35585_ERROR_COUNT_2                     ((uint8)0x02U)
#define TLF35585_FWD_ERROR                         ((uint8)0x04U)
#define TLF35585_FWD_ERROR_MASK                    ((uint8)0x04U)
#define TLF35585_WWD_ERROR                         ((uint8)0x02U)
#define TLF35585_WWD_ERROR_MASK                    ((uint8)0x02U)

#define TLF35585_INITERR_MASK                      ((uint8)0x3CU)
#define TLF35585_INITERR_FWDF                      ((uint8)0x10U)
#define TLF35585_INITERR_WWDF                      ((uint8)0x08U)
#define TLF35585_INITERR_ERRF                      ((uint8)0x20U)



/*Error for TLF35585 self test*/
#define TLF35585_SELF_TEST_SUCCESS                 ((uint16)0x0000U)
#define TLF35585_OFF_PATH_ERR                      ((uint16)0x0001U)
#define TLF35585_OFF_COM_ERR                       ((uint16)0x0002U)
#define TLF35585_INT_PATH_ERR                      ((uint16)0x0004U)
#define TLF35585_INT_COM_ERR                       ((uint16)0x0008U)
#define TLF35585_CHANGE_MODE_ERR                   ((uint16)0x0010U)
#define TLF35585_IBIST_WWD_ERR                     ((uint16)0x0020U)
#define TLF35585_IBIST_FWD_ERR                     ((uint16)0x0040U)
#define TLF35585_IBIST_FSP_ERR                     ((uint16)0x0080U)
#define TLF35585_ROT_TEST_ERR                      ((uint16)0x0100U)
#define TLF35585_INIT_ERR                      	   ((uint16)0x0200U)

#define TLF35585_INIT_ERR_MASK                     ((uint8)0xFCU)
#define TLF35585_RAW_HARD_RESET                    ((uint8)0x80U)
#define TLF35585_RAW_SOFT_RESET                    ((uint8)0x40U)
#define TLF35585_RAW_ERRF_RESET                    ((uint8)0x20U)
#define TLF35585_RAW_FWDF_RESET                    ((uint8)0x10U)
#define TLF35585_RAW_WWDF_RESET                    ((uint8)0x08U)
#define TLF35585_RAW_VMONF_RESET                   ((uint8)0x04U)

#define TLF35585_SYS_FAILURE_MASK                  ((uint8)0x87U)
#define TLF35585_RAW_INIT_FAILURE                  ((uint8)0x80U)
#define TLF35585_RAW_VMONF_FAILURE                 ((uint8)0x04U)
#define TLF35585_RAW_OTF_FAILURE                   ((uint8)0x02U)
#define TLF35585_RAW_VOLTSELERR_FAILURE            ((uint8)0x01U)

#define TLF35585_SOFTWAREVERSION_MAJOR             (uint32)0x01U
#define TLF35585_SOFTWAREVERSION_MINOR             (uint32)0x01U
#define TLF35585_SOFTWAREVERSION_PATCH             (uint32)0x01U
/*******************************************************************************/


/*******************************************************************************/
/* Macro to assemble a TLF35585 register write command: */
#define TLF35585_WR_CMD(REG, VAL)  (uint16)((uint16)((uint16)((uint16)((uint16)((uint16)(REG) & (uint16)0xFFu) << 8u) \
							| ((uint16)(VAL) & (uint16)0xFFu)) << 1u) | TLF35585_WR_BIT)

/* Macro to assemble a TLF35585 register read command: */
#define TLF35585_RD_CMD(REG)       (((uint16)(REG) & (uint16)0x3FU) << 9U )

#define TLF35585_SOFTWAREVERSION  (uint32)((uint32)(TLF35585_SOFTWAREVERSION_MAJOR<<16U)|   \
                                           (uint32)(TLF35585_SOFTWAREVERSION_MINOR<< 8U)|   \
                                                    TLF35585_SOFTWAREVERSION_PATCH)

/*====================================================================================================================*/
/*                                                Typedef Definitions                                                 */
/*====================================================================================================================*/

/*====================================================================================================================*/
/*                                            Private Variable Definitions                                            */
/*====================================================================================================================*/

static boolean TLF35585_InitFinish_Flag = FALSE;
static boolean TLF35585_SelfTestFinish_Flag = FALSE;
boolean VAR_TLF35585_InitFinish_Flag_b = FALSE;
boolean VAR_TLF35585_SelfTestFinish_Flag_b = FALSE;

static TLF35585_DataType TLF35585_Data;
volatile static uint8 TLF35585_ABISTInterrupt = 0u;
volatile static uint8 TLF35585_SelfTestIRQRequest = FALSE;

static volatile uint32 TC397_StmTime;               
#ifdef TLF35585_DYNAMIC_TEST
#if (0U != TLF35585_DYNAMIC_TEST)
static uint16 TLF35585_TestVariable1;       
static uint16 TLF35585_TestVariable2;      
static uint16 TLF35585_TestVariable3;       
static uint16 TLF35585_TestVariable4;      
static uint16 TLF35585_TestVariable5;       
#endif
#endif

typedef uint8 Smu_StateType;
/*====================================================================================================================*/
/*                                            Global Variable Definitions                                             */
/*====================================================================================================================*/
static uint32 TLF35585_SoftwareVersion;    


/*====================================================================================================================*/
/*                                            Private Function Declarations                                           */
/*====================================================================================================================*/
static void TLF35585_Delay(uint32 Time_us);
static uint16 TLF35585_CalcParity(uint16 in);
static Std_ReturnType TLF35585_SPIWaitIdle(void);
static Std_ReturnType TLF35585_lSetMode(uint8 Mode);
static Std_ReturnType TLF35585_GetResetStatus(void);
static void TLF35585_EruIrqConfig(void);
static Std_ReturnType TLF35585_VerifyABIST(uint16 DealyTime_us);
static Std_ReturnType TLF35585_CheckOffPath(void);
static Std_ReturnType TLF35585_IntFullPathSelfTest(void);
static Std_ReturnType TLF35585_OffFullPathSelfTest(void);
static Std_ReturnType TLF35585_OffPathSelfTest(void);
static Std_ReturnType TLF35585_IntEventSelfTest(void);
static Std_ReturnType TLF35585_ErrServiceWWD(void);
static Std_ReturnType TLF35585_ErrServiceFWD(void);
static Std_ReturnType TLF35585_StartFWDSelfTest(uint8 TestType);
static Std_ReturnType TLF35585_StopFWDSelfTest(void);
static Std_ReturnType TLF35585_StartWWDSelfTest(uint8 TestType);
static Std_ReturnType TLF35585_StopWWDSelfTest(void);
static Std_ReturnType TLF35585_StartErrorPinSelfTest(void);
static Std_ReturnType TLF35585_StopErrorPinSelfTest(void);
static TLF35585_SelfTestType TLF35585_StartFSPSelfTest(void);
static TLF35585_SelfTestType TLF35585_StopFSPSelfTest(void);
static Std_ReturnType TLF35585_FWDIntSelfTest(void);
static Std_ReturnType TLF35585_FWDSafeSelfTest(void);
static Std_ReturnType TLF35585_FWDSelfTest(void);
static Std_ReturnType TLF35585_WWDIntSelfTest(void);
static Std_ReturnType TLF35585_WWDSafeSelfTest(void);
static Std_ReturnType TLF35585_WWDSelfTest(void);
static Std_ReturnType TLF35585_CheckInit(void);
static Std_ReturnType TLF35585_GetSystemStatus(uint8 IntStatus);
static Std_ReturnType TLF35585_GetWakeupStatus(uint8 IntStatus);

static Std_ReturnType TLF35585_GetMonitorStatus(uint8 IntStatus);
static Std_ReturnType TLF35585_GetOverTempFailStatus(uint8 IntStatus);
static Std_ReturnType TLF35585_GetOverTempWarnStatus(uint8 IntStatus);
static Std_ReturnType TLF35585_DisableWWD(void);
static Std_ReturnType TLF35585_EnableWWD(void);
static void TLF35585_SetSelfTestIRQRequestFlag(uint8 value);
static void TLF35585_ClearSelfTestIRQRequestFlag(void);
static uint8 TLF35585_GetSelfTestIRQRequestFlag(void);
void CallStubFunctionsTLF35585(void);
/*====================================================================================================================*/
/*                                            Private Function Implementation                                         */
/*====================================================================================================================*/
/**********************************************************************************************************************/
/*
 * FunctionName 	   : static uint16 TLF35585_CalcParity(uint16 in)
 * Service ID		   : 
 * Sync/Async		   : b   
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : uint16 in
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : None
 * CallByAPI		   : None
 * Description		   : Calculate Parity
 */
/**********************************************************************************************************************/
static uint16 TLF35585_CalcParity(uint16 in)
{
  uint8 i;
  uint16 Res = 0u;
  for(i = 0u; i < TLF35585_SIXTEEN; i++)
  {
	  Res = Res ^ ((uint16)(in >> i) & (uint16)0x01u);
  }
  Res = (((in & ((uint16)((uint16)0xFFFEu))) | Res));
  return Res;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static void TLF35585_Delay(uint32 Time_us)
 * Service ID          : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : uint32 Time_us
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : Delay time
 */
/**********************************************************************************************************************/
static void TLF35585_Delay(uint32 Time_us)
{
	uint32 Star_Tick;
	uint32 Time_Tick;
	uint32 Escape_Tick = (uint32)0x00U;

    /*calculate ticks*/
	Time_Tick = Time_us * TLF35585_CLOCK_uC_STM;
	Star_Tick = (uint32)(STM0_TIM0.U);   
	while(Escape_Tick < Time_Tick)
	{
        #ifdef TLF35585_DYNAMIC_TEST
        #if (0U == TLF35585_DYNAMIC_TEST)
	    TC397_StmTime = (uint32)(STM0_TIM0.U); 
        #else
	    TC397_StmTime = TLF35585_TestVariable1;
        #endif
        #endif
		if(Star_Tick < TC397_StmTime)
		{
			Escape_Tick = TC397_StmTime - Star_Tick;
		}
		else
		{
			Escape_Tick = ((uint32)0xFFFFFFFFU - Star_Tick) + TC397_StmTime;
		}
	}

	return;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_SPIWaitIdle(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Wait until SPI is idle
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_SPIWaitIdle(void)
{
    uint8 Ret = E_NOT_OK;
    uint16 i;
	Spi_SeqResultType Finish=SPI_SEQ_OK;
    /*Check if QSPI is idle , timeout is 5ms*/
    for(i = (uint16)0U; i < TLF35585_MAX_DELAY_TIME; i++)
    {
        Finish = Spi_GetSequenceResult(SpiSequence_TLF35585);
 
        if(SPI_SEQ_OK == Finish)
        {
        	Ret = E_OK;			
            break;
        }
        else
        {
        	/* do nothing */
        }
    }

	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : Std_ReturnType TLF35585_Read(TLF35585_CmdType DataBuf[], uint8 Count)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : uint8 Count
 * Param-Name[out]	   : TLF35585_CmdType DataBuf[]
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Read TLF35585 register
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585_Read(TLF35585_CmdType DataBuf[], uint8 Count)
{
	uint8 Ret = E_OK;
	uint8 tu1_retryCnt = 0;
	uint16 i,u16_Parity;

    for(i = (uint16)0U; i < (uint16)Count; i++)
    {
    	if(DataBuf[i].ReqCmd > TLF35585_MAX_ADDRESS)
        {
        	Ret = E_NOT_OK;
        }
        else
        {
        	/* do nothing */
        }
    }
    if(E_OK == Ret)
	{
        if((Count > (uint8)0U) && (Count < TLF35585_MAX_EBBUFF))
        {
            for(i = (uint16)0U; i < (uint16)Count; i++)
            {
           		
            	do
            	{
            		TLF35585_Data.TLF35585_TxBuffer[i] = TLF35585_RD_CMD((uint16)(DataBuf[i].ReqCmd));
	                TLF35585_Data.TLF35585_TxBuffer[i] =
	                        TLF35585_CalcParity(TLF35585_Data.TLF35585_TxBuffer[i]);
	                TLF35585_Data.Count = Count;
	                /*Ret |= Spi_WriteIB(SpiChannel_TLF35585, &(TLF35585_Data.TLF35585_TxBuffer[i]));*/         					
	                Ret |= Spi_SetupEB(SpiChannel_TLF35585, (uint8 *)&(TLF35585_Data.TLF35585_TxBuffer[i]),  
	                                        (uint8 *)&(TLF35585_Data.TLF35585_RxBuffer[i]), 1u);         	                
					Ret |= Spi_SyncTransmit(SpiSequence_TLF35585);				
	                Ret |= TLF35585_SPIWaitIdle();            
	                
	                /* Caculate Parity */
	                u16_Parity = TLF35585_CalcParity(TLF35585_Data.TLF35585_RxBuffer[i]);

	                Ret |= ((TLF35585_Data.TLF35585_RxBuffer[i] ^ u16_Parity) == (TLF35585_Data.TLF35585_RxBuffer[i] & 1u)) ? (E_OK) : (E_NOT_OK);
					
	                tu1_retryCnt++;
            	}while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));

            	if(tu1_retryCnt >= TLF35585_RW_RETRY_MAX)
            	{
            		break;
            	}
            	else
            	{
            		/* Keep Transmit */
								tu1_retryCnt = 0u;
            	}
                
            }
            if(E_OK == Ret)
            {
                /*read data*/
                for(i = (uint16)0U; i < (uint16)Count; i++)
                {
                    DataBuf[i].UserData = (uint8)((TLF35585_Data.TLF35585_RxBuffer[i]
                                                           & (uint16)0x01FF) >> 1U);
                }
            }
            else
            {
                Ret = E_NOT_OK;
            }
        }
        else
        {
            Ret = E_NOT_OK;
        }
    }
    else
    {
    	/* do nothing */
    }
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : Std_ReturnType TLF35585_Write(const TLF35585_CmdType DataBuf[], uint8 Count)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : uint8 Count / TLF35585_CmdType DataBuf[]
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Write TLF35585 register
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585_Write(const TLF35585_CmdType DataBuf[], uint8 Count)
{
    uint8 Ret=E_OK;
    uint8 tu1_retryCnt = 0;
	uint8 i;
	uint16 u16_Parity;

    for(i = 0U; i < Count; i++)
    {
        if(DataBuf[i].ReqCmd > TLF35585_MAX_ADDRESS)
        {
            Ret = E_NOT_OK;
        }
        else
        {
        	/* do nothing */
        }
    }
    if(E_OK == Ret)
    {
        if((Count > (uint8)0U) && (Count < TLF35585_MAX_EBBUFF))
        {
            for(i = 0U; i < Count; i++)
            {
				do
				{
				 	TLF35585_Data.TLF35585_TxBuffer[i] = TLF35585_WR_CMD((uint16)(DataBuf[i].ReqCmd),DataBuf[i].UserData);
	                TLF35585_Data.TLF35585_TxBuffer[i] = TLF35585_CalcParity(TLF35585_Data.TLF35585_TxBuffer[i]);
	                TLF35585_Data.Count = Count;					
	                Ret |= Spi_SetupEB(SpiChannel_TLF35585, (uint8 *)&(TLF35585_Data.TLF35585_TxBuffer[i]), 
                        (uint8 *)&(TLF35585_Data.TLF35585_RxBuffer[i]), 1u); 
	                Ret |= Spi_SyncTransmit(SpiSequence_TLF35585);
	                Ret |= TLF35585_SPIWaitIdle();

	                /* Caculate Parity */
	                u16_Parity = TLF35585_CalcParity(TLF35585_Data.TLF35585_RxBuffer[i]);

	                Ret |= ((TLF35585_Data.TLF35585_RxBuffer[i] ^ u16_Parity) == (TLF35585_Data.TLF35585_RxBuffer[i] & 1u)) ? (E_OK) : (E_NOT_OK);

	                tu1_retryCnt++;
				}
				while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));
				
				if(tu1_retryCnt >= TLF35585_RW_RETRY_MAX)
            	{
            		break;
            	}
            	else
            	{
            		/* Keep Transmit */
								tu1_retryCnt = 0u;
            	} 
            }
            if(E_OK == Ret)
            {
                /*If the send data and receive data are equal, then send success*/
                for(i = 0U; i < Count; i++)
                {
                    if(TLF35585_Data.TLF35585_TxBuffer[i] != TLF35585_Data.TLF35585_RxBuffer[i])
                    {
                        Ret = E_NOT_OK;
                    }
                }
            }
            else
            {
                Ret = E_NOT_OK;
            }
        }
        else
        {
            Ret = E_NOT_OK;
        }
    }
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_lSetMode(uint8 Mode)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : uint8 Mode
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Change TLF35585 mode
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_lSetMode(uint8 Mode)
{
	uint8 Ret = E_NOT_OK;
//    volatile uint8 State = 0U;
	TLF35585_CmdType TempReg[TLF35585_THREE] = {0U};

    if((Mode <= TLF35585_WAKE) && (Mode > TLF35585_NONE))
	{
        TempReg[0U].ReqCmd = TLF35585_REG_DEVSTAT;
		TempReg[0U].UserData = (uint8)0U;
        
		/*read the current mode*/
		Ret = TLF35585_Read(&TempReg[0U], 1U);
    }
    else
    {
    	/* do nothing */
    }
    if(E_OK == Ret)
    {
    	volatile uint8 State = TempReg[0U].UserData & TLF35585_STATE_MASK;
        switch(State)
		{
		case TLF35585_INIT:
            /*If the current mode is INIT, 
              it can only be changed to NORMAL*/
			if(TLF35585_NORMAL == Mode)
			{
				TempReg[1U].ReqCmd   = TLF35585_REG_DEVCTRL;
				TempReg[1U].UserData = TLF35585_STATE_NORMAL;
				TempReg[2U].ReqCmd   = TLF35585_REG_DEVCTRLN;
				TempReg[2U].UserData = (uint8)~TLF35585_STATE_NORMAL;
                Ret = TLF35585_Write(&TempReg[1U], 2U);
			}
			else
			{
				Ret = E_NOT_OK;
			}
			break;
		case TLF35585_NORMAL:
            /*If the current mode is NORMAL, 
              it can not be changed to INIT and WAKE*/
			if((TLF35585_INIT != Mode) && (TLF35585_WAKE != Mode))
			{
				TempReg[1U].ReqCmd   = TLF35585_REG_DEVCTRL;
				TempReg[1U].UserData = (uint8)(TLF35585_STATE_NONE | Mode);
				TempReg[2U].ReqCmd   = TLF35585_REG_DEVCTRLN;
				TempReg[2U].UserData = (uint8)~((uint8)(TLF35585_STATE_NONE | Mode));
                Ret = TLF35585_Write(&TempReg[1U], 2U);
			}
			else
			{
				Ret = E_NOT_OK;
			}
			break;
		case TLF35585_SLEEP:
            /*If the current mode is SLEEP, 
              it can only be changed to WAKE*/
			if(TLF35585_WAKE == Mode)
			{
				TempReg[1U].ReqCmd   = TLF35585_REG_DEVCTRL;
				TempReg[1U].UserData = TLF35585_STATE_WAKE;
				TempReg[2U].ReqCmd   = TLF35585_REG_DEVCTRLN;
				TempReg[2U].UserData = (uint8)(~TLF35585_STATE_WAKE);
                Ret = TLF35585_Write(&TempReg[1U], 2U);
			}
			else
			{
				Ret = E_NOT_OK;
			}
			break;
		case TLF35585_STBY:
            /*If the current mode is STANDBY, 
              it can only be changed to INIT*/
			if(TLF35585_INIT == Mode)
			{
				TempReg[1U].ReqCmd   = TLF35585_REG_DEVCTRL;
				TempReg[1U].UserData = TLF35585_STATE_INIT;
				TempReg[2U].ReqCmd   = TLF35585_REG_DEVCTRLN;
				TempReg[2U].UserData = (uint8)(~TLF35585_STATE_INIT);
                Ret = TLF35585_Write(&TempReg[1U], 2U);
			}
			else
			{
				Ret = E_NOT_OK;
			}
			break;
		case TLF35585_WAKE:
            /*If the current mode is WAKE, 
              it can not be changed to INIT*/
			if(TLF35585_INIT != Mode)
			{
				TempReg[1U].ReqCmd   = TLF35585_REG_DEVCTRL;
				TempReg[1U].UserData = (uint8)(TLF35585_STATE_NONE | Mode);
				TempReg[2U].ReqCmd   = TLF35585_REG_DEVCTRLN;
				TempReg[2U].UserData = (uint8)(~((uint8)(TLF35585_STATE_NONE | Mode)));
                Ret = TLF35585_Write(&TempReg[1U], 2U);
			}
			else
			{
				Ret = E_NOT_OK;
			}
			break;
		default:
			break;
		}
    }
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_GetResetStatus(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Get ROT related status registers
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_GetResetStatus(void)
{
	uint8 i;
	uint8 Ret;
	TLF35585_CmdType TempReg[TLF35585_TWELVE];

	/*Set the register addresses of SYSFAIL to OTWRNSF*/
    for(i = 0U; i < TLF35585_TWELVE; i++)
    {
		TempReg[i].ReqCmd = (uint8)(TLF35585_REG_SYSFAIL + i);
		TempReg[i].UserData = 0U;
    }
    /*Read the register values of SYSFAIL to OTWRNSF*/
	Ret = TLF35585_Read(&TempReg[0U], 12U);
	for(i = 0U; i < TLF35585_TWELVE; i++)
	{
		TLF35585_ResetStatus[i] = TempReg[i].UserData;
	}
	return Ret;

}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static void TLF35585_EruIrqConfig(void)
 * Service ID		   :
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : None
 * CallByAPI		   : None
 * Description		   : Config Eru Module Irq
 */
/**********************************************************************************************************************/
static void TLF35585_EruIrqConfig(void)
{
    /* ERU0 Irq Init */
    /* EXIS Config */
    //MODULE_SCU.EICR[0].B.EXIS0 = 2u;
    /* REN Config */
    //MODULE_SCU.EICR[0].B.FEN0 = 1u;
    /* EIEN Config */
    //MODULE_SCU.EICR[0].B.EIEN0 = 1u;
    /* IPEN Config */
    //MODULE_SCU.IGCR[0].B.IPEN00 = 1u;
    /* GEEN0 Config */
    //MODULE_SCU.IGCR[0].B.GEEN0 = 1u;
    /* IGP0 Config */
    //MODULE_SCU.IGCR[0].B.IGP0 = 2u;
}


#ifdef TLF35585_SELF_TEST
#if (1U == TLF35585_SELF_TEST)
/**********************************************************************************************************************/
/*
 * FunctionName 	   : static void TLF35585_SetSelfTestIRQRequestFlag(uint8 value)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : uint8 value
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : None
 * CallByAPI		   : None
 * Description		   : Set Self Test request flags
 */
/**********************************************************************************************************************/
static void TLF35585_SetSelfTestIRQRequestFlag(uint8 value)
{
	TLF35585_SelfTestIRQRequest = value;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static uint8 TLF35585_GetSelfTestIRQRequestFlag(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : uint8
 * CallByAPI		   : None
 * Description		   : Get Self Test request flags
 */
/**********************************************************************************************************************/
static uint8 TLF35585_GetSelfTestIRQRequestFlag(void)
{
	return TLF35585_SelfTestIRQRequest;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static void TLF35585_ClearSelfTestIRQRequestFlag(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : None
 * CallByAPI		   : None
 * Description		   : Clear interrupt request flags
 */
/**********************************************************************************************************************/
static void TLF35585_ClearSelfTestIRQRequestFlag(void)
{
	TLF35585_SelfTestIRQRequest = 0u;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : void TLF35585_ABISTSelfTestISR(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : None
 * CallByAPI		   : None
 * Description		   : Set interrupt flags
 */
/**********************************************************************************************************************/
void TLF35585_ABISTSelfTestISR(void)
{
		if(TLF35585_GetSelfTestIRQRequestFlag() == 1u)
		{
			/*Interrupt has been generated*/
			TLF35585_Interrupt = 1;
		}
		else
		{
			/* Not TLF35585 NMI Request.Skip this loop. */
		}
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : void TLF35585_ABISTSelfTest_ISR(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : uint16 DealyTime_us
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Check if ABIST is OK, read interrupt flags
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_VerifyABIST(uint16 DealyTime_us)
{
	uint16 i = 0U;
	uint8 Ret = E_NOT_OK;
	TLF35585_CmdType TempReg[TLF35585_ELEVEN];
    /*Wait for TLF35585 ABIST interrupt*/
    while(i < DealyTime_us)
	{
		TLF35585_Delay((uint32)1U);
		if((uint8)1U == TLF35585_Interrupt)
		{
			TempReg[0U].ReqCmd   = TLF35585_REG_ABIST_CTRL0;
			TempReg[0U].UserData = (uint8)0U;
			
			if(E_OK == TLF35585_Read(&TempReg[0U], 1U))
			{
                /*Check if ABIST is success*/
				if((TempReg[0U].UserData & TLF35585_CTRL0_NOERR_MASK) == TLF35585_CTRL0_NOERR)
				{
					Ret = E_OK;
					break;
				}
			}
            else
            {
            	/* do nothing */
            }
		}
        else
        {
        	/* do nothing */
        }
		i++;
	}
    /*Set the register address of ABIST_CTRL0*/
	TempReg[0U].ReqCmd   = TLF35585_REG_ABIST_CTRL0;
	TempReg[0U].UserData = (uint8)0U;
    /*Set the register address of ABIST_SELECT0*/
	TempReg[1U].ReqCmd   = TLF35585_REG_ABIST_SELECT0;
	TempReg[1U].UserData = (uint8)0U;
    /*Set the register address of ABIST_SELECT1*/
	TempReg[2U].ReqCmd   = TLF35585_REG_ABIST_SELECT1;
	TempReg[2U].UserData = (uint8)0U;
    /*Set the register address of ABIST_SELECT2*/
	TempReg[3U].ReqCmd   = TLF35585_REG_ABIST_SELECT2;
	TempReg[3U].UserData = (uint8)0U;

	/*Set the register address of MONSF0*/
	TempReg[4U].ReqCmd   = TLF35585_REG_MONSF0;
	TempReg[4U].UserData = (uint8)0U;
    /*Set the register address of MONSF1*/
	TempReg[5U].ReqCmd   = TLF35585_REG_MONSF1;
	TempReg[5U].UserData = (uint8)0U;
    /*Set the register address of MONSF2*/
	TempReg[6U].ReqCmd   = TLF35585_REG_MONSF2;
	TempReg[6U].UserData = (uint8)0U;
    /*Set the register address of MONSF3*/
	TempReg[7U].ReqCmd   = TLF35585_REG_MONSF3;
	TempReg[7U].UserData = (uint8)0U;
    /*Set the register address of INITERR*/
	TempReg[8U].ReqCmd   = TLF35585_REG_INITERR;
	TempReg[8U].UserData = (uint8)0U;
    /*Set the register address of IF*/
	TempReg[9U].ReqCmd   = TLF35585_REG_IF;
	TempReg[9U].UserData = (uint8)0U;
    /*Set the register address of SYSFAIL*/
	TempReg[10U].ReqCmd = TLF35585_REG_SYSFAIL;
	TempReg[10U].UserData = (uint8)0x00;


	if(E_OK == Ret)
	{
        /*Read the register values*/
		Ret = TLF35585_Read(&TempReg[0U], 10U);
	}
    else
    {
    	/* do nothing */
    }
	if(E_OK == Ret)
	{
		TLF35585_Reg[TLF35585_REG_ABIST_CTRL0]   = TempReg[0U].UserData;
		TLF35585_Reg[TLF35585_REG_ABIST_SELECT0] = TempReg[1U].UserData;
		TLF35585_Reg[TLF35585_REG_ABIST_SELECT1] = TempReg[2U].UserData;
		TLF35585_Reg[TLF35585_REG_ABIST_SELECT2] = TempReg[3U].UserData;

		TLF35585_Reg[TLF35585_REG_MONSF0] = TempReg[4U].UserData;
		TLF35585_Reg[TLF35585_REG_MONSF1] = TempReg[5U].UserData;
		TLF35585_Reg[TLF35585_REG_MONSF2] = TempReg[6U].UserData;
		TLF35585_Reg[TLF35585_REG_MONSF3] = TempReg[7U].UserData;
		TLF35585_Reg[TLF35585_REG_INITERR] = TempReg[8U].UserData;
		TLF35585_Reg[TLF35585_REG_IF] = TempReg[9U].UserData;
		TLF35585_Reg[TLF35585_REG_SYSFAIL] = TempReg[10U].UserData;
        /*Check if test is success*/
		if(((TempReg[0U].UserData & TLF35585_CTRL0_NOERR_MASK)
				== TLF35585_CTRL0_NOERR) &&
				(TempReg[1U].UserData == (uint8)0U) &&
				(TempReg[2U].UserData == (uint8)0U) &&
				(TempReg[3U].UserData == (uint8)0U))
		{
            /*Get and clear all interrupr status flags*/
			Ret = TLF35585_GetInterruptStatus((uint8)0U);
		}
		else
		{
			Ret = E_NOT_OK;
		}
        /*Clear register IF value*/
        Ret |= TLF35585_Write(&TempReg[9U], 1U);
		if(E_OK != Ret)
		{
			Ret = E_NOT_OK;
		}
        else
        {
        	/* do nothing */
        }
	}
    else
    {
    	/* do nothing */
    }

	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_CheckOffPath(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Check that SS1 and SS2 is still LOW
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_CheckOffPath(void)
{
    uint8 Ret = E_OK;
    TLF35585_CmdType TempReg[TLF35585_ONE];

#ifdef TLF35585_DIO_USED
#if (1U == TLF35585_DIO_USED)
    /*Check that the safe states outputs SS1/2 are low and that the secondary 
      safety shutdown path has been activated on application level*/
    Ret = Dio_ReadChannel(TLF35585_SS1_CHANNEL);
    Ret |= Dio_ReadChannel(TLF35585_SS2_CHANNEL);
#endif
#endif

    TempReg[0U].UserData = (uint8)0x00U;
	TempReg[0U].ReqCmd = TLF35585_REG_DEVSTAT;

    Ret |= TLF35585_Read(&TempReg[0], 1U);
    if((TLF35585_STATE_WAKE & TLF35585_STATE_MASK)
					!= (TempReg[0U].UserData & TLF35585_STATE_MASK))
	{
        Ret = E_NOT_OK;
    }
    else
    {
    	/* do nothing */
    }
    /*Select the test for the overvoltage trigger for secondary internal monitor*/
    TLF35585_Reg[TLF35585_REG_ABIST_CTRL1] =
		TLF35585_CTRL1_SEQ1;
	TempReg[0U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_CTRL1];
	TempReg[0U].ReqCmd = TLF35585_REG_ABIST_CTRL1;
	Ret |= TLF35585_Write(&TempReg[0], 1U);
    /*Wait 50us*/
    TLF35585_Delay((uint32)50U);

#ifdef TLF35585_DIO_USED
#if (1U == TLF35585_DIO_USED)
    /*Check that the safe states outputs SS1/2 are still low and that the secondary 
          safety shutdown path is still activated on application level*/
    if((STD_HIGH == Dio_ReadChannel(TLF35585_SS1_CHANNEL)) && 
        (STD_HIGH == Dio_ReadChannel(TLF35585_SS2_CHANNEL)))
    {
        Ret = E_NOT_OK;
    }
    else
    {
    	/* do nothing */
    }
#endif
#endif

    /*Select the ABIST clock to generate a local toggling signal for the analog 
      safe state control*/
	TLF35585_Reg[TLF35585_REG_ABIST_CTRL1] =
					TLF35585_CTRL1_SEQ2;
	TempReg[0U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_CTRL1];
	TempReg[0U].ReqCmd = TLF35585_REG_ABIST_CTRL1;
	Ret |= TLF35585_Write(&TempReg[0], 1U);
    /*Wait 50us*/
    TLF35585_Delay((uint32)50U);
#ifdef TLF35585_DIO_USED
#if (1U == TLF35585_DIO_USED)
    /*Check that the safe states outputs SS1/2 are still low and that the secondary 
      safety shutdown path is still activated on application level*/
    if((STD_HIGH == Dio_ReadChannel(TLF35585_SS1_CHANNEL)) && 
        (STD_HIGH == Dio_ReadChannel(TLF35585_SS2_CHANNEL)))
    {
        Ret = E_NOT_OK;
    }
    else
    {
    	/* do nothing */
    }
#endif
#endif

	/*Deselect the ABIST clock to disable the local toggling signal for the analog 
      safe state control*/
	TLF35585_Reg[TLF35585_REG_ABIST_CTRL1] =
							TLF35585_CTRL1_SEQ3;
	TempReg[0U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_CTRL1];
	TempReg[0U].ReqCmd = TLF35585_REG_ABIST_CTRL1;
	Ret |= TLF35585_Write(&TempReg[0], 1U);
    /*Wait 50us*/
    TLF35585_Delay((uint32)50U);
#ifdef TLF35585_DIO_USED
#if (1U == TLF35585_DIO_USED)
    /*Check on application level that the secondary safety shutdown path has been 
      activated and the safe state outputs SS1/2 are low*/
    if((STD_HIGH == Dio_ReadChannel(TLF35585_SS1_CHANNEL)) && 
        (STD_HIGH == Dio_ReadChannel(TLF35585_SS2_CHANNEL)))
    {
        Ret = E_NOT_OK;
    }
    else
    {
    	/* do nothing */
    }
#endif
#endif
	/*Deselect the test for the of protection comparator of the analog safe state 
      control*/
	TLF35585_Reg[TLF35585_REG_ABIST_CTRL1] =
									TLF35585_CTRL1_SEQ4;
	TempReg[0U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_CTRL1];
	TempReg[0U].ReqCmd = TLF35585_REG_ABIST_CTRL1;
	Ret |= TLF35585_Write(&TempReg[0], 1U);
    /*Wait 50us*/
    TLF35585_Delay((uint32)50U);
#ifdef TLF35585_DIO_USED
#if (1U == TLF35585_DIO_USED)
    /*Check that the safe states outputs SS1/2 are still low and that the secondary 
      safety shutdown path is still activated on application level*/
    if((STD_HIGH == Dio_ReadChannel(TLF35585_SS1_CHANNEL)) && 
        (STD_HIGH == Dio_ReadChannel(TLF35585_SS2_CHANNEL)))
    {
        Ret = E_NOT_OK;
    }
    else
    {
    	/* do nothing */
    }
#endif
#endif
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_IntFullPathSelfTest(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Test the generation of an interrupt event
 */
/**********************************************************************************************************************/

static Std_ReturnType TLF35585_IntFullPathSelfTest(void)
{
	uint8 Ret;
	TLF35585_CmdType TempReg[TLF35585_THREE];

	/*Select a single comparator contributing to the generation of the interrupt*/
	TLF35585_Reg[TLF35585_REG_ABIST_CTRL0] =
			TLF35585_CTRL0_INT_SINGLE;
	TLF35585_Reg[TLF35585_REG_ABIST_SELECT0] =
			TLF35585_SELECT0_INT_SINGLE;
	TempReg[0U].ReqCmd = TLF35585_REG_ABIST_SELECT0;
	TempReg[0U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_SELECT0];
	TempReg[1U].ReqCmd = TLF35585_REG_ABIST_CTRL0;
	TempReg[1U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_CTRL0];

    #ifdef TLF35585_DYNAMIC_TEST
    #if (0U == TLF35585_DYNAMIC_TEST)
	TLF35585_Reg[TLF35585_REG_INITERR] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_IF] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_SYSFAIL] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF0] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF1] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF2] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF3] = (uint8)0x00U;
    #endif
    #endif
	/*Change TLF35585 mode to Normal*/
	Ret = TLF35585_GoToNormal();

    Ret |= TLF35585_Write(&TempReg[0], 2U);

	if(E_OK == Ret)
	{
        /*Check if test is success*/
        Ret = TLF35585_VerifyABIST(TLF35585_DELAY_200_US);
		if((TLF35585_SELECT0_INT_SINGLE != TLF35585_Reg[TLF35585_REG_MONSF1]) ||
			((uint8)0x00U !=
					(TLF35585_Reg[TLF35585_REG_INITERR] & TLF35585_INITERR_VMON_MASK)) ||
			((uint8)0x00U !=
					(TLF35585_Reg[TLF35585_REG_SYSFAIL] & TLF35585_SYSFAIL_VMON_MASK)) ||
			(TLF35585_IF_INT_FULL_NOERR !=
					(TLF35585_Reg[TLF35585_REG_IF] & TLF35585_IF_NOERR_MASK)))
		{
			Ret = E_NOT_OK;
		}
        else
        {
        	/* do nothing */
        }
		TLF35585_ABISTInterrupt = (uint8)0U;
        TLF35585_Interrupt = (uint8)0U;
        
        /*Clear the register value*/
		TempReg[0U].ReqCmd = TLF35585_REG_MONSF1;
		TempReg[0U].UserData = TLF35585_Reg[TLF35585_REG_MONSF1];
		TempReg[1U].ReqCmd = TLF35585_REG_INITERR;
		TempReg[1U].UserData = TLF35585_Reg[TLF35585_REG_INITERR];
		TempReg[2U].ReqCmd = TLF35585_REG_SYSFAIL;
		TempReg[2U].UserData = TLF35585_Reg[TLF35585_REG_SYSFAIL];
        Ret |= TLF35585_Write(TempReg, 3U);


	}
    else
    {
    	/* do nothing */
    }
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_OffFullPathSelfTest(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Test the activation of the secondary safety shutdown path
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_OffFullPathSelfTest(void)
{
	uint8 Ret;
	TLF35585_CmdType TempReg[TLF35585_SIX];

	/*Clear the register value*/
	TempReg[0U].ReqCmd = TLF35585_REG_MONSF1;
	TempReg[0U].UserData = TLF35585_CLEAR_FLAG_MASK;
	TempReg[1U].ReqCmd = TLF35585_REG_INITERR;
	TempReg[1U].UserData = TLF35585_CLEAR_FLAG_MASK;
	TempReg[2U].ReqCmd = TLF35585_REG_SYSFAIL;
	TempReg[2U].UserData = TLF35585_CLEAR_FLAG_MASK;
    Ret = TLF35585_Write(&TempReg[0], 3U);

	/*Select a single comparator contributing to the secondary shutdown path*/
	TLF35585_Reg[TLF35585_REG_ABIST_CTRL0] =
			TLF35585_CTRL0_OFF_SINGLE; 
	/* Select UCOV */
	TLF35585_Reg[TLF35585_REG_ABIST_SELECT0] =
			TLF35585_SELECT0_OFF_SINGLE; 
	TempReg[0U].ReqCmd = TLF35585_REG_ABIST_SELECT0;  
	TempReg[0U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_SELECT0];
    TempReg[1U].ReqCmd = TLF35585_REG_ABIST_SELECT1;  
	TempReg[1U].UserData = (uint8)0x00U;
    TempReg[2U].ReqCmd = TLF35585_REG_ABIST_SELECT2;  
	TempReg[2U].UserData = (uint8)0x00U;
	TempReg[3U].ReqCmd = TLF35585_REG_ABIST_CTRL0;    
	TempReg[3U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_CTRL0];

    #ifdef TLF35585_DYNAMIC_TEST
    #if (0U == TLF35585_DYNAMIC_TEST)
	TLF35585_Reg[TLF35585_REG_INITERR] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_IF] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_SYSFAIL] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF0] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF1] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF2] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF3] = (uint8)0x00U;
    #endif
    #endif

    /*Change TLF35585 mode to Normal*/
    Ret |= TLF35585_GoToNormal();
	Ret |= TLF35585_Write(&TempReg[0], 4U);

	if(E_OK == Ret)
	{
        /*Check if test is success*/
        Ret = TLF35585_VerifyABIST(TLF35585_DELAY_200_US);
		if((TLF35585_SELECT0_OFF_SINGLE == TLF35585_Reg[TLF35585_REG_MONSF1]) &&
			(TLF35585_INITERR_OFF_SINGLE == (TLF35585_Reg[TLF35585_REG_INITERR] & TLF35585_INITERR_VMON_MASK)) &&  
			((TLF35585_SYSFAIL_OFF_SINGLE == (TLF35585_Reg[TLF35585_REG_SYSFAIL] & TLF35585_SYSFAIL_VMON_MASK)) &&
			((TLF35585_Reg[TLF35585_REG_IF] & TLF35585_IF_NOERR_MASK) == TLF35585_IF_OFF_NOERR)))
		{
            if(E_OK == Ret)
            {
            	Ret = TLF35585_CheckOffPath();
            }
            else
            {
            	/* do nothing */
            }
		}
		else
		{
			Ret = E_NOT_OK;
		}
		TLF35585_ABISTInterrupt = (uint8)0U;
        TLF35585_Interrupt = (uint8)0U;

        /*Clear the register value*/
		TempReg[0U].ReqCmd = TLF35585_REG_MONSF1;
		TempReg[0U].UserData = TLF35585_Reg[TLF35585_REG_MONSF1];
		TempReg[1U].ReqCmd = TLF35585_REG_INITERR;
		TempReg[1U].UserData = TLF35585_Reg[TLF35585_REG_INITERR];
		TempReg[2U].ReqCmd = TLF35585_REG_SYSFAIL;
		TempReg[2U].UserData = TLF35585_Reg[TLF35585_REG_SYSFAIL];
        Ret |= TLF35585_Write(&TempReg[0], 3U);


	}
    else
    {
    	/* do nothing */
    }
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_OffPathSelfTest(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Test comparartors that contribute to shut-down path
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_OffPathSelfTest(void)
{
	uint8 Ret;
	TLF35585_CmdType TempReg[TLF35585_EIGHT];

	/*Select all (remaining) selectable overvoltage comparators contributing to the 
     activation of the secondary safetyshutdown path*/
    /*Select all (remaining) selectable undervoltage comparators contributing to 
      the activation of the secondary safety shutdown path*/
	TLF35585_Reg[TLF35585_REG_ABIST_CTRL0]   =
			TLF35585_CTRL0_OFF_SEQ;
	TLF35585_Reg[TLF35585_REG_ABIST_SELECT0] =
			TLF35585_SELECT0_OFF_SEQ;
	TLF35585_Reg[TLF35585_REG_ABIST_SELECT1] =
			TLF35585_SELECT1_OFF_SEQ;
	TLF35585_Reg[TLF35585_REG_ABIST_SELECT2] =
			TLF35585_SELECT2_OFF_SEQ;

	TempReg[0U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_SELECT0];
	TempReg[0U].ReqCmd   = TLF35585_REG_ABIST_SELECT0;
	TempReg[1U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_SELECT1];
	TempReg[1U].ReqCmd   = TLF35585_REG_ABIST_SELECT1;
	TempReg[2U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_SELECT2];
	TempReg[2U].ReqCmd   = TLF35585_REG_ABIST_SELECT2;
	TempReg[3U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_CTRL0];
	TempReg[3U].ReqCmd   = TLF35585_REG_ABIST_CTRL0;

    #ifdef TLF35585_DYNAMIC_TEST
    #if (0U == TLF35585_DYNAMIC_TEST)
	TLF35585_Reg[TLF35585_REG_INITERR] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_IF] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_SYSFAIL] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF0] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF1] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF2] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF3] = (uint8)0x00U;
    #endif
    #endif
		
    Ret = TLF35585_Write(TempReg, 4U);
	if(E_OK == Ret)
	{
        /*Check if test is success*/
        Ret = TLF35585_VerifyABIST(TLF35585_DELAY_1_MS);
        
		if((TLF35585_SELECT0_OFF_SEQ != (TLF35585_Reg[TLF35585_REG_MONSF1] & TLF35585_SELECT0_OFF_SEQ)) ||
			(TLF35585_SELECT1_OFF_SEQ != (TLF35585_Reg[TLF35585_REG_MONSF2] & TLF35585_SELECT1_OFF_SEQ)) ||
			(TLF35585_SELECT2_OFF_SEQ != (TLF35585_Reg[TLF35585_REG_MONSF3] & TLF35585_SELECT2_OFF_SEQ)))
		{
			Ret = E_NOT_OK;
		}
		else if(((TLF35585_Reg[TLF35585_REG_IF] & TLF35585_IF_NOERR_MASK) != TLF35585_IF_OFF_NOERR) ||
				(TLF35585_INITERR_OFF_SEQ != (TLF35585_Reg[TLF35585_REG_INITERR] & TLF35585_INITERR_VMON_MASK)) ||
				(TLF35585_SYSFAIL_OFF_SEQ != (TLF35585_Reg[TLF35585_REG_SYSFAIL] & TLF35585_SYSFAIL_VMON_MASK)))
		{
			Ret = E_NOT_OK;
		}
        else
        {
            /*do nothing*/
        }
		TLF35585_ABISTInterrupt = (uint8)0U;
		TLF35585_Interrupt = (uint8)0U;

        /*Clear the register value*/
		TempReg[0U].ReqCmd = TLF35585_REG_MONSF1;
		TempReg[0U].UserData = TLF35585_Reg[TLF35585_REG_MONSF1];
		TempReg[1U].ReqCmd = TLF35585_REG_MONSF2;
		TempReg[1U].UserData = TLF35585_Reg[TLF35585_REG_MONSF2];
		TempReg[2U].ReqCmd = TLF35585_REG_MONSF3;
		TempReg[2U].UserData = TLF35585_Reg[TLF35585_REG_MONSF3];
		TempReg[3U].ReqCmd = TLF35585_REG_INITERR;
		TempReg[3U].UserData = TLF35585_Reg[TLF35585_REG_INITERR];
		TempReg[4U].ReqCmd = TLF35585_REG_SYSFAIL;
		TempReg[4U].UserData = TLF35585_Reg[TLF35585_REG_SYSFAIL];
        Ret |= TLF35585_Write(TempReg, 5U);
	}
    else
    {
    	/* do nothing */
    }

    /*Select the INTOV comparator by writing ABIST_SELECT2: 00001000B*/
	TempReg[0U].UserData = (uint8)0x08U;
	TempReg[0U].ReqCmd   = TLF35585_REG_ABIST_SELECT2;
	TempReg[1U].UserData = (uint8)0x05U;
	TempReg[1U].ReqCmd   = TLF35585_REG_ABIST_CTRL0;

    Ret |= TLF35585_Write(TempReg, 2U);
    
	if(E_OK == Ret)
	{
		
        /*Check if test is success*/
        Ret = TLF35585_VerifyABIST(TLF35585_DELAY_200_US);

        
		if(((uint8)0x00U != (TLF35585_Reg[TLF35585_REG_INITERR] & TLF35585_INITERR_VMON_MASK)) ||
			((uint8)0x00U != (TLF35585_Reg[TLF35585_REG_SYSFAIL] & TLF35585_SYSFAIL_VMON_MASK)) ||
			((TLF35585_Reg[TLF35585_REG_IF] & TLF35585_IF_NOERR_MASK) != TLF35585_IF_OFF_NOERR))
		{
			Ret = E_NOT_OK;
		}
        else
        {
        	/* do nothing */
        }

		/*Clear the register value*/
		TempReg[0U].ReqCmd = TLF35585_REG_MONSF1;
		TempReg[0U].UserData = TLF35585_Reg[TLF35585_REG_MONSF1];
		TempReg[1U].ReqCmd = TLF35585_REG_MONSF2;
		TempReg[1U].UserData = TLF35585_Reg[TLF35585_REG_MONSF2];
		TempReg[2U].ReqCmd = TLF35585_REG_MONSF3;
		TempReg[2U].UserData = TLF35585_Reg[TLF35585_REG_MONSF3];
		TempReg[3U].ReqCmd = TLF35585_REG_INITERR;
		TempReg[3U].UserData = TLF35585_Reg[TLF35585_REG_INITERR];
		TempReg[4U].ReqCmd = TLF35585_REG_SYSFAIL;
		TempReg[4U].UserData = TLF35585_Reg[TLF35585_REG_SYSFAIL];
   		Ret |= TLF35585_Write(TempReg, 5U);	
		
		TLF35585_ABISTInterrupt = (uint8)0U;
    	TLF35585_Interrupt = (uint8)0U;
		
	
	}
	else
	{
		Ret = E_NOT_OK;
	}
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_IntEventSelfTest(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Test comparartors that contribute to interrupt
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_IntEventSelfTest(void)
{
	uint8 Ret;
	TLF35585_CmdType TempReg[TLF35585_FIVE];

	/*Select all (remaining) undervoltage comparators contributing to the interrupt 
      generation*/
    /*Select all (remaining) generic comparators contributing to the interrupt 
     generation*/
	TLF35585_Reg[TLF35585_REG_ABIST_CTRL0]   =
			TLF35585_CTRL0_INT_SEQ;
	TLF35585_Reg[TLF35585_REG_ABIST_SELECT0] =
			TLF35585_SELECT0_INT_SEQ;
	TLF35585_Reg[TLF35585_REG_ABIST_SELECT1] =
			TLF35585_SELECT1_INT_SEQ;
	TLF35585_Reg[TLF35585_REG_ABIST_SELECT2] =
			TLF35585_SELECT2_INT_SEQ;
	TempReg[0U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_SELECT0];
	TempReg[0U].ReqCmd   = TLF35585_REG_ABIST_SELECT0;
	TempReg[1U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_SELECT1];
	TempReg[1U].ReqCmd   = TLF35585_REG_ABIST_SELECT1;
	TempReg[2U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_SELECT2];
	TempReg[2U].ReqCmd   = TLF35585_REG_ABIST_SELECT2;
	TempReg[3U].UserData = TLF35585_Reg[TLF35585_REG_ABIST_CTRL0];
	TempReg[3U].ReqCmd   = TLF35585_REG_ABIST_CTRL0;

    #ifdef TLF35585_DYNAMIC_TEST
    #if (0U == TLF35585_DYNAMIC_TEST)
    TLF35585_Reg[TLF35585_REG_INITERR] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_IF] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_SYSFAIL] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF0] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF1] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF2] = (uint8)0x00U;
    TLF35585_Reg[TLF35585_REG_MONSF3] = (uint8)0x00U;
    #endif
    #endif

    /*Change TLF35585 mode to Normal*/
    Ret = TLF35585_GoToNormal();

	Ret |= TLF35585_Write(&TempReg[0], 4U);
	if(E_OK == Ret)
	{
        /*Check if test is success*/
        Ret = TLF35585_VerifyABIST(TLF35585_DELAY_1_MS);
		if((TLF35585_SELECT0_INT_SEQ != TLF35585_Reg[TLF35585_REG_MONSF1]) ||
				(TLF35585_SELECT1_INT_SEQ != TLF35585_Reg[TLF35585_REG_MONSF2]) ||
				(TLF35585_SELECT2_INT_SEQ != TLF35585_Reg[TLF35585_REG_MONSF3]) ||
				((uint8)0x00U !=
						(TLF35585_Reg[TLF35585_REG_INITERR] & TLF35585_INITERR_VMON_MASK)) ||
				((uint8)0x00U !=
						(TLF35585_Reg[TLF35585_REG_SYSFAIL] & TLF35585_SYSFAIL_VMON_MASK)))
		{
			Ret = E_NOT_OK;
		}
		else if(((TLF35585_Reg[TLF35585_REG_IF] & TLF35585_IF_NOERR_MASK) != TLF35585_IF_INT_NOERR))
		{
			Ret = E_NOT_OK;
		}
        else
        {
            /*do nothing*/
        }
		TLF35585_ABISTInterrupt = (uint8)0U;
        TLF35585_Interrupt = (uint8)0U;
		TempReg[0].ReqCmd = TLF35585_REG_MONSF1;
		TempReg[0].UserData = TLF35585_Reg[TLF35585_REG_MONSF1];
		TempReg[1].ReqCmd = TLF35585_REG_MONSF2;
		TempReg[1].UserData = TLF35585_Reg[TLF35585_REG_MONSF2];
		TempReg[2].ReqCmd = TLF35585_REG_MONSF3;
		TempReg[2].UserData = TLF35585_Reg[TLF35585_REG_MONSF3];
        Ret |= TLF35585_Write(TempReg, 3U);
	
	}
	else
	{
	}
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_ErrServiceWWD(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Service WWD watchdog with error sequence, only for WWD 
                    	 watchdog self test
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_ErrServiceWWD(void)
{
	uint8  Ret;
	TLF35585_CmdType TempReg[TLF35585_FIVE];

	TempReg[0U].UserData = (uint8)0x00U;
	TempReg[0U].ReqCmd   = TLF35585_REG_WWDSCMD;
	TempReg[1U].UserData = (uint8)0x01U;
	TempReg[1U].ReqCmd   = TLF35585_REG_WWDSCMD;
	TempReg[2U].UserData = (uint8)0x00U;
	TempReg[2U].ReqCmd   = TLF35585_REG_WWDSCMD;
	TempReg[3U].UserData = (uint8)0x01U;
	TempReg[3U].ReqCmd   = TLF35585_REG_WWDSCMD;

	/*Service WWD with error open and close window*/
	Ret = TLF35585_Write(&TempReg[0U], 1U);

	TLF35585_Delay((uint32)10U);
	Ret |= TLF35585_Write(&TempReg[1U], 1U);

	TLF35585_Delay((uint32)10U);
	Ret |= TLF35585_Write(&TempReg[2U], 1U);

	TLF35585_Delay((uint32)10U);
	Ret |= TLF35585_Write(&TempReg[3U], 1U);

	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_ErrServiceFWD(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Service FWD watchdog with error sequence, only for FWD 
                    	 watchdog self test
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_ErrServiceFWD(void)
{
	uint8  Ret;
	TLF35585_CmdType TempReg[TLF35585_FIVE];

	/*Service FWD with error sequence*/
	TempReg[0U].UserData = (uint8)0x00U;
	TempReg[0U].ReqCmd   = TLF35585_REG_FWDRSP;
	TempReg[1U].UserData = (uint8)0x00U;
	TempReg[1U].ReqCmd   = TLF35585_REG_FWDRSP;
	TempReg[2U].UserData = (uint8)0x00U;
	TempReg[2U].ReqCmd   = TLF35585_REG_FWDRSP;
	TempReg[3U].UserData = (uint8)0x00U;
	TempReg[3U].ReqCmd   = TLF35585_REG_FWDRSPSYNC;
    Ret = TLF35585_Write(&TempReg[0U], 4U);
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_StartFWDSelfTest(uint8 TestType)
 * Service ID		   :
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : uint8 TestType
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Get ready to FWD test
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_StartFWDSelfTest(uint8 TestType)
{
	uint8 Ret = E_OK;
	uint8 tu1_retryCnt = 0;
	TLF35585_CmdType TempReg[TLF35585_FIFTEEN];

	if(TLF35585_FWD_OFF_PATH == TestType)
	{
        /*Change TLF35585 mode to Normal*/
        Ret = TLF35585_GoToNormal();
	}
    else
    {
    	/* do nothing */
    }
	/*Clear FWD related interrupt flags*/
	TempReg[14U].UserData = TLF35585_FWD_ERROR_MASK;
	TempReg[14U].ReqCmd   = TLF35585_REG_SYSSF;
	Ret |= TLF35585_Write(&TempReg[14U], 1U);
	if((E_OK == Ret) && (TLF35585_FWD_OFF_PATH >= TestType))
	{
		do
		{		
	        /*Unlock registers*/
			TempReg[0U].UserData = TLF35585_UNLOCK_SEQU0;
			TempReg[0U].ReqCmd   = TLF35585_REG_PROTCFG;
			TempReg[1U].UserData = TLF35585_UNLOCK_SEQU1;
			TempReg[1U].ReqCmd   = TLF35585_REG_PROTCFG;
			TempReg[2U].UserData = TLF35585_UNLOCK_SEQU2;
			TempReg[2U].ReqCmd   = TLF35585_REG_PROTCFG;
			TempReg[3U].UserData = TLF35585_UNLOCK_SEQU3;
			TempReg[3U].ReqCmd   = TLF35585_REG_PROTCFG;
			/*Write WDCFG0 register for FWD test*/
			TempReg[4U].UserData = TLF35585_FWD_START_TEST12_WDCFG0;
			TempReg[4U].ReqCmd   = TLF35585_REG_WDCFG0;
			if(TLF35585_FWD_INT_PATH == TestType)
			{
	            /*Write WDCFG1 register for FWD interrupt test*/
				TempReg[5U].UserData = TLF35585_FWD_START_TEST1_WDCFG1;
			}
			else
			{
	            /*Write WDCFG1 register for FWD safety related test*/
				TempReg[5U].UserData = TLF35585_FWD_START_TEST2_WDCFG1;
			}
			TempReg[5U].ReqCmd   = TLF35585_REG_WDCFG1;
	        /*Write FWDCFG register for FWD test*/
			TempReg[6U].UserData = TLF35585_FWD_START_TEST12_FWDCFG;
			TempReg[6U].ReqCmd   = TLF35585_REG_FWDCFG;

			/*Lock registers*/
			TempReg[7U].UserData = TLF35585_LOCK_SEQU0;
			TempReg[7U].ReqCmd   = TLF35585_REG_PROTCFG;
			TempReg[8U].UserData = TLF35585_LOCK_SEQU1;
			TempReg[8U].ReqCmd   = TLF35585_REG_PROTCFG;
			TempReg[9U].UserData = TLF35585_LOCK_SEQU2;
			TempReg[9U].ReqCmd   = TLF35585_REG_PROTCFG;
			TempReg[10U].UserData = TLF35585_LOCK_SEQU3;
			TempReg[10U].ReqCmd   = TLF35585_REG_PROTCFG;
	        /*Read INITERR register*/
			TempReg[11U].UserData = (uint8)0x00U;
			TempReg[11U].ReqCmd   = TLF35585_REG_INITERR;

			Ret = TLF35585_Write(TempReg, 12U);
			if(E_OK == Ret)
			{
				TempReg[12U].UserData = (uint8)0x00U;
				TempReg[12U].ReqCmd   = TLF35585_REG_SYSSF;
				TempReg[13U].UserData = (uint8)0x01U;
				TempReg[13U].ReqCmd   = TLF35585_REG_SYSSF;
				
				Ret = TLF35585_Read(&TempReg[12], 1U);
				
				if(((TempReg[12U].UserData & TLF35585_SYSSF_CFGE_MASK) != E_OK) && (Ret == E_OK))
				{
					TLF35585_Write(&TempReg[13], 1U);
					Ret = E_NOT_OK;
				}
				else
				{
					
				}
			}
			
			tu1_retryCnt++;
		}
		while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));
	}
    else
    {
    	/* do nothing */
    }

	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_StopFWDSelfTest(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : FWD test finish, restore configuration
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_StopFWDSelfTest(void)
{
	uint8 Ret;
	uint8 tu1_retryCnt = 0;
	TLF35585_CmdType TempReg[TLF35585_FIFTEEN];

	
	do
	{
		/*Unlock registers*/
		TempReg[0U].UserData = TLF35585_UNLOCK_SEQU0;
		TempReg[0U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[1U].UserData = TLF35585_UNLOCK_SEQU1;
		TempReg[1U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[2U].UserData = TLF35585_UNLOCK_SEQU2;
		TempReg[2U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[3U].UserData = TLF35585_UNLOCK_SEQU3;
		TempReg[3U].ReqCmd   = TLF35585_REG_PROTCFG;

	    /*Restore the register value of WDCFG0 WDCFG1 and FWDCFG*/
		TempReg[4U].UserData = TLF35585_FWD_STOP_TEST12_WDCFG0;
		TempReg[4U].ReqCmd   = TLF35585_REG_WDCFG0;
		TempReg[5U].UserData = TLF35585_FWD_STOP_TEST12_WDCFG1;
		TempReg[5U].ReqCmd   = TLF35585_REG_WDCFG1;
		TempReg[6U].UserData = TLF35585_FWD_STOP_TEST12_FWDCFG;
		TempReg[6U].ReqCmd   = TLF35585_REG_FWDCFG;

		/*Lock registers*/
		TempReg[7U].UserData = TLF35585_LOCK_SEQU0;
		TempReg[7U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[8U].UserData = TLF35585_LOCK_SEQU1;
		TempReg[8U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[9U].UserData = TLF35585_LOCK_SEQU2;
		TempReg[9U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[10U].UserData = TLF35585_LOCK_SEQU3;
		TempReg[10U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[11U].UserData = (uint8)0x00U;
		TempReg[11U].ReqCmd   = TLF35585_REG_INITERR;

		Ret = TLF35585_Write(TempReg, 12U);

		TempReg[12U].UserData = (uint8)0x00U;
		TempReg[12U].ReqCmd   = TLF35585_REG_SYSSF;
		TempReg[13U].UserData = (uint8)0x01U;
		TempReg[13U].ReqCmd   = TLF35585_REG_SYSSF;
		
		Ret |= TLF35585_Read(&TempReg[12], 1U);
		
		if(((TempReg[12U].UserData & TLF35585_SYSSF_CFGE_MASK) != E_OK) && (Ret == E_OK))
		{
			TLF35585_Write(&TempReg[13], 1U);
			Ret = E_NOT_OK;
		}
		else
		{
			
		}

		tu1_retryCnt++;
	}
	while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));

    /*Clear FWD related interrupt flags*/
	TempReg[14U].UserData = TLF35585_FWD_ERROR_MASK;
	TempReg[14U].ReqCmd   = TLF35585_REG_SYSSF;
	Ret |= TLF35585_Write(&TempReg[14U], 1U);

	
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_StartWWDSelfTest(uint8 TestType)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : uint8 TestType
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Get ready to WWD test
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_StartWWDSelfTest(uint8 TestType)
{
	uint8 Ret = E_OK;
	uint8 tu1_retryCnt = 0;
	TLF35585_CmdType TempReg[TLF35585_FIFTEEN];

	if(TLF35585_WWD_OFF_PATH == TestType)
	{
        /*Change TLF35585 mode to Normal*/
        Ret = TLF35585_GoToNormal();
	}
    else
    {
    	/* do nothing */
    }
	/*Clear WWD related interrupt flags*/
	TempReg[14U].UserData = TLF35585_WWD_ERROR_MASK;
	TempReg[14U].ReqCmd   = TLF35585_REG_SYSSF;
	Ret |= TLF35585_Write(&TempReg[14U], 1U);
	if((E_OK == Ret) && (TLF35585_WWD_OFF_PATH >= TestType))
	{
		do
		{
			/*Unlock registers*/
			TempReg[0U].UserData = TLF35585_UNLOCK_SEQU0;
			TempReg[0U].ReqCmd	 = TLF35585_REG_PROTCFG;
			TempReg[1U].UserData = TLF35585_UNLOCK_SEQU1;
			TempReg[1U].ReqCmd	 = TLF35585_REG_PROTCFG;
			TempReg[2U].UserData = TLF35585_UNLOCK_SEQU2;
			TempReg[2U].ReqCmd	 = TLF35585_REG_PROTCFG;
			TempReg[3U].UserData = TLF35585_UNLOCK_SEQU3;
			TempReg[3U].ReqCmd	 = TLF35585_REG_PROTCFG;
	
			if(TLF35585_WWD_INT_PATH == TestType)
			{
				/*Write WDCFG1 register for WWD interrupt test*/
				TempReg[4U].UserData = TLF35585_WWD_START_TEST1_WDCFG0;
			}
			else
			{
				/*Write WDCFG1 register for WWD safety related test*/
				TempReg[4U].UserData = TLF35585_WWD_START_TEST2_WDCFG0;
			}
			TempReg[4U].ReqCmd	 = TLF35585_REG_WDCFG0;
			/*Write WWDCFG0 register for WWD test*/
			TempReg[5U].UserData = TLF35585_WWD_START_TEST12_WWDCFG0;
			TempReg[5U].ReqCmd	 = TLF35585_REG_WWDCFG0;
			/*Write WWDCFG1 register for WWD test*/
			TempReg[6U].UserData = TLF35585_WWD_START_TEST12_WWDCFG1;
			TempReg[6U].ReqCmd	 = TLF35585_REG_WWDCFG1;
	
			/*Lock registers*/
			TempReg[7U].UserData = TLF35585_LOCK_SEQU0;
			TempReg[7U].ReqCmd	 = TLF35585_REG_PROTCFG;
			TempReg[8U].UserData = TLF35585_LOCK_SEQU1;
			TempReg[8U].ReqCmd	 = TLF35585_REG_PROTCFG;
			TempReg[9U].UserData = TLF35585_LOCK_SEQU2;
			TempReg[9U].ReqCmd	 = TLF35585_REG_PROTCFG;
			TempReg[10U].UserData = TLF35585_LOCK_SEQU3;
			TempReg[10U].ReqCmd   = TLF35585_REG_PROTCFG;
			TempReg[11U].UserData = (uint8)0x00U;
			TempReg[11U].ReqCmd   = TLF35585_REG_INITERR;
	
			Ret = TLF35585_Write(TempReg, 12U);
			if(E_OK == Ret)
			{
				TempReg[12U].UserData = (uint8)0x00U;
				TempReg[12U].ReqCmd   = TLF35585_REG_SYSSF;
				TempReg[13U].UserData = (uint8)0x01U;
				TempReg[13U].ReqCmd   = TLF35585_REG_SYSSF;
				
				Ret = TLF35585_Read(&TempReg[12], 1U);
				
				if(((TempReg[12U].UserData & TLF35585_SYSSF_CFGE_MASK) != E_OK) && (Ret == E_OK))
				{
					TLF35585_Write(&TempReg[13], 1U);
					Ret = E_NOT_OK;
				}
				else
				{
					
				}
			}
			else
			{
				/* do nothing */
			}
			
			tu1_retryCnt++;
		}
		while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));
		
        
	}
    else
    {
    	/* do nothing */
    }
		
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_StopWWDSelfTest(void)
 * Service ID		   :
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : WWD test finish, restore configuration
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_StopWWDSelfTest(void)
{
	uint8 Ret;
	uint8 tu1_retryCnt = 0;
	TLF35585_CmdType TempReg[TLF35585_FIFTEEN];

	do
	{
		/*Unlock registers*/
		TempReg[0U].UserData = TLF35585_UNLOCK_SEQU0;
		TempReg[0U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[1U].UserData = TLF35585_UNLOCK_SEQU1;
		TempReg[1U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[2U].UserData = TLF35585_UNLOCK_SEQU2;
		TempReg[2U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[3U].UserData = TLF35585_UNLOCK_SEQU3;
		TempReg[3U].ReqCmd   = TLF35585_REG_PROTCFG;

		/*Restore the register value of WDCFG0 WWDCFG0 and WWDCFG1*/
		TempReg[4U].UserData = TLF35585_WWD_STOP_TEST12_WDCFG0;
		TempReg[4U].ReqCmd   = TLF35585_REG_WDCFG0;
		TempReg[5U].UserData = TLF35585_WWD_STOP_TEST12_WWDCFG0;
		TempReg[5U].ReqCmd   = TLF35585_REG_WWDCFG0;
		TempReg[6U].UserData = TLF35585_WWD_STOP_TEST12_WWDCFG1;
		TempReg[6U].ReqCmd   = TLF35585_REG_WWDCFG1;

		/*Lock registers*/
		TempReg[7U].UserData = TLF35585_LOCK_SEQU0;
		TempReg[7U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[8U].UserData = TLF35585_LOCK_SEQU1;
		TempReg[8U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[9U].UserData = TLF35585_LOCK_SEQU2;
		TempReg[9U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[10U].UserData = TLF35585_LOCK_SEQU3;
		TempReg[10U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[11U].UserData = (uint8)0x00U;
		TempReg[11U].ReqCmd   = TLF35585_REG_INITERR;

		Ret = TLF35585_Write(TempReg, 12U);
		
		TempReg[12U].UserData = (uint8)0x00U;
		TempReg[12U].ReqCmd   = TLF35585_REG_SYSSF;
		TempReg[13U].UserData = (uint8)0x01U;
		TempReg[13U].ReqCmd   = TLF35585_REG_SYSSF;
		
		Ret |= TLF35585_Read(&TempReg[12], 1U);
		
		if(((TempReg[12U].UserData & TLF35585_SYSSF_CFGE_MASK) != E_OK) && (Ret == E_OK))
		{
			TLF35585_Write(&TempReg[13], 1U);
			Ret = E_NOT_OK;
		}
		else
		{
			
		}

		tu1_retryCnt++;
	}
	while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));

    /*Clear WWD related interrupt flags*/
	TempReg[14U].UserData = TLF35585_WWD_ERROR_MASK;
	TempReg[14U].ReqCmd   = TLF35585_REG_SYSSF;
	Ret |= TLF35585_Write(&TempReg[14U], 1U);

	
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_StartErrorPinSelfTest(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Get ready to Error Pin test
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_StartErrorPinSelfTest(void)
{
	uint8 Ret;
	uint8 tu1_retryCnt = 0;
	TLF35585_CmdType TempReg[TLF35585_THIRTEEN];

	/*Change TLF35585 mode to Normal*/    
    Ret = TLF35585_GoToNormal();
    
	if(E_OK == Ret)
	{
		do
		{
	        /*Unlock registers*/
			TempReg[0U].UserData = TLF35585_UNLOCK_SEQU0;
			TempReg[0U].ReqCmd   = TLF35585_REG_PROTCFG;
			TempReg[1U].UserData = TLF35585_UNLOCK_SEQU1;
			TempReg[1U].ReqCmd   = TLF35585_REG_PROTCFG;
			TempReg[2U].UserData = TLF35585_UNLOCK_SEQU2;
			TempReg[2U].ReqCmd   = TLF35585_REG_PROTCFG;
			TempReg[3U].UserData = TLF35585_UNLOCK_SEQU3;
			TempReg[3U].ReqCmd   = TLF35585_REG_PROTCFG;

	    /*Write SYSPCFG1 register for Error Pin test*/
			TempReg[4U].UserData = TLF35585_FSP_START_TEST;
			TempReg[4U].ReqCmd   = TLF35585_REG_SYSPCFG1;

			/*Lock registers*/
			TempReg[5U].UserData = TLF35585_LOCK_SEQU0;
			TempReg[5U].ReqCmd   = TLF35585_REG_PROTCFG;
			TempReg[6U].UserData = TLF35585_LOCK_SEQU1;
			TempReg[6U].ReqCmd   = TLF35585_REG_PROTCFG;
			TempReg[7U].UserData = TLF35585_LOCK_SEQU2;
			TempReg[7U].ReqCmd   = TLF35585_REG_PROTCFG;
			TempReg[8U].UserData = TLF35585_LOCK_SEQU3;
			TempReg[8U].ReqCmd   = TLF35585_REG_PROTCFG;
			TempReg[9U].UserData = (uint8)0x00U;
			TempReg[9U].ReqCmd   = TLF35585_REG_INITERR;

			TempReg[10U].UserData = (uint8)TLF35585_INITERR_MASK;	/* Clear Error Flag before Test */
			TempReg[10U].ReqCmd   = TLF35585_REG_INITERR;
			
			TempReg[11U].UserData = (uint8)0x00U;
			TempReg[11U].ReqCmd   = TLF35585_REG_SYSSF;
			TempReg[12U].UserData = (uint8)0x01U;
			TempReg[12U].ReqCmd   = TLF35585_REG_SYSSF;
			
			Ret = TLF35585_Write(&TempReg[0], 11U);
			Ret |= TLF35585_Read(&TempReg[11], 1U);
			
			if(((TempReg[11U].UserData & TLF35585_SYSSF_CFGE_MASK) != E_OK) && (Ret == E_OK))
			{
				TLF35585_Write(&TempReg[12], 1U);
				Ret = E_NOT_OK;
			}
			else
			{
				
			}

			tu1_retryCnt++;
		}
		while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));


	}
    else
    {
    	/* do nothing */
    }
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_StopErrorPinSelfTest(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Error Pin test finish, restore configuration
 */
/**********************************************************************************************************************/

static Std_ReturnType TLF35585_StopErrorPinSelfTest(void)
{
	uint8 Ret;
	uint8 tu1_retryCnt = 0;
	TLF35585_CmdType TempReg[TLF35585_TWELVE];

	do
	{
		/*Unlock registers*/
		TempReg[0U].UserData = TLF35585_UNLOCK_SEQU0;
		TempReg[0U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[1U].UserData = TLF35585_UNLOCK_SEQU1;
		TempReg[1U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[2U].UserData = TLF35585_UNLOCK_SEQU2;
		TempReg[2U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[3U].UserData = TLF35585_UNLOCK_SEQU3;
		TempReg[3U].ReqCmd   = TLF35585_REG_PROTCFG;

		/*Restore the register value of SYSPCFG1*/
		TempReg[4U].UserData = TLF35585_FSP_STOP_TEST;
		TempReg[4U].ReqCmd   = TLF35585_REG_SYSPCFG1;

		/*Lock registers*/
		TempReg[5U].UserData = TLF35585_LOCK_SEQU0;
		TempReg[5U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[6U].UserData = TLF35585_LOCK_SEQU1;
		TempReg[6U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[7U].UserData = TLF35585_LOCK_SEQU2;
		TempReg[7U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[8U].UserData = TLF35585_LOCK_SEQU3;
		TempReg[8U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[9U].UserData = (uint8)0x00U;
		TempReg[9U].ReqCmd   = TLF35585_REG_INITERR;
		TempReg[10U].UserData = (uint8)0x00U;
		TempReg[10U].ReqCmd   = TLF35585_REG_SYSSF;
		TempReg[11U].UserData = (uint8)0x01U;
		TempReg[11U].ReqCmd   = TLF35585_REG_SYSSF;
		/*Clear interrupt flags*/
	    Ret = TLF35585_GetInterruptStatus((uint8)1U);
		Ret |= TLF35585_Read(&TempReg[9U], 1U);
		Ret |= TLF35585_Write(&TempReg[9U], 1U);
		Ret |= TLF35585_Write(TempReg, 9U);
		Ret |= TLF35585_Read(&TempReg[10], 1U);
		if(((TempReg[10U].UserData & TLF35585_SYSSF_CFGE_MASK) != E_OK) && (Ret == E_OK))
		{
			TLF35585_Write(&TempReg[11], 1U);
			Ret = E_NOT_OK;
		}
		else
		{
			
		}

		tu1_retryCnt++;
	}
	while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));


	
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static TLF35585_SelfTestType TLF35585_StartFSPSelfTest(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : TLF35585_SelfTestType
 * CallByAPI		   : None
 * Description		   : Start TC397 FSP test
 */
/**********************************************************************************************************************/
static TLF35585_SelfTestType TLF35585_StartFSPSelfTest(void)
{
	uint16 i = 0u;
	TLF35585_SelfTestType Ret;
	uint8 tu1_retryCnt = 0;
	TLF35585_CmdType TempReg[TLF35585_TWELVE];

	do
	{
		/*Unlock registers*/
	  TempReg[0U].UserData = TLF35585_UNLOCK_SEQU0;
		TempReg[0U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[1U].UserData = TLF35585_UNLOCK_SEQU1;
		TempReg[1U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[2U].UserData = TLF35585_UNLOCK_SEQU2;
		TempReg[2U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[3U].UserData = TLF35585_UNLOCK_SEQU3;
		TempReg[3U].ReqCmd   = TLF35585_REG_PROTCFG;

		/*Disable WWD and FWD*/
		TempReg[4U].UserData = TLF35585_DISABLE_WWD_FWD;
		TempReg[4U].ReqCmd   = TLF35585_REG_WDCFG0;

		/*Lock registers*/
		TempReg[5U].UserData = TLF35585_LOCK_SEQU0;
		TempReg[5U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[6U].UserData = TLF35585_LOCK_SEQU1;
		TempReg[6U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[7U].UserData = TLF35585_LOCK_SEQU2;
		TempReg[7U].ReqCmd   = TLF35585_REG_PROTCFG;
		TempReg[8U].UserData = TLF35585_LOCK_SEQU3;
		TempReg[8U].ReqCmd   = TLF35585_REG_PROTCFG;
		
		TempReg[9U].UserData = (uint8)0x00U;
		TempReg[9U].ReqCmd   = TLF35585_REG_SYSSF;
		TempReg[10U].UserData = (uint8)0x01U;
		TempReg[10U].ReqCmd   = TLF35585_REG_SYSSF;

		Ret = TLF35585_Write(&TempReg[0], 9U);
		
		Ret |= TLF35585_Read(&TempReg[9], 1U);
		
		if(((TempReg[9U].UserData & TLF35585_SYSSF_CFGE_MASK) != E_OK) && (Ret == E_OK))
		{
			TLF35585_Write(&TempReg[10], 1U);
			Ret = E_NOT_OK;
		}
		else
		{
			
		}
	
		tu1_retryCnt++;
	}
	while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));


	#ifdef TLF35585_SAFETLIB_USED
	#if (1U == TLF35585_SAFETLIB_USED)
    /*Read TLF35585 current mode*/
    TempReg[11U].UserData = (uint8)0x00U;
	TempReg[11U].ReqCmd   = TLF35585_REG_DEVSTAT;
	
    #endif
    #endif
	if(E_OK != Ret)
	{
		Ret |= TLF35585_ROT_TEST_ERR;
		TLF35585_SelfTestError |= TLF35585_ROT_TEST_ERR;
	}
    else
    {
    	/* do nothing */
    }
    /*Enable TLF35585 Error Pin function*/
    if((E_OK == TLF35585_StartErrorPinSelfTest()) &&
        (TLF35585_SELF_TEST_SUCCESS == Ret))
    {
        #ifdef TLF35585_SAFETLIB_USED
		#if (1U == TLF35585_SAFETLIB_USED)
        /*Confirm the chip is still in normal state*/
    	if((E_OK == TLF35585_Read(&TempReg[11U], 1U)) &&
            ((TLF35585_STATE_NORMAL & TLF35585_STATE_MASK) 
            	== (TempReg[11U].UserData & TLF35585_STATE_MASK)))
        {
            /*Activate FSP to FAULT state, reset FSP pin to LOW*/
            if(E_OK == Smu_ActivateFSP()) 
			{
         	#endif
         	#endif
         	
         	
            while(i < TLF35585_DELAY_200_US)
			{
				#ifdef TLF35585_DIO_USED
				#if (1U == TLF35585_DIO_USED)
				/*Check that the safe states outputs SS1/2 are still low and that the secondary
					  safety shutdown path is still activated on application level*/
				if((STD_LOW == Dio_ReadChannel(TLF35585_SS1_CHANNEL)) &&
					(STD_LOW == Dio_ReadChannel(TLF35585_SS2_CHANNEL)))
				{
					Ret = E_OK;
					break;
				}
				else
				{
					Ret = E_NOT_OK;
				}
				#endif
				#endif
				TLF35585_Delay((uint32)1U);
				i++;
			}

			
            if(E_OK != Ret)
			{
				Ret = TLF35585_IBIST_FSP_ERR;
				TLF35585_SelfTestError |= TLF35585_IBIST_FSP_ERR;
			}
			else
			{
				/* do nothing */
			}

            #ifdef TLF35585_SAFETLIB_USED
			#if (1U == TLF35585_SAFETLIB_USED)
			}
            else
            {
            	Ret = TLF35585_IBIST_FSP_ERR;
 				TLF35585_SelfTestError |= TLF35585_IBIST_FSP_ERR;
            }
        }
				else
				{
					Ret = TLF35585_IBIST_FSP_ERR;
        	TLF35585_SelfTestError |= TLF35585_IBIST_FSP_ERR;
				}
        #endif
        #endif
    }
    else
    {
    	Ret = TLF35585_IBIST_FSP_ERR;
        TLF35585_SelfTestError |= TLF35585_IBIST_FSP_ERR;
    }

    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static TLF35585_SelfTestType TLF35585_StopFSPSelfTest(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : TLF35585_SelfTestType
 * CallByAPI		   : None
 * Description		   : TC397 FSP test has been finished, check the result of tests
 */
/**********************************************************************************************************************/
static TLF35585_SelfTestType TLF35585_StopFSPSelfTest(void)
{
	TLF35585_SelfTestType Ret = TLF35585_IBIST_FSP_ERR;
	TLF35585_CmdType TempReg[TLF35585_TWO];

	TLF35585_SelfTestError |= (uint16)(TLF35585_IBIST_FSP_ERR);
	if(TLF35585_StopErrorPinSelfTest() == E_OK)
	{
		TempReg[0U].UserData = (uint8)0x00U;
		TempReg[0U].ReqCmd   = TLF35585_REG_INITERR;
		TempReg[1U].UserData = (uint8)0x00U;
		TempReg[1U].ReqCmd   = TLF35585_REG_DEVSTAT;
		if(E_OK == TLF35585_Read(&TempReg[0], 2U))
		{
	        if((TLF35585_STATE_INIT & TLF35585_STATE_MASK) == (TempReg[1U].UserData & TLF35585_STATE_MASK))
	        {
	            if((TempReg[0U].UserData & TLF35585_INITERR_MASK) == TLF35585_INITERR_ERRF)
						{
	                /*Error Pin(SMU FSP) test success*/
									Ret = TLF35585_SELF_TEST_SUCCESS;
									TLF35585_SelfTestError &= (uint16)~TLF35585_IBIST_FSP_ERR;
	            }
	            else
	            {
	                /*Error Pin(SMU FSP) test fail*/
									Ret = TLF35585_IBIST_FSP_ERR;
									TLF35585_SelfTestError |= TLF35585_IBIST_FSP_ERR;
	            }
					}
	        if(E_OK != TLF35585_Write(TempReg, 1U))
	        {
	        		Ret = TLF35585_IBIST_FSP_ERR;
	            TLF35585_SelfTestError |= TLF35585_IBIST_FSP_ERR;
	        }
	        else
	        {
	        	/* do nothing */
	        }
		}
    else
    {
    	/* do nothing */
    }
	}
	else
	{
			Ret = TLF35585_IBIST_FSP_ERR;
			TLF35585_SelfTestError |= TLF35585_IBIST_FSP_ERR;
	}

    
	if(E_OK != Smu_ReleaseFSP())
  {
  	Ret = TLF35585_IBIST_FSP_ERR;
      TLF35585_SelfTestError |= TLF35585_IBIST_FSP_ERR;
  }
  else
  {
			/* Success.Return Ret */					
  }
	
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_FWDIntSelfTest(void)
 * Service ID		   :
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Test FWD Interrupt function
 */
/**********************************************************************************************************************/

static Std_ReturnType TLF35585_FWDIntSelfTest(void)
{
    uint8 Ret;
    uint16 i = 0U;
	TLF35585_CmdType TempReg[TLF35585_FOUR];
    Ret = TLF35585_StartFWDSelfTest(TLF35585_FWD_INT_PATH);

    /* Get Current counter. */
    TempReg[0U].UserData = (uint8)0x00U;
	TempReg[0U].ReqCmd   = TLF35585_REG_FWDSTAT1;
	Ret |= TLF35585_Read(&TempReg[0U], 1U);

    if(E_OK == Ret)
	{
        #ifdef TLF35585_DYNAMIC_TEST
        #if (0U == TLF35585_DYNAMIC_TEST)
        TLF35585_Interrupt = (uint8)0U;
        #endif
        #endif
        /*Service FWD with error sequence*/
        (void)TLF35585_ErrServiceFWD();

        /*Wait for FWD interrupt*/
		while(i < TLF35585_DELAY_200_US)
		{
			TLF35585_Delay((uint32)1U);
			if((uint8)1U == TLF35585_Interrupt)
			{
				Ret = E_OK;
				break;
			}
            else
            {
                Ret = E_NOT_OK;
            }
			i++;
		}

		/*Get FWD error counter*/
		TempReg[1U].UserData = (uint8)0x00U;
		TempReg[1U].ReqCmd   = TLF35585_REG_FWDSTAT1;
        /*Get FWD related interrupt flags*/
		TempReg[2U].UserData = (uint8)0x00U;
		TempReg[2U].ReqCmd   = TLF35585_REG_SYSSF;
		Ret |= TLF35585_Read(&TempReg[1U], 2U);

	    /*Check FWD error counter and FWD related interrupt flags*/
		if(((TLF35585_ERROR_COUNT_2 + (TempReg[0U].UserData & TLF35585_ERROR_COUNT_MASK)) != (TempReg[1U].UserData & TLF35585_ERROR_COUNT_MASK))
				|| (TLF35585_FWD_ERROR != (TempReg[2U].UserData & TLF35585_FWD_ERROR_MASK)))
		{
			Ret = E_NOT_OK;
		}
        else
        {
        	/* do nothing */
        }

		TLF35585_Interrupt = (uint8)0U;
        /*Service FWD with right sequence*/
		Ret |= TLF35585_ServiceFWD();

		TLF35585_Delay((uint32)10U);
		TempReg[3U].UserData = (uint8)0x00U;
		TempReg[3U].ReqCmd   = TLF35585_REG_FWDSTAT1;
        Ret |= TLF35585_Read(&TempReg[3U], 1U);

		/*Check whether the error counter is reduced*/
		if(((TempReg[1U].UserData & TLF35585_ERROR_COUNT_MASK) - TLF35585_ERROR_COUNT_1) == (TempReg[3U].UserData & TLF35585_ERROR_COUNT_MASK))
		{
			Ret |= TLF35585_GetInterruptStatus((uint8)0U);
		}
		else
		{
			Ret = E_NOT_OK;
		} 	
	}
    else
    {
    	/* do nothing */
    }
    
    Ret |= TLF35585_StopFWDSelfTest();
    
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_FWDSafeSelfTest(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Test FWD safety related function
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_FWDSafeSelfTest(void)
{
    uint8 Ret;
	TLF35585_CmdType TempReg[TLF35585_FOUR];

    Ret = TLF35585_StartFWDSelfTest(TLF35585_FWD_OFF_PATH);
    if(E_OK == Ret)
	{
        #ifdef TLF35585_DYNAMIC_TEST
        #if (0U == TLF35585_DYNAMIC_TEST)
		TLF35585_Interrupt = (uint8)0U;
        #endif
        #endif
        /*Service FWD with error sequence*/
        Ret = TLF35585_ErrServiceFWD();

		TLF35585_Delay((uint32)10U);
		TempReg[0U].UserData = (uint8)0x00U;
		TempReg[0U].ReqCmd   = TLF35585_REG_INITERR;
		TempReg[1U].UserData = (uint8)0x00U;
		TempReg[1U].ReqCmd   = TLF35585_REG_FWDSTAT1;
		TempReg[2U].UserData = (uint8)0x00U;
		TempReg[2U].ReqCmd   = TLF35585_REG_DEVSTAT;
		TempReg[3U].UserData = (uint8)0x00U;
		TempReg[3U].ReqCmd   = TLF35585_REG_WWDSTAT;
        Ret |= TLF35585_Read(TempReg, 4U);
	
		if(E_OK == Ret)
		{
#ifdef TLF35585_DIO_USED
#if (1U == TLF35585_DIO_USED)
            /*Check if the FWD causes the TLF35585 to enter the INIT mode */
			if(((TempReg[0U].UserData & TLF35585_INITERR_MASK) == TLF35585_INITERR_FWDF)
                	/*Check if SS1 and SS2 is LOW*/
					&& (STD_LOW == Dio_ReadChannel(TLF35585_SS1_CHANNEL))
					&& (STD_LOW == Dio_ReadChannel(TLF35585_SS2_CHANNEL))
					/*Check if TLF35585 is in INIT mode*/
					&& ((TLF35585_STATE_INIT & TLF35585_STATE_MASK) != (TempReg[2U].ReqCmd & TLF35585_STATE_MASK)))
			{
				Ret = E_OK;
			}
			else
			{
				Ret = E_NOT_OK;
			}
#endif
#endif
            Ret |= TLF35585_Write(TempReg, 1U);
		}
        
	}
	else
	{
	    /* do nothing */
	}

	Ret |= TLF35585_StopFWDSelfTest();
	
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_FWDSelfTest(void)
 * Service ID		   :
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Test FWD function
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_FWDSelfTest(void)
{
	uint8 Ret;

#if (1U == TLF35585_FWDInt_SELF_TEST)
    Ret = TLF35585_FWDIntSelfTest();
#else
    Ret = E_OK;
#endif

    #ifdef TLF35585_DET_USED
    #if (1U == TLF35585_DET_USED)
    if(E_OK != Ret)
    {
        Det_ReportError(TLF35585_MODULE_ID, 0U,
                TLF35585_LOGIC_SELF_TEST, TLF35585_FWD_INTERRUPT_ERR);
    }
    else
    {
    	/* do nothing */
    }
    #endif
    #endif
    if(E_OK == Ret)
    {
#if (1U == TLF35585_FWDSafe_SELF_TEST)
        Ret = TLF35585_FWDSafeSelfTest();
#else
		Ret = E_OK;
#endif
        #ifdef TLF35585_DET_USED
        #if (1U == TLF35585_DET_USED)
        if(E_OK != Ret)
        {
            Det_ReportError(TLF35585_MODULE_ID, 0U,
                    TLF35585_LOGIC_SELF_TEST, TLF35585_FWD_SAFETY_ERR);
        }
        else
        {
        	/* do nothing */
        }
        #endif
        #endif
    }
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_WWDIntSelfTest(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Test WWD Interrupt function
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_WWDIntSelfTest(void)
{
    uint8 Ret;
    static volatile uint16 i = 0U;
    static volatile TLF35585_CmdType TempReg[TLF35585_FOUR];
    
    Ret = TLF35585_StartWWDSelfTest(TLF35585_WWD_INT_PATH);
    /* Get Current counter. */
    TempReg[0U].UserData = (uint8)0x00U;
    TempReg[0U].ReqCmd   = TLF35585_REG_WWDSTAT;
    Ret |= TLF35585_Read(&TempReg[0U], 1U);

    if(E_OK == Ret)
    {
		#ifdef TLF35585_DYNAMIC_TEST
		#if (0U == TLF35585_DYNAMIC_TEST)
        TLF35585_Interrupt = (uint8)0U;
		#endif
		#endif
        /*Wait for WWD interrupt*/
		while(i < TLF35585_DELAY_10_MS)
		{
			TLF35585_Delay((uint32)1U);
			if((uint8)1U == TLF35585_Interrupt)
			{
				Ret = E_OK;
				break;
			}
            else
            {
                Ret = E_NOT_OK;
            }
			i++;
		}

		/*Get WWD error counter*/
        TempReg[1U].UserData = (uint8)0x00U;
        TempReg[1U].ReqCmd   = TLF35585_REG_WWDSTAT;
        /*Get WWD related interrupt flags*/
        TempReg[2U].UserData = (uint8)0x00U;
        TempReg[2U].ReqCmd   = TLF35585_REG_SYSSF;
        Ret |= TLF35585_Read(&TempReg[1U], 2U);

        /*Check FWD error counter and WWD related interrupt flags*/
        if(((TLF35585_ERROR_COUNT_2 + (TempReg[0U].UserData & TLF35585_ERROR_COUNT_MASK)) != (TempReg[1U].UserData & TLF35585_ERROR_COUNT_MASK))
                || (TLF35585_WWD_ERROR != (TempReg[2U].UserData & TLF35585_WWD_ERROR_MASK)))
        {
        	Ret = E_NOT_OK;
        }
        else
        {
        	
        }

        TLF35585_Interrupt = (uint8)0U;        
        /*Service WWD with right sequence*/
        Ret |= TLF35585_ServiceWWD();

        TLF35585_Delay((uint32)50U);

        TempReg[3U].UserData = (uint8)0x00U;
        TempReg[3U].ReqCmd   = TLF35585_REG_WWDSTAT;
        Ret |= TLF35585_Read(&TempReg[3U], 1U);


        /*Check whether the error counter is reduced*/
        if(((TempReg[1U].UserData & TLF35585_ERROR_COUNT_MASK) - TLF35585_ERROR_COUNT_1) == (TempReg[3U].UserData & TLF35585_ERROR_COUNT_MASK))
        {
            Ret |= TLF35585_GetInterruptStatus((uint8)0U);
        }
        else
        {
            Ret = E_NOT_OK;
        }

        
    }
    else
    {
    	/* do nothing */
    }

    Ret |= TLF35585_StopWWDSelfTest();
    
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_WWDSafeSelfTest(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Test WWD safety related function
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_WWDSafeSelfTest(void)
{
	uint8 Ret;
	TLF35585_CmdType TempReg[TLF35585_FOUR];

	Ret = TLF35585_StartWWDSelfTest(TLF35585_WWD_OFF_PATH);
	if(E_OK == Ret)
	{
        /*Service WWD watchdog with error sequence*/
        Ret = TLF35585_ErrServiceWWD();
		TLF35585_Delay((uint32)100U);
		TempReg[0U].UserData = (uint8)0x00U;
		TempReg[0U].ReqCmd   = TLF35585_REG_INITERR;
		TempReg[1U].UserData = (uint8)0x00U;
		TempReg[1U].ReqCmd   = TLF35585_REG_WWDSTAT;
		TempReg[2U].UserData = (uint8)0x00U;
		TempReg[2U].ReqCmd   = TLF35585_REG_DEVSTAT;
		TempReg[3U].UserData = (uint8)0x00U;
		TempReg[3U].ReqCmd   = TLF35585_REG_WWDSTAT;
        Ret |= TLF35585_Read(TempReg, 4U);
		if(E_OK == Ret)
		{
#ifdef TLF35585_DIO_USED
#if (1U == TLF35585_DIO_USED)
            /*Check if the WWD causes the TLF35585 to enter the INIT mode */
			if(((TempReg[0U].UserData & TLF35585_INITERR_MASK) == TLF35585_INITERR_WWDF)
					/*Check if SS1 and SS2 is LOW*/
            		&& (STD_LOW == Dio_ReadChannel(TLF35585_SS1_CHANNEL))
					&& (STD_LOW == Dio_ReadChannel(TLF35585_SS2_CHANNEL))
					/*Check whether TLF35585 is in INIT mode*/
					&& ((TLF35585_STATE_INIT & TLF35585_STATE_MASK) 
						!= (TempReg[2U].ReqCmd & TLF35585_STATE_MASK)))
			{
				Ret = E_OK;
			}
			else
			{
				Ret = E_NOT_OK;
			}
#endif
#endif
            Ret |= TLF35585_Write(TempReg, 1U);
		}
        
    }
    else
    {
    	/* do nothing */
    }

    Ret |= TLF35585_StopWWDSelfTest();

    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_WWDSelfTest(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Test WWD function
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_WWDSelfTest(void)
{
    uint8 Ret;
#if (1U == TLF35585_WWDInt_SELF_TEST)
    Ret = TLF35585_WWDIntSelfTest();
#else
    Ret = E_OK;
#endif

    #ifdef TLF35585_DET_USED
    #if (1U == TLF35585_DET_USED)
    if(E_OK != Ret)
    {
        Det_ReportError(TLF35585_MODULE_ID, 0U,
                TLF35585_LOGIC_SELF_TEST, TLF35585_WWD_INTERRUPT_ERR);
    }
    else
    {
    	/* do nothing */
    }
    #endif
    #endif
    if(E_OK == Ret)
    {
#if (1U == TLF35585_WWDSafe_SELF_TEST)
        Ret = TLF35585_WWDSafeSelfTest();
#else
		Ret = E_OK;
#endif
        #ifdef TLF35585_DET_USED
        #if (1U == TLF35585_DET_USED)
        if(E_OK != Ret)
        {
            Det_ReportError(TLF35585_MODULE_ID, 0U,
                    TLF35585_LOGIC_SELF_TEST, TLF35585_WWD_SAFETY_ERR);
        }
        else
        {
        	/* do nothing */
        }
        #endif
        #endif
    }
    return Ret;
}
#endif
#endif

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_CheckInit(void)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : None
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Check initialization is successful or not
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_CheckInit(void)
{
    uint8 i;
	uint8 Ret;
	TLF35585_CmdType TempReg[TLF35585_TWENTY];

    /*read register DEVCFG0-DEVCFG2 and SYSPCFG0-WWDCFG1*/
	for(i = 0U; i < TLF35585_THREE; i++)
	{
		TempReg[i].UserData = 0U;
		TempReg[i].ReqCmd   = i;
	}
	for(i = 4U; i < TLF35585_ELEVEN; i++)
	{
		TempReg[i - (uint8)1U].UserData = 0U;
		TempReg[i - (uint8)1U].ReqCmd   = i;
	}
	/*read register RSYSPCFG0-RWWDCFG1*/
	for(i = 11U; i < TLF35585_EIGHTEEN; i++)
	{
		TempReg[i - (uint8)1U].UserData = 0U;
		TempReg[i - (uint8)1U].ReqCmd   = i;
	}

    Ret = TLF35585_Read(&TempReg[0U], 17U);


	/*check registers DEVCFG0-DEVCFG2*/
	for(i = 0U; i < TLF35585_THREE; i++)
	{
		if(2U == i)
        {
            if(TLF35585_Reg[i] != (uint8)(TempReg[i].UserData & (uint8)0x1F))
            {
            	Ret = E_NOT_OK;
            }
        }
        else
        {
			if(TLF35585_Reg[i] != TempReg[i].UserData)
			{
				Ret = E_NOT_OK;
				break;
			}
        }
	}
	for(i = 4U; i < TLF35585_ELEVEN; i++)
	{
        /*check registers SYSPCFG0-WWDCFG1*/
		if(((TLF35585_Reg[i] ^ TempReg[i - (uint8)1U].UserData)
				!= (uint8)0xFF) ||
			/*check registers RSYSPCFG0-RWWDCFG1*/
			(TLF35585_Reg[i] != TempReg[i + (uint8)6U].UserData))
		{
			Ret = E_NOT_OK;
			break;
		}
        else
        {
        	/* do nothing */
        }
	}
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_GetSystemStatus(uint8 IntStatus)
 * Service ID		   :
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : uint8 IntStatus
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Read system status flags register
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_GetSystemStatus(uint8 IntStatus)
{
	uint8 Ret = E_OK;
	TLF35585_CmdType TempReg[TLF35585_ONE];
    
    TempReg[0U].ReqCmd = TLF35585_REG_SYSSF;
	TempReg[0U].UserData = (uint8)0U;

	if((uint8)0U != IntStatus)
    {
        /*Read system status flags register*/
		Ret = TLF35585_Read(&TempReg[0U], 1U);
		if(E_OK == Ret)
		{
			TLF35585_Reg[TLF35585_REG_SYSSF] = TempReg[0U].UserData;
            /*Clear system status flags register*/
			Ret = TLF35585_Write(&TempReg[0U], 1U);
		}
		else
		{
		}
    }
    else
    {
    	/* do nothing */
    }
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_GetWakeupStatus(uint8 IntStatus)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : uint8 IntStatus
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Read wakeup status flags register
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_GetWakeupStatus(uint8 IntStatus)
{
    uint8 Ret = E_OK;
	TLF35585_CmdType TempReg[TLF35585_ONE];
    
    TempReg[0U].ReqCmd = TLF35585_REG_WKSF;
	TempReg[0U].UserData = (uint8)0U;

    if((uint8)0U != IntStatus)
    {
        /*Read wakeup status flags register*/
		Ret = TLF35585_Read(&TempReg[0U], 1U);
		if(E_OK == Ret)
		{
			TLF35585_Reg[TLF35585_REG_WKSF] = TempReg[0U].UserData;
            /*Clear wakeup status flags register*/
			Ret = TLF35585_Write(&TempReg[0U], 1U);
		}
		else
		{
		}
    }
    else
    {
    	/* do nothing */
    }
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_GetSPIStatus(uint8 IntStatus)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : uint8 IntStatus
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Read SPI status flags register
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585_GetSPIStatus(uint8 IntStatus)
{
    uint8 Ret = E_OK;
	TLF35585_CmdType TempReg[TLF35585_ONE];

    TempReg[0U].ReqCmd = TLF35585_REG_SPISF;
	TempReg[0U].UserData = (uint8)0U;

    if((uint8)0U != IntStatus)
    {
        /*Read SPI status flags register*/
		Ret = TLF35585_Read(&TempReg[0U], 1U);
		if(E_OK == Ret)
		{
			TLF35585_Reg[TLF35585_REG_SPISF] = TempReg[0U].UserData;
            /*Clear SPI status flags register*/
			Ret = TLF35585_Write(&TempReg[0U], 1U);
		}
		else
		{
		}
    }
    else
    {
    	/* do nothing */
    }
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_GetMonitorStatus(uint8 IntStatus)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : uint8 IntStatus
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Read Monitor status flags 0 to 3 registers
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_GetMonitorStatus(uint8 IntStatus)
{
    uint8 i;
	uint8 Ret = E_OK;
	TLF35585_CmdType TempReg[TLF35585_FOUR];
	if((uint8)0U != IntStatus)
    {
	    for(i = (uint8)0U; i < (uint8)TLF35585_FOUR; i++)
		{
			TempReg[i].ReqCmd = (uint8)(TLF35585_REG_MONSF0 + i);
			TempReg[i].UserData = (uint8)0U;
		}
        /*Read Monitor status flags 0 to 3 registers*/
		Ret = TLF35585_Read(&TempReg[0U], 4U);
		if(E_OK == Ret)
		{
			TLF35585_Reg[TLF35585_REG_MONSF0] = TempReg[0U].UserData;
			TLF35585_Reg[TLF35585_REG_MONSF1] = TempReg[1U].UserData;
			TLF35585_Reg[TLF35585_REG_MONSF2] = TempReg[2U].UserData;
			TLF35585_Reg[TLF35585_REG_MONSF3] = TempReg[3U].UserData;
            /*Clear Monitor status flags 0 to 3 registers*/
			Ret = TLF35585_Write(&TempReg[0U], 4U);
		}
		else
		{
		}
    }
    else
    {
    	/* do nothing */
    }
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_GetOverTempFailStatus(uint8 IntStatus)
 * Service ID		   : 
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : uint8 IntStatus
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Read Over temperature failure status flags register
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_GetOverTempFailStatus(uint8 IntStatus)
{
	uint8 Ret = E_OK;
	TLF35585_CmdType TempReg[TLF35585_ONE];

    TempReg[0U].ReqCmd = TLF35585_REG_OTWRNSF;
	TempReg[0U].UserData = (uint8)0U;
	if((uint8)0U != IntStatus)
    {
        /*Read Over temperature failure status flags register*/
		Ret = TLF35585_Read(&TempReg[0U], 1U);
		if(E_OK == Ret)
		{
			TLF35585_Reg[TLF35585_REG_OTWRNSF] = TempReg[0U].UserData;
            /*Clear Over temperature failure status flags register*/
			Ret = TLF35585_Write(&TempReg[0U], 1U);
		}
		else
		{
		}
    }
    else
    {
    	/* do nothing */
    }
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName 	   : static Std_ReturnType TLF35585_GetOverTempWarnStatus(uint8 IntStatus)
 * Service ID		   :
 * Sync/Async		   : Synchronous
 * Reentrancy		   : Non-reentrant
 * Param-Name[in]	   : uint8 IntStatus
 * Param-Name[out]	   : None
 * Param-Name[in/out]  : None
 * Return			   : Std_ReturnType
 * CallByAPI		   : None
 * Description		   : Read Over temperature warning status flags register
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_GetOverTempWarnStatus(uint8 IntStatus)
{
	uint8 Ret = E_OK;
	TLF35585_CmdType TempReg[TLF35585_ONE];

    TempReg[0U].ReqCmd = TLF35585_REG_OTFAIL;
	TempReg[0U].UserData = (uint8)0U;
	if((uint8)0U != IntStatus)
    {
        /*Read Over temperature warning status flags register*/
		Ret = TLF35585_Read(&TempReg[0U], 1U);
		if(E_OK == Ret)
		{
			TLF35585_Reg[TLF35585_REG_OTFAIL] = TempReg[0U].UserData;
            /*Clear Over temperature warning status flags register*/
			Ret = TLF35585_Write(&TempReg[0U], 1U);
		}
		else
		{
		}
    }
    else
    {
    	/* do nothing */
    }
    return Ret;
}


/*====================================================================================================================*/
/*                                            Global Function Implementation                                          */
/*====================================================================================================================*/
/**********************************************************************************************************************/
/*
 * FunctionName        : void TLF35585_SetSelfTestReslutFlag(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
void TLF35585_SetSelfTestReslutFlag(void)
{
	TLF35585_SelfTestFinish_Flag = TRUE;
	VAR_TLF35585_SelfTestFinish_Flag_b = TLF35585_SelfTestFinish_Flag;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : bool TLF35585_GetSelfTestReslutFlag(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : boolean
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
boolean TLF35585_GetSelfTestReslutFlag(void)
{
	return TLF35585_SelfTestFinish_Flag;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : void TLF35585_ClearSelfTestReslutFlag(void)
 * Service ID		   :
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
void TLF35585_ClearSelfTestReslutFlag(void)
{
	TLF35585_SelfTestFinish_Flag = FALSE;
	VAR_TLF35585_SelfTestFinish_Flag_b = TLF35585_SelfTestFinish_Flag;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : void TLF35585_SetInitFinishFlag(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : SafetyLib_Main()
 * Description         : 
 */
/**********************************************************************************************************************/
void TLF35585_SetInitFinishFlag(void)
{
	TLF35585_InitFinish_Flag = TRUE;
	VAR_TLF35585_InitFinish_Flag_b = TLF35585_InitFinish_Flag;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : bool TLF35585_GetInitFinishFlag(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : boolean
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
boolean TLF35585_GetInitFinishFlag(void)
{
	return TLF35585_InitFinish_Flag;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : void TLF35585_ClearInitFinishFlag(void)
 * Service ID		   : [SWDD-16-046]
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : 
 */
/**********************************************************************************************************************/
void TLF35585_ClearInitFinishFlag(void)
{
	TLF35585_InitFinish_Flag = FALSE;
	VAR_TLF35585_InitFinish_Flag_b = TLF35585_InitFinish_Flag;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : Std_ReturnType TLF35585_GetInterruptStatus(uint8 GetAllFlag)
 * Service ID		   :
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : uint8 GetAllFlag
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : Std_ReturnType
 * CallByAPI           : None
 * Description         : Get all interrupt flags
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585_GetInterruptStatus(uint8 GetAllFlag)
{
	uint8 Ret;
	uint8 IntStatus;
	TLF35585_CmdType TempReg[TLF35585_NINE];

	TempReg[0U].ReqCmd = TLF35585_REG_IF;
	TempReg[0U].UserData = (uint8)0U;
	TempReg[1U].ReqCmd = TLF35585_REG_DEVSTAT;
	TempReg[1U].UserData = (uint8)0U;
	TempReg[2U].ReqCmd = TLF35585_REG_VMONSTAT;
	TempReg[2U].UserData = (uint8)0U;

	/*Read Interrupt flags register*/
	Ret = TLF35585_Read(&TempReg[0U], 3U);

	TLF35585_Reg[TLF35585_REG_IF] = TempReg[0U].UserData;
	TLF35585_Reg[TLF35585_REG_DEVSTAT] = TempReg[1U].UserData;
	TLF35585_Reg[TLF35585_REG_VMONSTAT] = TempReg[2U].UserData;

	IntStatus = (TempReg[0U].UserData & TLF35585_SYSTEM_INT_MASK)
				| (TempReg[0U].UserData & TLF35585_MISS_INT_MASK);
	IntStatus |= GetAllFlag;
		/*Read system status flags register*/
		Ret |= TLF35585_GetSystemStatus(IntStatus);
		IntStatus = (TempReg[0U].UserData & TLF35585_WAKE_INT_MASK)
				| (TempReg[0U].UserData & TLF35585_MISS_INT_MASK);
	IntStatus |= GetAllFlag;
		/*Read wakeup status flags register*/
		Ret |= TLF35585_GetWakeupStatus(IntStatus);
		IntStatus = (TempReg[0U].UserData & TLF35585_SPI_INT_MASK)
				| (TempReg[0U].UserData & TLF35585_MISS_INT_MASK);
	IntStatus |= GetAllFlag;
		/*Read SPI status flags register*/
		Ret |= TLF35585_GetSPIStatus(IntStatus);
		IntStatus = (TempReg[0U].UserData & TLF35585_MONITOR_INT_MASK)
				| (TempReg[0U].UserData & TLF35585_MISS_INT_MASK);
	IntStatus |= GetAllFlag;
		/*Read Monitor status flags 0 to 3 registers*/
		Ret |= TLF35585_GetMonitorStatus(IntStatus);
		IntStatus = (TempReg[0U].UserData & TLF35585_OVERT_WARN_INT_MASK)
				| (TempReg[0U].UserData & TLF35585_MISS_INT_MASK);
	IntStatus |= GetAllFlag;
		/*Read Over temperature failure status flags register*/
		Ret |= TLF35585_GetOverTempFailStatus(IntStatus);
		IntStatus = (TempReg[0U].UserData & TLF35585_OVERT_FAIL_INT_MASK)
				| (TempReg[0U].UserData & TLF35585_MISS_INT_MASK);
	IntStatus |= GetAllFlag;
		/*Read Over temperature warning status flags register*/
		Ret |= TLF35585_GetOverTempWarnStatus(IntStatus);

		IntStatus = TempReg[0U].UserData & TLF35585_ABIST_INT_MASK;
	if((uint8)0U != IntStatus)
	{
		TLF35585_ABISTInterrupt = (uint8)1U;
	}
		/*Clear Interrupt flags register*/
		Ret |= TLF35585_Write(&TempReg[0U], 1U);
  #ifdef TLF35585_DET_USED
  #if (1U == TLF35585_DET_USED)
		if(E_OK != Ret)
		{
				Det_ReportError(TLF35585_MODULE_ID, 0U,
								TLF35585_GET_INTERRUPT, TLF35585_GET_INTERRUPT_ERR);
		}
  #endif
  #endif
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : Std_ReturnType TLF35585_SetSleepTime(uint32 Minute)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : uint32 Minute
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : Std_ReturnType
 * CallByAPI           : None
 * Description         : Set TLF35585 sleep time
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585_SetSleepTime(uint32 Minute)
{
	uint8 Ret;
	uint8 Count;
    uint8 i;

	uint32 Time_10ms;
	TLF35585_CmdType TempReg[TLF35585_EIGHT];

	if(Minute <= TLF35585_SLEEP_TIME_MAX)
	{
		if(Minute > TLF35585_SLEEP_TIME_MIN)
		{
			Count = (uint8)4U;
            /*Calculate ticks*/
			Time_10ms = (uint32)(Minute * (uint32)6000U);
            /*Set wake-up time*/
			TempReg[0U].ReqCmd = TLF35585_REG_WKTIMCFG0;
			TempReg[0U].UserData = (uint8)(Time_10ms & 0xFF);
			TempReg[1U].ReqCmd = TLF35585_REG_WKTIMCFG1;
			TempReg[1U].UserData = (uint8)((Time_10ms >> 8u)& 0xFF);
			TempReg[2U].ReqCmd = TLF35585_REG_WKTIMCFG2;
			TempReg[2U].UserData = (uint8)(Time_10ms >> 16U);
            /*Enable wake-up timer*/
            TempReg[3U].ReqCmd = TLF35585_REG_DEVCFG0;
			TempReg[3U].UserData =
					(uint8)(TLF35585_Reg[TLF35585_REG_DEVCFG0] | (uint8)0x80U);
            /*Read back wake-up time*/
			TempReg[4U].ReqCmd = TLF35585_REG_WKTIMCFG0;
			TempReg[4U].UserData = (uint8)0x00U;
			TempReg[5U].ReqCmd = TLF35585_REG_WKTIMCFG1;
			TempReg[5U].UserData = (uint8)0x00U;
			TempReg[6U].ReqCmd = TLF35585_REG_WKTIMCFG2;
			TempReg[6U].UserData = (uint8)0x00U;
            TempReg[7U].ReqCmd = TLF35585_REG_DEVCFG0;
			TempReg[7U].UserData = (uint8)0x00U;
		}
		else
		{
			Count = (uint8)1U;
            /*Disable wake-up timer*/
			TempReg[0U].ReqCmd = TLF35585_REG_DEVCFG0;
			TempReg[0U].UserData =
					(uint8)(TLF35585_Reg[TLF35585_REG_DEVCFG0] & (uint8)0x7FU);
			TempReg[1U].ReqCmd = TLF35585_REG_DEVCFG0;
			TempReg[1U].UserData = (uint8)0x00U;
		}
        Ret = TLF35585_Write(TempReg, Count);
        Ret |= TLF35585_Read(&TempReg[Count], Count);

        if(E_OK == Ret)
        {
            /*Check register value*/
        	for(i = (uint8)0U; i < Count; i++)
            {
            	if(TempReg[Count + i].UserData != TempReg[i].UserData)
                {
                	Ret = E_NOT_OK;
                    break;
                }
            }
        }
	}
	else
	{
		Ret = E_NOT_OK;
	}
    #ifdef TLF35585_DET_USED
    #if (1U == TLF35585_DET_USED)
    if(E_OK != Ret)
    {
        Det_ReportError(TLF35585_MODULE_ID, 0U,
                TLF35585_SET_SLEEP_TIME, TLF35585_SET_SLEEP_TIME_ERR);
    }
    else
    {
    	/* do nothing */
    }
    #endif
    #endif
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : Std_ReturnType TLF35585_GoToStandby(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : Std_ReturnType
 * CallByAPI           : None
 * Description         : Change TLF35585 mode to Standby
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585_GoToStandby(void)
{
	uint8 Ret;
	uint8 tu1_retryCnt = 0;
	uint8 WakeUpStatus = 0U;
	uint16 i;

	TLF35585_CmdType TempReg[TLF35585_SEVENTEEN];
    for(i = 0U; i < TLF35585_SHUT_DOWN_DELAY_TIME; i++)
    {
        #if (1U == TLF35585_ACAN_WAKEUP)
        WakeUpStatus = Dio_ReadChannel(TLF35585_INH_CHANNEL);
        #endif
        #if (1U == TLF35585_RTC_WAKEUP)
        WakeUpStatus |= Dio_ReadChannel(TLF35585_RTC_INT_CHANNEL);
        #endif
        #if (1U == TLF35585_LOCK_MCU)
        WakeUpStatus |= Dio_ReadChannel(TLF35585_LOCK_CHANNEL);
        #endif
        if(STD_LOW == WakeUpStatus)
        {
            TLF35585_Delay((uint32)5000U);
            Ret = E_OK;
            break;
        }
        else
        {
            TLF35585_Delay((uint32)5000U);
            Ret = E_NOT_OK;
        }
    }

    /* Change TLF35585 to STANBY mode*/
	TempReg[0U].ReqCmd = TLF35585_REG_DEVCTRL;
	TempReg[0U].UserData = TLF35585_STATE_STANDBY;
	TempReg[1U].ReqCmd = TLF35585_REG_DEVCTRLN;
	TempReg[1U].UserData = (uint8)~TLF35585_STATE_STANDBY;
	TempReg[2U].ReqCmd = TLF35585_REG_DEVCTRL;
	TempReg[2U].UserData = (uint8)0x00U;
	TempReg[3U].ReqCmd = TLF35585_REG_DEVSTAT;
	TempReg[3U].UserData = (uint8)0x00U;
	TempReg[4U].ReqCmd = TLF35585_REG_DEVCFG0;
	TempReg[4U].UserData = (uint8)0x00U;

	/*Unlock registers*/
    TempReg[5U].UserData = TLF35585_UNLOCK_SEQU0;
    TempReg[5U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[6U].UserData = TLF35585_UNLOCK_SEQU1;
    TempReg[6U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[7U].UserData = TLF35585_UNLOCK_SEQU2;
    TempReg[7U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[8U].UserData = TLF35585_UNLOCK_SEQU3;
    TempReg[8U].ReqCmd   = TLF35585_REG_PROTCFG;

    /*Disable Error pin monitor*/
    TempReg[9U].UserData = TLF35585_FSP_STOP_TEST;
    TempReg[9U].ReqCmd   = TLF35585_REG_SYSPCFG1;

    TempReg[10U].UserData = TLF35585_FWD_STOP_TEST12_WDCFG0;
    TempReg[10U].ReqCmd   = TLF35585_REG_WDCFG0;

    /*Lock registers*/
    TempReg[11U].UserData = TLF35585_LOCK_SEQU0;
    TempReg[11U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[12U].UserData = TLF35585_LOCK_SEQU1;
    TempReg[12U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[13U].UserData = TLF35585_LOCK_SEQU2;
    TempReg[13U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[14U].UserData = TLF35585_LOCK_SEQU3;
    TempReg[14U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[15U].UserData = (uint8)0x00U;
	TempReg[15U].ReqCmd   = TLF35585_REG_SYSSF;
	TempReg[16U].UserData = (uint8)0x01U;
	TempReg[16U].ReqCmd   = TLF35585_REG_SYSSF;

	Ret |= TLF35585_Read(&TempReg[3U], 1U);
	if((TLF35585_STATE_INIT & TLF35585_STATE_MASK) 
					== (TempReg[3U].UserData & TLF35585_STATE_MASK))
	{
	    do
		{
			Ret |= TLF35585_Write(&TempReg[5U], 10U);
		
			Ret |= TLF35585_Read(&TempReg[15], 1U);
			
			if(((TempReg[15U].UserData & TLF35585_SYSSF_CFGE_MASK) != E_OK) && (Ret == E_OK))
			{
				TLF35585_Write(&TempReg[16], 1U);
				Ret = E_NOT_OK;
			}
			else
			{
				
			}

			tu1_retryCnt++;
		}
		while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));
		
	    TLF35585_Delay((uint32)100U);
		Ret |= TLF35585_lSetMode(TLF35585_NORMAL); 
        TLF35585_Delay((uint32)100U);
	}
    else
    {
    	/* do nothing */
    }
    #if (1U == TLF35585_KL15_WAKEUP)
    Ret |= Dio_ReadChannel(TLF35585_KL15_CHANNEL);
    #endif
	#if (1U == TLF35585_VCU_WAKEUP)
    Ret |= Dio_ReadChannel(TLF35585_VCU_CHANNEL);
    #endif
	#if (1U == TLF35585_AC_WAKEUP)
    Ret |= Dio_ReadChannel(TLF35585_AC_CHANNEL);
    #endif
	#if (1U == TLF35585_DC_WAKEUP)
    Ret |= Dio_ReadChannel(TLF35585_DC_CHANNEL);
    #endif
    if(E_OK == Ret)
    {
    	Ret = TLF35585_Write(TempReg, 2U);
        /*Wait for the TLF35585 switch to STANDBY mode*/
        TLF35585_Delay((uint32)100U);
        #ifdef TLF35585_DET_USED
        #if (1U == TLF35585_DET_USED)
        {
            Det_ReportError(TLF35585_MODULE_ID, 0U,
                    TLF35585_GO_TO_STANDBY, TLF35585_GO_TO_STANDBY_ERR);
        }
        #endif
        #endif
        Ret |= TLF35585_Read(&TempReg[3U], 2U);
		if(E_OK == Ret)
		{
            /*If TC275 not power down , send command again*/
            Ret = TLF35585_Write(&TempReg[0], 2U);
			if(E_OK == Ret)
			{
                TLF35585_Delay((uint32)100U);
                Ret = E_NOT_OK;
			}
			else
			{
				Ret = E_NOT_OK;
			}
		}
		else
		{
			Ret = E_NOT_OK;
		}
	}
	else
	{
		Ret = E_NOT_OK;
	}

	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : Std_ReturnType TLF35585_GoToNormal(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : Std_ReturnType
 * CallByAPI           : None
 * Description         : Change TLF35585 mode to Normal
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585_GoToNormal(void)
{
    uint8 Ret;
    TLF35585_CmdType TempReg[TLF35585_ONE];

    /*Change TLF35585 to NORMAL mode*/
    Ret = TLF35585_lSetMode(TLF35585_NORMAL);
    if(E_OK == Ret)
    {
        TLF35585_Delay((uint32)10U);
				
        TempReg[0U].UserData = (uint8)0x00U;
        TempReg[0U].ReqCmd   = TLF35585_REG_DEVSTAT;
        /*Read DEVSTAT register*/
        Ret = TLF35585_Read(&TempReg[0U], 1U);
        if(E_OK == Ret)
        {
#ifdef TLF35585_DIO_USED
#if (1U == TLF35585_DIO_USED)
            /*Check whether TLF35585 is in normal mode*/
            if(((TLF35585_STATE_NORMAL & TLF35585_STATE_MASK)
                    != (TempReg[0U].UserData & TLF35585_STATE_MASK))
                || (STD_HIGH != Dio_ReadChannel(TLF35585_SS1_CHANNEL))
                || (STD_HIGH != Dio_ReadChannel(TLF35585_SS2_CHANNEL)))
            {
                Ret = E_NOT_OK;
            }
            else
            {
            	/* do nothing */
            }
#else
            /*Check whether TLF35585 is in normal mode*/
            if((TLF35585_STATE_NORMAL & TLF35585_STATE_MASK) != (TempReg[0U].UserData & TLF35585_STATE_MASK))
            {
                Ret = E_NOT_OK;
            }
            else
            {
            	/* do nothing */
            }
#endif
#endif
        }
        else
        {
        	/* do nothing */
        }
    }
    else
    {
    	/* do nothing */
    }
    return Ret;
}

#ifdef TLF35585_SELF_TEST
#if (1U == TLF35585_SELF_TEST)
/**********************************************************************************************************************/
/*
 * FunctionName        : TLF35585_SelfTestType TLF35585_FSPSelfTest(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : TLF35585_SelfTestType
 * CallByAPI           : None
 * Description         : Error Pin(SMU FSP) test
 */
/**********************************************************************************************************************/
TLF35585_SelfTestType TLF35585_FSPSelfTest(void)
{
	TLF35585_SelfTestType Ret = TLF35585_SELF_TEST_SUCCESS;
    
    #ifdef TLF35585_SAFETLIB_USED
	#if (1U == TLF35585_SAFETLIB_USED)
    uint8 SmuState;
    #endif
    #endif


	#ifdef TLF35585_SAFETLIB_USED
	#if (1U == TLF35585_SAFETLIB_USED)
    /*Switch SMU to FAULT-Free state*/
    SmuState = (Smu_StateType)SMU_DBG.B.SSM;
	if((SmuState == SMU_START_STATE) || (SmuState == SMU_FAULT_STATE))
    {  
		
    	if(E_OK != Smu_ReleaseFSP())
        {
       		Ret = TLF35585_IBIST_FSP_ERR;
            TLF35585_SelfTestError |= TLF35585_IBIST_FSP_ERR;
        }
        else
        {
         	/* do nothing */
        }
    }
    #endif
    #endif
	
    #ifdef TLF35585_DET_USED
    #if (1U == TLF35585_DET_USED)
    if(TLF35585_SELF_TEST_SUCCESS != Ret)
    {
        Det_ReportError(TLF35585_MODULE_ID, 0U,
                TLF35585_ROT_SELF_TEST, TLF35585_ROT_INIT_ERR);
    }
    else
    {
    	/* do nothing */
    }
    #endif
    #endif

	if(TLF35585_SELF_TEST_SUCCESS == Ret)
	{
        Ret = TLF35585_StartFSPSelfTest();

		Ret |= TLF35585_StopFSPSelfTest();

        if(TLF35585_SELF_TEST_SUCCESS != Ret)
        {
        	Ret = TLF35585_IBIST_FSP_ERR;
            TLF35585_SelfTestError |= TLF35585_IBIST_FSP_ERR;
        }

		#ifdef TLF35585_DET_USED
        #if (1U == TLF35585_DET_USED)
        if(TLF35585_SELF_TEST_SUCCESS != Ret)
        {
						
            Det_ReportError(TLF35585_MODULE_ID, 0U,
                    TLF35585_ROT_SELF_TEST, TLF35585_ROT_START_ERR);				
        }
        else
        {
        	
        }
		#endif
       	#endif
        
	}

	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : TLF35585_SelfTestType TLF35585_LogicSelfTest(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : TLF35585_SelfTestType
 * CallByAPI           : None
 * Description         : Logic self test, include FWD test and WWD test
 */
/**********************************************************************************************************************/
TLF35585_SelfTestType TLF35585_LogicSelfTest(void)
{
	TLF35585_SelfTestType Ret = TLF35585_SELF_TEST_SUCCESS;

	/*Test WWD function*/
	if(E_NOT_OK == TLF35585_WWDSelfTest())
	{
		Ret = TLF35585_IBIST_WWD_ERR;
		TLF35585_SelfTestError |= TLF35585_IBIST_WWD_ERR;
	}
    /*Test FWD function*/
	if(E_NOT_OK == TLF35585_FWDSelfTest())
	{
		Ret |= TLF35585_IBIST_FWD_ERR;
		TLF35585_SelfTestError |= TLF35585_IBIST_FWD_ERR;
	}
    
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : TLF35585_SelfTestType TLF35585_AnalogSelfTest(void)
 * Service ID		   :
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : TLF35585_SelfTestType
 * CallByAPI           : None
 * Description         : Analog self test
 */
/**********************************************************************************************************************/
TLF35585_SelfTestType TLF35585_AnalogSelfTest(void)
{
	TLF35585_SelfTestType Ret;
	uint8 tu1_retryCnt = 0;
    TLF35585_CmdType TempReg[TLF35585_TWELVE];

	/* disable WWW and FWD, by john zhang */
	/*Unlock registers*/
	TempReg[0U].UserData = TLF35585_UNLOCK_SEQU0;
	TempReg[0U].ReqCmd   = TLF35585_REG_PROTCFG;
	TempReg[1U].UserData = TLF35585_UNLOCK_SEQU1;
	TempReg[1U].ReqCmd   = TLF35585_REG_PROTCFG;
	TempReg[2U].UserData = TLF35585_UNLOCK_SEQU2;
	TempReg[2U].ReqCmd   = TLF35585_REG_PROTCFG;
	TempReg[3U].UserData = TLF35585_UNLOCK_SEQU3;
	TempReg[3U].ReqCmd   = TLF35585_REG_PROTCFG;

	/*Disable WWD and FWD*/
	TempReg[4U].UserData = TLF35585_DISABLE_WWD_FWD;
	TempReg[4U].ReqCmd   = TLF35585_REG_WDCFG0;

	/* No delay for ss2, by john zhang */
	/*TempReg[4U].UserData = TLF35585_FSP_STOP_TEST;
	TempReg[4U].ReqCmd   = TLF35585_REG_SYSPCFG1;*/

	/*Lock registers*/
	TempReg[5U].UserData = TLF35585_LOCK_SEQU0;
	TempReg[5U].ReqCmd   = TLF35585_REG_PROTCFG;
	TempReg[6U].UserData = TLF35585_LOCK_SEQU1;
	TempReg[6U].ReqCmd   = TLF35585_REG_PROTCFG;
	TempReg[7U].UserData = TLF35585_LOCK_SEQU2;
	TempReg[7U].ReqCmd   = TLF35585_REG_PROTCFG;
	TempReg[8U].UserData = TLF35585_LOCK_SEQU3;
	TempReg[8U].ReqCmd   = TLF35585_REG_PROTCFG;

	TempReg[9U].UserData = (uint8)0x00U;
	TempReg[9U].ReqCmd   = TLF35585_REG_SYSSF;
	TempReg[10U].UserData = (uint8)0x01U;
	TempReg[10U].ReqCmd   = TLF35585_REG_SYSSF;
	/* QAC Annotation:no effect */
	/* PRQA S 3112 4 */
	/* PRQA S 3200 4 */
	

	do
	{
		Ret = TLF35585_Write(&TempReg[0], 9U);
		
		Ret |= TLF35585_Read(&TempReg[9], 1U);
		
		if(((TempReg[9U].UserData & TLF35585_SYSSF_CFGE_MASK) != E_OK) && (Ret == E_OK))
		{
			TLF35585_Write(&TempReg[10], 1U);
			Ret = E_NOT_OK;
		}
		else
		{
			
		}

		tu1_retryCnt++;
	}
	while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));

	if(Ret == E_OK)
	{
#if (1U == TLF35585_OffFullPath_SELF_TEST)
		/*Test the activation of the secondary safety shutdown path*/
		if(E_NOT_OK == TLF35585_OffFullPathSelfTest())
		{
			Ret = TLF35585_OFF_PATH_ERR;
			TLF35585_SelfTestError |= TLF35585_OFF_PATH_ERR;
	        #ifdef TLF35585_DET_USED
	        #if (1U == TLF35585_DET_USED)
	        if(E_OK != Ret)
	        {
	            Det_ReportError(TLF35585_MODULE_ID, 0U,
	                    TLF35585_LOGIC_SELF_TEST, TLF35585_ABIST_SAFETY_PATH_ERR);
	        }
	        #endif
	        #endif
		}
	    else
	    {
	    	/* do nothing */
	    }
#endif

#if (1U == TLF35585_OffPath_SELF_TEST)
	    /*Test comparartors that contribute to shut-down path*/
		if(E_NOT_OK == TLF35585_OffPathSelfTest())
		{
			Ret |= TLF35585_OFF_COM_ERR;
			TLF35585_SelfTestError |= TLF35585_OFF_COM_ERR;
	        #ifdef TLF35585_DET_USED
	        #if (1U == TLF35585_DET_USED)
	        if(E_OK != Ret)
	        {
	            Det_ReportError(TLF35585_MODULE_ID, 0U,
	                    TLF35585_LOGIC_SELF_TEST, TLF35585_ABIST_SAFETY_COMP_ERR);
	        }
	        #endif
	        #endif
		}
	    else
	    {
	    	/* do nothing */
	    }
#endif

#if (1U == TLF35585_IntFullPath_SELF_TEST)
	    /*Test the generation of an interrupt event*/
		if(E_NOT_OK == TLF35585_IntFullPathSelfTest())
		{
			Ret |= TLF35585_INT_PATH_ERR;
			TLF35585_SelfTestError |= TLF35585_INT_PATH_ERR;
	        #ifdef TLF35585_DET_USED
	        #if (1U == TLF35585_DET_USED)
	        if(E_OK != Ret)
	        {
	            Det_ReportError(TLF35585_MODULE_ID, 0U,
	                    TLF35585_LOGIC_SELF_TEST, TLF35585_ABIST_INT_PATH_ERR);
	        }
	        #endif
	        #endif
		}
	    else
	    {
	    	/* do nothing */
	    }
#endif

#if (1U == TLF35585_IntEvent_SELF_TEST)
	    /*Test comparartors that contribute to interrupt*/
		if(E_NOT_OK == TLF35585_IntEventSelfTest())
		{
			Ret |= TLF35585_INT_COM_ERR;
			TLF35585_SelfTestError |= TLF35585_INT_COM_ERR;
	        #ifdef TLF35585_DET_USED
	        #if (1U == TLF35585_DET_USED)
	        if(E_OK != Ret)
	        {
	            Det_ReportError(TLF35585_MODULE_ID, 0U,
	                    TLF35585_LOGIC_SELF_TEST, TLF35585_ABIST_INT_COMP_ERR);
	        }
	        #endif
	        #endif
		}
	    else
	    {
	    	/* do nothing */
	    }
#endif

	   /*Switch TLF35585 to Normal mode*/
	   if(E_NOT_OK == TLF35585_lSetMode(TLF35585_NORMAL))
	   {
		   Ret |= TLF35585_CHANGE_MODE_ERR;
		   TLF35585_SelfTestError |= TLF35585_CHANGE_MODE_ERR;
	   #ifdef TLF35585_DET_USED
	   #if (1U == TLF35585_DET_USED)
		   if(E_OK != Ret)
		   {
			   Det_ReportError(TLF35585_MODULE_ID, 0U,
					   TLF35585_LOGIC_SELF_TEST, TLF35585_ABIST_SET_MODE_ERR);
		   }
	   #endif
	   #endif
	   }
	   else
	   {
		   /* do nothing */
	   }

	}
	else
	{
	
	}
	
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : TLF35585_SelfTestType TLF35585_SelfTest(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : TLF35585_SelfTestType
 * CallByAPI           : None
 * Description         : TLF35585 self test ,include FSP Self Test,Analog self test and Logic self test
 */
/**********************************************************************************************************************/
TLF35585_SelfTestType TLF35585_SelfTest(void)
{
	TLF35585_SelfTestType Ret;
	

	/* Set NMI Request for TLF35585 SelfTest. */
	TLF35585_SetSelfTestIRQRequestFlag(1u);
#if (1U == TLF35585_MPS_USED)
#ifdef TLF35585_DIO_USED
#if (1U == TLF35585_DIO_USED)
    /*Enable TLF35585 test mode*/
    //Dio_WriteChannel(TLF35585_TM_CHANNEL, STD_HIGH); /*Do Not Reset MCU*/
#endif
#endif
#endif
    
    #if (1U == TLF35585_ROT_ERRPIN_SELF_TEST)
	/*Test TLF35585 ROT pin function*/
	/*Test TLF35585 Error pin function*/
	/*Tesst TC397 SMU FSP pin function*/
	Ret = TLF35585_FSPSelfTest();
	#else
	Ret = TLF35585_SELF_TEST_SUCCESS;
	#endif
	
	if(TLF35585_SELF_TEST_SUCCESS == Ret)
	{
        /*Test TLF35585 analog function*/
		Ret = TLF35585_AnalogSelfTest();		/*add by xj*/
		if(TLF35585_SELF_TEST_SUCCESS == Ret)
		{
			/*Test TLF35585 logic function*/
            Ret = TLF35585_LogicSelfTest();
		}
        else
        {
        	/* do nothing */
        }
	}
  else
  {
  	/* do nothing */
  }

#if (1U == TLF35585_MPS_USED)
#ifdef TLF35585_DIO_USED
#if (1U == TLF35585_DIO_USED)
    /*Enable TLF35585 test mode*/
    Dio_WriteChannel(TLF35585_TM_CHANNEL, STD_LOW); /*Do Not Reset MCU*/
#endif
#endif
#endif

	/* Clear NMI Request for TLF35585 SelfTest. */
	TLF35585_ClearSelfTestIRQRequestFlag();
		
	return Ret;
}
#endif
#endif

/**********************************************************************************************************************/
/*
 * FunctionName        : Std_ReturnType TLF35585_DisableFWD(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : Std_ReturnType
 * CallByAPI           : None
 * Description         : Disable FWD watchdog
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585_DisableFWD(void)
{
    uint8 Ret;
    uint8 tu1_retryCnt = 0;
    TLF35585_CmdType TempReg[TLF35585_TWELVE];
    TempReg[0U].UserData = (uint8)0x00U;
    TempReg[0U].ReqCmd   = TLF35585_REG_WDCFG0;

    Ret = TLF35585_Read(&TempReg[0U], 1U);
    TempReg[0U].UserData = (uint8)~TempReg[0U].UserData;
    TempReg[0U].UserData &= TLF35585_FWD_DISABLE_BIT_MASK;

    /*Unlock registers*/
    TempReg[1U].UserData = TLF35585_UNLOCK_SEQU0;
    TempReg[1U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[2U].UserData = TLF35585_UNLOCK_SEQU1;
    TempReg[2U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[3U].UserData = TLF35585_UNLOCK_SEQU2;
    TempReg[3U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[4U].UserData = TLF35585_UNLOCK_SEQU3;
    TempReg[4U].ReqCmd   = TLF35585_REG_PROTCFG;

    TempReg[5U].UserData = TempReg[0U].UserData;
    TempReg[5U].ReqCmd   = TLF35585_REG_WDCFG0;

    /*Lock registers*/
    TempReg[6U].UserData = TLF35585_LOCK_SEQU0;
    TempReg[6U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[7U].UserData = TLF35585_LOCK_SEQU1;
    TempReg[7U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[8U].UserData = TLF35585_LOCK_SEQU2;
    TempReg[8U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[9U].UserData = TLF35585_LOCK_SEQU3;
    TempReg[9U].ReqCmd   = TLF35585_REG_PROTCFG;

    TempReg[10U].UserData = (uint8)0x00U;
	TempReg[10U].ReqCmd   = TLF35585_REG_SYSSF;
	TempReg[11U].UserData = (uint8)0x01U;
	TempReg[11U].ReqCmd   = TLF35585_REG_SYSSF;
    
	do
	{
		Ret |= TLF35585_Write(&TempReg[1U], 9U);
		
    	Ret |= TLF35585_Read(&TempReg[10], 1U);
		if(((TempReg[10U].UserData & TLF35585_SYSSF_CFGE_MASK) != E_OK) && (Ret == E_OK))
		{
			TLF35585_Write(&TempReg[11], 1U);
			Ret = E_NOT_OK;
		}
		else
		{
			
		}

		tu1_retryCnt++;
	}
	while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));

	if(E_OK == Ret)
	{
		TempReg[1U].UserData = (uint8)0x00U;
	    TempReg[1U].ReqCmd   = TLF35585_REG_WDCFG0;
	    TempReg[2U].UserData = (uint8)0x00U;
	    TempReg[2U].ReqCmd   = TLF35585_REG_RWDCFG0;

	    Ret = TLF35585_Read(&TempReg[1U], 2U);

	    /*check registers WDCFG0*/
	    if(((TempReg[0].UserData ^ TempReg[1].UserData)
	            != (uint8)0xFF) ||
	        /*check registers RWDCFG0*/
	        (TempReg[0].UserData != TempReg[2].UserData))
	    {
	        Ret = E_NOT_OK;
	    }
	    else
	    {
	    	/* do nothing */
	    }
	}
	else
	{
		
	}

    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : Std_ReturnType TLF35585_EnableFWD(void)
 * Service ID		   :
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : Std_ReturnType
 * CallByAPI           : None
 * Description         : Enable FWD watchdog
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585_EnableFWD(void)
{
    uint8 Ret;
    uint8 tu1_retryCnt = 0;
    TLF35585_CmdType TempReg[TLF35585_TWELVE];

    TempReg[0U].UserData = (uint8)0x00U;
    TempReg[0U].ReqCmd   = TLF35585_REG_WDCFG0;

    Ret = TLF35585_Read(&TempReg[0U], 1U);
    TempReg[0U].UserData = (uint8)~TempReg[0U].UserData;
    TempReg[0U].UserData |= TLF35585_FWD_ENABLE_BIT_MASK;

    /*Unlock registers*/
    TempReg[1U].UserData = TLF35585_UNLOCK_SEQU0;
    TempReg[1U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[2U].UserData = TLF35585_UNLOCK_SEQU1;
    TempReg[2U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[3U].UserData = TLF35585_UNLOCK_SEQU2;
    TempReg[3U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[4U].UserData = TLF35585_UNLOCK_SEQU3;
    TempReg[4U].ReqCmd   = TLF35585_REG_PROTCFG;

    /*Enable FWD watchdog*/
    TempReg[5U].UserData = TempReg[0U].UserData;
    TempReg[5U].ReqCmd   = TLF35585_REG_WDCFG0;

    /*Lock registers*/
    TempReg[6U].UserData = TLF35585_LOCK_SEQU0;
    TempReg[6U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[7U].UserData = TLF35585_LOCK_SEQU1;
    TempReg[7U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[8U].UserData = TLF35585_LOCK_SEQU2;
    TempReg[8U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[9U].UserData = TLF35585_LOCK_SEQU3;
    TempReg[9U].ReqCmd   = TLF35585_REG_PROTCFG;

	TempReg[10U].UserData = (uint8)0x00U;
	TempReg[10U].ReqCmd   = TLF35585_REG_SYSSF;
	TempReg[11U].UserData = (uint8)0x01U;
	TempReg[11U].ReqCmd   = TLF35585_REG_SYSSF;

    do
	{
		Ret |= TLF35585_Write(&TempReg[1U], 9U);
		
    	Ret |= TLF35585_Read(&TempReg[10], 1U);
		if(((TempReg[10U].UserData & TLF35585_SYSSF_CFGE_MASK) != E_OK) && (Ret == E_OK))
		{
			TLF35585_Write(&TempReg[11], 1U);
			Ret = E_NOT_OK;
		}
		else
		{
			
		}

		tu1_retryCnt++;
	}
	while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));

	if(E_OK == Ret)
	{
		/*Read WDCFG0 and RWDCFG0*/
	    TempReg[1U].UserData = (uint8)0x00U;
	    TempReg[1U].ReqCmd   = TLF35585_REG_WDCFG0;
	    TempReg[2U].UserData = (uint8)0x00U;
	    TempReg[2U].ReqCmd   = TLF35585_REG_RWDCFG0;
	    Ret = TLF35585_Read(&TempReg[1U], 2U);

	    /*check registers WDCFG0*/
	    if(((TempReg[0].UserData ^ TempReg[1].UserData)
	            != (uint8)0xFF) ||
	        /*check registers RWDCFG0*/
	        (TempReg[0].UserData != TempReg[2].UserData))
	    {
	        Ret = E_NOT_OK;
	    }
	    else
	    {
	    	/* do nothing */
	    }
	}
	else
	{
		
	}

    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static Std_ReturnType TLF35585_DisableWWD(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : Std_ReturnType
 * CallByAPI           : None
 * Description         : Disable WWD watchdog
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_DisableWWD(void)
{
    uint8 Ret;
    uint8 tu1_retryCnt = 0;
    TLF35585_CmdType TempReg[TLF35585_TWELVE];

    TempReg[0U].UserData = (uint8)0x00U;
    TempReg[0U].ReqCmd   = TLF35585_REG_WDCFG0;

    Ret = TLF35585_Read(&TempReg[0U], 1U);
    TempReg[0U].UserData = (uint8)~TempReg[0U].UserData;
    TempReg[0U].UserData &= TLF35585_WWD_DISABLE_BIT_MASK;

    /*Unlock registers*/
    TempReg[1U].UserData = TLF35585_UNLOCK_SEQU0;
    TempReg[1U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[2U].UserData = TLF35585_UNLOCK_SEQU1;
    TempReg[2U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[3U].UserData = TLF35585_UNLOCK_SEQU2;
    TempReg[3U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[4U].UserData = TLF35585_UNLOCK_SEQU3;
    TempReg[4U].ReqCmd   = TLF35585_REG_PROTCFG;

    TempReg[5U].UserData = TempReg[0U].UserData;
    TempReg[5U].ReqCmd   = TLF35585_REG_WDCFG0;

    /*Lock registers*/
    TempReg[6U].UserData = TLF35585_LOCK_SEQU0;
    TempReg[6U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[7U].UserData = TLF35585_LOCK_SEQU1;
    TempReg[7U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[8U].UserData = TLF35585_LOCK_SEQU2;
    TempReg[8U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[9U].UserData = TLF35585_LOCK_SEQU3;
    TempReg[9U].ReqCmd   = TLF35585_REG_PROTCFG;

	TempReg[10U].UserData = (uint8)0x00U;
	TempReg[10U].ReqCmd   = TLF35585_REG_SYSSF;
	TempReg[11U].UserData = (uint8)0x01U;
	TempReg[11U].ReqCmd   = TLF35585_REG_SYSSF;

    do
	{
		Ret |= TLF35585_Write(&TempReg[1U], 9U);
		
    	Ret |= TLF35585_Read(&TempReg[10], 1U);
		if(((TempReg[10U].UserData & TLF35585_SYSSF_CFGE_MASK) != E_OK) && (Ret == E_OK))
		{
			TLF35585_Write(&TempReg[11], 1U);
			Ret = E_NOT_OK;
		}
		else
		{
			
		}

		tu1_retryCnt++;
	}
	while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));

	if(E_OK == Ret)
	{
		TempReg[1U].UserData = (uint8)0x00U;
	    TempReg[1U].ReqCmd   = TLF35585_REG_WDCFG0;
	    TempReg[2U].UserData = (uint8)0x00U;
	    TempReg[2U].ReqCmd   = TLF35585_REG_RWDCFG0;

	    Ret = TLF35585_Read(&TempReg[1U], 2U);

	    /*check registers WDCFG0*/
	    if(((TempReg[0].UserData ^ TempReg[1].UserData)
	            != (uint8)0xFF) ||
	        /*check registers RWDCFG0*/
	        (TempReg[0].UserData != TempReg[2].UserData))
	    {
	        Ret = E_NOT_OK;
	    }
	    else
	    {
	    	/* do nothing */
	    }
	}
	else
	{
		
	}
    
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : static Std_ReturnType TLF35585_EnableWWD(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : Std_ReturnType
 * CallByAPI           : None
 * Description         : Enable WWD watchdog
 */
/**********************************************************************************************************************/
static Std_ReturnType TLF35585_EnableWWD(void)
{
    uint8 Ret;
    uint8 tu1_retryCnt = 0;
    TLF35585_CmdType TempReg[TLF35585_TWELVE];

    TempReg[0U].UserData = (uint8)0x00U;
    TempReg[0U].ReqCmd   = TLF35585_REG_WDCFG0;

    Ret = TLF35585_Read(&TempReg[0U], 1U);
    TempReg[0U].UserData = (uint8)~TempReg[0U].UserData;
    TempReg[0U].UserData |= TLF35585_WWD_ENABLE_BIT_MASK;

    /*Unlock registers*/
    TempReg[1U].UserData = TLF35585_UNLOCK_SEQU0;
    TempReg[1U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[2U].UserData = TLF35585_UNLOCK_SEQU1;
    TempReg[2U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[3U].UserData = TLF35585_UNLOCK_SEQU2;
    TempReg[3U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[4U].UserData = TLF35585_UNLOCK_SEQU3;
    TempReg[4U].ReqCmd   = TLF35585_REG_PROTCFG;

    /*Enable WWD watchdog*/
    TempReg[5U].UserData = TempReg[0U].UserData;
    TempReg[5U].ReqCmd   = TLF35585_REG_WDCFG0;

    /*Lock registers*/
    TempReg[6U].UserData = TLF35585_LOCK_SEQU0;
    TempReg[6U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[7U].UserData = TLF35585_LOCK_SEQU1;
    TempReg[7U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[8U].UserData = TLF35585_LOCK_SEQU2;
    TempReg[8U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[9U].UserData = TLF35585_LOCK_SEQU3;
    TempReg[9U].ReqCmd   = TLF35585_REG_PROTCFG;

	TempReg[10U].UserData = (uint8)0x00U;
	TempReg[10U].ReqCmd   = TLF35585_REG_SYSSF;
	TempReg[11U].UserData = (uint8)0x01U;
	TempReg[11U].ReqCmd   = TLF35585_REG_SYSSF;
	
    do
	{
		Ret |= TLF35585_Write(&TempReg[1U], 9U);
		
    	Ret |= TLF35585_Read(&TempReg[10], 1U);
		if(((TempReg[10U].UserData & TLF35585_SYSSF_CFGE_MASK) != E_OK) && (Ret == E_OK))
		{
			TLF35585_Write(&TempReg[11], 1U);
			Ret = E_NOT_OK;
		}
		else
		{
			
		}

		tu1_retryCnt++;
	}
	while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));

	if(E_OK == Ret)
	{
		/*Read WDCFG0 and RWDCFG0*/
	    TempReg[1U].UserData = (uint8)0x00U;
	    TempReg[1U].ReqCmd   = TLF35585_REG_WDCFG0;
	    TempReg[2U].UserData = (uint8)0x00U;
	    TempReg[2U].ReqCmd   = TLF35585_REG_RWDCFG0;
	    Ret = TLF35585_Read(&TempReg[1U], 2U);

	    /*check registers WDCFG0*/
	    if(((TempReg[0].UserData ^ TempReg[1].UserData)
	            != (uint8)0xFF) ||
	        /*check registers RWDCFG0*/
	        (TempReg[0].UserData != TempReg[2].UserData))
	    {
	        Ret = E_NOT_OK;
	    }
	    else
	    {
	    	/* do nothing */
	    }
	}
	else
	{
		
	}
	
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : Std_ReturnType TLF35585_ServiceWWD(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : Std_ReturnType
 * CallByAPI           : None
 * Description         : Service WWD watchdog
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585_ServiceWWD(void)
{
    uint8  Ret;
    uint8 Sequence;
    TLF35585_CmdType TempReg[TLF35585_TWO];

    /*Read TRIG_STATUS*/
    TempReg[0U].UserData = (uint8)0x00U;
    TempReg[0U].ReqCmd   = TLF35585_REG_WWDSCMD;
    Ret = TLF35585_Read(&TempReg[0U], 1U);
    if(E_OK == Ret)
    {
        Sequence = (uint8)((uint16)((uint16)((uint16)TempReg[0U].UserData & (uint16)0x80u) >> 7u) ^ (uint16)0x01u);
        TempReg[1U].UserData = Sequence;
        TempReg[1U].ReqCmd   = TLF35585_REG_WWDSCMD;
        Ret = TLF35585_Write(&TempReg[1U], 1U);
    }
    else
    {
    	/* do nothing */
    }
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : Std_ReturnType TLF35585_ServiceFWD(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : Std_ReturnType
 * CallByAPI           : None
 * Description         : Service FWD watchdog
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585_ServiceFWD(void)
{
	uint8  Ret;
	uint32 Sequence;
	TLF35585_CmdType TempReg[TLF35585_FIVE];
    /*FWD sequence table*/
	uint32 const TLF35585_FWDServiceSeq[TLF35585_SIXTEEN] =
	{
		0xFF0FF000U,
		0xB040BF4FU,
		0xE919E616U,
		0xA656A959U,
		0x75857A8AU,
		0x3ACA35C5U,
		0x63936C9CU,
		0x2CDC23D3U,
		0xD222DD2DU,
		0x9D6D9262U,
		0xC434CB3BU,
		0x8B7B8474U,
		0x58A857A7U,
		0x17E718E8U,
		0x4EBE41B1U,
		0x01F10EFEU
	};

    /*Read FWD seed or ask question*/
	TempReg[0U].UserData = (uint8)0x00U;
	TempReg[0U].ReqCmd   = TLF35585_REG_FWDSTAT0;
	Ret = TLF35585_Read(&TempReg[0U], 1U);
	if(E_OK == Ret)
	{
        /*Get right sequece*/
		Sequence =
				TLF35585_FWDServiceSeq[TempReg[0U].UserData & (uint8)0x0FU];
        /*Answer question*/
		TempReg[1U].UserData = (uint8)((Sequence & (uint32)0xFF000000U) >> 24U);
		TempReg[1U].ReqCmd   = TLF35585_REG_FWDRSP;
		TempReg[2U].UserData = (uint8)((Sequence & (uint32)0x00FF0000U) >> 16U);
		TempReg[2U].ReqCmd   = TLF35585_REG_FWDRSP;
		TempReg[3U].UserData = (uint8)((Sequence & (uint32)0x0000FF00U) >> 8U);
		TempReg[3U].ReqCmd   = TLF35585_REG_FWDRSP;
		TempReg[4U].UserData = (uint8)(Sequence & (uint32)0x000000FFU);
		TempReg[4U].ReqCmd   = TLF35585_REG_FWDRSPSYNC;
        Ret = TLF35585_Write(&TempReg[1U], 4U);
	}
    #ifdef TLF35585_DET_USED
    #if (1U == TLF35585_DET_USED)
    if(E_OK != Ret)
    {
        Det_ReportError(TLF35585_MODULE_ID, 0U,
                TLF35585_SERVICE_WDG, TLF35585_SERVICE_WDG_ERR);
    }
    #endif
    #endif
	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : Std_ReturnType TLF35585_RegInit(TLF35585_ConfigType* ConfigPtr)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : Std_ReturnType
 * CallByAPI           : None
 * Description         : Init TLF35585
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585_RegInit(const TLF35585_ConfigType* ConfigPtr)
{
	uint8 i;
	uint8 Ret;
	uint8 tu1_retryCnt = 0;
	TLF35585_CmdType TempReg[TLF35585_THIRTY_TWO];
	TLF35585_SoftwareVersion = TLF35585_SOFTWAREVERSION;

	
#if (1U == TLF35585_MPS_USED)
#ifdef TLF35585_DIO_USED
#if (1U == TLF35585_DIO_USED)
	/*Disable TLF35585 test mode*/
    Dio_WriteChannel(TLF35585_TM_CHANNEL, STD_LOW);
#endif
#endif
#endif

    TLF35585_ConfigInit(ConfigPtr);

	/*Write register DEVCFG0-DEVCFG2*/
	for(i = 0U; i < TLF35585_THREE; i++)
	{
		TempReg[i].UserData = TLF35585_Reg[i];
		TempReg[i].ReqCmd   = i;
	}
	/*unlock register SYSPCFG0-WWDCFG1 protected by register PROTCFG*/
	TempReg[3U].UserData = TLF35585_UNLOCK_SEQU0;
	TempReg[3U].ReqCmd   = TLF35585_REG_PROTCFG;
	TempReg[4U].UserData = TLF35585_UNLOCK_SEQU1;
	TempReg[4U].ReqCmd   = TLF35585_REG_PROTCFG;
	TempReg[5U].UserData = TLF35585_UNLOCK_SEQU2;
	TempReg[5U].ReqCmd   = TLF35585_REG_PROTCFG;
	TempReg[6U].UserData = TLF35585_UNLOCK_SEQU3;
	TempReg[6U].ReqCmd   = TLF35585_REG_PROTCFG;
	/*write register SYSPCFG0-WWDCFG1*/
	for(i = 4U; i < TLF35585_ELEVEN; i++)
	{
		TempReg[i + (uint8)3U].UserData = TLF35585_Reg[i];
		TempReg[i + (uint8)3U].ReqCmd   = i;
	}
	/*lock register SYSPCFG0-WWDCFG1 protected by register PROTCFG*/
	TempReg[14U].UserData = TLF35585_LOCK_SEQU0;
	TempReg[14U].ReqCmd   = TLF35585_REG_PROTCFG;
	TempReg[15U].UserData = TLF35585_LOCK_SEQU1;
	TempReg[15U].ReqCmd   = TLF35585_REG_PROTCFG;
	TempReg[16U].UserData = TLF35585_LOCK_SEQU2;
	TempReg[16U].ReqCmd   = TLF35585_REG_PROTCFG;
	TempReg[17U].UserData = TLF35585_LOCK_SEQU3;
	TempReg[17U].ReqCmd   = TLF35585_REG_PROTCFG;
	
    TempReg[18U].UserData = (uint8)0x00U;
	TempReg[18U].ReqCmd   = TLF35585_REG_INITERR;
	TempReg[19U].UserData = (uint8)0x00U;
	TempReg[19U].ReqCmd   = TLF35585_REG_SYSFAIL;

	TempReg[20U].UserData = (uint8)0x01U;
	TempReg[20U].ReqCmd   = TLF35585_REG_SYSSF;

    do
	{
		Ret = TLF35585_Write(&TempReg[0U], 18U);
		
    	Ret |= TLF35585_Read(&TempReg[20], 1U);
		if(((TempReg[20U].UserData & TLF35585_SYSSF_CFGE_MASK) != E_OK) && (Ret == E_OK))
		{
			TLF35585_Write(&TempReg[20], 1U);
			Ret = E_NOT_OK;
		}
		else
		{
			
		}

		tu1_retryCnt++;
	}
	while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));

    Ret |= TLF35585_CheckInit();
    #ifdef TLF35585_DET_USED
        #if (1U == TLF35585_DET_USED)
        if(E_OK != Ret)
        {
            Det_ReportError(TLF35585_MODULE_ID, 0U,
                    TLF35585_INIT, TLF35585_INIT_CONFIG_ERR);
        }
        #endif
    #endif
	/*Clear interrupt flags*/
    Ret |= TLF35585_GetInterruptStatus((uint8)0U);
	/*Clear register INITERR and SYSFAIL*/
	Ret |= TLF35585_Read(&TempReg[18U], 2U);
	Ret |= TLF35585_Write(&TempReg[18U], 2U);

	for(i = 0U; i < TLF35585_TWELVE; i++)
    {
		TLF35585_Reg[TLF35585_REG_SYSFAIL + i] = (uint8)0U;
    }
    
    (void)TLF35585_ServiceWWD();

    (void)TLF35585_ServiceFWD();
	
    /* Init mode to Normal mode */
    Ret |= TLF35585_GoToNormal();

    #ifdef TLF35585_DET_USED
        #if (1U == TLF35585_DET_USED)
            if(E_OK != Ret)
            {
                Det_ReportError(TLF35585_MODULE_ID, 0U,
                        TLF35585_INIT, TLF35585_INIT_SET_MODE_ERR);
            }
            else
            {
            	/* do nothing */
            }
        #endif
    #endif

	return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : TLF35585_ResetType TLF35585_GetResetReason(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : TLF35585_ResetType
 * CallByAPI           : None
 * Description         : Get TLF35585 reset reason
 */
/**********************************************************************************************************************/
TLF35585_ResetType TLF35585_GetResetReason(void)
{
    uint8 ResetRaw;
    uint8 FailureRaw;
    TLF35585_ResetType Ret;

    ResetRaw = TLF35585_ResetStatus[1U] & TLF35585_INIT_ERR_MASK;
    FailureRaw = TLF35585_ResetStatus[0U] & TLF35585_SYS_FAILURE_MASK;
    if((0U != ResetRaw) && (0U != FailureRaw))
    {
        Ret = TLF35585_MULT_RESET;
    }
    else if(0U != ResetRaw)
    {
        switch(ResetRaw)
        {
        case TLF35585_RAW_HARD_RESET:
            Ret = TLF35585_HARD_RESET;
            break;
        case TLF35585_RAW_SOFT_RESET:
            Ret = TLF35585_SOFT_RESET;
            break;
        case TLF35585_RAW_ERRF_RESET:
            Ret = TLF35585_ERR_RESET;
            break;
        case TLF35585_RAW_FWDF_RESET:
            Ret = TLF35585_FWD_RESET;
            break;
        case TLF35585_RAW_WWDF_RESET:
            Ret = TLF35585_WWD_RESET;
            break;
        case TLF35585_RAW_VMONF_RESET:
            Ret = TLF35585_VMON_RESET;
            break;
        default:
            Ret = TLF35585_MULT_RESET;
            break;
        }
    }
    else if(0U != FailureRaw)
    {
        switch(FailureRaw)
        {
        case TLF35585_RAW_INIT_FAILURE:
            Ret = TLF35585_INIT_FAILURE;
            break;
        case TLF35585_RAW_VMONF_FAILURE:
            Ret = TLF35585_VMON_FAILURE;
            break;
        case TLF35585_RAW_OTF_FAILURE:
            Ret = TLF35585_OTF_FAILURE;
            break;
        case TLF35585_RAW_VOLTSELERR_FAILURE:
            Ret = TLF35585_VOLTSELERR_FAILURE;
            break;
        default:
			Ret = TLF35585_MULT_RESET;
			break;
        }
    }
    else
    {
        Ret = TLF35585_STANDBY_RESET;
    }
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : TLF35585_RawResetType TLF35585_GetResetRaw(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : TLF35585_RawResetType
 * CallByAPI           : None
 * Description         : Get TLF35585 reset Raw
 */
/**********************************************************************************************************************/
TLF35585_RawResetType TLF35585_GetResetRaw(void)
{
    TLF35585_RawResetType Ret;

    Ret = (TLF35585_RawResetType)((uint16)(((uint16)TLF35585_ResetStatus[0U]) << 8U)
            | (uint16)TLF35585_ResetStatus[1U]);
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : Std_ReturnType TLF35585_GetInterruptRaw(uint8 *InterruptFlag)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : uint8 *InterruptFlag
 * Return              : Std_ReturnType
 * CallByAPI           : None
 * Description         : Get TLF35585 interrupt Raw
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585_GetInterruptRaw(uint8 *InterruptFlag)
{
    uint8 i;
    uint8 Ret = E_OK;

    if(NULL_PTR != InterruptFlag)
    {
        for(i = 0U; i < TLF35585_ELEVEN; i++)
        {
        	InterruptFlag[i] = TLF35585_Reg[i + (uint8)0x1DU];
			TLF35585_Reg[i + (uint8)0x1DU] = (uint8)0U;
        }
    }
    else
    {
		Ret = E_NOT_OK;
    	/* do nothing */
    }
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : Std_ReturnType TLF35585_ControlStby(uint8 contrlStbyState)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : contrlStbyState,  0:disable; 1:enable
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : Std_ReturnType
 * CallByAPI           : None
 * Description         : control stby channel
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585_ControlStby(uint8 contrlStbyState)
{
    Std_ReturnType Ret;
    uint8 tu1_retryCnt = 0;
    TLF35585_CmdType TempReg[TLF35585_ELEVEN];
    
    /*Unlock registers*/
    TempReg[0U].UserData = TLF35585_UNLOCK_SEQU0;
    TempReg[0U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[1U].UserData = TLF35585_UNLOCK_SEQU1;
    TempReg[1U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[2U].UserData = TLF35585_UNLOCK_SEQU2;
    TempReg[2U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[3U].UserData = TLF35585_UNLOCK_SEQU3;
    TempReg[3U].ReqCmd   = TLF35585_REG_PROTCFG;

    /*Write SYSPCFG1 register for Error Pin test*/
    TempReg[4U].UserData = contrlStbyState;
    TempReg[4U].ReqCmd   = TLF35585_REG_SYSPCFG0;


    /*Lock registers*/
    TempReg[5U].UserData = TLF35585_LOCK_SEQU0;
    TempReg[5U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[6U].UserData = TLF35585_LOCK_SEQU1;
    TempReg[6U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[7U].UserData = TLF35585_LOCK_SEQU2;
    TempReg[7U].ReqCmd   = TLF35585_REG_PROTCFG;
    TempReg[8U].UserData = TLF35585_LOCK_SEQU3;
    TempReg[8U].ReqCmd   = TLF35585_REG_PROTCFG;

    TempReg[9U].UserData = (uint8)0x00U;
	TempReg[9U].ReqCmd   = TLF35585_REG_SYSSF;
	TempReg[10U].UserData = (uint8)0x01U;
	TempReg[10U].ReqCmd   = TLF35585_REG_SYSSF;
    
    do
	{
		Ret = TLF35585_Write(&TempReg[0], 9U);
		
    	Ret |= TLF35585_Read(&TempReg[9U], 1U);
		if(((TempReg[9U].UserData & TLF35585_SYSSF_CFGE_MASK) != E_OK) && (Ret == E_OK))
		{
			TLF35585_Write(&TempReg[10U], 1U);
		}
		else
		{
			
		}

		tu1_retryCnt++;
	}
	while((E_OK != Ret)&&(tu1_retryCnt < TLF35585_RW_RETRY_MAX));
    
    return Ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : Std_ReturnType TLF35585_GetStbyState(uint8 *stbyState)
 * Service ID		   :
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : uint8 *stbyState
 * Return              : Std_ReturnType
 * CallByAPI           : None
 * Description         : control stby channel
 */
/**********************************************************************************************************************/
Std_ReturnType TLF35585_GetStbyState(uint8 *stbyState)
{
    Std_ReturnType ret;
    TLF35585_CmdType TempReg;
    
    TempReg.UserData = 0u;
    TempReg.ReqCmd   = TLF35585_REG_DEVSTAT;    
    
    ret = TLF35585_Read(&TempReg, 1U);
    
    if(E_OK == ret)
    {
        *stbyState = (uint8)((TempReg.UserData & (uint8)0x10U) >> 0x04U);
    }
    else
    {
         *stbyState = 0xffU;
    }
    
    return ret;
}

/**********************************************************************************************************************/
/*
 * FunctionName        : Std_ReturnType TLF35585_GetVersionInfo(Std_VersionInfoType* versioninfo)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : uint16 timeout
 * Return              : Std_ReturnType
 * CallByAPI           : None
 * Description         : Set TLF35585 Trigger Condition.
 */
/**********************************************************************************************************************/
void TLF35585_SetTriggerCondition(const uint16 timeout)
{
	if(timeout == 0u)
	{
		TLF35585_ShutDown();
	}
	else if(timeout == 1u)
	{
		(void)TLF35585_ServiceFWD();
	}
	else if(timeout == 2u)
	{
		(void)TLF35585_ServiceWWD();
	}
	else
	{

	}
}

/**********************************************************************************************************************/
/*
 * FunctionName        : void TLF35585_GetVersionInfo(Std_VersionInfoType* versioninfo)
 * Service ID		   :
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : Std_VersionInfoType* versioninfo
 * Return              : None
 * CallByAPI           : None
 * Description         : Get TLF35585 SW Version Info.
 */
/**********************************************************************************************************************/
void TLF35585_GetVersionInfo(Std_VersionInfoType* versioninfo)
{
  #if (TLF35585_DET_USED == STD_ON)
  if ((versioninfo) == NULL_PTR)
  {
    Det_ReportError((uint16)TLF35585_MODULE_ID, 0u, TLF35585_GETVERSIONINFO, TLF35585_PARAM_POINTER_ERR);
  }
  else
  #endif /* #if (TLF35585_DET_USED == STD_ON)  */
  {
	/* Set vendorID */
    ((Std_VersionInfoType*)(versioninfo))->moduleID = (uint16)TLF35585_MODULE_ID;
    /* Set moduleID */
    ((Std_VersionInfoType*)(versioninfo))->vendorID = (uint16)TLF35585_VENDOR;
    /* Set sw_major_version */
    ((Std_VersionInfoType*)(versioninfo))->sw_major_version = (uint8)TLF35585LIB_VERSION_MAJOR;
    /* Set sw_minor_version */
    ((Std_VersionInfoType*)(versioninfo))->sw_minor_version = (uint8)TLF35585LIB_VERSION_MINOR;
    /* Set sw_patch_version */
    ((Std_VersionInfoType*)(versioninfo))->sw_patch_version = (uint8)TLF35585LIB_VERSION_PATCH;
  }
}

/**********************************************************************************************************************/
/*
 * FunctionName        : uint8 TLF35585_Init(TLF35585_ConfigType* ConfigPtr)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : uint8
 * CallByAPI           : None
 * Description         : SBC initialization. TLF35585_Init() is called by application.
 */
/**********************************************************************************************************************/
void TLF35585_Init(const TLF35585_ConfigType* ConfigPtr)
{
	uint8 tu1_initState;
	uint16 tu1_selfState;
	uint8 tu1_retryCnt = 0;

	(void)TLF35585_DisableFWD();
	
	(void)TLF35585_DisableWWD();

	ENABLE();

	TLF35585_EruIrqConfig();

	tu1_selfState = TLF35585_SelfTest();

	do
    {
       tu1_initState = TLF35585_RegInit(ConfigPtr);

       tu1_retryCnt++;
    }while((E_OK != tu1_initState)&&(tu1_retryCnt < TLF35585_INIT_RETRY_MAX));


    if(E_OK == tu1_initState)
	{
		TLF35585_SetInitFinishFlag();
	}
	else
	{
		tu1_initState = E_NOT_OK;
	}

	if(E_OK == tu1_selfState)
	{	
		TLF35585_SetSelfTestReslutFlag();
	}
	else
	{
		tu1_selfState = E_NOT_OK;
	}

	if((E_OK == tu1_initState)&&(E_OK == tu1_selfState))
	{
		Dio_WriteChannel( 0x02a, 1 );
	}


	DISABLE();

}

/**********************************************************************************************************************/
/*
 * FunctionName        : void TLF35585_ShutDown(void)
 * Service ID		   : 
 * Sync/Async          : Synchronous
 * Reentrancy          : Non-reentrant
 * Param-Name[in]      : None
 * Param-Name[out]     : None
 * Param-Name[in/out]  : None
 * Return              : None
 * CallByAPI           : None
 * Description         : SBC enter shutdown. TLF35585_ShutDown() is called by application.
 */
/**********************************************************************************************************************/
void TLF35585_ShutDown(void)
{
	/* Clear Init Finish Flag */
	TLF35585_ClearInitFinishFlag();
	/* Clear SelfTest Result Flag */
	TLF35585_ClearSelfTestReslutFlag();

	/* Disable FWD */
	(void)TLF35585_DisableFWD();
	/* Disable WWD */
	(void)TLF35585_DisableWWD();
	
	while(1)
	{
		TLF35585_GoToStandby();
	}
}

void callTLF35585statfunc(void)
{
varTLF35585 = TLF35585_EnableWWD();  

varTLF35585 = TLF35585_GetResetStatus();
}

Std_ReturnType TLF35585_DeviceInfo(void)
{
	Std_ReturnType ret= E_NOT_OK;
    TLF35585_CmdType TempReg;
  
	TempReg.UserData = 0;
	TempReg.ReqCmd   = TLF35585_REG_DEVINFO;
    
    TLF35585_Read(&TempReg, 1U);
	if(
		(TempReg.UserData == TLF35585_TLF35585xxS01_B21_STEP)||
		(TempReg.UserData == TLF35585_TLF35585xxS02_B21_STEP)||
		(TempReg.UserData == TLF35585_TLF35585xxS01_B22_STEP)||
		(TempReg.UserData == TLF35585_TLF35585xxS02_B22_STEP)||
		(TempReg.UserData == TLF35585_TLF35585xxS01_B23_STEP)||
		(TempReg.UserData == TLF35585_TLF35585xxS02_B23_STEP)
	)
	{
		ret = E_OK;
	}
	else
	{
		ret = E_NOT_OK;
	}
    return ret;
}