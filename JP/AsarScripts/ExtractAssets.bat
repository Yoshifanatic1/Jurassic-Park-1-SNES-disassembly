@echo off

set PATH="../../Global"
set Input1=
set ROMName=JP.sfc
set MemMap=lorom

setlocal EnableDelayedExpansion

echo To fully extract all files for supported ROMs, you'll need one of the following ROMs in each group:
echo - Graphics: JP (USA)
echo - Samples:  JP (USA)
echo - Music: JP (USA)
echo.

:Start
echo Place a headerless JP ROM named %ROMName% in this folder, then type the number representing what version %ROMName% is.
echo 0 = JP (USA)
echo 1 = JP (USA Rev. 1)
echo 2 = JP (PAL)
echo 3 = JP (Spain)
echo 4 = JP (French)
echo 5 = JP (Germany)
echo 6 = JP (Italy)
echo 7 = JP (Japan)

:Mode
set /p Input1=""
if exist %ROMName% goto :ROMExists

echo You need to place a JP ROM named %ROMName% in this folder before you can extract any assets^^!
goto :Mode

:ROMExists
if "%Input1%" equ "0" goto :USA1
if "%Input1%" equ "1" goto :USA2
if "%Input1%" equ "2" goto :PAL
if "%Input1%" equ "3" goto :Spain
if "%Input1%" equ "4" goto :French
if "%Input1%" equ "5" goto :Germany
if "%Input1%" equ "6" goto :Italy
if "%Input1%" equ "7" goto :Japan

echo %Input1% is not a valid mode.
goto :Mode

:USA1
set UGFXLoc="../Graphics"
set CGFXLoc="../Graphics/Compressed"
set UnknownDatLoc="../UnsortedData/Compressed"
set TextureLoc="../Textures"
set SPCDat="../SPC700"
set SFXBRRLoc="../SPC700/Samples/SFX"
set ROMBit=$0001
goto :BeginExtract

:USA2
echo The second USA version is not supported by the disassembly
goto :Mode

set UGFXLoc="../Graphics"
set CGFXLoc="../Graphics/Compressed"
set UnknownDatLoc="../UnsortedData/Compressed"
set TextureLoc="../Textures"
set SPCDat="../SPC700"
set SFXBRRLoc="../SPC700/Samples/SFX"
set ROMBit=$0002
goto :BeginExtract

:PAL
echo The PAL version is not supported by the disassembly
goto :Mode

set UGFXLoc="../Graphics"
set CGFXLoc="../Graphics/Compressed"
set UnknownDatLoc="../UnsortedData/Compressed"
set TextureLoc="../Textures"
set SPCDat="../SPC700"
set SFXBRRLoc="../SPC700/Samples/SFX"
set ROMBit=$0004
goto :BeginExtract

:Spain
echo The Spanish version is not supported by the disassembly
goto :Mode

set UGFXLoc="../Graphics"
set CGFXLoc="../Graphics/Compressed"
set UnknownDatLoc="../UnsortedData/Compressed"
set TextureLoc="../Textures"
set SPCDat="../SPC700"
set SFXBRRLoc="../SPC700/Samples/SFX"
set ROMBit=$0008
goto :BeginExtract

:French
echo The French version is not supported by the disassembly
goto :Mode

set UGFXLoc="../Graphics"
set CGFXLoc="../Graphics/Compressed"
set UnknownDatLoc="../UnsortedData/Compressed"
set TextureLoc="../Textures"
set SPCDat="../SPC700"
set SFXBRRLoc="../SPC700/Samples/SFX"
set ROMBit=$0010
goto :BeginExtract

:Germany
echo The German version is not supported by the disassembly
goto :Mode

set UGFXLoc="../Graphics"
set CGFXLoc="../Graphics/Compressed"
set UnknownDatLoc="../UnsortedData/Compressed"
set TextureLoc="../Textures"
set SPCDat="../SPC700"
set SFXBRRLoc="../SPC700/Samples/SFX"
set ROMBit=$0020
goto :BeginExtract

:Italy
echo The Italian version is not supported by the disassembly
goto :Mode

set UGFXLoc="../Graphics"
set CGFXLoc="../Graphics/Compressed"
set UnknownDatLoc="../UnsortedData/Compressed"
set TextureLoc="../Textures"
set SPCDat="../SPC700"
set SFXBRRLoc="../SPC700/Samples/SFX"
set ROMBit=$0040
goto :BeginExtract

:Japan
echo The Japanese version is not supported by the disassembly
goto :Mode

set UGFXLoc="../Graphics"
set CGFXLoc="../Graphics/Compressed"
set UnknownDatLoc="../UnsortedData/Compressed"
set TextureLoc="../Textures"
set SPCDat="../SPC700"
set SFXBRRLoc="../SPC700/Samples/SFX"
set ROMBit=$0080

goto :BeginExtract
:BeginExtract
set i=0
set PointerSet=0

echo Generating temporary ROM
asar --fix-checksum=off --no-title-check --define ROMVer="%ROMBit%" "AssetPointersAndFiles.asm" TEMP.sfc

CALL :GetLoopIndex
set MaxFileTypes=%Length%
set PointerSet=6

:GetNewLoopIndex
CALL :GetLoopIndex

:ExtractLoop
if %i% equ %Length% goto :NewFileType

CALL :GetGFXFileName
CALL :ExtractFile
set /a i = %i%+1
if exist TEMP1.asm del TEMP1.asm
if exist TEMP2.asm del TEMP2.asm
if exist TEMP3.txt del TEMP3.txt
goto :ExtractLoop

:NewFileType
echo Moving extracted files to appropriate locations
if %PointerSet% equ 6 goto :MoveUGFX
if %PointerSet% equ 12 goto :MoveCGFX
if %PointerSet% equ 18 goto :MoveUnknownDat
if %PointerSet% equ 24 goto :MoveTextures
if %PointerSet% equ 30 goto :MoveSPCDat
if %PointerSet% equ 36 goto :MoveSFXBRR
goto :MoveNothing

:MoveUGFX
move "*.bin" %UGFXLoc%
goto :MoveNothing

:MoveCGFX
CALL :MergeSplitGFX
move "*.bin" %CGFXLoc%
move "*.rnc" %CGFXLoc%
goto :MoveNothing

:MoveUnknownDat
move "*.rnc" %UnknownDatLoc%
goto :MoveNothing

:MoveTextures
move "*.bin" %TextureLoc%
goto :MoveNothing

:MoveSPCDat
move "*.bin" %SPCDat%
goto :MoveNothing

:MoveSFXBRR
move "*.brr" %SFXBRRLoc%
goto :MoveNothing

:MoveNothing
set i=0
set /a PointerSet = %PointerSet%+6
if %PointerSet% neq %MaxFileTypes% goto :GetNewLoopIndex
if exist TEMP.sfc del TEMP.sfc

echo Done^^!
goto :Start

EXIT /B %ERRORLEVEL% 

:ExtractFile
echo:%MemMap% >> TEMP1.asm
echo:org $008000 >> TEMP1.asm
echo:check bankcross off >> TEMP1.asm
echo:^^!OffsetStart #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($008000+%PointerSet%))+$00+(%i%*$0C)))) >> TEMP1.asm
echo:^^!OffsetEnd #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($008000+%PointerSet%))+$03+(%i%*$0C)))) >> TEMP1.asm
echo:incbin %ROMName%:(^^!OffsetStart)-(^^!OffsetEnd) >> TEMP1.asm

echo Extracting %FileName%
asar --fix-checksum=off --no-title-check "TEMP1.asm" %FileName%
EXIT /B 0

:GetGFXFileName
echo:%MemMap% >> TEMP2.asm
echo:org $008000 >> TEMP2.asm
echo:^^!FileNameStart #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($008000+%PointerSet%))+$06+(%i%*$0C)))) >> TEMP2.asm
echo:^^!FileNameEnd #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($008000+%PointerSet%))+$09+(%i%*$0C)))) >> TEMP2.asm
echo:incbin TEMP.sfc:(^^!FileNameStart)-(^^!FileNameEnd) >> TEMP2.asm
asar --fix-checksum=off --no-title-check "TEMP2.asm" TEMP3.txt

for /f "delims=" %%x in (TEMP3.txt) do set FileName=%%x

EXIT /B 0

