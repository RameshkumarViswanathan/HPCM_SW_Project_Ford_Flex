/*====================================================================================================================*/


/*====================================================================================================================*/

/*====================================================================================================================*/
/*                                                     Includes                                                       */
/*====================================================================================================================*/
//#include "TLF35585_Cfg.h"
#include "TLF35585.h"
/*====================================================================================================================*/
/*                                                 Macro Definitions                                                  */
/*====================================================================================================================*/

/*====================================================================================================================*/
/*                                                Typedef Definitions                                                 */
/*====================================================================================================================*/

/*====================================================================================================================*/
/*                                              Imported declarations                                                 */
/*====================================================================================================================*/

/*====================================================================================================================*/
/*                                            Private Variable Definitions                                            */
/*====================================================================================================================*/

/*====================================================================================================================*/
/*                                            Global Variable Definitions                                             */
/*====================================================================================================================*/
/* TLF35585 interrupt flag. Used to check INT interrupt trigger */
volatile uint8 TLF35585_Interrupt;

uint16 TLF35585_SelfTestError;
uint8 TLF35585_Reg[TLF35585_MAX_ADDRESS];
uint8 TLF35585_ResetStatus[12U];
boolean TLF35585_SysFailDoubleBitErr;

const TLF35585_ConfigType TLF35585_Config = 
{
	/* DEVCFG0 Reg Value */
	(uint8)(
			/*WKTIMEN  Wake timer enable*/
			/*0D , Wake timer disabled*/
			/*1D , Wake timer enabled in SLEEP or STANDBY state*/
			((uint16)((uint16)0U << 7U)) |      
			/*WKTIMCYC Wake timer cycle period*/
			/*0D , 10 us*/
			/*1D , 10 ms*/
			((uint16)((uint16)0U << 6U)) |
			/*TRDEL    Transition delay into low power states*/
			/*0D , 100 us*/
            /*1D , 200 us*/
            /*2D , 300 us*/
            /*15D , 1600 us*/
			((uint16)0U)),
			
	/* DEVCFG1 Reg Value */
	(uint8)(
			/*RESDEL   Reset release delay time*/
			/*0D , 200 us*/
			/*1D , 400 us*/
			/*2D , 800 us*/
			/*3D , 1ms*/
			/*4D , 2 ms*/
			/*5D , 4 ms*/
			/*6D , 10 ms*/
			/*7D , 20 ms*/
			((uint16)3U)),

	/* DEVCFG2 Reg Value */
	(uint8)(
	
			/*EVCEN    Enable of external core supply voltage*/
			/*0D , External core supply disabled*/
			/*1D , External core supply enabled*/
			((uint16)((uint16)0U << 7U)) |     
			/*STU      Step-up converter enable*/
			/*0D , Disabled*/
			/*1D , Enabled*/
			((uint16)((uint16)0U << 6U)) |
			/*FRE      Step-down converter high frequency selection*/
			/*0D , Step-down converter runs on low frequency range*/
			/*1D , Step-down converter runs on high frequency range*/
			((uint16)((uint16)0U << 5U)) |
			/*CMONEN   Current monitor enabled when transition to a low power state*/
			/*0D , Disabled*/
			/*1D , Enabled*/
			((uint16)((uint16)0U << 4U)) |
			/*CTHR     Current monitoring threshold value*/
			/*0D , 10 mA*/
			/*1D , 20 mA*/
			/*2D , 60 mA*/
			/*3D , 100 mA*/
			((uint16)((uint16)3U << 2U)) |
			/*ESYNPHA  External synchronization output phase*/
			/*0D , No phase shift*/
			/*1D , 180 phase shift*/
			((uint16)((uint16)0U << 1U)) |
			/*ESYNEN   Enable synchronization output for external switchmode regulator*/
			/*0D , Disable*/
			/*1D , Enable*/
			((uint16)0U)),
		

	/* SYSPCFG0 Reg Value */
	(uint8)(
            /*NU*/
            ((uint16)((uint16)0U << 1U)) |
            /*STBYEN   Request standby regulator QST enable*/
            /*0D , Disable*/
            /*1D , Enable*/
            ((uint16)1U)),

	/* SYSPCFG1 Reg Value */
    (uint8)(
	
				/*SS2DEL      Safe state 2 delay*/
			    /*0D , no delay*/
				/*1D , 10 ms*/
				/*2D , 50 ms*/
				/*3D , 100 ms*/
				/*4D , 250 ms*/
				((uint16)((uint16)0U << 5U)) |      
				/*ERRSLPEN   Enabling of ERR pin monitor functionality while the system is in SLEEP*/
				/*0D , ERR pin monitor is disabled in SLEEP*/
				/*1D , ERR pin monitor can be active in SLEEP depending on ERREN bit value*/
				((uint16)((uint16)1U << 4U)) |
				/*ERREN    Enable ERR pin monitor*/
				/*0D , Disabled*/
				/*1D , Enabled*/
				((uint16)((uint16)1U << 3U)) |
				/*ERRRECEN     ERR pin monitor recovery enable*/
				/*0D , Disabled*/
				/*1D , Enabled*/
				((uint16)((uint16)0U << 2U)) |
				/*ERRREC   ERR pin monitor recovery time*/
				/*0D , 1 ms*/
				/*1D , 2.5 ms*/
				/*2D , 5 ms*/
				/*3D , 10 ms*/
				((uint16)0U)),

	/* WDCFG0 Reg Value */
	(uint8)(
	
				/*WWDETHR   Window watchdog error threshold. Number of WWD errors to generate CPU reset and enter into INIT state*/
				((uint16)((uint16)9U << 4U)) |      
				/*WWDEN    Window watchdog enable*/
				/*0D , Disabled*/
				/*1D , Enabled*/
				((uint16)((uint16)1U << 3U)) |     
				/*FWDEN     Functional watchdog enable*/
				/*0D , Disabled*/
				/*1D , Enabled*/
				((uint16)((uint16)1U << 2U)) |          
				/*WWDTSEL  Window watchdog trigger selection. This is ignored when window watchdog is disabled.*/
				/*0D , External WDI input used as a WWD trigger*/
				/*1D , WWD is triggered by SPI write to WWDSCMD register*/
				((uint16)((uint16)1U << 1U)) |      
				/*WDCYC   Watchdog cycle time*/
				/*0D , 0.1 ms tick period*/
				/*1D , 1 ms tick period*/
				((uint16)1U)),
	
	/* WDCFG1 Reg Value */
	(uint8)(
	
				/*WDSLPEN   Enabling of watchdog functionality while the system is in SLEEP*/
				/*0D , Disabled*/
				/*1D , Enabled, the WD will work based on individual configuration
                       settings while the system is in SLEEP mode, read only bits shall be
                       written as 0 and will return 1 upon read*/
				((uint16)((uint16)0U << 4U)) |
				/*FWDETHR   Functional watchdog error threshold. Number of FWD errors to
                            generate CPU reset and enter into INIT state*/
				((uint16)5U)),
				
	/* FWDCFG Reg Value */
	(uint8)(
	
				/*WDHBTP   Watchdog heartbeat timer period defined as a multiple of 50
                           watchdog cycles, read only bits shall be written as 0 and will always
                           return 1 upon read*/
				/*0D , 50 wd cycles*/
				/*1D , 100 wd cycles*/
				/*2D , 150 wd cycles*/
				/*31D , 1600 wd cycles*/
				((uint16)19U)),
				
	/* WWDCFG0 Reg Value */
	(uint8)(
	
				/*CW   WWD close window defined as a multiple of 50 watchdog cycles,
                       read only bits shall be written as 0 and will always return 1 upon read*/
			    /*0D , 50 wd cycles*/
			    /*1D , 100 wd cycles*/
			    /*2D , 150 wd cycles*/
			    /*31D , 1600 wd cycles*/
				((uint16)7U)),

	/* WWDCFG1 Reg Value */
	(uint8)(
	
				/*OW   WWD open window time defined as a multiple 50 wd cycles*/
				/*0D , 50 wd cycles*/
				/*1D , 100 wd cycles*/
				/*2D , 150 wd cycles*/
				/*31D , 1600 wd cycles*/
	            ((uint16)19U))
	
};


