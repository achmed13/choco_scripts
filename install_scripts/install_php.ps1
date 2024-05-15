# If you won't be able to execute the module functions, you may need to tell PowerShell to enable their execution:
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

# To install this module for any user of your PC, open an elevated PowerShell session (for example with Start-Process powershell -Verb runAs) and run this command:
Install-Module -Name PhpManager -Repository PSGallery -Force

# Install PHP
Install-Php -Version 7 -Architecture x64 -ThreadSafe 1 -Path c:\tools\php7 -TimeZone America/New_York -InitialPhpIni Development
Install-Php -Version 8 -Architecture x64 -ThreadSafe 1 -Path c:\tools\php8 -TimeZone America/New_York -InitialPhpIni Development

# Init virtual directory for Php-Switcher
Initialize-PhpSwitcher -Alias C:\tools\php

# Add to Switcher
Add-PhpToSwitcher -Name 7.x -Path C:\tools\php7
Add-PhpToSwitcher -Name 8.x -Path C:\tools\php8

# Set active PHP version
Switch-Php 7.x

# Update and configure ca-bundle
Update-PhpCAInfo

# Install Composer
Install-Composer



# Upgrade PHP
# Update-Php C:\tools\php7
# Update-Php C:\tools\php8