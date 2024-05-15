choco feature enable -n=useRememberedArgumentsForUpgrades
choco upgrade mysql -y --params "/port:3306 /dataLocation:c:\MySQL_Data /serviceName:mysql"
pause