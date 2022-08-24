@echo off
REM FOR THE LOVE OF GOD THERE IS ONLY 24 LINES

E:
CD E:\SSH

:UBERSTART
Setlocal enabledelayedexpansion
set FirstTextRun=0
Set LauncherDir=%CD%
set common=%CD%\common
set prespace=%CD%\common\prespace
set echocolor=%CD%\common\echocolor.bat
Set EC=call %CD%\common\echocolor.bat
set CC=%CD%\common\ColorChar.exe
set bordershaddow=%CD%\common\bordershaddow
set shaddow=%cd%\common\shaddow
set flag=call %cd%\common\flag.bat
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
set GD=Call %CD%\COMMON\GraphicsDraw.bat
set BG=F
Set CTE=Call %CD%\COMMON\CTEXT.bat
Set RTE=Call %CD%\COMMON\RTEXT.bat

::EXTENSIONS::
set EXTENSIONS=%CD%\EXTENSIONS


SET ClearLine=Call %CD%\Extensions\cl.bat
SET LOCATE=%CD%\Extensions\FN.dll LOCATE
SET LCOLOR=%CD%\EXTENSIONS\FN.dll COLOR
SET FNDLL=%CD%\EXTENSIONS\FN.dll

SET MPASS=%CD%\EXTENSIONS\MPASS PasswordTemp.tmp& SET /p Result=<PasswordTemp.tmp& Del PasswordTemp.tmp
REM Result to %RESULT%

SET TYPO=CALL %CD%\EXTENSIONS\ETYPO.BAT
REM Note you must still include position (COL/LINE) and Color before the text. Also note no spaces.

Set CMDMenuSEL=%CD%\EXTENSIONS\CMDMenuSel
REM Note you must still include COLOR (0F0F) before the options.

Set RenderBox=CALL %CD%\EXTENSIONS\RenderBOX.bat
rem Box COL LINE [Height] [Width] [Sepration] [BG_Char] [color] [Type]
::::::::::::::

IF "%1"=="GO" goto :RestartITOS
IF "%1"=="TIMETEST" goto :TIMETEST

color F0
cls
Echo.
Echo.
%GD% wwwwsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssswww .
%GD% wwwwssPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPsswww .
%GD% wwwwssPPPPPPPssssssssssssssssPPPPPPsssssssssssssssPPssssssssssssssssssssPPsswww .
%GD% wwwwssPsPPPPPsssssssssssssssssPPPPssssssssssssssssPPssssssssssssssssssssPPsswww .
%GD% wwwwssPsssssPsssPPPPPPPPPPPPsssPPsssPPPPPPPPPPPPPPPPPPPPPPPPssssPPPPPPPPPPsswww .
%GD% wwwwssPsPPPPPsssPPPPPPPPPPPPsssPPsssPPPPPPPPPPPPPPPPPPPPPPPPssssPPPPPPPPPPsswww .
%GD% wwwwssPPPPPPPsssPPPPPPPPPPPPsssPPsssPPPPPPPPPPPPPPPPPPPPPPPPssssPPPPPPPPPPsswww .
%GD% wwwwssPsPsssPsssPPPPPPPPPPPPsssPPsssPPPPPPPPPPPPPPPPPPPPPPPPssssPPPPPPPPPPsswww .
%GD% wwwwssPsPsPsPsssPPPPPPPPPPPPsssPPssssssssssssssPPPPPPPPPPPPPssssPPPPPPPPPPsswww .
%GD% wwwwssPsPPPsPsssPPPPPPPPPPPPsssPPssssssssssssssPPPPPPPPPPPPPssssPPPPPPPPPPsswww .
%GD% wwwwssPPssssPsssPPPPPPPPPPPPsssPPsssPPPPPPPPPPPPPPPPPPPPPPPPssssPPPPPPPPPPsswww .
%GD% wwwwssPPPPPPPsssPPPPPPPPPPPPsssPPsssPPPPPPPPPPPPPPPPPPPPPPPPssssPPPPPPPPPPsswww .
%GD% wwwwssPsPPPspsssPPPPPPPPPPPPsssPPsssppppppppppppppppppppppppssssPPPPPPPPPPsswww .
%GD% wwwwssPssssspsssPPPPPPPPPPPPsssPPsssPPPPPPPPPPPPPPPPPPPPPPPPssssPPPPPPPPPPsswww .
%GD% wwwwssPspppspsssppppppppppppsssppsssssssssssssssssppppppppppssssppppppppppsswww .
%GD% wwwwssPPPPPPPsssPPPPpPPpppPPsssPPssssssssssssssssspPPPpppPPPssssPPPPPpppPPsswww .
%GD% wwwwssppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppsswww .
%GD% wwwwsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssswww .
echo.
echo                     Welcome to the Igtampe Computer Network                    

