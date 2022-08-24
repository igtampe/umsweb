@echo off
Color F0
Color 0A
cls
IF "%1"=="CHARTEST" goto :CHARTEST
echo > nul
call :MainBanner
Echo.
Echo                                  Loading System                                
rem  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ

set MAINBANNER=call :MainBanner
set echocolor=%CD%\common\echocolor.bat
Set EC=call %CD%\common\echocolor.bat
set SPACE=%CD%\Common\space
set Colon=%CD%\Common\Colon
set SCounter=call %CD%\Common\StringCounter.bat
cd 1994
set FD=%CD%
set TPS10=call TPS 10
set TPS50=call TPS 50
SET TPS=CALL TPS
set Erase=type "%CD%\eraser.txt"
set EraseLine=type "%cd%\eraserline.txt"
set sleep=%CD%\SLEEP.exe
IF /i "%1"=="CONVO" goto :JustChat

cd bars
set bload=0

:barLoad
set /a Bload=%Bload%+1
type Bar%Bload%.txt
%sleep% 250
cls
%mainbanner%
Echo.
Echo                                  Loading System                                
IF "%bLOAD%"=="45" goto :BarLoadDone
goto :Barload

:BarLoadDone
cls
%mainbanner%
echo.
echo.
Type Bar46.txt
Pause >nul
cls
%mainbanner%
echo.
echo.
Set /p USER=                                  USER: 
cd..> nul
Type pass.txt
Pause >nul
Type star.txt
Pause >nul
Type star.txt
Pause >nul
Type star.txt
Pause >nul
Type star.txt
cd bars
Echo.
Echo.
Echo                              Creating User Profile
set spin=0

:Spinner
set /a spin=%spin%+1
cls
%mainbanner%
echo.
echo.
Echo                                   USER: %USER%
Echo                                   PIN : ****
Echo.
Echo                              Creating User Profile
Type Spin1.txt
%SLEEP% 250
cls
%mainbanner%
echo.
echo.
Echo                                   USER: %USER%
Echo                                   PIN : ****
Echo.
Echo                              Creating User Profile
type Spin2.txt
%SLEEP% 250
cls
%mainbanner%
echo.
echo.
Echo                                   USER: %USER%
Echo                                   PIN : ****
Echo.
Echo                              Creating User Profile
type Spin3.txt
%SLEEP% 250
cls
%mainbanner%
echo.
echo.
Echo                                   USER: %USER%
Echo                                   PIN : ****
Echo.
Echo                              Creating User Profile
type Spin4.txt
%sleep% 250
cls
%mainbanner%
echo.
echo.
Echo                                   USER: %USER%
Echo                                   PIN : ****
Echo.
Echo                              Creating User Profile
IF "%SPIN%"=="10" goto :SpinnerDone
Goto :spinner

:spinnerDone
cd..
Set USERS=2
:CLS
cls 
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo.
Echo International Get Together Network [V 1.0]
Echo (C)1994 Igtnet, All Rights Reserved
Echo.
Echo.
Echo Welcome %user%! There are currently [%USERS%] Users Online.
Echo.
Echo Type HELP for a list of all of our commands. Please enjoy your stay!
Echo.
Echo.

:C
Set /p c=:
call VERTO %C%
If /i "%CMD%"=="ABOUT" goto :about
If /i "%CMD%"=="CHAT" goto :chat
If /i "%CMD%"=="NEWS" Goto :news
If /i "%CMD%"=="ONLINE" goto :online
If /i "%CMD%"=="GAMES" goto :GAMES
If /i "%CMD%"=="FRIEND" goto :friend
IF /i "%CMD%"=="HELP" goto :help
IF /I "%CMD%"=="CLS" goto :CLS
IF /i "%CMD%"=="EXIT" goto :exit
IF /i "%CMD%"=="LIBERATE" goto :LIBERATE
Echo.
Echo Couldn't Recognize %CMD%
Echo.
goto :C

:AccessDenied
Echo.
Echo You do not have permission to Liberate.
echo.
goto :c

