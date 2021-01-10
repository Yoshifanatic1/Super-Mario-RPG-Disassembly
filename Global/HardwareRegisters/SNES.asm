@includeonce

!REGISTER_ScreenDisplayRegister = $002100
	!ScreenDisplayRegister_MinBrightness00 = $00			;\ Screen brightness
	!ScreenDisplayRegister_Brightness01 = $01			;|
	!ScreenDisplayRegister_Brightness02 = $02			;|
	!ScreenDisplayRegister_Brightness03 = $03			;|
	!ScreenDisplayRegister_Brightness04 = $04			;|
	!ScreenDisplayRegister_Brightness05 = $05			;|
	!ScreenDisplayRegister_Brightness06 = $06			;|
	!ScreenDisplayRegister_Brightness07 = $07			;|
	!ScreenDisplayRegister_Brightness08 = $08			;|
	!ScreenDisplayRegister_Brightness09 = $09			;|
	!ScreenDisplayRegister_Brightness0A = $0A			;|
	!ScreenDisplayRegister_Brightness0B = $0B			;|
	!ScreenDisplayRegister_Brightness0C = $0C			;|
	!ScreenDisplayRegister_Brightness0D = $0D			;|
	!ScreenDisplayRegister_Brightness0E = $0E			;|
	!ScreenDisplayRegister_MaxBrightness0F = $0F			;/
	!ScreenDisplayRegister_SetForceBlank = $80
!REGISTER_OAMSizeAndDataAreaDesignation = $002101
	!SpriteGFXLocationInVRAMLo_0000 = $00				;\ Location of the first half of the sprite graphics in VRAM.
	!SpriteGFXLocationInVRAMLo_2000 = $01				;| Note that the SNES does not have enough VRAM for the last 4 settings to work as expected
	!SpriteGFXLocationInVRAMLo_4000 = $02				;| Don't use them unless you're using an emulator build/flashcart/custom made cartridge that supports 128 KB of VRAM
	!SpriteGFXLocationInVRAMLo_6000 = $03				;|
	!SpriteGFXLocationInVRAMLo_8000 = $04				;| 
	!SpriteGFXLocationInVRAMLo_A000 = $05				;|
	!SpriteGFXLocationInVRAMLo_C000 = $06				;|
	!SpriteGFXLocationInVRAMLo_E000 = $07				;/
	!SpriteGFXLocationInVRAMHi_Add1000 = $00			;\ Location of the second half of the sprite graphics in VRAM in relation to the first half
	!SpriteGFXLocationInVRAMHi_Add2000 = $08			;|
	!SpriteGFXLocationInVRAMHi_Add3000 = $10			;|
	!SpriteGFXLocationInVRAMHi_Add4000 = $18			;/
	!SpriteSize_8x8_16x16 = $00					;\ The sizes to use for sprites. The last two are not recommended to use.
	!SpriteSize_8x8_32x32 = $20					;|
	!SpriteSize_8x8_64x64 = $40					;|
	!SpriteSize_16x16_32x32 = $60					;|
	!SpriteSize_16x16_64x64 = $80					;|
	!SpriteSize_32x32_64x64 = $A0					;|
	!SpriteSize_16x32_32x64 = $C0					;|
	!SpriteSize_16x32_32x32 = $E0					;/
!REGISTER_OAMAddressLo = $002102
!REGISTER_OAMAddressHi = $002103
!REGISTER_OAMDataWritePort = $002104
!REGISTER_BGModeAndTileSizeSetting = $002105
	!BGModeAndTileSizeSetting_Mode00Enable = $00
	!BGModeAndTileSizeSetting_Mode01Enable = $01
	!BGModeAndTileSizeSetting_Mode02Enable = $02
	!BGModeAndTileSizeSetting_Mode03Enable = $03
	!BGModeAndTileSizeSetting_Mode04Enable = $04
	!BGModeAndTileSizeSetting_Mode05Enable = $05
	!BGModeAndTileSizeSetting_Mode06Enable = $06
	!BGModeAndTileSizeSetting_Mode07Enable = $07
	!BGModeAndTileSizeSetting_Mode01Layer3Priority = $08
	!BGModeAndTileSizeSetting_Use16x16Layer1Tiles = $10
	!BGModeAndTileSizeSetting_Use16x16Layer2Tiles = $20
	!BGModeAndTileSizeSetting_Use16x16Layer3Tiles = $40
	!BGModeAndTileSizeSetting_Use16x16Layer4Tiles = $80