Set Text=You're on the IGTNET. Lets keep you well informed. () NEWS: OpenTTD Joins the Nexus lineup : Fortnite Season 6 starts, Nexus Fortnite group mobilizes : Minecraft Server finally back up, seeing dwindelling interest ()
Call :PreTextCheck
call :TEXTCheck
Set FirstTextRun=1

SET RANDOMUSERID=LAUNCH.%RANDOM%.%RANDOM%.%RANDOM%
SET SHUTDOWNSIGNALFILE=%TEMP%\%RANDOMURSERID%.tmp
SET COUNTERRESTOREFILE=%TEMP%\%RANDOMURSERID%C.tmp
SET PAGERESTOREFILE=%TEMP%\%RANDOMURSERID%P.tmp

echo                             Press a key to continue        
Pause >nul
cls

:RelaunchAfterCrash
cmd /C LAUNCH GO
IF EXIST %SHUTDOWNSIGNALFILE% goto :ForRealShut


IF "%SCItos%"=="SHUT" exit

:RealCrash
%Renderbox% 20 6 5 39 - - 0C

%locate% 6 20
%lcolor% C0
rem  อออออออออออ[Unhandled Error]อออออออออออ
echo อออออออออออ[Guru Meditation]อออออออออออ

%lcolor% 0C
%LOCATE% 8 21
Echo           Something Crashed!
%LOCATE% 9 21
Echo          Restoring launcher...

cd %FD%

Set /P COUNTER=<%COUNTERRESTOREFILE%
SET COUNTER=%COUNTER:C:=%
SET /P CURRENTPAGE=<%PAGERESTOREFILE%
SET CURRENTPAGE=%CURRENTPAGE:P:=%


goto :RelaunchAfterCrash

:ForRealShut
DEL %SHUTDOWNSIGNALFILE%
exit&exit
Goto :EOF








goto :welcome

:Top
%GD% PPP& call %echocolor% 0F "[                              I G T N E T                              ]"& %GD% PPP .
goto :eof

:PM
set AMorPM=PM
IF "%HOUR%"=="12" goto :EOF
Set /a HOUR=%HOUR%-12

Set /a HourTest=%Hour%/10
IF "%HOURTEST%"=="0" set HOUR=0%HOUR%
goto :EOF

:PreTextcheck
%SCOUNTER% "%TEXT%"
set PL=0
Set OTL=%RESULT%
set IL=0
goto :EOF

:TextCheck
Set /a IL=%IL%+1
Set MTEXT=!TEXT:~0,-%IL%!
%SCOUNTER% "%MTEXT%"
Set TL=%RESULT%
title %MTEXT% %TL% -%IL%
Set OIL=%IL%
IF "%TL%"=="81" goto :EOF
Goto :TextCheck


:Scroll
IF "%DScroll%"=="1" goto :DuoScroll
IF "%IL%"=="0" goto :PreDuoScroll
set DText=!TEXT:~%PL%,-%IL%!
%LOCATE% 20 0
Echo %DTEXT%
set /a PL=%PL%+1
Set /a IL=%IL%-1
goto :EOF

:PreDuoScroll
Set DScroll=1
Set /a TIL=%OTL%-2
goto :DuoScroll

