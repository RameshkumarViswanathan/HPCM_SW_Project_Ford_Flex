# 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.c"
# 1 "D:\\Vector\\CBD2300515_D00\\Demo\\DemoFbl\\Appl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.c"
# 45 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.c"
# 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm_inc.h" 1
# 48 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm_inc.h"
# 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h" 1
# 70 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h"
# 1 "../../../BSW/FblAsrStubs/v_cfg.h" 1
# 34 "../../../BSW/FblAsrStubs/v_cfg.h"
# 1 "../../../BSW/_Common/Platform_Types.h" 1
# 101 "../../../BSW/_Common/Platform_Types.h"
typedef unsigned char boolean;

typedef signed char sint8;
typedef unsigned char uint8;
typedef signed short sint16;
typedef unsigned short uint16;
typedef signed long sint32;
typedef unsigned long uint32;

typedef signed char sint8_least;
typedef unsigned char uint8_least;
typedef signed short sint16_least;
typedef unsigned short uint16_least;
typedef signed long sint32_least;
typedef unsigned long uint32_least;
# 125 "../../../BSW/_Common/Platform_Types.h"
typedef signed long long sint64;
typedef unsigned long long uint64;


typedef float float32;
typedef double float64;
# 35 "../../../BSW/FblAsrStubs/v_cfg.h" 2
# 71 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h" 2
# 81 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h"
# 1 "GenData/FblBm_Cfg.h" 1
# 82 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h" 2



# 1 "GenData/Fbl_Cfg.h" 1
# 149 "GenData/Fbl_Cfg.h"
# 1 "GenData/FblHal_Cfg.h" 1
# 150 "GenData/Fbl_Cfg.h" 2
# 86 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h" 2
# 98 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h"
# 1 "../../../BSW/_Common/v_def.h" 1
# 563 "../../../BSW/_Common/v_def.h"
typedef unsigned char vuint8;




typedef signed char vsint8;





typedef unsigned short vuint16;




typedef signed short vsint16;






typedef unsigned long vuint32;




typedef signed long vsint32;





typedef unsigned char *TxDataPtr;
typedef unsigned char *RxDataPtr;
# 654 "../../../BSW/_Common/v_def.h"
typedef unsigned int vbittype;
# 665 "../../../BSW/_Common/v_def.h"
struct _c_bits8
{
  vbittype b0:1;
  vbittype b1:1;
  vbittype b2:1;
  vbittype b3:1;
  vbittype b4:1;
  vbittype b5:1;
  vbittype b6:1;
  vbittype b7:1;
 };

struct _c_bits16
{
  vbittype b0:1;
  vbittype b1:1;
  vbittype b2:1;
  vbittype b3:1;
  vbittype b4:1;
  vbittype b5:1;
  vbittype b6:1;
  vbittype b7:1;

  vbittype b10:1;
  vbittype b11:1;
  vbittype b12:1;
  vbittype b13:1;
  vbittype b14:1;
  vbittype b15:1;
  vbittype b16:1;
  vbittype b17:1;
};

struct _c_bits32
{
  vbittype b0:1;
  vbittype b1:1;
  vbittype b2:1;
  vbittype b3:1;
  vbittype b4:1;
  vbittype b5:1;
  vbittype b6:1;
  vbittype b7:1;

  vbittype b10:1;
  vbittype b11:1;
  vbittype b12:1;
  vbittype b13:1;
  vbittype b14:1;
  vbittype b15:1;
  vbittype b16:1;
  vbittype b17:1;

  vbittype b20:1;
  vbittype b21:1;
  vbittype b22:1;
  vbittype b23:1;
  vbittype b24:1;
  vbittype b25:1;
  vbittype b26:1;
  vbittype b27:1;

  vbittype b30:1;
  vbittype b31:1;
  vbittype b32:1;
  vbittype b33:1;
  vbittype b34:1;
  vbittype b35:1;
  vbittype b36:1;
  vbittype b37:1;
};
# 99 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h" 2






# 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_assert.h" 1
# 96 "../../../../CBD2300515_D00/BSW/Fbl/fbl_assert.h"
# 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_assert_oem.h" 1
# 97 "../../../../CBD2300515_D00/BSW/Fbl/fbl_assert.h" 2
# 106 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h" 2
# 304 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h"
typedef vuint32 tFblStateBitmap;
# 328 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h"
typedef vuint8 tFblErrorType;
typedef vuint16 tFblErrorCode;

typedef vuint8 tFblResult;
typedef vuint8 tFblProgStatus;
typedef vuint8 tApplStatus;
typedef vuint8 tMagicFlag;
typedef vuint8 tFlashStatus;
# 346 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h"
typedef vuint32 FBL_ADDR_TYPE;
typedef vuint32 FBL_MEMSIZE_TYPE;







typedef vuint8 FBL_MEMID_TYPE;

