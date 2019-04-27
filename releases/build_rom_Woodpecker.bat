@echo off

set    zip=woodpeck.zip
set ifiles=f.bin+f.bin+f.bin+f.bin+i.bin+e.bin+g.bin+h.bin+a.5e+c.5h+b.5f+d.5j+d.5j+a.5e+c.5h+b.5f+d.5j+d.5j+pr.1k+pr.4a+pr.3k+pr.8h

set  ofile=a.wdpckr.rom

rem =====================================
setlocal ENABLEDELAYEDEXPANSION

set pwd=%~dp0
echo.
echo.

if EXIST %zip% (

	!pwd!7za x -otmp %zip%
	if !ERRORLEVEL! EQU 0 ( 
		cd tmp

		copy /b/y %ifiles% !pwd!%ofile%
		if !ERRORLEVEL! EQU 0 ( 
			echo.
			echo ** done **
			echo.
			echo Copy "%ofile%" into root of SD card
		)
		cd !pwd!
		rmdir /s /q tmp
	)

) else (

	echo Error: Cannot find "%zip%" file
	echo.
	echo Put "%zip%", "7za.exe" and "%~nx0" into the same directory
)

echo.
echo.
pause
