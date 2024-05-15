@echo off
setlocal
FOR /F "tokens=* USEBACKQ" %%F IN (`timer.exe /nologo`) DO (
SET t=%%F
)
echo.
echo TIMER_START %1: %t%

