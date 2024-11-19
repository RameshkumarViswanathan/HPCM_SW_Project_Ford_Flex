#ifndef UCC5880_CALIBRATION_INTERFACES_H
#define UCC5880_CALIBRATION_INTERFACES_H

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   DPT_Dvr.h                                                       */
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
/* [1.0.0]      10/23/2023    Shalini         Created                        */
/*****************************************************************************/

#include "Std_Types.h"
#include "UCC5880_Regs.h"

/*****************************************************************************
 Public functions prototypes
*****************************************************************************/
extern void GD_Set_RESET_MUTE_EN    (uint16 chipAddress,     GD_RESET_MUTE_EN_type value);
extern void GD_Set_IO_DG            (uint16 chipAddress,             GD_IO_DG_type value);
extern void GD_Set_TDEAD            (uint16 chipAddress,             GD_TDEAD_type value);
extern void GD_Set_NFLT2_MUX        (uint16 chipAddress,         GD_NFLT2_MUX_type value);
extern void GD_Set_OVLO1_TH         (uint16 chipAddress,          GD_OVLO1_TH_type value);
extern void GD_Set_UVLO1_TH         (uint16 chipAddress,          GD_UVLO1_TH_type value);
extern void GD_Set_MCLP_EN          (uint16 chipAddress,           GD_MCLP_EN_type value);
extern void GD_Set_DESAT_SC_SEL     (uint16 chipAddress,      GD_DESAT_SC_SEL_type value);
extern void GD_Set_OC_EN            (uint16 chipAddress,             GD_OC_EN_type value);
extern void GD_Set_GM_BLK           (uint16 chipAddress,            GD_GM_BLK_type value);
extern void GD_Set_OVLO3_TH         (uint16 chipAddress,          GD_OVLO3_TH_type value);
extern void GD_Set_UVLO3_TH         (uint16 chipAddress,          GD_UVLO3_TH_type value);
extern void GD_Set_OVLO2_TH         (uint16 chipAddress,          GD_OVLO2_TH_type value);
extern void GD_Set_UVLO2_TH         (uint16 chipAddress,          GD_UVLO2_TH_type value);
extern void GD_Set_MCLP_TH          (uint16 chipAddress,           GD_MCLP_TH_type value);
extern void GD_Set_VGTH_MEAS_EN     (uint16 chipAddress,      GD_VGTH_MEAS_EN_type value);
extern void GD_Set_STO_2STO_CURR    (uint16 chipAddress,     GD_STO_2STO_CURR_type value);
extern void GD_Set_DESAT_ICHG       (uint16 chipAddress,        GD_DESAT_ICHG_type value);
extern void GD_Set_DESAT_SC_TH      (uint16 chipAddress,       GD_DESAT_SC_TH_type value);
extern void GD_Set_DESAT_SCP_DG_EN  (uint16 chipAddress,   GD_DESAT_SCP_DG_EN_type value);
extern void GD_Set_OC_TH            (uint16 chipAddress,             GD_OC_TH_type value);
extern void GD_Set_SC_BLK           (uint16 chipAddress,            GD_SC_BLK_type value);
extern void GD_Set_DOUT_CH_SEL      (uint16 chipAddress,       GD_DOUT_CH_SEL_type value);
extern void GD_Set_DOUT_FREQ        (uint16 chipAddress,         GD_DOUT_FREQ_type value);
extern void GD_Set_IZTC_EN          (uint16 chipAddress,           GD_IZTC_EN_type value);
extern void GD_Set_VCECLP_EN        (uint16 chipAddress,         GD_VCECLP_EN_type value);
extern void GD_Set_2STO_STO_SEL     (uint16 chipAddress,      GD_STO_STO_SEL2_type value);
extern void GD_Set_VCE_CLMP_HLD_TIME(uint16 chipAddress, GD_VCE_CLMP_HLD_TIME_type value);
extern void GD_Set_MCLP_EXT_EN      (uint16 chipAddress,       GD_MCLP_EXT_EN_type value);
extern void GD_Set_2STO_TIME        (uint16 chipAddress,         GD_STO_TIME2_type value);
extern void GD_Set_IZTC_SEL         (uint16 chipAddress,          GD_IZTC_SEL_type value);
extern void GD_Set_ADC_OFF_CH1_SEL  (uint16 chipAddress,   GD_ADC_OFF_CH1_SEL_type value);
extern void GD_Set_ADC_OFF_CH2_SEL  (uint16 chipAddress,   GD_ADC_OFF_CH2_SEL_type value);
extern void GD_Set_ADC_OFF_TEMP_SEL (uint16 chipAddress,  GD_ADC_OFF_TEMP_SEL_type value);
extern void GD_Set_ADC_OFF_VCC2_SEL (uint16 chipAddress,  GD_ADC_OFF_VCC2_SEL_type value);
extern void GD_Set_ADC_ON_CH1_SEL   (uint16 chipAddress,    GD_ADC_ON_CH1_SEL_type value);
extern void GD_Set_ADC_ON_CH2_SEL   (uint16 chipAddress,    GD_ADC_ON_CH2_SEL_type value);
extern void GD_Set_ADC_ON_TEMP_SEL  (uint16 chipAddress,   GD_ADC_ON_TEMP_SEL_type value);
extern void GD_Set_ADC_ON_VCC2_SEL  (uint16 chipAddress,   GD_ADC_ON_VCC2_SEL_type value);
extern void GD_Set_ADC_ON_DESAT_SEL (uint16 chipAddress,  GD_ADC_ON_DESAT_SEL_type value);
extern void GD_Set_ADC_SAMP_DLY     (uint16 chipAddress,      GD_ADC_SAMP_DLY_type value);
extern void GD_Set_ADC_SAMP_MODE    (uint16 chipAddress,     GD_ADC_SAMP_MODE_type value);
extern void GD_Set_OC_BLK           (uint16 chipAddress,            GD_OC_BLK_type value);
extern void GD_Set_CFG_CRC_ACT      (uint16 chipAddress,       GD_CFG_CRC_ACT_type value);
extern void GD_Set_SPI_ACT          (uint16 chipAddress,           GD_SPI_ACT_type value);
extern void GD_Set_ADC_ACT          (uint16 chipAddress,           GD_ADC_ACT_type value);
extern void GD_Set_OVUV3_ACT        (uint16 chipAddress,         GD_OVUV3_ACT_type value);
extern void GD_Set_UVLO2_ACT        (uint16 chipAddress,         GD_UVLO2_ACT_type value);
extern void GD_Set_UVLO1_ACT        (uint16 chipAddress,         GD_UVLO1_ACT_type value);
extern void GD_Set_OVLO1_ACT        (uint16 chipAddress,         GD_OVLO1_ACT_type value);
extern void GD_Set_SC_DESAT_ACT     (uint16 chipAddress,      GD_SC_DESAT_ACT_type value);
extern void GD_Set_INT_COMM_ACT     (uint16 chipAddress,      GD_INT_COMM_ACT_type value);
extern void GD_Set_PWM_LANE_ACT     (uint16 chipAddress,      GD_PWM_LANE_ACT_type value);
extern void GD_Set_STP_ACT          (uint16 chipAddress,           GD_STP_ACT_type value);
extern void GD_Set_OC_ACT           (uint16 chipAddress,            GD_OC_ACT_type value);
extern void GD_Set_CLK_MON_ACT      (uint16 chipAddress,       GD_CLK_MON_ACT_type value);
extern void GD_Set_GD_TWN_ACT       (uint16 chipAddress,           GD_TWN_ACT_type value);
extern void GD_Set_TRIM_CRC_ACT     (uint16 chipAddress,      GD_TRIM_CRC_ACT_type value);
extern void GD_Set_INT_REG_ACT      (uint16 chipAddress,       GD_INT_REG_ACT_type value);
extern void GD_Set_GM_ACT           (uint16 chipAddress,            GD_GM_ACT_type value);
extern void GD_Set_DCOMP1_DEGLITCH  (uint16 chipAddress,   GD_DCOMP1_DEGLITCH_type value);
extern void GD_Set_DCOMP1_ACT       (uint16 chipAddress,        GD_DCOMP1_ACT_type value);
extern void GD_Set_DCOMP1_DIR       (uint16 chipAddress,        GD_DCOMP1_DIR_type value);
extern void GD_Set_DCOMP1_EN        (uint16 chipAddress,         GD_DCOMP1_EN_type value);
extern void GD_Set_THRESH_AI1       (uint16 chipAddress,        GD_THRESH_AI1_type value);
extern void GD_Set_DCOMP2_DEGLITCH  (uint16 chipAddress,   GD_DCOMP2_DEGLITCH_type value);
extern void GD_Set_DCOMP2_ACT       (uint16 chipAddress,        GD_DCOMP2_ACT_type value);
extern void GD_Set_DCOMP2_DIR       (uint16 chipAddress,        GD_DCOMP2_DIR_type value);
extern void GD_Set_DCOMP2_EN        (uint16 chipAddress,         GD_DCOMP2_EN_type value);
extern void GD_Set_THRESH_AI2       (uint16 chipAddress,        GD_THRESH_AI2_type value);
extern void GD_Set_CRC_TX           (uint16 chipAddress,            GD_CRC_TX_type value);
extern void GD_Set_CLR_FAULT        (uint16 chipAddress,         GD_CLR_FAULT_type value);
extern void GD_Set_GATE_OFF_CHK     (uint16 chipAddress,            GD_STATUS_type value);
extern void GD_Set_GATE_ON_CHK      (uint16 chipAddress,            GD_STATUS_type value);
extern void GD_Set_OC_CHK           (uint16 chipAddress,            GD_STATUS_type value);
extern void GD_Set_DESAT_CHK        (uint16 chipAddress,            GD_STATUS_type value);
extern void GD_Set_SCP_CHK          (uint16 chipAddress,            GD_STATUS_type value);
extern void GD_Set_CLK_MON_SEC_CHK  (uint16 chipAddress,            GD_STATUS_type value);
extern void GD_Set_CLK_MON_PRI_CHK  (uint16 chipAddress,            GD_STATUS_type value);
extern void GD_Set_GATE_CFG_CRC_CHK (uint16 chipAddress,            GD_STATUS_type value);
extern void GD_Set_DCOMP1_CHK       (uint16 chipAddress,            GD_STATUS_type value);
extern void GD_Set_DCOMP2_CHK       (uint16 chipAddress,            GD_STATUS_type value);
extern void GD_Set_CLR_SPI_CRC      (uint16 chipAddress,            GD_STATUS_type value);
extern void GD_Set_PWM_LANE_CHK     (uint16 chipAddress,            GD_STATUS_type value);
extern void GD_Set_STP_CHK          (uint16 chipAddress,            GD_STATUS_type value);
extern void GD_Set_PARITY1          (uint16 chipAddress,            GD_PARITY_type value);
extern void GD_Set_ASC_EN_HIZ_EN    (uint16 chipAddress,     GD_ASC_EN_HIZ_EN_type value);
extern void GD_Set_ASC_DELAY_SEL    (uint16 chipAddress,     GD_ASC_DELAY_SEL_type value);
extern void GD_Set_ASC_LEV_SEL      (uint16 chipAddress,       GD_ASC_LEV_SEL_type value);
extern void GD_Set_AI2_PUPD         (uint16 chipAddress,          GD_AI2_PUPD_type value);
extern void GD_Set_PARITY2          (uint16 chipAddress,            GD_PARITY_type value);
extern void GD_Set_CURPROT_ASC_EN   (uint16 chipAddress,    GD_CURPROT_ASC_EN_type value);
extern void GD_Set_ASC_STRENGTH     (uint16 chipAddress,      GD_ASC_STRENGTH_type value);
extern void GD_Set_OUTL_SEL         (uint16 chipAddress,          GD_OUTL_SEL_type value);
extern void GD_Set_OUTH_SEL         (uint16 chipAddress,          GD_OUTH_SEL_type value);
extern void GD_Set_SPITEST          (uint16 chipAddress,           GD_SPITEST_type value);

#endif /*UCC5880_CALIBRATION_INTERFACES_H*/
