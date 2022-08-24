REM FOR THE LOVE OF GOD THERE IS ONLY 24 LINES
@echo Stand By, Loading In
@echo off
Setlocal enabledelayedexpansion
set BG=1
color 1F
Echo Please wait, setting some variables...
set common=%CD%\common
set prespace=%CD%\common\prespace
set echocolor=%CD%\common\echocolor.bat
Set EC=call %CD%\common\echocolor.bat
set CC=%CD%\common\ColorChar.exe
set bordershaddow=%CD%\common\bordershaddow
set shaddow=%cd%\common\shaddow
set flag=call %cd%\common\flagUMS.bat
Set MasterLog=%CD%\Users\33118\Masterlog.log
set AccessLog=%CD%\incomeman\AccessLog.log
set SPACE=%CD%\Common\space
set Colon=%CD%\Common\Colon
set SCounter=call "%CD%\Common\StringCounter.bat"
set FD=%CD%
set SP1=TYPE %CD%\COMMON\SPACE
Set SP2=TYPE %CD%\COMMON\Space2
Set SP3=TYPE %CD%\COMMON\Space3
Set CARD=CALL %CD%\COMMON\CARD.BAT
set BE=Call %CD%\COMMON\BigEcho.bat
Set CTE=Call %CD%\COMMON\CTEXT.bat


::EXTENSIONS::

SET ClearLine=Call %CD%\Extensions\cl.bat
set EXTENSIONS=%CD%\EXTENSIONS

SET LOCATE=%CD%\Extensions\FN.dll LOCATE
SET LCOLOR=%CD%\EXTENSIONS\FN.dll COLOR
SET SLEEP=%CD%\EXTENSIONS\FN.DLL SLEEP

SET MPASS=%CD%\EXTENSIONS\MPASS PasswordTemp.tmp& SET /p Result=<PasswordTemp.tmp& Del PasswordTemp.tmp
REM Result to %RESULT%

SET TYPO=CALL %CD%\EXTENSIONS\ETYPO.BAT
REM Note you must still include position (COL/LINE) and Color before the text. Also note no spaces.

Set CMDMenuSEL=%CD%\EXTENSIONS\CMDMenuSel
REM Note you must still include COLOR (0F0F) before the options.

Set RenderBox=CALL %CD%\EXTENSIONS\RenderBOX.bat
rem Box COL LINE [Height] [Width] [Sepration] [BG_Char] [color] [Type]
::::::::::::::



cls
Echo.
echo.
%flag%
Echo.
Echo.
rem %CTE% " TEBECON TEST SERVER"
echo                                   U M S W E B                                  
Echo.
Echo Press a key to connect                                 Powered by TEBECON v4.2
pause >nul
cls
goto :welcome

:Top
%GD% gWq& call %echocolor% 0F "[                              U M S W E B                              ]"& %GD% gWq .
goto :eof

:TINYLOGO
%GD% ssssssssssssgggWWWWWqssssWsWsWsssWsWWWsWsssWsWWWWsWWWsssssgggWWWWWq .
%GD% ssssssssssssgggWWWWqqssssWsWsWWsWWsWsssWsssWsWssssWssWssssgggWWWWqq .
%GD% ssssssssssssggWWWWWqqssssWsWsWsWsWsWWWsWsssWsWWWssWWWsssssggWWWWWqq .
%GD% ssssssssssssggWWWWqqqssssWsWsWsssWsssWsWsWsWsWssssWssWssssggWWWWqqq .
%GD% ssssssssssssgWWWWWqqqssssWWWsWsssWsWWWsWWsWWsWWWWsWWWsssssgWWWWWqqq .
goto :EOF

:TINYLOGOTEBE
rem             |                                                       |
%GD% ssssssssssssssssssssssGGGsGGGGsGGGssGGGGssGGGssGGssGGssG .
%GD% sssssssssssssssssssssssGssGssssGssGsGssssGssssGssGsGsGsG .
%GD% sssssssssssssssssssssssGssGGGssGGGssGGGssGssssGssGsGsGsG .
%GD% sssssssssssssssssssssssGssGssssGssGsGssssGssssGssGsGsGsG .
%GD% sssssssssssssssssssssssGssGGGGsGGGssGGGGssGGGssGGssGssGG .
goto :EOF

:WARNING
color 0A
rem Box COL LINE [Height] [Width] [Sepration] [BG_Char] [color] [Type]
%RENDERBOX% 3 5 2 11 - - 44
%RENDERBOX% 3 5 4 21 - - 44
%RENDERBOX% 3 5 6 32 - - 44
%RENDERBOX% 3 5 8 42 - - 44
%RENDERBOX% 3 5 10 53 - - 44
%RENDERBOX% 3 5 12 63 - - 44
%RENDERBOX% 3 5 14 74 - - 44


%LCOLOR% F0
%LOCATE% 5 3
Echo อออออออออออออออออออออออออ[End of Service Warning]อออออออออออออออออออออออออ

%LCOLOR% 4F
%LOCATE% 7 3
Echo With ViBE adding support for Checks and Billing (The last exclusive 
%LOCATE% 8 3
echo features of TEBECON) soon in 2.1, TEBECON will be ceasing service to the
%LOCATE% 9 3
echo general public effective January 1st 2019. All checks from TEBECON that 
%LOCATE% 10 3
Echo are not cashed by this date will be automatically cashed, since TEBECON's
%LOCATE% 11 3
Echo check system will be phased out.
%LOCATE% 13 3
echo If you are unable to run ViBE on your computer, you can use ViBE's sister 
%LOCATE% 14 3
Echo program, FLoW on http://igtnet-w.ddns.net:100/FLOW
%LOCATE% 16 3
Echo If you have any questions please do not hesitate to contact me.
%locate% 17 3
echo -IGT
%locate% 18 3
Echo ออออออออออออออออออออออออออออออออออออออออออออออออ[Press a key to continue]อ
Pause >nul

%RENDERBOX% 3 5 2 11 - - 00
%RENDERBOX% 3 5 4 21 - - 00
%RENDERBOX% 3 5 6 32 - - 00
%RENDERBOX% 3 5 8 42 - - 00
%RENDERBOX% 3 5 10 53 - - 00
%RENDERBOX% 3 5 12 63 - - 00
%RENDERBOX% 3 5 14 74 - - 00
goto :Eof

:Welcome
call :WARNING
cd users
color 0A
cls
Echo.
Echo.
Echo.
echo             อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%GD% ssssssssssssgggWWWWWqssssWsWsWsssWsWWWsWsssWsWWWWsWWWsssssgggWWWWWq .
%GD% ssssssssssssgggWWWWqqssssWsWsWWsWWsWsssWsssWsWssssWssWssssgggWWWWqq .
%GD% ssssssssssssggWWWWWqqssssWsWsWsWsWsWWWsWsssWsWWWssWWWsssssggWWWWWqq .
%GD% ssssssssssssggWWWWqqqssssWsWsWsssWsssWsWsWsWsWssssWssWssssggWWWWqqq .
%GD% ssssssssssssgWWWWWqqqssssWWWsWsssWsWWWsWWsWWsWWWWsWWWsssssgWWWWWqqq .
echo             อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo                                    ID :_____
Echo                                    PIN:____
Echo.
echo             อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo              Type NEW for new account, DIR for directory, or C to
echo                                    clear pin  
echo             อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo                              Powered by TEBECON 4.2
Echo                        (C)2018 Igtampe No Rights Reserved


:RetryAcc
%locate% 11 39
Set /p ACC=
If /i "%ACC%"=="EXIT" goto :Exit
If /i "%ACC%"=="DIR" goto :LoginDir
if /i "%ACC%"=="NEW" goto :register
if not exist "%ACC%" goto :NoUser
cd %acc%
if exist lockdown.marker goto :lockdown
set AT=0
goto :PIN

:retrypin2
%locate% 12 39
Echo ____ 
goto :pin

:lockdown
%LOCATE% 15 12
%LCOLOR% CF
Echo [%DATE%, %TIME%] (%acc%) Has been locked out >> %MasterLog%
rem  อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo   Account %acc% is now locked. Please contact the UMS  
%LOCATE% 16 12
Echo            government to unlock this account           
%LCOLOR% 0A
echo.
echo lockdown > lockdown.marker
cd..
cd..
pause >nul
goto :welcome



:PIN
%locate% 12 39
CHOICE /C 1234567890C /N >nul
SET P1=%ERRORLEVEL%
if "%P1%"=="10" set P1=0
if "%P1%"=="11" goto :retrypin2
type %COMMON%\star

CHOICE /C 1234567890C /N >nul
SET P2=%ERRORLEVEL%
if "%P2%"=="10" set P2=0
if "%P2%"=="11" goto :retrypin2
type %COMMON%\star

CHOICE /C 1234567890C /N >nul
SET P3=%ERRORLEVEL%
if "%P3%"=="10" set P3=0
if "%P3%"=="11" goto :retrypin2
type %COMMON%\star

CHOICE /C 1234567890C /N >nul
SET P4=%ERRORLEVEL%
if "%P4%"=="10" set P4=0
if "%P4%"=="11" goto :retrypin2
type %COMMON%\star


set Pin=%P1%%P2%%P3%%P4%
set /p realpin=<pin.dll
if "%PIN%"=="%RealPin%" goto :PreLoadUser
set Realpin=
Set /a at=%at%+1
%locate% 12 39
%LCOLOR% CF
Echo Incorrect Pin (Attempt %at%/3)

%LCOLOR% 0A
%EXTENSIONS%\FN.DLL SLEEP 1000
IF "%AT%"=="2" call :LoadPinHint
if "%At%"=="3" goto :lockdown
%locate% 12 39
Echo ____                           

goto :pin






:LoadPinHint
IF NOT EXIST HINT.dll goto :EOF
set /p PinHint=<Hint.dll

%LOCATE% 13 12
Echo HINT: %PinHint%
SET PinHINT=
goto :EOF



:NoUser
%locate% 11 39
%LCOLOR% CF
Echo USER DOES NOT EXIST
%EXTENSIONS%\FN.DLL SLEEP 1000
%LCOLOR% 0A
%LOCATE% 11 39
Echo _____               
goto :RetryAcc




:OLDWELCOME
color 0A
cd users
cls
set top=call :TOP 
call :TOP
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo NEWS:                                                                    :LOGIN
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Version 4.0 Releases!
Echo      -New UI which merges EZ-TAX with the main screen. 
Echo      -Rework of the Admin Console.
echo      -Shobu is now closed since nobody used it and nothing has been coded.
Echo      -A Bunch of Extensions which allow us to do a bunch of cool graphical
Echo       things.
Echo.
Echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Type NEW to make a new account, DIR to see Directory, or type C to clear pin.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo. 
goto :login

::no longer used::
If "%C%"=="1" goto :login
if "%C%"=="2" goto :register
if "%C%"=="3" goto :EXIT
goto :welcome

