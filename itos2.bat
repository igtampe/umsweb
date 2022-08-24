REM FOR THE LOVE OF GOD THERE IS ONLY 24 LINES
@echo Stand By, Loading In
@echo off

:UBERSTART

mode con:lines=25 cols=80
Setlocal enabledelayedexpansion
set BG=1
color %BG%0
Echo Please wait, setting some variables...
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
Set CTE=Call %CD%\COMMON\CTEXT.bat
set GD=Call %CD%\COMMON\GraphicsDraw.bat

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

Set EChoice=%CD%\Extensions\FN.dll KBD
Set EType=CALL %CD%\EXTENSIONS\ETYPE.bat
::::::::::::::

IF "%1"=="GO" goto :RestartITOS

cmd /C ITOS2 GO
IF EXIST SHUT goto :ForRealShut


IF "%SCItos%"=="SHUT" exit

:RealCrash
%Renderbox% 20 6 5 39 - - 0C

%locate% 6 20
%lcolor% C0
echo อออออออออออ[Unhandled Error]อออออออออออ

%lcolor% 0C
%LOCATE% 8 21
Echo An unhandled error has caused ITOS
%LOCATE% 9 21
Echo to crash. Press a key to restart.
Pause >nul
cd %FD%
goto :UBERSTART

:ForRealShut
DEL SHUT
exit&exit
Goto :EOF


:RestartITOS

cd BOOT


if not "%1"=="" goto :%1
:go
color 0F

CALL :BIOSTOP
Echo OPTI2460 GREEN TERMINAL V1.0 NOV 1995
Echo.
Echo Intel(R) Pentium(R) CPU, P54CS 200MHz
Echo Checking NVRAM...
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
echo DEL:Setup  F11:Boot Menu  F12:Network boot  TAB:Logo  ESC:Skip memory test

set RAM=0

:RamLoop
%locate% 8 0
Echo %RAM%kb
set /a RAM=%RAM%+16
IF "%RAM%"=="2048" goto :RamDone
goto :RamLOOP

:RamDone
%locate% 8 0
Echo %RAM%kb OK

choice /c SD /t 1 /d d> nul
IF "%ERRORLEVEL%"=="1" goto :RenderDESK
sleep 5000
%CLEARLINE% 23
%LOCATE% 10 0
Echo WAIT...
sleep 2000
Echo Initialize Plug and Play Cards...
Echo    IGTTECH xTEND Network Controller 1.0
Type Warmup.txt& call typer ..... 500& sleep 2000& echo OK& sleep 1000
Echo.
Echo    Detecting HDD Primary Master  ... 635mb WD CAVIAR2635
Echo    Detecting HDD Primary Slave   ... 635mb WD CAVIAR2635
Echo    Detecting HDD Secondary Master... PANASONIC CD 61651
Echo    Detecting HDD Secondary Slave ... SONY CD 10123
Echo.
Echo.
Echo.
sleep 1000
cls 
sleep 2000
echo บ Board Type        : IGTTECH MAINFRAME  Manufacturer      :  IGTTECH         บ
Echo บ Board ID/ucode ID : 1921/00            IsLoss?           :    FALSE         บ
echo บ Board Chipset     : IGTT SUPERCHIP     TimeDate          :                  บ
Echo รอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออด
echo บ CPU Type          : PENTIUM(TM)        Base Memory       :     648K         บ
Echo บ CPU ID/ucode ID   : 068A/00            Extended Memory   :    1400K         บ
echo บ CPU Clock         : 200MHz             Cache Memory      :     128K         บ
Echo รอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออด
Echo บ Diskette Drive  A : Fujitsu S121       Display Type      : EGA/VGA          บ
Echo บ Diskette Drive  B : Fujitsu S121       Serial Port(s)    : 3F8 2F8 3E8 2E8  บ
Echo บ Hard Disk Drive C : WD CAVIAR26351-635 Parallel Port(s)  : 378              บ
Echo บ Hard Disk Drive D : WD CAVIAR26351-635 SDRAM at Row(s)   : 0                บ
Echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
Echo.
Echo.
echo PCI device listing:
Echo Bus No. Device No. Func No. Vendor/Device Class Device Class               IRQ
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo    0        7         1     8086   7111   0101  IDE Controller              14
Echo    0        7         2     8086   7112   0C03  Serial Bus Controller       15
Echo    0       16         0     8086   1229   0200  Network Controller          12
Echo    0       18         0     102C   00C0   0300  Display Controller          NA
Echo    0       19         0     125D   1969   0401  Multimedia Device           11
Echo.
echo.
Echo Verifying DMI Pool Data......
Sleep 5000
Echo.
echo Starting ITOS 2.0...
sleep 500
"%EXTENSIONS%\fn.dll" cursor 0 
color F0

:SUPLoop
Call :SUPSCREEN
Type SUP.txt& %CC% /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178 /88 178&echo.
Echo                      (C) 1995 IGTTECH, all rights reserved                     
sleep 1000

%locate% 20 34

%CC% /11 178


sleep 1000
%CC% /11 178
sleep 1000
%CC% /11 178
sleep 1000
%CC% /11 178
sleep 500
%CC% /11 178
sleep 500
%CC% /11 178
sleep 500
%CC% /11 178
sleep 500
%CC% /11 178
sleep 500
%CC% /11 178
sleep 500
%CC% /11 178
sleep 5000
%CC% /11 178
sleep 250
%CC% /11 178
sleep 250
%CC% /11 178
sleep 250
%CC% /11 178
sleep 250
%CC% /11 178
sleep 250
%CC% /11 178
sleep 250
%CC% /11 178
sleep 250
%CC% /11 178
sleep 250
%CC% /11 178
sleep 100
%CC% /11 178
sleep 100
%CC% /11 178
sleep 2000
%CC% /11 178
sleep 1000
%CC% /11 178
sleep 10000

REM ---[STARTUP SCRIPTS]-------------------------------------------------------------------------------------------------------------------------------------------------

:PreSloop
cls
color 0F
sleep 2000
color 3F
sleep 5000
set SLoop=0
set SloopP=1
Set SBLoop=0


cls
echo.
echo.
echo.
echo.
echo.
echo.
type SSP& %CC% /1F 205 /1F 205 /1F 205 /1F 205 /1F 205 /1F 205 /1F 205 /1F 205 /1F 205 /1F 205 /1F 205 /1F 205 /11 178 /1F 83 /1F 116 /1F 97 /1F 114 /1F 116 /1F 117 /1F 112 /11 178 /1F 115 /1F 99 /1F 114 /1F 105 /1F 112 /1F 116 /1F 115 /11 178 /1F 205 /1F 205 /1F 205 /1F 205 /1F 205 /1F 205 /1F 205 /1F 205 /1F 205 /1F 205 /1F 205 /1F 205& Echo.
type SSP& %CC% /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178& Echo.
type SSP& %CC% /77 178 /77 178 /77 178 /77 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /30 176 /30 176& Echo.
type SSP& %CC% /77 178 /77 178 /77 178 /77 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 115 /77 178 /70 111 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /30 176 /30 176& Echo.
type SSP& %CC% /77 178 /77 178 /77 178 /77 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /30 176 /30 176& Echo.
type SSP& %CC% /77 178 /77 178 /77 178 /77 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /FF 178 /55 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /30 176 /30 176& Echo.
type SSP& %CC% /77 178 /77 178 /77 178 /77 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /55 178 /55 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /30 176 /30 176& Echo.
type SSP& %CC% /77 178 /77 178 /77 178 /77 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /55 178 /55 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /30 176 /30 176& Echo.
type SSP& %CC% /77 178 /77 178 /77 178 /77 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /FF 178 /55 178 /77 178 /77 178 /70 83 /70 116 /70 97 /70 110 /70 100 /77 178 /70 98 /70 121 /70 58 /77 178 /11 178 /11 178 /11 178 /88 178 /88 178 /88 178 /11 178 /11 178 /11 178 /88 178 /88 178 /88 178 /11 178 /77 178 /77 178 /30 176 /30 176& Echo.
type SSP& %CC% /77 178 /77 178 /77 178 /77 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /30 176 /30 176& Echo.
type SSP& %CC% /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /77 178 /30 176 /30 176& Echo.
type SSP& %CC% /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /7F 205 /30 176 /30 176& Echo.
type SSP& %CC% /33 178 /33 178 /33 178 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176 /30 176& Echo.
%locate% 9 35
%LCOLOR% 70
Echo ITOS Version 2.0

rem 2 chars from the logo, itos is one line below the logo top.

:Sloop
Set /a SLOOP=%SLOOP%+1
IF "%SLOOP%"=="14" set SloopP=2
IF "%SLOOP%"=="38" Set SLOOPP=3
If "%SLOOP%"=="50" goto :SloopEnd
IF "%SLOOPP%"=="1" call :SAutoLogin
IF "%SLOOPP%"=="2" call :SNetworkStartup
IF "%SLOOPP%"=="3" call :SLoadDesktop
sleep 250
goto :Sloop

:SloopEnd
cls
color 3F
sleep 3000

REM ---[RENDERDESK]-------------------------------------------------------------------------------------------------------------------------------------------------

:RenderDesk
Color 3F
cls

%locate% 23 0
rem  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%GD% wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
%locate% 23 0
%Lcolor% 70
Echo บ~ITOS~บ                             


%sleep% 2000


%Renderbox% 20 6 1 0 - - 77
%Renderbox% 20 6 3 10 - - 77
%Renderbox% 20 6 4 20 - - 77
%Renderbox% 20 6 6 30 - - 77
%Renderbox% 20 6 8 39 - - 77
%Renderbox% 20 6 10 39 - - 77


%locate% 6 20
%lcolor% 1F
Echo อออออออออออออ[Information]อออออออออออออ

%LOCATE% 8 21 & %GD% UUUUU
%LOCATE% 9 21 & %GD% UUWUU
%LOCATE% 10 21 & %GD% UUUUU
%LOCATE% 11 21 & %GD% UUWUU
%LOCATE% 12 21 & %GD% UUWUU
%LOCATE% 13 21 & %GD% UUUUU

%lcolor% 70
%LOCATE% 8 28
Echo Info:
%LOCATE% 10 28
Echo No Mouse was found. Would you
%LOCATE% 11 28
Echo Like a tutorial on how to use
%LOCATE% 12 28
Echo ITOS Without a mouse?
set MTutChoice=Y
Call :MTutChoiceYES

:ReMTutChoice
%EChoice%
SET KBD=%ERRORLEVEL%
Title (%KBD%)
IF "%KBD%"=="13" Goto :MTutChoiceEnd
IF "%KBD%"=="332" call :MTutChoiceNO& Set MTUTChoice=N
IF "%KBD%"=="330" call :MTutChoiceYES& Set MTUTChoice=Y
goto :ReMtutChoice


:MTutChoiceYES
%lcolor% 1F
%locate% 14 28 
Echo [   YES   ]
%lcolor% 70
%locate% 14 44
echo [   N O   ]
goto :EOF


:MTutChoiceNO
%lcolor% 70
%locate% 14 28 
Echo [   YES   ]
%lcolor% 1F
%locate% 14 44
echo [   N O   ]
goto :EOF

:MTutChoiceEnd
%Renderbox% 20 6 1 0 - - 33
%Renderbox% 20 6 3 10 - - 33
%Renderbox% 20 6 4 20 - - 33
%Renderbox% 20 6 6 30 - - 33
%Renderbox% 20 6 8 39 - - 33
%Renderbox% 20 6 10 39 - - 33

If "%MTutChoice%"=="Y" call :MTut


:DeskWait
%ECHOICE%
set KBD=%ERRORLEVEL%
IF "%KBD%"=="126" goto :RenderDesk
IF NOT "%KBD%"=="92" goto :DeskWait


call :ITOSMenu
Set TUTDone=1
goto :DeskWait




pause >nul& Goto :RenderDesk

REM ---[TUTORIAL]-------------------------------------------------------------------------------------------------------------------------------------------------

