#if !defined(HWADC_H)
#define HWADC_H

 /*****************************************************************************/
 /* Copyrights (C) 20xx - 20xx FORD Motors                                    */
 /* All right reserved                                                        */
 /*****************************************************************************/
 /* MODULE   HwAdc.h                                                          */
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
 /* [1]         03.01.2023    Sivaprasath      Created                        */
 /*****************************************************************************/

/*******************************************************************************
**                          File Inclusion                            		  **
*******************************************************************************/
#include "Std_Types.h"
#include "IoHwAb_Adc.h"
#include "L2Sample_FS.h"


/*******************************************************************************
**                          Macro Definition                         		  **
*******************************************************************************/

#define ADC_Cos_P_CUR_ADC_HW_SEL			(8U)
#define ADC_Cos_N_CUR_ADC_HW_SEL			(9U)
#define ADC_Sin_P_CUR_ADC_HW_SEL			(10U)
#define ADC_Sin_N_CUR_ADC_HW_SEL			(11U)

#define ADC_Cos_P_CUR_ADC_CH_SEL 			(0U)
#define ADC_Cos_N_CUR_ADC_CH_SEL 			(0U)
#define ADC_Sin_P_CUR_ADC_CH_SEL 			(0U)
#define ADC_Sin_N_CUR_ADC_CH_SEL 			(0U)

#define ADC_Group2_ADC_HW_SEL				(2U)

#define ADC_Group2_Ch2_ADC_RES_REG_SEL		(1U)
#define ADC_Group2_Ch3_ADC_RES_REG_SEL		(2U)
#define ADC_Group2_Ch4_ADC_RES_REG_SEL		(3U)
#define ADC_Group2_Ch5_ADC_RES_REG_SEL		(4U)
#define ADC_Group2_Ch6_ADC_RES_REG_SEL		(5U)
#define ADC_Group2_Ch7_ADC_RES_REG_SEL		(6U)

#define ADC_Group3_ADC_HW_SEL				(3U)

#define ADC_Group3_Ch1_ADC_RES_REG_SEL		(1U)
#define ADC_Group3_Ch2_ADC_RES_REG_SEL		(2U)
#define ADC_Group3_Ch3_ADC_RES_REG_SEL		(3U)
#define ADC_Group3_Ch4_ADC_RES_REG_SEL		(4U)

#define ADC_Group8_ADC_HW_SEL				(8U)

#define ADC_Group8_Ch1_ADC_RES_REG_SEL		(1U)
#define ADC_Group8_Ch7_ADC_RES_REG_SEL		(2U)
#define ADC_Group8_Ch12_ADC_RES_REG_SEL		(3U)
#define ADC_Group8_Ch14_ADC_RES_REG_SEL		(4U)

#define ADC_Group11_ADC_HW_SEL				(11U)

#define ADC_Group11_Ch1_ADC_RES_REG_SEL		(1U)
#define ADC_Group11_Ch6_ADC_RES_REG_SEL		(2U)



/*******************************************************************************
**                  Global Variables With Extern Linkage               		  **
*******************************************************************************/

/*PSR 12V monitoring*/
extern INLINE U32 atd_psrm(void);

/*Motor Stator Coil Temperature */
extern INLINE U32 atd_tmcoil(void);

/*Trans oil temperature*/ 
extern INLINE U32 atd_toil(void);

/*Motor Coolant Outlet Temperature Sensor*/ 
extern INLINE U32 atd_tcoolant_outlet(void);

extern INLINE U32 atd_5v1_limit_fb(void);

extern INLINE U32 atd_2_048v_ref(void);

/*Motor Coolant Inlet Temperature Sensor*/ 
extern INLINE U32 atd_tcoolant_inlet(void);

/*Phase current Ia for the Motor */
extern INLINE U32 atd_ima(void);

/*Phase current Ib for the Motor */
extern INLINE U32 atd_imb(void);

