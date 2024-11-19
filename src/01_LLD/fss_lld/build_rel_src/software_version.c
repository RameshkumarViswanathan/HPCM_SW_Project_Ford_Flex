/**********************************************************************
*
*	C %name:		software_version.c %
*	Instance:		cm39bo_2
*	Description:	
*	%created_by:	F06773B %
*	%date_created:	Mon Mar 21 12:20:33 2022 %
*
**********************************************************************/

#pragma section ".bm_sw_version_area"
#ifdef NDEBUG
const char bm_delivery_version[] = SOFTWARE_VERSION;
#else                              /* 1234567890123456 */
const char bm_delivery_version[] = "DEVELOP";
#endif
#pragma section
