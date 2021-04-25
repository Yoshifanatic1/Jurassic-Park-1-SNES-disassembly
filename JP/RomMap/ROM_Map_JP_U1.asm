
macro JP_GameSpecificAssemblySettings()
	!ROM_JP_U1 = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_JP_U2 = $0002							;|
	!ROM_JP_E = $0004							;|
	!ROM_JP_S = $0008							;|
	!ROM_JP_F = $0010							;|
	!ROM_JP_G = $0020							;|
	!ROM_JP_I = $0040							;|
	!ROM_JP_J = $0080							;/

	%SetROMToAssembleForHack(JP_U1, !ROMID)
endmacro

macro JP_LoadGameSpecificMainSNESFiles()
	incsrc ../Misc_Defines_JP.asm
	incsrc ../RAM_Map_JP.asm
	incsrc ../Routine_Macros_JP.asm
	incsrc ../SNES_Macros_JP.asm
endmacro

macro JP_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_JP.asm
	incsrc ../Misc_Defines_JP.asm
	incsrc ../SPC700/SPC700_Macros_JP.asm
endmacro

macro JP_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro JP_LoadGameSpecificMSU1Files()
endmacro

macro JP_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad|!Controller_Mouse
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $00
	!Define_Global_FixIncorrectChecksumHack = !FALSE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 0
	!Define_Global_ROMFrameworkSubSubVer = 1
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "Ocean Software"
	!Define_Global_DeveloperName = "Ocean of America"
	!Define_Global_ReleaseDate = "November 1993"
	!Define_Global_BaseROMMD5Hash = "bb9c2f667ced16a2e605b385c041c744"

;Cartridge header contents.
	!Define_Global_MakerCode = "67"
	!Define_Global_GameCode = "JP  "
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "JURASSIC PARK        "
	!Define_Global_ROMLayout = !ROMLayout_LoROM_FastROM
	!Define_Global_ROMType = !ROMType_ROM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize = !ROMSize_2MB
	!Define_Global_SRAMSize = !SRAMSize_0KB
	!Define_Global_Region = !Region_NorthAmerica
	!Define_Global_LicenseeID = $67
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $1CA4
	!UnusedNativeModeVector1 = $0000
	!UnusedNativeModeVector2 = $0000
	!NativeModeCOPVector = $0000
	!NativeModeBRKVector = CODE_80FEA5
	!NativeModeAbortVector = $0000
	!NativeModeNMIVector = CODE_80FEA9
	!NativeModeResetVector = CODE_808000
	!NativeModeIRQVector = CODE_80FEAC
	!UnusedEmulationModeVector1 = $FBFF
	!UnusedEmulationModeVector2 = $BAEF
	!EmulationModeCOPVector = $0000
	!EmulationModeBRKVector = CODE_80FEA5
	!EmulationModeAbortVector = $0000
	!EmulationModeNMIVector = CODE_80FEA9
	!EmulationModeResetVector = CODE_808000
	!EmulationModeIRQVector = CODE_80FEAC
endmacro

macro JP_LoadROMMap()
	%JPBank80Macros(!BANK_00, !BANK_00)
	%JPBank81Macros(!BANK_01, !BANK_01)
	%JPBank82Macros(!BANK_02, !BANK_02)
	%JPBank83Macros(!BANK_03, !BANK_03)
	%JPBank84Macros(!BANK_04, !BANK_04)
	%JPBank85Macros(!BANK_05, !BANK_05)
	%JPBank86Macros(!BANK_06, !BANK_06)
	%JPBank87Macros(!BANK_07, !BANK_07)
	%JPBank88Macros(!BANK_08, !BANK_08)
	%JPBank89Macros(!BANK_09, !BANK_09)
	%JPBank8AMacros(!BANK_0A, !BANK_0A)
	%JPBank8BMacros(!BANK_0B, !BANK_0B)
	%JPBank8CMacros(!BANK_0C, !BANK_0C)
	%JPBank8DMacros(!BANK_0D, !BANK_0D)
	%JPBank8EMacros(!BANK_0E, !BANK_0E)
	%JPBank8FMacros(!BANK_0F, !BANK_0F)
	%JPBank90Macros(!BANK_10, !BANK_10)
	%JPBank91Macros(!BANK_11, !BANK_11)
	%JPBank92Macros(!BANK_12, !BANK_12)
	%JPBank93Macros(!BANK_13, !BANK_13)
	%JPBank94Macros(!BANK_14, !BANK_14)
	%JPBank95Macros(!BANK_15, !BANK_15)
	%JPBank96Macros(!BANK_16, !BANK_16)
	%JPBank97Macros(!BANK_17, !BANK_17)
	%JPBank98Macros(!BANK_18, !BANK_18)
	%JPBank99Macros(!BANK_19, !BANK_19)
	%JPBank9AMacros(!BANK_1A, !BANK_1A)
	%JPBank9BMacros(!BANK_1B, !BANK_1B)
	%JPBank9CMacros(!BANK_1C, !BANK_1C)
	%JPBank9DMacros(!BANK_1D, !BANK_1D)
	%JPBank9EMacros(!BANK_1E, !BANK_1E)
	%JPBank9FMacros(!BANK_1F, !BANK_1F)
	%JPBankA0Macros(!BANK_20, !BANK_20)
	%JPBankA1Macros(!BANK_21, !BANK_21)
	%JPBankA2Macros(!BANK_22, !BANK_22)
	%JPBankA3Macros(!BANK_23, !BANK_23)
	%JPBankA4Macros(!BANK_24, !BANK_24)
	%JPBankA5Macros(!BANK_25, !BANK_25)
	%JPBankA6Macros(!BANK_26, !BANK_26)
	%JPBankA7Macros(!BANK_27, !BANK_27)
	%JPBankA8Macros(!BANK_28, !BANK_28)
	%JPBankA9Macros(!BANK_29, !BANK_29)
	%JPBankAAMacros(!BANK_2A, !BANK_2A)
	%JPBankABMacros(!BANK_2B, !BANK_2B)
	%JPBankACMacros(!BANK_2C, !BANK_2C)
	%JPBankADMacros(!BANK_2D, !BANK_2D)
	%JPBankAEMacros(!BANK_2E, !BANK_2E)
	%JPBankAFMacros(!BANK_2F, !BANK_2F)
	%JPBankB0Macros(!BANK_30, !BANK_30)
	%JPBankB1Macros(!BANK_31, !BANK_31)
	%JPBankB2Macros(!BANK_32, !BANK_32)
	%JPBankB3Macros(!BANK_33, !BANK_33)
	%JPBankB4Macros(!BANK_34, !BANK_34)
	%JPBankB5Macros(!BANK_35, !BANK_35)
	%JPBankB6Macros(!BANK_36, !BANK_36)
	%JPBankB7Macros(!BANK_37, !BANK_37)
	%JPBankB8Macros(!BANK_38, !BANK_38)
	%JPBankB9Macros(!BANK_39, !BANK_39)
	%JPBankBAMacros(!BANK_3A, !BANK_3A)
	%JPBankBBMacros(!BANK_3B, !BANK_3B)
	%JPBankBCMacros(!BANK_3C, !BANK_3C)
	%JPBankBDMacros(!BANK_3D, !BANK_3D)
	%JPBankBEMacros(!BANK_3E, !BANK_3E)
	%JPBankBFMacros(!BANK_3F, !BANK_3F)
endmacro
