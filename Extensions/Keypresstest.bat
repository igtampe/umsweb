@echo off
fn.dll FONT 5
Echo.
Echo.
Echo Press a key so you can see what it is!
Echo.

:loop
Echo.
Fn.dll Kbd
Set KeyPress=%Errorlevel%
Echo.
Echo You pressed key (%KEYPRESS%)
goto :loop


FN.DLL|KBD      |SET KEYPRESS=(VAR)    RAW Read of keyboard input. Maybe for PGUP PDOWN?