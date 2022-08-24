@echo off
cd..

:Loop
Set /a X=%RANDOM% %% 22
Set /a Y=%RANDOM% %% 100
fn.dll LOCATE %X% %Y%
Echo #
FN.dll sleep 100
goto :loop
