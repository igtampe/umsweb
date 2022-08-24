@echo off
cd..

:loop
fn.dll locate 20 0
set /p c=:
cls
call typo pixcel.fo 0 0 FF "%C%"
goto :Loop

TYPO  | Pixcel.fo COL LINE(TOP) COLOR "TEXT"