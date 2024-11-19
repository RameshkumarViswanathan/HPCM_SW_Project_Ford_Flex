
/*
 *	@file       <TLF35585.h>
 *  @brief      
 *
/*====================================================================================================================*/
#ifndef TLF35585_H_
#define TLF35585_H_

/*====================================================================================================================*/
/*                                                     Includes                                                       */
/*====================================================================================================================*/
#include "Std_Types.h"
#include "TLF35585_Cfg.h"
#include "WdgIf_Types.h"
/*====================================================================================================================*/
/*                                                 Macro Definitions                                                  */
/*====================================================================================================================*/
/* macro for length of array*/

#define TLF35585_ONE                (1U)
#define TLF35585_TWO                (2U)
#define TLF35585_THREE              (3U)
#define TLF35585_FOUR               (4U)
#define TLF35585_FIVE               (5U)
#define TLF35585_SIX                (6U)
#define TLF35585_SEVEN              (7U)
#define TLF35585_EIGHT              (8U)
#define TLF35585_NINE               (9U)
#define TLF35585_TEN                (10U)
#define TLF35585_ELEVEN             (11U)
#define TLF35585_TWELVE             (12U)
#define TLF35585_THIRTEEN           (13U)
#define TLF35585_FOURTEEN           (14U)
#define TLF35585_FIFTEEN            (15U)
#define TLF35585_SIXTEEN            (16U)
#define TLF35585_SEVENTEEN          (17U)
#define TLF35585_EIGHTEEN           (18U)
#define TLF35585_TWENTY             (20U)
#define TLF35585_THIRTY_TWO         (32U)

/* define TLF35585 Mode */
#define TLF35585_NONE                             (0U)
#define TLF35585_INIT                             (1U)
#define TLF35585_NORMAL                           (2U)
#define TLF35585_SLEEP                            (3U)
#define TLF35585_STBY                             (4U)
#define TLF35585_WAKE                             (5U)

/* define TLF35585 Mode Mask */
#define  TLF35585_SYSTEM_INT_MASK                 ((uint8)(0x01U))
#define  TLF35585_WAKE_INT_MASK                   ((uint8)(0x02U))
#define  TLF35585_SPI_INT_MASK                    ((uint8)(0x04U))
#define  TLF35585_MONITOR_INT_MASK                ((uint8)(0x08U))
#define  TLF35585_OVERT_WARN_INT_MASK             ((uint8)(0x10U))
#define  TLF35585_OVERT_FAIL_INT_MASK             ((uint8)(0x20U))
#define  TLF35585_ABIST_INT_MASK                  ((uint8)(0x40U))
#define  TLF35585_MISS_INT_MASK                   ((uint8)(0x80U))
#define  TLF35585_DOUBLE_BIT_ERR_MASK             ((uint8)(0x01U))
/******************************************************************************/

