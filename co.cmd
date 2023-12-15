@echo off
setlocal EnableDelayedExpansion
%~d0
cd %~dp0

set updates=0
rem del /Q chocotemp.txt
echo @echo off > chocoupdate.bat

echo.
echo updating chocolatey...
sudo choco upgrade chocolatey -y
echo.
echo checking updates...
echo ---
choco outdated --ignore-pinned --limit-output > chocotemp.txt

call :CheckEmpty chocotemp.txt
if %updates%==0 goto :END

:PROMPT
	choice /c ynx /m "start updates?"
	rem IF %ERRORLEVEL% EQU 1 goto :ALL
	IF %ERRORLEVEL% EQU 1 goto :SOME
	IF %ERRORLEVEL% EQU 2 goto :END
	IF %ERRORLEVEL% EQU 3 goto :END


:ALL
	rxrepl -f chocotemp.txt -m line -s"(.*?)\|.*\n" -r"echo.\necho --\nsudo cu \1\n" >> chocoupdate.bat

	call chocoupdate.bat
	REM sudo cu all -y
	goto :END


:SOME
	rxrepl -f chocotemp.txt -m line -s"(.*?)\|(.*?)\|(.*?)\|(.*)" -r"echo.\necho --\nchoice /c ynrsux /m \"update \1 \2 to \3?  (y)es, (n)o, (r)einstall, (s)kip scripts, (u)ninstall, e(x)it?\" /n \nIF %%ERRORLEVEL%% EQU 1 sudo choco upgrade \1 -y\nIF %%ERRORLEVEL%% EQU 3 sudo choco uninstall \1 && sudo choco install\1 -y\nIF %%ERRORLEVEL%% EQU 4 sudo choco upgrade \1 -y --skip-scripts\nIF %%ERRORLEVEL%% EQU 5 sudo choco uninstall \1\nIF %%ERRORLEVEL%% EQU 6 goto END\n" >> chocoupdate.bat
	REM co | more +6 | head -n -4 | rxrepl -m line -s"(.*?)\|.*\n" -r"choice /m \"update \1?\"\nIF %%ERRORLEVEL%% EQU 1 sudo cu \1\n" >> chocoupdate.bat
	echo :END >> chocoupdate.bat

	call chocoupdate.bat
	goto :END


:CheckEmpty
	if %~z1 == 0 (
		echo No Updates Found
		exit /b
	)
	set updates=1
	more %~nx1
	echo ---


:END
	exit /b
	REM pause
