#ifndef HWDO_H
#define HWDO_H

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   HwDo.h                                                           */
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

/*****************************************************************************/
/*                      Include Section                                      */
/*****************************************************************************/
#include "Dio.h"
/*****************************************************************************/
/*                  Macro Definations                                        */
/*****************************************************************************/

/*                              IRS                                          */
#define DO_IPU_EN                   (DIO_CHANNEL_13_0)
#define DO_GD0_U					(DIO_CHANNEL_2_9)
#define DO_GD1_U					(DIO_CHANNEL_2_10)		
#define DO_GD2_U					(DIO_CHANNEL_2_11)	
#define DO_GD0_V					(DIO_CHANNEL_2_6)
#define DO_GD1_V					(DIO_CHANNEL_2_7)
#define DO_GD2_V					(DIO_CHANNEL_2_8)
#define DO_GD0_W					(DIO_CHANNEL_0_1)
#define DO_GD1_W					(DIO_CHANNEL_0_3)
#define DO_GD2_W					(DIO_CHANNEL_0_5)
#define DO_DRV_ASC_EN_H_MCU			(DIO_CHANNEL_10_5)	
#define DO_DRV_ASC_EN_L_MCU			(DIO_CHANNEL_1_3)	
#define DO_DRV_ASC_H_MCU			(DIO_CHANNEL_1_4)	
#define DO_DRV_ASC_L_MCU			(DIO_CHANNEL_1_7)
#define DO_DRV_PWR_EN_H_MCU	    	(DIO_CHANNEL_14_8)
#define DO_DRV_PWR_EN_L_MCU			(DIO_CHANNEL_13_3)
#define DO_DRV_ASC_LATCH_MCU		(DIO_CHANNEL_1_6)
#define DO_PMIC_ERR				    (DIO_CHANNEL_33_8)
#define DO_PMIC_WDI				    (DIO_CHANNEL_14_3)
#define DO_PMIC_WDGDIS_CTRL		    (DIO_CHANNEL_33_6)
/*                             IRS & b Signal                                */
#define DO_DISCHARGE_ENb            (DIO_CHANNEL_23_6)
#define DO_CSb_U_L					(DIO_CHANNEL_33_1)
#define DO_CSb_V_L					(DIO_CHANNEL_33_3)
#define DO_CSb_W_L					(DIO_CHANNEL_33_5)
#define DO_FLASH_WPb                (DIO_CHANNEL_15_2)
#define DO_EEPROM_CSb               (DIO_CHANNEL_10_4)
#define DO_CSb_U_H					(DIO_CHANNEL_11_9)
#define DO_CSb_V_H					(DIO_CHANNEL_11_10)
#define DO_CSb_W_H					(DIO_CHANNEL_11_11)
/*                          Pin Assignment & b Signal                        */
#define DO_EEPROM_WPb               (DIO_CHANNEL_10_0)
/*                              Pin Assignment                               */
#define DO_ENA_PT_CAN_MCU			(DIO_CHANNEL_13_1)
#define DO_INIT_BYPASS              (DIO_CHANNEL_22_10)
/*                              Not Executed Signal                          */
#define DO_PMIC_SCS				    (DIO_CHANNEL_14_2)
#define DO_DRV_SDI_L				(DIO_CHANNEL_33_12) 	
#define DO_DRV_SDI_H				(DIO_CHANNEL_10_6)  
#define DO_FE1_CAN_Tx				(DIO_CHANNEL_20_8)  
#define DO_PT_CANA_Tx				(DIO_CHANNEL_23_1)  
#define DO_PT_CANB_Tx				(DIO_CHANNEL_14_0)  
#define DO_LIN_Tx					(DIO_CHANNEL_15_0) 
#define DO_PMIC_SDI				    (DIO_CHANNEL_15_6)
#define DO_FLASH_MOSI               (DIO_CHANNEL_20_14)
#define DO_FLASH_CS                 (DIO_CHANNEL_20_10)
#define DO_EEPROM_MOSI              (DIO_CHANNEL_10_3)               

/*****************************************************************************/
/*                  Enum Definition                                          */
/*****************************************************************************/

/*                              IRS                                          */
typedef enum /* return val from do_en_mipu()*/
{
	DO_IPU_EN_OFF = 0,
	DO_IPU_EN_ON = 1
} Do_En_Mipu_t;

typedef enum /* return val from do_gd0u()*/
{
	DO_GD0_U_OFF = 0,
	DO_GD0_U_ON = 1
} Do_Gd0_u_t;

