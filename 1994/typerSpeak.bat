@echo off
Set w=%1
IF NOT "%1"=="" GOTO :PRESPELL
Echo Typer [Version 1.0]
Echo (C)2016 Igtampe, NRR
Echo.
Echo USAGE: [W] (#S) [sp]
Echo.
Echo  W : Word or Phrase to spell (Use "" if needed)
Echo  #C: Number of characters in the word or phrase
Echo  #S: Miliseconds to wait between characters (default is 10)
Echo  SP: Specifies a space after the spelling
Echo.
Pause >nul
Goto :EOF

:PRESPELL
start say "%W%"
set w=%W:!=ª%
Setlocal enableDelayedExpansion
call stringcounter %w%
SET /A BEGIN=-1
SET /A END=%RESULT%
IF /i "%3"=="SP" SET SPACE=1
IF NOT "%3"=="SP" SET SPACE=0
Set wait=%2
IF "%WAIT%"=="" SET WAIT=10
set sound=%4
IF "%4"=="" Set nosound=1
 

:SPELL
SET /a BEGIN=%BEGIN%+1
SET /A END=%END%-1
IF "%END%"=="0" Goto :last
Set currentletter=!w:~%BEGIN%,-%END%!
call typerprocessor
type %currentletter%
if "%nosound%"=="1" sleep %wait%& goto :spell
if not exist "sound\%sound%" sleep %wait%& goto :spell
START play "sound\%sound%"
sleep %wait%
Goto :SPELL


:LAST
Set currentletter=!w:~%BEGIN%!
call typerprocessor.bat
type %currentletter%
if "%nosound%"=="1" sleep %wait%& goto :LASTSPACE
if not exist "sound\%sound%" sleep %wait%& goto :LASTSPACE
START play "sound\%sound%"
sleep %wait%
:LASTSPACE
IF NOT "%SPACE%"=="1" goto:EOF
type space
if "%nosound%"=="1" goto :END
if not exist "sound\%sound%" goto :END
START play "sound\%sound%"

:END
sleep %wait%
rem tasklist| find /i "say.exe" > nul
rem if "%errorlevel%"=="0" goto :end