:DuoScroll
set DText1=!TEXT:~%PL%!
Set DTEXT2=!TEXT:~0,-%Til%!
IF "%PL%"=="%OTL%" goto :PostDuoScroll
%LOCATE% 20 0
Echo %Dtext1%%Dtext2%


set /a PL=%PL%+1
Set /a Til=%Til%-1
goto :eof

:PostDuoScroll
Set DSCROLL=0
Set PL=0
Set IL=%OIL%
Goto :scroll


:TIME
call :scroll

set /a Counter=%COUNTER%+1


:TIMETEST
Set Hour=%Time:~0,-9%
Set /a HourTest=%Hour%/10
IF "%HOURTEST%"=="0" set MinUTE=%Time:~3,-6%& set HOUR=%HOUR%
IF "%HOURTEST%"=="1" set MinUTE=%Time:~3,-6%
Set HT1=%Hourtest%
set /a HourTest=%Hour%/12
set AMorPM=AM
IF NOT "%HourTest%"=="0" Call :PM

%Locate% 19 0
%RTE% "IGTNET: %HOUR%:%MINUTE% %AMorPM% - %DATE%" อ [ ]
IF "%CURRENTPAGE%"=="" SET CURRENTPAGE=1
If "%Counter%"=="1" Set CurrentPage=1& Call :Page1
If "%Counter%"=="20" Set CurrentPage=2& Call :Page2
If "%Counter%"=="100" Set CurrentPage=3& Call :Page3
If "%Counter%"=="180" Set CurrentPage=4& Call :Page4
If "%Counter%"=="190" Set CurrentPage=5& Call :Page5
IF "%COUNTER%"=="230" Set CurrentPage=1& Call :Page1& Set Counter=1
%locate% 1 0
TITLE H:(%HOUR%), M:(%MINUTE%), AP=(%AMOrPM%), HT1=(%HT1%), HT2=(%HourTest%)
Echo C:%Counter%> %COUNTERRESTOREFILE%
%locate% 1 20
ECHO P:%CurrentPage%> %PAGERESTOREFILE%
rem title %PL% %IL% %Til%, C:(%Counter%), CP:(%CurrentPage%)
goto :EOF


:ClearScreen
%lcolor% 00
%LOCATE% 2 0
echo                                                                               .
echo                                                                               .
echo                                                                               .
echo                                                                               .
echo                                                                               .
echo                                                                               .
echo                                                                               .
echo                                                                               .
echo                                                                               .
echo                                                                               .
echo                                                                               .
echo                                                                               .
echo                                                                               .
echo                                                                               .
echo                                                                               .
echo                                                                               .
echo                                                                               .
goto :EOF

:Page2

%RenderBox% 70 17 2 10 - - 11
%RenderBox% 60 15 4 20 - - 11
%RenderBox% 50 13 6 30 - - 11
%RenderBox% 40 11 8 40 - - 11
%RenderBox% 30 9 10 50 - - 11
%RenderBox% 20 7 12 60 - - 11
%RenderBox% 10 5 14 70 - - 11
%RenderBox% 0 2 17 80 - - 11 
rem Box COL LINE [Height] [Width] [Sepration] [BG_Char] [color] [Type]

%lcolor% 1F
%LOCATE% 2 0
Echo.
%CTE% " [Server NEWS]"
echo.
echo -OpenTTD an amazing success
echo   The server waits anxiously every weekend for the @openttd callout on discord.
echo   This game has quickly grown to become the interest of most active members,
echo   and has ushered a new era of activity for Nexus.
echo.
echo -Minecraft server finally up
echo   CHOPO has finally listened to the demands to put the server back up, but to
echo   little fanfare, as it sits still as dormant as it was when it was offline.
echo   With several new games like Fortnite and OpenTTD showing growth on Nexus, is
echo   there still enough time to go back to our roots?
echo.
echo -Fortnite Season 6 Releases
echo   Nexus Server Group quickly mobilizes. Headed by OCKO, this division of the
echo   server has taken off, especially amongst usually innactive members.
%LCOLOR% 03
goto :EOF

