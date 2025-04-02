choco feature enable -n=useRememberedArgumentsForUpgrades
choco upgrade git -y --params "'/GitAndUnixToolsOnPath /NoGitLfs /DefaultBranchName:main /WindowsTerminalProfile /WindowsTerminal'"
pause