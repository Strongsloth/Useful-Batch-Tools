@echo off
title TEST 001
color 0A
:Start
echo.
cls
set /p user_input="Would You Like To Continue This Program? (YES/NO):"
if /i %user_input%==YES goto :Yes
if /i %user_input%==NO (goto:No) else (goto :Invalid)





:Yes
echo Thank You For Comfirming.
timeout /t 1 /nobreak >nul
goto :Start


:No
echo Thank You For Comfirming.
timeout /t 1 /nobreak >nul
echo This Program Will Quit In 1 Seconds.
timeout /t 1 /nobreak >nul
exit


:Invalid
echo Invalid Entry.Please Try Again.
timeout /t 1 /nobreak >nul
goto :Start
