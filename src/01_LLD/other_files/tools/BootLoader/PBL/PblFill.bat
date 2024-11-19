@echo off
if "%1" == "" goto end
rem %1
set local_dir=%~d0%~p0
:: Please configure the following variables
:: Root directory
set root_dir=%local_dir%..\..\
:: Hexview executable
set hexview_exe=%root_dir%\HexView\hexview.exe


rem Write presence pattern to second-to-last write-segement of the fbl hex space
:: set PresencePatternAddr=0xA007FF80
set PresencePatternAddr=0x805EFF80
%hexview_exe% %~n1%~x1 /FP:736A293E /FR:%PresencePatternAddr%,0x04 /XI /s -o %local_dir%\%~n1_filled%~x1

rem Redefine bounds in preparation for fill region
set LowerBound=0x805A0000
set UpperBound=0x805EFF8F

rem Fill empty regions with fill-code 0xFF
%hexview_exe% %~n1_filled%~x1 /FP:FF /FR:%LowerBound%-%UpperBound%  /S /XI -o %local_dir%\%~n1_filled%~x1

::pause
:end
echo.
::exit /b