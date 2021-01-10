
macro SMRPG_GameSpecificAssemblySettings()
	!ROM_SMRPG_U = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_SMRPG_J = $0002							;/

!Define_SMRPG_Global_EnableDebugFunctions = !FALSE

	%SetROMToAssembleForHack(SMRPG_U, !ROMID)
endmacro

macro SMRPG_LoadGameSpecificMainSNESFiles()
	incsrc ../Misc_Defines_SMRPG.asm
	incsrc ../RAM_Map_SMRPG.asm
	incsrc ../Routine_Macros_SMRPG.asm
	incsrc ../SNES_Macros_SMRPG.asm
endmacro

macro SMRPG_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_SMRPG.asm
	incsrc ../Misc_Defines_SMRPG.asm
	incsrc ../SPC700/SPC700_Macros_SMRPG.asm
endmacro

macro SMRPG_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro SMRPG_LoadGameSpecificMSU1Files()
endmacro

macro SMRPG_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $02
	!Define_Global_FixIncorrectChecksumHack = !FALSE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 0
	!Define_Global_ROMFrameworkSubSubVer = 0
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "Nintendo"
	!Define_Global_DeveloperName = "Square"
	!Define_Global_ReleaseDate = "May 13, 1996"
	!Define_Global_BaseROMMD5Hash = "d0b68d68d9efc0558242f5476d1c5b81"

	!Define_Global_MakerCode = "01"
	!Define_Global_GameCode = "ARWE"
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "SUPER MARIO RPG      "
	!Define_Global_ROMLayout = !ROMLayout_SA1_HiROM
	!Define_Global_ROMType = !ROMType_ROM_RAM_SRAM_Chip
	!Define_Global_CustomChip = !Chip_SA1
	!Define_Global_ROMSize = !ROMSize_4MB
	!Define_Global_SRAMSize = !SRAMSize_32KB
	!Define_Global_Region = !Region_NorthAmerica
	!Define_Global_LicenseeID = $33
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $3BB4
	!UnusedNativeModeVector1 = $0000
	!UnusedNativeModeVector2 = $0000
	!NativeModeCOPVector = CODE_C002BE|$008000
	!NativeModeBRKVector = CODE_C002BE|$008000
	!NativeModeAbortVector = CODE_C002BE|$008000
	!NativeModeNMIVector = $0008
	!NativeModeResetVector = CODE_C002BE|$008000
	!NativeModeIRQVector = $000C
	!UnusedEmulationModeVector1 = $0000
	!UnusedEmulationModeVector2 = $0000
	!EmulationModeCOPVector = CODE_C002BE|$008000
	!EmulationModeBRKVector = CODE_C002BE|$008000
	!EmulationModeAbortVector = CODE_C002BE|$008000
	!EmulationModeNMIVector = $0008
	!EmulationModeResetVector = CODE_C07F90|$008000
	!EmulationModeIRQVector = $000C
	%LoadExtraRAMFile("BWRAM_Map_SMRPG.asm")
endmacro

