@echo off

echo Moving Mouse...
set /A direction=0

:loopstart
    if %direction%==0 (
        call mouse moveBy 50x0
        set /A direction=1
    ) else if %direction%==1 (
        call mouse moveBy 0x-50
        set /A direction=2
    ) else if %direction%==2 (
        call mouse moveBy -50x0
        set /A direction=3
    ) else (
        call mouse moveBy "0x50"
        set /A direction=0
    )

    timeout /t 5 > NUL
goto loopstart

echo Finish