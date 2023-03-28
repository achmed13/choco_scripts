@echo off
setlocal
IF [%1]==[] (set /A T=5) ELSE (set /A T=%1)
echo.
echo T=%T%
echo.
echo ----------
echo Done!
choice /N /T %T% /D Y >nul  2>&1