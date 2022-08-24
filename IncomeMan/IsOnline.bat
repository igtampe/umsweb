@echo off
cls
Setlocal EnableDelayedExpansion
set DLC=0
set FD=%CD%
set SLEEP=%CD%\sleep.exe 
Echo IsOnline [Version 1.0]
Echo (C)2018 Igtampe, NRR
Echo.
Echo Loading users...


:FindValue
Set /a A=%A%+1
Type Userlist.isf| Find "VALUE%A%:" > IsfReaderTemp.tmp
IF "%ERRORLEVEL%"=="1" Goto :PreGetValues
Set /p READ=<ISFREADERTEMP.tmp
SET VALUE%A%=!READ:VALUE%A%:=!
Goto :FindValue

:PreGetValues
if "%R%"=="1" goto :RS1
Set D=0

:GetValues
Set /a D=%D%+1
IF "%D%"=="%A%" Goto :DisplayFindings2
Type UserList.isf| Find "!VALUE%D%!:" > IsfReaderTemp.tmp
Set /p READ=<ISFREADERTEMP.tmp
Set CurrentValue=!VALUE%D%!
SET %CURRENTVALUE%=!READ:%CURRENTVALUE%:=!
Goto :GetValues

:DisplayFindings2
Set C=0

:DisplayFindings2Display
Set /a C=%C%+1
IF "%C%"=="%A%" Goto :Done
Set CURRENTVALUE=!VALUE%C%!
Set !VALUE%C%!=!%CURRENTVALUE%!
Goto :DisplayFindings2Display

:done
if exist ISFREADERTEMP.TMP Del ISFReaderTemp.tmp
set /a m=%A%-1
:redone
cd..
cd USERS
echo.
Echo Checking User Status...
set A=0
Echo.
echo ษอออหอออออออหออออออออออออออ
echo บ## บ  I D  บ Status
echo ฬอออฮอออออออฮออออออออออออออ
goto :LoadUserIncome

:E1
echo.
Echo Could not load user%a%'s Status
Echo Error 4: User does not exist
echo.
if "%A%"=="%M%" goto :DoneLoad
goto :LoadUserIncome

:E2
cd..
if "%A%"=="%M%" goto :DoneLoad
goto :LoadUserIncome


:LoadUserIncome
Set /a A=%a%+1
title %A%
If not exist !User%A%! goto :E1
cd !User%A%!
if exist isonline.dll set USER%A%S=[X]
if not exist isonline.dll set USER%A%S=[ ]
CD..

Set /a TenLess=%A%/10
if "%TENLESS%"=="0" set DA=0%A%


Echo บ%DA% บ !user%a%! บ !user%a%s!
if "%A%"=="%M%" goto :PreDoneLoad
goto :LoadUserIncome

:NoUsers
Echo There are no users registered.
cd..
cd USERS
SET M=0
Set A=0
Echo.
if /i "%1"=="/Tax" goto :CannotApplyIncome
If /i "%1"=="/ApplyIncome" goto :CannotApplyIncome
goto :doneload

:PreDoneLoad
echo ศอออสอออออออสออออออออออออออ

:DoneLoad
set /a DLC=%DLC%+1
if "%DLC%"=="7" goto :RELOAD
cd %FD%
%SLEEP% 10000
set /a Lines=7+3+%M%+2
mode con:lines=%lines% cols=28
cls
Echo IsOnline [Version 1.0]
Echo (C)2018 Igtampe, NRR
Echo.
echo.
Goto :redone

:reload
endlocal
isonline.bat

