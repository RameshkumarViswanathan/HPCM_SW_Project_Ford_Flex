#ifndef HWDI_H
#define HWDI_H

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   HwDi.h                                                           */
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
/* [1.0.0]     12.12.2022    Vishnu K              Created                   */
/*****************************************************************************/

/******************************************************************************
**                            Includes                                       **
******************************************************************************/
#include "Dio.h"

/*****************************************************************************/
/*                  Macro Definations                                        */
/*****************************************************************************/

/*                              IRS                                          */
#define DI_DISHCHARGE_FB	  	   (DIO_CHANNEL_22_6)
#define DI_FLT_IPU		         (DIO_CHANNEL_22_0) 
#define DI_FAULT_DRV_SUP         (DIO_CHANNEL_20_3)
/*                             IRS & b Signal                                */
#define DI_EM_SDNb               (DIO_CHANNEL_22_9)
#define DI_MSDNb	               (DIO_CHANNEL_22_2)
#define DI_FAULTb_U_L            (DIO_CHANNEL_11_13)
#define DI_FAULTb_V_L            (DIO_CHANNEL_11_14)  
#define DI_FAULTb_W_L            (DIO_CHANNEL_11_15) 
#define DI_VDCOVb		            (DIO_CHANNEL_22_3) 
#define DI_DISHCHARGE_STb		   (DIO_CHANNEL_22_7) 
#define DI_FAULTb_U_H            (DIO_CHANNEL_11_5)   
#define DI_FAULTb_V_H            (DIO_CHANNEL_11_7)   
#define DI_FAULTb_W_H            (DIO_CHANNEL_11_8)
#define DI_5V1_SW_FAULTb         (DIO_CHANNEL_22_1)
/*                          Pin Assignment & b Signal                        */
#define DI_HARD_SHDNb            (DIO_CHANNEL_22_8) 
#define DI_PMIC_SS1b             (DIO_CHANNEL_33_9)
/*                              Pin Assignment                               */
#define DI_PT_CANA_Rx            (DIO_CHANNEL_23_0)   
#define DI_PT_CANB_Rx            (DIO_CHANNEL_14_1)	  
#define DI_LIN_Rx	               (DIO_CHANNEL_15_1)
#define DI_CAN0_EN_FB            (DIO_CHANNEL_22_4)
#define DI_INTERLOCK_FB          (DIO_CHANNEL_22_5)
#define DI_FE1_CAN_Rx            (DIO_CHANNEL_20_7)	  
/*                          Customer not required signal                     */
#define DI_PMIC_SDO              (DIO_CHANNEL_15_7) 
#define DI_MISO_FLASH            (DIO_CHANNEL_20_12)	
#define DI_MISO_EEPROM           (DIO_CHANNEL_10_1)
#define DI_GDL_MISO              (DIO_CHANNEL_33_13)  	
#define DI_GDH_MISO              (DIO_CHANNEL_10_7) 

/*****************************************************************************/
/*                  Enum Definition                                          */
/*****************************************************************************/

/*                              IRS                                          */
typedef enum                    /* return val from di_discharge_fb() */
{
    DI_DISHCHARGE_FB_DISCHARGE_ACTIVE = 0U,
    DI_DISHCHARGE_FB_NORMAL_OPERATION = 1U
}Di_Discharge_Fb_t;
#define DI_DISHCHARGE_FB_DEFAULT (DI_DISHCHARGE_FB_DISCHARGE_ACTIVE)

typedef enum                      /* return val from di_fltmipu() */
{
    DI_FLT_IPU_FAULTED = 0U,
    DI_FLT_IPU_NORMAL = 1U
}Di_Fltmipu_t;
#define DI_FLT_IPU_DEFAULT (DI_FLT_IPU_FAULTED)

typedef enum /* return val from di_fault_drv_sup() */
{
	DI_FAULT_DRV_SUP_LOW = 0,
	DI_FAULT_DRV_SUP_HIGH = 1
} Di_Fault_Drv_Sup_t;
#define DI_FAULT_DRV_SUP_DEFAULT (DI_FAULT_DRV_SUP_LOW)