/*Phase current Ic for the Motor */
extern INLINE U32 atd_imc(void);

/* Monitor Motor RD chip power supply */
extern INLINE U32 atd_vmrdm(void);

/*Motor Current Sensor Voltage Source */
extern INLINE U32 atd_vim5vm(void);

/*High Voltage DC Bus */
extern INLINE U32 atd_vdc(void);

/*5V Precision Voltage Reference */
extern INLINE U32 atd_5vref(void);

/*5V Power Supply*/ 
extern INLINE U32 atd_v5vm(void);

extern INLINE U32 atd_vpr(void);

/*3.3V Power Supply*/ 
extern INLINE U32 atd_v3_3vm(void);

/*1.3V Power Supply */
extern INLINE U32 atd_v1_3vm(void);

/*LV_SMPS output monitoring*/ 
extern INLINE U32 atd_v3_3_1vsnt(void);

/*Cosine positive signal from MPS sensor synchronized with the phase current */	
extern INLINE U32 atd_vadc_pcos_sync(void);

/*Cosine negative signal from MPS sensor synchronized with the phase current*/ 
extern INLINE U32 atd_vadc_ncos_sync(void);

/* Sine positive signal from MPS sensor synchronized with the phase current */
extern INLINE U32 atd_vadc_psin_sync(void);

/* Sine negative signal from MPS sensor synchronized with the phase current */
extern INLINE U32 atd_vadc_nsin_sync(void);



/*  Power Module U Temp sensor  */
extern INLINE U32 atd_tpu(void);

/*  Power Module V Temp sensor  */
extern INLINE U32 atd_tpv(void);

/*  Power Module W Temp sensor  */
extern INLINE U32 atd_tpw(void);

/*******************************************************************************
 **                     Global Variables Definition              		      **
 *******************************************************************************/
U32 atd_psrm_BUF;
U32 atd_ima_BUF;
U32 atd_imb_BUF;
U32 atd_imc_BUF;
U32 atd_vmrdm_BUF;
U32 atd_vim5vm_BUF;
U32 atd_vdc_BUF;
U32 atd_5vref_BUF;
U32 atd_tmcoil_BUF;
U32 atd_toil_BUF;
U32 atd_v5vm_BUF;
U32 atd_vpr_BUF;
U32 atd_v3_3vm_BUF;
U32 atd_v1_3vm_BUF;
U32 atd_tcoolant_outlet_BUF;
U32 atd_tcoolant_inlet_BUF;
U32 atd_v3_3_1vsnt_BUF;
U32 atd_vadc_psin_sync_BUF;
U32 atd_vadc_nsin_sync_BUF;
U32 atd_vadc_ncos_sync_BUF;
U32 atd_vadc_pcos_sync_BUF;
U32 atd_5v1_limit_fb_BUF;
U32 atd_2_048v_ref_BUF;

U32 temp_fault_tcoolant_outlet;
U32 temp_fault_tcoolant_inlet;
U32 temp_fault_vdc;
U32 temp_fault_vmrdm;
U32 temp_fault_vim5vm;
U32 temp_fault_v5vm;
U32 temp_fault_vpr;
U32 temp_fault_5vref;
U32 temp_fault_v3_3vm;
U32 temp_fault_v1_3vm;
U32 temp_fault_v3_3_1vsnt;
U32 temp_fault_psrm;
U32 temp_fault_tmcoil;
U32 temp_fault_toil;
U32 temp_fault_5v1_limit_fb;
U32 temp_fault_2_048v_ref;
U32 temp_fault_ima;
U32 temp_fault_imb;
U32 temp_fault_imc;
U32 temp_fault_vadc_pcos_sync;
U32 temp_fault_vadc_ncos_sync;
U32 temp_fault_vadc_nsin_sync;
U32 temp_fault_vadc_psin_sync;


