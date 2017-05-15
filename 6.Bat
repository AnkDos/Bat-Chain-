@echo off
color a 
echo a.Shutdown
echo b.Restart
echo c.Log off
set /p X="chose(a,b,c):"
IF %X% EQU a shutdown/s
IF %X% EQU b shutdown/r
IF %X% EQU c shutdown/l 
pause