:Register
%LOCATE% 3 0
echo             อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo                             UMSWEB TERMS OF SERVICE                            
%LCOLOR% 0B
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo The UMSWEB is designed to be used by citizens of the UMS (Ultra Modern Sector).
echo Any other activity will be illegal under UMS Law. Under this system you can:
%Clearline% 8
Echo  [1.] Pay taxes                                                                
echo  [2.] Manage your monets                                                       
Echo  [5.] More amazing stuff                                                       
%ClearLine% 12
Echo The UMSWEB is a program presented as is. The UMS Is not responsible for any    
echo problems that occur here-on out. Legal mumbo jumbo goes here and very big      
echo words like taxes and regulatory bodies and federal prosecution along with      
echo penal code 1422 and law 14. All transactions will be logged and notified to the
echo UMS Government. The UMS Reserves the right to use any and all information      
echo provided. Usage of this system implies acceptance. The UMS is (C)2018 Nexus LLC
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%LCOLOR% 0A
Echo                         Do you accept the terms?  (Y/N)            
echo             อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
choice /c yn /n 
if /i "%ERRORLEVEL%"=="2" goto :welcome
echo.
cls
Echo.
Echo.
Echo.
echo             อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%GD% ssssssssssssgggWWWWWqssssWsWsWsssWsWWWsWsssWsWWWWsWWWsssssgggWWWWWq .
%GD% ssssssssssssgggWWWWqqssssWsWsWWsWWsWsssWsssWsWssssWssWssssgggWWWWqq .
%GD% ssssssssssssggWWWWWqqssssWsWsWsWsWsWWWsWsssWsWWWssWWWsssssggWWWWWqq .
%GD% ssssssssssssggWWWWqqqssssWsWsWsssWsssWsWsWsWsWssssWssWssssggWWWWqqq .
%GD% ssssssssssssgWWWWWqqqssssWWWsWsssWsWWWsWWsWWsWWWWsWWWsssssgWWWWWqqq .
echo             อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo                          NAME:________________________             
Echo                          PIN :____
Echo                          HINT:________________________
echo             อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo               Complete the form above and we'll give you your ID.
echo.
echo             อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo                              Powered by TEBECON 4.2
Echo                        (C)2018 Igtampe No Rights Reserved

%locate% 11 30
set /p NAME=
%LOCATE% 12 30
set /p PIN=
%LOCATE% 13 30
Set /p HINT=

%ClearLine% 11
%ClearLine% 12
%ClearLine% 13
%ClearLine% 15

%LOCATE% 11 0

%CTE% " Please Wait"

:NACCReRandom
set /a N1=%RANDOM% %% 10
set /a N2=%RANDOM% %% 10
set /a N3=%RANDOM% %% 10
set /a N4=%RANDOM% %% 10
set /a N5=%RANDOM% %% 10
Set NACC=%n1%%n2%%n3%%n4%%n5%
IF EXIST "%NACC%" goto :NACCReRandom
MD %NACC%
cd %NACC%
Set ACC=%NACC%
SET NACC= 
echo %PIN%> pin.dll
Echo %HINT%> HINT.DLL
echo %NAME%> Name.dll
cd ..
cd ..
echo [%DATE%, %TIME%] %NAME% (%ACC%) Has registered on the UMSWEB >> %MasterLog%
cd IncomeMan
call IncomeMAN /Register %ACC%> nul
cd..

%ClearLine% 11
%locate% 11 0

%CTE% " Given ID:"
%CTE% " %ACC%"

%locate% 15 0
%CTE% " Please remember your pin, as you'll need it to sign in."
%CTE% " Welcome to the UMSWEB, %NAME%"
pause >nul
goto :welcome


echo.
Echo ID Not Recognized.
echo.
goto :login

:LoginDir
Set L1=1
call :directory
SET L1=
cd..
goto :welcome

:login
Set /p ACC=ID : 
If /i "%ACC%"=="EXIT" goto :Exit
If /i "%ACC%"=="DIR" goto :LoginDir
if /i "%ACC%"=="NEW" goto :register
if not exist "%ACC%" goto :NoUser
cd %acc%
if exist lockdown.marker goto :lockdown
set AT=0

Type %COMMON%\PIN

CHOICE /C 1234567890C /N >nul
SET P1=%ERRORLEVEL%
if "%P1%"=="10" set P1=0%
if "%P1%"=="11" goto :retrypin2
type %COMMON%\star

CHOICE /C 1234567890C /N >nul
SET P2=%ERRORLEVEL%
if "%P2%"=="10" set P2=0
if "%P2%"=="11" goto :retrypin2
type %COMMON%\star

CHOICE /C 1234567890C /N >nul
SET P3=%ERRORLEVEL%
if "%P3%"=="10" set P3=0
if "%P3%"=="11" goto :retrypin2
type %COMMON%\star

CHOICE /C 1234567890C /N >nul
SET P4=%ERRORLEVEL%
if "%P4%"=="10" set P4=0
if "%P4%"=="11" goto :retrypin2
type %COMMON%\star


set Pin=%P1%%P2%%P3%%P4%L


set /p realpin=<pin.dll
if "%PIN%"=="%RealPin%" goto :LoadUser
set Realpin=
Set /a at=%at%+1
echo.
Echo Incorrect Pin (Attempt %at%/3)
IF "%AT%"=="2" call :LoadPinHint
echo.
if "%At%"=="3" goto :lockdown
goto :retrypin


IF NOT EXIST HINT.dll goto :EOF
set /p PinHint=<Hint.dll
Echo HINT: %PinHint%
SET PinHINT=
goto :EOF

:PreLoadUser
CLS
set /p name=<name.dll
echo.
echo.
echo.
echo             อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%CTE% " Welcome back %NAME%"
echo             อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%CTE% " What's new for TEBECON 4.2"
Echo             -Warning to users still using TEBECON
echo                     -Service shutdown by 2019
echo             -Administration updates
echo.             
%LCOLOR% 0E
%CTE% " NOTE"
echo.             
%CTE% " TEBECON is now depreceated. Moving forward, ViBE should"
%CTE% " Be used for financial transacitons. You're free to keep"
%CTE% " using TEBECON, but it won't be receiving updates, and"
%CTE% " may eventually be made incompatible."
%LCOLOR% 0A
echo.             
Echo.
echo             อออออออออออออออออออออออออออออออออออออออออออออออออออออออ


set LOADIN=1

%locate% 22 0
Echo                 บ               S T A N D   B Y               บ
%locate% 22 17


%SLEEP% 1000


%GD% G

goto :LoadUser



:LoadUser
set PIN=
SET p1=
SET p2=
SET P3=
Set P4=
%GD% G
echo isonline> isonline.dll
%GD% G
set /p name=<name.dll
%GD% G
Echo [%DATE%, %TIME%] %NAME% (%ACC%) Logged in >> %AccessLog%
%GD% G
set UMSNB= 
set GBANK= 
set RIVER= 
%GD% G
if exist UMSNB set UMSNB=X
if exist GBANK set GBANK=X
if exist RIVER set RIVER=X
%GD% G
If not exist BILLS MD BILLS
If not exist BILLS\BILLS MD BILLS\BILLS
Set PayDate=%DATE:~4%
Set PayDate=%PayDate:/=-%
%GD% G

:main
rem goto :oldmain

IF NOT "%Loadin%"=="1" (

	%locate% 22 0
	Echo                     บ          S T A N D     B Y          บ
	%locate% 22 21)


%GD% G
%SCOUNTER% "%UNAME% (%UACC%)"
Set RDSLMAX=%RESULT%
%GD% G


set UMSNBBalance=0
set GBANKBalance=0
set RIVERBalance=0
set Income=0
Set EI=0


%GD% G
if exist income.dll set /p Income=<Income.dll
if exist EI.dll set /p EI=<EI.dll
set /a TotalIncome=%income%+%EI%
%GD% G
if "%UMSNB%"=="X" Call :ChkBalance UMSNB ONLYCHECK
%GD% G
if "%GBANK%"=="X" Call :ChkBalance GBANK ONLYCHECK
%GD% G
if "%RIVER%"=="X" Call :ChkBalance RIVER ONLYCHECK
Set /a TotalBalance=%UMSNBBalance%+%GBANKBalance%+%RiverBalance%
%GD% G


Set N=%UMSNBBalance%
Call :CSeparate UMSNBBalance
%GD% G
Set N=%GBANKBalance%
Call :CSeparate GBANKBalance
%GD% G
Set N=%RIVERBalance%
Call :CSeparate RIVERBalance
%GD% G
Set N=%TOTALBalance%
Call :CSeparate TOTALBalance

%Scounter% "%UMSNBBalance%"
set UMSNBNum=%result%
%GD% G
%Scounter% "%GBANKBalance%"
set GBANKNum=%result%
%GD% G
%Scounter% "%RIVERBalance%"
set RIVERNum=%result%
%GD% G
%Scounter% "%TotalBalance%"
set TOTALNum=%result%
%GD% G


Set /a UMSNBNum=22-%UMSNBnum%
Set /a GBANKNum=22-%GBANKnum%
Set /a RIVERNum=22-%RIVERnum%
set /a TOTALNUM=22-%TOTALnum%
%GD% G

set uun=
set gbn=
set rin=
set ttn=

call :PreSpaceAdd UUN %UMSNBnum%
%GD% G
call :PreSpaceAdd GBN %GBANKnum%
%GD% G
call :PreSpaceAdd RIN %RIVERnum%
%GD% G
call :PreSpaceAdd ttn %TOTALnum%
%GD% G

set taxbracket=5
%GD% G
set TI=%TotalIncome%

set /a TBT=%TI%/1000000
if "%TBT%"=="0" set TaxBracket=3
%GD% G

set /a TBT=%TI%/100000
if "%TBT%"=="0" set TaxBracket=1
%GD% G


set /a Tax=%TI%*%TaxBracket%
set /a Tax=%TAX%/100
%GD% G

If "%RIVER%"=="X" set TOPB=River
IF "%GBANK%"=="X" set TOPB=GBank
IF "%UMSNB%"=="X" set TOPB=UMS National Bank
%GD% G

Set /a income=income
Set N=%INCOME%
Call :CSeparate DIncome
%GD% G
Set N=%EI%
Call :CSeparate DEI
%GD% G
Set N=%TotalINCOME%
Call :CSeparate DTotalIncome
%GD% G
Set N=%Tax%
Call :CSeparate DTAX


%GD% G
%Scounter% "%DTax%p"
Set DTaxNum=%RESULT%
%GD% G
%Scounter% "%TopB%"
Set TopBNum=%RESULT%

set /a DTaxNum=22-%DTaxNum%
set /a TopBNum=22-%TopBNum%
%GD% G

set DTn=
Set TBN=

call :PreSpaceAdd DTN %DTaxNum%
%GD% G
call :PreSpaceAdd TBN %TopBNum%
%GD% G

set Notif1=
Set Notif2=
set notif3=

set notif=1
%GD% G
If exist "%CD%\BILLS\BILLS\* %PAYDATE%" Set Notif%NOTIF%=-BILLS DUE TODAY& Set /a NOTIF=%NOTIF%+1& Goto :SkipBillNotifCheck
If exist "%CD%\BILLS\BILLS\* *" Set Notif%NOTIF%=-Bills Available& Set /a NOTIF=%NOTIF%+1
:SkipBillNotifCheck
%GD% G