/*******************************************************************************
**                        Global Function Prototypes              	    	  **
*******************************************************************************/
U32 ADC_Res_Buffer_Group2_CH2(void);
U32 ADC_Res_Buffer_Group2_CH3(void);
U32 ADC_Res_Buffer_Group2_CH4(void);
U32 ADC_Res_Buffer_Group2_CH5(void);
U32 ADC_Res_Buffer_Group2_CH6(void);
U32 ADC_Res_Buffer_Group2_CH7(void);
U32 ADC_Res_Buffer_Group3_CH1(void);
U32 ADC_Res_Buffer_Group3_CH2(void);
U32 ADC_Res_Buffer_Group3_CH3(void);
U32 ADC_Res_Buffer_Group3_CH4(void);
U32 ADC_Res_Buffer_Group8_CH1(void);
U32 ADC_Res_Buffer_Group8_CH7(void);
U32 ADC_Res_Buffer_Group8_CH12(void);
U32 ADC_Res_Buffer_Group8_CH14(void);
U32 ADC_Res_Buffer_Group11_CH1(void);
U32 ADC_Res_Buffer_Group11_CH6(void);
U32 ADC_Res_Buffer_U_Cur_MCU(void);
U32 ADC_Res_Buffer_V_Cur_MCU(void);
U32 ADC_Res_Buffer_W_Cur_MCU(void);
U32 ADC_Res_Buffer_Cos_P_MCU(void);
U32 ADC_Res_Buffer_Cos_N_MCU(void);
U32 ADC_Res_Buffer_Sin_N_MCU(void);
U32 ADC_Res_Buffer_Sin_P_MCU(void);

