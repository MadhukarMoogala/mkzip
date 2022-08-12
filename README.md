# mkzip

This is small utility file to create a zip file that ignores temporary, .vs and packages files. This can be applied to any VS project.  
create a bat file with below contents and name it mkzip.bat  
Replace this with attached file `C:\UtilStuff\bin\vsExclude.txt`

or you download the zip package containing `mkzip.bat` and `vsExclude.txt`

Note: make sure you have [7z](https://www.7-zip.org/download.html "7zip") on your path

```batch
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
```

Recording 

[![asciicast](https://asciinema.org/a/362143.svg)](https://asciinema.org/a/362143)

### License

This sample is licensed under the terms of the [MIT License](http://opensource.org/licenses/MIT). Please see the [LICENSE](LICENSE) file for full details.

### Written by

Madhukar Moogala, [Forge Partner Development](http://forge.autodesk.com)  @galakar
