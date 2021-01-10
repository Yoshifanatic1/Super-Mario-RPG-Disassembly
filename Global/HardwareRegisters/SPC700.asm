@includeonce

;SPC700 registers/IPLROM
;$00F0
!REGISTER_SPC700_ControlRegister = $00F1
!REGISTER_SPC700_DSPRegisterIndex = $00F2
!REGISTER_SPC700_ReadWriteToDSPRegister = $00F3
!REGISTER_SPC700_APUPort0 = $00F4
!REGISTER_SPC700_APUPort1 = $00F5
!REGISTER_SPC700_APUPort2 = $00F6
!REGISTER_SPC700_APUPort3 = $00F7
;$00F8
;$00F9
!REGISTER_SPC700_Timer0 = $00FA
!REGISTER_SPC700_Timer1 = $00FB
!REGISTER_SPC700_Timer2 = $00FC
!REGISTER_SPC700_Counter0 = $00FD
!REGISTER_SPC700_Counter1 = $00FE
!REGISTER_SPC700_Counter2 = $00FF
!REGISTER_SPC700_IPLROMLoc = $FFC0

;DSP registers					; Note: Any register that has "ChannelX" in the name are meant to be used with the "!DSPChannelX" defines below.
!REGISTER_DSP_ChannelXLeftVolume = $00
	!DSPChannel1 = $00
	!DSPChannel2 = $10
	!DSPChannel3 = $20
	!DSPChannel4 = $30
	!DSPChannel5 = $40
	!DSPChannel6 = $50
	!DSPChannel7 = $60
	!DSPChannel8 = $70
!REGISTER_DSP_ChannelXRightVolume = $01
!REGISTER_DSP_ChannelXPitchLo = $02
!REGISTER_DSP_ChannelXPitchHi = $03
!REGISTER_DSP_ChannelXSourceNumber = $04
!REGISTER_DSP_ChannelXToggleADSROrGAIN = $05
!REGISTER_DSP_ChannelXADSREnvelope = $06
!REGISTER_DSP_ChannelXGAINEnvelope = $07
!REGISTER_DSP_ChannelXWriteEnvelope = $08
!REGISTER_DSP_ChannelXWriteWaveform = $09
!REGISTER_DSP_MainLeftVolume = $0C
!REGISTER_DSP_EchoFeedback = $0D
!REGISTER_DSP_ChannelXFIRFilerCoefficients = $0F
!REGISTER_DSP_MainRightVolume = $1C
!REGISTER_DSP_EchoLeftVolume = $2C
!REGISTER_DSP_PitchModulation = $2D
!REGISTER_DSP_EchoRightVolume = $3C
!REGISTER_DSP_NoiseEnable = $3D
!REGISTER_DSP_KeyOnBits = $4C
!REGISTER_DSP_EchoEnable = $4D
!REGISTER_DSP_KeyOffBits = $5C
!REGISTER_DSP_SourceDirectoryOffset = $5D
!REGISTER_DSP_DSPStatusFlags = $6C
!REGISTER_DSP_EchoBufferStartOffset = $6D
!REGISTER_DSP_VoiceBits = $7C
!REGISTER_DSP_MainRightVolume = $1C
!REGISTER_DSP_EchoDelay = $7D

;---------------------------------------------------------------------------

; SPC700 code assembly specific macros

macro SPCDataBlockStart(base)
assert !InBank == !FALSE, "You must put a SPCDataBlockEnd macro before calling SPCDataBlockStart again!"
assert $<base> < $100000, "The SNES only has 64 KB of ARAM! Set the base offset to be between $0200 and $FFFF!"
if $<base> >= !REGISTER_SPC700_IPLROMLoc
	warn "The IPL ROM is located at ARAM address !REGISTER_SPC700_IPLROMLoc. Are you sure that's where you want this data block to be inserted at?"
endif
	dw SPCDataBlockEnd_<base>-SPCDataBlockStart_<base>
	dw $<base>
	base $<base>
	SPCDataBlockStart_<base>:
	!InBank = !TRUE
endmacro

;---------------------------------------------------------------------------

macro SPCDataBlockEnd(base)
assert !InBank == !TRUE, "You must put a SPCDataBlockStart macro before calling SPCDataBlockEnd!"
	SPCDataBlockEnd_<base>:
	base off
	!InBank = !FALSE
endmacro

;---------------------------------------------------------------------------

macro EndSPCUploadAndJumpToEngine(EngineLoc)
assert !InBank == !FALSE, "You can't put a EndSPCUploadAndJumpToEngine in the middle of a data block!"
	dw $0000
	dw <EngineLoc>
endmacro

;---------------------------------------------------------------------------
