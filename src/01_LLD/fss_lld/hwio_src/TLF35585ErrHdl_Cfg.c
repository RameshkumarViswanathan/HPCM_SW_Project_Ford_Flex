/*====================================================================================================================*/
/*                                                     Includes                                                       */
/*====================================================================================================================*/
#include "TLF35585ErrHdl_Cfg.h"

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


const TLF35585ErrHdl_ConfigType TLF35585ErrHdl_Config[] =
{
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
	{TRUE, NULL_PTR},
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_If_IntMiss =
{
	1,
	TLF35585_REG_IF,
	7,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Otfail_Com =
{
	2,
	TLF35585_REG_OTFAIL,
	4,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Otwrnsf_Com =
{
	3,
	TLF35585_REG_OTWRNSF,
	4,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf0_Comsg =
{
	4,
	TLF35585_REG_MONSF0,
	4,
	1,
	0
};
	
const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf1_Comov =
{
	5,
	TLF35585_REG_MONSF1,
	4,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf2_Comuv =
{
	6,
	TLF35585_REG_MONSF2,
	4,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Otwrnsf_Vref =
{
	7,
	TLF35585_REG_OTWRNSF,
	5,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf0_Vrefsg =
{
	8,
	TLF35585_REG_MONSF0,
	5,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf2_Vrefuv =
{
	9,
	TLF35585_REG_MONSF2,
	5,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf1_Vrefov =
{
	10,
	TLF35585_REG_MONSF1,
	5,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Otwrnsf_Stdby =
{
	11,
	TLF35585_REG_OTWRNSF,
	2,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf0_Stbysg =
{
	12,
	TLF35585_REG_MONSF0,
	2,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf2_Stbyuv =
{
	13,
	TLF35585_REG_MONSF2,
	2,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf1_Stbyov =
{
	14,
	TLF35585_REG_MONSF1,
	2,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Otwrnsf_Uc =
{
	15,
	TLF35585_REG_OTWRNSF,
	1,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Otfail_Uc =
{
	16,
	TLF35585_REG_OTFAIL,
	1,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf0_Ucsg =
{
	17,
	TLF35585_REG_MONSF0,
	1,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf1_Ucov =
{
	18,
	TLF35585_REG_MONSF1,
	1,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf2_Ucuv =
{
	19,
	TLF35585_REG_MONSF2,
	1,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Otwrnsf_Preg =
{
	20,
	TLF35585_REG_OTWRNSF,
	0,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Otfail_Preg =
{
	21,
	TLF35585_REG_OTFAIL,
	0,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf2_Preguv =
{
	22,
	TLF35585_REG_MONSF2,
	0,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf1_Pregov =
{
	23,
	TLF35585_REG_MONSF1,
	0,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf0_Pregsg =
{
	24,
	TLF35585_REG_MONSF0,
	0,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf0_Trk2sg =
{
	25,
	TLF35585_REG_MONSF0,
	7,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf1_Trk2ov =
{
	26,
	TLF35585_REG_MONSF1,
	7,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf2_Trk2uv =
{
	27,
	TLF35585_REG_MONSF2,
	7,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf0_Trk1sg =
{
	28,
	TLF35585_REG_MONSF0,
	6,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf1_Trk1ov =
{
	29,
	TLF35585_REG_MONSF1,
	6,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf2_Trk1uv =
{
	30,
	TLF35585_REG_MONSF2,
	6,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf3_Bg12ov =
{
	31,
	TLF35585_REG_MONSF3,
	5,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf3_Bg12uv =
{
	32,
	TLF35585_REG_MONSF3,
	4,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Spisf_Lock =
{
	33,
	TLF35585_REG_SPISF,
	4,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Spisf_Dure =
{
	34,
	TLF35585_REG_SPISF,
	3,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Spisf_Addre =
{
	35,
	TLF35585_REG_SPISF,
	2,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Spisf_Lene =
{
	36,
	TLF35585_REG_SPISF,
	1,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Spisf_Pare =
{
	37,
	TLF35585_REG_SPISF,
	0,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf0_Vcoresg =
{
	38,
	TLF35585_REG_MONSF0,
	3,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf1_Vcoreov =
{
	39,
	TLF35585_REG_MONSF1,
	3,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf2_Vcoreuv =
{
	40,
	TLF35585_REG_MONSF2,
	3,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf3_Biashi =
{
	41,
	TLF35585_REG_MONSF3,
	7,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf3_Bisalow =
{
	42,
	TLF35585_REG_MONSF3,
	6,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Monsf3_Vbatov =
{
	43,
	TLF35585_REG_MONSF3,
	0,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Otfail_Mon =
{
	44,
	TLF35585_REG_OTFAIL,
	7,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Sysfail_Voltselrr =
{
	45,
	TLF35585_REG_SYSFAIL,
	0,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Syssf_Errmiss =
{
	46,
	TLF35585_REG_SYSSF,
	3,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Initerr_Errf =
{
	47,
	TLF35585_REG_INITERR,
	5,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Syssf_Fwde =
{
	48,
	TLF35585_REG_SYSSF,
	2,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Initerr_Fwdf =
{
	49,
	TLF35585_REG_INITERR,
	4,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Syssf_Wwde =
{
	50,
	TLF35585_REG_SYSSF,
	1,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Initerr_Wwdf =
{
	51,
	TLF35585_REG_INITERR,
	3,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Syssf_Noop =
{
	52,
	TLF35585_REG_SYSSF,
	5,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Syssf_Trfail =
{
	53,
	TLF35585_REG_SYSSF,
	4,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Initerr_Hardres =
{
	54,
	TLF35585_REG_INITERR,
	7,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Initerr_Softres =
{
	55,
	TLF35585_REG_INITERR,
	6,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Syssf_Cfge =
{
	56,
	TLF35585_REG_SYSSF,
	0,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Sysfail_Initf =
{
	57,
	TLF35585_REG_SYSFAIL,
	7,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_If_Abist =
{
	58,
	TLF35585_REG_IF,
	6,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Sysfail_Abisterr =
{
	59,
	TLF35585_REG_SYSFAIL,
	6,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Wksf_Wkspi =
{
	60,
	TLF35585_REG_WKSF,
	4,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Wksf_Wktim =
{
	61,
	TLF35585_REG_WKSF,
	3,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Wksf_Cmon =
{
	62,
	TLF35585_REG_WKSF,
	2,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Wksf_Ena =
{
	63,
	TLF35585_REG_WKSF,
	1,
	1,
	0
};


const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_Wksf_Wak =
{
	64,
	TLF35585_REG_WKSF,
	0,
	1,
	0
};

const TLF35585ErrHdl_FaultType TLF35585ErrHdl_Fault_If_Sys =
{
	65,
	TLF35585_REG_IF,
	0,
	1,
	0
};


const TLF35585ErrHdl_FaultType* TLF35585ErrHdl_FaultList[] =
{
	&TLF35585ErrHdl_Fault_If_IntMiss,
	&TLF35585ErrHdl_Fault_Otfail_Com,
	&TLF35585ErrHdl_Fault_Otwrnsf_Com,
	&TLF35585ErrHdl_Fault_Monsf0_Comsg,
	&TLF35585ErrHdl_Fault_Monsf1_Comov,
	&TLF35585ErrHdl_Fault_Monsf2_Comuv,
	&TLF35585ErrHdl_Fault_Otwrnsf_Vref,
	&TLF35585ErrHdl_Fault_Monsf0_Vrefsg,
	&TLF35585ErrHdl_Fault_Monsf2_Vrefuv,
	&TLF35585ErrHdl_Fault_Monsf1_Vrefov,
	&TLF35585ErrHdl_Fault_Otwrnsf_Stdby,
	&TLF35585ErrHdl_Fault_Monsf0_Stbysg,
	&TLF35585ErrHdl_Fault_Monsf2_Stbyuv,
	&TLF35585ErrHdl_Fault_Monsf1_Stbyov,
	&TLF35585ErrHdl_Fault_Otwrnsf_Uc,
	&TLF35585ErrHdl_Fault_Otfail_Uc,
	&TLF35585ErrHdl_Fault_Monsf0_Ucsg,
	&TLF35585ErrHdl_Fault_Monsf1_Ucov,
	&TLF35585ErrHdl_Fault_Monsf2_Ucuv,
	&TLF35585ErrHdl_Fault_Otwrnsf_Preg,
	&TLF35585ErrHdl_Fault_Otfail_Preg,
	&TLF35585ErrHdl_Fault_Monsf2_Preguv,
	&TLF35585ErrHdl_Fault_Monsf1_Pregov,
	&TLF35585ErrHdl_Fault_Monsf0_Pregsg,
	&TLF35585ErrHdl_Fault_Monsf0_Trk2sg,
	&TLF35585ErrHdl_Fault_Monsf1_Trk2ov,
	&TLF35585ErrHdl_Fault_Monsf2_Trk2uv,
	&TLF35585ErrHdl_Fault_Monsf0_Trk1sg,
	&TLF35585ErrHdl_Fault_Monsf1_Trk1ov,
	&TLF35585ErrHdl_Fault_Monsf2_Trk1uv,
	&TLF35585ErrHdl_Fault_Monsf3_Bg12ov,
	&TLF35585ErrHdl_Fault_Monsf3_Bg12uv,
	&TLF35585ErrHdl_Fault_Spisf_Lock,
	&TLF35585ErrHdl_Fault_Spisf_Dure,
	&TLF35585ErrHdl_Fault_Spisf_Addre,
	&TLF35585ErrHdl_Fault_Spisf_Lene,
	&TLF35585ErrHdl_Fault_Spisf_Pare,
	&TLF35585ErrHdl_Fault_Monsf0_Vcoresg,
	&TLF35585ErrHdl_Fault_Monsf1_Vcoreov,
	&TLF35585ErrHdl_Fault_Monsf2_Vcoreuv,
	&TLF35585ErrHdl_Fault_Monsf3_Biashi,
	&TLF35585ErrHdl_Fault_Monsf3_Bisalow,
	&TLF35585ErrHdl_Fault_Monsf3_Vbatov,
	&TLF35585ErrHdl_Fault_Otfail_Mon,
	&TLF35585ErrHdl_Fault_Sysfail_Voltselrr,
	&TLF35585ErrHdl_Fault_Syssf_Errmiss,
	&TLF35585ErrHdl_Fault_Initerr_Errf,
	&TLF35585ErrHdl_Fault_Syssf_Fwde,
	&TLF35585ErrHdl_Fault_Initerr_Fwdf,
	&TLF35585ErrHdl_Fault_Syssf_Wwde,
	&TLF35585ErrHdl_Fault_Initerr_Wwdf,
	&TLF35585ErrHdl_Fault_Syssf_Noop,
	&TLF35585ErrHdl_Fault_Syssf_Trfail,
	&TLF35585ErrHdl_Fault_Initerr_Hardres,
	&TLF35585ErrHdl_Fault_Initerr_Softres,
	&TLF35585ErrHdl_Fault_Syssf_Cfge,
	&TLF35585ErrHdl_Fault_Sysfail_Initf,
	&TLF35585ErrHdl_Fault_If_Abist,
	&TLF35585ErrHdl_Fault_Sysfail_Abisterr,
	&TLF35585ErrHdl_Fault_Wksf_Wkspi,
	&TLF35585ErrHdl_Fault_Wksf_Wktim,
	&TLF35585ErrHdl_Fault_Wksf_Cmon,
	&TLF35585ErrHdl_Fault_Wksf_Ena,
	&TLF35585ErrHdl_Fault_Wksf_Wak,
	&TLF35585ErrHdl_Fault_If_Sys,
};

/*====================================================================================================================*/
/*                                            Private Function Declarations                                           */
/*====================================================================================================================*/



/*====================================================================================================================*/
/*                                            Private Function Implementation                                         */
/*====================================================================================================================*/



/*====================================================================================================================*/
/*                                            Global Function Implementation                                          */
/*====================================================================================================================*/



