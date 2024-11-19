/**
 * \file
 *
 * \brief AUTOSAR Base
 *
 * This file contains the implementation of the AUTOSAR
 * module Base.
 *
 * \version 5.0.30
 *
 * \author Elektrobit Automotive GmbH, 91058 Erlangen, Germany
 *
 * Copyright 2005 - 2021 Elektrobit Automotive GmbH
 * All rights exclusively reserved for Elektrobit Automotive GmbH,
 * unless expressly agreed to otherwise.
 */

/* !LINKSTO Base.ModuleInfo.HeaderFile,1 */
#ifndef BASE_MODULES_H
#define BASE_MODULES_H

/*==================[macros]=================================================*/

#ifndef BASE_ADC_ENABLED
/** \brief Enable status of the module Adc (/Adc/Adc) (VariantPostBuild) */
#define BASE_ADC_ENABLED STD_ON
#endif

#ifndef BASE_ADC_HEADER
/** \brief Name of the Adc (/Adc/Adc) module's main header file */
#define BASE_ADC_HEADER <Adc.h>
#endif

#ifndef BASE_BASE_ENABLED
/** \brief Enable status of the module Base (/Base/Base) (VariantPreCompile) */
#define BASE_BASE_ENABLED STD_ON
#endif

#ifndef BASE_BASE_HEADER
/** \brief Name of the Base (/Base/Base) module's main header file */
#define BASE_BASE_HEADER <Base.h>
#endif

#ifndef BASE_CAN_ENABLED
/** \brief Enable status of the module Can (/Can/Can) (VariantPostBuild) */
#define BASE_CAN_ENABLED STD_ON
#endif

#ifndef BASE_CAN_17_MCMCAN_ENABLED
/** \brief Enable status of the module Can (/Can/Can) (VariantPostBuild) */
#define BASE_CAN_17_MCMCAN_ENABLED STD_ON
#endif

#ifndef BASE_CAN_HEADER
/** \brief Name of the Can (/Can/Can) module's main header file */
#define BASE_CAN_HEADER <Can_17_McmCan.h>
#endif

#ifndef BASE_CAN_17_MCMCAN_HEADER
/** \brief Name of the Can (/Can/Can) module's main header file */
#define BASE_CAN_17_MCMCAN_HEADER <Can_17_McmCan.h>
#endif

#ifndef BASE_COMPILER_ENABLED
/** \brief Enable status of the module Compiler (/Compiler/Compiler) (VariantPreCompile) */
#define BASE_COMPILER_ENABLED STD_ON
#endif

#ifndef BASE_COMPILER_HEADER
/** \brief Name of the Compiler (/Compiler/Compiler) module's main header file */
#define BASE_COMPILER_HEADER <Compiler.h>
#endif

#ifndef BASE_DIO_ENABLED
/** \brief Enable status of the module Dio (/Dio/Dio) (VariantLinkTime) */
#define BASE_DIO_ENABLED STD_ON
#endif

#ifndef BASE_DIO_HEADER
/** \brief Name of the Dio (/Dio/Dio) module's main header file */
#define BASE_DIO_HEADER <Dio.h>
#endif

#ifndef BASE_DMA_ENABLED
/** \brief Enable status of the module Dma (/Dma/Dma) (VariantPostBuild) */
#define BASE_DMA_ENABLED STD_ON
#endif

#ifndef BASE_DMA_HEADER
/** \brief Name of the Dma (/Dma/Dma) module's main header file */
#define BASE_DMA_HEADER <Dma.h>
#endif

#ifndef BASE_DSADC_ENABLED
/** \brief Enable status of the module Dsadc (/Dsadc/Dsadc) (VariantPostBuild) */
#define BASE_DSADC_ENABLED STD_ON
#endif


#ifndef BASE_DSADC_CONFIG_PTR
/** \brief Address of the first multiple configuration container for Dsadc (/Dsadc/Dsadc) */
#define BASE_DSADC_CONFIG_PTR (&DsadcConfigSet_0)
#endif

