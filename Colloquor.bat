@echo off
Goto :MainStart

:logo
%GD% PPPPPPPPPPPPPPppSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSp .
%GD% PPPPPPPPPPPPPPpSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS .
%GD% PPPPPPPPPPPPPPpSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSWWWSSSS .
%GD% PPPPPPPPPPPPPPpSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSWWWSSSS .
%GD% PPPPPPPPPPPPPPpSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSWWWSSSS .
%GD% PPPPPPPPPPPPPPpSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSWWWSSSS .
%GD% PPPPPPPPPPPPPPpSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSWWWSSSS .
%GD% PPPPPPPPPPPPPPpSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSWWWSSSS .
%GD% PPPPPPPPPPPPPPpSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS .
%GD% PPPPPPPPPPPPPPpSSSSWWWSSSWWWSSSWWWSSSWWWSSSWWWSSSWWWSSSWWWSSSS .
%GD% PPPPPPPPPPPPPPpSSSSWWWSSSWWWSSSWWWSSSWWWSSSWWWSSSWWWSSSWWWSSSS .
%GD% PPPPPPPPPPPPPPpSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS .
%GD% PPPPPPPPPPPPPPppSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSp .
%GD% PPPPPPPPPPPPPPpppppSSSSSSSppppppppppppppppp . 
%GD% PPPPPPPPPPPPPPpppppSSSSSSppWWWpWWWpWpppWpppWWWpWWWWpWpWpWWWpWWW .
%GD% PPPPPPPPPPPPPPpppppSSSSSpppWpppWpWpWpppWpppWpWpWppWpWpWpWpWpWWW .
%GD% PPPPPPPPPPPPPPpppppSSSSppppWpppWpWpWpppWpppWpWpWpWWpWpWpWpWpWWp .
%GD% PPPPPPPPPPPPPPPppppSSppppppWWWpWWWpWWWpWWWpWWWpWWWWpWWWpWWWpWpW .
rem |          									   |
Goto :EOF


:MainStart
set BG=5
color 5F
Echo Please wait, setting some variables...
set debug=%CD%\Colloquor\Debug.log

Echo -------------------------->> %DEBUG%
Echo COLLOQUOR 3.0>> %DEBUG%
Echo -------------------------->> %DEBUG%
Echo.>> %DEBUG%
Echo Setting Variables >> %DEBUG%

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
Echo Variables set, calling UI. >> %DEBUG%
cls
echo.
Call :LOGO
Echo.
Echo.
rem                                         |
echo                          For Single Window SSH Networks
Echo.
Echo Press a key to connect                                             Version 3.1
rem |          									   |
cd Colloquor
Echo Loading Colloquor, Current directory: %CD%>> %DEBUG%
set /p CNAME=<NAME.txt

pause >nul
goto :welcome

:Top
Echo                                c o l l o q u o r
goto :eof

:ChanRetry
Echo Could not find %CHAN%, Retrying...>> %DEBUG%
Echo.
Echo That's not a channel. Please try again.
Set /p CHAN=:
IF NOT EXIST %CHAN% goto :CHANRETRY
Echo Finally found %CHAN%>> %DEBUG%
goto :EOF

:ChanPass
Echo Password.dll found on %CD%, Asking>> %DEBUG%
Echo.
Echo This channel has a password. Please type it, or ABORT to cancel.


:ChanPassRetry
Set /p PASS=:

IF /i "%PASS%"=="ABORT" (
	Set abort=1
	goto :EOF)

Set /p RPASS=<PASS.dll
IF "%RPASS%"=="%PASS%" goto :EOF
Echo.
Echo That's not the Password.
Goto :ChanPassRetry

:RESTART
Set Abort=0
cd..
cd..
Echo Restarting, %CD%>> %DEBUG%
goto :welcome


:Welcome
color 05
cls
set top=call :TOP 
call :TOP
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo Welcome to %CNAME%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
Echo Please select a nickname:
Set /p NICK=:
Echo.
CD Channels
:ReChannel
dir /b
Echo.
Echo Please type the name of a channel:
Set /p CHAN=:
IF NOT EXIST %CHAN% call :ChanRetry
cd %CHAN%
IF EXIST PASS.dll call :ChanPass
IF "%ABORT%"=="1" goto :RESTART
Echo.
Echo Please stand by, joining channel %CHAN%...

Rem making sure some stuff is where it goes
if not exist USERS md USERS
if not exist LOGS md LOGS


rem registering user
cd USERS
echo %NICK%> "%NICK%"

Rem Announcing and Logging...
cd..
Type Chat1.tmp> chat2.tmp
Type Chat.tmp> chat1.tmp
Echo %NICK% Joined the chat> chat.tmp
echo %NICK% Joined the Chat>> logs\SERVER.txt