:LIBERATE
If NOT "%CHAT%"=="1" goto :AccessDenied
IF /i "%ARG1%"=="JDOE" goto :LiberateJdoe
Echo.
Echo Could not Liberate user %ARG1%
echo.
Goto :C

:RandomColor
set /a r1=%RANDOM% %% 16
IF "%R1%"=="10" set R1=A
IF "%R1%"=="11" set R1=B
IF "%R1%"=="12" set R1=C
IF "%R1%"=="13" set R1=D
IF "%R1%"=="14" set R1=E
IF "%R1%"=="15" set R1=F
set /a r2=%RANDOM% %% 16
IF "%R2%"=="10" set R2=A
IF "%R2%"=="11" set R2=B
IF "%R2%"=="12" set R2=C
IF "%R2%"=="13" set R2=D
IF "%R2%"=="14" set R2=E
IF "%R2%"=="15" set R2=F
color %R1%%R2%
goto :eof

:LiberateJdoe
set USERS=2
Echo Liberating JDOE...
%sleep% 3000
Call :RandomColor
%sleep% 100
Color 0A
%sleep% 3000
set LJ1=0
set LJ2=0
set LJ3=0

:LJDOE1
IF "%LJ1%"=="25" goto :LJDOE2
Echo Liberating JDOE...
Call :RandomColor
%sleep% 100
Set /a LJ1=%LJ1%+1
Goto :LJDOE1

:LJDOE2
IF "%LJ2%"=="35" goto :LJDOE3
Type LIBERATE.txt
Call :RandomColor
%sleep% 100
Set /a LJ2=%LJ2%+1
goto :LJDOE2

:el
IF "%EL%"=="%R3%" goto :eof
echo.
set /a EL=%EL%+1 
goto :EL

:LJDOE3
IF "%LJ3%"=="65" goto :LJDOE4
call :MainBanner
Echo.
Echo                  Please stand by we're having technical issues
set /a R3=%RANDOM% %% 10
set el=0
call :EL

Call :RandomColor
%sleep% 100
Set /a LJ3=%LJ3%+1
goto :LJDOE3


:LJDOE4
set USERS=1
color 0C
cls 
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo.
Echo International Get Together Network [V 1.0]
Echo (C)1994 Igtnet, All Rights Reserved
Echo.
Echo.
Echo Welcome %user%! There are currently [%USERS%] Users Online.
Echo.
Echo Type HELP for a list of all of our commands. Please enjoy your stay!
Echo.
Echo.
Echo Stand by, resolving technical issues...
%sleep% 1500
color 0C
cls 
Echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
Echo.
Echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
Echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
Echo.
Echo.
Echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
Echo.
Echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
Echo.
Echo.
%sleep% 200
cls
Echo []อออออออออออออออออออออออออออออออออ[GETOUT]ออออออออออออออออออออออออออออออออออ[]
Echo.
Echo GET OUT WHILE YOU STILL CAN GET OUT WHILE
Echo GET OUT WHILE YOU STILL CAN
Echo.
Echo.
Echo GET OUT WHILE YOU STILL CAN GET OUT WHILE YOU STILL CAN
Echo.
Echo GET OUT WHILE YOU STILL CAN GET OUT WHILE YOU STILL CAN GET OUT WHI
Echo.
Echo.
%sleep% 100
cls 
Echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
Echo.
Echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
Echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
Echo.
Echo.
Echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
Echo.
Echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
Echo.
Echo.
%sleep% 200
cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo.
Echo International Get Together Network [V 1.0]
Echo (C)1994 Igtnet, All Rights Reserved
Echo.
Echo.
Echo Welcome %user%! There are currently [%USERS%] Users Online.
Echo.
Echo Type HELP for a list of all of our commands. Please enjoy your stay!
Echo.
Echo.
Echo Stand by, resolving technical issues...
%sleep% 3500
cls 
Echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
Echo.
Echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
Echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
Echo.
Echo.
Echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
Echo.
Echo ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
Echo.
Echo.
%sleep% 200
goto :cls

