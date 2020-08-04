@echo off
Title AnkDos Hotspot
Cls
echo AnkDos Hotspot
echo Created By Ankur Pandey
echo 1. Make sure, WiFi is on and you have run the CMD as admin.
echo 2. If this is your first time then give input 'A'(without ''). 
echo 3. If You Have already created a profile then give input 'B'(without '').
echo 4. If You want to re-configure the existing profile then input'C'(without '').
echo 5. If you forgot to turn off the wifi before exiting last time and wanna turn off it then input'D'(without '')
set /p j=Input(A\B\C\D):
IF %J% EQU A GOTO Y
IF %J% EQU C GOTO Y
IF %J% EQU B GOTO X
IF %J% EQU D GOTO U
:X
netsh wlan start hosted network



GOTO A
:Y
set /p n=ssid:
set /p m=Password:
netsh wlan set hostednetwork mode=allow ssid=%n% key=%m%
netsh wlan start hostednetwork
:A
Echo --------------------------------
Echo Input 1-For turning off the hotspot 2-For Restarting the hotspot 
echo 3-For reconfigure the hotspot 4-exit  

set /p o=Input:
IF %O% EQU 1 netsh wlan stop hostednetwork
IF %O% EQU 4 exit
IF %O% EQU 3 GOTO Y
IF %O% EQU 2 netsh wlan start hostednetwork
Goto A
:U
netsh wlan stop hostednetwork
Pause
