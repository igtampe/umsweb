@echo off
Setlocal enabledelayedexpansion
set FD=%CD%
set SC=call %CD%\COMMON\Stringcounter.bat
:START
cls
color A0
color 0A
Echo.
Echo.
Echo.
Echo.
Echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                   ฒฒ    ฒฒ  ฒฒฒฒฒฒ  ฒฒฒฒฒฒฒฒ        ฒฒฒฒฒฒฒฒ
echo                   ฒฒ    ฒฒ ฒฒ    ฒฒ    ฒฒ           ฒฒ     ฒฒ       
echo                   ฒฒ    ฒฒ ฒฒ    ฒฒ    ฒฒ           ฒฒ     ฒฒ
echo                   ฒฒ    ฒฒ ฒฒ    ฒฒ    ฒฒ    ฒฒฒฒฒฒ ฒฒฒฒฒฒฒฒ
echo                   ฒฒ    ฒฒ ฒฒ    ฒฒ    ฒฒ           ฒฒ    ฒฒ
ECHO                    ฒฒ  ฒฒ  ฒฒ    ฒฒ    ฒฒ           ฒฒ     ฒฒ
echo                      ฒฒ     ฒฒฒฒฒฒ     ฒฒ           ฒฒ     ฒฒ
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo                                      (c)2018
Echo.
type common\PreSpace.txt
set /p ID=Student ID: 
IF "%ID%"=="EXIT" goto :EOF
type common\PreSpace.txt
Set /p PIN=Given PIN : 
IF NOT EXIST USERS MD USERS
cd USERS
IF NOT EXIST "%ID%" goto :NoID
set /p RealPIN=<%ID%
if "%REALPIN%"=="%PIN%" goto :RegularStart

:NoPASS
Echo.
Echo               Incorrect PIN. Please try again or contact an usher              
Pause >nul
cd..
goto :START



:NOID
IF /i "%ID%"=="ADMIN" goto :ADMINCHeck
IF /i "%ID%"=="REGISTER" goto :RegisterCHeck
Echo.
Echo                     Could not find that user. The format is             
Echo                                   802-18-9999                           
Pause >nul
cd..
goto :START



:RegularStart
cls
Echo [ ]                                V O T - R                                [ ]
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Welcome to the VOT-R System %ID%!!
Echo Before you start, here are some notes:
Echo.
Echo [1.] Please make sure to DISCONNECT if you have to. Simply closing this program
echo      will lock you out of the system and you will need to be re-registered.
Echo.
Echo [2.] Please be patient. This is working on the same system PuTTY does, so it's
echo      not the fastest thing in the world with 1,300 people.
Echo.
Echo [3.] Notify the administrator of any faults with the following {method}:
Echo      {Administrator Communication Method Here}
Echo.
Echo Thank you for using VOT-R.
Echo -IGT
Echo.
choice /c YN /n /m "Sign in? (Y/N)"
SET SIGN=%ERRORLEVEL%
IF "%SIGN%"=="2" cd..& goto :START
IF NOT EXIST ACTIVE MD ACTIVE
TYPE %ID%> ACTIVE\%ID%
DEL %ID%


:RegularMAIN
cls
set voted=0
If exist VOTE goto :VOTEDisplay
set RVote=0
:VoteDisCont
Set /a AN=%AN%+1
IF "%AN%"=="4" set AN=0
IF "%AN%"=="0" Echo [-]                                V O T - R                                [-]
IF "%AN%"=="1" Echo [\]                                V O T - R                                [/]
IF "%AN%"=="2" Echo [^|]                                V O T - R                                [^|]
IF "%AN%"=="3" Echo [/]                                V O T - R                                [\]
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo                              [Waiting for a vote]                             
Echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo.
Echo                                    บ    YES    บ  บ    N O    บ  บ  ABSTAIN  บ
echo                                    บอออออออออออบ  บอออออออออออบ  บอออออออออออบ
Echo                                    บ           บ  บ           บ  บ           บ
Echo            อออออออออออออ           บ           บ  บ           บ  บ           บ
Echo                YES: 0000           บ           บ  บ           บ  บ           บ
Echo                 NO: 0000           บ           บ  บ           บ  บ           บ
Echo            ABSTAIN: 0000           บ           บ  บ           บ  บ           บ
Echo            อออออออออออออ           บ           บ  บ           บ  บ           บ
Echo                                    บ           บ  บ           บ  บ           บ
Echo                                    บ           บ  บ           บ  บ           บ
Echo                                    บ           บ  บ           บ  บ           บ
Echo                                    บ           บ  บ           บ  บ           บ
Echo                                    บอออออออออออบ  บอออออออออออบ  บอออออออออออบ
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Type D to Disconnect
choice /c DS /n /t 1 /d S
set C=%ERRORLEVEL%
IF "%ERRORLEVEL%"=="1" goto :UserDisconnect
goto :RegularMain