/*                             IRS & b Signal                                */
typedef enum                    /* return val from di_ex_sdn() */
{
    DI_EM_SDN_DYNO_SHUTDOWN = 0U,
    DI_EM_SDN_DYNO_NOT_SHUTDOWN = 1U
}Di_Ex_Sdn_t;
#define DI_EM_SDN_DEFAULT (DI_EM_SDN_DYNO_SHUTDOWN)

typedef enum                    /* return val from di_mgsdn() */
{
    DI_MSDN_NO_FAULT = 0U,
    DI_MSDN_FAULT_DETECTED = 1U
}Di_Mgsdn_t;
#define DI_MSDN_DEFAULT (DI_MSDN_NO_FAULT)

typedef enum                    /* return val from di_flt_ul() */
{
    DI_FAULTb_U_L_PHASE_A_HIGH_SIDE_STATUS = 1U,
    DI_FAULTb_U_L_PHASE_A_LOW_SIDE_STATUS = 0U
}Di_Flt_Ul_t;
#define DI_FAULTb_U_L_DEFAULT (DI_FAULTb_U_L_PHASE_A_LOW_SIDE_STATUS)

typedef enum                    /* return val from di_flt_vl() */
{
    DI_FAULTb_V_L_PHASE_B_HIGH_SIDE_STATUS = 1U,
    DI_FAULTb_V_L_PHASE_B_LOW_SIDE_STATUS = 0U
}Di_Flt_Vl_t;
#define DI_FAULTb_V_L_DEFAULT (DI_FAULTb_V_L_PHASE_B_LOW_SIDE_STATUS)

typedef enum                    /* return val from di_flt_wl() */
{
    DI_FAULTb_W_L_PHASE_C_HIGH_SIDE_STATUS = 1U,
    DI_FAULTb_W_L_PHASE_C_LOW_SIDE_STATUS = 0U
}Di_Flt_Wl_t;
#define DI_FAULTb_W_L_DEFAULT (DI_FAULTb_W_L_PHASE_C_LOW_SIDE_STATUS)

typedef enum                    /* return val from di_vdcov() */
{
    DI_VDCOV_HIGH_VOLTAGE_BUS_OVER_VOLTAGE = 0U,
    DI_VDCOV_HIGH_VOLTAGE_BUS_NORMAL_VOLTAGE = 1U
}Di_Vdcov_t;
#define DI_VDCOV_DEFAULT (DI_VDCOV_HIGH_VOLTAGE_BUS_OVER_VOLTAGE)

typedef enum                    /* return val from di_discharge_status() */
{
    DI_DISHCHARGE_ST_CHARGING = 1U,
    DI_DISHCHARGE_ST_DISCHARGE_COMPLETE = 0U
}Di_Discharge_Status_t;
#define DI_DISHCHARGE_ST_DEFAULT (DI_DISHCHARGE_ST_DISCHARGE_COMPLETE)

typedef enum                     /* return val from di_flt_uh() */
{
    DI_FAULTb_U_H_PHASE_A_HIGH_SIDE_STATUS = 0U,
    DI_FAULTb_U_H_PHASE_A_LOW_SIDE_STATUS = 1U
}Di_Flt_Uh_t;
#define DI_FAULTb_U_H_DEFAULT (DI_FAULTb_U_H_PHASE_A_HIGH_SIDE_STATUS)

typedef enum                    /* return val from di_flt_vh() */
{
    DI_FAULTb_V_H_PHASE_B_HIGH_SIDE_STATUS = 0U,
    DI_FAULTb_V_H_PHASE_B_LOW_SIDE_STATUS = 1U
}Di_Flt_Vh_t;
#define DI_FAULTb_V_H_DEFAULT (DI_FAULTb_V_H_PHASE_B_HIGH_SIDE_STATUS)

