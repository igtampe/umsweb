@echo off
if /i "%1"=="/REGISTER" set R=1& Goto :RS0
Setlocal EnableDelayedExpansion
IF "%NOPASS%"=="1" goto :nopass
:MainStart
mode con: lines=1000 cols=81
set FD=%CD%
echo Please enter access password:
Set /p PASS=:
Echo.
IF NOT "%PASS%"=="24602060451" goto :EOF
cls
Echo IncomeMan [Version 1.4]
Echo (C)2018 Igtampe, NRR.
if "%1"=="/?" goto :CMDHELP
Echo.
Echo.
echo.
Echo Loading Registered Users....
Echo.
if Not exist USERLIST.isf goto :NoUsers
:RS0
:nopass
set A=0

:FindValue
Set /a A=%A%+1%
Type Userlist.isf| Find "USER%A%:"> IsfReaderTemp.tmp
IF "%ERRORLEVEL%"=="1" Goto :Done
Set /p READ=<ISFREADERTEMP.tmp
SET USER%A%=!READ:USER%A%:=!
rem Echo USER%A%=!READ:USER%A%:=!
Goto :FindValue

:DisplayFindings2
Set C=0
goto :done

:RS1
del isfreadertemp.tmp
set /a M=%A%-1
goto :RS2

:CMDHELP
Echo IncomeMan {/ApplyIncome ^| /Tax} [/FORCE]
Echo IncomeMan {/Register} {Account}
Echo.
Echo /register    Quietly register a new user.
Echo /ApplyIncome Applies income only on the 1st  of every month
echo /Tax         Taxes   income only on the 15th of every month
echo.
echo /FORCE       Forces the program to do the specified action 
echo              regardless of the day of the month.
echo pause >nul
goto :eof

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
Del ISFReaderTemp.tmp
cd..
cd USERS
echo.
set /a m=%A%-1
Echo Loading User Income...
set A=0
Echo.
echo ษอออหอออออออหออออออออออออออ
echo บ## บ  I D  บ Income
echo ฬอออฮอออออออฮออออออออออออออ
goto :LoadUserIncome

:E1
echo.
Echo Could not load user%a%'s Income
Echo Error 4: User does not exist
echo.
if "%A%"=="%M%" goto :DoneLoad
goto :LoadUserIncome

:E2
rem echo.
rem Echo WARN: !user%A%! Has no Income.dll file
rem Echo Generating new one at 0p/month...
rem Echo.
Echo 00> income.dll
set !user%A%i!=0
cd..
if "%A%"=="%M%" goto :DoneLoad
goto :LoadUserIncome


:LoadUserIncome
Set /a A=%a%+1
title %A%
If not exist !User%A%! goto :E1
cd !User%A%!
if not exist Income.dll goto :E2
Set /p User%A%I=<Income.dll
CD..
set DA=%A%

Set /a TenLess=%A%/10
if "%TENLESS%"=="0" set DA=0%A%


Echo บ%DA% บ !user%a%! บ !user%a%i!
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
if /i "%1"=="/Tax" goto :PreTax
If /i "%1"=="/ApplyIncome" goto :PreApplyIncome
Echo.
Echo What would you like to do
Echo.
Echo  [1.] Register a New User.
Echo  [2.] Edit a user's income.
Echo  [3.] Manually add User Income
Echo  [4.] Manually remove User money
Echo  [5.] Exit
Echo.
set /p c=:
If "%C%"=="1" goto :NewUser
If "%C%"=="2" goto :EditUser
if "%C%"=="3" goto :Manual
if "%C%"=="4" goto :Manual2
if "%C%"=="5" goto :EOF
goto :doneload

:NewUserError
echo.
Echo Could not find user %MUSER% in %CD%.
echo.

:RS2ERROR
Echo COULD NOT REGISTER %MUSER%, USER DOES NOT EXIST
Goto :RS4

:RS2
Set MUSER=%2
set MINCO=00
cd..
cd users
if not exist %MUSER% goto :RS2ERROR
cd %MUSER%
Echo %Minco%> income.dll
cd..
cd..
cd incomeman
goto :RS3

