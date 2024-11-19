@echo off

@echo off
if "%1" == "" goto end
rem %1
set local_dir=%~d0%~p0
:: Please configure the following variables
:: Root directory
set root_dir=%local_dir%..\..\

setlocal EnableDelayedExpansion

:: Configuration section :::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Path to HexView binary
rem set HEXVIEW=%HexViewExecutable%
set HEXVIEW=%root_dir%\HexView\hexview.exe
:: Output path
set OUTPUT=.

:: CAN Rx ID of ECU (0x7??)
set ECU_ADDRESS=0x727

:: Enable creation of compressed VBFs (ON, OFF)
set CMPR_ENABLE=ON

:: Enable creation of compressed VBFs (ON, OFF)
set DEC_ENABLE=OFF

:: Enable creation of signed VBFs (ON, OFF)
set SIG_ENABLE=ON

:: Path to key file for signature calculation
set SIG_PARAM=%root_dir%\DemoKeys\key.txt

:: Logical block parameters
:: Start address and length of logical block, address of verification structure
:: Note: The parameters are chosen based on the file name which is checked
::       for occurrence of "B1", "B2", "B3" or "B4".

:: Parameters of logical blocks
set PUBLICKEYHASH=0x0

:: Parameters of 1st logical block :: Upd

REM set B1_ADDRESS=0xA0080000
REM set B1_LENGTH=0x80000
REM set B1_SIG_ADDR=0xA00FFC00
REM set B1_VS_ADDR=0xA00FFD00
REM set B1_SEG_SIZE=0x20
REM set B1_IV=0x00

set B1_ADDRESS=0x802A4000
set B1_LENGTH=0x5BFFF
set B1_SIG_ADDR=0x802F88B0
set B1_VS_ADDR=0x802F8AB0
set B1_SEG_SIZE=0x20
set B1_IV=0x00


:: Parameters of FlashDrv :: SBL
REM set B4_ADDRESS=0x70000000
REM set B4_SIG_ADDR=0x70000900
REM set B4_VS_ADDR=0x70000A00
REM set B4_SEG_SIZE=0x01
REM set B4_IV=0x00

set B4_ADDRESS=0x7003A800
set B4_SIG_ADDR=0x7003B100
set B4_VS_ADDR=0x7003B200
set B4_SEG_SIZE=0x01
set B4_IV=0x00

:: End of configuration section ::::::::::::::::::::::::::::::::::::::::::::::::

:: Configuration check
if not defined B1_ADDRESS goto :ParamError
if not defined B1_LENGTH goto :ParamError
if not defined B1_SIG_ADDR goto :ParamError
if not defined B1_VS_ADDR goto :ParamError
if not defined B1_SEG_SIZE goto :ParamError
if not defined B4_ADDRESS goto :ParamError
if not defined B4_SIG_ADDR goto :ParamError
if not defined B4_VS_ADDR goto :ParamError
if not defined B4_SEG_SIZE goto :ParamError

:: Determine corresponding logical block
rem echo %~n1 | findstr "DemoUpd" > nul && set BLOCK=B1
echo %~n1 | findstr "fss_sbl" > nul && set BLOCK=B1
echo %~n1 | findstr "FlashDrv" > nul && set BLOCK=B4
set SW_PART_NUMBER=%~n1

:: Change to current working path (drag & drop)
cd /d %~d0%~p0

:: Create Hexview .ini files
call :WriteVbf31 > %~n1.ini
if "%CMPR_ENABLE%"=="ON" (
   call :WriteVbf31 Cmpr > %~n1_cmpr.ini
)

if "%DEC_ENABLE%"=="ON" (
   call :WriteVbf31 Dec > %~n1_dec.ini
   if "%CMPR_ENABLE%"=="ON" (
      call :WriteVbf31 CmprDec > %~n1_cmprdec.ini
   )
)
:: Fill all gaps in case of FlashDrv (reduce amount of download segments)
if "%BLOCK%" =="B4" (
   %HEXVIEW% %1 /S /AD:!%BLOCK%_SEG_SIZE! /FA /XS /E:hexview.log -o %1
)

:: Create unprocessed VBF 3.1 container from input hex file
%HEXVIEW% %1 /S /AD:!%BLOCK%_SEG_SIZE! /XVBF /VS /P:%~n1.ini /E:hexview.log -o %OUTPUT%\%~n1.vbf

if "%CMPR_ENABLE%"=="ON" (
   :: Create compressed VBF 3.1 container from input hex file
   %HEXVIEW% %1 /S /AD:!%BLOCK%_SEG_SIZE! /XVBF /VS /P:%~n1_cmpr.ini /E:hexview.log -o %OUTPUT%\%~n1_cmpr.vbf
)

if "%DEC_ENABLE%"=="ON" (
   :: Create encrypted VBF 3.1 container from input hex file
   %HEXVIEW% %1 /S /AD:!%BLOCK%_SEG_SIZE! /XVBF /VS /P:%~n1_dec.ini /E:hexview.log -o %OUTPUT%\%~n1_dec.vbf
   if "%CMPR_ENABLE%"=="ON" (
      :: Create compressed/decrypted VBF 3.1 container from compressed vbf file
      %HEXVIEW% %1 /S /AD:!%BLOCK%_SEG_SIZE! /XVBF /VS /P:%~n1_cmprdec.ini /E:hexview.log -o %OUTPUT%\%~n1_cmprdec.vbf
   )
)

:: Remove intermediate files
del %~n1.ini
if "%CMPR_ENABLE%"=="ON" (
   del %~n1_cmpr.ini
)
if "%DEC_ENABLE%"=="ON" (
   del %~n1_dec.ini
   if "%DEC_ENABLE%"=="ON" (
      del %~n1_cmprdec.ini
   )
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
if "%1"=="Dec" (
   echo DATA_FORMAT_ID=0x01
   echo DATPROC_PARAM=00112233445566778899aabbccddeeff;PKCS7#IV=!%BLOCK%_IV!
   echo DATPROC_METHOD=11
)
if "%1"=="CmprDec" (
   echo DATA_FORMAT_ID=0x11
   echo DATPROC_METHOD=26
   echo DATPROC_PARAM=
   echo DATPROC_METHOD2=11
   echo DATPROC_PARAM2=00112233445566778899aabbccddeeff;PKCS7#IV=!%BLOCK%_IV!
)
if "%1"=="Cmpr" (
   echo DATPROC_METHOD=26
   echo DATPROC_PARAM=
   echo DATA_FORMAT_ID=0x10
)
echo NETWORK=CAN_HS
echo PUBLIC_KEY_HASH=%PUBLICKEYHASH%
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