@echo off
REM --by-id-only --id-only --id-starts-with --order-by-popularity --by-tag-only
rem choco search %* --by-id-only --id-only 
choco search %* --order-by-popularity 
