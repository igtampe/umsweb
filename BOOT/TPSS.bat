@echo off
if "%1"=="" call tps 10 I have nothing to say.& goto :eof
Set t=%1
set /a t=%T%
if "%t%"=="0" call tps 10 I need a specified time.& Goto :eof
Set P1=%2
Set P2=%3
Set P3=%4
Set P4=%5
Set P5=%6
Set P6=%7
Set P7=%8
Set P8=%9
start say "%P1% %P2% %P3% %P4% %P5% %P6% %P7% %P8%"
IF "%P1%"=="" goto :END
call typer %P1% %T% SP
IF "%P2%"=="" goto :END
call typer %P2% %T% SP
IF "%P3%"=="" goto :END
call typer %P3% %T% SP
IF "%P4%"=="" goto :END
call typer %P4% %T% SP
IF "%P5%"=="" goto :END
call typer %P5% %T% SP
IF "%P6%"=="" goto :END
call typer %P6% %T% SP
IF "%P7%"=="" goto :END
call typer %P7% %T% SP
IF "%P8%"=="" goto :END
call typer %P8% %T% SP

:END
tasklist| find /i "say.exe" > nul
if "%errorlevel%"=="0" goto :end
