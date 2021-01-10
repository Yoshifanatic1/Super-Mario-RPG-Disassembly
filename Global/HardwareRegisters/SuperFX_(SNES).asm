@includeonce
if !Define_Global_CustomChip&$7F == !Chip_SuperFX1
!ChipName = "SuperFX"
else
!ChipName = "SuperFX (Rev. 1)"
endif

!Firmware = "NULL"
!SRAMType = "ExpansionRAM"

!REGISTER_SuperFX_R0_DefaultSourceOrDestinationLo = $003000
!REGISTER_SuperFX_R0_DefaultSourceOrDestinationHi = $003001
!REGISTER_SuperFX_R1_PLOTXCoordinateLo = $003002
!REGISTER_SuperFX_R1_PLOTXCoordinateHi = $003003
!REGISTER_SuperFX_R2_PLOTYCoordinateLo = $003004
!REGISTER_SuperFX_R2_PLOTYCoordinateHi = $003005
!REGISTER_SuperFX_R3_GeneralPurposeLo = $003006
!REGISTER_SuperFX_R3_GeneralPurposeHi = $003007
!REGISTER_SuperFX_R4_LMULTResultLo = $003008
!REGISTER_SuperFX_R4_LMULTResultHi = $003009
!REGISTER_SuperFX_R5_GeneralPurpose2Lo = $00300A
!REGISTER_SuperFX_R5_GeneralPurpose2Hi = $00300B
!REGISTER_SuperFX_R6_MultiplierLo = $00300C
!REGISTER_SuperFX_R6_MultiplierHi = $00300D
!REGISTER_SuperFX_R7_MERGEXPosLo = $00300E
!REGISTER_SuperFX_R7_MERGEXPosHi = $00300F
!REGISTER_SuperFX_R8_MERGEYPosLo = $003010
!REGISTER_SuperFX_R8_MERGEYPosHi = $003011
!REGISTER_SuperFX_R9_GeneralPurpose3Lo = $003012
!REGISTER_SuperFX_R9_GeneralPurpose3Hi = $003013
!REGISTER_SuperFX_R10_GeneralPurpose4Lo = $003014
!REGISTER_SuperFX_R10_GeneralPurpose4Hi = $003015
!REGISTER_SuperFX_R11_LINKDestinationLo = $003016
!REGISTER_SuperFX_R11_LINKDestinationHi = $003017
!REGISTER_SuperFX_R12_LOOPCounterLo = $003018
!REGISTER_SuperFX_R12_LOOPCounterHi = $003019
!REGISTER_SuperFX_R13_LOOPAddressLo = $00301A
!REGISTER_SuperFX_R13_LOOPAddressHi = $00301B
!REGISTER_SuperFX_R14_GETGamePakROMAddressPtrLo = $00301C
!REGISTER_SuperFX_R14_GETGamePakROMAddressPtrHi = $00301D
!REGISTER_SuperFX_R15_ProgramCounterLo = $00301E
!REGISTER_SuperFX_R15_ProgramCounterHi = $00301F
!REGISTER_SuperFX_StatusFlagsLo = $003030
	!SuperFX_StatusFlags_ZeroFlag = $0002
	!SuperFX_StatusFlags_CarryFlag = $0004
	!SuperFX_StatusFlags_SignFlag = $0008
	!SuperFX_StatusFlags_OverflowFlag = $0010
	!SuperFX_StatusFlags_GoFlag = $0020
	!SuperFX_StatusFlags_ROMReadR14Flag = $0040
!REGISTER_SuperFX_StatusFlagsHi = $003031
	!SuperFX_StatusFlags_ALT1Flag = $0100
	!SuperFX_StatusFlags_ALT2Flag = $0200
	!SuperFX_StatusFlags_ConstantLoByteFlag = $0400
	!SuperFX_StatusFlags_ConstantHiByteFlag = $0800
	!SuperFX_StatusFlags_WITHFlag = $1000
	!SuperFX_StatusFlags_IRQFlag = $0800
!REGISTER_SuperFX_BackupRAMRegister = $003033
	!SuperFX_BackupRAMRegister_DisableBRAMWrite = $00
	!SuperFX_BackupRAMRegister_EnableBRAMWrite = $01
!REGISTER_SuperFX_ProgramBankRegister = $003034
!REGISTER_SuperFX_GamePakROMRegister = $003036
!REGISTER_SuperFX_ConfigRegister = $003037
	!SuperFX_ConfigRegister_HighSpeedFlag = $20
	!SuperFX_ConfigRegister_NormalIRQ = $00
	!SuperFX_ConfigRegister_MaskedIRQ = $80
