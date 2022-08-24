@echo off

IF "%CC%"=="" set CC=ColorChar

goto :a
Black		0	s
Blue		1	u
Green		2	g
Aqua		3	q
Red		4       r
Purple		5	p
Yellow		6	y
White		7	w
Gray		8	S
Light Blue	9	U
Light Green	A	G
Light Aqua	B	Q
Light Red	C	R
Light Purple	D       P
Light Yellow	E	Y
Bright White	F	W

Set GDRAW=%GDRAW:s= /00 178%
Set GDRAW=%GDRAW:u= /11 178%
Set GDRAW=%GDRAW:g= /22 178%
Set GDRAW=%GDRAW:q= /33 178%
Set GDRAW=%GDRAW:r= /44 178%
Set GDRAW=%GDRAW:p= /55 178%
Set GDRAW=%GDRAW:y= /66 178%
Set GDRAW=%GDRAW:w= /77 178%
Set GDRAW=%GDRAW:S= /88 178%
Set GDRAW=%GDRAW:U= /99 178%
Set GDRAW=%GDRAW:G= /AA 178%
Set GDRAW=%GDRAW:Q= /BB 178%
Set GDRAW=%GDRAW:R= /CC 178%
Set GDRAW=%GDRAW:P= /DD 178%
Set GDRAW=%GDRAW:Y= /EE 178%
Set GDRAW=%GDRAW:W= /FF 178%


:a

Set GDraw=%1
Set GDRAW=%GDRAW:s= /0f 32%
Set GDRAW=%GDRAW:u= /1f 32%
Set GDRAW=%GDRAW:g= /2f 32%
Set GDRAW=%GDRAW:q= /3f 32%
Set GDRAW=%GDRAW:r= /4f 32%
Set GDRAW=%GDRAW:p= /5f 32%
Set GDRAW=%GDRAW:y= /6f 32%
Set GDRAW=%GDRAW:w= /7f 32%
Set GDRAW=%GDRAW:S= /8f 32%
Set GDRAW=%GDRAW:U= /9f 32%
Set GDRAW=%GDRAW:G= /Af 32%
Set GDRAW=%GDRAW:Q= /Bf 32%
Set GDRAW=%GDRAW:R= /Cf 32%
Set GDRAW=%GDRAW:P= /Df 32%
Set GDRAW=%GDRAW:Y= /Ef 32%
Set GDRAW=%GDRAW:W= /F0 32%

%CC% %GDraw%
IF "%2"=="." Echo.