:Page3

%RenderBox% 70 17 2 10 - - 11
%RenderBox% 60 15 4 20 - - 11
%RenderBox% 50 13 6 30 - - 11
%RenderBox% 40 11 8 40 - - 11
%RenderBox% 30 9 10 50 - - 11
%RenderBox% 20 7 12 60 - - 11
%RenderBox% 10 5 14 70 - - 11
%RenderBox% 0 2 17 80 - - 11  
rem Box COL LINE [Height] [Width] [Sepration] [BG_Char] [color] [Type]

%lcolor% 1F
%LOCATE% 2 0
Echo.
%CTE% " [Server NEWS]"
echo.
echo -Congressional Election Results:
echo   Congressman Cuipi steps down, Prussian takes his place. Leve continues to
echo   lumber around Minotaur, spreading his beliefs that the Gods control all.
echo   His embarassment in the Congressional debate is cited for causing his loss.
echo.
echo -PoliBlend Exists
echo   It Exists
echo.
echo -The Bee King's Attack is still incoming
echo   Stand by to call upon Phill Swift, to summon all the flex tape we can.
echo.
echo.
echo.
echo.
%LCOLOR% 03
goto :EOF


:Page4

%RenderBox% 70 17 2 10 - - 11
%RenderBox% 60 15 4 20 - - 11
%RenderBox% 50 13 6 30 - - 11
%RenderBox% 40 11 8 40 - - 11
%RenderBox% 30 9 10 50 - - 11
%RenderBox% 20 7 12 60 - - 11
%RenderBox% 10 5 14 70 - - 11
%RenderBox% 0 2 17 80 - - 11  
rem Box COL LINE [Height] [Width] [Sepration] [BG_Char] [color] [Type]

%lcolor% 1F
%LOCATE% 2 0
Echo.
%CTE% " [Server NEWS]"
echo.
echo.
echo.
echo.
echo.
echo.
echo.
%CTE% " Brought to you by the UMSNN"
echo.
echo.
echo.
echo.
echo.
echo.
echo.
%LCOLOR% 03
goto :EOF


:Page5
Call :ClearScreen
%LCOLOR% 02
%LOCATE% 2 0

rem  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
echo.
echo.
%GD% sssssssssYsssGssGGssGsGssGGsGGssGGGsGGGssGGssGGsssssGsGssGGsGGsssGGssY .
%GD% sssssssssYssGsGsGsGsGsGsGsssGsGssGsssGssGsssGsssssssGsGsGsssGsGsGssssY .
%GD% sssssssssYssGGGsGsGsGsGsGGssGGsssGsssGsssGssGGssssssGGGsGGssGGssGGsssY .
%GD% sssssssssYssGsGsGsGsGsGsGsssGsGssGsssGssssGsGsssssssGsGsGsssGsGsGssssY .
%GD% sssssssssYssGsGsGGsssGsssGGsGsGssGssGGGsGGsssGGsssssGsGssGGsGsGssGGssY .
echo.
%CTE% " Advertie on the IGTNET"
echo.
echo.
%CTE% " Contact CHOPO for more details"
%CTE% "    Starting at 5,000p/month"
echo.
echo.
echo.
%LCOLOR% 03
goto :EOF

:Page6
Call :ClearScreen
%LCOLOR% 02

rem  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
echo.
echo.
echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
echo.
echo.
Echo.
Echo.
echo.
echo.
echo.
%LCOLOR% 03
goto :EOF

