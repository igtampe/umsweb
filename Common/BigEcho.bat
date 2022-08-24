@echo off

set TEST=%1
SET TEST=%TEST:"=%
IF NOT "%TEST%"=="" GOTO :PREPRESPELL
Echo Typer [Version 1.0]
Echo (C)2016 Igtampe, NRR
Echo.
Echo USAGE: [W] (#C)
Echo.
Echo  W : Word or Phrase to spell (Use "" if needed)
Echo  #C: Color (See color /? to see what colors you can use)
Echo.
Pause >nul
Goto :EOF

:PREPRESPELL
set W=%1
SET C=%2

Set FG=/%C:~1%%C:~1% 178 
Set BG=/%C:~0,-1%%C:~0,-1% 178 
SET XG=/EE 178 

rem /00 178 /cC 178 /Cc 178 /Cc 178 /Cc 178 /Cc 178 /Cc 178 /Cc 178 /Cc 178 /Cc 178 /Cc 178 /Cc 178 /Cc 178 /Cc 178 /Cc 178& echo. 


Set SPACE1=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set SPACE2=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set SPACE3=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set SPACE4=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set SPACE5=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set SPACE6=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set SPACE7=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set SPACE8=%BG%%BG%%BG%%BG%%BG%%BG%%BG%

Set .1=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set .2=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set .3=%FG%%FG%%FG%%FG%%FG%%FG%%FG%
Set .4=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set .5=%BG%%FG%%FG%%BG%%BG%%FG%%FG%
Set .6=%FG%%BG%%BG%%BG%%FG%%BG%%BG%
Set .7=%FG%%BG%%BG%%BG%%FG%%BG%%BG%
Set .8=%BG%%FG%%FG%%BG%%BG%%FG%%FG%

Set ,1=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set ,2=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set ,3=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set ,4=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set ,5=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set ,6=%BG%%BG%%BG%%BG%%BG%%BG%%BG%
Set ,7=%FG%%FG%%BG%%BG%%BG%%BG%%BG%
Set ,8=%FG%%FG%%BG%%BG%%BG%%BG%%BG%




rem    -------
Set 11=%BG% %BG% %FG% %FG% %BG% %BG% %BG%
Set 12=%BG% %FG% %BG% %FG% %BG% %BG% %BG%
Set 13=%FG% %BG% %BG% %FG% %BG% %BG% %BG%
Set 14=%BG% %BG% %BG% %FG% %BG% %BG% %BG%
Set 15=%BG% %BG% %BG% %FG% %BG% %BG% %BG%
Set 16=%BG% %BG% %BG% %FG% %BG% %BG% %BG%
Set 17=%BG% %BG% %BG% %FG% %BG% %BG% %BG%
Set 18=%FG% %FG% %FG% %FG% %FG% %FG% %FG%
rem    -------
Set 21=%BG%%BG%%FG%%FG%%FG%%BG%%BG%
Set 22=%BG%%FG%%BG%%BG%%BG%%FG%%BG%
Set 23=%FG%%BG%%BG%%BG%%BG%%FG%%BG%
Set 24=%BG%%BG%%BG%%BG%%FG%%BG%%BG%
Set 25=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set 26=%BG%%BG%%FG%%BG%%BG%%BG%%BG%
Set 27=%BG%%FG%%BG%%BG%%BG%%BG%%BG%
Set 28=%FG%%FG%%FG%%FG%%FG%%FG%%FG%
rem    -------
Set 31=%FG%%FG%%FG%%FG%%FG%%BG%%BG%
Set 32=%BG%%BG%%BG%%BG%%BG%%FG%%BG%
Set 33=%BG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 34=%BG%%BG%%BG%%BG%%BG%%FG%%BG%
Set 35=%FG%%FG%%FG%%FG%%FG%%BG%%BG%
Set 36=%BG%%BG%%BG%%BG%%BG%%FG%%BG%
Set 37=%BG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 38=%FG%%FG%%FG%%FG%%FG%%FG%%BG%
rem    -------
Set 41=%BG%%BG%%BG%%BG%%FG%%FG%%BG%
Set 42=%BG%%BG%%BG%%FG%%BG%%FG%%BG%
Set 43=%BG%%BG%%FG%%BG%%BG%%FG%%BG%
Set 44=%BG%%FG%%BG%%BG%%BG%%FG%%BG%
Set 45=%FG%%FG%%FG%%FG%%FG%%FG%%FG%
Set 46=%BG%%BG%%BG%%BG%%BG%%FG%%BG%
Set 47=%BG%%BG%%BG%%BG%%BG%%FG%%BG%
Set 48=%BG%%BG%%BG%%BG%%BG%%FG%%BG%
rem    -------
Set 51=%FG%%FG%%FG%%FG%%FG%%FG%%FG%
Set 52=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set 53=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set 54=%FG%%FG%%FG%%FG%%FG%%FG%%BG%
Set 55=%BG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 56=%BG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 57=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 58=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
rem    -------
Set 61=%BG%%BG%%FG%%FG%%FG%%FG%%FG%
Set 62=%BG%%FG%%BG%%BG%%BG%%BG%%BG%
Set 63=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set 64=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set 65=%FG%%FG%%FG%%FG%%FG%%FG%%BG%
Set 66=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 67=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 68=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
rem    -------
Set 71=%FG%%FG%%FG%%FG%%FG%%FG%%FG%
Set 72=%BG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 73=%BG%%BG%%BG%%BG%%BG%%FG%%BG%
Set 74=%BG%%BG%%BG%%BG%%FG%%BG%%BG%
Set 75=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
Set 76=%BG%%BG%%FG%%BG%%BG%%BG%%BG%
Set 77=%BG%%FG%%BG%%BG%%BG%%BG%%BG%
Set 78=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
rem    -------
Set 81=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
Set 82=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 83=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 84=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 85=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
Set 86=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 87=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 88=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
rem    -------
Set 91=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
Set 92=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 93=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 94=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 95=%BG%%FG%%FG%%FG%%FG%%FG%%FG%
Set 96=%BG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 97=%BG%%BG%%BG%%BG%%BG%%BG%%FG%
Set 98=%BG%%BG%%BG%%BG%%BG%%BG%%FG%
rem    -------
Set 01=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
Set 02=%FG%%BG%%BG%%BG%%BG%%FG%%FG%
Set 03=%FG%%BG%%BG%%BG%%FG%%BG%%FG%
Set 04=%FG%%BG%%BG%%FG%%BG%%BG%%FG%
Set 05=%FG%%BG%%BG%%FG%%BG%%BG%%FG%
Set 06=%FG%%BG%%FG%%BG%%BG%%BG%%FG%
Set 07=%FG%%FG%%BG%%BG%%BG%%BG%%FG%
Set 08=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
rem    -------
Set A1=%BG%%BG%%FG%%FG%%FG%%BG%%BG%
Set A2=%BG%%FG%%BG%%BG%%BG%%FG%%BG%
Set A3=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set A4=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set A5=%FG%%FG%%FG%%FG%%FG%%FG%%FG%
Set A6=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set A7=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set A8=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
rem    
Set B1=%FG%%FG%%FG%%FG%%FG%%FG%%BG%
Set B2=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set B3=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set B4=%FG%%FG%%FG%%FG%%FG%%FG%%BG%
Set B5=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set B6=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set B7=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set B8=%FG%%FG%%FG%%FG%%FG%%FG%%BG%
rem    
Set C1=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
Set C2=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set C3=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set C4=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set C5=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set C6=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set C7=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set C8=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
rem    
Set D1=%FG%%FG%%FG%%FG%%FG%%BG%%BG%
Set D2=%FG%%BG%%BG%%BG%%BG%%FG%%BG%
Set D3=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set D4=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set D5=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set D6=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set D7=%FG%%BG%%BG%%BG%%BG%%FG%%BG%
Set D8=%FG%%FG%%FG%%FG%%FG%%BG%%BG%
rem    
Set E1=%FG%%FG%%FG%%FG%%FG%%FG%%FG%
Set E2=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set E3=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set E4=%FG%%FG%%FG%%FG%%FG%%FG%%BG%
Set E5=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set E6=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set E7=%FG%%BG%%BG%%BG%%BG%%BG%%BG% 
Set E8=%FG%%FG%%FG%%FG%%FG%%FG%%FG% 
rem    
Set F1=%FG%%FG%%FG%%FG%%FG%%FG%%FG%
Set F2=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set F3=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set F4=%FG%%FG%%FG%%FG%%FG%%FG%%BG%
Set F5=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set F6=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set F7=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set F8=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
rem    
Set G1=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
Set G2=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set G3=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set G4=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set G5=%FG%%BG%%BG%%BG%%FG%%FG%%FG%
Set G6=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set G7=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set G8=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
rem    
Set H1=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set H2=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set H3=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set H4=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set H5=%FG%%FG%%FG%%FG%%FG%%FG%%FG%
Set H6=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set H7=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set H8=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
rem    
Set I1=%FG%%FG%%FG%%FG%%FG%%FG%%FG%
Set I2=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set I3=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set I4=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set I5=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set I6=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set I7=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set I8=%FG%%FG%%FG%%FG%%FG%%FG%%FG%
rem    
Set J1=%FG%%FG%%FG%%FG%%FG%%FG%%FG%
Set J2=%BG%%BG%%BG%%BG%%FG%%BG%%BG%
Set J3=%BG%%BG%%BG%%BG%%FG%%BG%%BG%
Set J4=%BG%%BG%%BG%%BG%%FG%%BG%%BG%
Set J5=%BG%%BG%%BG%%BG%%FG%%BG%%BG%
Set J6=%BG%%BG%%BG%%BG%%FG%%BG%%BG%
Set J7=%FG%%BG%%BG%%BG%%FG%%BG%%BG%
Set J8=%BG%%FG%%FG%%FG%%BG%%BG%%BG%
rem    
Set K1=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set K2=%FG%%BG%%BG%%BG%%BG%%FG%%BG%
Set K3=%FG%%BG%%BG%%FG%%FG%%BG%%BG%
Set K4=%FG%%FG%%FG%%BG%%BG%%BG%%BG%
Set K5=%FG%%FG%%FG%%BG%%BG%%BG%%BG%
Set K6=%FG%%BG%%BG%%FG%%FG%%BG%%BG%
Set K7=%FG%%BG%%BG%%BG%%BG%%FG%%BG%
Set K8=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
rem    
Set L1=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set L2=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set L3=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set L4=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set L5=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set L6=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set L7=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set L8=%FG%%FG%%FG%%FG%%FG%%FG%%FG%
rem    
Set M1=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set M2=%FG%%FG%%BG%%BG%%BG%%FG%%FG%
Set M3=%FG%%BG%%FG%%BG%%FG%%BG%%FG%
Set M4=%FG%%BG%%BG%%FG%%BG%%BG%%FG%
Set M5=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set M6=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set M7=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set M8=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
rem    -------
Set N1=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set N2=%FG%%FG%%BG%%BG%%BG%%BG%%FG%
Set N3=%FG%%BG%%FG%%BG%%BG%%BG%%FG%
Set N4=%FG%%BG%%FG%%BG%%BG%%BG%%FG%
Set N5=%FG%%BG%%BG%%FG%%BG%%BG%%FG%
Set N6=%FG%%BG%%BG%%BG%%FG%%BG%%FG%
Set N7=%FG%%BG%%BG%%BG%%BG%%FG%%FG%
Set N8=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
rem    
Set O1=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
Set O2=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set O3=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set O4=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set O5=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set O6=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set O7=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set O8=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
rem    
Set P1=%FG%%FG%%FG%%FG%%FG%%FG%%BG%
Set P2=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set P3=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set P4=%FG%%FG%%FG%%FG%%FG%%FG%%BG%
Set P5=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set P6=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set P7=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set P8=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
rem    
Set Q1=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
Set Q2=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set Q3=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set Q4=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set Q5=%FG%%BG%%BG%%FG%%BG%%BG%%FG%
Set Q6=%FG%%BG%%BG%%BG%%FG%%BG%%FG%
Set Q7=%FG%%BG%%BG%%BG%%BG%%FG%%FG%
Set Q8=%BG%%FG%%FG%%FG%%FG%%FG%%FG%
rem    
Set R1=%FG%%FG%%FG%%FG%%FG%%FG%%BG%
Set R2=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set R3=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set R4=%FG%%FG%%FG%%FG%%FG%%FG%%BG%
Set R5=%FG%%BG%%BG%%FG%%BG%%BG%%BG%
Set R6=%FG%%BG%%BG%%BG%%FG%%BG%%BG%
Set R7=%FG%%BG%%BG%%BG%%BG%%FG%%BG%
Set R8=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
rem    
Set S1=%BG%%FG%%FG%%FG%%FG%%FG%%FG%
Set S2=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set S3=%FG%%BG%%BG%%BG%%BG%%BG%%BG%
Set S4=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
Set S5=%BG%%BG%%BG%%BG%%BG%%BG%%FG%
Set S6=%BG%%BG%%BG%%BG%%BG%%BG%%FG%
Set S7=%BG%%BG%%BG%%BG%%BG%%BG%%FG%
Set S8=%FG%%FG%%FG%%FG%%FG%%FG%%BG%
rem    
Set T1=%FG%%FG%%FG%%FG%%FG%%FG%%FG%
Set T2=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set T3=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set T4=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set T5=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set T6=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set T7=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set T8=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
rem    
Set U1=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set U2=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set U3=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set U4=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set U5=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set U6=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set U7=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set U8=%BG%%FG%%FG%%FG%%FG%%FG%%BG%
rem    
Set V1=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set V2=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set V3=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set V4=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set V5=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set V6=%BG%%FG%%BG%%BG%%BG%%FG%%BG%
Set V7=%BG%%BG%%FG%%BG%%FG%%BG%%BG%
Set V8=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
rem    
Set W1=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set W2=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set W3=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set W4=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set W5=%FG%%BG%%BG%%FG%%BG%%BG%%FG%
Set W6=%FG%%BG%%FG%%BG%%FG%%BG%%FG%
Set W7=%FG%%FG%%BG%%BG%%BG%%FG%%FG%
Set W8=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
rem    
Set X1=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set X2=%BG%%FG%%BG%%BG%%BG%%FG%%BG%
Set X3=%BG%%BG%%FG%%BG%%FG%%BG%%BG%
Set X4=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set X5=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set X6=%BG%%BG%%FG%%BG%%FG%%BG%%BG%
Set X7=%BG%%FG%%BG%%BG%%BG%%FG%%BG%
Set X8=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
rem    
Set Y1=%FG%%BG%%BG%%BG%%BG%%BG%%FG%
Set Y2=%BG%%FG%%BG%%BG%%BG%%FG%%BG%
Set Y3=%BG%%BG%%FG%%BG%%FG%%BG%%BG%
Set Y4=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set Y5=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set Y6=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set Y7=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set Y8=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
rem    
Set Z1=%FG%%FG%%FG%%FG%%FG%%FG%%FG%
Set Z2=%BG%%BG%%BG%%BG%%BG%%FG%%BG%
Set Z3=%BG%%BG%%BG%%BG%%FG%%BG%%BG%
Set Z4=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set Z5=%BG%%BG%%BG%%FG%%BG%%BG%%BG%
Set Z6=%BG%%BG%%FG%%BG%%BG%%BG%%BG%
Set Z7=%BG%%FG%%BG%%BG%%BG%%BG%%BG%
Set Z8=%FG%%FG%%FG%%FG%%FG%%FG%%FG%

:PRESPELL
set w=%W:!=ª%
Setlocal enableDelayedExpansion
%SCOUNTER% %w%
SET /A BEGIN=-1
SET /A END=%RESULT%

:SPELL
SET /a BEGIN=%BEGIN%+1
SET /A END=%END%-1
IF "%END%"=="0" Goto :last
Set currentletter=!w:~%BEGIN%,-%END%!
Set CURRENTLETTER=%CURRENTLETTER:"=%
IF "%currentletter%"==" " set currentletter=SPACE
if "!%CURRENTLETTER%1!"=="" goto :spell
SET LINE1=%LINE1% %BG% !%CURRENTLETTER%1!
SET LINE2=%LINE2% %BG% !%CURRENTLETTER%2!
SET LINE3=%LINE3% %BG% !%CURRENTLETTER%3!
SET LINE4=%LINE4% %BG% !%CURRENTLETTER%4!
SET LINE5=%LINE5% %BG% !%CURRENTLETTER%5!
SET LINE6=%LINE6% %BG% !%CURRENTLETTER%6!
SET LINE7=%LINE7% %BG% !%CURRENTLETTER%7!
SET LINE8=%LINE8% %BG% !%CURRENTLETTER%8!
Goto :SPELL


:LAST
Set currentletter=!w:~%BEGIN%!
SET LINE1=%LINE1% %BG% !%CURRENTLETTER%1!
SET LINE2=%LINE2% %BG% !%CURRENTLETTER%2!
SET LINE3=%LINE3% %BG% !%CURRENTLETTER%3!
SET LINE4=%LINE4% %BG% !%CURRENTLETTER%4!
SET LINE5=%LINE5% %BG% !%CURRENTLETTER%5!
SET LINE6=%LINE6% %BG% !%CURRENTLETTER%6!
SET LINE7=%LINE7% %BG% !%CURRENTLETTER%7!
SET LINE8=%LINE8% %BG% !%CURRENTLETTER%8!
:LASTSPACE
%CC% %LINE1%& echo.
%CC% %LINE2%& echo.
%CC% %LINE3%& echo.
%CC% %LINE4%& echo.
%CC% %LINE5%& echo.
%CC% %LINE6%& echo.
%CC% %LINE7%& echo.
%CC% %LINE8%& echo.
