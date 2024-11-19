#ifndef DISPTAB42_H
#define DISPTAB42_H
/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE   DispTab42.h                                                      */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION 0.0.1         PROJECT (FORD) Traction Inverter                    */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   Target specific initialization code                                     */
/*****************************************************************************/
/* FUNCTIONS FORD function defenitions                                       */
/*                                                                           */
/*****************************************************************************/
/* REMARKS                                                                   */
/*                                                                           */
/*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/* [1]         15.05.2023    Chandra Prakash      Created                    */
/*****************************************************************************/

/*****************************************************************************/
/*                  Macro Definitions                                        */
/*****************************************************************************/
#define EMEM_SBRCRT_BIT_LOCK_MODE              (0x0)
#define EMEM_SBRCRT_BIT_UNLOCK_MODE            (0x1) 
#define EMEM_SBRCRT_BIT_STANDBY_MODE           (0x1)

#define EMEM_SBRCRT_TRANSIT_T0_LOCKMODE        (0x90)

/*****************************************************************************/
/*                  Function prototype                                       */
/*****************************************************************************/
//Writes the Display Table provided. NOTE: Display Table number
// is 0 indexed for the Array, however, 0 corresponds to
// Display Table #1
void WriteDisplayTable(int TableNumber);

// Writes Registers or Trigger values to indicate that the
// Display Table's output table is Ready for Collection
// by an external Tool.
void WriteTriggerComplete(int TableNumber);

void SwitchPageToReferencePage(void);
void SwitchPageToWorkingPage(void);
void EnableOverlayRegInit(void);
void DisableOverlayRegInit(void);
void etk_setObaseTBase_protected(void);

/*****************************************************************************/
/*                  External Function prototype                              */
/*****************************************************************************/
extern void Emem_RegInit(void);
extern void Emem_TransitionTo_LockMode(void);
extern void Enable_OCDS_Triggers(void);

#endif  /* DISPTAB42_H */