:Mtut
%Renderbox% 11 6 1 0 - - 77
%Renderbox% 11 6 1 10 - - 77
%Renderbox% 11 6 3 20 - - 77
%Renderbox% 11 6 4 30 - - 77
%Renderbox% 11 6 6 40 - - 77
%Renderbox% 11 6 8 50 - - 77
%Renderbox% 11 6 10 58 - - 77

%locate% 6 11
%lcolor% 1F
Echo ออออออออออออออออออออออออ[Tutorial]ออออออออออออออออออออออออ

%Lcolor% 70

%locate% 8 11
echo  You're using ITOS without a mouse. Since mice have only
%locate% 9 11
echo  been here for a short time, we've made ITOS compatible
%locate% 10 11
echo  with keyboard only. Simply move your selection with the
%locate% 11 11
echo  arrow keys, then hit ENTER. Additionally, To bring up
%locate% 12 11
echo  the ITOS menu, hit "\".
%locate% 14 11
echo                         Try it now!

:MTUTWait
%ECHOICE%
IF NOT "%ERRORLEVEL%"=="92" goto :MTUTWait

%Renderbox% 11 6 1 0 - - 33
%Renderbox% 11 6 1 10 - - 33
%Renderbox% 11 6 3 20 - - 33
%Renderbox% 11 6 4 30 - - 33
%Renderbox% 11 6 6 40 - - 33
%Renderbox% 11 6 8 50 - - 33
%Renderbox% 11 6 10 58 - - 33
sleep 250


%Renderbox% 13 14 1 5 - - 77
%Renderbox% 13 14 2 10 - - 77
%Renderbox% 13 14 3 15 - - 77
%Renderbox% 13 14 4 22 - - 77

%locate% 14 13
%lcolor% 1F
Echo ออออออ[Tutorial]ออออออ

%Lcolor% 70

%locate% 15 13
echo Here's the ITOS Menu.

%locate% 16 13
echo Use your arrow keys to

%locate% 17 13
echo select an option

set tut=1

CALL :ITOSMENU


%Lcolor% 70

%locate% 15 13
echo You've chosen option %IMOption%

%locate% 16 13
echo This will launch the  

%locate% 17 13
echo program highlighted.

Pause >nul

%Renderbox% 13 14 1 5 - - 33
%Renderbox% 13 14 2 10 - - 33
%Renderbox% 13 14 3 15 - - 33
%Renderbox% 13 14 4 22 - - 33



%Renderbox% 32 10 1 4 - - 77
%Renderbox% 32 10 2 8 - - 77
%Renderbox% 32 10 3 12 - - 77
%Renderbox% 32 10 4 16 - - 77

%lcolor% 1F
%locate% 10 32
Echo อออ[Tutorial]อออ

%Lcolor% 70

%locate% 11 32
echo CTRL+F4 Closes



%locate% 11 32
echo That's about it.
%locate% 13 32
echo a d i o s i t o

pause >nul

%Renderbox% 32 10 1 4 - - 33
%Renderbox% 32 10 2 8 - - 33
%Renderbox% 32 10 3 12 - - 33
%Renderbox% 32 10 4 16 - - 33
goto :EOF


อออ[Tutorial]อออ
That's about it.

a d i o s i t o



REM ---[ITOSMENU]-------------------------------------------------------------------------------------------------------------------------------------------------
:ITOSMenu


%REnderbox% 0 21 1 1 - - 77
%REnderbox% 0 21 1 1 - - 77
%REnderbox% 0 20 1 1 - - 77
%REnderbox% 0 19 1 1 - - 77
%REnderbox% 0 19 1 1 - - 77
%REnderbox% 0 18 1 1 - - 77
%REnderbox% 0 17 1 1 - - 77
%REnderbox% 0 16 1 1 - - 77
%REnderbox% 0 15 1 1 - - 77
%REnderbox% 0 14 1 1 - - 77
%REnderbox% 0 13 1 1 - - 77
%REnderbox% 0 12 1 1 - - 77
%REnderbox% 0 12 11 1 - - 77
%REnderbox% 0 12 11 2 - - 77
%REnderbox% 0 12 11 3 - - 77
%REnderbox% 0 12 11 4 - - 77
%REnderbox% 0 12 11 5 - - 77
%REnderbox% 0 12 11 6 - - 77
%REnderbox% 0 12 11 7 - - 77
%REnderbox% 0 12 11 8 - - 77


%LCOLOR% 8F
%LOCATE% 12 0 
echo อ[ITOS]อ

%LCOLOR% 70
%LOCATE% 13 0 
echo Computer

%LOCATE% 14 0 
echo Options

%LOCATE% 16 0 
echo Readme

%LOCATE% 17 0 
echo Calc

%LOCATE% 18 0 
echo Force32

%LOCATE% 19 0 
echo Maz3

%LOCATE% 21 0 
echo ออออออออ

%LOCATE% 22 0 
echo Shutdown

set IMOption=1
call :ITOSMenu1

:ITOSMenuChoice
%EChoice%
set KBD=%ERRORLEVEL%

Title %KBD%, %IMOption%
IF "%KBD%"=="13" goto :ITOSMenuClose

IF "%KBD%"=="327" set /a IMOption=%IMOption%-1
IF "%KBD%"=="335" set /a IMOption=%IMOption%+1
IF "%KBD%"=="92" goto :ITOSMenu8

IF "%IMOption%"=="0" set IMOption=7
IF "%IMOption%"=="8" set IMOption=1
Call :ITOSMenu%IMOPTION%
goto :ITOSMenuChoice

:ITOSMenu1
%LCOLOR% 70
%LOCATE% 22 0 
echo Shutdown

%LCOLOR% 1F
%LOCATE% 13 0 
echo Computer

%LCOLOR% 70
%LOCATE% 14 0 
echo Options 
goto :EOF

:ITOSMenu2
%LCOLOR% 70
%LOCATE% 13 0 
echo Computer

%LCOLOR% 1F
%LOCATE% 14 0 
echo Options 

%LCOLOR% 70
%LOCATE% 16 0 
echo Readme  
goto :EOF


:ITOSMenu3
%LCOLOR% 70
%LOCATE% 14 0 
echo Options 

%LCOLOR% 1F
%LOCATE% 16 0 
echo Readme  

%LCOLOR% 70
%LOCATE% 17 0 
echo Calc    
goto :EOF


:ITOSMenu4

%LCOLOR% 70
%LOCATE% 16 0 
echo Readme  

%LCOLOR% 1F
%LOCATE% 17 0 
echo Calc    

%LCOLOR% 70
%LOCATE% 18 0 
echo Force32 



goto :EOF

:ITOSMenu5
%LCOLOR% 70
%LOCATE% 17 0 
echo Calc    

%LCOLOR% 1F
%LOCATE% 18 0 
echo Force32 

%LCOLOR% 70
%LOCATE% 19 0 
echo Maz3    
goto :EOF

:ITOSMenu6
%LCOLOR% 70
%LOCATE% 18 0 
echo Force32 

%LCOLOR% 1F
%LOCATE% 19 0 
echo Maz3    

%LCOLOR% 70
%LOCATE% 22 0 
echo Shutdown

goto :EOF

:ITOSMenu7

%LCOLOR% 70
%LOCATE% 19 0 
echo Maz3    

%LCOLOR% 1F
%LOCATE% 22 0 
echo Shutdown


%LCOLOR% 70
%LOCATE% 13 0 
echo Computer

goto :EOF

:ITOSMenu8
Set TUT=1

:ITOSMenuClose
%RenderBOX% 8 12 11 3 - - 33
%RenderBOX% 7 12 11 3 - - 33
%RenderBOX% 6 12 11 3 - - 33
%RenderBOX% 5 12 11 3 - - 33
%RenderBOX% 4 12 11 3 - - 33
%RenderBOX% 3 12 11 3 - - 33
%RenderBOX% 2 12 11 3 - - 33
%RenderBOX% 1 12 11 3 - - 33
%RenderBOX% 0 11 1 1 - - 33
%RenderBOX% 0 12 1 1 - - 33
%RenderBOX% 0 13 1 1 - - 33
%RenderBOX% 0 14 1 1 - - 33
%RenderBOX% 0 15 1 1 - - 33
%RenderBOX% 0 16 1 1 - - 33
%RenderBOX% 0 17 1 1 - - 33
%RenderBOX% 0 18 1 1 - - 33
%RenderBOX% 0 19 1 1 - - 33
%RenderBOX% 0 20 1 1 - - 33
%RenderBOX% 0 21 1 1 - - 33


IF "%TUT%"=="1" Set TUT=0& Goto :EOF

IF "%IMOption%"=="1" Call :Computer& goto :EOF
IF "%IMOption%"=="2" Call :Options& goto :EOF
IF "%IMOption%"=="3" Call :Notepad& goto :EOF
IF "%IMOption%"=="4" Call :Calc& goto :EOF
IF "%IMOption%"=="5" Call :F32& goto :EOF
IF "%IMOption%"=="6" Call :MAZ3& goto :EOF
IF "%IMOption%"=="7" Call :Shutdown& goto :EOF

goto :EOF

REM ---[F32]-------------------------------------------------------------------------------------------------------------------------------------------------
:F32

%Renderbox% 20 6 1 0 - - 77
%Renderbox% 20 6 3 10 - - 77
%Renderbox% 20 6 4 20 - - 77
%Renderbox% 20 6 6 30 - - 77
%Renderbox% 20 6 8 39 - - 77
%Renderbox% 20 6 10 39 - - 77


%locate% 6 20
%lcolor% 1F
Echo อออออออออออออ[Information]อออออออออออออ

%LOCATE% 8 21 & %GD% UUUUU
%LOCATE% 9 21 & %GD% UUWUU
%LOCATE% 10 21 & %GD% UUUUU
%LOCATE% 11 21 & %GD% UUWUU
%LOCATE% 12 21 & %GD% UUWUU
%LOCATE% 13 21 & %GD% UUUUU

%lcolor% 70
%LOCATE% 8 28
Echo Info:
%LOCATE% 10 28
Echo Force32 will attempt to force
%LOCATE% 11 28
Echo ITOS To run in 32-bit color.
%LOCATE% 12 28
Echo Are you sure?
set F32choice=Y
Call :F32YES

:F32Choice
%EChoice%
SET KBD=%ERRORLEVEL%
Title (%KBD%)
IF "%KBD%"=="13" Goto :F32End
IF "%KBD%"=="332" call :F32NO& Set F32Choice=N
IF "%KBD%"=="330" call :F32YES& Set F32Choice=Y
IF "%KBD%"=="92" call :ITOSMenu& Goto :F32

goto :F32Choice

:F32YES
%lcolor% 1F
%locate% 14 28 
Echo [   YES   ]
%lcolor% 70
%locate% 14 44
echo [   N O   ]
goto :EOF


:F32NO
%lcolor% 70
%locate% 14 28 
Echo [   YES   ]
%lcolor% 1F
%locate% 14 44
echo [   N O   ]
goto :EOF

:F32End
%Renderbox% 20 6 1 0 - - 33
%Renderbox% 20 6 3 10 - - 33
%Renderbox% 20 6 4 20 - - 33
%Renderbox% 20 6 6 30 - - 33
%Renderbox% 20 6 8 39 - - 33
%Renderbox% 20 6 10 39 - - 33

if "%F32Choice%"=="Y" goto :Crash
goto :EOF


REM ---[SHUTDOWN]-------------------------------------------------------------------------------------------------------------------------------------------------

:Shutdown
%REnderbox% 25 8 1 5 - - 77
%REnderbox% 25 8 2 10 - - 77
%REnderbox% 25 8 3 15 - - 77
%REnderbox% 25 8 4 15 - - 77
%REnderbox% 25 8 5 20 - - 77
%REnderbox% 25 8 6 20 - - 77
%REnderbox% 25 8 7 25 - - 77
%REnderbox% 25 8 8 25 - - 77
%REnderbox% 25 8 9 29 - - 77

%locate% 8 25
%LCOLOR% 1F
echo อออออออออออ[ITOS]ออออออออออออ

