#ifndef UCC5880_H
#define UCC5880_H

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   UCC5880.h                                                        */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD)                                      */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   Target specific initialization code                                     */
/*****************************************************************************/
/* FUNCTIONS FORD function prototypes                                        */
/*                                                                           */
/*****************************************************************************/
/* REMARKS                                                                   */
/*                                                                           */
/*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/* [1.0.0]         06.12.2022    Shalini          Created                    */
/*****************************************************************************/

/*****************************************************************************/
/*                      Include Section                                      */
/*****************************************************************************/
#include "Std_Types.h"
#include "Dem.h"
#include "Spi.h"
#include "HwDo.h"
#include "Dio.h"
#include "UCC5880_Private.h"
#include "UCC5880_Integration_Dependency.h"
#include "UCC5880_Regs.h"
#include "UCC5880_Calibration_Interfaces.h"


/*****************************************************************************/
/*                      Define Definition                                    */
/*****************************************************************************/
#define Rte_IrvIWrite_RE_GD_1ms_IVDP_State(data) ((*Rte_Inst_GD.Irv_RE_SWC_GD_1ms_IVDP_State) = (data))
#define Rte_IrvIRead_RE_GD_10ms_IVDP_State() (*Rte_Inst_GD.Irv_RE_SWC_GD_10ms_IVDP_State)


/*****************************************************************************/
/*                      Macro Definition                                     */
/*****************************************************************************/
/* enumerated variables*/
#define GD_ENTER_CONF               1u
#define GD_EXIT_CONF                0u
#define GD_CTRL_RST_CMD             5u
#define GD_DIAG_THRSEHOLD           50u
#define GD_INITERR_AUTO_RST_LIMIT   10u
#define GD_NUM_OF_CHIPS             6u
#define GD_NUM_OF_STATUS_REG        3u
#define GD_PRV_RESETCHIP_FINSIH     0u
#define GD_PRV_RESETCHIP_STEP1      0u
#define GD_PRV_RESETCHIP_STEP2      1u
#define GD_NUM_OF_CHANNELS          11u
#define GD_NUM_OF_SEQ               11u
#define GD_NUM_OF_SEQREADCONF       6u

/* Command set defines*/
#define CMD_READ_REQUEST(chipAddress, address) (((uint16)((uint16)(0) << 12u) | (uint16)((uint16)(0x100u))) | (uint16)(address))                                 /*Set Read register address command*/
#define CMD_WRITE_REQUEST(chipAddress, address) (((uint16)((uint16)(0) << 12u) | (uint16)((uint16)(0xCu) << 8u)) | (uint16)(address))                            /*Set write register address command*/
#define CMD_WRITEL_REQUEST(chipAddress, data) ((uint16)((uint16)(0) << 12u) | (uint16)((uint16)(0xBu) << 8u) | (uint16)((uint16)(data)&0x00FFu))                 /* WriteL Command */
#define CMD_WRITEH_REQUEST(chipAddress, data) ((uint16)((uint16)(0) << 12u) | (uint16)((uint16)(0xAu) << 8u) | (uint16)((uint16)((uint16)(data)&0xFF00u) >> 8u)) /* WriteH Command */
#define CMD_NOP(chipAddress) ((uint16)((uint16)(0) << 12u) | (uint16)0x0542u)                                                                                    /* NOP Command */
#define CMD_ADD_EN             (0xF809)                                                                                                                                                 /*Enable addressing mode*/
#define CMD_ADD_DIS            (0xF80A)
#define CMD_CFG_ENABLE         (0x0222)
#define CMD_CFG_LOCK           (0x0233)                                                                                                                                                /*Disable addressing mode*/
#define CMD_SWRST(chipAddress) ((uint16)((uint16)(0) << 12u) | (uint16)0x0708u)                                                                                  /*Software Reset Command*/
#define CMD_WR_CA(chipAddress) (uint16)(0xFDA0u) | (uint16)((uint16)(0))                                                                                         /*Write chip address Command*/

/*Defines for channels*/
#define GD_CHANNEL_RD_DATA        0u
#define GD_CHANNEL_WR_RA          1u
#define GD_CHANNEL_WRL            2u
#define GD_CHANNEL_WRH            3u
#define GD_CHANNEL_CFG_LCK        4u
#define GD_CHANNEL_EN_CFG         5u
#define GD_CHANNEL_SW_RST         6u
#define GD_CHANNEL_NOP            7u
#define GD_CHANNEL_WR_CA          8u
#define GD_CHANNEL_ADD_DIS        9u
#define GD_CHANNEL_ADD_EN         10u

/*Defines for sequence*/
#define GD_SEQUENCE_RD_DATA        0u
#define GD_SEQUENCE_WR_RA          1u
#define GD_SEQUENCE_WRL            2u
#define GD_SEQUENCE_WRH            3u
#define GD_SEQUENCE_CFG_LCK        4u
#define GD_SEQUENCE_EN_CFG         5u
#define GD_SEQUENCE_SW_RST         6u
#define GD_SEQUENCE_NOP            7u
#define GD_SEQUENCE_WR_CA          8u
#define GD_SEQUENCE_ADD_DIS        9u
#define GD_SEQUENCE_ADD_EN         10u

#define GD_FAIL                    1u
#define GD_PASS                    0u
#define DEFAULT_TDEAD              245u
#define DATA_LENGTH                1u
#define N0_FAULT                   0u
#define NOT_READY                  0u

#define GD_CALIB_GD_READCNG       (1)
#define GD_CALIB_GD_REINIT        (2)
#define GD_CALIB_GD_SET_GDUPL     (3)  /*Set GD U Phase Pin Level*/
#define GD_CALIB_GD_SET_GDVPL     (4)  /*Set GD U Phase Pin Level*/
#define GD_CALIB_GD_SET_GDWPL     (5)  /*Set GD U Phase Pin Level*/
#define GD_CALIB_GD_DEFAULT       (255)

#define GD_CALIB_GDPIN_0           (0)
#define GD_CALIB_GDPIN_1           (1)
#define GD_CALIB_GDPIN_2           (2)

/*****************************************************************************/
/*                      Array Declaration                                     */
/*****************************************************************************/

/*****************************************************************************/
/*                      Enum Definition                                      */
/*****************************************************************************/
typedef enum
{
    UH_ADDRESS = 1u,
    UL_ADDRESS = 2u,
    VH_ADDRESS = 3u,
    VL_ADDRESS = 4u,
    WH_ADDRESS = 5u,
    WL_ADDRESS = 6u,
    BROADCAST = 15u
} GD_ADDR;

typedef enum
{
    UH = 0u,
    UL = 1u,
    VH = 2u,
    VL = 3u,
    WH = 4u,
    WL = 5u
} GD_INDEX;

/*****************************************************************************/
/*                      Structure Definition                                 */
/*****************************************************************************/

typedef struct
{
    /* Inter-runnable variable handles */
    uint8 *Irv_RE_SWC_GD_1ms_IVDP_State;
    uint8 *Irv_RE_SWC_GD_10ms_IVDP_State;

} Rte_GD_InterType;

/*****************************************************************************/
/*                      Global Variable                                      */
/*****************************************************************************/
extern uint8 CFG_REG_NUM;
extern GD_Vars GD_Dev[GD_NUM_OF_CHIPS];
extern boolean CFG_Update[GD_NUM_OF_CHIPS];
extern volatile GD_Vars GD_DEFAULT_CALIB_ROM_COPY[GD_NUM_OF_CHIPS];
extern volatile uint8 GD_Calib_ReInit;
extern volatile uint8 GD_Calib_GdPin;
extern volatile uint8 GD_Calib_GdPinLevel;

extern uint16 GD_Calib_CFG1_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_CFG2_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_CFG3_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_CFG4_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_CFG5_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_CFG6_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_ACT1_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_ACT2_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_ACT3_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_DIGCOMP1_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_DIGCOMP2_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_ADC1_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_ADC2_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_ADC3_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_ADC4_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_ADC5_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_ADC6_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_ADC6_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_CONTROL1_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_CONTROL2_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_CONTROL3_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_CRC_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_FAULT1_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_FAULT2_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_STATUS_Reg_Val[GD_NUM_OF_CHIPS];
extern uint16 GD_Calib_ID_Reg_Val[GD_NUM_OF_CHIPS];

/*****************************************************************************/
/*                      Global Function                                      */
/*****************************************************************************/
extern GD_DiagSnapshot_type GD_localcopy_DiagSnapshot[GD_NUM_OF_CHIPS];
extern uint16 GD_ReadFault(uint16 chipId);
extern void GD_10ms_MainFunction(void);
extern Std_ReturnType GD_Init(void);
extern void GD_StartGateDrv(uint16 chipAddress);
extern void GD_StateManagement(void);
extern void Prv_GD_SetReg(uint16 chipAddress, CONG_REG_type Regadd, uint16 value);
extern void GD_Calib_Config (void);
extern void GD_Calib_Update_ROM_Data (void);
extern void GD_Calib_Config_Read (void);
void GD_Delay (uint16 a_Ilp, uint16 a_Olp);

#endif /* UCC5880_H */
