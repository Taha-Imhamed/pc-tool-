@echo off 
echo Taha Pc Cleaner - 2025
echo.----------------------------------

set /p confirm=Do you want to clean your pc? (y/n):
if /i "%confirm%" EQU "y" goto :yes 
if /i "%confirm%" EQU "n" goto :no 
:yes
echo Cleaning your pc...
echo.----------------------------------
echo Deleting temporary files...    
del /q /s /f %temp%\*.*     
echo.----------------------------------
echo Deleting prefetch files...
del /q /s /f %windir%\prefetch\*.*
echo.----------------------------------
echo Deleting recent files...
del /q /s /f %userprofile%\recent\*.*
echo.----------------------------------
echo Deleting cookies...
del /q /s /f %userprofile%\cookies\*.*
echo.----------------------------------
echo Deleting history...
del /q /s /f %userprofile%\history\*.*
echo.----------------------------------
echo Deleting temporary internet files...
del /q /s /f %userprofile%\local settings\temporary internet files\*.*
echo.----------------------------------
echo Deleting recycle bin...
del /q /s /f %userprofile%\local settings\recycler\*.*
echo.----------------------------------
echo Deleting windows temp files...
del /q /s /f %windir%\temp\*.*
echo.----------------------------------
echo Deleting windows update files...
del /q /s /f %windir%\softwaredistribution\download\*.*
echo.----------------------------------
echo Deleting windows error reporting files...
del /q /s /f %windir%\pchealth\errorrep\userdumps\*.*
echo.----------------------------------
@echo off
echo PC Cleaner - Batch Script
echo -----------------------


set /p confirm="Are you sure you want to clean your PC? (y/n): "
if /i "%confirm%" neq "y" (
    echo Cleaning canceled.
    pause
    exit /b
)

echo Cleaning Temp folders...
rd /s /q %TEMP%
md %TEMP%
rd /s /q C:\Windows\Temp
md C:\Windows\Temp


echo Emptying Recycle Bin...
rd /s /q C:\$Recycle.Bin
md C:\$Recycle.Bin



echo PC cleaning completed!
pause
