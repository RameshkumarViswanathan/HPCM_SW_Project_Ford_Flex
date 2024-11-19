@echo off
setlocal EnableDelayedExpansion

:: Configuration section :::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Path to HexView binary
set HEXVIEW=.\src\01_LLD\other_files\tools\HexView\hexview.exe

:: Output path
set OUTPUT=.\src\01_LLD\fss_btxh\outputs\Output

:: CAN Rx ID of ECU (0x7??)
set ECU_ADDRESS=0x721

:: Enable creation of signed VBFs (ON, OFF)
set SIG_ENABLE=%2
:: SIG_ENABLE changed to OFF from ON
if "%2"=="" set SIG_ENABLE=OFF

:: Path to key file for signature calculation
set SIG_PARAM=.\src\01_LLD\other_files\tools\DemoKeys\key.txt

:: Logical block parameters
:: Start address and length of logical block, address of verification structure
:: Note: The parameters are chosen based on the file name which is checked
::       for occurrence of "B1", "B2", "B3" or "B4".

:: Parameters of 2nd logical block
set BLOCK_ADDRESS=0x40200000
set BLOCK_LENGTH=0x3BC1E3
set BLOCK_SIG_ADDR=0x4020EF00
set BLOCK_VS_ADDR=0x4020F000
set BLOCK_SEG_SIZE=0x100

set SW_PART_NUMBER=ML34-14C544-AA

:: Change to current working path (drag & drop)
cd /d %~d0%~p0

:: Create Hexview .ini files
call :WriteVbf31 > Sample.ini

:: Create unprocessed VBF 3.1 container from input hex file
::%HEXVIEW% %1 /S /AD:%BLOCK_SEG_SIZE% /XVBF /P:%~n1.ini /E:hexview.log -o %OUTPUT%\%~n1.vbf

: Create unprocessed VBF 3.1 container from input hex file
:: create hex file for calibration address range
set TMP_FILENAME=fss_btxh.hex
%HEXVIEW% %1 /AR:0x0000000-0x003BC1E0    /XI /s -o %OUTPUT%\%TMP_FILENAME%
%HEXVIEW% %OUTPUT%\%TMP_FILENAME% /FR:0x00000000,0xEF00 /FP:0xA5 /XI /s -o %OUTPUT%\%TMP_FILENAME%
%HEXVIEW% %OUTPUT%\%TMP_FILENAME% /CR:0x00000000,0x18 /XI /s -o %OUTPUT%\%TMP_FILENAME%
%HEXVIEW% %OUTPUT%\%TMP_FILENAME% /FR:0x00000000,0x18 /FP:0x%FILENAMEHEX% /XI /s -o %OUTPUT%\%TMP_FILENAME%
%HEXVIEW% %OUTPUT%\%TMP_FILENAME% /S /AD:%BLOCK_SEG_SIZE% /XVBF /P:%~n1.ini /E:hexview.log -o %OUTPUT%\FlashD.vbf
REM del %OUTPUT%\%TMP_FILENAME%

REM del %~n1.ini

exit

:WriteVbf31
echo [VBFHEADER]
echo VBF_VERSION=3.1

echo DESCRIPTION=Demo Application
echo SW_PART_NUMBER=FML34-14C544-AA
echo SW_VERSION=
echo SW_PART_TYPE=EXE
echo SW_CALL_ADDRESS=


echo DATA_FORMAT_ID=0x00
echo DATPROC_METHOD=0
echo DATPROC_PARAM=

echo NETWORK=CAN_HS
echo ECU_ADDRESS=%ECU_ADDRESS%
echo FRAME_FORMAT=CAN_STANDARD

echo ERASE_LIST_GEN_MODE=0
echo ERASE_ADDRESS=%BLOCK_ADDRESS%
echo ERASE_LENGTH=%BLOCK_LENGTH%

echo VS_ADDRESS=%BLOCK_VS_ADDR%
echo CHECKSUM_METHOD=19

if "%SIG_ENABLE%"=="ON" (
   echo SIGNATURE_METHOD=39
   echo SIGNATURE_PARAM=%SIG_PARAM%
   echo PUBLIC_KEY_HASH=378CB1908900601AEB1F48592C5AC46E7A8CC479C9BF09881A1961F3DB3AC5EB
) else (
   echo PUBLIC_KEY_HASH=3958E2A25129A2125CCAF67248E236CF2AF8B0DA8477D89FDB4E042E4BEB8192
)

echo.
echo ; Validation Structure Attributes
echo Force32BitFormat=1
echo IdTagBeginLength=2
echo IdTagBegin=0000
echo IdTagEndLength=0
echo BlockChecksumType=20

exit /b

:ParamError
echo.
echo ERROR: Parameter configuration incomplete!
echo.
pause
exit /b