%locate% 10 26& %GD% PPPPP
%locate% 11 26& %GD% PPPPP
%locate% 12 26& %GD% PPPPP
%locate% 13 26& %GD% PPPPP

%LCOLOR% 5F
%Locate% 12 29
Echo I

%LCOLOR% 70
%locate% 10 34& Echo Shutdown ITOS:

%locate% 12 34& Echo [ ] Shutdown
%locate% 13 34& Echo [ ] Restart
%locate% 15 34& Echo [ O K ]
%locate% 15 43& Echo [ CANCEL ]

Set SOItos=OK
Set SCItos=SHUT
call :SCItos1
Call :SOItosOK

:SCItosLoop
%Echoice%
Set KBD=%ERRORLEVEL%
IF "%KBD%"=="13" Goto :SCItosEnd
IF "%KBD%"=="332" call :SOItosCANCEL & Set SOItos=CANCEL
IF "%KBD%"=="330" call :SOItosOK & Set SOItos=OK
IF "%KBD%"=="327" call :SCItos1& Set SCItos=SHUT
IF "%KBD%"=="335" call :SCItos2& Set SCItos=REST

IF "%KBD%"=="352" Set SOItos=CANCEL& goto :SCItosEnd
IF "%KBD%"=="27" Set SOItos=CANCEL& goto :SCItosEnd


Goto :SCITosLoop

:SCItosEnd

%REnderbox% 25 8 1 5 - - 33
%REnderbox% 25 8 2 10 - - 33
%REnderbox% 25 8 3 15 - - 33
%REnderbox% 25 8 4 15 - - 33
%REnderbox% 25 8 5 20 - - 33
%REnderbox% 25 8 6 20 - - 33
%REnderbox% 25 8 7 25 - - 33
%REnderbox% 25 8 8 25 - - 33
%REnderbox% 25 8 9 29 - - 33



IF "%SOItos%"=="CANCEL" goto :EOF


%Renderbox% 0 0 2 5 - - FF
%Renderbox% 0 0 2 10 - - FF
%Renderbox% 0 0 4 15 - - FF
%Renderbox% 0 0 5 20 - - FF
%Renderbox% 0 0 8 25 - - FF
%Renderbox% 0 0 10 30 - - FF
%Renderbox% 0 0 12 35 - - FF
%Renderbox% 0 0 14 40 - - FF
%Renderbox% 0 0 16 45 - - FF
%Renderbox% 0 0 18 50 - - FF
%Renderbox% 0 0 19 55 - - FF
%Renderbox% 0 0 20 60 - - FF
%Renderbox% 0 0 21 65 - - FF
%Renderbox% 0 0 22 70 - - FF
%Renderbox% 0 0 23 75 - - FF
%Renderbox% 0 0 24 80 - - FF

%Renderbox% 0 0 2 5 - - 0F
%Renderbox% 0 0 2 10 - - 0F
%Renderbox% 0 0 4 15 - - 0F
%Renderbox% 0 0 5 20 - - 0F
%Renderbox% 0 0 8 25 - - 0F
%Renderbox% 0 0 10 30 - - 0F
%Renderbox% 0 0 12 35 - - 0F
%Renderbox% 0 0 14 40 - - 0F
%Renderbox% 0 0 16 45 - - 0F
%Renderbox% 0 0 18 50 - - 0F
%Renderbox% 0 0 19 55 - - 0F
%Renderbox% 0 0 20 60 - - 0F
%Renderbox% 0 0 21 65 - - 0F
%Renderbox% 0 0 22 70 - - 0F
%Renderbox% 0 0 23 75 - - 0F
%Renderbox% 0 0 24 80 - - 0F


%sleep% 3000

color 0F
cd %FD%
"%EXTENSIONS%\fn.dll" cursor 100
IF "%SCItos%"=="REST" goto :RestartITOS
%LOCATE% 12 0
%CTE% " Press a key to shut down ITOS"
Pause >nul
Echo A> shut
exit&exit
goto :CRASH


:SCItos1
%lcolor% 70
%locate% 12 34& Echo [X]
%locate% 13 34& Echo [ ]
goto :EOF

:SCItos2
%lcolor% 70
%locate% 12 34& Echo [ ]
%locate% 13 34& Echo [X]
goto :EOF

:SOItosOK
%LCOLOR% 1F
%locate% 15 34& Echo [ O K ]
%LCOLOR% 70
%locate% 15 43& Echo [ CANCEL ]
goto :EOF


:SOItosCANCEL
%LCOLOR% 70
%locate% 15 34& Echo [ O K ]
%LCOLOR% 1F
%locate% 15 43& Echo [ CANCEL ]
goto :eof


goto :EOF

REM ---[OPTIONS]-------------------------------------------------------------------------------------------------------------------------------------------------

:Options

%REnderbox% 25 8 1 0 - - 77
%REnderbox% 25 8 2 5 - - 77
%REnderbox% 25 8 3 10 - - 77
%REnderbox% 25 8 4 15 - - 77
%REnderbox% 25 8 5 20 - - 77
%REnderbox% 25 8 6 25 - - 77
%REnderbox% 25 8 7 30 - - 77

%locate% 8 25
%LCOLOR% 1F
echo ออออออออออ[Warning]อออออออออออ

%locate% 10 27
%LCOLOR% 70
Echo Some options are disabled

%locate% 11 27
%LCOLOR% 70
Echo by your organization.

%locate% 13 36
%LCOLOR% 1F
Echo [ O K ]

:OptionsWarningLoop
%Echoice%
Set KBD=%ERRORLEVEL%
IF "%KBD%"=="13" Goto :OptionsWarningEND
IF "%KBD%"=="92" call :ITOSMenu& Goto :Options
goto :OptionsWarning Loop


pause >nul
:OptionsWarningEND
%REnderbox% 25 8 1 0 - - 33
%REnderbox% 25 8 2 5 - - 33
%REnderbox% 25 8 3 10 - - 33
%REnderbox% 25 8 4 15 - - 33
%REnderbox% 25 8 5 20 - - 33
%REnderbox% 25 8 6 25 - - 33
%REnderbox% 25 8 7 30 - - 33
set OptionsPage=ABOUT


:optionsreload
%RenderBox% 16 6 2 0 - - 77
%RenderBox% 16 6 4 10 - - 77
%RenderBox% 16 6 6 20 - - 77
%RenderBox% 16 6 8 30 - - 77
%RenderBox% 16 6 10 40 - - 77
%RenderBox% 16 6 12 49 - - 77

%LOCATE% 6 16
%LCOLOR% 1F
Echo ออออออออออออออออออออ[OPTIONS]ออออออออออออออออออออ
Call :Options%OptionsPage%

:OptionsLOOP
%ECHOICE%
Set KBD=%ERRORLEVEL%
IF "%KBD%"=="327" call :OptionsAbout& Set OptionsPage=ABOUT
IF "%KBD%"=="335" call :OptionsXTEND& Set OptionsPage=XTEND
IF "%KBD%"=="352" goto :OptionsEND
IF "%KBD%"=="27" goto :OptionsEND
IF "%KBD%"=="92" call :ITOSMenu& Goto :Optionsreload
Goto :OptionsLOOP


:OptionsEND

%RenderBox% 16 6 2 0 - - 33
%RenderBox% 16 6 4 10 - - 33
%RenderBox% 16 6 6 20 - - 33
%RenderBox% 16 6 8 30 - - 33
%RenderBox% 16 6 10 40 - - 33
%RenderBox% 16 6 12 49 - - 33

goto :EOF


:OptionsAbout
%LCOLOR% 70
%LOCATE% 7 16 & echo        บ                                         
%LOCATE% 8 16 & echo  About บ                                         
%LOCATE% 9 16 & echo        บ       IGTTECH Operating System 2.0      
%LOCATE% 10 16& echo  XTEND บ       (C)2018 IGTTECH                   
%LOCATE% 11 16& echo        บ                                         
%LOCATE% 12 16& echo        บ                                         
%LOCATE% 13 16& echo        รอออออออออออออออออออออออออออออออออออออออออ
%LOCATE% 14 16& echo        บ                                         
%LOCATE% 15 16& echo        บ Registered to: IGTNET Remote Console    
%LOCATE% 16 16& echo        บ Running on   : ARTEMIS                  
%LOCATE% 17 16& echo        บ                                         

%LCOLOR% 1F
%LOCATE% 8 17
Echo About

%Locate% 8 25 & %GD% PPPPP
%Locate% 9 25 & %GD% PPPPP
%Locate% 10 25& %GD% PPPPP
%Locate% 11 25& %GD% PPPPP

%LCOLOR% 5F
%Locate% 10 28& Echo I
%LCOLOR% 70
goto :EOF



:OptionsXTEND
%LCOLOR% 70
%LOCATE% 7 16 & echo        บ                                         
%LOCATE% 8 16 & echo  About บ IGTTECH XTEND Network Card              
%LOCATE% 9 16 & echo        บ                                         
%LOCATE% 10 16& echo  XTEND รอออออออออออออออออออออออออออออออออออออออออ
%LOCATE% 11 16& echo        บ                                         
%LOCATE% 12 16& echo        บ IP     : 10.0.0.10                      
%LOCATE% 13 16& echo        บ                                         
%LOCATE% 14 16& echo        บ GATEWAY: 10.0.0.138                     
%LOCATE% 15 16& echo        บ                                         
%LOCATE% 16 16& echo        บ DNS    : 10.0.0.138                     
%LOCATE% 17 16& echo        บ                                         

%LCOLOR% 1F
%LOCATE% 10 17
Echo XTEND
goto :EOF



REM ---[CALC]-------------------------------------------------------------------------------------------------------------------------------------------------
:Calc

%REnderbox% 25 8 1 0 - - 77
%REnderbox% 25 8 2 5 - - 77
%REnderbox% 25 8 3 10 - - 77
%REnderbox% 25 8 4 15 - - 77
%REnderbox% 25 8 5 20 - - 77
%REnderbox% 25 8 6 25 - - 77
%REnderbox% 25 8 7 30 - - 77

%locate% 8 25
%LCOLOR% 1F
echo อออออออออออ[Error]ออออออออออออ

%Locate% 10 26
%GD% RwR

%Locate% 11 26
%GD% wRw

%Locate% 12 26
%GD% RwR

%locate% 10 31
%LCOLOR% 70
Echo Calc has done an ilegal

%locate% 11 31
%LCOLOR% 70
Echo operation.

%locate% 13 36
%LCOLOR% 1F
Echo [ O K ]

:CalcErrorLoop
%Echoice%
Set KBD=%ERRORLEVEL%
IF "%KBD%"=="13" Goto :CalcEND
IF "%KBD%"=="92" call :ITOSMenu& Goto :Calc
goto :CalcErrorLoop


pause >nul
:CalcEnd
%REnderbox% 25 8 1 0 - - 33
%REnderbox% 25 8 2 5 - - 33
%REnderbox% 25 8 3 10 - - 33
%REnderbox% 25 8 4 15 - - 33
%REnderbox% 25 8 5 20 - - 33
%REnderbox% 25 8 6 25 - - 33
%REnderbox% 25 8 7 30 - - 33

goto :EOF


set calculation=0
set calc=0
set ans=0

:ReRenderCalc
%RenderBox% 29 4 1 4 - - 77
%RenderBox% 29 4 2 8 - - 77
%RenderBox% 29 4 4 12 - - 77
%RenderBox% 29 4 8 16 - - 77
%RenderBox% 29 4 12 20 - - 77
%RenderBox% 29 4 16 24 - - 77

%Lcolor% 1F

%Locate% 4 29 & Echo ออออออ[Calculator]ออออออ

%LCOLOR% 70

%locate% 8 29 & echo ออออออออออออออออออออออออ
%locate% 10 29& echo   [^<^<] [CE]  [CC] [/ ]  
%locate% 12 29& echo   [7.] [8.]  [9.] [* ]  
%locate% 14 29& echo   [4.] [5.]  [6.] [- ]  
%locate% 16 29& echo   [1.] [2.]  [3.] [+ ]  
%locate% 18 29& echo   [   0   ]  [. ] [= ]  