:NewUser
Echo.
Set /p MUser=User: 
if not exist %MUSER% goto :NewUserError
cd %MUSER%
Set /p MInco=Income: 
Echo %Minco%> income.dll
Echo.
Cd %FD%
Echo Registering %MUSER% in the UserList ISF File...
:RS3
If not exist UserList.isf Echo [USERLIST]> UserList.isf
Set A=0
Set /a M=%M%+1
Echo VALUE%M%:USER%M%>> Userlist.isf
Echo USER%M%:%MUSER%>> Userlist.isf
IF "%R%"=="1" goto :RS4
Echo.
Echo The following was added to UserList.isf:
Echo.
Echo VALUE%M%=USER%M%
Echo USER%M%=%MUSER%
Echo.
Echo Would you like to see the whole UserList.isf File?
Set /p C=:
echo.
echo.
IF /i "%C%"=="Y" Echo %CD%\Userlist.isf& Echo.& type userlist.isf& Echo.
Echo In order for these changes to take effect, you must restart IncomeMan.
Echo Press a key to do so right now.
Pause >nul
goto :MainStart

:EditUser
Echo.
Set /p MUser=User: 
Set /p MInco=New Income: 
Echo.
CD !User%MUSER%!
set !USER%MUSER%I!=%MINCO%
Echo %MINCO%> Income.dll
echo !user%MUSER%!'s Income is now %MINCO%p/month.
Echo.
cd..
Pause >nul
goto :Doneload


:ManualError
echo.
echo.
Echo Could not complete the operation. User %user% still has
Echo no bank accounts opened.
pause >nul
goto :doneload

:Manual2
set bC=0
Set /p MUser=User: 
Set /p MAdd=Amount: 
Echo.
Echo Removing %MADD% from User %MUSER%....
echo.
CD !User%MUSER%!
If exist "UMSNB" cd UMSNB& set bC=1
If exist "GBANK" cd GBANK& set bC=1
IF EXIST "RIVER" cd RIVER& set bC=1
IF "%BC%"=="0" goto :ManualError
Set /p Balance=<Balance.dll
Set /a Balance=%Balance%-%MADD%
if "%BALANCE%"=="0" set BALANCE=00
Echo.
echo %BAlANCE%> Balance.dll
echo [%DATE%, %TIME%] IncomeMAN Removed %MADD% from your account.>> log.log
Echo Removed %mADD% to !user%MUSER%!'s bank account. Their new balance is %Balance%.
cd..
cd..
Pause >nul
Goto :DoneLoad


:Manual
set bC=0
Set /p MUser=User: 
Set /p MAdd=Amount: 
Set /p MTAX=Taxable (Y/N)? 
Echo.
Echo Adding %MADD% to user %MUSER%....
CD !User%MUSER%!
If exist "UMSNB" cd UMSNB& set bC=1
If exist "GBANK" cd GBANK& set bC=1
IF EXIST "RIVER" cd RIVER& set bC=1
IF "%BC%"=="0" goto :ManualError
Set /p Balance=<Balance.dll
Set /a Balance=%Balance%+%MADD%
Echo.
echo %BAlANCE%> Balance.dll
echo [%DATE%, %TIME%] IncomeMAN added %MADD% To your account. Taxable=%MTAX%>> log.log
Echo Applied %mADD% to !user%MUSER%!'s bank account. Their new balance is %Balance%.
cd..
If /i "%MTAX%"=="y" call :ManualTax
cd..
Pause >nul
Goto :DoneLoad

:ManualTax
set EI=0
If exist ei.dll set /p EI=<Ei.dll
Set /a EI=%EI%+%MADD%
Echo %EI%> EI.dll
goto :eof

:CannotApplyIncome
Echo.
Echo Cannot apply income to 0 users.
echo.
Pause >nul
goto :eof

:Error1
echo.
Echo Could not tax user !USER%A%! (user%a%) 
Echo ERROR 1: User does not exist.
echo.
goto :Tax1

:Error2
echo.
Echo Could not tax user !USER%A%! (user%a%) 
Echo ERROR 2: User does not have a bank account.
cd..
echo.
goto :Tax1

:Error3
echo.
Echo ERROR 3: %A% is greater than %M%. Halting...
cd..
echo.
goto :DoneTax

:Pretax
Echo %DATE%| Find /i "/15/2" 
if "%ERRORLEVEL%"=="0" goto :tax
if /i "%2"=="/FORCE" goto :tax
Echo Today is not the 15th of the month!
Echo Load me up when it is!
Pause >nul
goto :eof


