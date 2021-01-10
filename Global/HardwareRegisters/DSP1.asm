@includeonce
if !Define_Global_CustomChip&$7F == !Chip_DSP1
	!ChipName = "DSP-1A"
	!Firmware = "dsp1a.bin"
elseif !Define_Global_CustomChip&$7F == !Chip_DSP1A
	!ChipName = "DSP-1A"
	!Firmware = "dsp1a.bin"
else
	!ChipName = "DSP-1B"
	!Firmware = "dsp1b.bin"
endif

if !Define_Global_ROMLayout == !ROMLayout_LoROM
	if !Define_Global_ROMSize == !ROMSize_1MB
		!DSPRegAddr1 = $308000
		!DSPRegAddr2 = $30C000
	elseif !Define_Global_ROMSize == !ROMSize_2MB
		!DSPRegAddr1 = $600000
		!DSPRegAddr2 = $604000
	else
		error "The chosen ROM size is not supported by the DSP-1 chip."
	endif
elseif !Define_Global_ROMLayout == !ROMLayout_HiROM
	!DSPRegAddr1 = $006000
	!DSPRegAddr2 = $007000
elseif !Define_Global_ROMLayout == !ROMLayout_LoROM_FastROM
	if !Define_Global_ROMSize == !ROMSize_1MB
		!DSPRegAddr1 = $308000
		!DSPRegAddr2 = $30C000
	elseif !Define_Global_ROMSize == !ROMSize_2MB
		!DSPRegAddr1 = $600000
		!DSPRegAddr2 = $604000
	else
		error "The chosen ROM size is not supported by the DSP-1 chip."
	endif
elseif !Define_Global_ROMLayout == !ROMLayout_HiROM_FastROM
	!DSPRegAddr1 = $006000
	!DSPRegAddr2 = $007000
else
	error "The chosen memory map is not supported by the DSP-1 chip"
endif

!REGISTER_DSP1_DataRegister = !DSPRegAddr1
!REGISTER_DSP1_StatusRegister = !DSPRegAddr2

!DSP1_Command00_16BitMultiplication = $00
!DSP1_Command01_SetAttitudeA = $01
!DSP1_Command02_ProjectionParameterSetting = $02
!DSP1_Command03_CovertFromObjectToCoordinateA = $03
!DSP1_Command04_TrigonometricCalculation = $04
!DSP1_Command06_ObjectProjectionCalculation = $06
!DSP1_Command08_VectorSizeCalculation = $08
!DSP1_Command0A_RasterDataCalculation = $0A
!DSP1_Command0B_InnerProductAttitudeAVectorCalculation = $0B
!DSP1_Command0C_2DCoordinateRotation = $0C
!DSP1_Command0D_CovertFromObjectToCoordinateA = $0D
!DSP1_Command0E_CoordinateCalculationOfXScreenPosition = $0E
!DSP1_Command0F_TestMemoryTest = $0F
!DSP1_Command10_InverseCalculation = $10
!DSP1_Command11_SetAttitudeB = $11
!DSP1_Command13_CovertFromObjectToCoordinateB = $13
!DSP1_Command14_3DAngleRotation = $14
!DSP1_Command18_VectorSizeCompare = $18
!DSP1_Command1B_InnerProductAttitudeBVectorCalculation = $1B
!DSP1_Command1C_3DCoordinateRotation = $1C
!DSP1_Command1D_CovertFromObjectToCoordinateB = $1D
!DSP1_Command1F_TestTransferROM = $1F
!DSP1_Command20_16BitMultiplication = $20
!DSP1_Command21_SetAttitudeC = $21
!DSP1_Command23_CovertFromObjectToCoordinateC = $23
!DSP1_Command28_VectorAbsoluteValueCalculation = $28			; Note: This command is bugged in DSP-1A.
!DSP1_Command2B_InnerProductAttitudeBVectorCalculation = $2B
!DSP1_Command2D_CovertFromObjectToCoordinateC = $2D
!DSP1_Command2F_TestROMVersion = $2F
	!DSP1_TestROMVersion_DSP1A = $0100
	!DSP1_TestROMVersion_DSP1B = $0101
!DSP1_Command38_VectorSizeCalculation = $38

!DSP1_Command80_NullCommand = $80