:CalcLOOP
%EChoice%
Set KBD=%ERRORLEVEL%

%RenderBox% 29 5 3 24 - - 77
%LOCATE% 6 30& Echo %Calculation%


IF "%KBD%"=="352" goto :CalcEND
IF "%KBD%"=="27" goto :CalcEND
IF "%KBD%"=="92" call :ITOSMenu& Goto :ReRenderCalc


If "%KBD%"=="43" set Calc=%calc%+& set calculation=%CALC%&call :CalcDisplay& goto :CalcLoop
If "%KBD%"=="45" set Calc=%calc%-& set calculation=%CALC%&call :CalcDisplay& goto :CalcLoop
If "%KBD%"=="47" set Calc=%calc%/& set calculation=%CALC%&call :CalcDisplay& goto :CalcLoop
If "%KBD%"=="42" set Calc=%calc%*& set calculation=%CALC%&call :CalcDisplay& goto :CalcLoop
If "%KBD%"=="61" call :Calculate& goto :CalcLoop
If "%KBD%"=="13" call :Calculate& goto :CalcLoop
If "%KBD%"=="99" set Calc=0& set calculation=%CALC%& goto :CalcLoop

%RenderBox% 29 5 3 24 - - 77
%LOCATE% 6 30& Echo %Calculation%

Set /a CalcNUM=%KBD%-48
set /a CalcTest=%CalcNUM%/10
IF "%CalcTEST%"=="0" Set CALC=%CALC%%CALCNUM%& Set Calculation=%Calc%&call :CalcDisplay
Title %KBD%, %CalcNUM%, %CalcTEST%

%RenderBox% 29 5 3 24 - - 77
%LOCATE% 6 30& Echo %Calculation%


goto :CalcLoop

:CalcDisplay
%RenderBox% 29 5 3 24 - - 77
%LOCATE% 6 30& Echo %Calculation%
goto :EOF

:Calculate
%LOCATE% 6 30
Set /a ANS=%Calc%
Set Calculation=%CALC%=%ANS%
goto :EOF


%RenderBox% 29 4 1 4 - - 33
%RenderBox% 29 4 2 8 - - 33
%RenderBox% 29 4 4 12 - - 33
%RenderBox% 29 4 8 16 - - 33
%RenderBox% 29 4 12 20 - - 33
%RenderBox% 29 4 16 24 - - 33


Goto :EOF

REM ---[COMPUTER]-------------------------------------------------------------------------------------------------------------------------------------------------

:Computer
%REnderbox% 25 8 1 0 - - 77
%REnderbox% 25 8 2 5 - - 77
%REnderbox% 25 8 3 10 - - 77
%REnderbox% 25 8 4 15 - - 77
%REnderbox% 25 8 5 20 - - 77
%REnderbox% 25 8 6 25 - - 77
%REnderbox% 25 8 7 30 - - 77

%locate% 8 25
%LCOLOR% 1F
echo อออออออออออ[Error]ออออออออออออ

%Locate% 10 26
%GD% RwR

%Locate% 11 26
%GD% wRw

%Locate% 12 26
%GD% RwR

%locate% 10 31
%LCOLOR% 70
Echo This option is disabled

%locate% 11 31
%LCOLOR% 70
Echo by your organization.

%locate% 13 36
%LCOLOR% 1F
Echo [ O K ]

:ComputerLoop
%Echoice%
Set KBD=%ERRORLEVEL%
IF "%KBD%"=="13" Goto :ComputerEND
IF "%KBD%"=="92" call :ITOSMenu& Goto :Computer
goto :ComputerLoop

:ComputerEND
%REnderbox% 25 8 1 0 - - 33
%REnderbox% 25 8 2 5 - - 33
%REnderbox% 25 8 3 10 - - 33
%REnderbox% 25 8 4 15 - - 33
%REnderbox% 25 8 5 20 - - 33
%REnderbox% 25 8 6 25 - - 33
%REnderbox% 25 8 7 30 - - 33

goto :EOF

REM ---[NOTEPAD]-------------------------------------------------------------------------------------------------------------------------------------------------

:Notepad
%RENDERBOX% 11 1 0 10 - - 77
%RENDERBOX% 11 1 2 15 - - 77
%RENDERBOX% 11 1 4 20 - - 77
%RENDERBOX% 11 1 6 25 - - 77
%RENDERBOX% 11 1 8 30 - - 77
%RENDERBOX% 11 1 10 35 - - 77
%RENDERBOX% 11 1 12 40 - - 77
%RENDERBOX% 11 1 14 45 - - 77
%RENDERBOX% 11 1 16 50 - - 77
%RENDERBOX% 11 1 18 55 - - 77
%RENDERBOX% 11 1 21 59 - - 77

%LCOLOR% 1F
%Locate% 1 11 & Echo อออออออออออออออออออออออออ[NOTEPAD]อออออออออออออออออออออออออ
%LCOLOR% 70
%locate% 20 11& Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%Locate% 21 11& echo No Document Loaded. Press F10 for help
%sleep% 250
%Locate% 21 11& Echo Loading readme.txt...                  


Set LINE1=##### #####  ###   ####  
Set LINE2=  #     #   #   # #      IGTTech Operating System
Set LINE3=  #     #   #   #  ####  (C)1995 IGTTech, All Rights R.
Set LINE4=#####   #    ###  ####   
Set LINE5=.
Set LINE6=-----------------------------------------------------------
Set LINE7=.
Set LINE8=  A Demonstration of the new extensions for batch by: 
Set LINE9=.
set LINE10=                      I G T A M P E
Set LINE11=.
Set LINE12=                     Extensions used
Set LINE13=.
Set LINE14=  FN.dll          : LOCATE : To move about the screen
Set LINE15=                  :        :
Set LINE16=                  : COLOR  : To set color of characters
Set LINE17=                  :        : after this command
Set LINE18=                  :        :
Set LINE19=                  : SLEEP  : A Better Sleep.exe
Set LINE20=                  :        :
Set LINE21=                  : KBD    : Read RAW Keyboard input for
set LINE22=                  :        : most keys
Set LINE23=                  :        :
Set LINE24=  Batbox          :        : Fast box rendering without
set LINE25=                  :        : using the ColorChar API.
Set LINE26=                  :        :
Set LINE27=  ColorCHAR       :        : Used for rendering specific
Set LINE28=                  :        : graphics.
set LINE29=.
Set LINE30=.
Set LINE31=FN.dll and Batbox are made by GLS, ColorCHAR is made by
Set LINE32=Thomas Polaert. ITOS is made by Igtampe as a demo for the
Set LINE33=IGTNET SSH portal. If somehow you've found this and like
Set LINE34=where its going, and would like to contribute, please email
Set LINE35=igtapme@gmail.com.
Set LINE36=.
Set LINE37=Thanks for reading and using,
Set Line38=-IGT
rem Echo   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ

:NotepadDisplay


Set FirstLine=1
Set /a LastLine=%Firstline%+18

:PreNotepadDisplayLoop
rem %RENDERBOX% 11 2 18 59 - - FF

%Locate% 2 11
Set ConsoleLine=2
Set TextLine=%FirstLine%
Set /a LastLine=%FirstLine%+18


:NotepadDisplayLoop
%LCOLOR% FF
%locate% %ConsoleLine% 11
Echo                                                           .
%LCOLOR% F0
%locate% %ConsoleLine% 11
TITLE FL=%FirstLine%, LL=%LastLine%, CL=%ConsoleLine%, TL=%TextLine% 
IF "!LINE%TEXTLINE%!"=="" goto :NotepadFirstLoop
IF "!LINE%TEXTLINE%!"=="." (Echo.) ELSE (Echo !LINE%TextLine%!)
Set /a ConsoleLine=%ConsoleLine%+1
Set /a TextLine=%TextLine%+1
If "%TextLine%"=="%LastLine%" Goto :NotepadFirstLoop
Goto :NotepadDisplayLoop


:NotepadFirstLoop
%LCOLOR% 70
%Locate% 21 11& echo LINE: %FIRSTLINE%, Press F10 for Help
%ECHOICE%
SET KBD=%ERRORLEVEL%
IF "%KBD%"=="328" Goto :NotepadRenderDOWN
IF "%KBD%"=="336" goto :NotepadRenderUP
IF "%KBD%"=="23" Goto :NotepadEND
IF "%KBD%"=="352" Goto :NotepadEND
IF "%KBD%"=="323" call :NotepadHelp& Goto :PreNotepadDisplayLoop
IF "%KBD%"=="92" call :ITOSMenu& Goto :ReRenderNotepad
Goto :NotepadFirstLoop

:ReRenderNotepad
%RENDERBOX% 11 1 21 59 - - 77
%LCOLOR% 1F
%Locate% 1 11 & Echo อออออออออออออออออออออออออ[NOTEPAD]อออออออออออออออออออออออออ
%LCOLOR% 70
%locate% 20 11& Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%RENDERBOX% 11 2 18 59 - - FF
Goto :PreNotepadDisplayLoop


:NotepadRenderUP
Set /a FirstLine=%FirstLine%+1
If "%FirstLine%"=="23" set FIRSTLINE=22& goto :NotepadFirstLoop
Goto :PreNotepadDisplayLoop

:NotepadRenderDOWN
Set /a FirstLine=%FirstLine%-1
If "%FirstLine%"=="0" set FIRSTLINE=1& goto :NotepadFirstLoop
Goto :PreNotepadDisplayLoop


:NotepadHELP
%Renderbox% 27 7 2 5 - - 77
%Renderbox% 27 7 4 10 - - 77
%Renderbox% 27 7 6 15 - - 77
%Renderbox% 27 7 8 20 - - 77
%Renderbox% 27 7 10 26 - - 77


%LCOLOR% 1F

%LOCATE% 7 27& Echo ออออออออออ[HELP]ออออออออออ

%LCOLOR% 70

%Locate% 9 28& echo PGUP    : Scroll Up
%Locate% 10 28& echo PGDOWN  : Scroll Down
%Locate% 12 28& echo CTRL+W  : Close Document
%Locate% 13 28& echo CTRL+F4 : Quit

%LCOLOR% 1F

%Locate% 15 36& echo [  OK  ]

:NotepadHelpLoop
%ECHOICE%
SET KBD=%ERRORLEVEL%
IF "%KBD%"=="13" goto :NotepadHelpEnd
IF "%KBD%"=="92" call :ITOSMenu& Goto :NotepadHelp
goto :NotepadHelpLoop


:NotepadHelpEnd
%Renderbox% 27 7 2 5 - - FF
%Renderbox% 27 7 4 10 - - FF
%Renderbox% 27 7 6 15 - - FF
%Renderbox% 27 7 8 20 - - FF
%Renderbox% 27 7 10 26 - - FF
%RENDERBOX% 11 1 21 59 - - 77

%LCOLOR% 1F
%Locate% 1 11 & Echo อออออออออออออออออออออออออ[NOTEPAD]อออออออออออออออออออออออออ
%LCOLOR% 70
%locate% 20 11& Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%RENDERBOX% 11 2 18 59 - - FF


goto :EOF


:NotepadEnd
%RENDERBOX% 11 1 0 10 - - 33
%RENDERBOX% 11 1 2 15 - - 33
%RENDERBOX% 11 1 4 20 - - 33
%RENDERBOX% 11 1 6 25 - - 33
%RENDERBOX% 11 1 8 30 - - 33
%RENDERBOX% 11 1 10 35 - - 33
%RENDERBOX% 11 1 12 40 - - 33
%RENDERBOX% 11 1 14 45 - - 33
%RENDERBOX% 11 1 16 50 - - 33
%RENDERBOX% 11 1 18 55 - - 33
%RENDERBOX% 11 1 21 59 - - 33


goto :EOF

REM ---[MAZ3]-------------------------------------------------------------------------------------------------------------------------------------------------