/*******************************************************************************
 ** Function Name	: atd_ima
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_ima_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_ima(void)
{
	atd_ima_BUF = ADC_Res_Buffer_U_Cur_MCU();
	return (atd_ima_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_imb
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_imb_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_imb(void)
{
	atd_imb_BUF = ADC_Res_Buffer_V_Cur_MCU();
	return (atd_imb_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_imc
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_imc_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_imc(void)
{
	atd_imc_BUF = ADC_Res_Buffer_W_Cur_MCU();
	return (atd_imc_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_psrm
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_psrm_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_psrm(void)
{
	atd_psrm_BUF = ADC_Res_Buffer_Group2_CH7();
	return (atd_psrm_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_vmrdm
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_vmrdm_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_vmrdm(void)
{
	atd_vmrdm_BUF = ADC_Res_Buffer_Group3_CH3();
    return (atd_vmrdm_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_vim5vm
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_vim5vm_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_vim5vm(void)
{
	atd_vim5vm_BUF = ADC_Res_Buffer_Group2_CH2();
    return (atd_vim5vm_BUF);

}

/*******************************************************************************
 ** Function Name	: atd_vdc
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_vdc_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_vdc(void) 
{
    atd_vdc_BUF = ADC_Res_Buffer_Group8_CH12();
    return (atd_vdc_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_5vref
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_5vref_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_5vref(void)
{
	atd_5vref_BUF = ADC_Res_Buffer_Group2_CH4();
    return (atd_5vref_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_tmcoil
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_tmcoil_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_tmcoil(void)
{
	atd_tmcoil_BUF = ADC_Res_Buffer_Group8_CH1();
    return (atd_tmcoil_BUF);

}

/*******************************************************************************
 ** Function Name	: atd_toil
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_toil_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_toil(void)
{
	atd_toil_BUF = ADC_Res_Buffer_Group8_CH7();
    return (atd_toil_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_v5vm
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_v5vm_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_v5vm(void)
{
    atd_v5vm_BUF = ADC_Res_Buffer_Group3_CH1();
    return (atd_v5vm_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_vpr
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_vpr_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_vpr(void)
{
	atd_vpr_BUF = ADC_Res_Buffer_Group2_CH3();
	return (atd_vpr_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_v3_3vm
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_v3_3vm_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_v3_3vm(void)
{
	atd_v3_3vm_BUF = ADC_Res_Buffer_Group2_CH5();
    return (atd_v3_3vm_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_v1_3vm
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_v1_3vm_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_v1_3vm(void)
{
	atd_v1_3vm_BUF = ADC_Res_Buffer_Group2_CH6();
    return (atd_v1_3vm_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_tcoolant_outlet
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_tcoolant_outlet_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_tcoolant_outlet(void)
{
	atd_tcoolant_outlet_BUF = ADC_Res_Buffer_Group11_CH6();
    return (atd_tcoolant_outlet_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_tcoolant_inlet
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_tcoolant_inlet_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_tcoolant_inlet(void)
{
	atd_tcoolant_inlet_BUF = ADC_Res_Buffer_Group11_CH1();
    return (atd_tcoolant_inlet_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_v3_3_1vsnt
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_v3_3_1vsnt_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_v3_3_1vsnt(void)
{
	atd_v3_3_1vsnt_BUF = ADC_Res_Buffer_Group8_CH14();
    return (atd_v3_3_1vsnt_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_vadc_psin_sync
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_vadc_psin_sync_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_vadc_psin_sync(void)
{
	atd_vadc_psin_sync_BUF = ADC_Res_Buffer_Sin_P_MCU();
   return (atd_vadc_psin_sync_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_vadc_nsin_sync
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_vadc_nsin_sync_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_vadc_nsin_sync(void)
{
	atd_vadc_nsin_sync_BUF = ADC_Res_Buffer_Sin_N_MCU();
    return (atd_vadc_nsin_sync_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_vadc_ncos_sync
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_vadc_ncos_sync_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_vadc_ncos_sync(void)
{
	atd_vadc_ncos_sync_BUF = ADC_Res_Buffer_Cos_N_MCU();
   return (atd_vadc_ncos_sync_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_vadc_pcos_sync
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_vadc_pcos_sync_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_vadc_pcos_sync(void)
{
	atd_vadc_pcos_sync_BUF = ADC_Res_Buffer_Cos_P_MCU();
   return (atd_vadc_pcos_sync_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_5v1_limit_fb
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_5v1_limit_fb_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_5v1_limit_fb(void)
{
	atd_5v1_limit_fb_BUF = ADC_Res_Buffer_Group3_CH2();
    return (atd_5v1_limit_fb_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_2_048v_ref
 ** Parameter[in] 	: None
 ** Parameter[out] 	: atd_2_048v_ref_BUF
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function to return the buffer value
 *******************************************************************************/
INLINE U32 atd_2_048v_ref(void)
{
	atd_2_048v_ref_BUF = ADC_Res_Buffer_Group3_CH4();
	return (atd_2_048v_ref_BUF);
}

/*******************************************************************************
 ** Function Name	: atd_tpu
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function Power Module U Temp sensor
 *******************************************************************************/
INLINE U32 atd_tpu(void)
{
   U32 PM_U_Temp;
   PM_U_Temp = FS_TEMP_U_MCU_Duty.PeriodTime;
   return PM_U_Temp;
}

/*******************************************************************************
 ** Function Name	: atd_tpv
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function Power Module V Temp sensor
 *******************************************************************************/
INLINE U32 atd_tpv(void)
{
   U32 PM_V_Temp;
   PM_V_Temp = FS_TEMP_V_MCU_Duty.PeriodTime;
   return PM_V_Temp;
}

/*******************************************************************************
 ** Function Name	: atd_tpw
 ** Parameter[in] 	: None
 ** Parameter[out] 	: None
 ** Return Value	: uint32
 ** Note	  		: None
 ** Description	  	: function Power Module W Temp sensor
 *******************************************************************************/
INLINE U32 atd_tpw(void)
{
   U32 PM_W_Temp;
   PM_W_Temp = FS_TEMP_W_MCU_Duty.PeriodTime;
   return PM_W_Temp;
}


#endif
