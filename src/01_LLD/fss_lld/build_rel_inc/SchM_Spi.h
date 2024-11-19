/**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *
 *                 This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                 Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                 All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  LICENSE
 *  -------------------------------------------------------------------------------------------------------------------
 *            Module: vBRS
 *           Program: FBL FORD
 *          Customer: 
 *       Expiry Date: Not restricted
 *  Ordered Derivat.: TC387
 *    License Scope : The usage is restricted to CBD2100753_D00
 *
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *              File: ..\Include\SchM_Spi.h
 *   Generation Time: 2022-06-06 14:52:23
 *           Project: DemoFbl - Version 1.0
 *          Delivery: CBD2100753_D00
 *      Tool Version: DaVinci Configurator  5.24.21
 *
 *
 *********************************************************************************************************************/

/**********************************************************************************************************************
 * Please note:
 *    The demo and example programs only show special aspects of the software. With regard to the fact
 *    that these programs are meant for demonstration purposes only, Vector Informatik liability shall be
 *    expressly excluded in cases of ordinary negligence, to the extent admissible by law or statute.
 *********************************************************************************************************************/

#ifndef SCHM_SPI_H
# define SCHM_SPI_H

# include "Os.h"

# ifdef __cplusplus
extern "C" {
# endif  /* __cplusplus */

# include "Std_Types.h"

# define SPI_START_SEC_CODE
# include "MemMap.h"

FUNC(void, SPI_CODE) Spi_MainFunction_Handling();

# define SPI_STOP_SEC_CODE
# include "MemMap.h"

# ifdef __cplusplus
} /* extern "C" */
# endif  /* __cplusplus */

# define SchM_Enter_Spi_Buffer_Update() SuspendAllInterrupts()
# define SchM_Exit_Spi_Buffer_Update() ResumeAllInterrupts()

# define SchM_Enter_Spi_SyncLock() SuspendAllInterrupts()
# define SchM_Exit_Spi_SyncLock() ResumeAllInterrupts()

# define SchM_Enter_Spi_ChannelLock() SuspendAllInterrupts()
# define SchM_Exit_Spi_ChannelLock() ResumeAllInterrupts()

# define SchM_Enter_Spi_Cancel_Seq() SuspendAllInterrupts()
# define SchM_Exit_Spi_Cancel_Seq() ResumeAllInterrupts()

# define SchM_Enter_Spi_Queue_Update_QSPI0() SuspendAllInterrupts()
# define SchM_Exit_Spi_Queue_Update_QSPI0() ResumeAllInterrupts()

# define SchM_Enter_Spi_Queue_Update_QSPI1() SuspendAllInterrupts()
# define SchM_Exit_Spi_Queue_Update_QSPI1() ResumeAllInterrupts()

# define SchM_Enter_Spi_Queue_Update_QSPI2() SuspendAllInterrupts()
# define SchM_Exit_Spi_Queue_Update_QSPI2() ResumeAllInterrupts()

# define SchM_Enter_Spi_Queue_Update_QSPI3() SuspendAllInterrupts()
# define SchM_Exit_Spi_Queue_Update_QSPI3() ResumeAllInterrupts()

# define SchM_Enter_Spi_Queue_Update_QSPI4() SuspendAllInterrupts()
# define SchM_Exit_Spi_Queue_Update_QSPI4() ResumeAllInterrupts()

# define SchM_Enter_Spi_Queue_Update_QSPI5() SuspendAllInterrupts()
# define SchM_Exit_Spi_Queue_Update_QSPI5() ResumeAllInterrupts()

# define SchM_Enter_Spi_Queue_Update() SuspendAllInterrupts()
# define SchM_Exit_Spi_Queue_Update() ResumeAllInterrupts()

#endif /* SCHM_SPI_H */