!REGISTER_MosaicSizeAndBGEnable = $002106
	!MosaicSizeAndBGEnable_Layer1 = $01
	!MosaicSizeAndBGEnable_Layer2 = $02
	!MosaicSizeAndBGEnable_Layer3 = $04
	!MosaicSizeAndBGEnable_Layer4 = $08
	!MosaicSizeAndBGEnable_PixelSize1x1 = $00
	!MosaicSizeAndBGEnable_PixelSize2x2 = $10
	!MosaicSizeAndBGEnable_PixelSize3x3 = $20
	!MosaicSizeAndBGEnable_PixelSize4x4 = $30
	!MosaicSizeAndBGEnable_PixelSize5x5 = $40
	!MosaicSizeAndBGEnable_PixelSize6x6 = $50
	!MosaicSizeAndBGEnable_PixelSize7x7 = $60
	!MosaicSizeAndBGEnable_PixelSize8x8 = $70
	!MosaicSizeAndBGEnable_PixelSize9x9 = $80
	!MosaicSizeAndBGEnable_PixelSize10x10 = $90
	!MosaicSizeAndBGEnable_PixelSize11x11 = $A0
	!MosaicSizeAndBGEnable_PixelSize12x12 = $B0
	!MosaicSizeAndBGEnable_PixelSize13x13 = $C0
	!MosaicSizeAndBGEnable_PixelSize14x14 = $D0
	!MosaicSizeAndBGEnable_PixelSize15x15 = $E0
	!MosaicSizeAndBGEnable_PixelSize16x16 = $F0
!REGISTER_BG1AddressAndSize = $002107
!REGISTER_BG2AddressAndSize = $002108
!REGISTER_BG3AddressAndSize = $002109
!REGISTER_BG4AddressAndSize = $00210A
	!BGXAddressAndSize_EnableXMirroring = $01
	!BGXAddressAndSize_EnableYMirroring = $02
	!BGXAddressAndSize_VRAMAddr000000 = $00
	!BGXAddressAndSize_VRAMAddr000800 = $04
	!BGXAddressAndSize_VRAMAddr001000 = $08
	!BGXAddressAndSize_VRAMAddr001800 = $0C
	!BGXAddressAndSize_VRAMAddr002000 = $10
	!BGXAddressAndSize_VRAMAddr002800 = $14
	!BGXAddressAndSize_VRAMAddr003000 = $18
	!BGXAddressAndSize_VRAMAddr003800 = $1C
	!BGXAddressAndSize_VRAMAddr004000 = $20
	!BGXAddressAndSize_VRAMAddr004800 = $24
	!BGXAddressAndSize_VRAMAddr005000 = $28
	!BGXAddressAndSize_VRAMAddr005800 = $2C
	!BGXAddressAndSize_VRAMAddr006000 = $30
	!BGXAddressAndSize_VRAMAddr006800 = $34
	!BGXAddressAndSize_VRAMAddr007000 = $38
	!BGXAddressAndSize_VRAMAddr007800 = $3C
	!BGXAddressAndSize_VRAMAddr008000 = $40
	!BGXAddressAndSize_VRAMAddr008800 = $44
	!BGXAddressAndSize_VRAMAddr009000 = $48
	!BGXAddressAndSize_VRAMAddr009800 = $4C
	!BGXAddressAndSize_VRAMAddr00A000 = $50
	!BGXAddressAndSize_VRAMAddr00A800 = $54
	!BGXAddressAndSize_VRAMAddr00B000 = $58
	!BGXAddressAndSize_VRAMAddr00B800 = $5C
	!BGXAddressAndSize_VRAMAddr00C000 = $60
	!BGXAddressAndSize_VRAMAddr00C800 = $64
	!BGXAddressAndSize_VRAMAddr00D000 = $68
	!BGXAddressAndSize_VRAMAddr00D800 = $6C
	!BGXAddressAndSize_VRAMAddr00E000 = $70
	!BGXAddressAndSize_VRAMAddr00E800 = $74
	!BGXAddressAndSize_VRAMAddr00F000 = $78
	!BGXAddressAndSize_VRAMAddr00F800 = $7C
	!BGXAddressAndSize_VRAMAddr010000 = $80								;\ Note: The SNES only has 64 KB of VRAM, so these settings go unused.
	!BGXAddressAndSize_VRAMAddr010800 = $84								;|
	!BGXAddressAndSize_VRAMAddr011000 = $88								;|
	!BGXAddressAndSize_VRAMAddr011800 = $8C								;|
	!BGXAddressAndSize_VRAMAddr012000 = $90								;|
	!BGXAddressAndSize_VRAMAddr012800 = $94								;|
	!BGXAddressAndSize_VRAMAddr013000 = $98								;|
	!BGXAddressAndSize_VRAMAddr013800 = $9C								;|
	!BGXAddressAndSize_VRAMAddr014000 = $A0								;|
	!BGXAddressAndSize_VRAMAddr014800 = $A4								;|
	!BGXAddressAndSize_VRAMAddr015000 = $A8								;|
	!BGXAddressAndSize_VRAMAddr015800 = $AC								;|
	!BGXAddressAndSize_VRAMAddr016000 = $B0								;|
	!BGXAddressAndSize_VRAMAddr016800 = $B4								;|
	!BGXAddressAndSize_VRAMAddr017000 = $B8								;|
	!BGXAddressAndSize_VRAMAddr017800 = $BC								;|
	!BGXAddressAndSize_VRAMAddr018000 = $C0								;|
	!BGXAddressAndSize_VRAMAddr018800 = $C4								;|
	!BGXAddressAndSize_VRAMAddr019000 = $C8								;|
	!BGXAddressAndSize_VRAMAddr019800 = $CC								;|
	!BGXAddressAndSize_VRAMAddr01A000 = $D0								;|
	!BGXAddressAndSize_VRAMAddr01A800 = $D4								;|
	!BGXAddressAndSize_VRAMAddr01B000 = $D8								;|
	!BGXAddressAndSize_VRAMAddr01B800 = $DC								;|
	!BGXAddressAndSize_VRAMAddr01C000 = $E0								;|
	!BGXAddressAndSize_VRAMAddr01C800 = $E4								;|
	!BGXAddressAndSize_VRAMAddr01D000 = $E8								;|
	!BGXAddressAndSize_VRAMAddr01D800 = $EC								;|
	!BGXAddressAndSize_VRAMAddr01E000 = $F0								;|
	!BGXAddressAndSize_VRAMAddr01E800 = $F4								;|
	!BGXAddressAndSize_VRAMAddr01F000 = $F8								;|
	!BGXAddressAndSize_VRAMAddr01F800 = $FC								;/