:CLS
Echo CLS Done: %CD%>> %DEBUG%
CLS
%top%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Press [T] to chat, [D] to Disconnect, and [H] for more commands.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo.
type chat2.tmp& type Chat1.tmp
If "%CLS%"=="1" type chat.tmp& Set CLS=0

:ChatLoop

CHOICE /C THCFADRBGNVO /D B /T 1 > nul
Set CHOICE=%ERRORLEVEL%
IF "%CHOICE%"=="1" goto :CHAT
IF "%CHOICE%"=="2" CALL :HELP
IF "%CHOICE%"=="3" Set CLS=1& goto :CLS
IF "%CHOICE%"=="4" CALL :AFK
IF "%CHOICE%"=="5" CALL :ABOUT
IF "%CHOICE%"=="6" goto :DISCONNECT
IF "%CHOICE%"=="7" goto :TRAW
IF "%CHOICE%"=="9" goto :CChannel
IF "%CHOICE%"=="10" goto :CNickname
IF "%CHOICE%"=="11" IF EXIST TYPE.tmp DEL type.tmp
IF "%CHOICE%"=="12" call :UONLINE

IF EXIST TYPE.tmp Color 0D
If NOT EXIST Type.tmp COLOR 05
if not exist CHAT.tmp goto :Chatloop
Set /p CHAT=<CHAT.tmp
IF "%CHAT%"=="%OLDCHAT%" goto :ChatLOOP
Echo %CHAT%
Set OLDCHAT=%CHAT%
goto :CHATLOOP


:UONLINE
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Users online in %CHAN%: 
cd users
dir /b
cd..
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
goto :EOF

:CChannel
CD Users
Del "%NICK%"
cd..
Type Chat1.tmp> chat2.tmp
Type Chat.tmp> chat1.tmp
Echo %NICK% Left the chat> Chat.tmp
cd..
Echo.
goto :ReChannel


:CNickname
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Set OLDNICK=%NICK%
Set /p NICK=New Nickname: 
CD USERS
REN "%OLDNICK%" "%NICK%"
cd..
Type Chat1.tmp> chat2.tmp
Type Chat.tmp> chat1.tmp
Echo %OLDNICK% is now %NICK%> Chat.tmp
Set OLDCHAT=%OLDNICK% is now %NICK%
SET CHAT=%OLDNICK% is now %NICK%
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
goto :ChatLoop

:NopoChat
Set /p TYPING=<TYPE.tmp
Echo ออ[%TYPING% is typing]ออ
goto :Chatloop

:Chat
If exist type.tmp goto :NopoChat
color 0D
Echo %NICK%> Type.tmp
Set /p TYPE=[%NICK%] 
Type Chat1.tmp> chat2.tmp
Type Chat.tmp> chat1.tmp
Echo [%NICK%] %TYPE%> CHAT.tmp
Set OLDCHAT=[%NICK%] %TYPE%
SET CHAT=[%NICK%] %TYPE%
Echo Wrote to %CD%\CHAT.tmp>> %DEBUG%
del type.tmp
color 05
goto :CHATLOOP

:Help
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo [C] Clear Screen [A] About      [R] Tellraw [G] Change Channel [O] Users Online
Echo [F] AFK          [D] Disconnect [T] Chat    [N] Change Name    
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Goto :EOF

:AFK
IF "%AFK%"=="1" goto :NoMoreAFK
Type Chat1.tmp> chat2.tmp
Type Chat.tmp> chat1.tmp
Echo %NICK% is AFK> Chat.tmp
Set AFK=1
goto :EOF

:NoMoreAFK
Type Chat1.tmp> chat2.tmp
Type Chat.tmp> chat1.tmp
Echo %NICK% is no longer AFK> Chat.tmp
Set AFK=0
Goto :EOF

:About
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo Colloquor [Version 3.1] ^| A network based communication platform, reworked for
Echo (C)2018 Igtampe, NRR    ^| SSH Networks. Based on TEBECON.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
goto :EOF

:TRAW
If exist type.tmp goto :NopoChat
Color 0D
Echo %NICK%> Type.tmp
Set /p TYPE=
Type Chat1.tmp> chat2.tmp
Type Chat.tmp> chat1.tmp
Echo %TYPE%> CHAT.tmp
Set OLDCHAT=%TYPE%
SET CHAT=%TYPE%
del type.tmp
Color 05
goto :CHATLOOP

:Disconnect
CD Users
Del "%NICK%"
cd..
Type Chat1.tmp> chat2.tmp
Type Chat.tmp> chat1.tmp
Echo %NICK% Left the chat> Chat.tmp
CD %FD%
Echo.
Echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo You've been disconnected. You're now back at the IGTNET's root directory.
Echo.
Echo Thanks for using Colloquor
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ





