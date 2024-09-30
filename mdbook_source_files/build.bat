@echo off
REM Run the mdbook build command
echo Running mdbook build...
mdbook build

REM Check if the build was successful
if %errorlevel% neq 0 (
    echo mdbook build failed!
    pause
    exit /b 1
)

REM Set the folder paths using relative paths
set "source_folder=book"
set "destination_folder=..\docs"

REM Delete contents of the destination folder
echo Deleting contents of %destination_folder%...
del /Q "%destination_folder%\*.*"
for /D %%p in ("%destination_folder%\*") do rmdir "%%p" /s /q

REM Copy contents from source folder to destination folder
echo Copying contents from %source_folder% to %destination_folder%...
xcopy "%source_folder%\*" "%destination_folder%\" /s /e /i

echo Done!
pause