:Page1
Call :ClearScreen
%LColor% 0F
%Locate% 2 0
%GD% sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssWWWWWWWss .
%GD% ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssWWWWWWsssss .
%GD% ssWWWWsWWWWsWWWWsWWsWWsWWsWWWWWWsssssssssssssssssssssssssWWWWWssssssss .
%GD% sWWWsssWssWsWssWsWWWWsssssWWsssssssssssssssssssssssssssssWWWWWssssssss .
%GD% sWWWsssWssWsWssWsWWWWssWWsWWWWWWsssssssssssssssssssssssssWWWWWssssssss .
%GD% ssWWWWsWWWWsWWWWsWWsWWsWWsWWssssssssssssssssssssssssssssssWWWWWWsssss .
%GD% ssssssssssssssssssssssssssWWWWWWsssssssssssssssssssssssssssWWWWWWWss .
%locate% 8 0
echo  ------------------------^>
echo                                         ^|\___/^|
Echo                                         )     (
Echo                                        =\     /=
Echo  The IGTNET Online                       )===(  
Echo  Information Billboard                  /     \
echo                                         ^|     ^|
echo                                        /       \
echo                                        \       /
echo                                         \_____/
echo                                       อออออออออออ
%LCOLOR% 03
goto :EOF

อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ

:RestartITOS
:Welcome
color 03
cls
set top=call :TOP 
call :TOP
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
Echo.
Echo.
Echo.
Echo.
echo.
%GD% ssssssssssssppppppsspppppsppppppppssspppppppppsssspppppppsspppppppp .
%GD% ssssssssssssssppsssppssssssssppssssssppssssssppssppsssssssssssppsss .
%GD% ssssssssssssssppsssppspppssssppssssssppssssssppsspppppppssssssppsss .
%GD% ssssssssssssssppsssppssppssssppssssssppssssssppssppsssssssssssppsss .
%GD% ssssssssssssppppppsppppppssssppssssssppssssssppssppppppppsssssppsss .
Echo.
%CTE% " Loading Information"
echo.
echo.
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%CTE% " Please wait, loading information"
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [1.] UMSWEB Old Tebecon Access  [3.] Tech Demos                 [A.] About
Echo [2.] Artemis Relaunch Monitor   [4.] Colloquor                  [D.] Disconnect
IF NOT "%CurrentPAGE%"=="" Call :Page%CurrentPage%
:ReChoice

%FNDLL% _KBD
Set LauncherChoice=%ERRORLEVEL%

%FNDLL% SLEEP 250

IF "%LauncherChoice%"=="0" CALL :TIME& Goto :ReChoice
set oldtime=
cls
Call :TOP
IF "%LauncherChoice%"=="97" Goto :About
IF "%LauncherChoice%"=="100" Goto :Disconnect
IF "%LauncherChoice%"=="96" Goto :Commandline
Echo.
Echo.
Echo.
Echo.
echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo                                    Stand by                                   
IF "%LauncherChoice%"=="49" Goto :UMSWEB
IF "%LauncherChoice%"=="50" Goto :BETA
IF "%LauncherChoice%"=="51" Goto :DEMOS
IF "%LauncherChoice%"=="52" Goto :Colloquor
IF "%LauncherChoice%"=="53" Goto :Demos
Goto :welcome

:Demos
cls
%top%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%GD% wwwwwwwwwwwwwwwRRRRRwRRRRwwYYYwGwwGwwwUUUwwPPPPwPwwwPwwRRRwwwRRRwwwwwwwwwwwwwwww
%GD% wwwwwwwwwwwwwwwwwRwwwRwwwwYwwwwGwwGwwwUwwUwPwwwwPPwPPwRwwwRwRwwwwwwwwwwwwwwwwwww
%GD% wwwwwwwwwwwwwwwwwRwwwRRRwwYwwwwGGGGwwwUwwUwPPPwwPwPwPwRwwwRwwRRwwwwwwwwwwwwwwwww
%GD% wwwwwwwwwwwwwwwwwRwwwRwwwwYwwwwGwwGwwwUwwUwPwwwwPwwwPwRwwwRwwwwRwwwwwwwwwwwwwwww
%GD% wwwwwwwwwwwwwwwwwRwwwRRRRwwYYYwGwwGwwwUUUwwPPPPwPwwwPwWRRRwwRRRwwwwwwwwwwwwwwwww
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
%CTE% " Choose a Demo"
echo.
%CMDMenuSEL% 3F30 "[1.] 1994: A short playable story, Early graphics demo." "[2.] ITOS: A show of the ColorChar API with a visual OS." "[3.] ITOS 2.0: Now somewhat useable. Uses a host of new extensions (MAZ3 is still in development)" "" "[4.] Go Back"
set DemoChoice=%ERRORLEVEL%
if "%ERRORLEVEL%"=="1" goto :1994
if "%ERRORLEVEL%"=="2" goto :ITOS
if "%ERRORLEVEL%"=="3" goto :ITOS2
if "%ERRORLEVEL%"=="4" goto :welcome
if "%ERRORLEVEL%"=="5" goto :welcome
goto :demos

%CMDMenuSEL% 5130 "1" "2"

:UMSWEB
Echo                                  Loading UMSWEB                             
call UMSWEB
cd %LAUNCHERDIR%
goto :Welcome

:BETA
Echo                                   Loading ARM
Echo Coming soon!
Pause
cd %LAUNCHERDIR%
goto :Welcome

:MUSH 
Echo                                 Loading MushNET                           
Call MUSH
cd %LAUNCHERDIR%
goto :WELCOME

:Colloquor
Echo                                Loading Colloquor                             
Call Colloquor
CD %LAUNCHERDIR%
Echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Press a key to return to the IGTNET Launcher
Pause >nul
Goto :WELCOME

:1994
Echo                                   Loading 1994                           
Call 1994
CD %LAUNCHERDIR%
Echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Press a key to return to the IGTNET Launcher
Pause >nul
Goto :WELCOME

:ITOS
Echo                                Loading ITOS Demo                            
Call ITOS
CD %LAUNCHERDIR%
Goto :WELCOME

:ITOS2
Echo                                Loading ITOS Demo                            
Call ITOS2
CD %LAUNCHERDIR%
Goto :WELCOME

:ABOUT
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%GD% ssssssssssssppppppsspppppsppppppppssspppppppppsssspppppppsspppppppp .
%GD% ssssssssssssssppsssppssssssssppssssssppssssssppssppsssssssssssppsss .
%GD% ssssssssssssssppsssppspppssssppssssssppssssssppsspppppppssssssppsss .
%GD% ssssssssssssssppsssppssppssssppssssssppssssssppssppsssssssssssppsss .
%GD% ssssssssssssppppppsppppppssssppssssssppssssssppssppppppppsssssppsss .
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo                    The Igtampe Computer Network SSH Launcher                   
Echo                                   Version 2.0                                  
Echo.
echo                       (C) 2018 Igtampe No Rights Reserved                      
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo                                Running on ARTEMIS                              
echo                                 Dell OptiPlex 760
echo                                   4GB DDR2 RAM
Echo                                3.0 GHz Core 2 Duo
echo                               1.5 TB Total Storage
Echo                              Windows 7 Ultimate x64
echo.
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
pause >nul
goto :welcome

:DISCONNECT
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo.
Echo.
Echo.
echo.
Echo.
Echo.
Echo.
Echo.
echo.
echo                                  G O O D B Y E                             
echo.
echo.
echo.
echo.
echo.
echo.
echo.
Echo.
echo.
Echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
timeout /t 2 >nul
echo AAAAAA> %SHUTDOWNSIGNALFILE%
exit & exit


:COMMANDLINE
cls

Echo.
Echo Please enter your remote access code
set /p PASS=:
IF NOT "%PASS%"=="24602060451" GOTO :EOF

:123
cls
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo บIgtampe DOS NT
Echo บ(C)2018 Igtampe, No rights reserved.
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Goto :C

:RERUN
set RERUNTIME=%TIME:~6,-3%
If NOT "%RUNTIME%"=="%RERUNTIME%" GOTO :RERUNCONT
SET C=
GOTO :C

:C
SET ARG=
SET ARG1=
SET ARG2=
SET ARG3=
SET ARG4=
SET ARG5=
SET ARG6=
SET ARG7=
SET ARG8=
Title Igtampe DOS %ID%
@echo.
Set /p C= %cd%\\
SET CMD=%C:"=%
IF /i "%CMD%"=="%COLD%" Goto :RERUN
:RERUNCONT
set RUNTIME=%TIME:~6, -3%
SET COLD=%CMD%
If /i "%CMD%"== "Coinflip" Echo This command has been uninstalled.& Goto :C
If /i "%CMD%"== "IUC" Echo This command has been uninstalled.& Goto :C
If /i "%CMD%"== "NABAS" Echo NABAS Is unavailable in SSH Mode& Goto :C
If /i "%CMD%"== "ACE"  Echo This command has been uninstalled.& Goto :C
If /i "%CMD%"== "VERTO" Echo This command has been uninstalled.& Goto :C
IF /I "%CMD%"== "IGTINF" goto :IGTINF
If /I "%CMD%"== "THEME" Echo Themes have been disabled by the administrator.& Goto :C
If /i "%CMD%"== "SHUTDOWN" Echo You cannot shutown IGTDOS Terminals remotely.& Goto :C
IF /i "%CMD%"== "APPLIST" Echo SSH License doesn't allow apps to be installed.& Goto :C
IF /I "%CMD%"== "CLS" Cls & Goto :123
If /i "%CMD%"== "EXIT" goto :EXIT
If /i "%CMD%"== "IGTHELP" Goto :IGTHELP

IF /I "%CMD%"== "VER" goto :VER
If /i "%CMD%"== "*" goto :STAR
If /i "%CMD%"== "?" goto :?
%C%
goto :C


:IGTHELP
Echo These are the commands available with the IGTNET SSH License:
Echo.
Echo ?     : About Igtampe DOS
Echo EXIT  : Close this instance of Igtampe DOS and return to the previous 
Echo CLS   : Clear the screen
Echo IGTINF: Igtampe DOS Information
echo         application
Echo VER   : Display the version of Igtampe DOS.
goto :C

:VER
@echo IGTAMPE DOS [Version 9.1] 
Goto :C

:STAR
Echo '*' is not recognized as an internal or external command,
Echo operable program or batch file.
goto :C


:IGTINF
cls
ECHO ษอออออออออออออออออออออออป
Echo บIGTAMPE DOS INFORMATIONบ
Echo ศอออออออออออออออออออออออผ
Echo.
Echo ษอออออออออออออออออออออออหออออออออออออออออออออออออออออออออออออออออออออ
Echo บIGTAMPE DOS            บ NT SSH LIMITED LICENSE
Echo บVersion                บ 9.1
Echo บBuild                  บ 6012
Echo บSource Code Version    บ 4.0
Echo บFile Structure version บ 5.1
Echo บIGT BIOS Version       บ 4.0
Echo บ                       บ
Echo บRunning on             บ ARTEMIS
Echo บOpened by              บ SSHREMOTEUSER
Echo บOn Windows             บ 7
Echo บAdmin Mode             บ NO
Echo ศอออออออออออออออออออออออสออออออออออออออออออออออออออออออออออออออออออออ
Pause >nul
cls
goto :123




:?
CLS
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo                           ษออปษอป  ษอออออป
echo                           บฐฐบบฐบ  บฐฐฐฐฐบ
echo                           บฐบฐบฐบ  ศอปฐษอผ
echo                           บฐบบฐฐบ    บฐบ
echo                           ศอผศออผ    ศอผ
Echo.
Echo                                  N T
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo Igtampe DOS NT
@echo Version 9.1 (Build 6012)
@Echo.                           
@ECHO (C) Igtampe 2018. No Rights reserved.
echo.
Echo Registered to: Igtampe 
Echo On Thu March 1st, 2018
Echo.
Echo SSH Limited License.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
@echo All parts of this program or any of its contents may be reproduced,
@echo copied, modififed, or adapted, even without the pior written consent
@echo of the author, unless otherwise indicated (Which will never happen)
@echo for stand-alone materials (Bundled Programs)
PAUSE >NUL
cls
goto 123





echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ

:EXIT