typedef enum                    /* return val from di_flt_wh() */
{
    DI_FAULTb_W_H_PHASE_C_HIGH_SIDE_STATUS = 0U,
    DI_FAULTb_W_H_PHASE_C_LOW_SIDE_STATUS = 1U
}Di_Flt_Wh_t;
#define DI_FAULTb_W_H_DEFAULT (DI_FAULTb_W_H_PHASE_C_HIGH_SIDE_STATUS)

typedef enum                    /* return val from di_motor_inverter_5V_switchfault() */
{
    DI_MOTOR_INVERTER_5V_SWITCH_NO_FAULT = 0U,
    DI_MOTOR_INVERTER_5V_SWITCH_FAULT_DETECTED = 1U
}Di_5V_Switch_Fault_t;
#define DI_MOTOR_INVERTER_5V_SWITCH_DEFAULT (DI_MOTOR_INVERTER_5V_SWITCH_NO_FAULT)

/*                          Pin Assignment & b Signal                        */
typedef enum                    /* return val from hard_shutdown_logic_output() */
{
     DI_HARD_SHUTDOWN_LOGIC_OUTPUT_NOK = 0U,
     DI_HARD_SHUTDOWN_LOGIC_OUTPUT_OK = 1U
}Di_Hard_Shutdown_Logic_Output_t;
#define DI_HARD_SHUTDOWN_LOGIC_OUTPUT_DEFAULT (DI_HARD_SHUTDOWN_LOGIC_OUTPUT_NOK)

typedef enum /* return val from di_pmic_ss1() */
{
	DI_PMIC_SS1_LOW = 0,
	DI_PMIC_SS1_HIGH = 1
} Di_Pmic_Ss1_t;
#define DI_PMIC_SS1_DEFAULT (DI_PMIC_SS1_LOW)

/*                              Pin Assignment                               */
typedef enum /* return val from di_ptcana_rx() */
{
	DI_PTCANA_RX_LOW = 0,
	DI_PTCANA_RX_HIGH = 1
} Di_Ptcana_Rx_t;
#define DI_PTCANA_RX_DEFAULT (DI_PTCANA_RX_LOW)

typedef enum /* return val from di_ptcanb_rx() */
{
	DI_PTCANB_RX_LOW = 0,
	DI_PTCANB_RX_HIGH = 1
} Di_Ptcan_Rx_t;
#define DI_PTCANB_RX_DEFAULT (DI_PTCANB_RX_LOW)

typedef enum /* return val from di_lin_rx() */
{
	DI_LIN_RX_LOW = 0,
	DI_LIN_RX_HIGH = 1
} Di_Lin_Rx_t;
#define DI_LIN_RX_DEFAULT (DI_LIN_RX_LOW)

typedef enum /* return val from di_can0_en_fb() */
{
	DI_CAN0_EN_FB_LOW = 0,
	DI_CAN0_EN_FB_HIGH = 1
} Di_Can0_En_Fb_t;
#define DI_CAN0_EN_FB_DEFAULT (DI_CAN0_EN_FB_LOW)

typedef enum                    /* return val from di_high_voltage_interlock() */
{
    DI_HIGH_VOLTAGE_INTERLOCK_NOK = 0U,
    DI_HIGH_VOLTAGE_INTERLOCK_OK = 1U
}Di_High_Voltage_Interlock_t;
#define DI_HIGH_VOLTAGE_INTERLOCK_DEFAULT (DI_HIGH_VOLTAGE_INTERLOCK_NOK)

typedef enum /* return val from di_fe1_can_rx() */
{
	DI_FE1_CAN_RX_LOW = 0,
	DI_FE1_CAN_RX_HIGH = 1
} Di_Fe1_Can_Rx_t;
#define DI_FE1_CAN_RX_DEFAULT (DI_FE1_CAN_RX_LOW)

/*                          Customer not required signal                     */
typedef enum /* return val from di_pmic_sdo() */
{
	DI_PMIC_SDO_LOW = 0,
	DI_PMIC_SDO_HIGH = 1
} Di_Pmic_Sdo_t;
#define DI_PMIC_SDO_DEFAULT (DI_PMIC_SDO_LOW)