#ifndef BASE_DSADC_HEADER
/** \brief Name of the Dsadc (/Dsadc/Dsadc) module's main header file */
#define BASE_DSADC_HEADER <Dsadc.h>
#endif

#ifndef BASE_FEE_ENABLED
/** \brief Enable status of the module Fee (/Fee/Fee) (VariantPreCompile) */
#define BASE_FEE_ENABLED STD_OFF
#endif

#ifndef BASE_FEE_HEADER
/** \brief Name of the Fee (/Fee/Fee) module's main header file */
#define BASE_FEE_HEADER <Fee.h>
#endif

#ifndef BASE_FLS_ENABLED
/** \brief Enable status of the module Fls (/Fls/Fls) (VariantPreCompile) */
#define BASE_FLS_ENABLED STD_OFF
#endif

#ifndef BASE_FLS_HEADER
/** \brief Name of the Fls (/Fls/Fls) module's main header file */
#define BASE_FLS_HEADER <Fls.h>
#endif

#ifndef BASE_FLSLOADER_ENABLED
/** \brief Enable status of the module FlsLoader (/FlsLoader/FlsLoader) (VariantPreCompile) */
#define BASE_FLSLOADER_ENABLED STD_ON
#endif

#ifndef BASE_FLSLOADER_HEADER
/** \brief Name of the FlsLoader (/FlsLoader/FlsLoader) module's main header file */
#define BASE_FLSLOADER_HEADER <FlsLoader.h>
#endif

#ifndef BASE_GPT_ENABLED
/** \brief Enable status of the module Gpt (/Gpt/Gpt) (VariantPostBuild) */
#define BASE_GPT_ENABLED STD_ON
#endif

#ifndef BASE_GPT_HEADER
/** \brief Name of the Gpt (/Gpt/Gpt) module's main header file */
#define BASE_GPT_HEADER <Gpt.h>
#endif

#ifndef BASE_ICU_ENABLED
/** \brief Enable status of the module Icu (/Icu/Icu) (VariantPostBuild) */
#define BASE_ICU_ENABLED STD_ON
#endif

#ifndef BASE_ICU_17_TIMERIP_ENABLED
/** \brief Enable status of the module Icu (/Icu/Icu) (VariantPostBuild) */
#define BASE_ICU_17_TIMERIP_ENABLED STD_ON
#endif

#ifndef BASE_ICU_HEADER
/** \brief Name of the Icu (/Icu/Icu) module's main header file */
#define BASE_ICU_HEADER <Icu_17_TimerIp.h>
#endif

#ifndef BASE_ICU_17_TIMERIP_HEADER
/** \brief Name of the Icu (/Icu/Icu) module's main header file */
#define BASE_ICU_17_TIMERIP_HEADER <Icu_17_TimerIp.h>
#endif

#ifndef BASE_LIN_ENABLED
/** \brief Enable status of the module Lin (/Lin/Lin) (VariantPostBuild) */
#define BASE_LIN_ENABLED STD_ON
#endif

#ifndef BASE_LIN_17_ASCLIN_ENABLED
/** \brief Enable status of the module Lin (/Lin/Lin) (VariantPostBuild) */
#define BASE_LIN_17_ASCLIN_ENABLED STD_ON
#endif

#ifndef BASE_LIN_HEADER
/** \brief Name of the Lin (/Lin/Lin) module's main header file */
#define BASE_LIN_HEADER <Lin_17_AscLin.h>
#endif

#ifndef BASE_LIN_17_ASCLIN_HEADER
/** \brief Name of the Lin (/Lin/Lin) module's main header file */
#define BASE_LIN_17_ASCLIN_HEADER <Lin_17_AscLin.h>
#endif

#ifndef BASE_MCALEXT_ENABLED
/** \brief Enable status of the module McalExt (/McalExt/McalExt) (VariantPreCompile) */
#define BASE_MCALEXT_ENABLED STD_ON
#endif

#ifndef BASE_MCALEXT_HEADER
/** \brief Name of the McalExt (/McalExt/McalExt) module's main header file */
#define BASE_MCALEXT_HEADER <McalExt.h>
#endif