/* TLF35585 register addresses: */
#define TLF35585_REG_DEVCFG0                      ((uint8)0x00U)
#define TLF35585_REG_DEVCFG1                      ((uint8)0x01U)
#define TLF35585_REG_DEVCFG2                      ((uint8)0x02U)
#define TLF35585_REG_PROTCFG                      ((uint8)0x03U)
#define TLF35585_REG_SYSPCFG0                     ((uint8)0x04U)
#define TLF35585_REG_SYSPCFG1                     ((uint8)0x05U)
#define TLF35585_REG_WDCFG0                       ((uint8)0x06U)
#define TLF35585_REG_WDCFG1                       ((uint8)0x07U)
#define TLF35585_REG_FWDCFG                       ((uint8)0x08U)
#define TLF35585_REG_WWDCFG0                      ((uint8)0x09U)
#define TLF35585_REG_WWDCFG1                      ((uint8)0x0AU)
#define TLF35585_REG_RSYSPCFG0                    ((uint8)0x0BU)
#define TLF35585_REG_RSYSPCFG1                    ((uint8)0x0CU)
#define TLF35585_REG_RWDCFG0                      ((uint8)0x0DU)
#define TLF35585_REG_RWDCFG1                      ((uint8)0x0EU)
#define TLF35585_REG_RFWDCFG                      ((uint8)0x0FU)
#define TLF35585_REG_RWWDCFG0                     ((uint8)0x10U)
#define TLF35585_REG_RWWDCFG1                     ((uint8)0x11U)
#define TLF35585_REG_WKTIMCFG0                    ((uint8)0x12U)
#define TLF35585_REG_WKTIMCFG1                    ((uint8)0x13U)
#define TLF35585_REG_WKTIMCFG2                    ((uint8)0x14U)
#define TLF35585_REG_DEVCTRL                      ((uint8)0x15U)
#define TLF35585_REG_DEVCTRLN                     ((uint8)0x16U)
#define TLF35585_REG_WWDSCMD                      ((uint8)0x17U)
#define TLF35585_REG_FWDRSP                       ((uint8)0x18U)
#define TLF35585_REG_FWDRSPSYNC                   ((uint8)0x19U)
#define TLF35585_REG_SYSFAIL                      ((uint8)0x1AU)
#define TLF35585_REG_INITERR                      ((uint8)0x1BU)
#define TLF35585_REG_IF                           ((uint8)0x1CU)
#define TLF35585_REG_SYSSF                        ((uint8)0x1DU)
#define TLF35585_REG_WKSF                         ((uint8)0x1EU)
#define TLF35585_REG_SPISF                        ((uint8)0x1FU)
#define TLF35585_REG_MONSF0                       ((uint8)0x20U)
#define TLF35585_REG_MONSF1                       ((uint8)0x21U)
#define TLF35585_REG_MONSF2                       ((uint8)0x22U)
#define TLF35585_REG_MONSF3                       ((uint8)0x23U)
#define TLF35585_REG_OTFAIL                       ((uint8)0x24U)
#define TLF35585_REG_OTWRNSF                      ((uint8)0x25U)
#define TLF35585_REG_VMONSTAT                     ((uint8)0x26U)
#define TLF35585_REG_DEVSTAT                      ((uint8)0x27U)
#define TLF35585_REG_PROTSTAT                     ((uint8)0x28U)
#define TLF35585_REG_WWDSTAT                      ((uint8)0x29U)
#define TLF35585_REG_FWDSTAT0                     ((uint8)0x2AU)
#define TLF35585_REG_FWDSTAT1                     ((uint8)0x2BU)
#define TLF35585_REG_ABIST_CTRL0                  ((uint8)0x2CU)
#define TLF35585_REG_ABIST_CTRL1                  ((uint8)0x2DU)
#define TLF35585_REG_ABIST_SELECT0                ((uint8)0x2EU)
#define TLF35585_REG_ABIST_SELECT1                ((uint8)0x2FU)
#define TLF35585_REG_ABIST_SELECT2                ((uint8)0x30U)
#define TLF35585_REG_BCK_FREQ_CHANGE              ((uint8)0x31U)
#define TLF35585_REG_BCK_FRE_SPREAD               ((uint8)0x32U)
#define TLF35585_REG_BCK_MAIN_CTRL                ((uint8)0x33U)
#define TLF35585_REG_CEFUMON                      ((uint8)0x3BU)
#define TLF35585_REG_MCSMON                       ((uint8)0x3CU)
#define TLF35585_REG_DEVINFO                      ((uint8)0x3DU)
#define TLF35585_REG_GTM                          ((uint8)0x3FU)

#define TLF35585_TLF35585xxS01_B21_STEP           ((uint8)0x33U)
#define TLF35585_TLF35585xxS02_B21_STEP           ((uint8)0x5AU)
#define TLF35585_TLF35585xxS01_B22_STEP           ((uint8)0x19U)
#define TLF35585_TLF35585xxS02_B22_STEP           ((uint8)0x70U)
#define TLF35585_TLF35585xxS01_B23_STEP           ((uint8)0x0FU)
#define TLF35585_TLF35585xxS02_B23_STEP           ((uint8)0x66U)

#ifdef TLF35585_DET_USED
#if (1U == TLF35585_DET_USED)

