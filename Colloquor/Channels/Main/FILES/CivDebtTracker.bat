@Echo off
Set cont=MAIN
:HEADER
Mode con: lines=30 cols=60
Title Civilization Debt Tracker and Calculator [Version 1.1]
Color 6E
Echo Civilization Debt Tracker and Calculator [Version 1.1]
Echo Code: (C)2016 Igtampe
Echo Game: (C)2010 Firaxis Games
Echo.
Echo.
Goto :%CONT%

REM in the event we may need it, (Max $2,147,483,647).

:MAIN
Echo What would you like to do?
Echo  [1.] Calculate a GPT loan (Min $25)
Echo  [2.] Calculate an Interest loan 
Echo.
Set /p C=:
SET CONT=%C%
IF "%C%"=="1" Goto :HEADER
IF "%C%"=="2" Goto :HEADER
Echo.
Echo That's not a valid choice.
Goto :MAIN

:1
Set /p A=Amount: 
Set /a R=%A%/25 >nul
Echo.
Echo You Should require about %R% GPT.
Pause >nul
Set cont=Main
Goto :HEADER


:2
Set /p A=Amount: 
Set /p P=Rate (In %%): 
Set /p N=Player: 
Set T=0
Set AA=A*100


:2track
REM Echo on
Mode con: lines=5 cols=25
REM Mode con: lines=600 cols=300
Set /a T=%T%+1
SET /a AA=(%AA%+((%AA%/100)*%P%))
Set /a A=%AA%/100
Echo Loan to %N%:
Echo.
Echo %T% Turns have passed.
Echo %N% Owes $%A%
Pause >nul
Goto :2track