!REGISTER_BG1And2TileDataDesignation = $00210B
	!BG1And2TileDataDesignation_Layer1Addr000000 = $00
	!BG1And2TileDataDesignation_Layer1Addr002000 = $01
	!BG1And2TileDataDesignation_Layer1Addr004000 = $02
	!BG1And2TileDataDesignation_Layer1Addr006000 = $03
	!BG1And2TileDataDesignation_Layer1Addr008000 = $04
	!BG1And2TileDataDesignation_Layer1Addr00A000 = $05
	!BG1And2TileDataDesignation_Layer1Addr00C000 = $06
	!BG1And2TileDataDesignation_Layer1Addr00E000 = $07
	!BG1And2TileDataDesignation_Layer1Addr010000 = $08						;\ Note: The SNES only has 64 KB of VRAM, so these settings go unused.
	!BG1And2TileDataDesignation_Layer1Addr012000 = $09						;|
	!BG1And2TileDataDesignation_Layer1Addr014000 = $0A						;|
	!BG1And2TileDataDesignation_Layer1Addr016000 = $0B						;|
	!BG1And2TileDataDesignation_Layer1Addr018000 = $0C						;|
	!BG1And2TileDataDesignation_Layer1Addr01A000 = $0D						;|
	!BG1And2TileDataDesignation_Layer1Addr01C000 = $0E						;|
	!BG1And2TileDataDesignation_Layer1Addr01E000 = $0F						;/
	!BG1And2TileDataDesignation_Layer2Addr000000 = $00
	!BG1And2TileDataDesignation_Layer2Addr002000 = $10
	!BG1And2TileDataDesignation_Layer2Addr004000 = $20
	!BG1And2TileDataDesignation_Layer2Addr006000 = $30
	!BG1And2TileDataDesignation_Layer2Addr008000 = $40
	!BG1And2TileDataDesignation_Layer2Addr00A000 = $50
	!BG1And2TileDataDesignation_Layer2Addr00C000 = $60
	!BG1And2TileDataDesignation_Layer2Addr00E000 = $70
	!BG1And2TileDataDesignation_Layer2Addr010000 = $80						;\ Note: The SNES only has 64 KB of VRAM, so these settings go unused.
	!BG1And2TileDataDesignation_Layer2Addr012000 = $90						;|
	!BG1And2TileDataDesignation_Layer2Addr014000 = $A0						;|
	!BG1And2TileDataDesignation_Layer2Addr016000 = $B0						;|
	!BG1And2TileDataDesignation_Layer2Addr018000 = $C0						;|
	!BG1And2TileDataDesignation_Layer2Addr01A000 = $D0						;|
	!BG1And2TileDataDesignation_Layer2Addr01C000 = $E0						;|
	!BG1And2TileDataDesignation_Layer2Addr01E000 = $F0						;/
!REGISTER_BG3And4TileDataDesignation = $00210C
	!BG1And2TileDataDesignation_Layer3Addr000000 = $00
	!BG1And2TileDataDesignation_Layer3Addr002000 = $01
	!BG1And2TileDataDesignation_Layer3Addr004000 = $02
	!BG1And2TileDataDesignation_Layer3Addr006000 = $03
	!BG1And2TileDataDesignation_Layer3Addr008000 = $04
	!BG1And2TileDataDesignation_Layer3Addr00A000 = $05
	!BG1And2TileDataDesignation_Layer3Addr00C000 = $06
	!BG1And2TileDataDesignation_Layer3Addr00E000 = $07
	!BG1And2TileDataDesignation_Layer3Addr010000 = $08						;\ Note: The SNES only has 64 KB of VRAM, so these settings go unused.
	!BG1And2TileDataDesignation_Layer3Addr012000 = $09						;|
	!BG1And2TileDataDesignation_Layer3Addr014000 = $0A						;|
	!BG1And2TileDataDesignation_Layer3Addr016000 = $0B						;|
	!BG1And2TileDataDesignation_Layer3Addr018000 = $0C						;|
	!BG1And2TileDataDesignation_Layer3Addr01A000 = $0D						;|
	!BG1And2TileDataDesignation_Layer3Addr01C000 = $0E						;|
	!BG1And2TileDataDesignation_Layer3Addr01E000 = $0F						;/
	!BG1And2TileDataDesignation_Layer4Addr000000 = $00
	!BG1And2TileDataDesignation_Layer4Addr002000 = $10
	!BG1And2TileDataDesignation_Layer4Addr004000 = $20
	!BG1And2TileDataDesignation_Layer4Addr006000 = $30
	!BG1And2TileDataDesignation_Layer4Addr008000 = $40
	!BG1And2TileDataDesignation_Layer4Addr00A000 = $50
	!BG1And2TileDataDesignation_Layer4Addr00C000 = $60
	!BG1And2TileDataDesignation_Layer4Addr00E000 = $70
	!BG1And2TileDataDesignation_Layer4Addr010000 = $80						;\ Note: The SNES only has 64 KB of VRAM, so these settings go unused.
	!BG1And2TileDataDesignation_Layer4Addr012000 = $90						;|
	!BG1And2TileDataDesignation_Layer4Addr014000 = $A0						;|
	!BG1And2TileDataDesignation_Layer4Addr016000 = $B0						;|
	!BG1And2TileDataDesignation_Layer4Addr018000 = $C0						;|
	!BG1And2TileDataDesignation_Layer4Addr01A000 = $D0						;|
	!BG1And2TileDataDesignation_Layer4Addr01C000 = $E0						;|
	!BG1And2TileDataDesignation_Layer4Addr01E000 = $F0						;/
