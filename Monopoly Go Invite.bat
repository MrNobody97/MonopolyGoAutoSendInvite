@echo off
:inizio
echo Insert Link:
set /p link=
echo How many times do you have to send the invitation?:
set /p times=
set loopvar=1
cls
:start
@echo off
if %loopvar% gtr %times% (goto :done) else (set /a loopvar=%loopvar%+1 && echo %loopvar% Times, Start && goto :repeat) // Its for loop
:repeat
FOR /F "tokens=1,2" %%a IN ('adb devices') DO (  // Code for send shell command to all adb devices
    IF "%%b" == "device" ( adb -s %%a shell pm clear -r com.google.android.gms ) // Clean Play Service Cache
    IF "%%b" == "device" ( adb -s %%a shell pm clear -r com.scopely.monopolygo ) // Clean Monopoly cache
    IF "%%b" == "device" ( adb -s %%a shell am start -a android.intent.action.VIEW -d %link% ) // Open Browser with link
)
timeout 60  // Can modify, timer for completely loading game
cls // Clean command on windows
FOR /F "tokens=1,2" %%a IN ('adb devices') DO (
    IF "%%b" == "device" ( adb -s %%a shell am force-stop com.android.browser )  // Force closing browser
)
goto start  

:done
echo Finish
pause
cls
goto inizio
