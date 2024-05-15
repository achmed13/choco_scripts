@echo off
cd /d "%~dp0"

md c:\tools\path\
md c:\tools\scripts\choco\
xcopy "path" "c:\tools\path" /Y /S
xcopy "*.cmd" "c:\tools\scripts\choco" /Y /S
SETX /M PATH "c:\tools\path;c:\tools\scripts;c:\tools\scripts\choco;%ALLUSERSPROFILE%\chocolatey\bin;%PATH%;"
pause