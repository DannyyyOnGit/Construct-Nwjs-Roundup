@echo off
REM |---------------------------------------------------------------|
REM | Batch written by TheRealDannyyy! (Made for the C2 Community.) |
REM |---------------------------------------------------------------|
TITLE NW.js Secure Assets
COLOR B
if exist "nw.exe" (
	if exist "package.nw" (
		echo --- Working ---
		echo Appending the package.nw file to the nw.exe file.
		echo [Depending on the size of your package.nw file, this can take up to 5 minutes!]
		echo.
		copy /b nw.exe+package.nw nw.exe
		echo.
		echo --- Done --- 
		echo The package.nw file is now appended to the nw.exe file. 
		echo [It's now safe to delete the existing package.nw file!]
		timeout /T 60
	) else (
		echo --- Error ---
		echo [Cannot find package.nw file, make sure you run this inside the correct folder!]
		pause
	)	
) else (
	echo --- Error ---
	echo [Cannot find the nw.exe file, make sure you run this inside the correct folder!]
	pause
)