!REGISTER_BG1HorizScrollOffset = $00210D
!REGISTER_BG1VertScrollOffset = $00210E
!REGISTER_BG2HorizScrollOffset = $00210F
!REGISTER_BG2VertScrollOffset = $002110
!REGISTER_BG3HorizScrollOffset = $002111
!REGISTER_BG3VertScrollOffset = $002112
!REGISTER_BG4HorizScrollOffset = $002113
!REGISTER_BG4VertScrollOffset = $002114
!REGISTER_VRAMAddressIncrementValue = $002115
	!VRAMAddressIncrementValue_IncrementBy01 = $00
	!VRAMAddressIncrementValue_IncrementBy20 = $01
	!VRAMAddressIncrementValue_IncrementBy80 = $02
	!VRAMAddressIncrementValue_CopyOfIncrementBy80 = $03
	!VRAMAddressIncrementValue_IncrementOnLoByte = $00
	!VRAMAddressIncrementValue_IncrementOnHiByte = $80
	!VRAMAddressIncrementValue_NoAddrRemap = $00
	!VRAMAddressIncrementValue_08BitRotate = $04			;\ Note: These are intended for 4 color, 16 color, and 256 color bitmaps respectively.
	!VRAMAddressIncrementValue_09BitRotate = $08			;|
	!VRAMAddressIncrementValue_10BitRotate = $0A			;/
!REGISTER_VRAMAddressLo = $002116
!REGISTER_VRAMAddressHi = $002117
!REGISTER_WriteToVRAMPortLo = $002118
!REGISTER_WriteToVRAMPortHi = $002119
!REGISTER_Mode7TilemapSettings = $00211A
	!Mode7TilemapSettings_EnableXMirroring = $01
	!Mode7TilemapSettings_EnableYMirroring = $02
	!Mode7TilemapSettings_WrapTilemap = $00
	!Mode7TilemapSettings_CopyOfWrapTilemap = $40
	!Mode7TilemapSettings_TransparentBlankArea = $80
	!Mode7TilemapSettings_FillBlankAreaWithTile00 = $C0
!REGISTER_Mode7MatrixParameterA = $00211B
!REGISTER_Mode7MatrixParameterB = $00211C
!REGISTER_Mode7MatrixParameterC = $00211D
!REGISTER_Mode7MatrixParameterD = $00211E
!REGISTER_Mode7CenterX = $00211F
!REGISTER_Mode7CenterY = $002120
!REGISTER_CGRAMAddress = $002121
!REGISTER_WriteToCGRAMPort = $002122
!REGISTER_BG1And2WindowMaskSettings = $002123
	!BGXAndYWindowMaskSettings_Window1_BG1_Disable = $00
	!BGXAndYWindowMaskSettings_Window1_BG1_CopyOfDisable = $01
	!BGXAndYWindowMaskSettings_Window1_BG1_Inside = $02
	!BGXAndYWindowMaskSettings_Window1_BG1_Outside = $03
	!BGXAndYWindowMaskSettings_Window2_BG1_Disable = $00
	!BGXAndYWindowMaskSettings_Window2_BG1_CopyOfDisable = $04
	!BGXAndYWindowMaskSettings_Window2_BG1_Inside = $08
	!BGXAndYWindowMaskSettings_Window2_BG1_Outside = $0C
	!BGXAndYWindowMaskSettings_Window1_BG2_Disable = $00
	!BGXAndYWindowMaskSettings_Window1_BG2_CopyOfDisable = $10
	!BGXAndYWindowMaskSettings_Window1_BG2_Inside = $20
	!BGXAndYWindowMaskSettings_Window1_BG2_Outside = $30
	!BGXAndYWindowMaskSettings_Window2_BG2_Disable = $00
	!BGXAndYWindowMaskSettings_Window2_BG2_CopyOfDisable = $40
	!BGXAndYWindowMaskSettings_Window2_BG2_Inside = $80
	!BGXAndYWindowMaskSettings_Window2_BG2_Outside = $C0
