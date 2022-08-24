@echo off


%CD%\Extensions\FN.dll KBD
Set KBD=%ERRORLEVEL%

IF "%KBD%"=="65" set EType=A
IF "%KBD%"=="66" set EType=B
IF "%KBD%"=="67" set EType=C
IF "%KBD%"=="68" set EType=D
IF "%KBD%"=="69" set EType=E
IF "%KBD%"=="70" set EType=F
IF "%KBD%"=="71" set EType=G
IF "%KBD%"=="72" set EType=H
IF "%KBD%"=="73" set EType=I
IF "%KBD%"=="74" set EType=J
IF "%KBD%"=="75" set EType=K
IF "%KBD%"=="76" set EType=L
IF "%KBD%"=="77" set EType=M
IF "%KBD%"=="78" set EType=N
IF "%KBD%"=="79" set EType=O
IF "%KBD%"=="80" set EType=P
IF "%KBD%"=="81" set EType=Q
IF "%KBD%"=="82" set EType=R
IF "%KBD%"=="83" set EType=S
IF "%KBD%"=="84" set EType=T
IF "%KBD%"=="85" set EType=U
IF "%KBD%"=="86" set EType=V
IF "%KBD%"=="87" set EType=W
IF "%KBD%"=="88" set EType=X
IF "%KBD%"=="89" set EType=Y
IF "%KBD%"=="90" set EType=Z


IF "%KBD%"=="97" set EType=a
IF "%KBD%"=="98" set EType=b
IF "%KBD%"=="99" set EType=c
IF "%KBD%"=="100" set EType=d
IF "%KBD%"=="101" set EType=e
IF "%KBD%"=="102" set EType=f
IF "%KBD%"=="103" set EType=g
IF "%KBD%"=="104" set EType=h
IF "%KBD%"=="105" set EType=i
IF "%KBD%"=="106" set EType=j
IF "%KBD%"=="107" set EType=k
IF "%KBD%"=="108" set EType=l
IF "%KBD%"=="109" set EType=m
IF "%KBD%"=="110" set EType=n
IF "%KBD%"=="111" set EType=o
IF "%KBD%"=="112" set EType=p
IF "%KBD%"=="113" set EType=q
IF "%KBD%"=="114" set EType=r
IF "%KBD%"=="115" set EType=s
IF "%KBD%"=="116" set EType=t
IF "%KBD%"=="117" set EType=u
IF "%KBD%"=="118" set EType=v
IF "%KBD%"=="119" set EType=w
IF "%KBD%"=="120" set EType=x
IF "%KBD%"=="121" set EType=y
IF "%KBD%"=="122" set EType=z



IF "%KBD%"=="48" set EType=0
IF "%KBD%"=="49" set EType=1
IF "%KBD%"=="50" set EType=2
IF "%KBD%"=="51" set EType=3
IF "%KBD%"=="52" set EType=4
IF "%KBD%"=="53" set EType=5
IF "%KBD%"=="54" set EType=6
IF "%KBD%"=="55" set EType=7
IF "%KBD%"=="56" set EType=8
IF "%KBD%"=="57" set EType=9


IF "%KBD%"=="64" set EType=@
IF "%KBD%"=="35" set EType=#
IF "%KBD%"=="36" set EType=$
IF "%KBD%"=="40" set EType=(
IF "%KBD%"=="41" set EType=)

IF "%KBD%"=="45" set ETYPE=-
IF "%KBD%"=="61" set ETYPE==
IF "%KBD%"=="43" set ETYPE=+
IF "%KBD%"=="85" set ETYPE=_

IF "%KBD%"=="46" set ETYPE=.
IF "%KBD%"=="47" set ETYPE=/
IF "%KBD%"=="63" set ETYPE=?
IF "%KBD%"=="58" set ETYPE=:




IF "%KBD%"=="327" SET ETYPE=UP
IF "%KBD%"=="335" SET ETYPE=DOWN
IF "%KBD%"=="330" SET ETYPE=LEFT
IF "%KBD%"=="332" SET ETYPE=RIGHT
IF "%KBD%"=="8" set EType=BACKSPACE
IF "%KBD%"=="328" SET ETYPE=PAGEUP
IF "%KBD%"=="336" SET ETYPE=PAGEDOWN
IF "%KBD%"=="326" SET ETYPE=HOME
IF "%KBD%"=="334" set ETYPE=END
IF "%KBD%"=="13" set ETYPE=ENTER

IF "%KBD%"=="19" set ETYPE=SAVE
IF "%KBD%"=="15" set ETYPE=OPEN
IF "%KBD%"=="14" SET ETYPE=NEW
IF "%KBD%"=="23" set ETYPE=CLOSE
IF "%KBD%"=="352" set ETYPE=QUIT

IF "%ETYPE%"=="UP" Set /a CPOSY=%CPOSY%-1
IF "%ETYPE%"=="DOWN" SET /a CPOSY=%CPOSY%+1
IF "%ETYPE%"=="LEFT" SET /A CPOSX=%CPOSX%-1
IF "%ETYPE%"=="RIGHT" SET /a CPOSX=%CPOSX%+1

IF "%ETYPE%"=="HOME" SET /a CPOSX=%