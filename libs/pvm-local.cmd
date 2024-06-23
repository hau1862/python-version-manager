@echo off
setlocal

if "%1" == "--help" (
	echo Usage: pvm local ^<version^> ^<version2^> ^<..^>
	echo        pvm local --unset
	echo.
	echo Sets the local application-specific Python version by writing the
	echo version name to a file named `.python-version'.
	echo.
	echo When you run a Python command, pvm will look for a `.python-version'
	echo file in the current directory and each parent directory. If no such
	echo file is found in the tree, pvm will use the global Python version
	echo specified with `pvm global'. A version specified with the
	echo `PVM_VERSION' environment variable takes precedence over local
	echo and global versions.
	echo.
	echo ^<version^> can be specified multiple times and should be a version
	echo tag known to pvm.  The special version string `system' will use
	echo your default system Python.  Run `pvm list' for a list of
	echo available Python versions.
	echo.
	echo Example: To enable the python2.7 and python3.7 shims to find their
	echo          respective executables you could set both versions with:
	echo.
	echo 'pvm local 3.7.0 2.7.15'
	exit /b
)

echo %PVM_HOME%