/*DET Api ID*/
#define TLF35585_ROT_SELF_TEST                    ((uint8)1U)
#define TLF35585_LOGIC_SELF_TEST                  ((uint8)2U)
#define TLF35585_ANALOG_SELF_TEST                 ((uint8)3U)
#define TLF35585_INITIALIZATION                   ((uint8)4U)
#define TLF35585_GET_INTERRUPT                    ((uint8)5U)
#define TLF35585_SET_SLEEP_TIME                   ((uint8)6U)
#define TLF35585_GO_TO_STANDBY                    ((uint8)7U)
#define TLF35585_SERVICE_WDG                      ((uint8)8U)
#define TLF35585_POWER_OFF_RECOVERY               ((uint8)9U)
#define TLF35585_GETVERSIONINFO                   ((uint8)10U)

/*DET Error ID*/
#define TLF35585_ROT_INIT_ERR                     ((uint8)1U)
#define TLF35585_ROT_START_ERR                    ((uint8)2U)
#define TLF35585_ROT_STOP_ERR                     ((uint8)3U)
#define TLF35585_ROT_NO_RESET_ERR                 ((uint8)4U)
#define TLF35585_FWD_INTERRUPT_ERR                ((uint8)5U)
#define TLF35585_FWD_SAFETY_ERR                   ((uint8)6U)
#define TLF35585_WWD_SAFETY_ERR                   ((uint8)7U)
#define TLF35585_ABIST_SAFETY_PATH_ERR            ((uint8)8U)
#define TLF35585_ABIST_SAFETY_COMP_ERR            ((uint8)9U)
#define TLF35585_ABIST_INT_PATH_ERR               ((uint8)10U)
#define TLF35585_ABIST_INT_COMP_ERR               ((uint8)11U)
#define TLF35585_ABIST_SET_MODE_ERR               ((uint8)12U)
#define TLF35585_INIT_CONFIG_ERR                  ((uint8)13U)
#define TLF35585_INIT_SET_MODE_ERR                ((uint8)14U)
#define TLF35585_GET_INTERRUPT_ERR                ((uint8)15U)
#define TLF35585_SET_SLEEP_TIME_ERR               ((uint8)16U)
#define TLF35585_SERVICE_WDG_ERR                  ((uint8)17U)
#define TLF35585_GO_TO_STANDBY_ERR                ((uint8)18U)
#define TLF35585_POWER_OFF_ERR                    ((uint8)19U)
#define TLF35585_WWD_INTERRUPT_ERR                ((uint8)20U)
#define TLF35585_PARAM_POINTER_ERR                ((uint8)21U)

#endif
#endif

/*====================================================================================================================*/
/*                                                Typedef Definitions                                                 */
/*====================================================================================================================*/
typedef uint16 TLF35585_SelfTestType;
typedef uint16  TLF35585_RawResetType;
typedef uint32 TLF35585_InterruptType;

typedef enum
{
    TLF35585_STANDBY_RESET = 0x00U,
    TLF35585_HARD_RESET = 0x01U,
    TLF35585_SOFT_RESET = 0x02U,
    TLF35585_ERR_RESET = 0x03U,
    TLF35585_FWD_RESET = 0x04U,
    TLF35585_WWD_RESET = 0x05U,
    TLF35585_VMON_RESET = 0x06U,
    TLF35585_MULT_RESET = 0x07U,
    TLF35585_INIT_FAILURE = 0x08U,
    TLF35585_VMON_FAILURE = 0x09U,
    TLF35585_OTF_FAILURE = 0x0AU,
    TLF35585_VOLTSELERR_FAILURE = 0x0BU
}TLF35585_ResetType;

typedef struct
{
    uint8    ReqCmd;         /* requested user command to ext. watch dog */
    uint8    UserData;       /* send/receive back data for this operation */
}TLF35585_CmdType;

typedef struct
{
	uint16 TLF35585_TxBuffer[TLF35585_MAX_EBBUFF];
	uint16 TLF35585_RxBuffer[TLF35585_MAX_EBBUFF];
	uint8 Count;
}TLF35585_DataType;

typedef struct
{
	uint8 DEVCFG0Value;
	uint8 DEVCFG1Value;
	uint8 DEVCFG2Value;
	uint8 SYSPCFG0Value;
	uint8 SYSPCFG1Value;
	uint8 WDCFG0Value;
	uint8 WDCFG1Value;
	uint8 FWDCFGValue;
	uint8 WWDCFG0Value;
	uint8 WWDCFG1Value;
}TLF35585_ConfigType;