typedef FBL_ADDR_TYPE tFblAddress;
typedef FBL_MEMSIZE_TYPE tFblLength;

typedef FBL_ADDR_TYPE tMtabAddress;
typedef FBL_MEMSIZE_TYPE tMtabLength;
typedef FBL_MEMID_TYPE tMtabMemId;

typedef vuint16 tChecksum;
# 374 "../../../../CBD2300515_D00/BSW/Fbl/fbl_def.h"
typedef void (*tExportFct)(void);


typedef vuint8 (* tFblRealtimeFct)(void);


typedef tFblLength (* tReadMemoryFct)(tFblAddress address, vuint8 * buffer, tFblLength length);






typedef struct tagProcParam
{
   vuint8 * dataBuffer;
   vuint16 dataLength;
   vuint8 * dataOutBuffer;
   vuint16 dataOutLength;
   vuint16 dataOutMaxLength;
   vuint8 (* wdTriggerFct)(void);
   vuint8 mode;
} tProcParam;



typedef struct tagSegmentInfo
{
   tFblAddress targetAddress;
   tFblLength length;
} tSegmentInfo;


typedef struct tagSegmentList
{
   vuint8 nrOfSegments;
   tSegmentInfo segmentInfo[16u];
} tSegmentList;
# 49 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm_inc.h" 2
# 1 "Include/fbl_fsm_cfg.h" 1
# 50 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm_inc.h" 2
# 1 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.h" 1
# 92 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.h"
typedef vuint16 tFblFsmState;


typedef vuint16 tFblFsmEvent;







typedef enum
{
   kFblFsmDefaultEvent_None,
   kFblFsmDefaultEvent_Entry,
   kFblFsmDefaultEvent_Exit,
   kFblFsmDefaultEvent_Any,

   kFblFsmDefaultEvent_Count
} tFblFsmDefaultEvents;


typedef enum
{
   kFblFsmGuard_True,
   kFblFsmGuard_False,
   kFblFsmGuard_Overwrite
} tFblFsmGuard;


typedef struct sFblFsmContext tFblFsmContext;


typedef tFblFsmContext * tFblFsmContextPtr;


typedef tFblFsmGuard (* tFblFsmEventHandler)( tFblFsmContextPtr const pFsmContext, tFblFsmEvent event );

typedef struct
{
   tFblFsmEventHandler handler;
   tFblFsmEvent trigger;
   tFblFsmState nextState;
} tFblFsmEventEntry;


typedef struct
{
   tFblFsmState superState;
   vuint16 triggerCount;

   tFblFsmEventEntry const * triggers;
} tFblFsmStateDefinition;


struct sFblFsmContext
{

   tFblFsmStateDefinition const * stateDefinitions;
   vuint16 stateCount;
   tFblFsmState state;
   tFblFsmState pendingState;
   tFblFsmEvent pendingEvent;



};
# 168 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.h"
void FblFsmInitPowerOn( void );
void FblFsmInit( tFblFsmContextPtr const pFsmContext, tFblFsmState initialState );
void FblFsmDeinit( tFblFsmContextPtr const pFsmContext );
void FblFsmStateTask( tFblFsmContextPtr const pFsmContext );
void FblFsmTriggerEvent( tFblFsmContextPtr const pFsmContext, tFblFsmEvent event );
tFblFsmGuard FblFsmEventHandlerDefault( tFblFsmContextPtr const pFsmContext, tFblFsmEvent event );
# 51 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm_inc.h" 2
# 46 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.c" 2
# 62 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.c"
typedef enum
{
   kFsmIterateHierarchy_Disabled,
   kFsmIterateHierarchy_Enabled
} tFsmIterateHierarchy;





static void FblFsmHandleEvent( tFblFsmContextPtr const pFsmContext, tFblFsmEvent event, tFsmIterateHierarchy iterate);
static vuint8 FblFsmGetStateHierachy( const tFblFsmContext * const pFsmContext, tFblFsmState state,
                                      tFblFsmState * hierarchy );
