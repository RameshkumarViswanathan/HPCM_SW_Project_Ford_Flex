/**********************************************************************
*
*	Header %name:	software_version.h %
*	Instance:		git
*	Description:	
*	%created_by:	TechM %
*	%date_created:	Mon Mar 21 12:20:20 2023 %
*
**********************************************************************/
#ifndef SOFTWARE_VERSION_H
#define SOFTWARE_VERSION_H

/* Everything else goes here */
#pragma section ".bm_sw_version_area"
extern const char bm_delivery_version[];
#pragma section

#pragma section ".bm_compilation_data"
extern const char bm_compilation_data[];
#pragma section

#endif

