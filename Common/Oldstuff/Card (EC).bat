@echo off
echo Time1: %TIME%>> A:\MARSH\ssh\Common\card.log
Set PS=TYPE %FD%\COMMON\SPACE16
%PS% &Call :B1& Echo.
%PS% &Call :W1& Echo.
%PS% &call :LS& Echo.
%PS% &call :LS& Echo.
%PS% &call :LS& Echo.
%PS% &call :LS& %S2% &%EC% EE "SSSSS" &%S1% &%EC% EE "H" &%S3% &%EC% EE "H" &%S2% &%EC% EE "OOOO" &%S2% &%EC% EE "BBBB" &%S2% &%EC% EE "U" &%S3% &%EC% EE "U"& Echo.
%PS% &call :LS& %S1% &%EC% EE "S" &%S3%  &%S3% &%EC% EE "H" &%S3% &%EC% EE "H" &%S1% &%EC% EE "O" &%S3%  &%S1% &%EC% EE "O" &%S1% &%EC% EE "B" &%S3% &%EC% EE "B" &%S1% &%EC% EE "U" &%S3% &%EC% EE "U"& Echo.
%PS% &call :LS& %S2% &%EC% EE "SSSS" &%S2% &%EC% EE "HHHHH" &%S1% &%EC% EE "O" &%S3%  &%S1% &%EC% EE "O" &%S1% &%EC% EE "BBBB" &%S2% &%EC% EE "U" &%S3% &%EC% EE "U"& Echo.
%PS% &call :LS& %S3% &%S3% &%EC% EE "S" &%S1% &%EC% EE "H" &%S3% &%EC% EE "H" &%S1% &%EC% EE "O" &%S3% &%S1% &%EC% EE "O" &%S1% &%EC% EE "B" &%S3% &%EC% EE "B" &%S1% &%EC% EE "U" &%S3% &%EC% EE "U"& Echo.
%PS% &call :LS& %S1% &%EC% EE "SSSSS" &%S2% &%EC% EE "H" &%S3% &%EC% EE "H" &%S2% &%EC% EE "OOOO" &%S2% &%EC% EE "BBBB" &%S3% &%EC% EE "UUU"& Echo.
%PS% &call :LS& %S1% & %EC% 0E "-------------------------------"& Echo.
%PS% &call :LS& %S3%  &%S3%  &%S3%  &%S1% &%EC% 0E "UMSWEB CASINO"& Echo.
%PS% &call :LS& Echo.
%PS% &call :LS& Echo.
%PS% &Call :W1& Echo.
%PS% &Call :B1& Echo.
echo Time2: %TIME%>> A:\MARSH\ssh\Common\card.log

goto :EOF


:B1
%S1%& %EC% CC "RRRRRRRRRRRRRR"
goto :EOF

:W1
%EC% CC "R"& %EC% FF "WWWWWWWWWWWWWW"& %EC% CC "R"
goto :EOF

:LS
%EC% CC "R"& %EC% FF "W"& %EC% CC "RRRRRRRRRRRR"& %EC% FF "W"& %EC% CC "R"
goto :EOF


:L1
%EC% CC "R"& %EC% FF "W"& %EC% CC "R"& %EC% FF "W"& %EC% CC "RRRRRRRR"& %EC% FF "W"& %EC% CC "R"& %EC% FF "W"& %EC% CC "R"
goto :eof

:L2
%EC% CC "R"& %EC% FF "W"& %EC% CC "RR"& %EC% FF "W"& %EC% CC "RRRRRR"& %EC% FF "W"& %EC% CC "RR"& %EC% FF "W"& %EC% CC "R"
goto :EOF

:L3
%EC% CC "R"& %EC% FF "W"& %EC% CC "RRR"& %EC% FF "W"& %EC% CC "RRRR"& %EC% FF "W"& %EC% CC "RRR"& %EC% FF "W"& %EC% CC "R"
goto :EOF

%EC% CC "R"& %EC% FF "W"& %EC% CC "RRR"& %EC% FF "W"& %EC% CC "RRRR"& %EC% FF "W"& %EC% CC "RRR"& %EC% FF "W"& %EC% CC "R"

:L4
%EC% CC "R"& %EC% FF "W"& %EC% CC "RRRR"& %EC% FF "W"& %EC% CC "RR"& %EC% FF "W"& %EC% CC "RRRR"& %EC% FF "W"& %EC% CC "R"
goto :EOF

:L5
%EC% CC "R"& %EC% FF "W"& %EC% CC "RRRRR"& %EC% FF "W"& %EC% FF "W"& %EC% CC "RRRRR"& %EC% FF "W"& %EC% CC "R"
goto :eof

goto :EOF

 RRRRRRRRRRRRRR
RWWWWWWWWWWWWWWR
RW W        W WR
RW  W      W  WR
RW   W    W   WR
RW   W    W   WR  SSSSS H   H  OOOO  BBBB  U   U
RW    W  W    WR S      H   H O    O B   B U   U
RW     WW     WR  SSSS  HHHHH O    O BBBB  U   U
RW     WW     WR      S H   H O    O B   B U   U
RW    W  W    WR SSSSS  H   H  OOOO  BBBB   UUU
RW   W    W   WR -------------------------------
RW   W    W   WR      UMSWEB GAMING NETWORK
RW  W      W  WR
RW W        W WR
RWWWWWWWWWWWWWWR
 RRRRRRRRRRRRRR

SHOBU
UMSWEB Gaming Network

:EOF