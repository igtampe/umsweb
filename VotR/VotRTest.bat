cls
@echo off
color 0A
Echo [ ]                                V O T - R                                [ ]
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
cd USERS
IF NOT EXIST VOTE goto :EOF
Echo.
Echo Submitting RANDOM VOTES.
Set RVote=0
echo.

:C
set /p C=
Call :%C%
goto :C

:R
Set /A R=%RANDOM% %% 3
call :%R%
goto :C

:0
Echo This is a random vote> VOTE\YES\%Rvote%
Set /a RVote=%RVOTE%+1
Echo Submitted a YES
goto :EOF

:1
Echo This is a random vote> VOTE\NO\%Rvote%
Set /a RVote=%RVOTE%+1
Echo Submitted a NO
goto :EOF

:2
Echo This is a random vote> VOTE\ABS\%Rvote%
Set /a RVote=%RVOTE%+1
echo Submitted an ABSTAIN
goto :EOF