:Maz3
%RENDERBOX% 18 7 2 5 - - 77
%RENDERBOX% 18 7 4 15 - - 77
%RENDERBOX% 18 7 6 25 - - 77
%RENDERBOX% 18 7 8 35 - - 77
%RENDERBOX% 18 7 10 45 - - 77

%LOCATE% 7 18
%LCOLOR% 1F
Echo อออออออออออออออ[MAZ3 LAUNCHER]อออออออออออออออ
%LOCATE% 9 18 & %GD% wGwwwGwwGwwGGGwGGw
%LOCATE% 10 18& %GD% wGGwGGwGwGwwwGwwwG
%LOCATE% 11 18& %GD% wGwGwGwGGGwwGwwGGw
%LOCATE% 12 18& %GD% wGwwwGwGwGwGwwwwwG
%LOCATE% 13 18& %GD% wGwwwGwGwGwGGGwGGw

%LCOLOR% 70
%LOCATE% 8 37 & Echo บ
%LOCATE% 9 37 & Echo บ This program runs in
%LOCATE% 10 37& Echo บ fullscreen, which may
%LOCATE% 11 37& Echo บ cause issues. 
%LOCATE% 12 37& Echo บ
%LOCATE% 13 37& Echo บ Please select an option

%LOCATE% 15 18& echo   [Open Readme]  [ Run MAZ3 ]  [   Quit   ]

Set CPOSX=1
Call :MAZ3LauncherLoop%CPOSX%

:MAZ3LauncherLoop
%EChoice%
SET KBD=%ERRORLEVEL%
Title (%KBD%)
IF "%KBD%"=="13" Goto :MAZ3LauncherLoopEnd
IF "%KBD%"=="332" call :MAZ3LauncherLoopAdd
IF "%KBD%"=="330" call :MAZ3LauncherLoopSubtract
IF "%KBD%"=="92" call :ITOSMenu& Goto :MAZ3
goto :MAZ3LauncherLOOP

:MAZ3LauncherLoopAdd
IF "%CPOSX%"=="3" goto :EOF
call :MAZ3LauncherLoop%CPOSX%CLEAR
SET /a CPOSX=%CPOSX%+1
CALL :MAZ3LauncherLoop%CPOSX%
goto :EOF

:MAZ3LauncherLoopSubtract
IF "%CPOSX%"=="1" goto :EOF
call :MAZ3LauncherLoop%CPOSX%CLEAR
SET /a CPOSX=%CPOSX%-1
CALL :MAZ3LauncherLoop%CPOSX%
goto :EOF

goto :EOF

:MAZ3LauncherLoop1
%Locate% 15 20
%LCOLOR% 1F
Echo [Open Readme]
%LCOLOR% 70
Goto :eof

:MAZ3LauncherLoop2
%Locate% 15 35
%LCOLOR% 1F
Echo [ Run MAZ3 ]
%LCOLOR% 70
Goto :eof

:MAZ3LauncherLoop3
%Locate% 15 49
%LCOLOR% 1F
Echo [   Quit   ]
%LCOLOR% 70
Goto :eof

:MAZ3LauncherLoop1CLEAR
%Locate% 15 20
%LCOLOR% 70
Echo [Open Readme]
%LCOLOR% 70
Goto :eof

:MAZ3LauncherLoop2CLEAR
%Locate% 15 35
%LCOLOR% 70
Echo [ Run MAZ3 ]
%LCOLOR% 70
Goto :eof

:MAZ3LauncherLoop3CLEAR
%Locate% 15 49
%LCOLOR% 70
Echo [   Quit   ]
%LCOLOR% 70
Goto :eof

:MAZ3Readme
%RENDERBOX% 11 1 0 10 - - 77
%RENDERBOX% 11 1 2 15 - - 77
%RENDERBOX% 11 1 4 20 - - 77
%RENDERBOX% 11 1 6 25 - - 77
%RENDERBOX% 11 1 8 30 - - 77
%RENDERBOX% 11 1 10 35 - - 77
%RENDERBOX% 11 1 12 40 - - 77
%RENDERBOX% 11 1 14 45 - - 77
%RENDERBOX% 11 1 16 50 - - 77
%RENDERBOX% 11 1 18 55 - - 77
%RENDERBOX% 11 1 21 59 - - 77

%LCOLOR% 1F
%Locate% 1 11 & Echo อออออออออออออออออออออออออ[NOTEPAD]อออออออออออออออออออออออออ
%LCOLOR% 70
%locate% 20 11& Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%Locate% 21 11& echo No Document Loaded. Press F10 for help
%sleep% 250
%Locate% 21 11& Echo Loading MAZ3readme.txt...                  

Set LINE1=                    #   #  #  ### ## 
Set LINE2=                    ## ## # #   #   # 
Set LINE3=                    # # # ###  #  ##  
Set LINE4=                    #   # # # #     # 
Set LINE5=                    #   # # # ### ##
Set LINE6=-----------------------------------------------------------
Set LINE7=        A 2D Adventure game by IGTAMPE for ITOS 2.0
Set LINE8=            (C)2018 Igtampe, No Rights Reserved
Set LINE9=.
set LINE10= Stranded on a cold winter desert, you find an abandoned
Set LINE11= research base. Who knows what you'll find about not just
Set LINE12= about those there, but of yourself...
Set LINE13=.
Set LINE14=.
Set LINE15= The third and final itteration of the MAZE API, now with
Set LINE16= a usable graphics engine , and a point asside from simple
Set LINE17= mazes.
Set LINE18=.
Set LINE19=.
Set LINE20=[CONTROLS]-------------------------------------------------
Set LINE21=.
set LINE22= MAZ3 uses the revolutionary and more ergonomic WASD
Set LINE23= control scheme. Press W to move up, S for down, A for
Set LINE24= left and D for right. Additionally, press F10 to pause
set LINE25= and I to access your inventory.
Set LINE26=.
Set LINE27=.
Set LINE28=.
set LINE29=[SCREEN]---------------------------------------------------
Set LINE30=.
Set LINE31= Your game screen is composed by an overhead view of your
Set LINE32= position, and on the bottom is a status and inventory tab.
Set LINE33= Pressing F10 brings up the pause menu to see more options
Set LINE34= including SAVE, LOAD, LOG, etc. which are self explaining.
Set LINE35=.
Set LINE36=.
Set LINE37=Have fun!!
Set Line38=-IGT
call :NotepadDisplay
goto :MAZ3



:MAZ3LauncherLoopEnd
IF "%CPOSX%"=="1" goto :MAZ3Readme
%RENDERBOX% 18 7 2 5 - - 33
%RENDERBOX% 18 7 4 15 - - 33
%RENDERBOX% 18 7 6 25 - - 33
%RENDERBOX% 18 7 8 35 - - 33
%RENDERBOX% 18 7 10 45 - - 33
IF "%CPOSX%"=="2" goto :PREMAZ3GAME
goto :EOF

REM ---[MAZ3GAME]-------------------------------------------------------------------------------------------------------------------------------------------------

:PREMAZ3GAME

%REnderbox% 25 8 1 0 - - 77
%REnderbox% 25 8 2 5 - - 77
%REnderbox% 25 8 3 10 - - 77
%REnderbox% 25 8 4 15 - - 77
%REnderbox% 25 8 5 20 - - 77
%REnderbox% 25 8 6 25 - - 77
%REnderbox% 25 8 7 30 - - 77

%locate% 8 25
%LCOLOR% 1F
echo ออออออออออ[Warning]อออออออออออ

%locate% 10 27
%LCOLOR% 70
Echo The ITOS Menu will not be

%locate% 11 27
%LCOLOR% 70
Echo accessible while playing.

%locate% 13 36
%LCOLOR% 1F
Echo [ O K ]

:MAZ3WarningLoop
%Echoice%
Set KBD=%ERRORLEVEL%
IF "%KBD%"=="13" Goto :MAZ3WarningEND
IF "%KBD%"=="92" call :ITOSMenu& Goto :PREMAZ3Game
goto :MAZ3Warning Loop


:MAZ3WarningEND
%REnderbox% 25 8 1 0 - - 33
%REnderbox% 25 8 2 5 - - 33
%REnderbox% 25 8 3 10 - - 33
%REnderbox% 25 8 4 15 - - 33
%REnderbox% 25 8 5 20 - - 33
%REnderbox% 25 8 6 25 - - 33
%REnderbox% 25 8 7 30 - - 33


:Maz3TitleScreen
%Renderbox% 0 0 2 5 - - 00
%Renderbox% 0 0 2 10 - - 00
%Renderbox% 0 0 4 15 - - 00
%Renderbox% 0 0 5 20 - - 00
%Renderbox% 0 0 8 25 - - 00
%Renderbox% 0 0 10 30 - - 00
%Renderbox% 0 0 12 35 - - 00
%Renderbox% 0 0 14 40 - - 00
%Renderbox% 0 0 16 45 - - 00
%Renderbox% 0 0 18 50 - - 00
%Renderbox% 0 0 19 55 - - 00
%Renderbox% 0 0 20 60 - - 00
%Renderbox% 0 0 21 65 - - 00
%Renderbox% 0 0 22 70 - - 00
%Renderbox% 0 0 23 75 - - 00
%Renderbox% 0 0 24 80 - - 00
cls
color 0F

%LOCATE% 8 0


%GD% ssssssssssssssssssssssssssWsssssWssssWssssWWWWWsWWWWW .
%GD% ssssssssssssssssssssssssssWWsssWWsssWsWsssssssWssssssW .
%GD% ssssssssssssssssssssssssssWsWsWsWsssWsWssssssWsssssssW .
%GD% ssssssssssssssssssssssssssWssWssWssWsssWssssWsssWWWWW .
%GD% ssssssssssssssssssssssssssWsssssWssWWWWWsssWsssssssssW .
%GD% ssssssssssssssssssssssssssWsssssWsWsssssWsWssssssssssW .
%GD% ssssssssssssssssssssssssssWsssssWsWsssssWsWWWWWsWWWWW .
Echo.
Echo                                  L O A D I N G


%SLEEP% 2000

%CLEARLINE% 16
%LOCATE% 16 27
Echo [ New ] [ Load ] [ Quit ]

Set CPOSX=1
Call :MAZ3MenuLoop%CPOSX%

:MAZ3MenuLoop
%EChoice%
SET KBD=%ERRORLEVEL%
Title (%KBD%)
IF "%KBD%"=="13" Goto :MAZ3LauncherMenuEnd
IF "%KBD%"=="332" call :MAZ3LauncherMenuAdd
IF "%KBD%"=="330" call :MAZ3LauncherMenuSubtract
goto :MAZ3MenuLOOP

:MAZ3LauncherMenuAdd
IF "%CPOSX%"=="3" goto :EOF
call :MAZ3MenuLoop%CPOSX%CLEAR
SET /a CPOSX=%CPOSX%+1
CALL :MAZ3MenuLoop%CPOSX%
goto :EOF

:MAZ3LauncherMenuSubtract
IF "%CPOSX%"=="1" goto :EOF
call :MAZ3MenuLoop%CPOSX%CLEAR
SET /a CPOSX=%CPOSX%-1
CALL :MAZ3MenuLoop%CPOSX%
goto :EOF

goto :EOF

:MAZ3MenuLoop1
%LOCATE% 16 27
%LCOLOR% 1F
Echo [ New ]
%LCOLOR% 0F
Goto :eof

:MAZ3MenuLoop2
%LOCATE% 16 35
%LCOLOR% 1F
Echo [ Load ]
%LCOLOR% 0F
Goto :eof

:MAZ3MenuLoop3
%LOCATE% 16 44
%LCOLOR% 1F
Echo [ Quit ]
%LCOLOR% 0F
Goto :eof

:MAZ3MenuLoop1CLEAR
%LOCATE% 16 27
%LCOLOR% 0F
Echo [ New ]
%LCOLOR% 0F
Goto :eof

:MAZ3MenuLoop2CLEAR
%LOCATE% 16 35
%LCOLOR% 0F
Echo [ Load ]
%LCOLOR% 0F
Goto :eof

