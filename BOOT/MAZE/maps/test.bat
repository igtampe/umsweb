goto :start


MAZE MAP TEMPLATE:





:::USEFUL STUFF:::

REM %EXTENSIONS%\FN.dll SPRITE LINE COL COLOR "TEXT"

÷ Interact  
² BrokenWall ° Exit

Use GDRAW for walls, ² for broken walls, and 

:Start
IF "%1"=="RENDER" goto :RENDER
IF "%1"=="INTERACT" goto :INTERACT

SET NoGo=(0,0)(0,1)(0,2)(0,3)(0,4)(0,5)(0,6)(0,7)(0,8)(0,9)(0,10)(0,11)(0,12)(0,13)(0,14)(0,15)(0,16)(0,17)(0,18)(0,19)(0,20)(0,21)(0,22)(0,23)(0,24)
SET INTERACT=(5,25)
SET EXIT=(0,0)



:RENDER
"%EXTENSIONS%\FN.dll" SPRITE 0 0 F1 "Welcome to the test zone."
goto :EOF


:INTERACT
Goto :EOF