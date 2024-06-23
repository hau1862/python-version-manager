@echo off
setlocal

if "%1" == "--help" (
	echo "Usage: pvm uninstall [-f|--force] <version> [<version> ...]"
	echo "       pvm uninstall [-f|--force] [-a|--all]"
	echo.
	echo    -f/--force  Attempt to remove the specified version without prompting
	echo                for confirmation. If the version does not exist, do not
	echo                display an error message.
	echo.
	echo    -a/--all    *Caution* Attempt to remove all installed versions.
	echo.
	echo See `pvm versions` for a complete list of installed versions.
	exit /b
)

set default="%~dp0..\versions\%1"

if "%PVM_HOME%" == "" (
	echo PVM_HOME variable is not set, recommended to set the variable.
) else (
	set path="%PVM_HOME%\versions\%1"

	if exist %path% (
    	set default=%path%
	)
)

if exist %default% (
	rmdir /s %default%
) else (
	echo pvm: no such version "%1"
)