:MAZ3MenuLoop3CLEAR
%LOCATE% 16 44
%LCOLOR% 0F
Echo [ Quit ]
%LCOLOR% 0F
Goto :eof



pause >nul

:MAZ3LauncherMenuEnd
%CLEARLINE% 16
%LOCATE% 16 27

IF "%CPOSX%"=="3" goto :OnlyRenderDesk
IF "%CPOSX%"=="2" goto :PREMaz3Load
Set /p NAME=Name: 

SET CPOSX=40
SET CPOSY=12

SET CMAP=TEST

Set TAPE1=0
SET TAPE2=0
SET TAPE3=0
SET TAPE4=0
SET RECORDER=0
SET CROSS=0
SET PHONE=0
SET PICKAXE=0
SET KEY=0


call :RenderInventory
call :Maz3FadeIn
goto :MAZ3GAMEMainScreen



:PREMaz3Load
Set M3S=1

:MAZ3Load
IF "%M3S%"=="0" SET M3S=1
IF "%M3S%"=="5" SET M3S=4
call :MAZ3LoadRender
%EChoice%
SET KBD=%ERRORLEVEL%
Title (%KBD%) (%CD%)
IF "%KBD%"=="13" Goto :MAZ3LoadSelect
IF "%KBD%"=="332" Set /a M3S=%M3S%+1
IF "%KBD%"=="330" Set /a M3S=%M3S%-1
goto :MAZ3Load

:MAZ3LoadRender
%RENDERBOX% 27 16 6 24 - - 0F
%Locate% 17 28& Echo         SAVE %M3S%

IF NOT EXIST %CD%\MAZE\SAVES\SAVE%M3S%.isf goto :Maz3LoadNoRender
Call :LoadVar NAME SaveNAME
Call :LoadVar DATE SaveDATE
%locate% 19 28& Echo  Name: %SAVENAME%
%locate% 20 28& Echo  Date: %SAVEDATE%
goto :EOF

:Maz3LoadNoRender
%locate% 19 28& Echo     Save does not
%locate% 20 28& Echo         exist
goto :EOF

:LoadVar
set loadvar=
Set LoadToVar=
Set LoadVar=%1
Set LoadToVar=%2
IF "%LOADTOVAR%"=="" set LoadToVar=%LoadVar%
type %CD%\MAZE\SAVES\SAVE%M3S%.isf|Find /i "%LoadVar%:"> Maz3Temp.tmp
Set /p LoadVarTemp=<Maz3Temp.tmp
Set LVT=!LoadVarTemp:%LoadVar%:=!
Set %LoadToVar%=%LVT%
goto :EOF


:MAZ3LoadSelect
Call :LoadVar CPOSX
Call :LoadVar CPOSY
Call :LoadVAR CMAP
CALL :LoadVAR TAPE1
CALL :LoadVAR TAPE2
CALL :LoadVAR TAPE3
CALL :LoadVAR TAPE4
CALL :LoadVAR RECORDER
CALL :LoadVAR CROSS
CALL :LoadVAR PHONE
CALL :LoadVAR PICKAXE
CALL :LoadVAR KEY
cls
call :RenderInventory
call :Maz3FadeIn
goto :MAZ3GAMEMainScreen

:RenderInventory
%Locate% 19 0
%LCOLOR% 0F
echo อออออออยออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo        บ INVENTORY:
echo        บ  
echo        บ [        ]  [        ] [       ] [               ] [       ]
echo        บ [        ]  [        ] [       ] [               ]

IF "%TAPE1%"=="1" %LOCATE% 22 9& %LCOLOR% 0A& Echo [ TAPE 1 ]
IF "%TAPE2%"=="1" %LOCATE% 23 9& %LCOLOR% 0A& Echo [ TAPE 2 ]
IF "%TAPE3%"=="1" %LOCATE% 22 21& %LCOLOR% 0A& Echo [ TAPE 3 ]
IF "%TAPE4%"=="1" %LOCATE% 23 21& %LCOLOR% 0A& Echo [ TAPE 4 ]
IF "%KEY%"=="1" %LOCATE% 22 32& %LCOLOR% 0A& Echo [  KEY  ]
IF "%CROSS%"=="1" %LOCATE% 23 32& %LCOLOR% 0A& Echo [ CROSS ]
IF "%RECORDER%"=="1" %LOCATE% 22 42& %LCOLOR% 0A& Echo [ TAPE RECORDER ]
IF "%PICKAXE%"=="1" %LOCATE% 23 42& %LCOLOR% 0A& Echo [    PICKAXE    ]
IF "%PHONE%"=="1" %LOCATE% 22 60& %LCOLOR% 0A& Echo [ PHONE ]
%LCOLOR% 0F

%Locate% 20 0

%GD% ssUUU .
%GD% ssUUU .
%GD% sssU .
%GD% sUUUUU .

goto :EOF

19บอออออออยออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
20บ       บ INVENTORY:
21บ       บ  
22บ       บ [ TAPE 1 ]  [ TAPE 3 ] [  KEY  ] [ TAPE RECORDER ] [ PHONE ]
23บ       บ [ TAPE 2 ]  [ TAPE 4 ] [ CROSS ] [    PICKAXE    ]
   อออออออมอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ



:Maz3FadeIn
%locate% 0 0
set Maz3FadeInLoop=0
goto :MAZ3FadeInLoop

:Maz3FadeInLoop2
%locate% 0 0
%LCOLOR% 00
goto :EOF

:Maz3FadeInLoop
Set /a Maz3FadeInLoop=%maz3FadeInLoop%+1
IF "%Maz3FadeInLoop%"=="20" call :Maz3FadeInLoop2
IF "%Maz3FadeInLoop%"=="39" %LCOLOR% 0F& goto :EOF
Echo ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ
%sleep% 15
goto :Maz3FadeInLoop


:MAZ3GAMEMAINSCREEN
Call MAZE\MAPS\%CMAP%.bat
Call :Maz3RenderPOS FIRSTTIME
goto :Maz3MainLoop


:Maz3RenderPOS
IF "%PPOSX%"=="" goto :MAZ3RenderPosSkipPPOS

Title %NOGO%

Echo %NOGO%|FIND /i "%CPOSY%,%CPOSX%"> nul
IF "%ERRORLEVEL%"=="0" SET CPOSX=%PPOSX%& SET CPOSY=%PPOSY%& goto :EOF

"%EXTENSIONS%\FN.dll" SPRITE %PPOSY% %PPOSX% 00 .

Echo %INTERACT%|FIND /i "(%PPOSY%,%PPOSX%)"> nul
IF "%ERRORLEVEL%"=="0" "%EXTENSIONS%\FN.dll" SPRITE %PPOSY% %PPOSX% EE .

:MAZ3RenderPosSkipPPOS
Set PPOSX=%CPOSX%
Set PPOSY=%CPOSY%

"%EXTENSIONS%\FN.dll" SPRITE %CPOSY% %CPOSX% 99 X
goto :EOF



:Maz3Mainloop
%ECHOICE%
Set KBD=%ERRORLEVEL%
IF "%KBD%"=="119" Call :Maz3Up
IF "%KBD%"=="115" Call :Maz3down
IF "%KBD%"=="97" Call :Maz3left
IF "%KBD%"=="100" Call :Maz3right

IF "%KBD%"=="327" Call :Maz3Up
IF "%KBD%"=="335" Call :Maz3down
IF "%KBD%"=="330" Call :Maz3left
IF "%KBD%"=="332" Call :Maz3right

IF "%KBD%"=="323" Call :Maz3Pause
IF "%KBD%"=="105" Call :Maz3inventory

IF "%KBD%"=="126" goto :ReRenderMaz3
IF "%KBD%"=="393" goto :Maz3Error

goto :Maz3Mainloop


:ReRenderMaz3
cls
call :RenderInventory
call :Maz3FadeIn
goto :MAZ3GAMEMainScreen



:Maz3Up
SET /a CPOSY=%CPOSY%-1
call :Maz3RenderPOS
goto :EOF

:Maz3Down
SET /a CPOSY=%CPOSY%+1
call :Maz3RenderPOS
goto :EOF

:Maz3Left
SET /a CPOSX=%CPOSX%-1
call :Maz3RenderPOS
goto :EOF

:Maz3Right
SET /a CPOSX=%CPOSX%+1
call :Maz3RenderPOS
goto :EOF

:Maz3Inventory
Set IPosX=1
Set IPosY=1

:Maz3InventoryLoop
IF NOT "%IPPOSX%"=="" Call :MAZ3IPOS%IPPOSY%%IPPOSX% CLEAR
Call :MAZ3IPOS%IPOSY%%IPOSX%
Set IPPOSX=%IPOSX%
Set IPPOSY=%IPOSY%
%ECHOICE%
Set KBD=%ERRORLEVEL%
IF "%KBD%"=="327" SET /a IPOSY=%IPOSY%-1
IF "%KBD%"=="335" SET /a IPOSY=%IPOSY%+1
IF "%KBD%"=="330" SET /a IPOSX=%IPOSX%-1
IF "%KBD%"=="332" SET /a IPOSX=%IPOSX%+1
IF "%KBD%"=="27" goto :ExitMaz3Inventory
IF "%KBD%"=="13" call :M3IU%IPOSY%%IPOSX%


IF "%IPOSX%"=="6" SET IPOSX=5
IF "%IPOSX%"=="0" SET IPOSX=1
IF "%IPOSY%"=="3" SET IPOSY=2
IF "%IPOSY%"=="0" SET IPOSY=1
IF "%IPOSY%%IPOSX%"=="25" Set IPOSX=%IPPOSX%& SET IPOSY=%IPPOSY%

goto :Maz3InventoryLoop

:M3NoItem
%RENDERBOX% 8 20 4 70 - - 00
%locate% 21 8
rem  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo                             You do not have
%locate% 22 8
Echo                                this item   
Pause >nul
%RENDERBOX% 8 20 4 70 - - 00
call :RenderInventory
goto :EOF

:M3IU11
IF "%TAPE1%"=="0" goto :M3NoItem
Goto :M3TAPENOTICE

:M3TAPENOTICE
%RENDERBOX% 8 20 4 70 - - 00
rem                  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%locate% 21 8 & Echo It's a nice old tape cartridge. You may be able to play it with a
%locate% 22 8 & Echo Tape recorder. Now where could you find one?
Pause >nul
%RENDERBOX% 8 20 4 70 - - 00
call :RenderInventory
goto :EOF

:M3IU12
IF "%TAPE3%"=="0" goto :M3NoItem
Goto :M3TAPENOTICE


:M3IU13
IF "%KEY%"=="0" goto :M3NoItem
%RENDERBOX% 8 20 4 70 - - 00
rem                  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%locate% 21 8 & Echo It's a nice silver key that probably opens a door somewhere.
%locate% 22 8 & Echo It's labled "Test Chambers".
Pause >nul
%RENDERBOX% 8 20 4 70 - - 00
call :RenderInventory
goto :EOF


:M3IU14
IF "%RECORDER%"=="0" goto :M3NoItem
%RENDERBOX% 8 20 4 70 - - 00
rem                  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%locate% 21 8 & Echo It's a Sony tape recorder which can play and record tapes.
%locate% 22 8 & Echo Would you like to play a Tape?   [  YES  ]
%LCOLOR% 1F
%locate% 22 41 & Echo [  YES  ]
Set M3IU14L=Y

:M3IU14L
%Echoice%
Set KBD=%Errorlevel%
IF "%KBD%"=="330" SET M3IU14L=Y&%locate% 22 41 & Echo [  YES  ]
IF "%KBD%"=="332" SET M3IU14L=N&%locate% 22 41 & Echo [  N O  ]
IF "%KBD%"=="13" goto :M3IU14LE
goto :M3IU14L

:M3IU14LE
%LCOLOR% 07
If "%M3IU14L%"=="N" goto :M3IU14LEE
%Locate% 22 8 & Echo Which tape would you like to play? [ TAPE 1 ]
%LCOLOR% 1F
%LOCATE% 22 43
Echo [ TAPE 1 ]


