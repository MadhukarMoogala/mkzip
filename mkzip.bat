::mkzip::
::Assume we have string set M=Madhukar
::To extrapolate first char of variable %M:~0,1%
::echo %M:~0,1% will give M
::To extrapolate last char of variable %M:~-1%"
::echo %M:~-1%" will give r
::To extrapolate 4th char of variabke %M:~4,1%
::echo %M:~4,1% will give u
@echo off
echo Running %~nx0
echo/
echo Current directory is:  %CD%
echo Directory of %~nx0 is: %~dp0
for /f  %%i in ("%CD%") do set p=%%~ni
set yy=%DATE:~-4%
set mm=%DATE:~4,2%
set dd=%DATE:~7,2%
set h=%TIME:~0,2%
set m=%TIME:~3,2%
set s=%TIME:~6,2%
set zip="%yy%-%mm%-%dd%_%h%_%m%_%s%_%p%.zip"
echo Zip Name is : %zip%
7z.exe a -tzip "%zip%" "%CD%\*" -bd  -mx9 -xr@"C:\UtilStuff\bin\vsExclude.txt"