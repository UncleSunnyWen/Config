@echo off
set logFile=android.log
if exist %logFile% del %logFile%
adb root
adb remount
pause
adb logcat -c
@echo on
adb logcat -v threadtime > %logFile%
