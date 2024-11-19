/**********************************************************************
*
*	C %name:		software_version.c %
*	Instance:		git
*	Description:	
*	%created_by:	TechM %
*	%date_created:	Mon Mar 21 12:20:33 2023 %
*
**********************************************************************/

#pragma section ".bm_sw_version_area"
#ifdef NDEBUG
const char bm_delivery_version[] = SOFTWARE_VERSION;
#else                              /* 1234567890123456 */
const char bm_delivery_version[] = "DEVELOP";
#endif
#pragma section

#pragma section ".bm_compilation_data"
const char bm_compilation_data[] = __TIMESTAMP__;
#pragma section

