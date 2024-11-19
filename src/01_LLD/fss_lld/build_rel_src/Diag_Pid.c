/*****************************************************************************/
/* Copyrights (C) 20xx - 20xx FORD Motors                                    */
/* All right reserved                                                        */
/*****************************************************************************/
/* MODULE  Diag_Pid.c                                                        */
/*****************************************************************************/
/* BASE MODULE                                                               */
/*****************************************************************************/
/* VERSION         PROJECT (FORD)                                            */
/*****************************************************************************/
/* PURPOSE                                                                   */
/*   Target specific initialization code                                     */
/*****************************************************************************/
/* FUNCTIONS FORD function prototypes                                        */
/*****************************************************************************/
/* REMARKS                                                                   */
/*                                                                           */
/*****************************************************************************/
/* CHANGES                                                                   */
/* ID          dd.mm.yyyy    Name             Description                    */
/* ---         -----------   -----------      ---------------------          */
/* [1]         02.01.2023    Bhavya MR         Created                       */
/*****************************************************************************/

/*****************************************************************************/
/*                           Include Section                                 */
/*****************************************************************************/
#include "Diag_Pid.h"


/******************************************************************************/
/*                               DEFINITIONS                                  */
/******************************************************************************/

/******************************************************************************/
/*                               Typedef                                      */
/******************************************************************************/

/*****************************************************************************/
/*                      Private Object Like Macro Definitions                */
/*****************************************************************************/

/*****************************************************************************/
/*                      global variable declaration                          */
/*****************************************************************************/
extern U32 _SID_Block_START[];
/*****************************************************************************/
/*                      Private Function Declarations                        */
/*****************************************************************************/

/*****************************************************************************/
/*                      Global Function Definitions                          */
/*****************************************************************************/

/*****************************************************************************/
/*                      Private Function Definitions                         */
/*****************************************************************************/
   
   /* mapping ld file symbol */
   U32 FBL_COMMON_DATA_ADDRESS = (U32)_SID_Block_START;
   
   /* Test vars to hold part numbers */
   U8  ECU_Core_Assembly_Number[24];
   U8  ECU_Delivery_Assembly_Number[24];
   U8  ECU_Serial_Number[16];
   U8  HPCM_Boot_Software_ID[24];

   /* Test pointers to hold part numbers starting address */
   /* Defined as Globals for debugging */
   const volatile U32 *address_ECU_Core_Assembly_Number;
   const volatile U32 *address_ECU_Delivery_Assembly_Number;
   const volatile U32 *address_ECU_Serial_Number;
   const volatile U32 *address_HPCM_Boot_Software_ID;



//Call this function in EcM_init to not to optimize 
void Part_Numbering_init(void)
{
   
   /* Get starting address of each part number */
   address_ECU_Core_Assembly_Number=(const volatile U32)get_hwio_core_assy_num();
   address_ECU_Delivery_Assembly_Number=(const volatile U32)get_hwio_delivery_assy_num();
   address_ECU_Serial_Number=(const volatile U32)get_hwio_serial_num();
   address_HPCM_Boot_Software_ID=(const volatile U32)get_hwio_boot_software_id();

   /* Store Address Value for testing */
   ECU_Core_Assembly_Number[0] = *address_ECU_Core_Assembly_Number;
   ECU_Delivery_Assembly_Number[0] = *address_ECU_Delivery_Assembly_Number;
   ECU_Serial_Number[0] = *address_ECU_Serial_Number;
   HPCM_Boot_Software_ID[0] = *address_HPCM_Boot_Software_ID;

   /*Read 24 bytes of char data in one go*/
   //uncomment for testing
   //memcpy(ECU_Core_Assembly_Number,address_ECU_Core_Assembly_Number,sizeof(uint8)*24);   

}

/*****************************************************************************/
/* Function Name: U32 get_hwio_core_assy_num( void )                        */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out)                                                          */
/*                                                                           */
/* Return Value   : U32                                                       */
/* Requirement ID : HPCM_ISC_CAL_0010_00                                     */
/*****************************************************************************/
U32 get_hwio_core_assy_num( void )
{    
   U32 ECU_Core_Assembly_Num_Ptr;
   ECU_Core_Assembly_Num_Ptr = (U32)FBL_COMMON_DATA_ADDRESS; 
      
   return(ECU_Core_Assembly_Num_Ptr);
}

/*****************************************************************************/
/* Function Name: U32 get_hwio_delivery_assy_num( void );                   */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out)                                                          */
/*                                                                           */
/* Return Value   : U32                                                       */
/* Requirement ID : HPCM_ISC_CAL_0010_00                                     */
/*****************************************************************************/
U32 get_hwio_delivery_assy_num( void )
{   
   U32 ECU_Delivery_Assembly_Num_Ptr;
   ECU_Delivery_Assembly_Num_Ptr = (U32)(FBL_COMMON_DATA_ADDRESS + DID_F113_ECU_DELIVERY_ASSEMBLY_NUMBER_OFFSET);

   return (ECU_Delivery_Assembly_Num_Ptr);  
}

/*****************************************************************************/
/* Function Name: U32 get_hwio_serial_num( void);                           */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out)                                                          */
/*                                                                           */
/* Return Value   : U32                                                       */
/* Requirement ID : HPCM_ISC_CAL_0010_00                                     */
/*****************************************************************************/
U32 get_hwio_serial_num( void)
{   
   U32 ECU_Serial_Number_Num_Ptr;
   ECU_Serial_Number_Num_Ptr = (U32)(FBL_COMMON_DATA_ADDRESS + DID_F18C_ECU_SERIAL_NUMBER_OFFSET);
   return (ECU_Serial_Number_Num_Ptr);  
}

/*****************************************************************************/
/* Function Name: U32 get_hwio_boot_software_id( void);                     */
/* Descriptions:                                                             */
/*                                                                           */
/* Called by:                                                                */
/* Parameters (in) : void                                                    */
/*                                                                           */
/* Parameters (out)                                                          */
/*                                                                           */
/* Return Value   : U32                                                       */
/* Requirement ID : HPCM_ISC_CAL_0010_00                                     */
/*****************************************************************************/
U32 get_hwio_boot_software_id( void )
{    
   U32 HPCM_Boot_Software_ID_Ptr;
   HPCM_Boot_Software_ID_Ptr = (U32)(FBL_COMMON_DATA_ADDRESS + BOOT_SOFTWARE_IDENTIFICATION_OFFSET);

   return (HPCM_Boot_Software_ID_Ptr); 
}

/*EOF*/