typedef enum /* return val from do_gd1u()*/
{
	DO_GD1_U_OFF = 0,
	DO_GD1_U_ON = 1
} Do_Gd1_u_t;	

typedef enum /* return val from do_gd2u()*/
{
	DO_GD2_U_OFF = 0,
	DO_GD2_U_ON = 1
} Do_Gd2_u_t;

typedef enum /* return val from do_gd0v()*/
{
	DO_GD0_V_OFF = 0,
	DO_GD0_V_ON = 1
} Do_Gd0_v_t;	

typedef enum /* return val from do_gd1v()*/
{
	DO_GD1_V_OFF = 0,
	DO_GD1_V_ON = 1
} Do_Gd1_v_t;

typedef enum /* return val from do_gd2v()*/
{
	DO_GD2_V_OFF = 0,
	DO_GD2_V_ON = 1
} Do_Gd2_v_t;

typedef enum /* return val from do_gd0w()*/
{
	DO_GD0_W_OFF = 0,
	DO_GD0_W_ON = 1
} Do_Gd0_w_t;	

typedef enum /* return val from do_gd1w()*/
{
	DO_GD1_W_OFF = 0,
	DO_GD1_W_ON = 1
} Do_Gd1_w_t;	

typedef enum /* return val from do_gd2w()*/
{
	DO_GD2_W_OFF = 0,
	DO_GD2_W_ON = 1
} Do_Gd2_w_t;	

typedef enum /* return val from do_drvascenh()*/
{
	DO_DRV_ASC_EN_H_MCU_OFF = 0,
	DO_DRV_ASC_EN_H_MCU_ON = 1
} Do_Drv_Asc_En_H_t;	

typedef enum /* return val from do_drvascenl()*/
{
	DO_DRV_ASC_EN_L_MCU_OFF = 0,
	DO_DRV_ASC_EN_L_MCU_ON = 1
} Do_Drv_Asc_En_L_t;	

typedef enum /* return val from do_drvasch()*/
{
	DO_DRV_ASC_H_MCU_OFF = 0,
	DO_DRV_ASC_H_MCU_ON = 1
} Do_Drv_Asc_H_t;

typedef enum /* return val from do_drvascl()*/
{
	DO_DRV_ASC_L_MCU_OFF = 0,
	DO_DRV_ASC_L_MCU_ON = 1
} Do_Drv_Asc_L_t;

typedef enum /* return val from do_drv_pwr_en_h_mcu()*/
{
	DO_DRV_PWR_EN_H_MCU_OFF = 0,
	DO_DRV_PWR_EN_H_MCU_ON = 1
} Do_Drv_Pwr_En_H_Mcu_t;

typedef enum /* return val from do_drv_pwr_en_l_mcu()*/
{
	DO_DRV_PWR_EN_L_MCU_OFF = 0,
	DO_DRV_PWR_EN_L_MCU_ON = 1
} Do_Drv_Pwr_En_L_Mcu_t;

typedef enum /* return val from do_drv_asc_latch_mcu()*/
{
	DO_DRV_ASC_LATCH_MCU_OFF = 0,
	DO_DRV_ASC_LATCH_MCU_ON = 1
} Do_Drv_Asc_Latch_Mcu_t;

typedef enum /* return val from do_pmic_err()*/
{
	DO_PMIC_ERR_OFF = 0,
	DO_PMIC_ERR_ON = 1
} Do_Pmic_Err_t;

typedef enum /* return val from do_pmic_wdi()*/
{
    DO_PMIC_WDI_OFF = 0,
	DO_PMIC_WDI_ON = 1
} Do_Pmic_Wdi_t;

typedef enum /* return val from do_pmic_wdgdis_ctrl()*/
{
	DO_PMIC_WDGDIS_CTRL_OFF = 0,
	DO_PMIC_WDGDIS_CTRL_ON = 1
} Do_Pmic_Wdgdis_Ctrl_t;

/*                             IRS & b Signal                                */
typedef enum /* return val from do_discharge_cmd()*/
{
	DO_DISCHARGE_EN_DISCHARGE = 0,
	DO_DISCHARGE_EN_ACTIVE = 1
} Do_Discharge_Cmd_t;

typedef enum /* return val from do_csb_u_l()*/
{
	DO_CSb_U_L_OFF = 0,
	DO_CSb_U_L_ON = 1
} Do_Csb_U_L_t;

typedef enum /* return val from do_csb_v_L()*/
{
	DO_CSb_V_L_OFF = 0,
	DO_CSb_V_L_ON = 1
} Do_Csb_V_L_t;

