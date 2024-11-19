@echo off
if "%1" == "" goto end
rem %1
set local_dir=%~d0%~p0
:: Please configure the following variables
:: Root directory
rem set root_dir=%local_dir%..\..\..\..\external
set root_dir=D:\D_Drive_INBASDPC15844_User3\Vector\CBD2300515_D00\
:: Hexview executable
set hexview_exe=%root_dir%\Misc\Hexview\hexview.exe


rem Cut all content of Application.hex below this address space
set LowerBound=0xA001ffff
rem Cut all content of Application.hex above this address space
set UpperBound=0xA0080000

%hexview_exe% %~n1%~x1 /CR:0x0-%LowerBound%:%UpperBound%-0xFFFFFFFF /XI /s -o %local_dir%\%~n1_shifted%~x1

rem set the address offset (for example, DemoFbl executes from RAM address 0x20014000 and are stored in FLASH address 0x00070000)
rem use 0x80050000-0xA0050000 (0x2000 0000) to wrap 32 bit address around to 0
::set CachedToUncached=0x20000000

::echo Translate cached address to uncached address
::%hexview_exe% /MO:%local_dir%\%~n1_shifted%~x1;%CachedToUncached% /S /XI -o %local_dir%\%~n1_shifted%~x1
:: pause
:end
echo.
::exit /b