IF EXIST "%CD%\UMSNB\CHECKS\* *" Set Notif%NOTIF%=-Checks available in UMS Natl. Bank& Set /a Notif=%NOTIF%+1
%GD% G
IF EXIST "%CD%\GBANK\CHECKS\* *" Set Notif%NOTIF%=-Checks available in G-Bank & Set /a Notif=%NOTIF%+1
%GD% G
IF EXIST "%CD%\RIVER\CHECKS\* *" Set Notif%NOTIF%=-Checks available in Riverside Bank& Set /a Notif=%NOTIF%+1
%GD% G
rem If "%NOTIF%"=="1" set Notif1=           ออออออออออออออออ& Set Notif2=           No Notifications& Set Notif3=           ออออออออออออออออ
If "%NOTIF%"=="1" set Notif1=& Set Notif2=           No Notifications& Set Notif3=

IF "%LOADIN%"=="1" (
	%locate% 22 17
	%LCOLOR% A0
	Echo            Press a key to continue           
	%LCOLOR% 0A
	%locate% 22 17
	pause >nul)


:ReDrawMain
set LOADIN=0
cls
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo %NAME% (%ACC%) บ UMSNB: [%UMSNB%]   GBANK: [%GBANK%]   RIVER: [%RIVER%]
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo [BALANCES]ออออออออออออออออออออออออออออ   [INCOME]ออออออออออออออออออออออออออออออ
Echo UMS National Bank : %UMSNBBalance%p%uun%Monthly Income    : %DINCOME%p
Echo GBank             : %GBANKBalance%p%GBN%Extra Income      : %DEI%p
Echo Riverside Bank    : %RIVERBalance%p%RIN%                  :
echo                   :                                        :
Echo              Total: %TotalBalance%p%ttn%             Total: %DTotalIncome%p
Echo. 
echo.
Echo [TAX]อออออออออออออออออออออออออออออออออ   [NOTIFICATIONS]อออออออออออออออออออออออ
If "%TaxBracket%"=="5" %ec% 0A "Your tax bracket"& type %SPACE%& type %SPACE%& type %colon%& type %SPACE%& %EC% 0E "High, 5 percent"& IF NOT "%NOTIF1%"=="" (echo      %Notif1%) ELSE Echo.
If "%TaxBracket%"=="3" %ec% 0A "Your tax bracket"& type %SPACE%& type %SPACE%& type %colon%& type %SPACE%& %EC% 0A "Middle, 3 percent"& IF NOT "%NOTIF1%"=="" (echo    %notif1%) ELSE Echo.
If "%TaxBracket%"=="1" %ec% 0A "Your tax bracket"& type %SPACE%& type %SPACE%& type %colon%& type %SPACE%& %EC% 0B "Low, 1 percent"& IF NOT "%NOTIF1%"=="" (echo       %notif1%) ELSE Echo.


IF "%NOTIF2%"=="" %EC% 0A "Amount due on 15th"& type %colon%& type %SPACE%& %EC% 0C "%DTax%p"& Echo.& Goto :N2Skip
%EC% 0A "Amount due on 15th"& type %colon%& type %SPACE%& %EC% 0C "%DTax%p"& Echo %DTN%%NOTIF2% 
:N2Skip

echo Taken from Account: %TOPB%%TBN%%Notif3%

IF "%RLOAD%"=="ChangePin" goto :ChangePin
Echo.
Echo.


Echo.
Echo.

echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [1.] UMS Natl. Bank  [3.] Riverside Bank  [5.] Directory   [7.] Disconnect
echo [2.] G-Bank          [4.] BillingPRO      [6.] Change Pin


CHOICE /C 123456789DA /N >nul
SET C=%ERRORLEVEL%


IF "%C%"=="1" call :BANK UMSNB& goto :main
IF "%C%"=="2" CALL :BANK GBANK& goto :main
IF "%C%"=="3" CALL :BANK RIVER& Goto :main

if "%C%"=="4" Call :BillingPRO& Goto :MAIN
if "%C%"=="5" goto :Directory
IF "%C%"=="6" SET RLOAD=ChangePin
IF "%C%"=="7" goto :outtamain
if "%C%"=="10" call :DEBUG D1
IF "%C%"=="11" call :PreAdmin
rem if "%C%"=="6" call :Shobu
:D1
goto :ReDrawMain











:OldMain
set OD=0
cls
call :top
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Main Menu:
Echo                                            ออออออออออออออออออออออออออออออออออออ
Echo   [1.] UMS National Bank                   %NAME% (%ACC%)
Echo   [2.] G-Bank                              ออออออออออออออออออออออออออออออออออออ
Echo   [3.] Riverside Bank                      UMSNB: [%UMSNB%]   GBANK: [%GBANK%]   RIVER: [%RIVER%]
Echo   [4.] ezTAX                               ออออออออออออออออออออออออออออออออออออ
Echo   [6.] Shobu Casino
echo.
Echo.
Echo   [7.] User Directory
Echo   [8.] Change Pin
Echo   [9.] Disconnect
echo.
CHOICE /C 123456789DA /N /m ":"
SET C=%ERRORLEVEL%
IF "%C%"=="1" call :BANK UMSNB& goto :main
IF "%C%"=="2" CALL :BANK GBANK& goto :main
IF "%C%"=="3" CALL :BANK RIVER& Goto :main
IF "%C%"=="4" goto :EZTAX

if "%C%"=="5" Call :BillingPRO
if "%C%"=="7" goto :Directory
IF "%C%"=="8" goto :ChangePin
IF "%C%"=="9" goto :outtamain
if "%C%"=="10" call :DEBUG D1
IF "%C%"=="11" Goto :PreAdmin
if "%C%"=="6" call :Shobu
goto :main

:BillingPro
CD Bills
CLS
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo BillingPRO [Verison 2.0]
Echo (C)2018 Igtampe, No Rights Reserved
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Billing Menu:
Echo.
Echo   [1.] Pay A Bill
Echo   [2.] Review Paid Bills
Echo   [3.] Bill Someone
Echo   [4.] Close BillingPro
Echo.
Choice /c 1234 /n /m ":"
Set Z=%ERRORLEVEL%
IF "%Z%"=="1" Call :PayBill
IF "%Z%"=="2" Call :BillLog
IF "%Z%"=="3" Call :MakeBill
CD..
IF "%Z%"=="4" Goto :EOF
goto :BillingPRO

:MakeBill
MD ProtoBill
CD ProtoBill
:ReTypeMSGBill
CLS
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo BillingPRO [Verison 2.0]
Echo (C)2018 Igtampe, No Rights Reserved
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo.
echo.
echo.
echo.
Echo.
Echo.
echo.
echo.
echo.
Echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Here's some space to write a quick message to the receiver. Only hit ENTER when
echo you're done typing. Do not use ^|, %%, ", or ^> in your message.
%LOCATE% 5 0
Set /p MSG=
%Clearline% 17
%Clearline% 18
%locate% 17 0
Echo Send This (Y/N/(C)ancel)?
Choice /c ync /n
IF "%ERRORLEVEL%"=="2" goto :ReTypeMSGBill
IF "%ERRORLEVEL%"=="3" goto :CancelMakeBill
Echo %MSG%> MSG.txt
Goto :MBAmounts

:CancelMakeBill
cd..
RD /q /s Protobill
goto :eof

:MBE1
Echo User Does not exist!
Echo.
Goto :MBReDest


:MBAmounts
Set CNUM=
CLS
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo BillingPRO [Verison 2.0]
Echo (C)2018 Igtampe, No Rights Reserved
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
type MSG.txt
%LOCATE% 16 0
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo %NAME%> CN.dll
Echo %ACC%> CA.dll
Set /p N=Total to be Paid: 
Call :CJoin CT
Echo %CT%> CT.dll
:MBReDest
set DEST=
Set /p DEST=Account of Payee: 
IF "%DEST%"=="" goto :MBREDEST
Set /p DUED=Due (MM-DD-YYYY): 
IF NOT EXIST "%FD%\USERS\%DEST%" goto :MBE1
IF NOT EXIST "%FD%\USERS\%DEST%\BILLS" MD "%FD%\USERS\%DEST%\BILLS"
IF NOT EXIST "%FD%\USERS\%DEST%\BILLS\BILLS" MD "%FD%\USERS\%DEST%\BILLS\BILLS"
cd..
IF NOT EXIST "%FD%\users\%DEST%\BILLS\CNUM.dll" Echo 01> "%FD%\users\%DEST%\BILLS\cnum.dll"
Set /p CNum=<"%FD%\users\%DEST%\BILLS\cnum.dll"
%SCounter% %CNUM%
IF "%RESULT%"=="1" Set CNUM1=000%CNUM% 
IF "%RESULT%"=="2" Set CNUM1=00%CNUM% 
IF "%RESULT%"=="3" Set CNUM1=0%CNUM% 
IF "%RESULT%"=="4" Set CNUM1=%CNUM% 

Xcopy ProtoBill "%FD%\USERS\%DEST%\BILLS\BILLS\ID-%CNUM1%%NAME% %CT% %DUED%" /e /i /q >nul
RD /q /s Protobill

Set /a CNUM=%CNUM%+1
%SCounter% %CNUM%
IF "%RESULT%"=="1" set CNUM=0%CNUM%
Echo %CNUM%> "%FD%\users\%DEST%\BILLS\CNUM.dll"

Echo.
Echo.
Echo The Bill has been sent.
Pause >nul
goto :eof



Goto :eof

CA(ccount\BANK)
CN(ame)
CT(otal)
MSG.txt

:nobill
echo.
Echo Could not find that Bill!
pause >nul
goto :PayBill2


:PBDNOCHECKS
Echo.
Echo.
Echo.
Echo.
Echo.
echo                                   [No  Bills]
Echo.
Echo.
Echo.
Echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Press any key to return.
cd..
Pause >nul
goto :EOF




:PayBill
set loan=0
Set LTEXT=
Echo.
cd Bills
:PayBill2
set BREAK=0
cls
%top%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Unpaid Bills:
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
if not exist "* *" goto :PBDNoChecks
Dir /p /b
dir | find /i "Dir(s)"> CCT.tmp
set /p DIRS=<CCT.tmp
del cct.tmp

Set DIRS=%DIRS: =%
set MDIR=%DIRS:~3%
Set DIRS=!DIRS:%MDIR%=!
Set DIRS=%DIRS:D=%
Set DIRS=%DIRS:i=%
set /a dirs=%DIRS%-2

Set /a MB=11-%DIRS%
Echo "%MB%"| Find "-"> nul
if "%ERRORLEVEL%"=="0" set MB=0


:PayBillDisplayLoop
IF "%MB%"=="0" goto :PBDLE
Set /a BREAK=%BREAK%+1
IF "%BREAK%"=="%MB%" goto :PBDLE
echo.
goto :PayBillDisplayLoop