:M3TapeChoiceLoop
%ECHOICE%
SET KBD=%ERRORLEVEL%
IF "%KBD%"=="330" SET /a M3TapeChoice=%M3TapeChoice%-1
IF "%KBD%"=="332" SET /a M3TapeChoice=%M3TapeChoice%+1
IF "%KBD%"=="13" goto :M3TapeChoiceLoopEnd

IF "%M3TapeChoice%"=="0" set M3TapeChoice=5
IF "%M3TapeChoice%"=="6" set M3TapeChoice=1

IF "%M3TapeChoice%"=="5" %LOCATE% 22 45& ECHO CANCEL& goto :M3TapeChoiceLoop

%LOCATE% 22 45& ECHO TAPE %M3TapeChoice%
goto :M3TapeChoiceLoop


:M3TapeChoiceLoopEnd
%RENDERBOX% 8 20 4 70 - - 00
IF "%M3TapeChoice%"=="5" goto :M3IU14LEE
call :M3TapePlay%M3TapeChoice%
goto :M3IU14LEE

:M3TapePlay1
IF NOT "%TAPE1%"=="1" goto :M3TapePlayNoTape
goto :EOF

:M3TapePlay2
IF NOT "%TAPE2%"=="1" goto :M3TapePlayNoTape
goto :EOF

:M3TapePlay3
IF NOT "%TAPE3%"=="1" goto :M3TapePlayNoTape
goto :EOF

:M3TapePlay4
IF NOT "%TAPE4%"=="1" goto :M3TapePlayNoTape
goto :EOF


:M3TapePlayNoTape
%LCOLOR% 07
%locate% 21 8 & Echo                        You don't have that tape




:M3IU14LEE
%RENDERBOX% 8 20 4 70 - - 00
call :RenderInventory
goto :EOF

:M3IU15
IF "%PHONE%"=="0" goto :M3NoItem
%RENDERBOX% 8 20 4 70 - - 00
rem                  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%locate% 21 8 & Echo It's an old celphone, but it still has some charge.
%locate% 22 8 & Echo Would you like to call for help? [  YES  ]
%LCOLOR% 1F
%locate% 22 41 & Echo [  YES  ]
Set M3IU14L=Y

:M3IU15L
%Echoice%
Set KBD=%Errorlevel%
IF "%KBD%"=="330" SET M3IU15L=Y&%locate% 22 41 & Echo [  YES  ]
IF "%KBD%"=="332" SET M3IU15L=N&%locate% 22 41 & Echo [  N O  ]
IF "%KBD%"=="13" goto :M3IU15LE
goto :M3IU15L

:M3IU15LE
%LCOLOR% 07
%RENDERBOX% 8 20 4 70 - - 00
rem If "%M3IU15L%"=="Y" goto :MAZ3END5
call :RenderInventory
goto :EOF

:M3IU21
IF "%TAPE2%"=="0" goto :M3NoItem
Goto :M3TAPENOTICE

:M3IU22
IF "%TAPE4%"=="0" goto :M3NoItem
Goto :M3TAPENOTICE

:M3IU23
IF "%CROSS%"=="0" goto :M3NoItem
%RENDERBOX% 8 20 4 70 - - 00
rem                  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%locate% 21 8 & Echo It's a detailed wooden cross with an image of Jesus. It probably
%locate% 22 8 & Echo belonged to one of the researchers.
Pause >nul
%RENDERBOX% 8 20 4 70 - - 00

call :RenderInventory
goto :EOF

:M3IU24
IF "%PICKAXE%"=="0" goto :M3NoItem
%RENDERBOX% 8 20 4 70 - - 00
rem                  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%locate% 21 8 & Echo It's a big pickaxe, but its not in good shape. One good use and it'll
%locate% 22 8 & Echo probably break.
Pause >nul
%RENDERBOX% 8 20 4 70 - - 00

call :RenderInventory
goto :EOF

:Maz3Pause
%RENDERBOX% 8 20 4 70 - - 00
%LCOLOR% 0F
rem                  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%locate% 20 8 & Echo PAUSE MENU:

%locate% 22 8 & Echo [ Return ]    [  Save  ]    [  Quit  ]
Set PausePOS=1

:M3PauseLoop
IF NOT "%PPausePos%"=="" call :M3Pause%PPausePos% CLEAR
Set PPausePos=%PausePos%
Call :M3Pause%PausePos%
%ECHOICE%
SET KBD=%ERRORLEVEL%
IF "%KBD%"=="330" SET /a PausePOS=%PausePos%-1
IF "%KBD%"=="332" SET /a PausePOS=%PausePos%+1
IF "%KBD%"=="13" goto :M3PauseLoopEnd

IF "%PausePOS%"=="0" set PausePOS=3
IF "%PausePOS%"=="4" set PausePOS=1
goto :M3PauseLoop



:M3Pause1
IF "%1"=="CLEAR" (%LCOLOR% 0F) ELSE (%LCOLOR% 1F)
%Locate% 22 8
Echo [ Return ]
goto :EOF

:M3Pause2
IF "%1"=="CLEAR" (%LCOLOR% 0F) ELSE (%LCOLOR% 1F)
%Locate% 22 22
Echo [  Save  ]
goto :EOF

:M3Pause3
IF "%1"=="CLEAR" (%LCOLOR% 0F) ELSE (%LCOLOR% 1F)
%Locate% 22 36
Echo [  Quit  ]
goto :EOF

:M3PauseLoopEnd
IF "%PausePOS%"=="3" goto :Maz3BackToTitleScreen
IF "%PausePOS%"=="2" call :Maz3Save
%RENDERBOX% 8 20 4 70 - - 00
call :RenderInventory
goto :EOF

:Maz3Save
goto :EOF


:Maz3BackToTitleScreen
%RENDERBOX% 8 20 4 70 - - 00
rem                  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%locate% 22 8 & Echo Would you like to save before quitting?  [  YES  ]
%LCOLOR% 1F
%locate% 22 49 & Echo [  YES  ]
Set M3BTS=Y

:M3BTSL
%Echoice%
Set KBD=%Errorlevel%
IF "%KBD%"=="330" SET M3BTSL=Y&%locate% 22 49 & Echo [  YES  ]
IF "%KBD%"=="332" SET M3BTSL=N&%locate% 22 49 & Echo [  N O  ]
IF "%KBD%"=="13" goto :M3BTSLE
goto :M3BTSL

:M3BTSLE
IF "%M3BTSL%"=="Y" CALL :MAZ3Save
goto :MAZ3TitleScreen



:ExitMaz3Inventory
%LCOLOR% 0F
CALL :MAZ3IPOS%IPOSY%%IPOSX% CLEAR
goto :EOF



:MAZ3IPOS11
%LOCATE% 22 9

IF "%1"=="CLEAR" (if "%TAPE1%"=="1" (%LCOLOR% 0A) ELSE (%LCOLOR% 0F)) ELSE (%LCOLOR% 1F)
IF "%TAPE1%"=="1" (Echo [ TAPE 1 ]) ELSE (Echo [        ])
goto :EOF

:MAZ3IPOS12
%LOCATE% 22 21

IF "%1"=="CLEAR" (if "%TAPE3%"=="1" (%LCOLOR% 0A) ELSE (%LCOLOR% 0F)) ELSE (%LCOLOR% 1F)
IF "%TAPE3%"=="1" (Echo [ TAPE 3 ]) ELSE (Echo [        ])
goto :EOF

:MAZ3IPOS13
%LOCATE% 22 32
IF "%1"=="CLEAR" (if "%KEY%"=="1" (%LCOLOR% 0A) ELSE (%LCOLOR% 0F)) ELSE (%LCOLOR% 1F)
IF "%KEY%"=="1" (Echo [  KEY  ]) ELSE (Echo [       ])
goto :EOF

:MAZ3IPOS14
%LOCATE% 22 42
IF "%1"=="CLEAR" (if "%RECORDER%"=="1" (%LCOLOR% 0A) ELSE (%LCOLOR% 0F)) ELSE (%LCOLOR% 1F)
IF "%RECORDER%"=="1" (Echo [ TAPE RECORDER ]) ELSE (Echo [               ])
goto :EOF

:MAZ3IPOS15
%LOCATE% 22 60
IF "%1"=="CLEAR" (if "%PHONE%"=="1" (%LCOLOR% 0A) ELSE (%LCOLOR% 0F)) ELSE (%LCOLOR% 1F)
IF "%PHONE%"=="1" (Echo [ PHONE ]) ELSE (Echo [       ])
goto :EOF


:MAZ3IPOS21
%LOCATE% 23 9
IF "%1"=="CLEAR" (if "%TAPE2%"=="1" (%LCOLOR% 0A) ELSE (%LCOLOR% 0F)) ELSE (%LCOLOR% 1F)
IF "%TAPE2%"=="1" (Echo [ TAPE 2 ]) ELSE (Echo [        ])
goto :EOF

:MAZ3IPOS22
%LOCATE% 23 21
IF "%1"=="CLEAR" (if "%TAPE4%"=="1" (%LCOLOR% 0A) ELSE (%LCOLOR% 0F)) ELSE (%LCOLOR% 1F)
IF "%TAPE4%"=="1" (Echo [ TAPE 4 ]) ELSE (Echo [        ])
goto :EOF

:MAZ3IPOS23
%LOCATE% 23 32
IF "%1"=="CLEAR" (if "%CROSS%"=="1" (%LCOLOR% 0A) ELSE (%LCOLOR% 0F)) ELSE (%LCOLOR% 1F)
IF "%CROSS%"=="1" (Echo [ CROSS ]) ELSE (Echo [       ])
goto :EOF

:MAZ3IPOS24
%LOCATE% 23 42
IF "%1"=="CLEAR" (if "%PICKAXE%"=="1" (%LCOLOR% 0A) ELSE (%LCOLOR% 0F)) ELSE (%LCOLOR% 1F)
IF "%PICKAXE%"=="1" (Echo [    PICKAXE    ]) ELSE (Echo [               ])
goto :EOF


:Maz3Error
%REnderbox% 25 8 1 0 - - 77
%REnderbox% 25 8 2 5 - - 77
%REnderbox% 25 8 3 10 - - 77
%REnderbox% 25 8 4 15 - - 77
%REnderbox% 25 8 5 20 - - 77
%REnderbox% 25 8 6 25 - - 77
%REnderbox% 25 8 7 30 - - 77

%locate% 8 25
%LCOLOR% 1F
echo อออออออออออ[Error]ออออออออออออ

%Locate% 10 26
%GD% RwR

%Locate% 11 26
%GD% wRw

%Locate% 12 26
%GD% RwR

%locate% 10 31
%LCOLOR% 70
Echo Maz3 has performed an

%locate% 11 31
%LCOLOR% 70
Echo illegal operation.

%locate% 13 36
%LCOLOR% 1F
Echo [ O K ]

pause >nul
%REnderbox% 25 8 1 0 - - 33
%REnderbox% 25 8 2 5 - - 33
%REnderbox% 25 8 3 10 - - 33
%REnderbox% 25 8 4 15 - - 33
%REnderbox% 25 8 5 20 - - 33
%REnderbox% 25 8 6 25 - - 33
%REnderbox% 25 8 7 30 - - 33

goto :OnlyRenderDesk


:OnlyRenderDesk
cls
Color 3F

%locate% 23 0
rem  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%GD% wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
%locate% 23 0
%Lcolor% 70
Echo บ~ITOS~บ                             
goto :EOF


REM ---[GRAPHICS TEST ZONE]-------------------------------------------------------------------------------------------------------------------------------------------------


=========SAVE 1=========         

  NAME: Asdfeasdwawaasd
| DATE: Mon 09/10/2018 |


=========SAVE 1=========         

       
         exist



rem Box COL LINE [Height] [Width] [Sepration] [BG_Char] [color] [Type]



   ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
00บ                           =========SAVE 1=========                           
01บ
02บ
03บ
04บ
05บ
06บ
07บ
08บ
09บ
10บ
11บ
12บ
13บ
14บ
15บ
16บ
17บ
18บ
19บอออออออยอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
20บ  ###  บ INVENTORY:
21บ  ###  บ  
22บ   #   บ [ TAPE 1 ]  [ TAPE 3 ] [  KEY  ] [ TAPE RECORDER ] [ PHONE ]
23บ ##### บ [ TAPE 2 ]  [ TAPE 4 ] [ BIBLE ] [    PICKAXE    ]
   อออออออมอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
   0123456789111111111122222222223333333333444444444455555555556666666666777777777
             012345678901234567890123456789012345678901234567890123456789123456789




อออออออออออออออ[MAZ3 LAUNCHER]อออออออออออออออ
                   บ
 #   #  #  ### ##  บ This program runs in
 ## ## # #   #   # บ fullscreen, which may
 # # # ###  #  ##  บ cause issues. 
 #   # # # #     # บ 
 #   # # # ### ##  บ Please select an option

  [Open Readme]  [ Run MAZ3 ]  [   Quit   ]

อออออออออออออออ[MAZ3 LAUNCHER]อออออออออออออออ


ออออออออออ[HELP]ออออออออออ

 CTRL+O  : Open
 CTRL+S  : Save Document
 CTRL+N  : New
 CTRL+W  : Close Document
 CTRL+F4 : Quit

         [  OK  ]

อออออออออออออออออออออออออ[NOTEPAD]อออออออออออออออออออออออออ
บ FILE บ
อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
















อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
X=1, Y=1, Readme.txt, READ ONLY




ออออออ[Calculator]ออออออ
 
2+2=4 
 
ออออออออออออออออออออออออ
                       
  [<<] [CE]  [CC] [/ ]  
                       
  [7.] [8.]  [9.] [* ]  
                       
  [4.] [5.]  [6.] [- ]  
                       
  [1.] [2.]  [3.] [+ ]  
                       
  [   0   ]  [. ] [= ]  
 




ออออออออออออออออออออ[OPTIONS]ออออออออออออออออออออ
       บ                                         
 About บ PPPPP                                   
       บ PPPPP IGTTECH Operating System 2.0      
 XTEND บ PPPIP (C)2018 IGTTECH                   
       บ PPPPP                                   
       บ                                         
       บอออออออออออออออออออออออออออออออออออออออออ
       บ                                         
       บ Registered to: IGTNET Remote Console    
       บ Running on   : ARTEMIS                     
       บ                                         


ออออออออออออออออออออ[OPTIONS]ออออออออออออออออออออ
       บ
 About บ IGTTECH XTEND Network Card
       บ
 XTEND บอออออออออออออออออออออออออออออออออออออออออ
       บ
       บ IP     : 10.0.0.10                      
       บ     
       บ GATEWAY: 10.0.0.138                     
       บ
       บ DNS    : 10.0.0.138                     
       บ





   ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
00บ
01บ           อออออออออออออออออออออออออ[NOTEPAD]อออออออออออออออออออออออออ
02บ
03บ
04บ                             ออออออ[Calculator]ออออออ
05บ
06บ                ออออออออออออออออออออ[OPTIONS]ออออออออออออออออออออ
07บ                  อออออออออออออออ[MAZ3 LAUNCHER]อออออออออออออออ
08บ                          อออออออออออ[ITOS]ออออออออออออ
19บ 
10บ                                อออ[Tutorial]อออ
11บ
12บอ[ITOS]อ
13บ
14บ
15บssssssssssssssssssssssssssWWsssWWsssWsWsssssssWssssssW
16บ
17บ
18บ
19บ
20บ         
21บออออออออ
22บShutdown
23บบ ITOS บ                                                                 บ14:30
   อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
   0123456789111111111122222222223333333333444444444455555555556666666666777777777
             012345678901234567890123456789012345678901234567890123456789123456789

REM ---[CRASH]-------------------------------------------------------------------------------------------------------------------------------------------------


:crash
cls
Color 1F	
sleep 500
color 0F
sleep 250
color 1F
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
Type BSOD.txt& %CC% /77 178 /71 73 /71 84 /71 79 /71 83 /77 178&Echo.
echo.
echo      A fatal exception 0E has occurred at 0028:C0034B23. The current
echo      application will be terminated.
echo. 
echo      *  Press any key to terminate the current application.
echo      *  Press CTRL+ALT+DEL again to restart your computer. You will
echo         lose any unsaved information in all applications.
Echo.
echo                            Press any key to continue                           
rem อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Pause >nul
"%EXTENSIONS%\fn.dll" cursor 100
Echo A> shut
cls
color 0F
exit
goto :eof





:SUPScreen
cls
Echo.
Echo.
Echo.

type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.

Echo                                     ITOS v2.0
Echo.
Echo.
goto :EOF

REM ---[OLD CODE]-------------------------------------------------------------------------------------------------------------------------------------------------

type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /55 178 /55 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /55 178 & Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 & Echo.

อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ

:SLoadBar
%locate% 14 45
set /a sbloop=%SBloop%+1
if "%SBLOOP%"=="1" %CC% /11 178 /11 178 /11 178 /88 178 /88 178 /88 178 /11 178 /11 178 /11 178 /88 178 /88 178 /88 178 /11 178
if "%SBLOOP%"=="2" %CC% /88 178 /11 178 /11 178 /11 178 /88 178 /88 178 /88 178 /11 178 /11 178 /11 178 /88 178 /88 178 /88 178
if "%SBLOOP%"=="3" %CC% /88 178 /88 178 /11 178 /11 178 /11 178 /88 178 /88 178 /88 178 /11 178 /11 178 /11 178 /88 178 /88 178
if "%SBLOOP%"=="4" %CC% /88 178 /88 178 /88 178 /11 178 /11 178 /11 178 /88 178 /88 178 /88 178 /11 178 /11 178 /11 178 /88 178
if "%SBLOOP%"=="5" %CC% /11 178 /88 178 /88 178 /88 178 /11 178 /11 178 /11 178 /88 178 /88 178 /88 178 /11 178 /11 178 /11 178
if "%SBLOOP%"=="6" %CC% /11 178 /11 178 /88 178 /88 178 /88 178 /11 178 /11 178 /11 178 /88 178 /88 178 /88 178 /11 178 /11 178
if "%SBLOOP%"=="7" %CC% /11 178 /11 178 /11 178 /88 178 /88 178 /88 178 /11 178 /11 178 /11 178 /88 178 /88 178 /88 178 /11 178
if "%SBLOOP%"=="7" Set SBLoop=0
Goto :eof

:SAutoLogin
if "%SLOOP%"=="1" (
%locate% 12 35
%LCOLOR% 70
Echo Auto login)
call :SLoadBar
Goto :EOF

:SNetworkStartup
if "%SLOOP%"=="14" (
%locate% 12 35
%LCOLOR% 70
Echo Initializing Network)
call :SLoadBar
Goto :EOF

:SLoadDesktop
if "%SLOOP%"=="38" (
%locate% 12 35
%LCOLOR% 70
Echo Loading Desktop      )
call :SLoadBar
Goto :EOF

อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
                                                                                                                                     |Text begins here                                                                                                                                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                   ============ Startup scripts ============                                                                    ============ Startup scripts ============                   
                   |                                       |                                                                    |                                       |                      
                   |   IIIIIIIIII                          |SS                                                                  |   IIIIIIIIII                          |SS
                   |   IIIIIIIIII  IGTTECH Version 2.0     |SS                                                                  |   IIIIIIIIII  ITOS Version 2.0        |SS
                   |   IIIIIIIIII                          |SS                                                                  |   IIIIIIIIII                          |SS
                   |   IIIIII   I                          |SS                                                                  |   IIIIII   I                          |SS
                   |   IIIIIII II  Auto Login              |SS                                                                  |   IIIIIII II  Loading desktop         |SS
                   |   IIIIIII II                          |SS                                                                  |   IIIIIII II                          |SS
                   |   IIIIII   I  Stand By: XXXXXXXXXXXXX |SS                                                                  |   IIIIII   I  Stand by: XXXXXXXXXXXXX |SS
                   |   IIIIIIIIII                          |SS                                                                  |   IIIIIIIIII                          |SS
                   |                                       |SS                                                                  |                                       |SS                    
                   =========================================SS                                                                  =========================================SS
                      SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS                                                                     SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
              
                         IIIIIIIIIIIIIIIIIII                              
                         IIIIIIIIIIIIIIIIIII
                         IIIIIIIIIIIIIIIIIII
                         IIIIIIIIIIIIIIIIIII
                         IIIIIIIIIIIIIIIIIII
                         IIIIIIIIIIIIIIIIIII
                         IIIIIIIIIIIIIIIIIII
                         IIIIIIIIIIIII     I
                         IIIIIIIIIIIIIII III
                         IIIIIIIIIIIIIII III
                         IIIIIIIIIIIIIII III
                         IIIIIIIIIIIIIII III
                         IIIIIIIIIIIII     I
                         IIIIIIIIIIIIIIIIIII                              



                              IIIIIIIIIIIIIIIIIII
     
อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
                      


                         IIIIIIIIIIIIIIIIIIIIIIIIIIIII                         
                         IIIIIIIIIIIIIIIIIIIIIIIIIIIII
                         IIIIIIIIIIIIIIIIIIIIIIIIIIIII
                         IIIIIIIIIIIIIIIIIIIIIIIIIIIII
                         IIIIIIIIIIIIIIIIIIIIIIIIIIIII
                         IIIIIIIIIIIIIIIIIIIIIIIIIIIII
                         IIIIIIIIIIIIIIIIII          I
                         IIIIIIIIIIIIIIIIII          I
                         IIIIIIIIIIIIIIIIIIIIII  IIIII
                         IIIIIIIIIIIIIIIIIIIIII  IIIII
                         IIIIIIIIIIIIIIIIIIIIII  IIIII
                         IIIIIIIIIIIIIIIIIIIIII  IIIII
                         IIIIIIIIIIIIIIIIIIIIII  IIIII
                         IIIIIIIIIIIIIIIIIIIIII  IIIII
                         IIIIIIIIIIIIIIIIIIIIII  IIIII
                         IIIIIIIIIIIIIIIIIIIIII  IIIII
                         IIIIIIIIIIIIIIIIIIIIII  IIIII
                         IIIIIIIIIIIIIIIIII          I
                         IIIIIIlIIIIIIIIIIII          I
                         IIIIIIIIIIIIIIIIIIIIIIIIIIIII                         
              


goto :go

:BIGI
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo.
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /FF 178 /55 178& Echo. 
type BPS& %CC% /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178 /55 178& Echo.
goto :EOF


:BIOSTOP
cls
%CC% /FF 178 /FF 178 /FF 178 /44 178 /44 178 /FF 178 /FF 178 /44 178 /FF 178 /FF 178 /FF 178& type BiosSpace.txt&%CC% /EE 178 /00 178 /00 178 /EE 178 /00 178 /00 178 /EE 178& echo.
%CC% /44 178 /FF 178 /44 178 /44 178 /FF 178 /44 178 /44 178 /44 178 /44 178 /FF 178 /44 178& type BiosSpace.txt&%CC% /00 178 /EE 178 /00 178 /EE 178 /00 178 /EE 178 /00 178& echo.
%CC% /44 178 /FF 178 /44 178 /44 178 /FF 178 /44 178 /FF 178 /44 178 /44 178 /FF 178 /44 178& type BiosSpace.txt&%CC% /00 178 /00 178 /EE 178 /EE 178 /EE 178 /00 178 /00 178& echo.
%CC% /FF 178 /FF 178 /FF 178 /44 178 /44 178 /FF 178 /FF 178 /44 178 /44 178 /FF 178 /44 178& type Bios.txt& %CC% /AA 178 /AA 178 /AA 178 /AA 178 /AA 178 /AA 178 /AA 178& echo.
goto :eof
s
อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
III  GG TTT                                                             o  o  o
 I  G    T                                                               o o o
 I  G G  T                                                                ooo
III  GG  T                                                              ooooooo
pause >nul