#ifndef BASE_MCALLIB_ENABLED
/** \brief Enable status of the module McalLib (/McalLib/McalLib) (VariantPreCompile) */
#define BASE_MCALLIB_ENABLED STD_ON
#endif

#ifndef BASE_MCALLIB_HEADER
/** \brief Name of the McalLib (/McalLib/McalLib) module's main header file */
#define BASE_MCALLIB_HEADER <McalLib.h>
#endif

#ifndef BASE_MCU_ENABLED
/** \brief Enable status of the module Mcu (/Mcu/Mcu) (VariantPostBuild) */
#define BASE_MCU_ENABLED STD_ON
#endif

#ifndef BASE_MCU_HEADER
/** \brief Name of the Mcu (/Mcu/Mcu) module's main header file */
#define BASE_MCU_HEADER <Mcu.h>
#endif

#ifndef BASE_OCU_ENABLED
/** \brief Enable status of the module Ocu (/Ocu/Ocu) (VariantPostBuild) */
#define BASE_OCU_ENABLED STD_ON
#endif

#ifndef BASE_OCU_HEADER
/** \brief Name of the Ocu (/Ocu/Ocu) module's main header file */
#define BASE_OCU_HEADER <Ocu.h>
#endif

#ifndef BASE_PORT_ENABLED
/** \brief Enable status of the module Port (/Port/Port) (VariantPostBuild) */
#define BASE_PORT_ENABLED STD_ON
#endif

#ifndef BASE_PORT_HEADER
/** \brief Name of the Port (/Port/Port) module's main header file */
#define BASE_PORT_HEADER <Port.h>
#endif

#ifndef BASE_PWM_ENABLED
/** \brief Enable status of the module Pwm (/Pwm/Pwm) (VariantPostBuild) */
#define BASE_PWM_ENABLED STD_ON
#endif

#ifndef BASE_PWM_17_GTMCCU6_ENABLED
/** \brief Enable status of the module Pwm (/Pwm/Pwm) (VariantPostBuild) */
#define BASE_PWM_17_GTMCCU6_ENABLED STD_ON
#endif

#ifndef BASE_PWM_HEADER
/** \brief Name of the Pwm (/Pwm/Pwm) module's main header file */
#define BASE_PWM_HEADER <Pwm_17_GtmCcu6.h>
#endif

#ifndef BASE_PWM_17_GTMCCU6_HEADER
/** \brief Name of the Pwm (/Pwm/Pwm) module's main header file */
#define BASE_PWM_17_GTMCCU6_HEADER <Pwm_17_GtmCcu6.h>
#endif

#ifndef BASE_RESOURCEM_ENABLED
/** \brief Enable status of the module ResourceM (/ResourceM/ResourceM) (VariantPreCompile) */
#define BASE_RESOURCEM_ENABLED STD_ON
#endif

#ifndef BASE_RESOURCEM_HEADER
/** \brief Name of the ResourceM (/ResourceM/ResourceM) module's main header file */
#define BASE_RESOURCEM_HEADER <ResourceM.h>
#endif

#ifndef BASE_SPI_ENABLED
/** \brief Enable status of the module Spi (/Spi/Spi) (VariantPostBuild) */
#define BASE_SPI_ENABLED STD_ON
#endif

#ifndef BASE_SPI_HEADER
/** \brief Name of the Spi (/Spi/Spi) module's main header file */
#define BASE_SPI_HEADER <Spi.h>
#endif

#ifndef BASE_STM_ENABLED
/** \brief Enable status of the module Stm (/Stm/Stm) (VariantPreCompile) */
#define BASE_STM_ENABLED STD_OFF
#endif

#ifndef BASE_STM_HEADER
/** \brief Name of the Stm (/Stm/Stm) module's main header file */
#define BASE_STM_HEADER <Stm.h>
#endif

#endif /* ifndef BASE_MODULES_H */
/*==================[end of file]============================================*/