:userDisconnect
Type ACTIVE\%ID%> %ID%
DEL ACTIVE\%ID%
cd..
cls
Echo.
Echo You have been disconnected. To sign in, use your PIN.
Echo Remember it is: %REALPIN%
set pin=
set ID=
echo.
Pause
goto :Start

:VoteDisplay
IF "%RVote%"=="1" goto :VoteDisCont

:VoteDisplayLoop
cls
if not exist VOTE\msg.txt goto :RegularMain
Set /a AN=%AN%+1
IF "%AN%"=="4" set AN=0
IF "%AN%"=="0" Echo [-]                                V O T - R                                [-]
IF "%AN%"=="1" Echo [\]                                V O T - R                                [/]
IF "%AN%"=="2" Echo [^|]                                V O T - R                                [^|]
IF "%AN%"=="3" Echo [/]                                V O T - R                                [\]
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
type VOTE\MSG.txt
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
type VOTE\Graph.txt
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
if exist "VOTE\CLOSE" goto :VoteClose
IF "%ADMIN%"=="1" goto :AdminActions
IF "%VOTED%"=="1" goto :VoteDisplayVoted
Choice /c YNAS /t 1 /d S /n /m "(y)es, (n)o, or (a)bstain"
Set Vote=%ERRORLEVEL%
IF NOT "%VOTE%"=="4" goto :SendVote
Goto :VoteDisplayLoop

:SendVote
IF "%VOTE%"=="1" %ID%> VOTE\YES\%ID%
IF "%VOTE%"=="2" %ID%> VOTE\NO\%ID%
IF "%VOTE%"=="3" %ID%> VOTE\ABS\%ID%
SET VOTED=1
goto :VoteDisplayLoop


:VoteDisplayVoted
echo You've already voted!
timeout /t 1 >nul
goto :VoteDisplayLoop

:AdminActions
Echo Type C to close the vote.

choice /c CS /n /t 5 /D S
IF "%ERRORLEVEL%"=="1" Echo CLOSE> VOTE\Close
cls
cd vote
Echo.
Echo Regenerating Graph....
Echo.
Echo Checking YES Votes
cd YES
Call :FF YES
Cd..
Echo %YES% Yes Votes
Echo Checking NO Votes
cd NO
Call :FF NO
cd..
Echo %NO% No votes
Echo Checking Abstain votes
cd ABS
Call :FF ABS
cd..
Echo %ABS% Abstain votes

Echo StringCounting all variables
%SC% %YES%
SET YZero=%RESULT%
set YD=%YES%
if "%YZERO%"=="1" set YD=000%YES%
if "%YZERO%"=="2" set YD=00%YES%
if "%YZERO%"=="3" set YD=0%YES%
Echo %YES% has %YZERO% Characters, Display %YD%

%SC% %NO%
SET NZero=%RESULT%
set ND=%NO%
if "%NZERO%"=="1" set ND=000%NO%
if "%NZERO%"=="2" set ND=00%NO%
if "%NZERO%"=="3" set ND=0%NO%
Echo %NO% has %NZERO% Characters, Display %ND%

%SC% %ABS%
SET AZero=%RESULT%
set AD=%ABS%
if "%AZERO%"=="1" set AD=000%ABS%
if "%AZERO%"=="2" set AD=00%ABS%
if "%AZERO%"=="3" set AD=0%ABS%
Echo %ABS% has %AZERO% Characters, Display %AD%