:PBDLE
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Type the ID of the Bill (ID-0001) or "Exit".
echo.
SET BILL=
set /p bill=:
IF "%BILL%"=="" goto :NoBill
if "%BILL%"=="DEBUG" call :DEBUG Dpb
if /i "%bill%"=="exit" CD..& goto :EOF

:Dpb
If not exist "%bill% *" goto :nobill
DIR /b | FIND /i "%BILL%"> ccdle.tmp
Set /p BILL=<ccdle.tmp

cd "%bill%"

set /p CA=<CA.dll
Set /p CN=<CN.dll
Set /p CT=<CT.dll

CLS
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo BillingPRO [Verison 2.0]
Echo (C)2018 Igtampe, No Rights Reserved
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Type MSG.txt
%LOCATE% 16 0
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Pay %CT% to %CN% (%CA%) (Y/N)?
Choice /c yn /n
IF "%ERRORLEVEL%"=="2" CD..& goto :PayBill2
Echo.
:PBReBank
Set /p BANK=Bank: 
IF NOT "!%BANK%!"=="X" goto :PayBillError1
SET PBCD=%CD%
cd %FD%
CD USERS
CD %ACC%
CD %BANK%
Set /p BALANCE=<Balance.dll
Set /a BalanceTest=%BALANCE%/%CT%
IF "%BALANCETEST%"=="0" goto :PayBillError2
set /a BALANCE=%BALANCE%-%CT%
Echo %BALANCE%> BALANCE.dll
Echo [%DATE%, %TIME%] Payed bill to %CN%(%CA%), -%CT%p>> Log.log

cd..
cd..

cd %CA%
If exist UMSNB CD UMSNB
IF EXIST GBANK CD GBANK
IF EXIST RIVER CD RIVER

Set /p BALANCE=<BALANCE.dll
Set /a BALANCE=%BALANCE%+%CT%
Echo %BALANCE%> BALANCE.DLL
Echo [%DATE%, %TIME%] %NAME%(%ACC%) Payed a bill, +%CT%p>> Log.log
cd..

IF NOT EXIST EI.dll SET EI=0& Goto :PBEIReadSkip
SET /p EI=<EI.dll
:PBEIReadSkip
Set /a EI=%EI%+%CT%
Echo %EI%> EI.DLL
Echo [%DATE%, %TIME%] %NAME%(%ACC%) Payed %CN%(%CA%) %CT%p>> %MASTERLOG%
cd "%PBCD%"
CD..
RD "%BILL%" /q /s
IF EXIST CCDLE.tmp DEL CCDLE.tmp
Echo [%DATE%, %TIME%] Payed %CT%p to %CN%(%CA%) >> ..\bills.log
Echo Transaction completed!
Pause >nul
goto :PayBill2






:PayBillError1
Echo You do not have an account with that bank.
Echo.
Goto :PBReBank


:PayBillError2
CD "%PBCD%"
Echo You do not have enough funds in that account (%BALANCE%p)
Echo.
Goto :PBReBank


:BillLog
CLS
%LOCATE% 5 0
Type Bills.log
%clearline% 0
%clearline% 1
%clearline% 2
%clearline% 3
%clearline% 4
%locate% 0 0
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo BillingPRO [Verison 2.0]
Echo (C)2018 Igtampe, No Rights Reserved
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Pause >nul
goto :EOF


:PreAdmin
IF "%ACC%"=="00000" goto :Admin
IF "%ACC%"=="33118" goto :Admin
if "%ACC%"=="57174" goto :Admin
goto :EOF

:adminerror
Echo.
echo User %UACC% does not exist
goto :adminerror2

:admin
set OCD=%CD%
cd..
CLS
color 0C
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo            บ UMSNB: [%UUMSNB%]   GBANK: [%UGBANK%]   RIVER: [%URIVER%]
Echo            บ
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo UMS National Bank :                      Monthly Income    : 
Echo GBank             :                      Extra Income      : 
Echo Riverside Bank    :                                        :
echo                   :                                        :
Echo              Total:                                   Total: 
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo Their Tax Bracket :
echo Amount due on 15th:
echo Taken from Account: 
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo.
Echo User to administrate:
:adminerror2
set /p UACC=:
if "%UACC%"=="CANCEL" goto :AEOF
if not exist "%UACC%" goto :adminerror
Echo.
Echo Loading User Information...
cd %UACC%

:AdminReload
set /p Uname=<name.dll
set UUMSNB= 
set UGBANK= 
set URIVER= 
if exist UMSNB set UUMSNB=X
if exist GBANK set UGBANK=X
if exist RIVER set URIVER=X

set UMSNBBalance=0
set GBANKBalance=0
set RIVERBalance=0
set Income=0
Set EI=0

if exist income.dll set /p Income=<Income.dll
if exist EI.dll set /p EI=<EI.dll
set /a TotalIncome=%income%+%EI%
if "%UUMSNB%"=="X" Call :ChkBalance UMSNB ONLYCHECK
if "%UGBANK%"=="X" Call :ChkBalance GBANK ONLYCHECK
if "%URIVER%"=="X" Call :ChkBalance RIVER ONLYCHECK
Set /a TotalBalance=%UMSNBBalance%+%GBANKBalance%+%RiverBalance%

Set /a N=%UMSNBBalance%
Call :CSeparate DUMSNBBalance
Set /a N=%GBANKBalance%
Call :CSeparate DGBANKBalance
Set /a N=%RIVERBalance%
Call :CSeparate DRIVERBalance
Set /a N=%TOTALBalance%
Call :CSeparate DTOTALBalance



%Scounter% "%DUMSNBBalance%"
set UMSNBNum=%result%
%Scounter% "%DGBANKBalance%"
set GBANKNum=%result%
%Scounter% "%DRIVERBalance%"
set RIVERNum=%result%
%Scounter% "%DTotalBalance%"
set TOTALNum=%result%
%SCOUNTER% "%UNAME% (%UACC%)"
Set RDSLMAX=%RESULT%

Set /a UMSNBNum=22-%UMSNBnum%
Set /a GBANKNum=22-%GBANKnum%
Set /a RIVERNum=22-%RIVERnum%
set /a TOTALNUM=22-%TOTALnum%

set uun=
set gbn=
set rin=
set ttn=

call :PreSpaceAdd UUN %UMSNBnum%
call :PreSpaceAdd GBN %GBANKnum%
call :PreSpaceAdd RIN %RIVERnum%
call :PreSpaceAdd ttn %TOTALnum%

set taxbracket=5
set TI=%TotalIncome%

set /a TBT=%TI%/1000000
if "%TBT%"=="0" set TaxBracket=3

set /a TBT=%TI%/100000
if "%TBT%"=="0" set TaxBracket=1


set /a Tax=%TI%*%TaxBracket%
set /a Tax=%TAX%/100

If "%URIVER%"=="X" set TOPB=River
IF "%UGBANK%"=="X" set TOPB=GBank
IF "%UUMSNB%"=="X" set TOPB=UMS National Bank

Set /a N=%INCOME%
Call :CSeparate DIncome
Set /a N=%EI%
Call :CSeparate DEI
Set /a N=%TotalINCOME%
Call :CSeparate DTotalIncome
Set /a N=%Tax%
Call :CSeparate DTAX


set UIsOnline= 
If exist IsOnline.dll set UIsOnline=X
Set ULock= 
if exist Lockdown.marker set ULock=X

:ReDisplay
Color 0C
cls
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo %UNAME% (%UACC%) บ UMSNB: [%UUMSNB%]   GBANK: [%UGBANK%]   RIVER: [%URIVER%]
Set RDSL=0

:RDIsplaySpaceLoop
@echo off
SET /A RDSL=%RDSL%+1
IF "%RDSL%"=="%RDSLMAX%" goto :RDSLC
Type %common%\space
goto :RDISPLAYSPACELOOP

:RDSLC
type %COMMON%\AdminPrespace
IF "%UISONLINE%"==" " %EC% 03 "[Offline]"
IF "%UISONLINE%"=="X" %EC% 0A "[Online]"
IF "%ULOCK%"=="X" type %common%\SPACE& %EC% C0 "[Locked Out]"
Echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo UMS National Bank : %DUMSNBBalance%p%uun%Monthly Income    : %DINCOME%p
Echo GBank             : %DGBANKBalance%p%GBN%Extra Income      : %DEI%p
Echo Riverside Bank    : %DRIVERBalance%p%RIN%                  :
echo                   :                                        :
Echo              Total: %DTotalBalance%p%ttn%             Total: %DTotalIncome%p
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
If "%TaxBracket%"=="5" %ec% 0C "Their tax bracket"& type %SPACE%& type %colon%& type %SPACE%& %EC% 6E "High, 5 percent"
If "%TaxBracket%"=="3" %ec% 0C "Their tax bracket"& type %SPACE%& type %colon%& type %SPACE%& %EC% 2A "Middle, 3 percent"
If "%TaxBracket%"=="1" %ec% 0C "Their tax bracket"& type %SPACE%& type %colon%& type %SPACE%& %EC% 3B "Low, 1 percent"
echo.
%EC% 0C "Amount due on 15th"& type %colon%& type %SPACE%& %EC% 4F "%DTax%p"
echo.
echo Taken from Account: %TOPB%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo.
IF "%RDARG%"=="1" goto :AdminAdd
If "%RDARG%"=="2" Goto :AdminRemove
IF "%RDARG%"=="3" Goto :AdminEdit
If "%RDARG%"=="4" Goto :AdminLock
If "%RDARG%"=="5" Goto :AdminReset
If "%RDARG%"=="6" Goto :AdminName
If "%RDARG%"=="7" Goto :AdminMain2
If "%RDARG%"=="8" goto :AdminLogCheck
If "%RDARG%"=="9" Goto :AdminAccessLogCheck
If "%RDARG%"=="10" Goto :AdminMasterLogCheck
IF "%RDARG%"=="12" goto :AdminINCOME
IF "%RDARG%"=="13" goto :AdminTAX
Goto :AdminMAIN

:AdminLogCheck
Set RDARG=0
Set /p AAB=BANK: 
IF NOT EXIST %AAB% GOTO :AdminLogCheck
IF "%AAB%"=="CANCEL" Goto :REDISPLAY
cd %AAB%
Color 0C
cls
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Type Log.log
Pause >nul
cd..
goto :ReDisplay

:AdminAccessLogCheck
Set RDARG=0
set OOCD=%CD%
CD %FD%
CD IncomeMan
cls
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Type AccessLog.log
Pause >nul
CD %OOCD%
goto :ReDisplay


:AdminMasterLogCheck
Set RDARG=0
set OOCD=%CD%
CD..
CD 33118
cls
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Type MasterLog.log
Pause >nul
CD %OOCD%
goto :ReDisplay



:AdminName
Set RDARG=0
Set /p UNAME=New Name: 
Echo %UNAME%> NAME.dll
goto :AdminReload


:AdminReset
Set RDARG=0
Set /p AAB=New PIN: 
IF "%AAB%"=="CANCEL" Goto :REDISPLAY
Echo %AAB%> PIN.dll
goto :ReDisplay

