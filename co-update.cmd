@echo off
setlocal EnableDelayedExpansion

cd /d %~dp0
rem copy /y \\xps22spl\xps22spl\tools\scripts\choco\*.cmd .\

git reset --hard
git pull
