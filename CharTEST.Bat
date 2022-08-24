
@echo off
Set LauncherDir=%CD%
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
set BG=F
Set CTE=Call %CD%\COMMON\CTEXT.bat

::EXTENSIONS::
set EXTENSIONS=%CD%\EXTENSIONS


SET ClearLine=Call %CD%\Extensions\cl.bat
SET LOCATE=%CD%\Extensions\FN.dll LOCATE
SET LCOLOR=%CD%\EXTENSIONS\FN.dll COLOR

SET MPASS=%CD%\EXTENSIONS\MPASS PasswordTemp.tmp& SET /p Result=<PasswordTemp.tmp& Del PasswordTemp.tmp
REM Result to %RESULT%

SET TYPO=CALL %CD%\EXTENSIONS\ETYPO.BAT
REM Note you must still include position (COL/LINE) and Color before the text. Also note no spaces.

Set CMDMenuSEL=%CD%\EXTENSIONS\CMDMenuSel
REM Note you must still include COLOR (0F0F) before the options.

Set RenderBox=CALL %CD%\EXTENSIONS\RenderBOX.bat
rem Box COL LINE [Height] [Width] [Sepration] [BG_Char] [color] [Type]
::::::::::::::


:CHARTEST
COLOR 0A
cls

Echo CharacterTest:
Echo.
Echo Shades: ²±°
Echo Blocks: ßÜ
Echo Math:÷ñúóíùûòöôì«¬ü¯
Echo Borders: Öµ¼½¿ºÇªÆÉÅÄÑ»
Echo Greek: îïèëêçåàäâéáæ
Echo.
Echo As much of a Window as you'll get in PuTTY
Echo.

Echo DBLE  SNGLE DVERT DHRZN PUTTY
echo ÉÍËÍ» ÚÄÂÄ¿ ÖÄÒÄ· ÕÍÑÍ¸ ÉÄÑÄ»
echo º º º ³ ³ ³ º º º ³ ³ ³ º º º
echo ÌÍÎÍ¹ ÃÄÅÄ´ ÇÄ×Ä¶ ÆÍØÍµ ÇÄÅÄ¶
echo º º º ³ ³ ³ º º º ³ ³ ³ º º º
echo ÈÍÊÍ¼ ÀÄÁÄÙ ÓÄÐÄ½ ÔÍÏÍ¾  Ä Ä¼
Echo.

Pause >nul

:FLAG
color 70
cls
Echo.
echo.
%flag%
Echo.
Echo.
pause >nul
cls
Color 1F
Echo.
echo.
CALL COMMON\FLAGUMS.bat
Pause >nul

CLS
Color 0F

Echo.
echo.
CALL COMMON\CARD.bat
pause >nul


goto :CHARTEST

Good Translations:

CP620
CP437 (Obviously)




