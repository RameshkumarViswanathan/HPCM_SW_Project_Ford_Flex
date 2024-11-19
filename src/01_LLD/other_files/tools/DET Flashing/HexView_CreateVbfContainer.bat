@echo off
setlocal EnableDelayedExpansion

:: Configuration section :::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Path to HexView binary
set HEXVIEW=..\..\..\Misc\Hexview\hexview.exe

:: Output path
set OUTPUT=.

:: CAN Rx ID of ECU (0x7??)
set ECU_ADDRESS=0x721

:: Enable creation of compressed VBFs (ON, OFF)
set CMPR_ENABLE=OFF

:: Enable creation of signed VBFs (ON, OFF)
set SIG_ENABLE=ON

:: Path to key file for signature calculation
set SIG_PARAM=..\..\..\DemoKeys\key.txt

:: Logical block parameters
:: Start address and length of logical block, address of verification structure
:: Note: The parameters are chosen based on the file name which is checked
::       for occurrence of "B1", "B2", "B3" or "B4".

:: Parameters of 1st logical block
set B1_ADDRESS=0x80080000
set B1_LENGTH=0x100000
set B1_SIG_ADDR=0x80170000
set B1_VS_ADDR=0x80170100
set B1_SEG_SIZE=0x100

:: Parameters of 2nd logical block
REM set B2_ADDRESS=0x20000
REM set B2_LENGTH=0x10000
REM set B2_SIG_ADDR=0x2ef00
REM set B2_VS_ADDR=0x2f000
REM set B2_SEG_SIZE=0x100

REM :: Parameters of 3rd logical block
REM set B3_ADDRESS=0x30000
REM set B3_LENGTH=0x10000
REM set B3_SIG_ADDR=0x3ef00
REM set B3_VS_ADDR=0x3f000
REM set B3_SEG_SIZE=0x100

REM :: Parameters of FlashDrv
REM set B4_ADDRESS=0x70100000
REM set B4_SIG_ADDR=0x70100670
REM set B4_VS_ADDR=0x70100770
REM set B4_SEG_SIZE=0x20

:: End of configuration section ::::::::::::::::::::::::::::::::::::::::::::::::

:: Configuration check
if not defined B1_ADDRESS goto :ParamError 
if not defined B1_LENGTH goto :ParamError
if not defined B1_SIG_ADDR goto :ParamError
if not defined B1_VS_ADDR goto :ParamError
if not defined B1_SEG_SIZE goto :ParamError
REM if not defined B2_ADDRESS goto :ParamError
REM if not defined B2_LENGTH goto :ParamError
REM if not defined B2_SIG_ADDR goto :ParamError
REM if not defined B2_VS_ADDR goto :ParamError
REM if not defined B2_SEG_SIZE goto :ParamError
REM if not defined B3_ADDRESS goto :ParamError
REM if not defined B3_LENGTH goto :ParamError
REM if not defined B3_SIG_ADDR goto :ParamError
REM if not defined B3_VS_ADDR goto :ParamError
REM if not defined B3_SEG_SIZE goto :ParamError
REM if not defined B4_ADDRESS goto :ParamError
REM if not defined B4_SIG_ADDR goto :ParamError
REM if not defined B4_VS_ADDR goto :ParamError
REM if not defined B4_SEG_SIZE goto :ParamError

:: Determine corresponding logical block
echo %~n1 | findstr "ML34-14C542-EVAL" > nul && set BLOCK=B1
REM echo %~n1 | findstr "Cal1" > nul && set BLOCK=B2
REM echo %~n1 | findstr "Cal2" > nul && set BLOCK=B3
REM echo %~n1 | findstr "FlashDrv" > nul && set BLOCK=B4
set SW_PART_NUMBER=%~n1

:: Change to current working path (drag & drop)
cd /d %~d0%~p0

:: Create Hexview .ini files
call :WriteVbf31 > %~n1.ini
if "%CMPR_ENABLE%"=="ON" (
   call :WriteVbf31 Cmpr > %~n1_cmpr.ini
)

:: Fill all gaps in case of FlashDrv (reduce amount of download segments)
if "%BLOCK%" =="B4" (
   %HEXVIEW% %1 /S /AD:!%BLOCK%_SEG_SIZE! /FA /XS /E:hexview.log -o %1
)

:: Create unprocessed VBF 3.1 container from input hex file
%HEXVIEW% %1 /S /AD:!%BLOCK%_SEG_SIZE! /XVBF /P:%~n1.ini /E:hexview.log -o %OUTPUT%\%~n1.vbf

if "%CMPR_ENABLE%"=="ON" (
   :: Create compressed VBF 2.4 container from input hex file
   %HEXVIEW% %1 /S /AD:!%BLOCK%_SEG_SIZE! /XVBF /P:%~n1_cmpr.ini /E:hexview.log -o %OUTPUT%\%~n1_cmpr.vbf
)

:: Remove intermediate files
del %~n1.ini
if "%CMPR_ENABLE%"=="ON" (
   del %~n1_cmpr.ini
)

exit /b

:: *** Sub routines to create Hexview .ini files ******************************

:WriteVbf31
echo [VBFHEADER]
echo VBF_VERSION=3.1
if "%BLOCK%" =="B4" (
   echo DESCRIPTION=FlashDrv
   echo SW_PART_NUMBER=FlashDrv
   echo SW_PART_TYPE=SBL
   echo SW_CALL_ADDRESS=%B4_ADDRESS%
) else (
   echo DESCRIPTION=Demo Application
   echo SW_PART_NUMBER=%SW_PART_NUMBER%
   echo SW_VERSION=
   echo SW_PART_TYPE=EXE
)
if "%1"=="" (
   echo DATA_FORMAT_ID=0x00
   echo DATPROC_METHOD=0
   echo DATPROC_PARAM=
)
if "%1"=="Cmpr" (
   echo DATPROC_METHOD=26
   echo DATPROC_PARAM=
   echo DATA_FORMAT_ID=0x10
)
echo NETWORK=CAN_HS
echo ECU_ADDRESS=%ECU_ADDRESS%
echo FRAME_FORMAT=CAN_STANDARD
if "%BLOCK%" =="B4" (
   echo ERASE_LIST_GEN_MODE=0
) else (
   echo ERASE_LIST_GEN_MODE=2
   echo ERASE_ADDRESS=!%BLOCK%_ADDRESS!
   echo ERASE_LENGTH=!%BLOCK%_LENGTH!
)
echo VS_ADDRESS=!%BLOCK%_VS_ADDR!
echo CHECKSUM_METHOD=19
if "%SIG_ENABLE%"=="ON" (
   echo SIGNATURE_METHOD=39
   echo SIGNATURE_PARAM=%SIG_PARAM%
)
echo.
echo ; Validation Structure Attributes
echo Force32BitFormat=1
if "%SIG_ENABLE%"=="ON" (
   echo IdTagBeginLength=2
   echo IdTagBegin=0000
   echo IdTagEndLength=0
   echo BlockChecksumType=20
) else (
   echo IdTagBeginLength=4
   echo IdTagBegin=74ebe612
   echo IdTagEndLength=4
   echo IdTagEnd=f12a1e2d
   echo BlockChecksumType=14
   echo ValidateChecksum=1
)
exit /b

:ParamError
echo.
echo ERROR: Parameter configuration incomplete!
echo.
pause
exit /b