@asar 1.71
incsrc "../Global/Global_Definitions.asm"
incsrc "../Global/Global_Macros.asm"

if !FileType == !FileType_InitializeROM
	!PathToFile = ""
	%InitializeROM(!GameID, !GameID, !ROMID)
elseif !FileType == !FileType_SNESROM
	!PathToFile = ""
	%StartOfROM(!GameID, !GameID, !ROMID)
	%EndofROM(!GameID, !GameID, !ROMID)
elseif !FileType == !FileType_FinalizeROM
	!PathToFile = ""
	%FinalizeROM(!GameID, !GameID, !ROMID)
elseif !FileType == !FileType_DisplayChecksum
	!PathToFile = ""
	%DisplayFinalChecksum(!GameID, !GameID, !ROMID)
elseif !FileType == !FileType_SPC700File
	%InitializeSPCROM(!GameID, !GameID, !ROMID)
elseif !FileType == !FileType_SuperFXFile
	%InitializeSuperFXROM(!GameID, !GameID, !ROMID)
elseif !FileType == !FileType_FirmwareCopy
	!PathToFile = ""
	%GetFirmwareFile(!GameID, !GameID, !ROMID)
elseif !FileType == !FileType_MSU1DataFile
	%InitializeMSU1ROM(!GameID, !GameID, !ROMID)
elseif !FileType == !FileType_SaveFile
	%GenerateSaveFile(!GameID, !GameID, !ROMID)
else
	error "Invalid \!FileType parameter"
endif