@echo off
setlocal
FOR /F "tokens=* USEBACKQ" %%F IN (`timer.exe /nologo /r`) DO (
SET t=%%F
)
echo.
echo TIMER %1: %t%