/*====================================================================================================================*/
/*                                           Global Variable Declarations                                             */
/*====================================================================================================================*/
extern boolean VAR_TLF35585_InitFinish_Flag_b;
extern boolean VAR_TLF35585_SelfTestFinish_Flag_b;
/* TLF35585 interrupt flag. Used to check INT interrupt trigger */
extern volatile uint8 TLF35585_Interrupt;

/* TLF35585 self test result. TLF35585_SelfTest() result is stored in TLF35585_SelfTestError. */
extern uint16 TLF35585_SelfTestError;

/* TLF35585 register value. TLF35585_GetInterruptStatus() result is stored in TLF35585_Reg */
extern uint8 TLF35585_Reg[TLF35585_MAX_ADDRESS];

/* TLF35585 SYSFAIL to OTWRNSF register value, TLF35585_GetResetStatus() result is store in TLF35585_ResetStatus. */
extern uint8 TLF35585_ResetStatus[12U];

/* TLF35585 SYSFAIL register value, TLF35585_GetSysFailDoubleBitErr() result is store in TLF35585_SysFailDoubleBitErr. */
extern boolean TLF35585_SysFailDoubleBitErr;

extern const TLF35585_ConfigType TLF35585_Config;

/*====================================================================================================================*/
/*                                           Global Function Declarations                                             */
/*====================================================================================================================*/
extern void TLF35585_SetSelfTestReslutFlag(void);

extern boolean TLF35585_GetSelfTestReslutFlag(void);

extern void TLF35585_ClearSelfTestReslutFlag(void);

extern void TLF35585_SetInitFinishFlag(void);

extern boolean TLF35585_GetInitFinishFlag(void);

extern void TLF35585_ClearInitFinishFlag(void);

extern Std_ReturnType TLF35585_Read(TLF35585_CmdType DataBuf[], uint8 Count);

extern Std_ReturnType TLF35585_Write(const TLF35585_CmdType DataBuf[], uint8 Count);

extern void TLF35585_ConfigInit(const TLF35585_ConfigType* ConfigPtr);

extern Std_ReturnType TLF35585_GetInterruptStatus(uint8 GetAllFlag);

extern Std_ReturnType TLF35585_SetSleepTime(uint32 Minute);

extern Std_ReturnType TLF35585_GoToStandby(void);

extern Std_ReturnType TLF35585_GoToNormal(void);

#ifdef TLF35585_SELF_TEST
#if (1U == TLF35585_SELF_TEST)
extern void TLF35585_ABISTSelfTestISR(void);

extern TLF35585_SelfTestType TLF35585_FSPSelfTest(void);

extern TLF35585_SelfTestType TLF35585_LogicSelfTest(void);

extern TLF35585_SelfTestType TLF35585_AnalogSelfTest(void);

extern TLF35585_SelfTestType TLF35585_SelfTest(void);
#endif
#endif

extern Std_ReturnType TLF35585_ServiceWWD(void);

extern Std_ReturnType TLF35585_DisableFWD(void);

extern Std_ReturnType TLF35585_EnableFWD(void);

extern Std_ReturnType TLF35585_ServiceFWD(void);

extern Std_ReturnType TLF35585_RegInit(const TLF35585_ConfigType* ConfigPtr);

extern TLF35585_ResetType TLF35585_GetResetReason(void);

extern TLF35585_RawResetType TLF35585_GetResetRaw(void);

extern Std_ReturnType TLF35585_GetInterruptRaw(uint8 *InterruptFlag);

extern Std_ReturnType TLF35585_ControlStby(uint8 contrlStbyState);

extern Std_ReturnType TLF35585_GetStbyState(uint8 *stbyState);

extern void TLF35585_SetTriggerCondition(const uint16 timeout);

extern void TLF35585_GetVersionInfo(Std_VersionInfoType* versioninfo);

extern void TLF35585_Init(const TLF35585_ConfigType* ConfigPtr);

extern void TLF35585_ShutDown(void);

extern Std_ReturnType TLF35585_DeviceInfo(void);

extern Std_ReturnType TLF35585_GetSPIStatus(uint8 IntStatus);
#endif /* TLF35585_H_ */