typedef enum /* return val from di_miso_flash() */
{
	DI_MISO_FLASH_LOW = 0,
	DI_MISO_FLASH_HIGH = 1
} Di_Miso_Flash_t;
#define DI_MISO_FLASH_DEFAULT (DI_MISO_FLASH_LOW)

typedef enum /* return val from di_miso_eeprom() */
{
	DI_MISO_EEPROM_LOW = 0,
	DI_MISO_EEPROM_HIGH = 1
} Di_Miso_Eeprom_t;
#define DI_MISO_EEPROM_DEFAULT (DI_MISO_EEPROM_LOW)

typedef enum /* return val from di_gdl_miso() */
{
	DI_GDL_MISO_LOW = 0,
	DI_GDL_MISO_HIGH = 1
} Di_Gdl_Miso_t;
#define DI_GDL_MISO_DEFAULT (DI_GDL_MISO_LOW)

typedef enum /* return val from di_gdh_miso() */
{
	DI_GDH_MISO_LOW = 0,
	DI_GDH_MISO_HIGH = 1
} Di_Gdh_Miso_t;
#define DI_GDH_MISO_DEFAULT (DI_GDH_MISO_LOW)

/*****************************************************************************/
/*                  Function  Definition                                     */
/*****************************************************************************/

/*                              IRS                                          */
/* Discharge request feedback */
__inline__ boolean di_discharge_fb(void);

/* Power device fault */
__inline__ U32 di_fltmipu(void);

/* Gate Driver Power Supply */
__inline__ boolean di_fault_drv_sup(void);

/*                             IRS & b Signal                                */
/* Dyno shutdown */
__inline__ U32 di_ex_sdn(void);

/* Motor IGBT PWM buffer control */
__inline__ U32 di_mgsdn(void);

/* Phase A low side status */
__inline__ U32 di_flt_ul(void);

/* Phase B low side status */
__inline__ U32 di_flt_vl(void);

/* Phase C low side status */
__inline__ U32 di_flt_wl(void);

/* High Voltage Bus Over Voltage */
__inline__ U32 di_vdcov(void);

/* Discharge Status */
__inline__ boolean di_discharge_status(void);

/* Phase A high side status */
__inline__ U32 di_flt_uh(void);

/* Phase B high side status */
__inline__ U32 di_flt_vh(void);

/* Phase C high side status */
__inline__ U32 di_flt_wh(void);

/* Motor inverter 5V Current Limit Switch */
__inline__ boolean di_motor_inverter_5V_switchfault(void);

/*                          Pin Assignment & b Signal                        */
/* Hard Shutdown Logic Output */
__inline__ boolean di_hard_shutdown_logic_output(void);

/* Quizzer Safe state signal 1*/
__inline__ boolean di_pmic_ss1(void);

/*                              Pin Assignment                               */
/* CANFD Receive */
__inline__ boolean di_ptcana_rx(void);

/* CANFD Receive  */    
__inline__ boolean di_ptcanb_rx(void);

/* LIN Receive */    
__inline__ boolean di_lin_rx(void);  

/* CAN Enable feedback */
__inline__ boolean di_can0_en_fb(void); 

/* High Voltage Interlock */
__inline__ boolean di_high_voltage_interlock(void);

/* CANFD Receive */
__inline__ boolean di_fe1_can_rx(void);

/*                          Customer not required signal                     */
/* SPI Quizzer serial Output */
__inline__ boolean di_pmic_sdo(void);

/* SPI MISO */
__inline__ boolean di_miso_flash(void);  

/* SPI MISO */
__inline__ boolean di_miso_eeprom(void); 

/* SPI GDL serial Output */   
__inline__ boolean di_gdl_miso(void);    
 
/* SPI GDH serial Output */
__inline__ boolean di_gdh_miso(void);

