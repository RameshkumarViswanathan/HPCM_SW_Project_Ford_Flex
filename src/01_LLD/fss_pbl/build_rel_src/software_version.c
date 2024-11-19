/**********************************************************************
*
*	C %name:		software_version.c %
*	Instance:		git
*	Description:	
*	%created_by:	TechM %
*	%date_created:	Fri Mar 18 10:13:11 2022 %
*
**********************************************************************/

#pragma section ".btld_sw_version_area"
#ifdef NDEBUG
const char btld_delivery_version[] = SOFTWARE_VERSION;
#else                              /* 1234567890123456 */
const char btld_delivery_version[] = "DEVELOP";
#endif
#pragma section

#pragma section ".btld_inactive_sw_version_area"
const char btld_inactive_version[16];
#pragma section

#pragma section ".btld_compilation_data"
const char btld_compilation_data[] = __TIMESTAMP__;
#pragma section

#pragma section ".bm_compilation_data"
const char bm_compilation_data[32];
#pragma section

#pragma section ".bm_sw_version_area"
const char bm_delivery_version[16];
#pragma section

#pragma section ".asw_sw_version_area"
const char asw_delivery_version[16];
#pragma section

#pragma section ".asw_inactive_sw_version_area"
const char asw_inactive_version[16];
#pragma section

#pragma section ".cal_sw_version_area"
const char cal_delivery_version[16];
#pragma section

#pragma section ".cal_inactive_sw_version_area"
const char cal_inactive_version[16];
#pragma section

#pragma section ".cal_delib_area"
const char cal_delib[60];
#pragma section