!REGISTER_BG3And4WindowMaskSettings = $002124
	!BGXAndYWindowMaskSettings_Window1_BG3_Disable = $00
	!BGXAndYWindowMaskSettings_Window1_BG3_CopyOfDisable = $01
	!BGXAndYWindowMaskSettings_Window1_BG3_Inside = $02
	!BGXAndYWindowMaskSettings_Window1_BG3_Outside = $03
	!BGXAndYWindowMaskSettings_Window2_BG3_Disable = $00
	!BGXAndYWindowMaskSettings_Window2_BG3_CopyOfDisable = $04
	!BGXAndYWindowMaskSettings_Window2_BG3_Inside = $08
	!BGXAndYWindowMaskSettings_Window2_BG3_Outside = $0C
	!BGXAndYWindowMaskSettings_Window1_BG4_Disable = $00
	!BGXAndYWindowMaskSettings_Window1_BG4_CopyOfDisable = $10
	!BGXAndYWindowMaskSettings_Window1_BG4_Inside = $20
	!BGXAndYWindowMaskSettings_Window1_BG4_Outside = $30
	!BGXAndYWindowMaskSettings_Window2_BG4_Disable = $00
	!BGXAndYWindowMaskSettings_Window2_BG4_CopyOfDisable = $40
	!BGXAndYWindowMaskSettings_Window2_BG4_Inside = $80
	!BGXAndYWindowMaskSettings_Window2_BG4_Outside = $C0
!REGISTER_ObjectAndColorWindowSettings = $002125
	!BGXAndYWindowMaskSettings_Window1_Sprite_Disable = $00
	!BGXAndYWindowMaskSettings_Window1_Sprite_CopyOfDisable = $01
	!BGXAndYWindowMaskSettings_Window1_Sprite_Inside = $02
	!BGXAndYWindowMaskSettings_Window1_Sprite_Outside = $03
	!BGXAndYWindowMaskSettings_Window2_Sprite_Disable = $00
	!BGXAndYWindowMaskSettings_Window2_Sprite_CopyOfDisable = $04
	!BGXAndYWindowMaskSettings_Window2_Sprite_Inside = $08
	!BGXAndYWindowMaskSettings_Window2_Sprite_Outside = $0C
	!BGXAndYWindowMaskSettings_Window1_ColorMath_Disable = $00
	!BGXAndYWindowMaskSettings_Window1_ColorMath_CopyOfDisable = $10
	!BGXAndYWindowMaskSettings_Window1_ColorMath_Inside = $20
	!BGXAndYWindowMaskSettings_Window1_ColorMath_Outside = $30
	!BGXAndYWindowMaskSettings_Window2_ColorMath_Disable = $00
	!BGXAndYWindowMaskSettings_Window2_ColorMath_CopyOfDisable = $40
	!BGXAndYWindowMaskSettings_Window2_ColorMath_Inside = $80
	!BGXAndYWindowMaskSettings_Window2_ColorMath_Outside = $C0
!REGISTER_Window1LeftPositionDesignation = $002126
!REGISTER_Window1RightPositionDesignation = $002127
!REGISTER_Window2LeftPositionDesignation = $002128
!REGISTER_Window2RightPositionDesignation = $002129
!REGISTER_BGWindowLogicSettings = $00212A
	!BGXAndYWindowMaskSettings_BG1_OR = $00
	!BGXAndYWindowMaskSettings_BG1_AND = $01
	!BGXAndYWindowMaskSettings_BG1_XOR = $02
	!BGXAndYWindowMaskSettings_BG1_XNOR = $03
	!BGXAndYWindowMaskSettings_BG2_OR = $00
	!BGXAndYWindowMaskSettings_BG2_AND = $04
	!BGXAndYWindowMaskSettings_BG2_XOR = $08
	!BGXAndYWindowMaskSettings_BG2_XNOR = $0C
	!BGXAndYWindowMaskSettings_BG3_OR = $00
	!BGXAndYWindowMaskSettings_BG3_AND = $10
	!BGXAndYWindowMaskSettings_BG3_XOR = $20
	!BGXAndYWindowMaskSettings_BG3_XNOR = $30
	!BGXAndYWindowMaskSettings_BG4_OR = $00
	!BGXAndYWindowMaskSettings_BG4_AND = $40
	!BGXAndYWindowMaskSettings_BG4_XOR = $80
	!BGXAndYWindowMaskSettings_BG4_XNOR = $C0
!REGISTER_ColorAndObjectWindowLogicSettings = $00212B
	!BGXAndYWindowMaskSettings_Sprite_OR = $00
	!BGXAndYWindowMaskSettings_Sprite_AND = $01
	!BGXAndYWindowMaskSettings_Sprite_XOR = $02
	!BGXAndYWindowMaskSettings_Sprite_XNOR = $03
	!BGXAndYWindowMaskSettings_BG2_OR = $00
	!BGXAndYWindowMaskSettings_ColorMath_AND = $04
	!BGXAndYWindowMaskSettings_ColorMath_XOR = $08
	!BGXAndYWindowMaskSettings_ColorMath_XNOR = $0C
!REGISTER_MainScreenLayers = $00212C
!REGISTER_SubScreenLayers = $00212D
	!XScreenLayers_EnableLayer1 = $01
	!XScreenLayers_EnableLayer2 = $02
	!XScreenLayers_EnableLayer3 = $04
	!XScreenLayers_EnableLayer4 = $08
	!XScreenLayers_EnableSprites = $10
