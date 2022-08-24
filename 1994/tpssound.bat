@echo off
Set t=%1
set s=%2
Set P1=%3
Set P2=%4
Set P3=%5
Set P4=%6
Set P5=%7
Set P6=%8
Set P7=%9
IF "%P1%"=="" goto :END
call typer %P1% %T% SP %S%
IF "%P2%"=="" goto :END
call typer %P2% %T% SP %S%
IF "%P3%"=="" goto :END
call typer %P3% %T% SP %S%
IF "%P4%"=="" goto :END
call typer %P4% %T% SP %S%
IF "%P5%"=="" goto :END
call typer %P5% %T% SP %S%
IF "%P6%"=="" goto :END
call typer %P6% %T% SP %S%
IF "%P7%"=="" goto :END
call typer %P7% %T% SP %S%
:END