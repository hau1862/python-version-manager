@echo off
setlocal

if "%1" == "--help" (
	echo Usage: pvm global ^<version^>
	echo        pvm global --unset
	echo.
	echo Sets the global Python version. You can override the global version at
	echo any time by setting a directory-specific version with `pvm local'
	echo or by setting the `PVM_VERSION' environment variable.
	echo.
	exit /b
)

echo %PVM_HOME%
