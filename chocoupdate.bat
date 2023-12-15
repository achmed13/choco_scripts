@echo off 
echo.
echo --
choice /c ynrsux /m "update ccleaner 6.18.10838 to 6.19.10858?  (y)es, (n)o, (r)einstall, (s)kip scripts, (u)ninstall, e(x)it?" /n 
IF %ERRORLEVEL% EQU 1 sudo choco upgrade ccleaner -y
IF %ERRORLEVEL% EQU 3 sudo choco uninstall ccleaner && sudo choco installccleaner -y
IF %ERRORLEVEL% EQU 4 sudo choco upgrade ccleaner -y --skip-scripts
IF %ERRORLEVEL% EQU 5 sudo choco uninstall ccleaner
IF %ERRORLEVEL% EQU 6 goto END
echo.
echo --
choice /c ynrsux /m "update pandoc 3.1.9 to 3.1.10?  (y)es, (n)o, (r)einstall, (s)kip scripts, (u)ninstall, e(x)it?" /n 
IF %ERRORLEVEL% EQU 1 sudo choco upgrade pandoc -y
IF %ERRORLEVEL% EQU 3 sudo choco uninstall pandoc && sudo choco installpandoc -y
IF %ERRORLEVEL% EQU 4 sudo choco upgrade pandoc -y --skip-scripts
IF %ERRORLEVEL% EQU 5 sudo choco uninstall pandoc
IF %ERRORLEVEL% EQU 6 goto END
echo.
echo --
choice /c ynrsux /m "update vscode 1.85.0 to 1.85.1?  (y)es, (n)o, (r)einstall, (s)kip scripts, (u)ninstall, e(x)it?" /n 
IF %ERRORLEVEL% EQU 1 sudo choco upgrade vscode -y
IF %ERRORLEVEL% EQU 3 sudo choco uninstall vscode && sudo choco installvscode -y
IF %ERRORLEVEL% EQU 4 sudo choco upgrade vscode -y --skip-scripts
IF %ERRORLEVEL% EQU 5 sudo choco uninstall vscode
IF %ERRORLEVEL% EQU 6 goto END
echo.
echo --
choice /c ynrsux /m "update vscode.install 1.85.0 to 1.85.1?  (y)es, (n)o, (r)einstall, (s)kip scripts, (u)ninstall, e(x)it?" /n 
IF %ERRORLEVEL% EQU 1 sudo choco upgrade vscode.install -y
IF %ERRORLEVEL% EQU 3 sudo choco uninstall vscode.install && sudo choco installvscode.install -y
IF %ERRORLEVEL% EQU 4 sudo choco upgrade vscode.install -y --skip-scripts
IF %ERRORLEVEL% EQU 5 sudo choco uninstall vscode.install
IF %ERRORLEVEL% EQU 6 goto END
:END 
