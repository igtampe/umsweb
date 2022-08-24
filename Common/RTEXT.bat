@echo off
Setlocal enabledelayedexpansion
Set CenterText=%1

rem IF "%CENTERTEXT%"=="" Goto :Help
Set CENTERText=%CenterText:"=%
IF "%CenterText%"=="/?" goto :Help

Set CenterChar=%2
Set CenterLeft=%3
Set CenterRight=%4

IF "%CenterChar%"=="" set Centerchar= 
if "%CenterLeft%"=="" Set CENTERLEFT=%CENTERCHAR%
IF "%CenterRight%"=="" SET CENTERRIGHT=%CENTERCHAR%



IF "%Scounter%"=="" set Scounter=Call StringCounter.bat

%SCounter% "%CenterText%"

Set /a test=%RESULT%/79
IF NOT "%TEST%"=="0" goto :ERROR

IF "%RESULT%"=="79" goto :DISPLAY

Set /a RESULT=%RESULT%+1
Set CenterText=%CenterLeft%%CenterText%
IF "%RESULT%"=="79" goto :DISPLAY

Set /a RESULT=%RESULT%+1
Set CenterText=%CenterText%%CenterRight%
IF "%RESULT%"=="79" goto :DISPLAY

:Loop
Set /a RESULT=%RESULT%+1
Set CenterText=%CenterChar%%CenterText%
IF "%RESULT%"=="79" goto :DISPLAY
goto :loop

:Display
Echo %CenterText%
goto :eof

:Help
Echo CenterText [Version 1.0]
Echo (C)2018 Igtampe, NRR
Echo.
Echo CTEXT [TEXT] [CCHAR] [CLEFT] [CRIGHT]
Echo.
Echo    TEXT     Text to be Centered
Echo    CCHAR    Center Character (Default just a space)
Echo    CLEFT    Left Center Border (Default CCHAR)
Echo    CRIGHT   Right Center Border (Default CCHAR)
Echo.
Goto :EOF

:ERROR
Echo [ERROR] This text is %Result% Characters long.
Echo         That's longer than the maximum allowed 24 characters.
Echo.
Goto :EOF