typedef enum /* return val from do_csb_w_l()*/
{
	DO_CSb_W_L_OFF = 0,
	DO_CSb_W_L_ON = 1
} Do_Csb_W_L_t;

typedef enum /* return val from do_flash_wp()*/
{
	DO_FLASH_WP_OFF = 0,
	DO_FLASH_WP_ON = 1
} Do_Flash_Wp_t;

typedef enum /* return val from do_eeprom_cs()*/
{
	DO_EEPROM_CS_OFF = 0,
	DO_EEPROM_CS_ON = 1
} Do_Eeprom_Cs_t;

typedef enum /* return val from do_csb_u_h()*/
{
	DO_CSb_U_H_OFF = 0,
	DO_CSb_U_H_ON = 1
} Do_Csb_U_H_t;

typedef enum /* return val from do_csb_v_h()*/
{
	DO_CSb_V_H_OFF = 0,
	DO_CSb_V_H_ON = 1
} Do_Csb_V_H_t;

typedef enum /* return val from do_csb_w_h()*/
{
	DO_CSb_W_H_OFF = 0,
	DO_CSb_W_H_ON = 1
} Do_Csb_W_H_t;

/*                          Pin Assignment & b Signal                        */
typedef enum /* return val from do_eeprom_wp()*/
{
	DO_EEPROM_WP_OFF = 0,
	DO_EEPROM_WP_ON = 1
} Do_Eeprom_Wp_t;

/*                              Pin Assignment                               */
typedef enum /* return val from do_ena_pt_can_mcu()*/
{
	DO_ENA_PT_CAN_MCU_OFF = 0,
	DO_ENA_PT_CAN_MCU_ON = 1
} Do_Ena_Pt_Can_Mcu_t;

typedef enum /* return val from do_Init_Bypass()*/   
{
	DO_INIT_BYPASS_OFF = 0,
	DO_INIT_BYPASS_ON = 1
} Do_Init_Bypass_t;

/*                              Not Executed Signal                          */
typedef enum /* return val from do_pmic_scs()*/
{
    DO_PMIC_SCS_OFF = 0,
	DO_PMIC_SCS_ON = 1
} Do_Pmic_Scs_t;

typedef enum /* return val from do_drv_sdi_l()*/
{
	DO_DRV_SDI_L_OFF = 0,
	DO_DRV_SDI_L_ON = 1
} Do_Drv_Sdi_L_t;

typedef enum /* return val from do_drv_sdi_h()*/
{
	DO_DRV_SDI_H_OFF = 0,
	DO_DRV_SDI_H_ON = 1
} Do_Drv_Sdi_H_t;

typedef enum /* return val from do_fe1cantx()*/
{
	DO_FE1_CAN_Tx_OFF = 0,
	DO_FE1_CAN_Tx_ON = 1
} Do_Fe1_Can_Tx_t; 

typedef enum /* return val from do_canatx()*/
{
	DO_PT_CANA_Tx_OFF = 0,
	DO_PT_CANA_Tx_ON = 1
} Do_Pt_CanA_Tx_t; 

typedef enum /* return val from do_canbtx()*/
{
	DO_PT_CANB_Tx_OFF = 0,
	DO_PT_CANB_Tx_ON = 1
} Do_Pt_CanB_Tx_t; 

typedef enum /* return val from do_lintx()*/
{
	DO_LIN_Tx_OFF = 0,
	DO_LIN_Tx_ON = 1
} Do_Lin_Tx_t;

typedef enum /* return val from do_pmic_sdi()*/
{
	DO_PMIC_SDI_OFF = 0,
	DO_PMIC_SDI_ON = 1
} Do_Pmic_Sdi_t;

typedef enum /* return val from do_flash_mosi()*/
{
	DO_FLASH_MOSI_OFF = 0,
	DO_FLASH_MOSI_ON = 1
}Do_Flash_Mosi_t;

typedef enum /* return val from do_flash_cs()*/
{
	DO_FLASH_CS_OFF = 0,
	DO_FLASH_CS_ON = 1
} Do_Flash_Cs_t;

typedef enum /* return val from do_eeprom_mosi()*/
{
    DO_EEPROM_MOSI_OFF = 0,
	DO_EEPROM_MOSI_ON = 1
} Do_Eeprom_Mosi_t;

/*****************************************************************************/
/*                  Function  Definition                                     */
/*****************************************************************************/

/*                              IRS                                          */
/* DO_IPU_EN */
extern __inline__ void do_en_mipu(U32 state);

/* DO_GD0_U */
extern __inline__ void do_gd0u( boolean level );

/* DO_GD1_U */
extern __inline__ void do_gd1u( boolean level );

/* DO_GD2_U */
extern __inline__ void do_gd2u( boolean level );

/* DO_GD0_V */
extern __inline__ void do_gd0v( boolean level );

/* DO_GD1_V */
extern __inline__ void do_gd1v( boolean level );

/* DO_GD2_V */
extern __inline__ void do_gd2v( boolean level );

/* DO_GD0_W */
extern __inline__ void do_gd0w( boolean level );

/* DO_GD1_W */
extern __inline__ void do_gd1w( boolean level );

/* DO_GD2_W */
extern __inline__ void do_gd2w( boolean level );

/* DO_DRV_ASC_EN_H_MCU */
extern __inline__ void do_drvascenh( boolean level );

/*DO_DRV_ASC_EN_L_MCU*/
extern __inline__ void do_drvascenl( boolean level );

/*DO_DRV_ASC_H_MCU*/
extern __inline__ void do_drvasch( boolean level );

/* DO_DRV_ASC_L_MCU */
extern __inline__ void do_drvascl( boolean level );

/* DO_DRV_PWR_EN_H_MCU */
extern __inline__ void do_drv_pwr_en_h( boolean level );

/* DO_DRV_PWR_EN_L_MCU*/
extern __inline__ void do_drv_pwr_en_l( boolean level );

/* DO_DRV_ASC_LATCH_MCU */
extern __inline__ void do_drv_asc_latch_mcu( boolean level );

/* DO_PMIC_ERR */
extern __inline__ void do_pmic_err( boolean level );

/* DO_PMIC_WDI */
extern __inline__ void do_pmic_wdi( boolean level );

/* DO_PMIC_WDGDIS_CTRL */
extern __inline__ void do_pmic_wdgdis_ctrl( boolean level );

/*                             IRS & b Signal                                */
/* DO_DISCHARGE_ENb */
extern __inline__ void do_discharge_cmd(boolean level);

/* DO_CSB_U_L */
extern __inline__ void do_csb_u_l( boolean level );

/* DO_CSB_V_L */
extern __inline__ void do_csb_v_l( boolean level );

/* DO_CSB_W_L */
extern __inline__ void do_csb_w_l( boolean level );

/* DO_FLASH_WPb */
extern __inline__ void do_flash_wpb( boolean level );

/* DO_EEPROM_CSb */
extern __inline__ void do_eeprom_csb( boolean level );

/* DO_CSB_U_H */
extern __inline__ void do_csb_u_h( boolean level );

/* DO_CSB_V_H */
extern __inline__ void do_csb_v_h( boolean level );

/* DO_CSB_W_H */
extern __inline__ void do_csb_w_h( boolean level );

/*                          Pin Assignment & b Signal                        */
/* DO_EEPROM_WPb */
extern __inline__ void do_eeprom_wp( boolean level );

/*                              Pin Assignment                               */
/* DO_ENA_PT_CAN_MCU */
extern __inline__ void do_ena_pt_can_mcu( boolean level );

/* DO_INIT_BYPASS */
extern __inline__ void do_Init_Bypass( boolean level );

/*                              Not Executed Signal                          */
/* DO_PMIC_SCS */
extern __inline__ void do_pmic_scs( boolean level );

/* DO_DRV_SDI_L */
extern __inline__ void do_drv_sdi_l( boolean level );

/* DO_DRV_SDI_H */
extern __inline__ void do_drv_sdi_h( boolean level );

/* DO_FE1_CAN_Tx*/
extern __inline__ void do_fe1cantx( boolean level );

/* DO_PT_CANA_Tx*/
extern __inline__ void do_canatx( boolean level );

/* DO_PT_CANB_Tx*/
extern __inline__ void do_canbtx( boolean level );

/* DO_LIN_Tx */
extern __inline__ void do_lintx( boolean level );

/* DO_PMIC_SDI */
extern __inline__ void do_pmic_sdi( boolean level );

/* DO_FLASH_MOSI */
extern __inline__ void do_flash_mosi( boolean level );

/* DO_FLASH_CS */
extern __inline__ void do_flash_cs( boolean level );

/* DO_EEPROM_MOSI */
extern __inline__ void do_eeprom_mosi( boolean level );

/*                              IRS                                          */
/*****************************************************************************/
/* Function Name: __inline__ void do_en_mipu( U32 state )                    */
/* Comments:Allow Motor IGBTs to be ON (depending on other signals)          */
/*                                                                           */
/* Descriptions: Motor inverter enable                                       */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): U32                                                      */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: HPCM_ISC_DO_0001_00                                       */
/*****************************************************************************/
__inline__ void do_en_mipu(U32 state)
{
	Dio_LevelType LevelVal;       

	if(state == DO_IPU_EN_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_OFF);
		Dio_WriteChannel(DO_IPU_EN, LevelVal);
	}
	else if (state == DO_IPU_EN_ON)
	{
		LevelVal = ((Dio_LevelType)STD_ON);		
		Dio_WriteChannel(DO_IPU_EN, LevelVal);
	}
	else
	{
       /*Do Nothing*/
	}
}

/*****************************************************************************/
/* Function Name: __inline__ void do_gd0u( boolean level )                   */
/*                                                                           */
/* Descriptions: Gate Driver U GD0                                           */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_gd0u( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_GD0_U_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_GD0_U, LevelVal);
	}
	else if(level == DO_GD0_U_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_GD0_U, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_gd1u( boolean level )                   */
/*                                                                           */
/* Descriptions: Gate Driver U GD1                                           */                                                            
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_gd1u( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_GD1_U_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_GD1_U, LevelVal);
	}
	else if(level == DO_GD1_U_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_GD1_U, LevelVal);
	}
	else
	{
	    /*Do Nothing*/ 	
	}
}

