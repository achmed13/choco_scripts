choco feature enable -n=useRememberedArgumentsForUpgrades
choco upgrade apache-httpd -y --params '"/installLocation:C:\tools\ /port:80"'
pause