:Tax
Echo.
Echo Taxing every user...
echo.
Set a=0

:Tax1
Set /a A=%a%+1
if not exist !User%A%! goto :Error1t
cd !User%A%!
set TI=0
If exist EI.dll set /i EI=<ExtraIncome.dll
If exist EI.dll Del EI.dll
set /a TI=%EI%+!user%a%i!
set bank=0
If exist "UMSNB" cd UMSNB& Set Bank=1
If exist "GBANK" cd GBANK& Set Bank=1
IF EXIST "RIVER" cd RIVER& Set Bank=1
if "%BANK%"=="0" goto :Error2t

set taxbracket=5

set /a TBT=%TI%/1000000
if "%TBT%"=="0" set TaxBracket=3

set /a TBT=%TI%/100000
if "%TBT%"=="0" set TaxBracket=1


set /a Tax=%TI%*%TaxBracket%
set /a Tax=%TAX%/100

Set /p Obalance=<balance.dll
Set /a Balance=%OBalance%-%tax%
echo %BAlANCE%> Balance.dll
echo [%DATE%, %TIME%] Taxed your monthly income, which is %Tax%.>> log.log
Echo Taxed !user%a%!'s income (%OBALANCE%-(%TAX%)=%BALANCE%). Tax from (%EI%+!USER%A%I!)
CD..
CD..
if "%A%"=="%M%" goto :Donetax
Set AM=0
set /a AM=%A%/%M%
if "%AM%"=="1" goto :Error3t
goto :Tax1

:Error2t
Echo UNABLE TO TAX !USER%A%!'S INCOME: NO BANK ACCOUNT
CD..
if "%A%"=="%M%" goto :DoneLoad
set /a AM=%A%/%M%
if "%AM%"=="1" goto :Error3t
Goto :TAX1

:ERROR1T
ECHO UNABLE TO TAX !USER%A%!'S INCOME: USER DOESN'T EXIST
if "%A%"=="%M%" goto :DoneLoad
set /a AM=%A%/%M%
if "%AM%"=="1" goto :Error3t
Goto :TAX1

:ERROR3T
Echo %A% iS OVER %M%, STOPPING
GOTO :DONETAX

:DoneTax
Echo.
Echo Done!
Echo.
Pause >nul
goto :RS4


:PreApplyIncome
Echo %DATE%| Find /i "/01/2" 
if "%ERRORLEVEL%"=="0" goto :ApplyIncome
if /i "%2"=="/FORCE" goto :ApplyIncome
Echo Today is not the first of the month!
Echo Load me up when it is!
Pause >nul
goto :eof

:ApplyIncome
Echo.
Echo Applying the monthly income of every user...
set A=0
goto :applyUserIncome

:Error1I
echo.
Echo Could not apply income to user !USER%A%! (user%a%) 
Echo ERROR 1: User does not exist.
echo.
goto :applyUserIncome

:Error2I
echo.
Echo Could not apply income to user !USER%A%! (user%a%) 
Echo ERROR 2: User does not have a bank account.
cd..
echo.
goto :applyUserIncome

:Error3I
echo.
Echo ERROR 3: %A% is greater than %M%. Halting...
cd..
echo.
goto :DoneApply


:ApplyUserIncome
Set /a A=%a%+1
if not exist !User%A%! goto :Error1I
cd !User%A%!
set bank=0
If exist "UMSNB" cd UMSNB& Set Bank=1
If exist "GBANK" cd GBANK& Set Bank=1
IF EXIST "RIVER" cd RIVER& Set Bank=1
if "%BANK%"=="0" goto :Error2I
Set /p balance=<balance.dll
Set /a Balance=%Balance%+!user%a%i!
echo %BAlANCE%> Balance.dll
echo [%DATE%, %TIME%] Applied your monthly income, which is !user%a%i!.>> log.log
Echo Applied !user%a%!'s income (!user%a%i!). Their new balance is %Balance%.
CD..
CD..
if "%A%"=="%M%" goto :DoneApply
Set AM=0
set /a AM=%A%/%M%
if "%AM%"=="1" goto :Error3I
goto :ApplyUserIncome

:DoneApply
Echo.
Echo All income was applied!
Echo.
Pause >nul

:RS4