# 99 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.c"
static vuint8 FblFsmGetStateHierachy( const tFblFsmContext * const pFsmContext,
                                      tFblFsmState state,
                                      tFblFsmState * hierarchy )
{
   vuint8 index;

   index = 0u;

   while (((tFblFsmState)-1) != state)
   {

      if ( (index >= 8u)
        || (state >= pFsmContext->stateCount))
      {
         ;

         index = 0u;
         state = ((tFblFsmState)-1);
      }
      else
      {
         hierarchy[index] = state;
         index++;

         state = pFsmContext->stateDefinitions[state].superState;
      }
   }

   return index;
}
# 138 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.c"
static void FblFsmHandleEvent( tFblFsmContextPtr const pFsmContext, tFblFsmEvent event, tFsmIterateHierarchy iterate )
{
   vuint16 index;
   vuint16 hierarchy;
   tFblFsmState state;
   tFblFsmGuard guard;
   tFblFsmStateDefinition const * stateDef;
   tFblFsmEventEntry const * triggers;

   state = pFsmContext->state;
   hierarchy = 0u;

   ;

   while ( (((tFblFsmState)-1) != state)
        && (state < pFsmContext->stateCount))
   {
      stateDef = &pFsmContext->stateDefinitions[state];
      triggers = stateDef->triggers;


      for (index = 0u; index < stateDef->triggerCount; index++)
      {
         if ( (triggers[index].trigger == event)
           || (triggers[index].trigger == kFblFsmDefaultEvent_Any) )
         {

            guard = triggers[index].handler(pFsmContext, event);

            ;

            if (kFblFsmGuard_False != guard)
            {
               if (kFblFsmGuard_True == guard)
               {

                  pFsmContext->pendingState = triggers[index].nextState;
               }
               else
               {

               }


               state = ((tFblFsmState)-1);
               break;
            }
            else
            {

            }
         }
      }


      if (((tFblFsmState)-1) != state)
      {


         if (kFsmIterateHierarchy_Enabled == iterate)
         {
            hierarchy++;

            if (hierarchy < 8u)
            {
               state = stateDef->superState;
            }
            else
            {

               ;

               state = ((tFblFsmState)-1);
            }
         }
         else
         {

            state = ((tFblFsmState)-1);
         }
      }
   }
# 228 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.c"
}
# 239 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.c"
void FblFsmInitPowerOn( void )
{



}
# 253 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.c"
void FblFsmInit( tFblFsmContextPtr const pFsmContext, tFblFsmState initialState )
{






   pFsmContext->state = ((tFblFsmState)-1);
   pFsmContext->pendingState = initialState;
   pFsmContext->pendingEvent = kFblFsmDefaultEvent_None;


   FblFsmStateTask(pFsmContext);
}







void FblFsmDeinit( tFblFsmContextPtr const pFsmContext )
{

   pFsmContext->state = ((tFblFsmState)-1);
   pFsmContext->pendingState = ((tFblFsmState)-1);
   pFsmContext->pendingEvent = kFblFsmDefaultEvent_None;
}
# 290 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.c"
void FblFsmStateTask( tFblFsmContextPtr const pFsmContext )
{
   tFblFsmEvent event;

   tFblFsmState stateHierarchyExit[8u];
   tFblFsmState stateHierarchyEntry[8u];

   tFblFsmState currentState;
   tFblFsmState pendingState;

   vsint8 index;
   vuint8 exitCount;
   vuint8 entryCount;
   vsint8 exitIndex;
   vsint8 entryIndex;


   event = pFsmContext->pendingEvent;

   if (kFblFsmDefaultEvent_None != event)
   {

      pFsmContext->pendingEvent = kFblFsmDefaultEvent_None;


      FblFsmHandleEvent(pFsmContext, event, kFsmIterateHierarchy_Enabled);
   }


   while (((tFblFsmState)-1) != pFsmContext->pendingState)
   {
      currentState = pFsmContext->state;
      pendingState = pFsmContext->pendingState;

      ;


      pFsmContext->pendingState = ((tFblFsmState)-1);


      exitCount = FblFsmGetStateHierachy(pFsmContext, currentState, stateHierarchyExit);
      entryCount = FblFsmGetStateHierachy(pFsmContext, pendingState, stateHierarchyEntry);


      if (currentState == pendingState)
      {
         exitIndex = 0;
         entryIndex = 0;
      }
      else
      {
         exitIndex = (vsint8)(exitCount - 1);
         entryIndex = (vsint8)(entryCount - 1);


         while ( (exitIndex >= 0)
               && (stateHierarchyExit[exitIndex] == stateHierarchyEntry[entryIndex]) )
         {
            exitIndex--;
            entryIndex--;
         }


      }





      for (index = 0; index <= exitIndex; index++)
      {
         pFsmContext->state = stateHierarchyExit[index];


         FblFsmHandleEvent(pFsmContext, kFblFsmDefaultEvent_Exit, kFsmIterateHierarchy_Disabled);
      }



      for (index = entryIndex; index >= 0; index--)
      {
         pFsmContext->state = stateHierarchyEntry[index];


         FblFsmHandleEvent(pFsmContext, kFblFsmDefaultEvent_Entry, kFsmIterateHierarchy_Disabled);
      }


      pFsmContext->state = pendingState;
   }
}
# 389 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.c"
void FblFsmTriggerEvent( tFblFsmContextPtr const pFsmContext, tFblFsmEvent event )
{
   pFsmContext->pendingEvent = event;
}
# 401 "../../../../CBD2300515_D00/BSW/Fbl/fbl_fsm.c"
tFblFsmGuard FblFsmEventHandlerDefault( tFblFsmContextPtr const pFsmContext, tFblFsmEvent event )
{

   (void)pFsmContext;
   (void)event;




   return kFblFsmGuard_True;
}
