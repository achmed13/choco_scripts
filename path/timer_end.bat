@echo off
setlocal
FOR /F "tokens=* USEBACKQ" %%F IN (`timer.exe /nologo /s`) DO (
SET t=%%F
)
echo.
ECHO TIMER_END %1: %t%