:GetLoopIndex
echo:%MemMap% >> TEMP4.asm
echo:org $008000 >> TEMP4.asm
echo:^^!OnesDigit = 0 >> TEMP4.asm
echo:^^!TensDigit = 0 >> TEMP4.asm
echo:^^!HundredsDigit = 0 >> TEMP4.asm
echo:^^!ThousandsDigit = 0 >> TEMP4.asm
echo:^^!TensDigitSet = 0 >> TEMP4.asm
echo:^^!HundredsDigitSet = 0 >> TEMP4.asm
echo:^^!ThousandsDigitSet = 0 >> TEMP4.asm
echo:^^!Offset #= readfile3("TEMP.sfc", snestopc($008000+%PointerSet%+$03)) >> TEMP4.asm
echo:while ^^!Offset ^> 0 >> TEMP4.asm
::echo:print hex(^^!Offset) >> TEMP4.asm
echo:^^!OnesDigit #= ^^!OnesDigit+1 >> TEMP4.asm
echo:if ^^!OnesDigit == 10 >> TEMP4.asm
echo:^^!OnesDigit #= 0 >> TEMP4.asm
echo:^^!TensDigit #= ^^!TensDigit+1 >> TEMP4.asm
echo:^^!TensDigitSet #= 1 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!TensDigit == 10 >> TEMP4.asm
echo:^^!TensDigit #= 0 >> TEMP4.asm
echo:^^!HundredsDigit #= ^^!HundredsDigit+1 >> TEMP4.asm
echo:^^!HundredsDigitSet #= 1 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!HundredsDigit == 10 >> TEMP4.asm
echo:^^!HundredsDigit #= 0 >> TEMP4.asm
echo:^^!ThousandsDigit #= ^^!ThousandsDigit+1 >> TEMP4.asm
echo:^^!ThousandsDigitSet #= 1 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:^^!Offset #= ^^!Offset-1 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!ThousandsDigitSet == 1 >> TEMP4.asm
echo:db ^^!ThousandsDigit+$30 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!HundredsDigitSet == 1 >> TEMP4.asm
echo:db ^^!HundredsDigit+$30 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!TensDigitSet == 1 >> TEMP4.asm
echo:db ^^!TensDigit+$30 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:db ^^!OnesDigit+$30 >> TEMP4.asm
asar --fix-checksum=off --no-title-check "TEMP4.asm" TEMP5.txt

for /f "delims=" %%x in (TEMP5.txt) do set Length=%%x

if exist TEMP4.asm del TEMP4.asm
if exist TEMP5.txt del TEMP5.txt

EXIT /B 0

:MergeSplitGFX
if not exist "BG_ComputerTerminal.bin" goto :NoSplitGFX1
if not exist "BG_ComputerTerminal_02.bin" goto :NoSplitGFX1
if not exist "BG_ComputerTerminal_03.bin" goto :NoSplitGFX1
if not exist "BG_ComputerTerminal_04.bin" goto :NoSplitGFX1
if not exist "BG_ComputerTerminal_05.bin" goto :NoSplitGFX1
if not exist "BG_ComputerTerminal_06.bin" goto :NoSplitGFX1
echo: Merging BG_ComputerTerminal files

echo:%MemMap% >> TEMP1.asm
echo:^^!Offset #= filesize("BG_ComputerTerminal.bin") >> TEMP1.asm
echo:org $008000+^^!Offset >> TEMP1.asm
echo:incbin BG_ComputerTerminal_02.bin >> TEMP1.asm
echo:incbin BG_ComputerTerminal_03.bin >> TEMP1.asm
echo:incbin BG_ComputerTerminal_04.bin >> TEMP1.asm
echo:incbin BG_ComputerTerminal_05.bin >> TEMP1.asm
echo:incbin BG_ComputerTerminal_06.bin >> TEMP1.asm
asar --fix-checksum=off --no-title-check "TEMP1.asm" "BG_ComputerTerminal.bin"
if exist TEMP1.asm del TEMP1.asm
if exist BG_ComputerTerminal_02.bin del BG_ComputerTerminal_02.bin
if exist BG_ComputerTerminal_03.bin del BG_ComputerTerminal_03.bin
if exist BG_ComputerTerminal_04.bin del BG_ComputerTerminal_04.bin
if exist BG_ComputerTerminal_05.bin del BG_ComputerTerminal_05.bin
if exist BG_ComputerTerminal_06.bin del BG_ComputerTerminal_06.bin
:NoSplitGFX1

if not exist "Sprite_AlanGrantHand.bin" goto :NoSplitGFX2
if not exist "Sprite_AlanGrantHand_02.bin" goto :NoSplitGFX2
echo: Merging Sprite_AlanGrantHand.bin and Sprite_AlanGrantHand_02.bin

echo:%MemMap% >> TEMP1.asm
echo:^^!Offset #= filesize("Sprite_AlanGrantHand.bin") >> TEMP1.asm
echo:org $008000+^^!Offset >> TEMP1.asm
echo:incbin Sprite_AlanGrantHand_02.bin >> TEMP1.asm
asar --fix-checksum=off --no-title-check "TEMP1.asm" "Sprite_AlanGrantHand.bin"

if exist Sprite_AlanGrantHand_02.bin del Sprite_AlanGrantHand_02.bin
if exist TEMP1.asm del TEMP1.asm
:NoSplitGFX2

EXIT /B 0
