@echo off
Tasklist
echo """"""""""""++++++++++++"""""""""""""""""""
set /p a="type pid(Number in Second Coloumn) of task to kill:"
taskkill/pid %a% /f
echo Done 
Pause