:AdminLock
set RDARG=0
if not exist lockdown.marker echo lockdown> Lockdown.marker& Set ULOCK=X& goto :AdminReload
If exist Lockdown.marker Del lockdown.marker& Set ULOCK= & goto :AdminReload
goto :AdminReload

:ADMINEDIT
Set RDARG=0
Set /p AAB=New Income: 
IF "%AAB%"=="CANCEL" Goto :REDISPLAY
Echo %AAB%> Income.dll
goto :AdminReload

:AdminRemove
Set RDARG=0
Set /p AAB=BANK: 
IF NOT EXIST %AAB% GOTO :ADMINREMOVE
IF "%AAB%"=="CANCEL" Goto :REDISPLAY
Set /p AAP=AMNT: 
Set /a %AAB%BALANCE=!%AAB%BALANCE!-%AAP%
cd %AAB%
Echo !%AAB%BALANCE!> Balance.dll
Echo [%DATE%, %TIME%] IncomeMan Removed %AAP%p >> log.log
cd..
Goto :AdminReload

:AdminAdd
Set RDARG=0
Set /p AAB=BANK: 
IF NOT EXIST %AAB% GOTO :ADMINADD
IF "%AAB%"=="CANCEL" Goto :REDISPLAY
Set /p N=AMNT: 
IF /i "%N%"=="GOD" set AAP=550000
IF /i "%N%"=="DEMIGOD" Set AAP=450000
IF /i "%N%"=="QUARTERGOD" Set AAP=350000
IF /i "%N%"=="NORMAL" SET AAP=300000
CALL :CJOIN AAP
Set /a %AAB%BALANCE=!%AAB%BALANCE!+%AAP%
Choice /c yn /n /m "TAX: "
Set AAL=%ERRORLEVEL%
cd %AAB%
Echo !%AAB%BALANCE!> Balance.dll
IF "%AAL%"=="1" Echo [%DATE%, %TIME%] IncomeMan added %AAP%p, Taxable. >> log.log
IF "%AAL%"=="2" Echo [%DATE%, %TIME%] IncomeMan added %AAP%p, Not Taxable. >> log.log
cd..
IF "%AAL%"=="1" Goto :AdminAddTaxable
Goto :AdminReload

:AdminAddTaxable
Set /a EI=%EI%+%AAP%
Echo %EI%> EI.dll
Set /a TOTALINCOME=%TOTALINCOME%+%AAP%
goto :AdminReload

:AdminMain2
Echo.
Echo.
Echo.
Echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [8.] Check Bank Log    [0.] Check MasterLog  [T.] Apply Tax  [7.] Back
echo [9.] Check Access Log  [I.] Apply Income     [E.] Exit       [A.] Another User
Choice /c 1234567890eITA /n >nul
SET RDARG=%ERRORLEVEL%
IF "%RDARG%"=="11" goto :AEOF
IF "%RDARG%"=="14" goto :AdminAgain
IF "%RDARG%"=="7" SET RDARG=0
Goto :ReDisplay


:AdminMain
Echo.
Echo.
Echo.
Echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [1.] Add Income     [3.] Edit User Income  [5.] Reset Pin    [7.] More
echo [2.] Remove Income  [4.] Lock/Unlock       [6.] Change Name  [ IncomeMan v2.2 ]
Choice /c 1234567890eIT /n >nul
SET RDARG=%ERRORLEVEL%
IF "%RDARG%"=="11" goto :AEOF
Goto :REDISPLAY

:AdminINCOME
Set RDARG=0
SET INCD=%CD%
CD %FD%
cd INCOMEMAN
Set NoPass=1
CALL INCOMEMAN.BAT /APPLYINCOME
Set NoPass=0
CD %INCD%
goto :AdminReload

:AdminTAX
Set RDARG=0
SET INCD=%CD%
CD %FD%
cd INCOMEMAN
Set NoPass=1
CALL INCOMEMAN.BAT /TAX
Set NoPass=0
CD %INCD%
goto :AdminReload

:AdminAgain
cd %OCD%
goto :Admin

:AEOF
Color 0A
cd %OCD%
goto :eof


:DLOADANIM
goto :Eof
Set /a DLoadAnim=%DLoadAnim%+1
IF "%DLoadAnim%"=="1" set DLoadAnimChar=/
IF "%DLoadAnim%"=="2" set DLoadAnimChar=-
IF "%DLoadAnim%"=="3" set DLoadAnimChar=\
IF "%DLoadAnim%"=="4" set DLoadAnimChar=:& Set DLoadAnim=0
%Locate% 23 8
Echo %DLOADAnimChar%
goto :EOF


:Directory
set DLoadAnim=0
Set DLA=Call :DLoadAnim
set ODP2=0
if "%1"=="OnlyDisplay" set OD=1& goto :DLOAD
cls
%top%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set Dire=
Echo.
%FLAG% NoShaddow
Echo.
Echo UMSWEB Directory System.
Set /p DIRE=Press enter or enter a search term: 
Echo.
rem echo on
IF NOT "%DIRE%"=="" Echo Searching....
IF "%DIRE%"=="" Echo Loading...





:DLOAD
Set R=0
set OCD=%CD%
cd %FD%
cd INCOMEMAN
if Not exist USERLIST.isf goto :NoUsers
set A=0

:FindValue
Set /a A=%A%+1%
Type Userlist.isf| Find "USER%A%:"> IsfReaderTemp.tmp
IF "%ERRORLEVEL%"=="1" Goto :DisplayFindings2
Set /p READ=<ISFREADERTEMP.tmp
SET USER%A%=!READ:USER%A%:=!

Goto :FindValue


:DisplayFindings2
Set C=0

:done
%DLA%
Del ISFReaderTemp.tmp
cd..
cd USERS
echo.
set /a m=%A%-1
:redone
set A=0
set SEARCH=0
if NOT "%DIRE%"=="" set SEARCH=1& goto :LoadUserIncome
cls
%TOP%
type %COMMON%\DIRTable.txt
%locate% 4 0
goto :LoadUserIncome

:E1
echo บ !user%a%! บ UMSNB: [ ]   GBANK: [ ]   RIVER: [ ] บ USER DOESN'T EXIST
if "%A%"=="%M%" goto :PreDoneLoad
goto :LoadUserIncome

:E2
cd..
if "%A%"=="%M%" goto :DoneLoad
goto :LoadUserIncome

:LUIP2OD
set ODP2=1
%LOCATE% 22 0
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Set /p D=Destination (ID\BANK or NEXT or CANCEL): 
if /i "%D%"=="NEXT" goto :LUIP2ODN
cd %OCD%
goto :eof

:LoadUserIncomePart2
if "%SEARCH%"=="1" goto :LoadUserIncome
if "%OD%"=="1" goto :LUIP2OD
%LOCATE% 22 0
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Press a key to proceed to the next page.
Pause >nul

:LUIP2ODN
cls
%TOP%
type %COMMON%\DIRTable.txt
%locate% 4 0


:LoadUserIncome
Set /a A=%a%+1
If not exist !User%A%! goto :E1
cd !User%A%!
if not exist Name.dll goto :E2
Set /p User%A%I=<Name.dll
Set U= 
Set G= 
Set R= 
If exist UMSNB set U=X
if exist GBANK set G=X
if exist RIVER set R=X

CD..
set DA=%A%
Set /a TenLess=%A%/10
if "%TENLESS%"=="0" set DA=0%A%
IF "%SEARCH%"=="0" Echo บ !user%a%! บ UMSNB: [%U%]   GBANK: [%G%]   RIVER: [%R%] บ !user%a%i!
IF "%SEARCH%"=="1" Echo บ !user%a%! บ UMSNB: [%U%]   GBANK: [%G%]   RIVER: [%R%] บ !user%a%i! >> %ACC%.tmp
if "%A%"=="%M%" goto :PreDoneLoad
if "%A%"=="18" goto :LoadUserIncomePart2
if "%A%"=="36" goto :LoadUserIncomePart2
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

:DONELOADOD
REM  บ  I D  บ Registered Bank Accounts             บ Name
echo บ 99999 บ POOL1: [%U%]   POOL2: [%G%]   POOL3: [%R%] บ PRIZE POOL ACCOUNT
%LOCATE% 22 0
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
IF "%ODP2%"=="0" Set /p D=Destination (ID\BANK or CANCEL): 
IF "%ODP2%"=="1" Set /p D=Destination (ID\BANK or BACK or CANCEL): 
if /i "%D%"=="BACK" Set A=0&goto :LUIP2ODN
cd %OCD%
goto :eof

:PPoolCheck
cd 99999
Set U= 
Set G= 
Set R= 
If exist UMSNB set U=X
if exist GBANK set G=X
if exist RIVER set R=X
cd..
goto :EOF


:PreDoneLoad
IF EXIST 99999 call :PPoolCheck
if "%OD%"=="1" goto :DONELOADOD
if "%SEARCH%"=="1" goto :SearchResults
echo บ 99999 บ POOL1: [%U%]   POOL2: [%G%]   POOL3: [%R%] บ PRIZE POOL ACCOUNT
%LOCATE% 22 0
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Press a key to return to the main menu.



:DoneLoad
@echo off
Pause >nul
if "%L1%"=="1" goto :EOF
cd %OCD%
Goto :ReDrawMain

:SRBlank
goto :eof

:SearchResults
cls
%TOP%
type %COMMON%\DIRTable.txt
%locate% 4 0
Type %ACC%.tmp| Find /i "%DIRE%"
if NOT "%ERRORLEVEL%"=="0" call :SRBlank
%LOCATE% 22 0
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Set Dire=
Set /p Dire=Enter a new search term or hit enter to quit: 
If NOT "%DIRE%"=="" goto :SearchResults
del %ACC%.tmp
if "%L1%"=="1" goto :EOF
cd %OCD%
Goto :ReDrawMain



:DEBUG
IF NOT "%ACC%"=="57174" goto :EOF
set DR=%1
Echo DEBUG BREAK MODE
Echo.

:CDEBUG
set /p c=%CD%\
if /i "%C%"=="EXIT" goto :eof
%C%
goto :CDEBUG

:outtamain
Echo [%DATE%, %TIME%] %NAME% (%ACC%) Logged Out >> %AccessLog%
del isonline.dll
cd %FD%
goto :welcome

:NEWBANK
cls
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo.
Echo.
Echo.
Echo.
echo.
Echo.
Echo.
Echo.
Echo.
IF "%BANK%"=="UMSNB" echo ออออออออออออออออออออออออออออ[The UMS National Bank]ออออออออออออออออออออออออออออ
IF "%BANK%"=="GBANK" echo อออออออออออออออออออออออออออออออออออ[G-Bank]ออออออออออออออออออออออออออออออออออออ
IF "%BANK%"=="RIVER" echo อออออออออออออออออออออออออออออออ[Riverside Bank]ออออออออออออออออออออออออออออออออ
echo.
Echo You do not have a bank acout with %BankName%.
choice /c yn /n /m "Would you like to set one up now (Y/N?)"
IF /i "%ERRORLEVEL%"=="1" goto :RNB
set NNB=1
goto :EOF