/*                              IRS                                          */
/*****************************************************************************/
/* Function Name: __inline__ boolean di_discharge_fb(void)                   */
/* Descriptions: Discharge request feedback                                  */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID :  HPCM_ISC_DI_0009_00                                     */
/*****************************************************************************/
__inline__ boolean di_discharge_fb(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_DISHCHARGE_FB);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
    interface_return = (boolean)DI_DISHCHARGE_FB_DISCHARGE_ACTIVE;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
    interface_return = (boolean)DI_DISHCHARGE_FB_NORMAL_OPERATION;
    }
    else
    {
    interface_return = (boolean)DI_DISHCHARGE_FB_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ U32 di_fltmipu(void)                            */
/* Descriptions: Combined PD fault                                           */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : U32                                                    */
/*                                                                           */
/* Return Value : U32                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ U32 di_fltmipu(void)
{    
    Dio_LevelType  RetVal;
    U32 interface_return;
    RetVal = Dio_ReadChannel(DI_FLT_IPU);
    
    if(RetVal == (Dio_LevelType)STD_LOW)
    {
    interface_return = (U32)DI_FLT_IPU_FAULTED;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
    interface_return = (U32)DI_FLT_IPU_NORMAL;
    }
    else
    {
    interface_return = (U32)DI_FLT_IPU_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ boolean di_fault_drv_sup(void)                  */
/* Descriptions: Power good signal for Gate Drive supply                     */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_fault_drv_sup(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_FAULT_DRV_SUP);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
       interface_return = (boolean)DI_FAULT_DRV_SUP_LOW;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
       interface_return = (boolean)DI_FAULT_DRV_SUP_HIGH;
    }
    else
    {
       interface_return = (boolean)DI_FAULT_DRV_SUP_DEFAULT;
    }
    return (interface_return);
}