/*****************************************************************************/
/* Function Name: __inline__ void do_gd2u( boolean level )                   */
/*                                                                           */
/* Descriptions: Gate Driver U GD2                                           */                                                          
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_gd2u( boolean level )
{
	Dio_LevelType LevelVal;     

	if(level == DO_GD2_U_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_GD2_U, LevelVal);
	}
	else if(level == DO_GD2_U_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_GD2_U, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_gd0v( boolean level )                   */
/*                                                                           */
/* Descriptions: Gate Driver V GD0                                           */                                                            
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_gd0v( boolean level )
{
	Dio_LevelType LevelVal;     

	if(level == DO_GD0_V_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_GD0_V, LevelVal);
	}
	else if(level == DO_GD0_V_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_GD0_V, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_gd1v( boolean level )                   */
/*                                                                           */
/* Descriptions: Gate Driver V GD1                                           */                                                            
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_gd1v( boolean level )
{
	Dio_LevelType LevelVal;     

	if(level == DO_GD1_V_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_GD1_V, LevelVal);
	}
	else if(level == DO_GD1_V_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_GD1_V, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_gd2v( boolean level )                   */
/*                                                                           */
/* Descriptions: Gate Driver V GD2                                           */                                                            
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_gd2v( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_GD2_V_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_GD2_V, LevelVal);
	}
	else if(level == DO_GD2_V_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_GD2_V, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_gd0w( boolean level )                   */
/*                                                                           */
/* Descriptions: Gate Driver W GD0                                           */                                                           
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_gd0w( boolean level )
{
	Dio_LevelType LevelVal;

	if(level == DO_GD0_W_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_GD0_W, LevelVal);
	}
	else if(level == DO_GD0_W_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_GD0_W, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_gd1w( boolean level )                   */
/*                                                                           */
/* Descriptions: Gate Driver W GD1                                           */                                                            
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_gd1w( boolean level )
{
	Dio_LevelType LevelVal;

	if(level == DO_GD1_W_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_GD1_W, LevelVal);
	}
	else if(level == DO_GD1_W_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_GD1_W, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_gd2w( boolean level )                   */
/*                                                                           */
/* Descriptions: Gate Driver W GD2                                           */                                                           
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_gd2w( boolean level )
{
	Dio_LevelType LevelVal;

	if(level == DO_GD2_W_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_GD2_W, LevelVal);
	}
	else if(level == DO_GD2_W_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_GD2_W, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_drvascenh( boolean level )              */
/*                                                                           */
/* Descriptions: Driver active short circuit high side enable                */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_drvascenh( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_DRV_ASC_EN_H_MCU_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_DRV_ASC_EN_H_MCU, LevelVal);
	}
	else if(level == DO_DRV_ASC_EN_H_MCU_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_DRV_ASC_EN_H_MCU, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_drvascenl( boolean level )              */
/*                                                                           */
/* Descriptions: Driver active short circuit low side enable                 */                                                         
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_drvascenl( boolean level )
{
	Dio_LevelType LevelVal;   

	if(level == DO_DRV_ASC_EN_L_MCU_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_DRV_ASC_EN_L_MCU, LevelVal);
	}
	else if(level == DO_DRV_ASC_EN_L_MCU_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_DRV_ASC_EN_L_MCU, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_drvasch( boolean level )                */
/*                                                                           */
/* Descriptions: Driver active short circuit high side control               */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_drvasch( boolean level )
{
	Dio_LevelType LevelVal;   

	if(level == DO_DRV_ASC_H_MCU_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_DRV_ASC_H_MCU, LevelVal);
	}
	else if(level == DO_DRV_ASC_H_MCU_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_DRV_ASC_H_MCU, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_drvascl( boolean level )                */
/*                                                                           */
/* Descriptions: Driver active short circuit low side control                */                                                           
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_drvascl( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_DRV_ASC_L_MCU_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_DRV_ASC_L_MCU, LevelVal);
	}
	else if(level == DO_DRV_ASC_L_MCU_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_DRV_ASC_L_MCU, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_drv_pwr_en_h( boolean level )           */
/*                                                                           */
/* Descriptions: Enable Gate driver high side power supply                   */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_drv_pwr_en_h( boolean level )
{
	Dio_LevelType LevelVal;     

	if(level == DO_DRV_PWR_EN_H_MCU_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_DRV_PWR_EN_H_MCU, LevelVal);
	}
	else if(level == DO_DRV_PWR_EN_H_MCU_ON) 
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_DRV_PWR_EN_H_MCU, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_drv_pwr_en_l( boolean level )           */
/*                                                                           */
/* Descriptions: Enable Gate driver low side power supply                    */                                                          
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_drv_pwr_en_l( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_DRV_PWR_EN_L_MCU_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_DRV_PWR_EN_L_MCU, LevelVal);
	}
	else if(level == DO_DRV_PWR_EN_L_MCU_ON) 
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_DRV_PWR_EN_L_MCU, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_drv_asc_latch_mcu( boolean level )      */
/*                                                                           */
/* Descriptions: Driver Active Short Circuit Latch                           */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_drv_asc_latch_mcu( boolean level )
{
	Dio_LevelType LevelVal;   

	if(level == DO_DRV_ASC_LATCH_MCU_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_DRV_ASC_LATCH_MCU, LevelVal);
	}
	else if(level == DO_DRV_ASC_LATCH_MCU_ON)  
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_DRV_ASC_LATCH_MCU, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_pmic_err( boolean level )               */
/*                                                                           */
/* Descriptions: Quizzer error signal input                                  */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_pmic_err( boolean level )
{
	Dio_LevelType LevelVal;      

	if(level == DO_PMIC_ERR_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_PMIC_ERR, LevelVal);
	}
	else if(level == DO_PMIC_ERR_ON) 
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_PMIC_ERR, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_pmic_wdi( boolean level )               */
/*                                                                           */
/* Descriptions: Watchdog pin-trigger input                                  */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_pmic_wdi( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_PMIC_WDI_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_PMIC_WDI, LevelVal);
	}
	else if(level == DO_PMIC_WDI_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_PMIC_WDI, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_pmic_wdgdis_ctrl( boolean level )       */
/*                                                                           */
/* Descriptions: TLF_Watchdog disable                                        */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_pmic_wdgdis_ctrl( boolean level )
{
	Dio_LevelType LevelVal;  

	if(level == DO_PMIC_WDGDIS_CTRL_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_PMIC_WDGDIS_CTRL, LevelVal);
	}
	else if(level == DO_PMIC_WDGDIS_CTRL_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_PMIC_WDGDIS_CTRL, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*                             IRS & b Signal                                */
/*****************************************************************************/
/* Function Name: __inline__ void do_discharge_cmd( boolean level )          */
/* Comments:Command to perform active discharge of the HV bus.               */
/*          Pin level set to                                                 */
/*          Low (0): Command HV discharge                                    */
/*          High (1): Normal operation                                       */
/*                                                                           */
/* Descriptions: Discharge request action                                    */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: HPCM_ISC_DO_0005_00                                       */
/*****************************************************************************/
__inline__ void do_discharge_cmd(boolean level)
{
	Dio_LevelType LevelVal;      

	if(level == DO_DISCHARGE_EN_DISCHARGE)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_DISCHARGE_ENb, LevelVal);
	}
	else if (level == DO_DISCHARGE_EN_ACTIVE)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_DISCHARGE_ENb, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}
}

/*****************************************************************************/
/* Function Name: __inline__ void do_csb_u_l( boolean level )                */
/*                                                                           */
/* Descriptions: SPI Gate Driver U low side chip select input                */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_csb_u_l( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_CSb_U_L_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_CSb_U_L, LevelVal);
	}
	else if(level == DO_CSb_U_L_ON) 
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_CSb_U_L, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_csb_v_l( boolean level )                */
/*                                                                           */
/* Descriptions: SPI Gate Driver V low side chip select input                */                                                            
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_csb_v_l( boolean level )
{
	Dio_LevelType LevelVal;     

	if(level == DO_CSb_V_L_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_CSb_V_L, LevelVal);
	}
	else if(level == DO_CSb_V_L_ON) 
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_CSb_V_L, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}
}

/*****************************************************************************/
/* Function Name: __inline__ void do_csb_w_l( boolean level )                */
/*                                                                           */
/* Descriptions: SPI Gate Driver W low side chip select input                */                                                            
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_csb_w_l( boolean level )
{
	Dio_LevelType LevelVal;   

	if(level == DO_CSb_W_L_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_CSb_W_L, LevelVal);
	}
	else if(level == DO_CSb_W_L_ON) 
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_CSb_W_L, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_flash_wpb( boolean level )              */
/*                                                                           */
/* Descriptions: Flash write protect                                         */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_flash_wpb( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_FLASH_WP_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_FLASH_WPb, LevelVal);
	}
	else if(level == DO_FLASH_WP_ON)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_FLASH_WPb, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_eeprom_csb( boolean level )             */
/*                                                                           */
/* Descriptions: SPI chip select                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_eeprom_csb( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_EEPROM_CS_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_EEPROM_CSb, LevelVal);
	}
	else if(level == DO_EEPROM_CS_ON)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_EEPROM_CSb, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_csb_u_h( boolean level )                */
/*                                                                           */
/* Descriptions: SPI Gate Driver U high side chip select input               */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_csb_u_h( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_CSb_U_H_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_CSb_U_H, LevelVal);
	}
	else if(level == DO_CSb_U_H_ON)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_CSb_U_H, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_csb_v_h( boolean level )                */
