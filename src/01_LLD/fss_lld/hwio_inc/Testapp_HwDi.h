#ifndef TESTAPP_HWDI_H
#define TESTAPP_HWDI_H

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Testapp_HwDi.h                                                   */
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
#include "HwDi.h"
#include "Port.h"

/*****************************************************************************/
/*                      Macro Defination                                     */
/*****************************************************************************/
#define HWDI_TEST_COUNT     (27)
#define HWDI_INNER_LOOP     (9000000)
#define HWDI_OUTER_LOOP     (500000)
#define HWDI_TEST_START  1U
/*****************************************************************************/
/*                  Function  Definition                                     */
/*****************************************************************************/
U32 TestApp_di_fltmipu (void);
U32 TestApp_di_flt_uh  (void);
U32 TestApp_di_flt_vh  (void);
U32 TestApp_di_flt_wh  (void);
U32 TestApp_di_flt_ul  (void);
U32 TestApp_di_flt_vl  (void);
U32 TestApp_di_flt_wl  (void);
U32 TestApp_di_vdcov   (void);
U32 TestApp_di_mgsdn   (void);
U32 TestApp_di_ex_sdn  (void);
boolean TestApp_di_discharge_fb                  (void);
boolean TestApp_di_discharge_status              (void);
boolean TestApp_di_ptcana_rx                     (void);
boolean TestApp_di_ptcanb_rx                     (void);
boolean TestApp_di_lin_rx                        (void);
boolean TestApp_di_fe1_can_rx                    (void);
boolean TestApp_di_motor_inverter_5V_switchfault (void);
boolean TestApp_di_high_voltage_interlock        (void);
boolean TestApp_di_hard_shutdown_logic_output    (void);
boolean TestApp_di_pmic_ss1                      (void);
boolean TestApp_di_can0_en_fb                    (void);
boolean TestApp_di_pmic_sdo                      (void);
boolean TestApp_di_miso_flash                    (void);
boolean TestApp_di_miso_eeprom                   (void);
boolean TestApp_di_gdl_miso                      (void);
boolean TestApp_di_gdh_miso                      (void);
boolean TestApp_di_fault_drv_sup                 (void);

void Test_DIPortCode (void);
void Delay_Loop(U32 Flp, U32 Slp);

#endif /* TESTAPP_HWDI_H */