/*                             IRS & b Signal                                */
/*****************************************************************************/
/* Function Name: __inline__ U32 di_ex_sdn(void)                             */
/* Descriptions: External control that shuts down motor inverter PWM signals */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : U32                                                    */
/*                                                                           */
/* Return Value: U32                                                         */
/* Requirement ID :  HPCM_ISC_DI_0005_00                                     */
/*****************************************************************************/
__inline__ U32 di_ex_sdn(void)
{
    Dio_LevelType  RetVal;
    U32 interface_return;
    RetVal = Dio_ReadChannel(DI_EM_SDNb);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
    interface_return = (U32)DI_EM_SDN_DYNO_NOT_SHUTDOWN;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
    interface_return = (U32)DI_EM_SDN_DYNO_SHUTDOWN;
    }
    else
    {
    interface_return = (U32)DI_EM_SDN_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ U32 di_mgsdn(void)                              */
/* Descriptions: Motor inverter Shutdown                                     */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : U32                                                    */
/*                                                                           */
/* Return Value : U32                                                        */
/* Requirement ID :  HPCM_ISC_DI_0006_00                                     */
/*****************************************************************************/
__inline__ U32 di_mgsdn(void)
{
    Dio_LevelType  RetVal;
    U32 interface_return;
    RetVal = Dio_ReadChannel(DI_MSDNb);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
    interface_return = (U32)DI_MSDN_FAULT_DETECTED;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {    
    interface_return = (U32)DI_MSDN_NO_FAULT;
    }
    else
    {
    interface_return = (U32)DI_MSDN_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ U32 di_flt_ul(void)                             */
/* Descriptions: Motor PD A low side status fault                            */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : U32                                                    */
/*                                                                           */
/* Return Value : U32                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ U32 di_flt_ul(void)
{
    Dio_LevelType  RetVal;
    U32 Interface_RetVal;
    RetVal = Dio_ReadChannel(DI_FAULTb_U_L);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
    Interface_RetVal = (U32)DI_FAULTb_U_L_PHASE_A_HIGH_SIDE_STATUS;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {    
    Interface_RetVal = (U32)DI_FAULTb_U_L_PHASE_A_LOW_SIDE_STATUS;
    }
    else
    {
    Interface_RetVal = (U32)DI_FAULTb_U_L_DEFAULT;
    }
    return (Interface_RetVal);
}

/*****************************************************************************/
/* Function Name: __inline__ U32 di_flt_vl(void)                             */
/* Descriptions: Motor PD B low side status fault                            */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : U32                                                    */
/*                                                                           */
/* Return Value : U32                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ U32 di_flt_vl(void)
{
    Dio_LevelType  RetVal;
    U32 Interface_RetVal;
    RetVal = Dio_ReadChannel(DI_FAULTb_V_L);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
    Interface_RetVal = (U32)DI_FAULTb_V_L_PHASE_B_HIGH_SIDE_STATUS;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
    Interface_RetVal = (U32)DI_FAULTb_V_L_PHASE_B_LOW_SIDE_STATUS;
    }
    else
    {
    Interface_RetVal = (U32)DI_FAULTb_V_L_DEFAULT;
    }
    return (Interface_RetVal);
}

/*****************************************************************************/
/* Function Name: __inline__ U32 di_flt_wl(void)                             */
/* Descriptions: Motor PD C low side status fault                            */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : U32                                                    */
/*                                                                           */
/* Return Value : U32                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ U32 di_flt_wl(void)
{
    Dio_LevelType  RetVal;
    U32 Interface_RetVal;
    RetVal = Dio_ReadChannel(DI_FAULTb_W_L);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
    Interface_RetVal = (U32)DI_FAULTb_W_L_PHASE_C_HIGH_SIDE_STATUS;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {    
    Interface_RetVal = (U32)DI_FAULTb_W_L_PHASE_C_LOW_SIDE_STATUS;
    }
    else
    {
    Interface_RetVal = (U32)DI_FAULTb_W_L_DEFAULT;
    }
    return (Interface_RetVal);
}

/*****************************************************************************/
/* Function Name: __inline__ U32 di_vdcov(void)                              */
/* Descriptions: Inverter DC Bus over voltage fault                          */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : U32                                                    */
/*                                                                           */
/* Return Value : U32                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ U32 di_vdcov(void)
{
    Dio_LevelType  RetVal;
    U32 interface_return;
    RetVal = Dio_ReadChannel(DI_VDCOVb);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
    interface_return = (U32)DI_VDCOV_HIGH_VOLTAGE_BUS_NORMAL_VOLTAGE;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
    interface_return = (U32)DI_VDCOV_HIGH_VOLTAGE_BUS_OVER_VOLTAGE;
    }
    else
    {
    interface_return = (U32)DI_VDCOV_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ boolean di_discharge_status(void)               */
/* Descriptions: Discharge diagnosis feedback                                */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_discharge_status(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_DISHCHARGE_STb);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
    interface_return = (boolean)DI_DISHCHARGE_ST_CHARGING;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
    interface_return = (boolean)DI_DISHCHARGE_ST_DISCHARGE_COMPLETE;
    }
    else
    {
    interface_return = (boolean)DI_DISHCHARGE_ST_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ U32 di_flt_uh(void)                             */
/* Descriptions: Motor PD A high side status fault                           */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : U32                                                    */
/*                                                                           */
/* Return Value : U32                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ U32 di_flt_uh(void)
{
    Dio_LevelType  RetVal;
    U32 Interface_RetVal;
    RetVal = Dio_ReadChannel(DI_FAULTb_U_H);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
    Interface_RetVal = (U32)DI_FAULTb_U_H_PHASE_A_LOW_SIDE_STATUS;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
    Interface_RetVal = (U32)DI_FAULTb_U_H_PHASE_A_HIGH_SIDE_STATUS;
    }
    else
    {
    Interface_RetVal = (U32)DI_FAULTb_U_H_DEFAULT;
    }
    return (Interface_RetVal);
}

/*****************************************************************************/
/* Function Name: __inline__ U32 di_flt_vh(void)                             */
/* Descriptions: Motor PD B high side status fault                           */                                                           
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : U32                                                    */
/*                                                                           */
/* Return Value : U32                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ U32 di_flt_vh(void)
{
    Dio_LevelType  RetVal;
    U32 Interface_RetVal;
    RetVal = Dio_ReadChannel(DI_FAULTb_V_H);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
    Interface_RetVal = (U32)DI_FAULTb_V_H_PHASE_B_LOW_SIDE_STATUS;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
    Interface_RetVal = (U32)DI_FAULTb_V_H_PHASE_B_HIGH_SIDE_STATUS;
    }
    else
    {
    Interface_RetVal = (U32)DI_FAULTb_V_H_DEFAULT;
    }
    return (Interface_RetVal);
}

/*****************************************************************************/
/* Function Name: __inline__ U32 di_flt_wh(void)                             */
/* Descriptions: Motor PD C high side status fault                           */                                                         
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : U32                                                    */
/*                                                                           */
/* Return Value : U32                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ U32 di_flt_wh(void)
{
    Dio_LevelType  RetVal;
    U32 Interface_RetVal;
    RetVal = Dio_ReadChannel(DI_FAULTb_W_H);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
    Interface_RetVal = (U32)DI_FAULTb_W_H_PHASE_C_LOW_SIDE_STATUS;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
    Interface_RetVal = (U32)DI_FAULTb_W_H_PHASE_C_HIGH_SIDE_STATUS;
    }
    else
    {
    Interface_RetVal = (U32)DI_FAULTb_W_H_DEFAULT;
    }
    return (Interface_RetVal);
}

/*****************************************************************************/
/* Function Name: __inline__ boolean di_motor_inverter_5V_switchfault(void)  */
/* Descriptions: Motor inverter 5V Current Limit Switch                      */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_motor_inverter_5V_switchfault(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_5V1_SW_FAULTb);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
       interface_return = (boolean)DI_MOTOR_INVERTER_5V_SWITCH_FAULT_DETECTED;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
       interface_return = (boolean)DI_MOTOR_INVERTER_5V_SWITCH_NO_FAULT;
    }
    else
    {
       interface_return = (boolean)DI_MOTOR_INVERTER_5V_SWITCH_DEFAULT;
    }
    return (interface_return);
}

/*                          Pin Assignment & b Signal                        */
/*****************************************************************************/
/* Function Name: __inline__ boolean di_hard_shutdown_logic_output(void)     */
/* Descriptions: Hard Shutdown Logic Output                                  */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_hard_shutdown_logic_output(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_HARD_SHDNb);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
       interface_return = (boolean)DI_HARD_SHUTDOWN_LOGIC_OUTPUT_OK;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
       interface_return = (boolean)DI_HARD_SHUTDOWN_LOGIC_OUTPUT_NOK;
    }
    else
    {
       interface_return = (boolean)DI_HARD_SHUTDOWN_LOGIC_OUTPUT_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ boolean di_pmic_ss1(void)                       */
/* Descriptions: Quizzer safe state signal 1                                 */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_pmic_ss1(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_PMIC_SS1b);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
       interface_return = (boolean)DI_PMIC_SS1_HIGH;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
       interface_return = (boolean)DI_PMIC_SS1_LOW;
    }
    else
    {
       interface_return = (boolean)DI_PMIC_SS1_DEFAULT;
    }
    return (interface_return);
}

