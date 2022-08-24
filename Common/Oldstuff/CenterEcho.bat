@echo off
Set CenterText=%1

Set CENTERText=%CenterText:"=%
IF "%CenterText%"=="/?" goto :Help
IF "%CENTERTEXT%"=="" Goto :Help

Set CenterChar=%2
Set CenterLeft=%3
Set CenterRight=%4

IF "%CENTERCHAR%"=="" set Centerchar= 
if "%CENTERLEFT%"=="" Set CENTERLEFT=%CENTERCHAR%
IF "%CENTERRIGHT%"=="" SET CENTERRIGHT=%CENTERCHAR%



IF "%Scounter%"=="" set Scounter=Call StringCounter.bat

%SCounter% %CenterText%

Set /a test=%RESULT%/24
IF NOT "%TEST%"=="0" goto :ERROR

IF "%RESULT%"=="24" goto :DISPLAY

Set /a RESULT=%RESULT%+1
Set CenterText=%CenterLeft%%CenterText%
IF "%RESULT%"=="24" goto :DISPLAY

Set /a RESULT=%RESULT%+1
Set CenterText=%CenterText%%CenterRight%
IF "%RESULT%"=="24" goto :DISPLAY

:Loop
Set /a RESULT=%RESULT%+1
Set CenterText=%CenterChar%%CenterText%
IF "%RESULT%"=="24" goto :DISPLAY
Set /a RESULT=%RESULT%+1
Set CenterText=%CenterText%%CenterChar%
IF "%RESULT%"=="24" goto :DISPLAY
goto :loop

:Display
Echo %CenterText%
goto :eof

:Help
Echo CenterText [Version 1.0]
Echo (C)2018 Igtampe, NRR
Echo.
Echo CTEXT
