@echo off
rem                               |-----------------------------------|---------------------------------|
if /i "%1"=="NoShaddow" goto :NoShaddow
Echo Time1: %TIME%>> A:\MARSH\ssh\Common\Flag.log
type %prespace%& call %echocolor% 22 "GGG"& call %echocolor% FF "========================="& call %echocolor% 33 "BB=======================B"& Echo.
type %prespace%& call %echocolor% 22 "{==GG"& call %echocolor% FF "========================="& call %echocolor% 33 "B======================}"& Echo.
type %prespace%& call %echocolor% 22 "{====G"& call %echocolor% FF "========================="& call %echocolor% 33 "BB====================}"& type %BorderShaddow%& Echo.
type %prespace%& call %echocolor% 22 "{=====GG"& call %echocolor% FF "========================="& call %echocolor% 33 "B===================}"& type %BorderShaddow%& Echo.
type %prespace%& call %echocolor% 22 "{=======G"& call %echocolor% FF "========================="& call %echocolor% 33 "BB=================}"& type %BorderShaddow%& Echo.
type %prespace%& call %echocolor% 22 "{========GG"& call %echocolor% FF "========================="& call %echocolor% 33 "B================}"& type %BorderShaddow%& Echo.
type %prespace%& call %echocolor% 22 "{==========G"& call %echocolor% FF "========================="& call %echocolor% 33 "BB==============}"& type %BorderShaddow%& Echo.
type %prespace%& call %echocolor% 22 "{===========GG"& call %echocolor% FF "========================="& call %echocolor% 33 "B=============}"& type %BorderShaddow%& Echo.
type %prespace%& call %echocolor% 22 "{=============G"& call %echocolor% FF "========================="& call %echocolor% 33 "BB===========}"& type %BorderShaddow%& Echo.
type %prespace%& call %echocolor% 22 "{==============GG"& call %echocolor% FF "========================="& call %echocolor% 33 "B==========}"& type %BorderShaddow%& Echo.
type %prespace%& call %echocolor% 22 "{================G"& call %echocolor% FF "========================="& call %echocolor% 33 "BB========}"& type %BorderShaddow%& Echo.
type %prespace%& call %echocolor% 22 "{=================GG"& call %echocolor% FF "========================="& call %echocolor% 33 "B=======}"& type %BorderShaddow%& Echo.
type %prespace%& call %echocolor% 22 "{===================G"& call %echocolor% FF "========================="& call %echocolor% 33 "BB=====}"& type %BorderShaddow%& Echo.
type %prespace%& call %echocolor% 22 "{====================GG"& call %echocolor% FF "========================="& call %echocolor% 33 "B====}"& type %BorderShaddow%& Echo.
type %prespace%& call %echocolor% 22 "{======================G"& call %echocolor% FF "========================="& call %echocolor% 33 "BB==}"& type %BorderShaddow%& Echo.
type %prespace%& call %echocolor% 22 "G=======================GG"& call %echocolor% FF "========================="& call %echocolor% 33 "BBB"& type %BorderShaddow%& Echo.
type %shaddow%
Echo Time2: %TIME%>> A:\MARSH\ssh\Common\Flag.log
Goto :eof

:NoShaddow
Echo Time1 NS: %TIME%>> A:\MARSH\ssh\Common\Flag.log
Type %space% &type %prespace%& call %echocolor% 22 "GGG"& call %echocolor% FF "========================="& call %echocolor% 33 "BB=======================B"& Echo.
Type %space% &type %prespace%& call %echocolor% 22 "{==GG"& call %echocolor% FF "========================="& call %echocolor% 33 "B======================}"& Echo.
Type %space% &type %prespace%& call %echocolor% 22 "{====G"& call %echocolor% FF "========================="& call %echocolor% 33 "BB====================}"& Echo.
Type %space% &type %prespace%& call %echocolor% 22 "{=====GG"& call %echocolor% FF "========================="& call %echocolor% 33 "B===================}"& Echo.
Type %space% &type %prespace%& call %echocolor% 22 "{=======G"& call %echocolor% FF "========================="& call %echocolor% 33 "BB=================}"& Echo.
Type %space% &type %prespace%& call %echocolor% 22 "{========GG"& call %echocolor% FF "========================="& call %echocolor% 33 "B================}"& Echo.
Type %space% &type %prespace%& call %echocolor% 22 "{==========G"& call %echocolor% FF "========================="& call %echocolor% 33 "BB==============}"& Echo.
Type %space% &type %prespace%& call %echocolor% 22 "{===========GG"& call %echocolor% FF "========================="& call %echocolor% 33 "B=============}"& Echo.
Type %space% &type %prespace%& call %echocolor% 22 "{=============G"& call %echocolor% FF "========================="& call %echocolor% 33 "BB===========}"& Echo.
Type %space% &type %prespace%& call %echocolor% 22 "{==============GG"& call %echocolor% FF "========================="& call %echocolor% 33 "B==========}"& Echo.
Type %space% &type %prespace%& call %echocolor% 22 "{================G"& call %echocolor% FF "========================="& call %echocolor% 33 "BB========}"& Echo.
Type %space% &type %prespace%& call %echocolor% 22 "{=================GG"& call %echocolor% FF "========================="& call %echocolor% 33 "B=======}"& Echo.
Type %space% &type %prespace%& call %echocolor% 22 "{===================G"& call %echocolor% FF "========================="& call %echocolor% 33 "BB=====}"& Echo.
Type %space% &type %prespace%& call %echocolor% 22 "{====================GG"& call %echocolor% FF "========================="& call %echocolor% 33 "B====}"& Echo.
Type %space% &type %prespace%& call %echocolor% 22 "{======================G"& call %echocolor% FF "========================="& call %echocolor% 33 "BB==}"& Echo.
Type %space% &type %prespace%& call %echocolor% 22 "G=======================GG"& call %echocolor% FF "========================="& call %echocolor% 33 "BBB"& Echo.
Echo Time2 NS: %TIME%>> A:\MARSH\ssh\Common\Flag.log