@echo off

set PATH="../Global"
set Input1=
set asarVer=asar
set GAMDID="JP"
set ROMVer=
set ROMExt=.sfc
set HackCheck=""
set HackName=""

setlocal EnableDelayedExpansion

echo Enter the ROM version you want to assemble.
echo Valid options: "JP_U1" "JP_U2" "JP_E" "JP_S" "JP_F" "JP_G" "JP_I" "JP_J"
echo For custom ROM versions, use "HACK_<HackName>, where <HackName> is the rest of the custom ROM Map file's name before the extension."

:Input
set /p Input1="%Input1%"
set HackCheck=%Input1:~0,5%
if "%Input1%" equ "" goto :Exit
if "%HackCheck%" equ "HACK_" goto :Hack
if "%Input1%" equ "JP_U1" goto :USA1
if "%Input1%" equ "JP_U2" goto :USA2
if "%Input1%" equ "JP_E" goto :PAL
if "%Input1%" equ "JP_S" goto :Spain
if "%Input1%" equ "JP_F" goto :French
if "%Input1%" equ "JP_G" goto :Germany
if "%Input1%" equ "JP_I" goto :Italy
if "%Input1%" equ "JP_J" goto :Japan

echo. "%Input1%" is not a valid ROM version.
set Input1=
goto :Input

:Hack
set ROMNAME=%Input1:~0,100%
set ROMVer=(Hack)
goto :Assemble

:USA1
set ROMVer=(U)
set ROMNAME=Jurassic Park
goto :Assemble

:USA2
set ROMVer=(U) (Rev.1)
set ROMNAME=Jurassic Park
goto :Assemble

:PAL
set ROMVer=(E)
set ROMNAME=Jurassic Park
goto :Assemble

:Spain
set ROMVer=(S)
set ROMNAME=Jurassic Park
goto :Assemble

:French
set ROMVer=(F)
set ROMNAME=Jurassic Park
goto :Assemble

:Germany
set ROMVer=(G)
set ROMNAME=Jurassic Park
goto :Assemble

:Italy
set ROMVer=(I)
set ROMNAME=Jurassic Park
goto :Assemble

:Japan
set ROMVer=(J)
set ROMNAME=Jurassic Park

:Assemble

set output="%ROMNAME% %ROMVer%%ROMExt%"

if exist %output% del %output%
echo Assembling "%ROMNAME% %ROMVer%%ROMExt%" ... this may take a minute.
echo.

%asarVer% --fix-checksum=on --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=0 ..\Global\AssembleFile.asm %output%

echo Assembling %ROMNAME% SPC700 engine...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/Engine.asm" ..\Global\AssembleFile.asm SPC700\Engine.bin

echo Assembling InitializeSPC700 block
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/InitializeSPC700.asm" ..\Global\AssembleFile.asm SPC700\InitializeSPC700.bin

echo Assembling Alan Sample Bank...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/AlanSamples.asm" ..\Global\AssembleFile.asm SPC700\AlanSamples.bin

echo Assembling Bone Crunch Sample Bank...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/BoneCrunchSamples.asm" ..\Global\AssembleFile.asm SPC700\BoneCrunchSamples.bin

echo Assembling Grant Sample Bank...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/GrantSamples.asm" ..\Global\AssembleFile.asm SPC700\GrantSamples.bin

echo Assembling Helicopter Sample Bank...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/HelicopterSamples.asm" ..\Global\AssembleFile.asm SPC700\HelicopterSamples.bin

echo Assembling Mr DNA Sample Bank...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/MrDNAChatterSamples.asm" ..\Global\AssembleFile.asm SPC700\MrDNAChatterSamples.bin

echo Assembling Mr Grant Sample Bank...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/MrGrantSamples.asm" ..\Global\AssembleFile.asm SPC700\MrGrantSamples.bin