void TLF35585_ConfigInit(const TLF35585_ConfigType* ConfigPtr)
{
	TLF35585_Reg[TLF35585_REG_DEVCFG0] = ConfigPtr->DEVCFG0Value;

	TLF35585_Reg[TLF35585_REG_DEVCFG1] = ConfigPtr->DEVCFG1Value;

	TLF35585_Reg[TLF35585_REG_DEVCFG2] = ConfigPtr->DEVCFG2Value;

    TLF35585_Reg[TLF35585_REG_SYSPCFG0] = ConfigPtr->SYSPCFG0Value;

	TLF35585_Reg[TLF35585_REG_SYSPCFG1] = ConfigPtr->SYSPCFG1Value;

	TLF35585_Reg[TLF35585_REG_WDCFG0] = ConfigPtr->WDCFG0Value;

	TLF35585_Reg[TLF35585_REG_WDCFG1] = ConfigPtr->WDCFG1Value;

	TLF35585_Reg[TLF35585_REG_FWDCFG] = ConfigPtr->FWDCFGValue;

	TLF35585_Reg[TLF35585_REG_WWDCFG0] = ConfigPtr->WWDCFG0Value;

	TLF35585_Reg[TLF35585_REG_WWDCFG1] = ConfigPtr->WWDCFG1Value;
}

/*====================================================================================================================*/
/*                                            Private Function Declarations                                           */
/*====================================================================================================================*/

/*====================================================================================================================*/
/*                                            Private Function Implementation                                         */
/*====================================================================================================================*/

/*====================================================================================================================*/
/*                                            Global Function Implementation                                          */
/*====================================================================================================================*/