!REGISTER_MainScreenWindowMask = $00212E
!REGISTER_SubScreenWindowMask = $00212F
	!XScreenWindowMask_EnableLayer1 = $01
	!XScreenWindowMask_EnableLayer2 = $02
	!XScreenWindowMask_EnableLayer3 = $04
	!XScreenWindowMask_EnableLayer4 = $08
	!XScreenWindowMask_EnableSprites = $10
!REGISTER_ColorMathInitialSettings = $002130
	!ColorMathSelectAndEnable_DisableDirectColorMode = $00
	!ColorMathSelectAndEnable_EnableDirectColorMode = $01
	!ColorMathSelectAndEnable_EnableColorMathOnSubscreen = $02
	!ColorMathSelectAndEnable_NeverPrevenColorMath = $00
	!ColorMathSelectAndEnable_PrevenColorMathOutsideWindow = $10
	!ColorMathSelectAndEnable_PrevenColorMathInsideWindow = $20
	!ColorMathSelectAndEnable_AlwaysPrevenColorMath = $30
	!ColorMathSelectAndEnable_NeverClipColorsToBlack = $00
	!ColorMathSelectAndEnable_ClipColorsToBlackOutsideWindow = $40
	!ColorMathSelectAndEnable_ClipColorsToBlackInsideWindow = $80
	!ColorMathSelectAndEnable_AlwaysClipColorsToBlack = $C0
!REGISTER_ColorMathSelectAndEnable = $002131
	!ColorMathSelectAndEnable_EnableLayer1 = $01
	!ColorMathSelectAndEnable_EnableLayer2 = $02
	!ColorMathSelectAndEnable_EnableLayer3 = $04
	!ColorMathSelectAndEnable_EnableLayer4 = $08
	!ColorMathSelectAndEnable_EnableSprites = $10
	!ColorMathSelectAndEnable_EnableBackdrop = $20
	!ColorMathSelectAndEnable_HalfColorMath = $40
	!ColorMathSelectAndEnable_Addition = $00
	!ColorMathSelectAndEnable_Subtraction = $80
!REGISTER_FixedColorData = $002132
!REGISTER_InitialScreenSettings = $002133
	!InitialScreenSettings_ScreenInterlaceFlag = $01
	!InitialScreenSettings_SpriteInterlaceFlag = $02
	!InitialScreenSettings_EnableOverscanFlag = $04
	!InitialScreenSettings_EnablePseudoHiResFlag = $08
	!InitialScreenSettings_EnableMode7EXTBG = $40
	!InitialScreenSettings_NormalExternalSync = $00
	!InitialScreenSettings_SuperImposeExternalSync = $80
!REGISTER_PPUMultiplicationProductLo = $002134
!REGISTER_PPUMultiplicationProductMid = $002135
!REGISTER_PPUMultiplicationProductHi = $002136
!REGISTER_SoftwareLatchForHVCounter = $002137
!REGISTER_ReadFromOAMPort = $002138
!REGISTER_ReadFromVRAMPortLo = $002139
!REGISTER_ReadFromVRAMPortHi = $00213A
!REGISTER_ReadFromCGRAMPort = $00213B
!REGISTER_HCounter = $00213C
!REGISTER_VCounter = $00213D
!REGISTER_PPUStatusFlag1 = $00213E
	!PPUStatusFlag1_PPU1VersionNumber = $0F
	!PPUStatusFlag1_MasterSlaveModeFlag = $20
	!PPUStatusFlag1_RangeOverFlag = $40
	!PPUStatusFlag1_TimeOverFlag = $80
!REGISTER_PPUStatusFlag2 = $00213F
	!PPUStatusFlag1_PPU2VersionNumber = $0F
	!PPUStatusFlag2_ConsoleRegion = $10
	!PPUStatusFlag2_PPULatchFlag = $40
	!PPUStatusFlag2_InterlaceField = $80
!REGISTER_APUPort0 = $002140
!REGISTER_APUPort1 = $002141
!REGISTER_APUPort2 = $002142
!REGISTER_APUPort3 = $002143
!REGISTER_ReadOrWriteToWRAMPort = $002180
!REGISTER_WRAMAddressLo = $002181
!REGISTER_WRAMAddressHi = $002182
!REGISTER_WRAMAddressBank = $002183
!REGISTER_JoypadSerialPort1 = $004016
!REGISTER_JoypadSerialPort2 = $004017
!REGISTER_IRQNMIAndJoypadEnableFlags = $004200
	!IRQNMIAndJoypadEnableFlags_EnableAutoJoypadRead = $01
	!IRQNMIAndJoypadEnableFlags_DisableIRQs = $00
	!IRQNMIAndJoypadEnableFlags_EanbleIRQsAtVPos = $10
	!IRQNMIAndJoypadEnableFlags_EanbleIRQsAtHPos = $20
	!IRQNMIAndJoypadEnableFlags_EanbleIRQsAtHVPos = $30
	!IRQNMIAndJoypadEnableFlags_DisableNMI = $00
	!IRQNMIAndJoypadEnableFlags_EnableNMI = $80
!REGISTER_ProgrammableIOPortOutput = $004201
	!ProgrammableIOPortOutput_Joypad1Pin6 = $40
	!ProgrammableIOPortOutput_Joypad2Pin6 = $80