/*                                                                           */
/* Descriptions: SPI Gate Driver V high side chip select input               */                                                            
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_csb_v_h( boolean level )
{
	Dio_LevelType LevelVal;   

	if(level == DO_CSb_V_H_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_CSb_V_H, LevelVal);
	}
	else if(level == DO_CSb_V_H_ON)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_CSb_V_H, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_csb_w_h( boolean level )                */
/*                                                                           */
/* Descriptions: SPI Gate Driver W high side chip select input               */                                                            
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_csb_w_h( boolean level )
{
	Dio_LevelType LevelVal;   

	if(level == DO_CSb_W_H_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_CSb_W_H, LevelVal);
	}
	else  if(level == DO_CSb_W_H_ON) 
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_CSb_W_H, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*                          Pin Assignment & b Signal                        */
/*****************************************************************************/
/* Function Name: __inline__ void do_eeprom_wp( boolean level )              */
/*                                                                           */
/* Descriptions: EEPROM write protect                                        */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_eeprom_wp( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_EEPROM_WP_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_EEPROM_WPb, LevelVal);
	}
	else if(level == DO_EEPROM_WP_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_EEPROM_WPb, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*                              Pin Assignment                               */
/*****************************************************************************/
/* Function Name: __inline__ void do_ena_pt_can_mcu( boolean level )         */
/*                                                                           */
/* Descriptions: FDCAN enable                                                */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_ena_pt_can_mcu( boolean level )
{
	Dio_LevelType LevelVal;     

	if(level == DO_ENA_PT_CAN_MCU_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_ENA_PT_CAN_MCU, LevelVal);
	}
	else if(level == DO_ENA_PT_CAN_MCU_ON) 
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_ENA_PT_CAN_MCU, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_Init_Bypass( boolean level )            */
/*                                                                           */
/* Descriptions: Init Bypass Signal                                          */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_Init_Bypass( boolean level )
{
	Dio_LevelType LevelVal;     

	if(level == DO_INIT_BYPASS_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_INIT_BYPASS, LevelVal);
	}
	else if(level == DO_INIT_BYPASS_ON) 
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_INIT_BYPASS, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*                              Not Executed Signal                          */
/*****************************************************************************/
/* Function Name: __inline__ void do_pmic_scs( boolean level )               */
/*                                                                           */
/* Descriptions: SPI Quizzer chip select input                               */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_pmic_scs( boolean level )
{
	Dio_LevelType LevelVal;     

	if(level == DO_PMIC_SCS_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_PMIC_SCS, LevelVal);
	}
	else if(level == DO_PMIC_SCS_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_PMIC_SCS, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_drv_sdi_l( boolean level )              */
/*                                                                           */
/* Descriptions: SPI Gate driver low side serial input                       */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_drv_sdi_l( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_DRV_SDI_L_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_DRV_SDI_L, LevelVal);
	}
	else if(level == DO_DRV_SDI_L_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_DRV_SDI_L, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_drv_sdi_h( boolean level )              */
/*                                                                           */
/* Descriptions: SPI Gate driver high side serial input                      */                                                           
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_drv_sdi_h( boolean level )
{
	Dio_LevelType LevelVal;   

	if(level == DO_DRV_SDI_H_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_DRV_SDI_H, LevelVal);
	}
	else if(level == DO_DRV_SDI_H_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_DRV_SDI_H, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_fe1cantx( boolean level )               */
/*                                                                           */
/* Descriptions: CANFD Transmit                                              */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_fe1cantx( boolean level )
{
	Dio_LevelType LevelVal;   

	if(level == DO_FE1_CAN_Tx_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_FE1_CAN_Tx, LevelVal);
	}
	else if(level == DO_FE1_CAN_Tx_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_FE1_CAN_Tx, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_canatx( boolean level )                 */
/*                                                                           */
/* Descriptions: CANFD A Transmit                                            */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_canatx( boolean level )
{
	Dio_LevelType LevelVal;  

	if(level == DO_PT_CANA_Tx_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_PT_CANA_Tx, LevelVal);
	}
	else if(level == DO_PT_CANA_Tx_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_PT_CANA_Tx, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_canbtx( boolean level )                 */
/*                                                                           */
/* Descriptions: CANFD B Transmit                                            */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_canbtx( boolean level )
{
	Dio_LevelType LevelVal;   

	if(level == DO_PT_CANB_Tx_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_PT_CANB_Tx, LevelVal);
	}
	else if(level == DO_PT_CANB_Tx_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_PT_CANB_Tx, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_lintx( boolean level )                  */
/*                                                                           */
/* Descriptions: LIN Transmit                                                */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_lintx( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_LIN_Tx_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_LIN_Tx, LevelVal);
	}
	else if(level == DO_LIN_Tx_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_LIN_Tx, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_pmic_sdi( boolean level )               */
/*                                                                           */
/* Descriptions: SPI Quizzer serial Input                                    */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_pmic_sdi( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_PMIC_SDI_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_PMIC_SDI, LevelVal);
	}
	else if(level == DO_PMIC_SDI_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_PMIC_SDI, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_flash_mosi( boolean level )             */
/*                                                                           */
/* Descriptions: SPI MOSI flash memory                                       */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_flash_mosi( boolean level )
{
	Dio_LevelType LevelVal;     

	if(level == DO_FLASH_MOSI_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_FLASH_MOSI, LevelVal);
	}
	else if(level == DO_FLASH_MOSI_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_FLASH_MOSI, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_flash_cs( boolean level )               */
/*                                                                           */
/* Descriptions: Chip select for flash memory1                               */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_flash_cs( boolean level )
{
	Dio_LevelType LevelVal;    

	if(level == DO_FLASH_CS_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_FLASH_CS, LevelVal);
	}
	else if(level == DO_FLASH_CS_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_FLASH_CS, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: __inline__ void do_eeprom_mosi( boolean level )            */
/*                                                                           */
/* Descriptions: SPI MOSI EEPROM                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in): boolean                                                  */
/*                                                                           */
/* Parameters (out): void                                                    */
/*                                                                           */
/* Return Value: NONE                                                        */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
__inline__ void do_eeprom_mosi( boolean level )
{
	Dio_LevelType LevelVal;   

	if(level == DO_EEPROM_MOSI_OFF)
	{
		LevelVal = ((Dio_LevelType)STD_LOW);
		Dio_WriteChannel(DO_EEPROM_MOSI, LevelVal);
	}
	else if(level == DO_EEPROM_MOSI_ON)
	{
		LevelVal = ((Dio_LevelType)STD_HIGH);
		Dio_WriteChannel(DO_EEPROM_MOSI, LevelVal);
	}
	else
	{
		/*Do Nothing*/
	}	
}

/*****************************************************************************/
/* Function Name: void Set_Ports_Tristate (void)                             */
/* Descriptions: To Set Ports to Tristate before ECU Reset or Shutdown       */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out) : void                                                */
/*                                                                           */
/* Return Value : boolean                                                    */
/* Requirement ID: TBD                                                       */
/*****************************************************************************/
void Set_Ports_Tristate (void);
#endif /* HWDO_H */
