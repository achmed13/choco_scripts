@echo off 
echo.
echo --
choice /c ynrsux /m "update soundswitch?  (y)es, (n)o, (r)einstall, (s)kip scripts, (u)ninstall, e(x)it?" /n 
IF %ERRORLEVEL% EQU 1 sudo choco upgrade soundswitch -y
IF %ERRORLEVEL% EQU 3 sudo choco uninstall soundswitch && sudo choco installsoundswitch -y
IF %ERRORLEVEL% EQU 4 sudo choco upgrade soundswitch -y --skip-scripts
IF %ERRORLEVEL% EQU 5 sudo choco uninstall soundswitch
IF %ERRORLEVEL% EQU 6 goto END
:END 
