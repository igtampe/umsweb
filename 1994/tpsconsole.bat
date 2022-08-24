@echo off
Echo TPS Console [Version 1.0]
Echo (C)2016 Igtampe, No Rights Reserved.
Echo.
Echo.
Set /p TIME=Time: 

:C
Echo.
Set /p TPS=:
IF /i "%TPS%"=="Exit" Goto :EOF
Echo %TPS%|Find "/TIME"
If "%errorlevel%"=="0" goto :NEWTIME
Echo.
call TPS %TIME% %TPS%
Goto :C

:NEWTIME
Set TPS=%TPS:/TIME=%
SET TIME=%TPS%
Goto C

:EOF
