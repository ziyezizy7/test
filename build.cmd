@echo off
if not defined buildtool (
	for /f %%i in ('dir /b /ad /on "%windir%\Microsoft.NET\Framework\v4*"') do (@if exist "%windir%\Microsoft.NET\Framework\%%i\msbuild".exe set buildtool=%windir%\Microsoft.NET\Framework\%%i\msbuild.exe)
)

if not defined buildtool (
	echo No msbuild.exe was found, install .Net Framework version 4.0 or higher
	goto :eof
)


%buildtool% testgit.sln /t:clean

