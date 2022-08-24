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

cls
Echo.
%CTE% " Large Logo"
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
%GD% sssssssssWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssWWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .
%GD% ssssssssrWrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrsssssss .























