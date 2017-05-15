@echo off 
color a
echo Type below what do you want to open. for example for notepad
echo type "notepad" without "" 
echo __________________________
set /p a="open:"
start %a%
pause  