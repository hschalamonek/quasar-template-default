@echo off
setlocal

if exist cordova (
  set NEEDS_CD=1
)

rem get command line args into a variable
set CMD_LINE_ARGS=%1
if ""%1""=="""" goto done
shift
:setup
if ""%1""=="""" goto done
set CMD_LINE_ARGS=%CMD_LINE_ARGS% %1
shift
goto setup
:done

if "x%NEEDS_CD%" == "x1" (
  cd cordova
)

call cordova %CMD_LINE_ARGS%

if "x%NEEDS_CD%" == "x1" (
  cd ..
)

:end