Set /a total=%ABS%+%YES%+%NO%
Set /a YP=%YES%*10
Set /a NP=%NO%*10
Set /a AP=%ABS%*10
Echo There are %TOTAL% Total votes
IF "%TOTAL%"=="0" goto :VoteDisplay

Set /a YP=%YP%/%TOTAL%
SET /A NP=%NP%/%TOTAL%
SET /a AP=%AP%/%TOTAL%
Echo %YP%/10 %NP%/10 %AP%/10

Echo Running GraphClear

set V=CLEAR
Call :GraphClear

Echo Running GraphRender
call :GraphRender %YP% Y
call :GraphRender %NP% N
call :GraphRender %AP% A

Echo Writing...
Echo. > GRAPH.txt
Echo. >> graph.txt
Echo                                    บ    YES    บ  บ    N O    บ  บ  ABSTAIN  บ>> graph.txt
echo                                    บอออออออออออบ  บอออออออออออบ  บอออออออออออบ>> graph.txt
Echo                                    บ%Y10%บ  บ%N10%บ  บ%A10%บ>> graph.txt
Echo            อออออออออออออ           บ%Y9%บ  บ%N9%บ  บ%A9%บ>> graph.txt
Echo                YES: %YD%           บ%Y8%บ  บ%N8%บ  บ%A8%บ>> graph.txt
Echo                 NO: %ND%           บ%Y7%บ  บ%N7%บ  บ%A7%บ>> graph.txt
Echo            ABSTAIN: %AD%           บ%Y6%บ  บ%N6%บ  บ%A6%บ>> graph.txt
Echo            อออออออออออออ           บ%Y5%บ  บ%N5%บ  บ%A5%บ>> graph.txt
Echo                                    บ%Y4%บ  บ%N4%บ  บ%A4%บ>> graph.txt
Echo                                    บ%Y3%บ  บ%N3%บ  บ%A3%บ>> graph.txt
Echo                                    บ%Y2%บ  บ%N2%บ  บ%A2%บ>> graph.txt
Echo                                    บ%Y1%บ  บ%N1%บ  บ%A1%บ>> graph.txt
Echo                                    บอออออออออออบ  บอออออออออออบ  บอออออออออออบ>> graph.txt
Echo Done writing, re-displaying
cd..
goto :VoteDisplayLoop

:GraphClear
Set ASD=10
IF "%V%"=="A" goto :EOF
IF "%V%"=="N" SET V=A
IF "%V%"=="Y" SET V=N
IF "%V%"=="CLEAR" SET V=Y

:GraphClearLoop
IF "%ASD%"=="0" Goto :GraphClear
Echo Graphclearing %V%%ASD%
Set %V%%ASD%=           
Set /a ASD=%ASD%-1
goto :GraphClearLoop

:GraphRender
Set ASD=%1
SET V=%2

:GraphRenderLoop
IF "%ASD%"=="0" Goto :EOF
Echo Rendering %V%%ASD%
Set %V%%ASD%=ฒฒฒฒฒฒฒฒฒฒฒ
Set /a ASD=%ASD%-1
goto :GraphRenderLoop

:VoteClose
set RVOTE=1
Echo FINAL RESULTS: Press a key to return to the waiting screen.
Pause >nul
IF "%ADMIN%"=="1" goto :PreVoteErase
goto :RegularMain

:PreVoteErase
cls
echo.
Echo Stand by... Erasing Old Vote...

:VoteErase
RD /q /s VOTE >nul
IF EXIST VOTE GOTO :VOTEERASE
goto :AdminMain
rem 24 lines



:RegisterCHECK
IF NOT "%PIN%"=="RegistrarAhora" goto :NoID
Echo.
Echo Loading Registration Console
goto :RegisterMain

:RE1
Echo %ID% is already registered
Echo.
goto :RegisterSecond

:RE2
Echo %ID% is already registered and ACTIVE.
Echo.
goto :RegisterSecond


:RegisterMain
cls
Echo [ ]                                V O T - R                                [ ]
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
:RegisterSecond
set /p ID=Student ID: 
IF "%ID%"=="EXIT" cd..& goto :START
if exist %ID% goto :RE1
IF EXIST ACTIVE\%ID% goto :RE2
Set /a R1=%RANDOM% %%9
Set /a R2=%RANDOM% %%9
Set /a R3=%RANDOM% %%9
Set /a R4=%RANDOM% %%9
Set /a R5=%RANDOM% %%9
Set /a R6=%RANDOM% %%9
Echo Given PIN : %R1%%R2%%R3%%R4%%R5%%R6%
echo %R1%%R2%%R3%%R4%%R5%%R6%> %ID%
echo.
goto :RegisterSecond