!REGISTER_Multiplicand = $004202
!REGISTER_Multiplier = $004203
!REGISTER_DividendLo = $004204
!REGISTER_DividendHi = $004205
!REGISTER_Divisor = $004206
!REGISTER_HCountTimerLo = $004207
!REGISTER_HCountTimerHi = $004208
!REGISTER_VCountTimerLo = $004209
!REGISTER_VCountTimerHi = $00420A
!REGISTER_DMAEnable = $00420B
!REGISTER_HDMAEnable = $00420C
	!DMAEnable_Channel0 = $01
	!DMAEnable_Channel1 = $02
	!DMAEnable_Channel2 = $04
	!DMAEnable_Channel3 = $08
	!DMAEnable_Channel4 = $10
	!DMAEnable_Channel5 = $20
	!DMAEnable_Channel6 = $40
	!DMAEnable_Channel7 = $80
!REGISTER_EnableFastROM = $00420D
!REGISTER_NMIEnable = $004210
	!NMIEnable_5A22ChipVersionNumber = $0F
	!NMIEnable_NMIFlag = $80
!REGISTER_IRQEnable = $004211
	!IRQEnable_IRQFlag = $80
!REGISTER_HVBlankFlagsAndJoypadStatus = $004212
	!HVBlankFlagsAndJoypadStatus_AutoJoypadReadStatus = $01
	!HVBlankFlagsAndJoypadStatus_HBlankFlag = $40
	!HVBlankFlagsAndJoypadStatus_VBlankFlag = $80
!REGISTER_ProgrammableIOPortInput = $004213
!REGISTER_QuotientLo = $004214
!REGISTER_QuotientHi = $004215
!REGISTER_ProductOrRemainderLo = $004216
!REGISTER_ProductOrRemainderHi = $004217
!REGISTER_Joypad1Lo = $004218
!REGISTER_Joypad1Hi = $004219
!REGISTER_Joypad2Lo = $00421A
!REGISTER_Joypad2Hi = $00421B
!REGISTER_Joypad3Lo = $00421C
!REGISTER_Joypad3Hi = $00421D
!REGISTER_Joypad4Lo = $00421E
!REGISTER_Joypad4Hi = $00421F

org $000000
struct DMA $004300
	.Parameters: skip $01
	.Destination: skip $01
	.SourceLo: skip $01
	.SourceHi: skip $01
	.SourceBank: skip $01
	.SizeLo: skip $01
	.SizeHi: skip $01
endstruct align $10

struct HDMA $004300
	.Parameters: skip $01
	.Destination: skip $01
	.SourceLo: skip $01
	.SourceHi: skip $01
	.SourceBank: skip $01
	.IndirectSourceLo: skip $01
	.IndirectSourceHi: skip $01
	.IndirectSourceBank: skip $01
	.TableSourceLo: skip $01
	.TableSourceHi: skip $01
	.LineCount: skip $01
endstruct align $10

	!DMAParams_TransferMode_1Reg1Write = $00
	!DMAParams_TransferMode_2Regs1Write = $01
	!DMAParams_TransferMode_1Reg2Writes = $02
	!DMAParams_TransferMode_2Regs2Writes = $03
	!DMAParams_TransferMode_4Regs1Write = $04
	!DMAParams_TransferMode_2Regs2WritesAlternating = $05
	!DMAParams_TransferMode_CopyOf1Reg2Writes = $06
	!DMAParams_TransferMode_CopyOf2Regs2Writes = $07
	!DMAParams_EnableFixedTransfer = $08
	!DMAParams_IncrementSourceAddr = $00
	!DMAParams_DecrementSourceAddr = $10
	!DMAParams_HDMAUseDirectAddr = $00
	!DMAParams_HDMAUseIndirectAddr = $40
	!DMAParams_TransferDirection_ABusToBBus = $00
	!DMAParams_TransferDirection_BBusToABus = $80

;---------------------------------------------------------------------------

; Main ROM assembly specific macros

macro BANK_START(Bank)
assert !InBank == !FALSE, "You must put a BANK_END macro before calling BANK_START again!"
assert !BANKType_<Bank>&$04 == $00, "Bank $<Bank> has already been inserted!"
assert !CurrentBank <= $<Bank>, "It's risky inserting banks in non-ascending order! Please insert bank $<Bank> before bank !CurrentBank."

;if $<Bank> >= !StartOfMirrorBanks|((!FastROMAddressOffset|!HiROMAddressOffset)>>16)
	if $<Bank> > $FF
		error "Bank $<Bank> is beyond what the SNES can address."
	;else
	;	error "Bank $<Bank> is outside the range of the chosen ROM size. Use %HandleROMMirroring() if you intend to use ROM mirroring or set the ROM Layout to one of the FastROM settings if you wanted FastROM addressing."
	endif
;endif
if !BANKType_<Bank> == $FF
	error "Bank $<Bank> is not a valid ROM bank in this memory map!"
else
	!BANKType_<Bank> #= !BANKType_<Bank>|$04