/*                              Pin Assignment                               */
/*****************************************************************************/
/* Function Name: __inline__ boolean di_ptcana_rx(void)                      */
/* Descriptions: CANFD A Receive                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_ptcana_rx(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_PT_CANA_Rx);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
       interface_return = (boolean)DI_PTCANA_RX_LOW;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
       interface_return = (boolean)DI_PTCANA_RX_HIGH;
    }
    else
    {
       interface_return = (boolean)DI_PTCANA_RX_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ boolean di_ptcanb_rx(void)                      */
/* Descriptions: CANFD B Receive                                             */                                                         
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_ptcanb_rx(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_PT_CANB_Rx);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
       interface_return = (boolean)DI_PTCANB_RX_LOW;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
       interface_return = (boolean)DI_PTCANB_RX_HIGH;
    }
    else
    {
       interface_return = (boolean)DI_PTCANB_RX_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ boolean di_lin_rx(void)                         */
/* Descriptions: LIN Receive                                                 */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_lin_rx(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_LIN_Rx);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
       interface_return = (boolean)DI_LIN_RX_LOW;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
       interface_return = (boolean)DI_LIN_RX_HIGH;
    }
    else
    {
       interface_return = (boolean)DI_LIN_RX_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ boolean di_can0_en_fb(void)                     */
/* Descriptions: CAN Enable feedback                                         */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_can0_en_fb(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_CAN0_EN_FB); 

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
       interface_return = (boolean)DI_CAN0_EN_FB_LOW;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
       interface_return = (boolean)DI_CAN0_EN_FB_HIGH;
    }
    else
    {
       interface_return = (boolean)DI_CAN0_EN_FB_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ boolean di_high_voltage_interlock(void)         */
/* Descriptions: High Voltage Interlock                                      */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_high_voltage_interlock(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_INTERLOCK_FB);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
       interface_return = (boolean)DI_HIGH_VOLTAGE_INTERLOCK_NOK;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
       interface_return = (boolean)DI_HIGH_VOLTAGE_INTERLOCK_OK;
    }
    else
    {
       interface_return = (boolean)DI_HIGH_VOLTAGE_INTERLOCK_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ boolean di_fe1_can_rx(void)                     */
/* Descriptions: CANFD Receive                                               */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_fe1_can_rx(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_FE1_CAN_Rx);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
       interface_return = (boolean)DI_FE1_CAN_RX_LOW;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
       interface_return = (boolean)DI_FE1_CAN_RX_HIGH;
    }
    else
    {
       interface_return = (boolean)DI_FE1_CAN_RX_DEFAULT;
    }
    return (interface_return);
}

