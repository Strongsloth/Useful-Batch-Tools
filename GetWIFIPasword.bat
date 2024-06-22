@echo off
Title WIFIPASSWORD
echo.
echo [1;41mTip: With Great Power Comes With Great Responsibility.[0m
echo.
echo.
set /p Name="[97mWifi-Name Entry:[96m "[0m
set /p Save="[97mExport To:[96m "[0m
call :Netp

:: Get WIFI-PASSWORD Then, Export to %Save%.txt


:Netp
 netsh wlan show profile %Name% key=clear | findstr "Key Content" >%Save%.txt 
 netsh wlan show profile %Name% key=clear | findstr "Key Content" >>%Save%.txt
 netsh wlan show profile %Name% key=clear | findstr "Key Content" >>%Save%.txt
 netsh wlan show profile %Name% key=clear >>%Save%.txt 