:NoChat
cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#?????]
echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo                  []อออออออออออออออออ[WARN]ออออออออออออออออออ[]
Echo                  [ There are no chat rooms open at this time ]
Echo                  []อออออออออออออออออออออออออออออออออออออออออ[]
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo Press a key to disconnect
Pause >nul
goto :CLS

:JustChat
Set USER=USER


:Chat
Set TW=0
if "%USERS%"=="1" goto :NoChat
If "%chat%"=="1" goto :Nochat
cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo %user% joined the chat
Echo.
Echo.
Echo.
Echo.
echo.
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
Echo.
Echo.
Echo.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Set /p MSG=[%USER%] 

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo %user% joined the chat
Echo [%USER%] %MSG%
Echo.
Echo.
Echo.
echo.
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
Echo.
Echo.
Echo.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 2000
cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo %user% joined the chat
Echo [%USER%] %MSG%
Echo [JDoe] Hello?
Echo.
Echo.
echo.
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
Echo.
Echo.
Echo.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 2000
cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo %user% joined the chat
Echo [%USER%] %MSG%
Echo [JDoe] Hello?
Echo [JDoe] Oh my god a new user! Thank God!
Echo.
echo.
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
Echo.
Echo.
Echo.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 1000
cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo %user% joined the chat
Echo [%USER%] %MSG%
Echo [JDoe] Hello?
Echo [JDoe] Oh my god a new user! Thank God!
Echo [JDoe] How are you?
echo.
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
Echo.
Echo.
Echo User JDOE has given you permission to chat.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Set /p MSG2=[%USER%] 

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo %user% joined the chat
Echo [%USER%] %MSG%
Echo [JDoe] Hello?
Echo [JDoe] Oh my god a new user! Thank God!
Echo [JDoe] How are you?
echo [%user%] %MSG2%
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
Echo.
Echo.
Echo.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 2000
set WhatTree=0
Set WhoTree=0
Set JDM1=I'm doing OK myself.
Echo %MSG2%| Find /i "Who"> nul
If "%ERRORLEVEL%"=="0" Set WhoTree=1
Echo %MSG2%| Find /i "What"> nul
If "%ERRORLEVEL%"=="0" Set WhatTree=1
IF "%WhatTree%"=="1" Set JDM1=Well Gee I'm doing great thanks for asking.
If "%WHOTREE%"=="1" set JDM1=Well Gee I'm doing great thanks for asking.
cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo %user% joined the chat
Echo [%USER%] %MSG%
Echo [JDoe] Hello?
Echo [JDoe] Oh my god a new user! Thank God!
Echo [JDoe] How are you?
echo [%USER%] %MSG2%
Echo [JDoe] %JDM1%
Echo.
Echo.
echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
Set JDM2=Let me tell you a bit about myself.
IF "%WhatTree%"=="1" Set JDM2=Before I answer, let me tell you a bit about myself.
If "%WHOTREE%"=="1" set JDM2=Just hold on for God's sake I'll get to that in a bit.
%sleep% 3000
cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo %user% joined the chat
Echo [%USER%] %MSG%
Echo [JDoe] Hello?
Echo [JDoe] Oh my god a new user! Thank God!
Echo [JDoe] How are you?
echo [%USER%] %MSG2%
Echo [JDoe] %JDM1%
Echo [JDoe] %JDM2%
Echo.
echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 10000
cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo %user% joined the chat
Echo [%USER%] %MSG%
Echo [JDoe] Hello?
Echo [JDoe] Oh my god a new user! Thank God!
Echo [JDoe] How are you?
echo [%USER%] %MSG2%
Echo [JDoe] %JDM1%
Echo [JDoe] %JDM2%
Echo [JDoe] I'm John Doe, or whatever's left of me. I was an amazing programmer
echo        back in '91. I'd code all sorts of things in days for all sorts of
Echo        clients.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 10000
cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo %user% joined the chat
Echo [%USER%] %MSG%
Echo [JDoe] Hello?
Echo [JDoe] Oh my god a new user! Thank God!
Echo [JDoe] How are you?
echo [%USER%] %MSG2%
Echo [JDoe] %JDM1%
Echo [JDoe] %JDM2%
Echo [JDoe] I'm John Doe, or whatever's left of me. I was an amazing programmer
echo        back in '91. I'd code all sorts of things in days for all sorts of
Echo        clients.
Echo [JDoe] With the whole Internet thing on the rise, I decided to give it a go.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 7000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo %user% joined the chat
Echo [%USER%] %MSG%
Echo [JDoe] Hello?
Echo [JDoe] Oh my god a new user! Thank God!
Echo [JDoe] How are you?
echo [%USER%] %MSG2%
Echo [JDoe] %JDM1%
Echo [JDoe] %JDM2%
Echo [JDoe] I'm John Doe, or whatever's left of me. I was an amazing programmer
echo        back in '91. I'd code all sorts of things in days for all sorts of
Echo        clients.
Echo [JDoe] With the whole Internet thing on the rise, I decided to give it a go.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo.
Echo.
Echo.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 5000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo %user% joined the chat
Echo [%USER%] %MSG%
Echo [JDoe] Hello?
Echo [JDoe] Oh my god a new user! Thank God!
Echo [JDoe] How are you?
echo [%USER%] %MSG2%
Echo [JDoe] %JDM1%
Echo [JDoe] %JDM2%
Echo [JDoe] I'm John Doe, or whatever's left of me. I was an amazing programmer
echo        back in '91. I'd code all sorts of things in days for all sorts of
Echo        clients.
Echo [JDoe] With the whole Internet thing on the rise, I decided to give it a go.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We even went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 5000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo %user% joined the chat
Echo [%USER%] %MSG%
Echo [JDoe] Hello?
Echo [JDoe] Oh my god a new user! Thank God!
Echo [JDoe] How are you?
echo [%USER%] %MSG2%
Echo [JDoe] %JDM1%
Echo [JDoe] %JDM2%
Echo [JDoe] I'm John Doe, or whatever's left of me. I was an amazing programmer
echo        back in '91. I'd code all sorts of things in days for all sorts of
Echo        clients.
Echo [JDoe] With the whole Internet thing on the rise, I decided to give it a go.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 3000


cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo [%USER%] %MSG%
Echo [JDoe] Hello?
Echo [JDoe] Oh my god a new user! Thank God!
Echo [JDoe] How are you?
echo [%USER%] %MSG2%
Echo [JDoe] %JDM1%
Echo [JDoe] %JDM2%
Echo [JDoe] I'm John Doe, or whatever's left of me. I was an amazing programmer
echo        back in '91. I'd code all sorts of things in days for all sorts of
Echo        clients.
Echo [JDoe] With the whole Internet thing on the rise, I decided to give it a go.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 3000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo [JDoe] Hello?
Echo [JDoe] Oh my god a new user! Thank God!
Echo [JDoe] How are you?
echo [%USER%] %MSG2%
Echo [JDoe] %JDM1%
Echo [JDoe] %JDM2%
Echo [JDoe] I'm John Doe, or whatever's left of me. I was an amazing programmer
echo        back in '91. I'd code all sorts of things in days for all sorts of
Echo        clients.
Echo [JDoe] With the whole Internet thing on the rise, I decided to give it a go.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo [JDoe] My Team members left me and I became obsessed.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 3000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo [JDoe] Oh my god a new user! Thank God!
Echo [JDoe] How are you?
echo [%USER%] %MSG2%
Echo [JDoe] %JDM1%
Echo [JDoe] %JDM2%
Echo [JDoe] I'm John Doe, or whatever's left of me. I was an amazing programmer
echo        back in '91. I'd code all sorts of things in days for all sorts of
Echo        clients.
Echo [JDoe] With the whole Internet thing on the rise, I decided to give it a go.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo [JDoe] My Team members left me and I became obsessed.
Echo [JDoe] Until I reached my limit one day.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 5000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo [JDoe] How are you?
echo [%USER%] %MSG2%
Echo [JDoe] %JDM1%
Echo [JDoe] %JDM2%
Echo [JDoe] I'm John Doe, or whatever's left of me. I was an amazing programmer
echo        back in '91. I'd code all sorts of things in days for all sorts of
Echo        clients.
Echo [JDoe] With the whole Internet thing on the rise, I decided to give it a go.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo [JDoe] My Team members left me and I became obsessed.
Echo [JDoe] Until I reached my limit one day.
Echo [JDoe] We disappeared overnight.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 5000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
echo [%USER%] %MSG2%
Echo [JDoe] %JDM1%
Echo [JDoe] %JDM2%
Echo [JDoe] I'm John Doe, or whatever's left of me. I was an amazing programmer
echo        back in '91. I'd code all sorts of things in days for all sorts of
Echo        clients.
Echo [JDoe] With the whole Internet thing on the rise, I decided to give it a go.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo [JDoe] My Team members left me and I became obsessed.
Echo [JDoe] Until I reached my limit one day.
Echo [JDoe] We disappeared overnight.
Echo [JDoe] There's no mention of us anywhere.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 5000


cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo [JDoe] %JDM1%
Echo [JDoe] %JDM2%
Echo [JDoe] I'm John Doe, or whatever's left of me. I was an amazing programmer
echo        back in '91. I'd code all sorts of things in days for all sorts of
Echo        clients.
Echo [JDoe] With the whole Internet thing on the rise, I decided to give it a go.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo [JDoe] My Team members left me and I became obsessed.
Echo [JDoe] Until I reached my limit one day.
Echo [JDoe] We disappeared overnight.
Echo [JDoe] There's no mention of us anywhere.
Echo [JDoe] Even I forgot my name.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 5000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo [JDoe] %JDM2%
Echo [JDoe] I'm John Doe, or whatever's left of me. I was an amazing programmer
echo        back in '91. I'd code all sorts of things in days for all sorts of
Echo        clients.
Echo [JDoe] With the whole Internet thing on the rise, I decided to give it a go.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo [JDoe] My Team members left me and I became obsessed.
Echo [JDoe] Until I reached my limit one day.
Echo [JDoe] We disappeared overnight.
Echo [JDoe] There's no mention of us anywhere.
Echo [JDoe] Even I forgot my name.
Echo [JDoe] Do I even exist anymore?
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 8000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo [JDoe] I'm John Doe, or whatever's left of me. I was an amazing programmer
echo        back in '91. I'd code all sorts of things in days for all sorts of
Echo        clients.
Echo [JDoe] With the whole Internet thing on the rise, I decided to give it a go.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo [JDoe] My Team members left me and I became obsessed.
Echo [JDoe] Until I reached my limit one day.
Echo [JDoe] We disappeared overnight.
Echo [JDoe] There's no mention of us anywhere.
Echo [JDoe] Even I forgot my name.
Echo [JDoe] Do I even exist anymore?
Echo [JDoe] Perhaps I should just go.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 2000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
echo        back in '91. I'd code all sorts of things in days for all sorts of
Echo        clients.
Echo [JDoe] With the whole Internet thing on the rise, I decided to give it a go.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo [JDoe] My Team members left me and I became obsessed.
Echo [JDoe] Until I reached my limit one day.
Echo [JDoe] We disappeared overnight.
Echo [JDoe] There's no mention of us anywhere.
Echo [JDoe] Even I forgot my name.
Echo [JDoe] Do I even exist anymore?
Echo [JDoe] Perhaps I should just go.
Echo [JDoe] Finish the Job.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 5000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo        clients.
Echo [JDoe] With the whole Internet thing on the rise, I decided to give it a go.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo [JDoe] My Team members left me and I became obsessed.
Echo [JDoe] Until I reached my limit one day.
Echo [JDoe] We disappeared overnight.
Echo [JDoe] There's no mention of us anywhere.
Echo [JDoe] Even I forgot my name.
Echo [JDoe] Do I even exist anymore?
Echo [JDoe] Perhaps I should just go.
Echo [JDoe] Finish the Job.
Echo [JDoe] Thanks for stopping by %user%.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 5000


cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo [JDoe] With the whole Internet thing on the rise, I decided to give it a go.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo [JDoe] My Team members left me and I became obsessed.
Echo [JDoe] Until I reached my limit one day.
Echo [JDoe] We disappeared overnight.
Echo [JDoe] There's no mention of us anywhere.
Echo [JDoe] Even I forgot my name.
Echo [JDoe] Do I even exist anymore?
Echo [JDoe] Perhaps I should just go.
Echo [JDoe] Finish the Job.
Echo [JDoe] Thanks for stopping by %user%.
Echo [JDoe] Thanks for not forgetting.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 6000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo        I thought everything else was too complicated so I programmed something
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo [JDoe] My Team members left me and I became obsessed.
Echo [JDoe] Until I reached my limit one day.
Echo [JDoe] We disappeared overnight.
Echo [JDoe] There's no mention of us anywhere.
Echo [JDoe] Even I forgot my name.
Echo [JDoe] Do I even exist anymore?
Echo [JDoe] Perhaps I should just go.
Echo [JDoe] Finish the Job.
Echo [JDoe] Thanks for stopping by %user%.
Echo [JDoe] Thanks for not forgetting.
Echo [JDoe] Do me a favor please
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 4000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo        easier.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo [JDoe] My Team members left me and I became obsessed.
Echo [JDoe] Until I reached my limit one day.
Echo [JDoe] We disappeared overnight.
Echo [JDoe] There's no mention of us anywhere.
Echo [JDoe] Even I forgot my name.
Echo [JDoe] Do I even exist anymore?
Echo [JDoe] Perhaps I should just go.
Echo [JDoe] Finish the Job.
Echo [JDoe] Thanks for stopping by %user%.
Echo [JDoe] Thanks for not forgetting.
Echo [JDoe] Do me a favor please
echo [JDoe] Type "LIBERATE JDOE" for me please.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 4000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo [JDoe] I joined up with a few other guys and founded the International Get
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo [JDoe] My Team members left me and I became obsessed.
Echo [JDoe] Until I reached my limit one day.
Echo [JDoe] We disappeared overnight.
Echo [JDoe] There's no mention of us anywhere.
Echo [JDoe] Even I forgot my name.
Echo [JDoe] Do I even exist anymore?
Echo [JDoe] Perhaps I should just go.
Echo [JDoe] Finish the Job.
Echo [JDoe] Thanks for stopping by %user%.
Echo [JDoe] Thanks for not forgetting.
Echo [JDoe] Do me a favor please
echo [JDoe] Type "LIBERATE JDOE" for me please.
Echo [JDoe] Once you get out of this chat room.
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 4000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo        Together Network. We got quite a few users in the early days.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo [JDoe] My Team members left me and I became obsessed.
Echo [JDoe] Until I reached my limit one day.
Echo [JDoe] We disappeared overnight.
Echo [JDoe] There's no mention of us anywhere.
Echo [JDoe] Even I forgot my name.
Echo [JDoe] Do I even exist anymore?
Echo [JDoe] Perhaps I should just go.
Echo [JDoe] Finish the Job.
Echo [JDoe] Thanks for stopping by %user%.
Echo [JDoe] Thanks for not forgetting.
Echo [JDoe] Do me a favor please
echo [JDoe] Type "LIBERATE JDOE" for me please.
Echo [JDoe] Once you get out of this chat room.
Echo [JDoe] Let me help you with that...
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo You do not have permission to chat now.
%sleep% 4000

cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo                                    [#MAIN ]
Echo.
Echo [JDoe] We evne went to conferences together. I remember the one in Paris.
Echo        It was such a nice weekend.
Echo [JDoe] Soon enough though the whole thing collapsed.
Echo [JDoe] Our users wanted more.
Echo [JDoe] My Team members left me and I became obsessed.
Echo [JDoe] Until I reached my limit one day.
Echo [JDoe] We disappeared overnight.
Echo [JDoe] There's no mention of us anywhere.
Echo [JDoe] Even I forgot my name.
Echo [JDoe] Do I eve[]อออออออออออออออออออ[KICK]ออออออออออออออออออออ[]
Echo [JDoe] Perhaps []This chat room was closed by an administrator[]
Echo [JDoe] Finish t[]อออออออออออออออออออออออออออออออออออออออออออออ[]
Echo [JDoe] Thanks for stopping by %user%.
Echo [JDoe] Thanks for not forgetting.
Echo [JDoe] Do me a favor please
echo [JDoe] Type "LIBERATE JDOE" for me please.
Echo [JDoe] Once you get out of this chat room.
Echo [JDoe] Let me help you with that...
Echo JDoe Left the Chat
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo Press a key to disconnect
set Chat=1
Pause >nul
Goto :cls



:ONLINE
cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
echo.
Echo Here's Who's Online Right Now:
Echo.
Echo %USER%
IF "%USERS%"=="2" Echo JDoe
pause >nul
Goto :cls

:about
cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
echo.
call :MainBannerNoSpace
Echo.
Echo []อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ[]
Echo                   International Get Together Network [V 1.0]                   
Echo.
If "%USERS%"=="1" goto :AboutNobody
Echo The IGTNET is a revolutionary new way to communicate accross the Internet. No
echo more having to go through pesky chat programs, this easy to connect program
echo will serve as the new hub of all communications, news, and everything in
echo between! May the get togethers commence!
Echo.
Echo         Programmed by ..................... John Doe
echo                       ..................... Mark Montedew    
Echo                       ..................... Christine Juarez
Echo         Head Beta Tester .................. Curt Hue
Pause >nul
Goto :CLS

:AboutNobody
IF "%AboutNobody%"=="1" Set /a SeenP=%Seenp%-1
Set /a SeenP=%seenp%+1
Set AboutNobody=1

Echo The IGTNET Is my personal hell. I've forgotten everyone, Even myself. You
echo have come to save me. Thank you so much. I've been stuck here for what feels
echo Like an eternity alone. Now please, leave before you too are stuck here.
echo Godspeed!
Echo.
Echo         Programmed by ..................... ?????????????
echo                       ..................... ?????????????
Echo                       ..................... ?????????????
Echo         Head Beta Tester .................. ?????????????
Pause >nul
Goto :CLS



:NEWS
cls
IF "%USERS%"=="1" goto :NoNews
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo.
Echo [June 16th 1994] Service Shutting Down:
Echo Officially after today, the Text Based portion of the IGTNET Will close. We
echo hope to see you all on our new HTTP based service soon!
Echo.
Echo [January 3rd 1994] Service in Decline:
Echo We're seeing a decrease in users overall. AOL seems to be becoming much
echo more popular than we anticipated. It shouldn't affect our services.
Echo.
Echo [January 1st 1993] HAPPY NEW YEAR 1993!
Echo Happy new year to our 14 million users! May we continue to grow ever more
echo prosperous over the coming years!
Echo.
Echo [September 21st 1992] Top Rising Internet service of 1992!
Echo Microcomputers Monthly has named us the Top Rising Internet Service of 1992!
Echo Let's hope we continue to grow!
Echo.
Echo [January 1st 1992] HAPPY NEW YEAR 1992!
Echo Happy New Year to our first million users!
Echo.
Echo [October 10th 1992] Launch!
Echo Hello everyone and welcome to the IGTNET! We hope to provide you cool new
echo services soon enough!
Pause >nul
Goto :cls

:NoNews
IF "%NONEWS%"=="1" set /a Seenp=%SEENP%-1
Set /a SEENP=%SEENP%+1
Set NoNews=1
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo.
Echo [%DATE%] LIBERATION
Echo I've been liberated thanks to %user%
Echo Thank you all for your support.                                           -JDoe
Echo.
Echo [June 16th 1994] HELP!
Echo I'm TRAPPED HERE WHERE ARE YOU ALL?!?!
echo.
Echo.
Echo [January 3rd 1994] Where am I?
Echo All I see is this screen. Where are all my users? Please enter the chat if you
echo can see these messages I need someone to talk to
Echo.
Echo [January 1st 1993] This is back?
Echo I found my server running again? what the heck? Didn't we shut this down years
echo ago? Let me see if I can contact the others...
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Pause >nul
Goto :cls


:Games
Echo.
Echo Loading games...
%sleep% 1000
cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo.
Echo                                 [SERVER GAMES]
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
IF "%USERS%"=="1" Goto :Nogames
Echo                 There are currently no games open on the server           
Echo     -----------------------------------------------------------------------    
Echo                  You do not have permission to make a new game                 
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Pause >nul
goto :cls

:Nogames
IF "%NoGames%"=="1" Set /a SeenP=%Seenp%-1
Set /a Seenp=%seenp%+1
Set NoGames=1
Echo                                This was no game
Echo     -----------------------------------------------------------------------    
Echo                They Made Me Disappear, They'll Make You Disappear          
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
Pause >nul
goto :cls


:Friend
IF "%USERS%"=="1" goto :NoFriends
Echo.
Echo Sent a friend request to %ARG1%
Echo.
goto :C

:NoFriends
IF "%NoFriends%"=="1" Set /a SeenP=%Seenp%-1
Set /a Seenp=%seenp%+1
Set NoFriends=1
Echo.
Echo There are no friends here
Echo.
Goto :c


:help
cls
Echo []อออออออออออออออออออออออออออออออออ[IGTNET]ออออออออออออออออออออออออออออออออออ[]
Echo.
Echo HELP:
IF "%USERS%"=="1" goto :NoHelp
Echo.
IF "%USERS%"=="1" goto :NoHelp
Echo ABOUT     : About page of the IGTNET
Echo CHAT      : Join the IGTNET CHAT
Echo CLS       : Clear the Screen
Echo EXIT      : Leave the IGTNET
Echo GAMES     : Play a Server game
IF "%CHAT%"=="1" Echo LIBERATE  : Liberate a user from the IGTNET.
Echo NEWS      : Server news
Echo ONLINE    : Get a list of everyone who's online
Echo FRIEND    : Friend a user (Friend [USER])
Echo.
Echo Press a key to go back
Pause >nul
goto :CLS

:NoHelp
Echo There is no help for the wicked.
Echo Flee before they come.
Echo.
Echo EXIT      : Leave the IGTNET
IF "%NOHELP%"=="1" set /a seenp=%seenp%-1
Set /a SEENP=%SEENP%+1
set NoHelp=1
Pause >nul
goto :cls

rem  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ


rem                     24 lines and ^THAT^ is our maximum
rem  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ


:exit
cls
IF "%USERS%"=="1" Goto :NoExit
Echo Goodbye
%sleep% 5000
cd..
goto :eof

:NoExit
color 0a
Echo.
Echo Thank you %user%.
Echo -JDoe
%sleep% 5000
CLS
Set Users=2
echo.
Call :MainBannerNoSpace
Echo.
Echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Echo International Get Together Network, A Story by Igtampe.
Echo (C)2018 Igtampe No Rights Reserved.
Echo.
Echo Hosted on the IGTNET.
Echo Thank you so much for playing %user%.
Echo.
Echo.
Echo Now go before they catch you.
Pause >nul
cd..
goto :eof

:MainBanner
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
:MainBannerNoSpace
IF "%USERS%"=="1" goto :MBNSH
echo                          ฒฒฒฒฒฒฒฒฒฒ ฒฒฒฒฒฒฒฒฒ  ฒฒฒฒฒฒฒฒฒฒ
echo                              ฒฒ     ฒฒ             ฒฒ
echo                              ฒฒ     ฒฒ             ฒฒ
echo                              ฒฒ     ฒฒ             ฒฒ
echo                              ฒฒ     ฒฒ   ฒฒฒฒฒ     ฒฒ
ECHO                              ฒฒ     ฒฒ______ฒฒ     ฒฒ
echo                          ฒฒฒฒฒฒฒฒฒฒ ฒฒฒฒฒฒฒฒฒฒ     ฒฒ                         
Echo.
Echo                                     (c)1994         
goto :EOF

:MBNSH
echo.
echo.
echo.
echo.
echo.
ECHO.
echo.
Echo.
Echo                                     (c) 666         

goto :EOF
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