:RNB

MD %BANK%
cd %BANK%
MD CHECKS
Echo 0000> Balance.dll
Echo [%DATE%, %TIME%] Account Created. >> log.log
Echo [%DATE%, %TIME%] %NAME% Created a %BANK% Account.>> %MASTERLOG%
cd..
SET %BANK%=X
goto :eof

:Bank
set nnb=0
set newchecks=0
set BANK=%1
IF "%BANK%"=="UMSNB" set BankName=The UMS National Bank
IF "%BANK%"=="GBANK" set BankName=G-Bank
IF "%BANK%"=="RIVER" set BankName=Riverside Bank
if not exist "%BANK%" call :NewBank
if "%NNB%"=="1" goto :eof
cd %BANK%


:Rebank
cls

Call :CHKBALANCE %BANK%
Set N=!%bank%Balance!
Call :CSeparate DisplayBalance


%locate% 2 0
cd CHECKS
if not exist "* *" CALL :CCDNoChecks
IF EXIST CCDLE.TMP DEL CCDLE.tmp
Dir /p /b
cd..

%Locate% 0 0
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo.
Echo.
Echo.
Echo.
echo.
Echo.
Echo.
Echo.
Echo.
IF "%BANK%"=="UMSNB" echo ออออออออออออออออออออออออออออ[The UMS National Bank]ออออออออออออออออออออออออออออ
IF "%BANK%"=="GBANK" echo อออออออออออออออออออออออออออออออออออ[G-Bank]ออออออออออออออออออออออออออออออออออออ
IF "%BANK%"=="RIVER" echo อออออออออออออออออออออออออออออออ[Riverside Bank]ออออออออออออออออออออออออออออออออ
echo.
Echo Bank Menu:                                                                     
Echo                                         อออออออออออออออออออออออออออออออออออออออ
Echo   [1.] Cash in checks                   Welcome %NAME%
Echo   [2.] Write out a Check                อออออออออออออออออออออออออออออออออออออออ
Echo   [3.] Transfer Money Between Banks     Your current Balance is: %DisplayBalance%p
Echo   [4.] Check your Log                   อออออออออออออออออออออออออออออออออออออออ
echo   [5.] Close this bank account                                                 
echo   [6.] Disconnect                                                              
echo.
CHOICE /C 123456D /N /m ":"
SET Z=%ERRORLEVEL%

%ClearLine% 23
%ClearLine% 22
%ClearLine% 21
%ClearLine% 20
%ClearLine% 19
%ClearLine% 18
%ClearLine% 17
%ClearLine% 16
%ClearLine% 15
%ClearLine% 14
%ClearLine% 13
%locate% 13 0

If "%Z%"=="1" call :CashCheck
if "%Z%"=="2" call :MakeCheck
if "%Z%"=="4" call :LogCheck


if "%Z%"=="7" call :DEBUG D2
:D2
cd..
If "%Z%"=="3" goto :Transfer
if "%Z%"=="5" goto :RemoveBank
Echo.
echo.
echo.
%CTE% " Goodbye"
if "%Z%"=="6" goto :EOF
goto :rebank

:NoTransfer
echo.
echo You don't have a bank account there.
echo.
goto :transfer

:NoTransfer2
Echo You don't have enough funds to complete that transfer.
ehco.
goto :transfer

:Transfer
Echo.
Set /p TB=Transfer to which bank: 
if /i "%TB%"=="Cancel" goto :Rebank
if not exist "%TB%" goto :NoTransfer
Set /p N=Pecunia to Transfer (or ALL): 
if /i "%N%"=="ALL" goto :FLUSH
Call :CJoin TP
CD %BANK%
REM Echo on
set /a TT=!%BANK%Balance!-%TP%
Echo %TT%| Find /i "-"
if "%ERRORLEVEL%"=="0" goto :NoTransfer2
REM @Echo off
REM Pause >nul
if "%TT%"=="0" set %TT%=000
Echo %TT%> balance.dll
echo [%DATE%, %TIME%] Transfered %TP%p to %TB% >> log.log
cd..
cd %TB%
set /p FTB=<Balance.dll
set /a FTB=%FTB%+%TP%
echo %FTB%> Balance.dll
echo [%DATE%, %TIME%] Transfered %tP%p from %BANK% >> log.log
cd..
Echo Transfered %TP%p to %TB%
Pause >nul
goto :rebank



:FLUSH
cd %BANK%
Echo 00> balance.dll
echo [%DATE%, %TIME%] Transfered ALL FUNDS to %TB% >> log.log
cd..
cd %TB%
set /p FTB=<Balance.dll
set /a FTB=%FTB%+!%BANK%BALANCE!
echo %FTB%> Balance.dll
echo [%DATE%, %TIME%] Transfered ALL FUNDS from %BANK% >> log.log
cd..
Echo All money has been transfered to %TB% 
Echo Would you like to close your account in %BANKNAME% (Y/N)?
choice /c yn /n
If /i "%ERRORLEVEL%"=="1" goto :RealRemoveBank
goto :REBANK

:RemoveBankError
echo.
Echo This account is not empty. Please empty it out before closing it.
pause >nul
goto :rebank

:Removebank
Echo.
Set /a BT=!%bank%Balance!
if NOT "%BT%"=="0" Goto :RemoveBankError
echo.
Echo Are you sure you want to close your %bank% (y/n)?
Echo.
choice /c yn /n
If /i "%ERRORLEVEL%"=="1" goto :RealRemoveBank
Goto :Rebank

:RealRemoveBank
RD /Q /S %BANK%
Set %BANK%= 
Echo.
Echo Your %BANK% Account is now closed.
echo [%DATE%, %TIME%] %NAME% (%ACC%) CLOSED %BANK% account.>> %Masterlog%
Pause >nul
goto :EOF


:logcheck
CLS
%LOCATE% 1 0
Type log.log
%clearline% 0
%locate% 0 0
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Pause >nul
goto :eof

:CantMakeCheck2
echo.
Echo Can't make checks under 10p
pause >nul
echo.
goto :CMC2C

:CantMakeCheck
echo.
Echo That account either doens't exist, or doesn't have an account with that bank.
echo %FD%\users\%D%\CHECKS Doesn't Exist
pause >nul
goto :MakeCheck

:UMSNBCheckGraphic
%Renderbox% 13 3 12 53 - - 3F
%LCOLOR% 3F
%LOCATE% 5 42 & echo  THE UMS NATIONAL BANK 
%locate% 7 14 & echo  Pay:_____________                    ___________p
%locate% 11 14& echo  Memo:__________________________    %DATE%
%locate% 13 14& echo  %RANDOM%-%RANDOM%-%RANDOM%
goto :eof

:GBANKCheckGraphic
%Renderbox% 13 3 12 53 - - 6F
%LCOLOR% 6F
%LOCATE% 5 58 & echo G-BANK 
%locate% 7 14 & echo  Pay:_____________                    ___________p
%locate% 11 14& echo  Memo:__________________________    %DATE%
%locate% 13 14& echo  %RANDOM%-%RANDOM%-%RANDOM%
goto :eof

:RIVERCheckGraphic
%Renderbox% 13 3 12 53 - - 1F
%LCOLOR% 1F
%LOCATE% 5 49 & echo  RIVERSIDE BANK 
%locate% 7 14 & echo  Pay:_____________                    ___________p
%locate% 11 14& echo  Memo:__________________________    %DATE%
%locate% 13 14& echo  %RANDOM%-%RANDOM%-%RANDOM%
goto :eof

:CantMakeCheck3
echo.
Echo Please don't make checks to yourself.
pause >nul
goto :MakeCheck


:MakeCheck
Echo.
Echo Stand by, Loading Directory...
set CNUM=
Call :Directory OnlyDisplay
if /i "%D%"=="cancel" goto :eof
cls 
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
IF NOT EXIST "%FD%\users\%D%\CHECKS" Goto :CantMakeCheck
Echo "%D%"|FIND /i "%ACC%">nul
rem IF "%ERRORLEVEL%"=="0" goto :CantMakeCheck3
call :%BANK%CheckGraphic
%LCOLOR% 0A
%locate% 17 0
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo Please fill in the check above.

IF "%BANK%"=="RIVER" %LCOLOR% 1F
IF "%BANK%"=="UMSNB" %LCOLOR% 3F
IF "%BANK%"=="GBANK" %LCOLOR% 6F

%locate% 5 14 & Echo  %NAME%
%locate% 7 20
Echo %D%
%locate% 7 53
Set /p N=
Call :CJoin CA
%LOCATE% 11 21
Set /p CheckMemo=
%Lcolor% 0A
%ClearLine% 18
%locate% 18 0
choice /c yn /n /m "Loan (y/n) :"
IF "%ERRORLEVEL%"=="1" set L=Y
IF "%ERRORLEVEL%"=="2" set L=N
set /a CATest=%CA%/10
if "%CATEST%"=="0" goto :CantMakeCheck2
%Clearline% 18
%locate% 18 0
Echo Writing check...
IF NOT EXIST "%FD%\users\%D%\cnum.dll" Echo 01> "%FD%\users\%D%\cnum.dll"
Set /p CNum=<"%FD%\users\%D%\cnum.dll"
%SCounter% %CNUM%
IF "%RESULT%"=="1" Set CNUM1=000%CNUM% 
IF "%RESULT%"=="2" Set CNUM1=00%CNUM% 
IF "%RESULT%"=="3" Set CNUM1=0%CNUM% 
IF "%RESULT%"=="4" Set CNUM1=%CNUM% 


MD "%FD%\users\%D%\checks\ID-%CNUM1%%NAME% %CA%"
Echo %ACC%\%BANK%> "%FD%\users\%D%\checks\ID-%CNUM1%%NAME% %CA%\CF.dll"
Echo %NAME%> "%FD%\users\%D%\checks\ID-%CNUM1%%NAME% %CA%\CN.dll"
Echo %CA%> "%FD%\users\%D%\checks\ID-%CNUM1%%NAME% %CA%\CA.dll"
Echo %CheckMemo%> "%FD%\users\%D%\checks\ID-%CNUM1%%NAME% %CA%\MEMO.dll"
if /i "%L%"=="Y" echo LOAN> "%FD%\users\%D%\checks\ID-%CNUM1%%NAME% %CA%\LOAN.dll"

Set /a CNUM=%CNUM%+1
%SCounter% %CNUM%
IF "%RESULT%"=="1" set CNUM=0%CNUM%
Echo %CNUM%> "%FD%\users\%D%\cnum.dll"


Echo [%DATE%, %TIME%] %NAME% (%acc%\%bank%) CHECK +%CA%p >> "%FD%\users\%D%\log.log"
Echo [%DATE%, %TIME%] %NAME% (%acc%\%bank%) CHECK TO %D%, %CA%p >> %MASTERLOG%
Echo [%DATE%, %TIME%] You have written out a check which was worth %CA% to %D% >> log.log
%ClearLine% 18
%LOCATE% 18 0
Echo Check has been written out to %D%, now he must cash it in.
echo.
if /i "%L%"=="Y" Echo This check is a LOAN CHECK. Report Loan Forgiveness to the UMS Government& Echo should it occur. Make sure to monitor payments.
pause >nul
goto :eof


:nocheck
echo.
Echo Could not find that check!
pause >nul
goto :cashcheck2


:CCDNOCHECKS
Echo.
Echo.
Echo.
Echo.
Echo.
echo                                   [No Checks]
Echo.
Echo.
Echo.
Echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
goto :EOF

:CashCheck
set loan=0
Set LTEXT=
Echo.
cd Checks
:cashcheck2

cls

%locate% 2 0
if not exist "* *" CALL :CCDNoChecks
IF EXIST CCDLE.TMP DEL CCDLE.tmp
Dir /p /b

%Locate% 0 0
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo.
Echo.
Echo.
Echo.
echo.
Echo.
Echo.
Echo.
Echo.
IF "%BANK%"=="UMSNB" echo ออออออออออออออออออออออออออออ[The UMS National Bank]ออออออออออออออออออออออออออออ
IF "%BANK%"=="GBANK" echo อออออออออออออออออออออออออออออออออออ[G-Bank]ออออออออออออออออออออออออออออออออออออ
IF "%BANK%"=="RIVER" echo อออออออออออออออออออออออออออออออ[Riverside Bank]ออออออออออออออออออออออออออออออออ
echo.


%ClearLine% 23
%ClearLine% 22
%ClearLine% 21
%ClearLine% 20
%ClearLine% 19
%ClearLine% 18
%ClearLine% 17
%ClearLine% 16
%ClearLine% 15
%ClearLine% 14
%ClearLine% 13
%locate% 13 0
Echo.


set BREAK=0
Echo Type the ID of the check (ID-0001) or "Exit".
echo.
SET CHECK=
set /p check=:
IF "%CHECK%"=="" Goto :NoCheck
if "%Check%"=="DEBUG" call :DEBUG D3
if /i "%check%"=="exit" goto :EOF
If not exist "%check% *" goto :nocheck
:D3
DIR /b | FIND /i "%CHECK%"> ccdle.tmp
Set /p CHECK=<ccdle.tmp
cd "%check%"
set /p CA=<CA.dll
set /p CF=<CF.dll
Set /p CN=<CN.dll
SET LTEXT=
IF EXIST LOAN.dll SET LOAN=1& Set LTEXT=loan 
Set N=%CA%
Call :CSeparate CACS
set /p CheckMemo=<MEMO.dll

cls 
%TOP%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
call :%BANK%CheckGraphic
%LCOLOR% 0A
%locate% 17 0
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ

IF "%BANK%"=="RIVER" %LCOLOR% 1F
IF "%BANK%"=="UMSNB" %LCOLOR% 3F
IF "%BANK%"=="GBANK" %LCOLOR% 6F

%locate% 5 14 & Echo  %CN%
%locate% 7 20
Echo %ACC%\%BANK%
%locate% 7 53
Echo %CACS%
%LOCATE% 11 21
IF "%CheckMemo%"=="" (Echo.) else (Echo %CheckMemo%)
%Lcolor% 0A
%locate% 18 0
Echo Cash a %LTEXT%check from %CN% (%CF%) worth %CACS%p (Y/N)?
choice /c yn /n 
Set C=%ERRORLEVEL%
cd..
IF /i "%C%"=="2" goto :CashCheck2
echo.
Echo.
CD %FD%
cd users
cd %CF%
set /p CFBalance=<balance.dll
set /a BounceCheck=%CA%/%CFBalance%
IF NOT "%BounceCheck%"=="0" goto :checkbounce
set /a CFBalance=%CFBalance%-%CA%
Echo %CFBalance%>Balance.dll

Echo [%DATE%, %TIME%] %NAME% (%acc%\%bank%) CASHED -%CACS%p >> Log.log
Echo [%DATE%, %TIME%] %NAME% (%acc%\%bank%) CASHED %CN%'s (%CF%), -%CACS%p >> %MASTERLOG%

cd %FD%
CD USERS
cd %ACC%

IF "%LOAN%"=="1" goto :LEIS
set EI=0
If exist EI.dll set /p EI=<EI.dll
Set /a EI=%EI%+%CA%
Echo %EI%> EI.dll
:LEIS

CD %BANK%

set /a %bank%balance=!%bank%Balance!+%CA%
echo !%bank%Balance!> balance.dll

Echo [%DATE%, %TIME%] CASHED %CN%'s (%CF%), +%CACS%p >> Log.log


CD CHECKS

RD /s /q "%CHECK%"
DEL CCDLE.tmp
SET N=!%Bank%Balance!
Call :CSeparate CashCheckNewBalance

Echo Check Cashed. Your new balance is %CashCheckNewBalance%p.
IF "%LOAN%"=="1" echo This is a LOAN CHECK. You must pay it back in accordance to the terms the& echo Loaner has set. 
pause >nul
goto :CashCheck2

:CheckBounce
Echo This check has bounced. Please contact %cn%.
echo.
pause >nul
goto :cashheck2

:PreSpaceAdd
Set AAA=0
Set max=%2
set var=%1

:SpaceAdd
Set /a AAA=%AAA%+1
Set %VAR%=!%VAR%! 
if "%AAA%"=="%max%" goto :eof
goto :spaceadd


:EZTAX
cls
call :top
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%EC% 20 "ez"& %ec% 2E "TAX"& Echo  [Version 3.0 for Tax System Rev 2]
Echo (C)2018 Igtampe, No Rights Reserved
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Calculating Taxes....
set UMSNBBalance=0
set GBANKBalance=0
set RIVERBalance=0
set Income=0
Set EI=0

if exist income.dll set /p Income=<Income.dll
if exist EI.dll set /p EI=<EI.dll
set /a TotalIncome=%income%+%EI%
if "%UMSNB%"=="X" Call :ChkBalance UMSNB ONLYCHECK
if "%GBANK%"=="X" Call :ChkBalance GBANK ONLYCHECK
if "%RIVER%"=="X" Call :ChkBalance RIVER ONLYCHECK
Set /a TotalBalance=%UMSNBBalance%+%GBANKBalance%+%RiverBalance%

Set N=%UMSNBBalance%
Call :CSeparate UMSNBBalance
Set N=%GBANKBalance%
Call :CSeparate GBANKBalance
Set N=%RIVERBalance%
Call :CSeparate RIVERBalance
Set N=%TOTALBalance%
Call :CSeparate TOTALBalance

%Scounter% "%UMSNBBalance%"
set UMSNBNum=%result%
%Scounter% "%GBANKBalance%"
set GBANKNum=%result%
%Scounter% "%RIVERBalance%"
set RIVERNum=%result%
%Scounter% "%TotalBalance%"
set TOTALNum=%result%


Set /a UMSNBNum=22-%UMSNBnum%
Set /a GBANKNum=22-%GBANKnum%
Set /a RIVERNum=22-%RIVERnum%
set /a TOTALNUM=22-%TOTALnum%

set uun=
set gbn=
set rin=
set ttn=

call :PreSpaceAdd UUN %UMSNBnum%
call :PreSpaceAdd GBN %GBANKnum%
call :PreSpaceAdd RIN %RIVERnum%
call :PreSpaceAdd ttn %TOTALnum%

set taxbracket=5
set TI=%TotalIncome%

set /a TBT=%TI%/1000000
if "%TBT%"=="0" set TaxBracket=3

set /a TBT=%TI%/100000
if "%TBT%"=="0" set TaxBracket=1


set /a Tax=%TI%*%TaxBracket%
set /a Tax=%TAX%/100

If "%RIVER%"=="X" set TOPB=River
IF "%GBANK%"=="X" set TOPB=GBank
IF "%UMSNB%"=="X" set TOPB=UMS National Bank


Set N=%INCOME%
Call :CSeparate DIncome
Set N=%EI%
Call :CSeparate DEI
Set N=%TotalINCOME%
Call :CSeparate DTotalIncome
Set N=%Tax%
Call :CSeparate DTAX


cls
call :top
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%EC% 20 "ez"& %ec% 2E "TAX"& Echo  [Version 3.1 for Tax System Rev 2]
Echo (C)2018 Igtampe, No Rights Reserved
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo.
Echo [BALANCES]ออออออออออออออออออออออออออออ   [INCOME]ออออออออออออออออออออออออออออออ
Echo UMS National Bank : %UMSNBBalance%p%uun%Monthly Income    : %DINCOME%p
Echo GBank             : %GBANKBalance%p%GBN%Extra Income      : %DEI%p
Echo Riverside Bank    : %RIVERBalance%p%RIN%                  :
echo                   :                                        :
Echo              Total: %TotalBalance%p%ttn%             Total: %DTotalIncome%p
Echo.
echo.
Echo [TAX]ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
If "%TaxBracket%"=="5" %ec% 0A "Your tax bracket"& type %SPACE%& type %SPACE%& type %colon%& type %SPACE%& %EC% 6E "High, 5 percent"
If "%TaxBracket%"=="3" %ec% 0A "Your tax bracket"& type %SPACE%& type %SPACE%& type %colon%& type %SPACE%& %EC% 2A "Middle, 3 percent"
If "%TaxBracket%"=="1" %ec% 0A "Your tax bracket"& type %SPACE%& type %SPACE%& type %colon%& type %SPACE%& %EC% 3B "Low, 1 percent"
echo.
%EC% 0A "Amount due on 15th"& type %colon%& type %SPACE%& %EC% 4F "%DTax%p"
echo.
echo Taken from Account: %TOPB%
Pause >nul
goto :main


:CSError
Echo CommaSeparate: Variable N isn't set.
Goto :EOF


:CSeparate
IF "%N%"=="" goto :CSError
%Scounter% %N%
If "%RESULT%"=="1" Set %1=%n%
If "%RESULT%"=="2" Set %1=%n%
If "%RESULT%"=="3" Set %1=%n%
IF "%RESULT%"=="4" Set %1=%n:~0,-3%,%n:~1%
IF "%RESULT%"=="5" Set %1=%n:~0,-3%,%n:~2%
IF "%RESULT%"=="6" Set %1=%n:~0,-3%,%n:~3%
IF "%RESULT%"=="7" Set %1=%n:~0,-6%,%n:~1,-3%,%n:~4%
IF "%RESULT%"=="8" Set %1=%n:~0,-6%,%n:~2,-3%,%n:~5%
IF "%RESULT%"=="9" Set %1=%n:~0,-6%,%n:~3,-3%,%n:~6%
IF "%RESULT%"=="10" Set %1=%n:~0,-9%,%n:~1,-6%,%n:~4,-3%,%n:~7%
set N=
goto :eof

:CJoin
Set %1=%N:,=%
Set N=
Goto :eof



:CHKBalance
Set Bank=%1
if exist "%bank%" CD %Bank%
set /p %Bank%Balance=<Balance.dll
IF "%2"=="ONLYCHECK" cd..
goto :eof

:ChangePin
Set RLOAD=
Echo.
echo.
Set /p PIN=New Pin: 
echo %PIN%> Pin.dll
echo.
Set /p HINT=New Hint: 
Echo %HINT%> Hint.dll
Echo.
echo Pin was changed.
Pause >nul
goto :ReDrawMain

:exit
GOTO :EOF


-----------------------------------------------------------------------------------------------
BEGIN SHOBU CODE

For Organization I will put the code of Shobu here
-----------------------------------------------------------------------------------------------



:SHOBU
cls
call :top
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
echo.
%CARD%
Echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Press a key to enter the Casino
Pause >nul
Set CBalance=%CD%\CBalance.dll
if not exist CBalance.dll goto :WelcomeShobu
SET OCD=%CD%
cd %FD%
CD SHOBU
IF NOT EXIST MANUALGAMES MD ManualGames
Goto :ShobuMain

:WelcomeShobu
echo 50> CBalance.dll
cls
call :top
set /p CR=<%CBalance%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
%EC% 0E "Shobu Casino"& Echo.
Echo.
Echo Welcome to the SHOBU Casino! 
Echo.
Echo As part of the administration, we would like to welcome you to the casino! As
echo part of this letter, we have attached 50 credits. You can buy more credits at
echo 10 Pecunia per credit. If you see any bugs, please contact the administrator,
echo Desperate CHOPO.
Echo.
Echo Have fun!
Echo -IGT
Echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Press a Key to enter the casino.
Pause >nul
SET OCD=%CD%
cd %FD%
CD SHOBU
goto :ShobuMain

:ShobuBetaNotice
cls
call :top
set /p CR=<%CBalance%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
%EC% 0E "Shobu Casino"& Echo.
Echo.
Echo SHOBU CASINO IS CURRENTLY IN BETA
Echo.
Echo Some games won't launch, or might be broken. If you see any bugs, or would like
echo to help coding in batch, (or know how poker works because I still don't),
echo Contact Quiet CHOPO.
Echo.
Echo Thanks!
Echo -IGT
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Press a Key to enter the casino.
Pause >nul
goto :EOF


:ShobuMain
CALL :ShobuBetaNotice
cls
call :top
set /p CR=<%CBalance%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
%EC% 0E "Shobu Casino"& Echo.
Echo                                         อออออออออออออออออออออออออออออออออออออออ
Echo   [1.] Balloney Sandwich                Welcome to the Casino
Echo   [2.] Texas Hold'Em                    อออออออออออออออออออออออออออออออออออออออ
Echo   [3.] BlackJack                        You currently have %CR% Credits
Echo   [4.] Roulette                         อออออออออออออออออออออออออออออออออออออออ
echo   [5.] Slots
Echo.
Echo   [6.] Buy Credits
Echo   [7.] Sell Credits
Echo.
Echo   [8.] Manual Mode
Echo.
Echo   [9.] Leave the Casino
Echo.
CHOICE /C 123456789D /N /m ":"
SET S=%ERRORLEVEL%
IF "%S%"=="1" goto :SBalloney
IF "%S%"=="2" goto :STHold
IF "%S%"=="3" goto :SBlackJack
IF "%S%"=="4" goto :SRoulette
IF "%S%"=="5" goto :SSlots
IF "%S%"=="6" goto :SBuy
IF "%S%"=="7" goto :SSell
IF "%S%"=="8" goto :SManual
IF "%S%"=="9" goto :SLeave
IF "%S%"=="10" goto :ShobuDebug
Goto :EOF

:SManual
CD ManualGames
:SManualJD
cls
call :top
set /p CR=<%CBalance%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo Type the name of a game, NEW to make a new one, or EXIT to cancel.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Dir /b
Echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Set /p SGAME=:
IF /i "%SGAME%"=="NEW" goto :SManualNew
IF /i "%SGAME%"=="EXIT" (
	cd..
	goto :ShobuMain)
IF NOT EXIST "%CD%\%SGAME%\*" goto :SManualJD
cd %SGAME%
Type A2> A3
Type A1> A2
Echo [%TIME:~0,-6%] %NAME% Joined the game.> A1

goto :SMANUALGame

:SManualNew
Echo.
Set /p SGAME=Name of the Game: 
MD %SGAME%
CD %SGAME%
Echo [%TIME:~0,-6%] Created Game> A1
Echo [%TIME:~0,-6%] Created Game> A2
Echo [%TIME:~0,-6%] Created Game> A3
Echo %NAME%> Host
echo 0000> Pile


:SManualGAME
Set /p HOST=<HOST
set /p PILE=<PILE
%SCounter% %PILE%
Set DPile=%PILE%
IF "%RESULT%"=="1" set DPILE=000%PILE%
IF "%RESULT%"=="2" set DPILE=00%PILE%
IF "%RESULT%"=="3" set DPILE=0%PILE%
cls
call :top
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo  %SGAME% บ Created by: %HOST%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo PILE SIZE:
Echo.
%BE% %DPILE%. 0E
Echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
type A3
type A2
type A1
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
IF "%SMGC%"=="1" Goto :SMGAdd
IF "%SMGC%"=="2" Goto :SMGTake
IF "%SMGC%"=="3" Goto :SMGBuyCred
IF "%SMGC%"=="4" Goto :SMGLeave
IF "%SMGC%"=="E1" Goto :SMGAddNO
goto :SManualGameOptions

:SMGLeave
Set SMGC=0
Type A2> A3
Type A1> A2
Echo [%TIME:~0,-6%] %NAME% left the game.> A1


cd..
CD..

goto :ShobuMain

:SMGBuyCred
Set SMGC=0
Set SMGBUY=1
set SMGBUYCD=%CD%
call :SBUY
SET SMGBUY=
CD %SMGBUYCD%
goto :SManualGame



:SMGTake
SET SMGC=0
Set /a CR=%CR%+%PILE%
Echo 0000> PILE
Echo %CR%> %CBalance%

Type A2> A3
Type A1> A2
Echo [%TIME:~0,-6%] %NAME% Has taken the pile.> A1

goto :SManualGame

:SMGADDNO
Set SMGC=0
Echo You do not have enough credits.
CHOICE /C 123456789D /N /m ":" /D D /T 3
goto :SManualGame

:SMGAdd
Set SMGC=0
set /a MaxCR=%CR%-1
Set /p SMGA=How Many Credits (Max %MaxCR%): 
set /a TEST=%SMGA%/%CR%
IF "%TEST%"=="1" (
	Set SMGC=E1
	Goto :SManualGame
)
Set /a CR=%CR%-%SMGA%
Set /p PILE=<PILE
SET /a PILE=%PILE%+%SMGA%

ECHO %PILE%> PILE
Set /a TEST=%PILE%/10
IF "%TEST%"=="0" echo 0%PILE%> PILE

Echo %CR%> %CBalance%
Set /a TEST=%CR%/10
IF "%TEST%"=="0" echo 0%CR%> %CBalance%

Type A2> A3
Type A1> A2
Echo [%TIME:~0,-6%] %NAME% Has added %SMGA%cc to the pile.> A1

goto :SManualGame



:SManualGameOptions
rem  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [1.] Add to the pile   [3.] Buy Credits   บ%NAME% (%ACC%)
Echo [2.] Take the pile     [4.] Disconnect    บ%CR% Credits
CHOICE /C 123456789D /N /m ":" /D D /T 5
SET SMGC=%ERRORLEVEL%
Goto :SManualGame


:SMGAdd


goto :ShobuMain

c o n c e p t



aaaaaaaaaaaaa






aaaaaaaaaaaaa

อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
[TIME] Third Latest Action
[TIME] Second Latest Action
[TIME] Latest Action
อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
[1.] Add to the pile   [3.] Buy Credits   บ IGTAMPE (57174)
[2.] Take the pile     [4.] Disconnect    บ 256 Credits


------------------------------------------------------------------------------------------------------------------------------
These should be easier to code:
Slots can basically use most of the code from SLOTS.bat
Blackjack is another RNG to reach 21

These are Multiplayer Games:
Roulette is just a random number generator for 1-36, making sure to tag them red and black numbers, plus 0 and 00.
And Balloney we can re-use most of the BalloneyNET Code
THOLD well I honestly don't fucking know still
------------------------------------------------------------------------------------------------------------------------------

:SSlots
:SRoulette
:SBlackJack
:STHold
:SBalloney
Echo.
Echo This game isn't coded yet.
Pause >nul
goto :ShobuMain


:SBUYE1
Echo You do not have a %A% Bank Account
Pause >nul
cd %FD%
CD SHOBU
IF "%SMGBUY%"=="1" goto :eof
Goto :SHOBUMAIN

:SBUYE2
Echo You do not have enough Pecunia
Pause >nul
cd %FD%
CD SHOBU
IF "%SMGBUY%"=="1" goto :eof
Goto :SHOBUMAIN


:SBuy
Echo.
:SBUYSMG
Set /p C=Buy How Many Credits (10p/Credit): 
IF "%SMGBUY%"=="1" IF /i "%C%"=="CANCEL" goto :eof
IF /i "%C%"=="CANCEL" goto :ShobuMain
Set /a B=%C%*10
Set /p A=Bank                : 
CD %OCD%
IF NOT EXIST %A% goto :SBUYE1
CD %A%
SET /P BALANCE=<Balance.dll
Set /a Test=%B%/%BAlANCE%
IF NOT "%TEST%"=="0" goto :SBUYE2
Set /a Balance=%BALANCE%-%B%
Echo %BALANCE%> Balance.dll
SET /A CR=%CR%+%C%
Echo %CR%> %CBalance%
IF "%SMGBUY%"=="1" goto :eof
Echo.
Echo Your new balance is %BALANCE% on %A%,
Echo and you now have %CR% Credits.
Echo.
Pause >nul
cd %FD%
CD SHOBU
Goto :SHOBUMAIN

:SSELLE2
Echo You do not have enough Credits
Pause >nul
cd %FD%
CD SHOBU
Goto :SHOBUMAIN

:SSELL
Echo.
Set /p C=Sell How Many Credits: 
IF /i "%C%"=="CANCEL" goto :ShobuMain
Set /a B=%C%*10
Set /p A=Bank                : 
CD %OCD%
IF NOT EXIST %A% goto :SBUYE1
CD %A%
Set /a Test=%C%/%CR%
IF NOT "%TEST%"=="0" goto :SSELLE2
SET /P BALANCE=<Balance.dll
Set /a Balance=%BALANCE%+%B%
Echo %BALANCE%> Balance.dll
SET /A CR=%CR%-%C%
Echo %CR%> %CBalance%
Echo.
Echo Your new balance is %BALANCE% on %A%,
Echo and you now have %CR% Credits.
Echo.
Pause >nul
cd %FD%
CD SHOBU
Goto :SHOBUMAIN


:SLeave
cd %OCD%
Goto :eof

:ShobuDebug
CLS
call :top
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo ShobuDebug
Echo.

:SD
Set /p C=:
IF "%C%"=="EXIT" goto :EOF
%C%
goto :SD
