@echo off
rem **********************************************************************************************************************
rem    FILE DESCRIPTION
rem  --------------------------------------------------------------------------------------------------------------------
rem    \file
rem    \brief        Hardware specific prepare updater script
rem  --------------------------------------------------------------------------------------------------------------------
rem  COPYRIGHT
rem  --------------------------------------------------------------------------------------------------------------------
rem    \par Copyright
rem    \verbatim
rem    Copyright (c) 2021 by Vector Informatik GmbH.                                                 All rights reserved.
rem
rem                This software is copyright protected and proprietary to Vector Informatik GmbH.
rem                Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
rem                All other rights remain with Vector Informatik GmbH.
rem    \endverbatim
rem
rem **********************************************************************************************************************

rem **********************************************************************************************************************
rem  REVISION HISTORY
rem  --------------------------------------------------------------------------------------------------------------------
rem  Version   Date        Author  Change Id          Description
rem  --------------------------------------------------------------------------------------------------------------------
rem  01.00.00  2016-08-18  visrie  -                  First implementation
rem  01.01.00  2021-10-08  visrie  -                  No changes
rem **********************************************************************************************************************
if "%1" == "" goto end

rem Note: %local_dir% is set by calling instance
rem Note: %NEW_FBL_DIR% is set by calling instance
rem Note: %root_dir% is set by calling instance
rem Note: %hexview_exe% is set by calling instance

echo Remap 0x80000000...0x80FFFFFF to 0xA0000000...0xA0FFFFFF
%hexview_exe% %NEW_FBL_DIR%\%~n1%~x1 /AR:0x80000000-0x80FFFFFF /XI /s -o %NEW_FBL_DIR%\%~n1_0x8%~x1
%hexview_exe% %NEW_FBL_DIR%\%~n1%~x1 /AR:0xA0000000-0xA0FFFFFF /XI /s -o %NEW_FBL_DIR%\%~n1_0xA%~x1
%hexview_exe% %NEW_FBL_DIR%\%~n1_0xA%~x1 /MO:%NEW_FBL_DIR%\%~n1_0x8%~x1;0x20000000 /AD:0x20 /AL:0x20 /XI /s -o %NEW_FBL_DIR%\%~n1%~x1
if exist %NEW_FBL_DIR%\%~n1_0x8%~x1 del %NEW_FBL_DIR%\%~n1_0x8%~x1
if exist %NEW_FBL_DIR%\%~n1_0xA%~x1 del %NEW_FBL_DIR%\%~n1_0xA%~x1

echo Cut everything above FBL region
rem %hexview_exe% %NEW_FBL_DIR%\%~n1%~x1 /S /CR:0xA0080000-0xA0FFFFFF /XI -o %NEW_FBL_DIR%\%~n1%~x1
%hexview_exe% %NEW_FBL_DIR%\%~n1%~x1 /S /CR:0x805A0000-0x805EFF8F /XI -o %NEW_FBL_DIR%\%~n1%~x1

rem echo Fill Bootloader region if necessary
rem %hexview_exe% %1 /S /FA /XI -o %NEW_FBL_DIR%\%~n1%~x1

:end
echo.
exit /b