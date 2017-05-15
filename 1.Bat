@echo off
color a
:A 
Echo                            WELCOME 
echo                          BAT CHAIN 1.0
echo                        created by Ankur

echo This is the series of batch file linked together to perform various action
echo      on windows.its like a CUI based OS's (basic level).
echo                Action Available-1 2 3 4 5
echo   ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

call 2
ECHO ========================================================================
set /p b="chose ACTION/Option no. :"
echo ````````````````````````````````````````````````````````````````````````````````
IF %B% EQU 1 CALL 3
IF %B% EQU 2 CALL 4
IF %B% EQU 3 CALL 5
IF %B% EQU 4 CALL 6
IF %B% EQU 5 CALL 7

IF %B% EQU 6 exit
cls
GOTO A
pause  

