@echo off
setlocal EnableDelayedExpansion

md c:\tools\scripts\
cd c:\tools\scripts\

git clone --single-branch https://github.com/achmed13/choco_scripts.git ./choco

SETX /M PATH "c:\tools\scripts\choco;c:\tools\scripts\choco\path\;%PATH%;"
