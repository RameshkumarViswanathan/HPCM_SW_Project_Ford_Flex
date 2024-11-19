@echo off
if "%1" == "" goto end
rem %1
set local_dir=%~d0%~p0
:: Please configure the following variables
:: Root directory
set root_dir=%local_dir%..\..\..\..\external
:: Hexview executable
set hexview_exe=%root_dir%\Misc\Hexview\hexview.exe


rem Cut all content of DemoAppl.hex below this address space
set LowerBound=0xA007FFFF
rem Cut all content of DemoAppl.hex above this address space
set UpperBound=0xA00FFB1F
%hexview_exe% %~n1%~x1 /CR:0x0-%LowerBound%:%UpperBound%-0xFFFFFFFF /S /XI -o %local_dir%\%~n1_temp%~x1


rem Redefine bounds in preparation for fill region
set LowerBound=0xA0080000
set UpperBound=0xA00FFB1F

rem Fill empty regions with fill-code 0xFF
%hexview_exe% %~n1_temp%~x1 /FP:FF /FR:%LowerBound%-%UpperBound%  /S /XI -o %local_dir%\%~n1_modified%~x1

rem Cleanup
del %~n1_temp%~x1

::pause
:end
echo.
::exit /b