/*                          Customer not required signal                     */
/*****************************************************************************/
/* Function Name: __inline__ boolean di_pmic_sdo(void)                       */
/* Descriptions: SPI Quizzer serial output                                   */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_pmic_sdo(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_PMIC_SDO); 

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
       interface_return = (boolean)DI_PMIC_SDO_LOW;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
       interface_return = (boolean)DI_PMIC_SDO_HIGH;
    }
    else
    {
       interface_return = (boolean)DI_PMIC_SDO_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ boolean di_miso_flash(void)                     */
/* Descriptions: SPI MISO Flash Memory                                       */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_miso_flash(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_MISO_FLASH); 

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
       interface_return = (boolean)DI_MISO_FLASH_LOW;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
       interface_return = (boolean)DI_MISO_FLASH_HIGH;
    }
    else
    {
       interface_return = (boolean)DI_MISO_FLASH_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ boolean di_miso_eeprom(void)                    */
/* Descriptions: SPI MISO EEPROM                                             */                                                            
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_miso_eeprom(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_MISO_EEPROM);

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
       interface_return = (boolean)DI_MISO_EEPROM_LOW;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
       interface_return = (boolean)DI_MISO_EEPROM_HIGH;
    }
    else
    {
       interface_return = (boolean)DI_MISO_EEPROM_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ boolean di_gdl_miso(void)                       */
/* Descriptions: SPI Gate Driver low side serial output                      */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_gdl_miso(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_GDL_MISO); 

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
       interface_return = (boolean)DI_GDL_MISO_LOW;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
       interface_return = (boolean)DI_GDL_MISO_HIGH;
    }
    else
    {
       interface_return = (boolean)DI_GDL_MISO_DEFAULT;
    }
    return (interface_return);
}

/*****************************************************************************/
/* Function Name: __inline__ boolean di_gdh_miso(void)                       */
/* Descriptions: SPI Gate Driver high side serial output                     */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : boolean                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ boolean di_gdh_miso(void)
{
    Dio_LevelType  RetVal;
    boolean interface_return;
    RetVal = Dio_ReadChannel(DI_GDH_MISO); 

    if(RetVal == (Dio_LevelType)STD_LOW)
    {
       interface_return = (boolean)DI_GDH_MISO_LOW;
    }
    else if(RetVal == (Dio_LevelType)STD_HIGH)
    {
       interface_return = (boolean)DI_GDH_MISO_HIGH;
    }
    else
    {
       interface_return = (boolean)DI_GDH_MISO_DEFAULT;
    }
    return (interface_return);
}

#endif /* HWDI_H */
