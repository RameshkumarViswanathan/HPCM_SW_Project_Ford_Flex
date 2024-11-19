#ifndef TESTAPP_ADC_H
#define TESTAPP_ADC_H

/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   Testapp_ADC.h                                                           */
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
/* [1.0.0]     12.12.2022    Shilpa H              Created                   */
/*****************************************************************************/

/******************************************************************************
**                            Includes                                       **
******************************************************************************/

/*****************************************************************************/
/*                     Macro  Definition                                     */
/*****************************************************************************/
#define GTM_TOM_MODULE_0                 (0)
#define GTM_TOM_MODULE_1                 (1)
#define GTM_TOM_MODULE_2                 (2)

#define GTM_TOM_MODULE_0_CH3                 (3)
#define GTM_TOM_MODULE_0_CH4                 (4)

#define GTM_TOM_MODULE_1_CH3                 (3)
#define GTM_TOM_MODULE_1_CH7                 (7)

#define GTM_TOM_MODULE_2_CH3                 (3)
#define GTM_TOM_MODULE_2_CH4                 (4)

#define GTM_SERIAL_TIMER_DISABLE            (0)
#define GTM_SERIAL_TIMER_ENABLE             (1)
#define GTM_SERIAL_TIMER_DEFAULT            (255)
#define GTM_PARALLEL_TIMER_DISABLE          (0)
#define GTM_PARALLEL_TIMER_ENABLE           (1)
#define GTM_PARALLEL_TIMER_DEFAULT          (255)


/******************************************************************************/
/*                      global variable                                       */
/******************************************************************************/
uint8 u8_Disable_Serial_timer =  GTM_SERIAL_TIMER_DEFAULT;
uint8 u8_Disable_Parallel_timer =  GTM_PARALLEL_TIMER_DEFAULT;

/*****************************************************************************/
/*                  Function  Definition                                     */
/*****************************************************************************/
extern void ADC_Test(void);
void Adc_Test_Serial_DisableTimer(void);
void Adc_Test_Parallel_DisableTimer(void);
void Adc_Test_Serial_EnableTimer(void);
void Adc_Test_Parallel_EnableTimer(void);
void Adc_Test_Serial_ShadowVal(void);
void Adc_Test_Parallel_ShadowVal(void);

#endif /* TESTAPP_ADC_H */