macro SMRPG_LoadROMMap()
	%SMRPGBankC0Macros(!BANK_00, !BANK_00)
	%SMRPGBankC1Macros(!BANK_01, !BANK_01)
	%SMRPGBankC2Macros(!BANK_02, !BANK_02)
	%SMRPGBankC3Macros(!BANK_03, !BANK_03)
	%SMRPGBankC4Macros(!BANK_04, !BANK_04)
	%SMRPGBankC5Macros(!BANK_05, !BANK_05)
	%SMRPGBankC6Macros(!BANK_06, !BANK_06)
	%SMRPGBankC7Macros(!BANK_07, !BANK_07)
	%SMRPGBankC8Macros(!BANK_08, !BANK_08)
	%SMRPGBankC9Macros(!BANK_09, !BANK_09)
	%SMRPGBankCAMacros(!BANK_0A, !BANK_0A)
	%SMRPGBankCBMacros(!BANK_0B, !BANK_0B)
	%SMRPGBankCCMacros(!BANK_0C, !BANK_0C)
	%SMRPGBankCDMacros(!BANK_0D, !BANK_0D)
	%SMRPGBankCEMacros(!BANK_0E, !BANK_0E)
	%SMRPGBankCFMacros(!BANK_0F, !BANK_0F)
	%SMRPGBankD0Macros(!BANK_10, !BANK_10)
	%SMRPGBankD1Macros(!BANK_11, !BANK_11)
	%SMRPGBankD2Macros(!BANK_12, !BANK_12)
	%SMRPGBankD3Macros(!BANK_13, !BANK_13)
	%SMRPGBankD4Macros(!BANK_14, !BANK_14)
	%SMRPGBankD5Macros(!BANK_15, !BANK_15)
	%SMRPGBankD6Macros(!BANK_16, !BANK_16)
	%SMRPGBankD7Macros(!BANK_17, !BANK_17)
	%SMRPGBankD8Macros(!BANK_18, !BANK_18)
	%SMRPGBankD9Macros(!BANK_19, !BANK_19)
	%SMRPGBankDAMacros(!BANK_1A, !BANK_1A)
	%SMRPGBankDBMacros(!BANK_1B, !BANK_1B)
	%SMRPGBankDCMacros(!BANK_1C, !BANK_1C)
	%SMRPGBankDDMacros(!BANK_1D, !BANK_1D)
	%SMRPGBankDEMacros(!BANK_1E, !BANK_1E)
	%SMRPGBankDFMacros(!BANK_1F, !BANK_1F)
	%SMRPGBankE0Macros(!BANK_20, !BANK_20)
	%SMRPGBankE1Macros(!BANK_21, !BANK_21)
	%SMRPGBankE2Macros(!BANK_22, !BANK_22)
	%SMRPGBankE3Macros(!BANK_23, !BANK_23)
	%SMRPGBankE4Macros(!BANK_24, !BANK_24)
	%SMRPGBankE5Macros(!BANK_25, !BANK_25)
	%SMRPGBankE6Macros(!BANK_26, !BANK_26)
	%SMRPGBankE7Macros(!BANK_27, !BANK_27)
	%SMRPGBankE8Macros(!BANK_28, !BANK_28)
	%SMRPGBankE9Macros(!BANK_29, !BANK_29)
	%SMRPGBankEAMacros(!BANK_2A, !BANK_2A)
	%SMRPGBankEBMacros(!BANK_2B, !BANK_2B)
	%SMRPGBankECMacros(!BANK_2C, !BANK_2C)
	%SMRPGBankEDMacros(!BANK_2D, !BANK_2D)
	%SMRPGBankEEMacros(!BANK_2E, !BANK_2E)
	%SMRPGBankEFMacros(!BANK_2F, !BANK_2F)
	%SMRPGBankF0Macros(!BANK_30, !BANK_30)
	%SMRPGBankF1Macros(!BANK_31, !BANK_31)
	%SMRPGBankF2Macros(!BANK_32, !BANK_32)
	%SMRPGBankF3Macros(!BANK_33, !BANK_33)
	%SMRPGBankF4Macros(!BANK_34, !BANK_34)
	%SMRPGBankF5Macros(!BANK_35, !BANK_35)
	%SMRPGBankF6Macros(!BANK_36, !BANK_36)
	%SMRPGBankF7Macros(!BANK_37, !BANK_37)
	%SMRPGBankF8Macros(!BANK_38, !BANK_38)
	%SMRPGBankF9Macros(!BANK_39, !BANK_39)
	%SMRPGBankFAMacros(!BANK_3A, !BANK_3A)
	%SMRPGBankFBMacros(!BANK_3B, !BANK_3B)
	%SMRPGBankFCMacros(!BANK_3C, !BANK_3C)
	%SMRPGBankFDMacros(!BANK_3D, !BANK_3D)
	%SMRPGBankFEMacros(!BANK_3E, !BANK_3E)
	%SMRPGBankFFMacros(!BANK_3F, !BANK_3F)
endmacro