endif
;if !BANKType_<Bank>&$02 != $00
;else
	if !BANKType_<Bank>&$01 == $00
		org (($<Bank><<16)+$8000)|!FastROMAddressOffset|!HiROMAddressOffset
		!InLoROMBank #= !TRUE
	else
		org ($<Bank><<16)|!FastROMAddressOffset|!HiROMAddressOffset
		!InLoROMBank #= !FALSE
	endif
	ROMBANK<Bank>_START:
	!InBank = !TRUE
	!CurrentBank = $<Bank>
;endif
endmacro

;---------------------------------------------------------------------------

macro BANK_END(Bank)
assert !InBank == !TRUE, "You must put a BANK_START macro before calling BANK_END!"
assert !CurrentBank <= $<Bank>, "The bank parameter of BANK_END must be greater than or equal to the bank parameter in the previous BANK_START!"
assert !InROMMirror == 0, "You must turn off ROM mirroring via EndROMMirroring() before a BANK_END() macro!"
if !BANKType_<Bank>&$20 != $00
	if !NumOfInsertedSNESHeader == $00
		%SNES_Header(!SNESHeaderLoc)
	endif
endif
;if $<Bank> >= !StartOfMirrorBanks|((!FastROMAddressOffset|!HiROMAddressOffset)>>16)
;	error "Bank $<Bank> is outside the range of the chosen ROM size. Use %HandleROMMirroring() if you intend to use ROM mirroring or set the ROM Layout to one of the FastROM settings if you wanted FastROM addressing."
;endif

if !InSuperFXHiROMMirror == !TRUE
	if (!CurrentBank/$02)|$40 == ($<Bank>/$02)|$40
		print "- Bank $",hex(($<Bank>/$02)|$40)," bytes: ", bytes
	else
		print "- Bank $",hex((!CurrentBank/$02)|$40),"-$",hex(($<Bank>/$02)|$40)," bytes: ", bytes
	endif
else
	if !ROMBankSplitFlag == !TRUE
		print "- Bank $<Bank> (Upper) bytes: ", bytes
	elseif !CurrentBank == $<Bank>
		print "- Bank $<Bank> bytes: ", bytes
	else
		print "- Bank !CurrentBank-$<Bank> bytes: ", bytes
	endif
endif
if !CurrentBank != $FF
	if !InSuperFXHiROMMirror == !TRUE
		warnpc ((($<Bank>/$02)<<16)|$400000)+$10000
		!InSuperFXHiROMMirror = !FALSE
	else
		if !ROMBankSplitFlag == !TRUE
			warnpc ((($<Bank><<16)+$10000)|!FastROMAddressOffset)^!HiROMAddressOffset
		else
			warnpc (($<Bank><<16)+$10000)|!FastROMAddressOffset|!HiROMAddressOffset
		endif
	endif
endif
	reset bytes
	!InBank = !FALSE
	!CurrentBank = $<Bank>
	ROMBANK<Bank>_END:
endmacro

;---------------------------------------------------------------------------

macro HiROMBankSplit()
if !InLoROMBank == !FALSE
	if !Define_Global_CustomChip&$7F == !Chip_SA1
		if !Define_Global_ROMSize > !ROMSize_4MB
		else
			warnpc ((!CurrentBank<<16)+$8000)|!FastROMAddressOffset|!HiROMAddressOffset
			org (((!CurrentBank<<16)+$8000)|!FastROMAddressOffset)^!HiROMAddressOffset
		endif
	else
		warnpc ((!CurrentBank<<16)+$8000)|!FastROMAddressOffset|!HiROMAddressOffset
		org (((!CurrentBank<<16)+$8000)|!FastROMAddressOffset)^!HiROMAddressOffset
	endif
	!ROMBankSplitFlag = !TRUE
	print "- Bank !CurrentBank (Lower) bytes: ", bytes
	reset bytes
else
	error "%HiROMBankSplit() is only meant to be used in HiROM banks!"
endif
endmacro

;---------------------------------------------------------------------------

macro BeginROMMirroring(Address, Offset, Flip)
if !Define_Global_IgnoreCodeAlignments|!Define_Global_DisableROMMirroring == !FALSE
	if !StartOfMirrorBanks < $0100
		assert !InROMMirror == !FALSE, "You must end ROM mirroring via EndROMMirroring() before starting another mirror block."
		!TEMP = (<Flip>^<Address>)+((<Offset>*!StartOfMirrorBanks)<<16)&$00FFFFFF
		if (!TEMP>>16)&$FE == $7E
			error "This HandleROMMirroring() macro call points to a RAM bank!"
		else
			warnpc <Address>
			!InROMMirror = !TRUE
			base !TEMP
		endif
	else
		error "This ROM has no ROM mirror banks, so you must set \!Define_Global_DisableROMMirroring to \!TRUE or else pointers affected by HandleROMMirroring() will point to the wrong addresses!"
	endif
endif
endmacro

;---------------------------------------------------------------------------

macro EndROMMirroring()
if !Define_Global_IgnoreCodeAlignments|!Define_Global_DisableROMMirroring == !FALSE
	if !StartOfMirrorBanks < $0100
		assert !InROMMirror == !TRUE, "You must start ROM mirroring via BeginROMMirroring() before ending a mirror block."
		!InROMMirror = !FALSE
		base off
	endif
endif
endmacro

;---------------------------------------------------------------------------
