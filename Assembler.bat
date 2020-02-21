rgbasm -omain.obj main.z80
if %errorlevel% neq 0 call :exit 1
rgblink -mmain.map -nmain.sym -omain.gb main.obj
if %errorlevel% neq 0 call :exit 1
rgbfix -p0 -v main.gb
if %errorlevel% neq 0 call :exit 1
call :exit 0

:exit
del main.map
del main.obj
pause
exit