call runcrud.bat

if "%ERRORLEVEL%" == "0" goto open-website
echo.
echo RUN CRUD has errors – breaking work
goto open-website @ because above is always returning error

:open-website
@ echo off
start http://localhost:8080/crud/v1/task/tasks

if "%ERRORLEVEL%" == "0" goto end
echo Cannot open website
goto fail

:fail
echo.
echo There were errors

:end
echo.
echo Work is finished.