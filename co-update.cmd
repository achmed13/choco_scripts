@echo off
setlocal EnableDelayedExpansion

cd /d "%~dp0"

git reset --hard
git pull