:ADMINCheck
IF NOT "%PIN%"=="VOTENOW" goto :NoID
Echo.
Echo Loading Admin Console...

:AdminMain
cls


cd active
call :FF USERS USERS
cd..
IF EXIST VOTE SET VOTE=YES
IF NOT EXIST VOTE SET VOTE=NO
Echo [ ]                                V O T - R                                [ ]
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo ADMIN CONSOLE:
echo                                                       อออออออออออออออออออออออออ
Echo   [1.] Start a Vote                                   Active Users    :%users%
Echo   [2.] Close the Assembly                             Vote Active     :%VOTE%
Echo                                                       อออออออออออออออออออออออออ
echo   [3.] Disconnect                                     
Echo.
Echo.
Choice /c 123R /T 3 /D R /N /M ":"
set c=%errorlevel%
IF "%C%"=="1" goto :MakeVote
IF "%C%"=="2" goto :AssemblyClose
IF "%C%"=="3" goto :AdminExit
goto :AdminMain

:MakeVote
set admin=1
IF EXIST VOTE goto :VOTEDISPLAY
MD Prevote
cd PreVote

:MakeVoteClear
cls
Echo [ ]                                V O T - R                                [ ]
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Write a quick message about this vote (Type DONE when done, or CLEAR to clear)
echo                     *For aesthetic reasons, aim for 3 lines*
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set oldt=

:WriteLoop
Set /p T=
IF "%T%"=="%OLDT%" echo. >> msg.txt& goto :Writeloop
SET OLDT=%T%
IF "%T%"=="DONE" goto :WriteLoopDone
IF "%T%"=="CLEAR" goto :WriteClear
Echo %T%>> msg.txt
goto :WriteLoop

:WriteClear
del msg.txt
set OLDT=
goto :makevoteclear

:WriteLoopDone
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Press a key to send the vote
Pause >nul
Echo. > GRAPH.txt
Echo. >> graph.txt
Echo                                    บ    YES    บ  บ    N O    บ  บ  ABSTAIN  บ>> graph.txt
echo                                    บอออออออออออบ  บอออออออออออบ  บอออออออออออบ>> graph.txt
Echo                                    บ           บ  บ           บ  บ           บ>> graph.txt
Echo            อออออออออออออ           บ           บ  บ           บ  บ           บ>> graph.txt
Echo                YES: 0000           บ           บ  บ           บ  บ           บ>> graph.txt
Echo                 NO: 0000           บ           บ  บ           บ  บ           บ>> graph.txt
Echo            ABSTAIN: 0000           บ           บ  บ           บ  บ           บ>> graph.txt
Echo            อออออออออออออ           บ           บ  บ           บ  บ           บ>> graph.txt
Echo                                    บ           บ  บ           บ  บ           บ>> graph.txt
Echo                                    บ           บ  บ           บ  บ           บ>> graph.txt
Echo                                    บ           บ  บ           บ  บ           บ>> graph.txt
Echo                                    บ           บ  บ           บ  บ           บ>> graph.txt
Echo                                    บอออออออออออบ  บอออออออออออบ  บอออออออออออบ>> graph.txt
rem echo. >> graph.txt
MD YES
MD NO
MD ABS
cd..
ren PreVote Vote
Set ADMIN=1
goto :VOTEDISPLAY



:AdminExit
cd %FD%
goto :start


rem  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ

:FF
Set VAR=%1
dir | find /i "File(s)"> CCT.tmp
set /p DIRS=<CCT.tmp
Del CCT.tmp

Set DIRS=%DIRS: =%
set MDIR=%DIRS:~4%
Set DIRS=!DIRS:%MDIR%=!
Set DIRS=%DIRS:F=%
Set DIRS=%DIRS:i=%
set Dirs=%dirs:l=%

set /a dirs=%DIRS%-1
Set %VAR%=%DIRS%
goto :EOF