echo Assembling Raptor Sample Bank...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/RaptorSamples.asm" ..\Global\AssembleFile.asm SPC700\RaptorSamples.bin

echo Assembling T-Rex Roar Sample Bank...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/TRexRoarSamples.asm" ..\Global\AssembleFile.asm SPC700\TRexRoarSamples.bin

echo Assembling Unknown Sample Bank...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/UnknownSamples.asm" ..\Global\AssembleFile.asm SPC700\UnknownSamples.bin

echo Assembling Water Splash Sample Bank...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/WaterSplashSamples.asm" ..\Global\AssembleFile.asm SPC700\WaterSplashSamples.bin

echo Assembling Welcome To Jurassic Park Sample Bank...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/WelcomeToJurassicParkSamples.asm" ..\Global\AssembleFile.asm SPC700\WelcomeToJurassicParkSamples.bin

echo Assembling ROM...
%asarVer% --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=1 ..\Global\AssembleFile.asm %output%

if exist ..\%GAMDID%\Temp.txt del ..\%GAMDID%\Temp.txt
%asarVer% --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=6 ..\Global\AssembleFile.asm Temp.txt
for /f "delims=" %%x in (Temp.txt) do set Firmware=%%x
if "%Firmware%" equ "NULL" goto :NoFirmware
if exist %Firmware% goto :NoFirmware
if exist ..\Firmware\%Firmware% goto :CopyFirmware
goto :NoFirmware

:CopyFirmware
echo Copied %Firmware% to the disassembly folder
copy ..\Firmware\%Firmware% %Firmware%
:NoFirmware
if exist ..\%GAMDID%\Temp.txt del ..\%GAMDID%\Temp.txt

%asarVer% --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=2 ..\Global\AssembleFile.asm %output%

%asarVer% --fix-checksum=off --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=3 ..\Global\AssembleFile.asm %output%

echo Cleaning up...
if exist ..\%GAMDID%\SPC700\Engine.bin del ..\%GAMDID%\SPC700\Engine.bin
if exist ..\%GAMDID%\SPC700\InitializeSPC700.bin del ..\%GAMDID%\SPC700\InitializeSPC700.bin
if exist ..\%GAMDID%\SPC700\AlanSamples.bin del ..\%GAMDID%\SPC700\AlanSamples.bin
if exist ..\%GAMDID%\SPC700\BoneCrunchSamples.bin del ..\%GAMDID%\SPC700\BoneCrunchSamples.bin
if exist ..\%GAMDID%\SPC700\GrantSamples.bin del ..\%GAMDID%\SPC700\GrantSamples.bin
if exist ..\%GAMDID%\SPC700\HelicopterSamples.bin del ..\%GAMDID%\SPC700\HelicopterSamples.bin
if exist ..\%GAMDID%\SPC700\MrDNAChatterSamples.bin del ..\%GAMDID%\SPC700\MrDNAChatterSamples.bin
if exist ..\%GAMDID%\SPC700\MrGrantSamples.bin del ..\%GAMDID%\SPC700\MrGrantSamples.bin
if exist ..\%GAMDID%\SPC700\RaptorSamples.bin del ..\%GAMDID%\SPC700\RaptorSamples.bin
if exist ..\%GAMDID%\SPC700\TRexRoarSamples.bin del ..\%GAMDID%\SPC700\TRexRoarSamples.bin
if exist ..\%GAMDID%\SPC700\UnknownSamples.bin del ..\%GAMDID%\SPC700\UnknownSamples.bin
if exist ..\%GAMDID%\SPC700\WaterSplashSamples.bin del ..\%GAMDID%\SPC700\WaterSplashSamples.bin
if exist ..\%GAMDID%\SPC700\WelcomeToJurassicParkSamples.bin del ..\%GAMDID%\SPC700\WelcomeToJurassicParkSamples.bin

echo.
echo Done^^!
echo.
echo Press Enter to re-assemble the chosen ROM.
goto :Input

:Exit
exit
