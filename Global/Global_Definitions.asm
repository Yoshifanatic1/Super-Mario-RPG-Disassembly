@includeonce
;Note: Do not modify the defines in this file! All but the framework function defines can be used for custom use.

; General defines.
!RAMBankMirrorStart = $000000
!RAMBankMirrorEnd = $002000
!RAMBank7EStart = $7E2000
!RAMBank7EEnd = $7F0000
!RAMBank7FStart = $7F0000
!RAMBank7FEnd = $800000
!ContextDependentTable = $000000
!Controller_SignatureBits = $000F
!FALSE = 0
!TRUE = 1

;!Define_Global_ROMSize defines (Not accurate values to what is stored in header. Refer to GetROMSize() for accurate values)
!ROMSize_32KB = $05
!ROMSize_64KB = $06
!ROMSize_128KB = $07
!ROMSize_256KB = $08
!ROMSize_512KB = $09
!ROMSize_1MB = $0A
!ROMSize_1_5MB = $0B
!ROMSize_2MB = $0C
!ROMSize_2_5MB = $0D
!ROMSize_3MB = $0E
!ROMSize_3_5MB = $0F
!ROMSize_4MB = $10
!ROMSize_5MB = $11
!ROMSize_6MB = $12
!ROMSize_8MB = $13

;!Define_Global_SRAMSize defines
!SRAMSize_0KB = $00
!SRAMSize_2KB = $01
!SRAMSize_4KB = $02
!SRAMSize_8KB = $03
!SRAMSize_16KB = $04
!SRAMSize_32KB = $05
!SRAMSize_64KB = $06
!SRAMSize_128KB = $07
!SRAMSize_256KB = $08

;!Define_Global_Region defines
!Region_Japan = $00
!Region_NorthAmerica = $01
!Region_Europe = $02
!Region_Scandinavia = $03
!Region_Finland = $04
!Region_Denmark = $05
!Region_French = $06
!Region_Holland = $07
!Region_Spanish = $08
!Region_German = $09
!Region_Italian = $0A
!Region_Chinese = $0B
!Region_Indonesia = $0C
!Region_Korean = $0D
!Region_Common = $0E
!Region_Canada = $0F
!Region_Brazil = $10
!Region_Australia = $11
!Region_Other1 = $12
!Region_Other2 = $13
!Region_Other3 = $14

;!Define_Global_ROMLayout defines (Not accurate values to what is stored in header. Refer to a memory map file for the correct value of that memory map)
!ROMLayout_LoROM = $00
!ROMLayout_HiROM = $01
!ROMLayout_SDD1ROM = $02
!ROMLayout_SA1_LoROM = $03
!ROMLayout_SA1_HiROM = $04
!ROMLayout_SuperFXROM = $05
!ROMLayout_LoROM_FastROM = $06
!ROMLayout_HiROM_FastROM = $07
!ROMLayout_ExLoROM = $08
!ROMLayout_ExHiROM = $09
!ROMLayout_SPC7110ROM = $0A

;!Define_Global_ROMType defines
!ROMType_ROM = $00
!ROMType_ROM_RAM = $01
!ROMType_ROM_RAM_SRAM = $02
!ROMType_ROM_Chip = $03
!ROMType_ROM_RAM_Chip = $04
!ROMType_ROM_RAM_SRAM_Chip = $05
!ROMType_ROM_SRAM_Chip = $06
!ROMType_ROM_SRAM_Chip = $06

;!Define_Global_CustomChip defines (Not accurate values to what is stored in header. Refer to GetChipData() to see how the specified chip changes !Define_Global_ROMType's value)
!Chip_None = $00
!Chip_DSP1 = $01
!Chip_DSP1A = $02
!Chip_DSP1B = $03
!Chip_DSP2 = $04
!Chip_DSP3 = $05
!Chip_DSP4 = $06
!Chip_SA1 = $07
!Chip_SuperFX1 = $08
!Chip_SuperFX2 = $09
!Chip_OBC1 = $0A
!Chip_SDD1 = $0B
!Chip_Cx4 = $0C
!Chip_SPC7110 = $0D
!Chip_ST010 = $0E
!Chip_ST011 = $0F
!Chip_ST018 = $10
!Chip_SRTC = $11
!Chip_SuperGameboy = $12
!Chip_Satellaview = $13
!Chip_MSU1 = $80			; Note: This chip can be used alongside any of the others. Just add put "|!Chip_MSU1" after what you put in !Define_Global_Hack_CustomChip.

; Supported Controller defines
!Controller_None = $000000
!Controller_StandardJoypad = $000001
!Controller_Mouse = $000002
!Controller_SuperScope = $000004
!Controller_MultiTap = $000008
!Controller_KonamiJustifierLightgun = $000010
!Controller_MACSLightgun = $000020
!Controller_TwinTap = $000040
!Controller_MiraclePiano = $000080
!Controller_NTTDataPad = $000100
!Controller_XBandKeyboard = $000200
!Controller_MotionSensor = $000400
!Controller_Laserbirdie = $000800
!Controller_ExertainmentBike = $001000
!Controller_Pachinko = $002000
!Controller_TurboFile = $004000
!Controller_BarcodeBattler = $008000
!Controller_SFCModem = $010000
!Controller_VoiceKun = $020000

;!Define_Global_Hack_ExpansionFlashSize/!Define_Global_ExpansionRAMSize defines
!ExpansionMemorySize_0KB = $00
!ExpansionMemorySize_2KB = $01
!ExpansionMemorySize_4KB = $02
!ExpansionMemorySize_8KB = $03
!ExpansionMemorySize_16KB = $04
!ExpansionMemorySize_32KB = $05
!ExpansionMemorySize_64KB = $06

; Framework function defines
; These are used by the disassembly framework for certain functions. Not meant for custom use.
!FrameworkVer = 1
!FrameworkSubVer = 0
!FrameworkSubSubVer = 0
!NumOfInsertedSNESHeader = 0
!InBank = !FALSE
!CurrentBank = $00
!InRATSBlock = !FALSE
!LastRATSTagLabel = "Undefined RATS Label"
!InROMMirror = !FALSE
!InSuperFXHiROMMirror = !FALSE
!InLoROMBank = !TRUE
!ROMBankSplitFlag = !FALSE
!StartOfMirrorBanks = $00
!HackROMID = ""
!SetROMToAssembleForHackCalled = !FALSE
!SuperFXPointers = $00
!SuperFXBlockIndex = $00
!MaxSperFXPointers = $00
!FileType_InitializeROM = 0
!FileType_SNESROM = 1
!FileType_FinalizeROM = 2
!FileType_DisplayChecksum = 3
!FileType_SPC700File = 4
!FileType_SuperFXFile = 5
!FileType_FirmwareCopy = 6
!FileType_MSU1DataFile = 7
!FileType_SaveFile = 8
