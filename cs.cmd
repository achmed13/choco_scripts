@echo off
REM --by-id-only --id-only --id-starts-with --order-by-popularity --by-tag-only
choco search %* --order-by-popularity 
