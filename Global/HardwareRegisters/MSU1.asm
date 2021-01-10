@includeonce

;MSU-1 read registers
!REGISTER_MSU1_Read_StatusPort = $2000
	!MSU1_Revision0 = $00
	!MSU1_Revision1 = $01
	!MSU1_Revision2 = $02
	!MSU1_Revision3 = $03
	!MSU1_Revision4 = $04
	!MSU1_Revision5 = $05
	!MSU1_Revision6 = $06
	!MSU1_Revision7 = $07
	!MSU1_TrackMissingFlag = $08
	!MSU1_AudioPlayingFlag = $10
	!MSU1_AudioRepeatFlag = $20
	!MSU1_AudioBusyFlag = $40
	!MSU1_DataBusyFlag = $80
!REGISTER_MSU1_Read_DataReadPort = $2001
!REGISTER_MSU1_Read_ID1 = $2002				;\ Note: Reading from these registers in order will return "S-MSU1" in ASCII.
!REGISTER_MSU1_Read_ID2 = $2003				;|
!REGISTER_MSU1_Read_ID3 = $2004				;|
!REGISTER_MSU1_Read_ID4 = $2005				;|
!REGISTER_MSU1_Read_ID5 = $2006				;|
!REGISTER_MSU1_Read_ID6 = $2007				;/

;MSU-1 write registers
!REGISTER_MSU1_Write_DataSeekPortLo = $2000
!REGISTER_MSU1_Write_DataSeekPortMidLo = $2001
!REGISTER_MSU1_Write_DataSeekPortMidHi = $2002
!REGISTER_MSU1_Write_DataSeekPortHi = $2003
!REGISTER_MSU1_Write_AudioTrackLo = $2004
!REGISTER_MSU1_Write_AudioTrackHi = $2005
!REGISTER_MSU1_Write_AudioVolume = $2006
!REGISTER_MSU1_Write_AudioFlags = $2007
	!MSU1_AudioIsPlayingFlag = $01
	!MSU1_LoopAudioFlag = $02