!REGISTER_SuperFX_ScreenBase = $003038
!REGISTER_SuperFX_ClockSelect = $003039
	!SuperFX_ClockSelect_10MHz = $00
	!SuperFX_ClockSelect_20MHz = $01
!REGISTER_SuperFX_ScreenMode = $00303A
	!SuperFX_ScreenMode_ScreenHeight_128pixels = $00
	!SuperFX_ScreenMode_ScreenHeight_160pixels = $01
	!SuperFX_ScreenMode_ScreenHeight_192pixels = $02
	!SuperFX_ScreenMode_ScreenHeight_ObjectMode = $03
	!SuperFX_ScreenMode_ColorMode_4Colors = $00
	!SuperFX_ScreenMode_ColorMode_16Colors = $04
	!SuperFX_ScreenMode_ColorMode_Unused = $20
	!SuperFX_ScreenMode_ColorMode_256Collors = $24
	!SuperFX_ScreenMode_SNESasWRAMAccess = $00
	!SuperFX_ScreenMode_SuperFXHasWRAMAccess = $08
	!SuperFX_ScreenMode_SNESasROMAccess = $00
	!SuperFX_ScreenMode_SuperFXHasROMAccess = $10
!REGISTER_SuperFX_VersionCode = $00303B
!REGISTER_SuperFX_GamePakRAMRegister = $00303C
	!SuperFX_GamePakRAMRegister_UseBank70 = $00
	!SuperFX_GamePakRAMRegister_UseBank71 = $01
!REGISTER_SuperFX_CacheBaseLo = $00303E
!REGISTER_SuperFX_CacheBaseHi = $00303F

!REGISTER_SuperFX_CacheRAM = $003100

;---------------------------------------------------------------------------

; SuperFX game assembly specific macros (SNES side)

macro EnableSuperFXHiROMMirroring(Address)
assert !InSuperFXHiROMMirror == !FALSE, "You've already set this bank to use HiROM mirroring!"
assert ($<Address><<16)&$400000 == $000000, "You can't use BeginSuperFXHiROMMirroring() inside of a HiROM bank!"
assert !Define_Global_ROMLayout == !ROMLayout_SuperFXROM, "BeginSuperFXHiROMMirroring() is only useable for ROMs that use the SuperFX memory map!"

!TEMP = (($<Address>/$02)<<16)|$400000

if !TEMP&$FE0000 == $01
	!TEMP #= !TEMP+$8000
endif

if !TEMP&$FE0000 == $7E0000
	error "This HandleROMMirroring() macro call points to a RAM bank!"
else
	!InSuperFXHiROMMirror = !TRUE
	org !TEMP
endif
endmacro

;---------------------------------------------------------------------------

macro InsertNextSuperFXCodeBlock(Address)
%InsertMacroAtXPosition(<Address>)
if getfilestatus("SuperFX/SuperFXCode.bin") == $00
	if filesize("SuperFX/SuperFXCode.bin") != $00
		if !SuperFXBlockIndex == $00
			!SuperFXBlockIndex #= readfile3("SuperFX/SuperFXCode.bin", $000000)
		endif
		
		!TEMP1 #= readfile3("SuperFX/SuperFXCode.bin", !SuperFXBlockIndex)
			!TEMP2 #= readfile3("SuperFX/SuperFXCode.bin", !SuperFXBlockIndex+$03)
		incbin SuperFX/SuperFXCode.bin:(!TEMP1)-(!TEMP2)
		if !TEMP1 != $00
			!SuperFXBlockIndex #= readfile3("SuperFX/SuperFXCode.bin", !SuperFXBlockIndex+$03)
		endif
	endif
endif
endmacro

;---------------------------------------------------------------------------

macro SetNextSuperFXCodePointer(Label)
if getfilestatus("SuperFX/SuperFXCode.bin") == $00
	if filesize("SuperFX/SuperFXCode.bin") != $00
		if !SuperFXPointers == $00
			!MaxSperFXPointers #= readfile3("SuperFX/SuperFXCode.bin", $000000)
			!SuperFXPointers #= !SuperFXPointers+$03
		endif
	
		if !SuperFXPointers < !MaxSperFXPointers
			<Label> = readfile3("SuperFX/SuperFXCode.bin", !SuperFXPointers)
		else
			error "The SuperFX code pointer table is smaller than the number of labels you're trying to set!"
		endif
	
		!SuperFXPointers #= !SuperFXPointers+$03
	else
		<Label> = $000000
	endif
else
	<Label> = $000000
endif
endmacro

;---------------------------------------------------------------------------
