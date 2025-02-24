@echo off
echo Running through all the existing folders...
pushd .
for /d %%i in (*) do call :$generatecss "%%i"
popd
exit

:$generatecss
echo Entering %1

rem Skip the image hosting part of the project
if %1 EQU ".github" (
  echo stopping
  exit /B
)

cd %1
echo Removing existing stylesheet
rm -f style.css

rem loop through all files in folder, create stylesheet rules for them.
echo Generating CSS...
for %%f in (.\*) do (
  if "%%~xf" EQU ".bat" (
    echo skipping self
  ) else (
	echo.^.%%~nf ^{background-image: url^(%%~nf%%~xf^);^} >> style.css
  )
)
echo Finished with %1
cd ..
exit /B