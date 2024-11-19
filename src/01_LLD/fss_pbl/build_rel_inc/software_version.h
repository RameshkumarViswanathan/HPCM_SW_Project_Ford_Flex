/**********************************************************************
*
*	Header %name:	software_version.h %
*	Instance:		cm39bo_3
*	Description:	
*	%created_by:	F06773B %
*	%date_created:	Thu Mar 24 15:58:30 2022 %
*
**********************************************************************/
#ifndef SOFTWARE_VERSION_H
#define SOFTWARE_VERSION_H

/* Everything else goes here */
#pragma section ".bm_compilation_data"
extern const char bm_compilation_data[];
#pragma section

#pragma section ".btld_compilation_data"
extern const char btld_compilation_data[];
#pragma section

#pragma section ".btld_sw_version_area"
extern const char btld_delivery_version[];
#pragma section

#pragma section ".btld_inactive_sw_version_area"
extern const char btld_inactive_version[];
#pragma section

#pragma section ".bm_sw_version_area"
extern const char bm_delivery_version[];
#pragma section

#pragma section ".asw_sw_version_area"
extern const char asw_delivery_version[];
#pragma section

#pragma section ".asw_inactive_sw_version_area"
extern const char asw_inactive_version[];
#pragma section

#pragma section ".cal_sw_version_area"
extern const char cal_delivery_version[];
#pragma section

#pragma section ".cal_inactive_sw_version_area"
extern const char cal_inactive_version[];
#pragma section

#pragma section ".cal_delib_area"
const char cal_delib[60];
#pragma section

#endif
