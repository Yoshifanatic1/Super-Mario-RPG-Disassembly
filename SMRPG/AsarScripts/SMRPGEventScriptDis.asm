@asar 1.81

; Modify these as needed
sa1rom
!ROMOffset = $DE0C00				; The ROM offset to begin disassembly from.
!Bank = DE					; Affects the bank byte for the label used in JSR/JMP instructions.
!DoTwoPassesFlag = 1				; If 1, the script will run twice, with the purpose of generating labels that appear before the branch that points to it. Turning this on may slow down disassembly speed, however.
!MaxBytes = 62290				; The maximum amount of bytes that will be read at a time. Setting this lower/higher will speed up/slow down disassembly.

; Don't touch these
!Input1 = $00
!Input2 = $00
!Output = ""
!ByteCounter = 0
!LoopCounter = 0
!Pass = 0
!CurrentOffset = 0

macro GetOpcode()
	!Input1 #= read1(!ROMOffset+!ByteCounter)
	;!Input1 #= !LoopCounter
	!ByteCounter #= !ByteCounter+1
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro readbyte(Input)
	!<Input> #= read1(!ROMOffset+!ByteCounter)
	;!<Input> = $01
	!ByteCounter #= !ByteCounter+1
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro readword(Input)
	!<Input> #= read2(!ROMOffset+!ByteCounter)
	;<!Input> = $0123
	!ByteCounter #= !ByteCounter+2
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro readlong(Input)
	!<Input> #= read3(!ROMOffset+!ByteCounter)
	;!<Input>1 = $012345
	!ByteCounter #= !ByteCounter+3
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro HandleBranch(Value, ByteCounter)
if !Input1 >= <Value>
	if <Value> == $80
		!Input1 #= (!ROMOffset+!ByteCounter)-((!Input1^$FF)+$01)
	else
		!Input1 #= (!ROMOffset+!ByteCounter)-((!Input1^$FFFF)+$01)
	endif
else
	!Input1 #= (!ROMOffset+!ByteCounter)+!Input1
endif
	%GetBranchLabelLocation(!Input1)
endmacro

macro PrintLabel(Address)
if defined("ROM_<Address>") == 1
	if !ROM_<Address> == 1
		print ""
	endif
	print "DATA_",hex(!ROMOffset+!ByteCounter, 6),":"
endif
endmacro

macro DefineLabelAfterNoPassOpcode(Address)
	!ROM_<Address> = 1
endmacro

macro GetBranchLabelLocation(Address)
if defined("ROM_<Address>") == 0
	!ROM_<Address> = 0
endif
endmacro

macro HandleJump(Address)
if defined("ROM_<Address>") == 0
	!ROM_<Address> = 0
endif
endmacro

macro Op0()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(Mario, hex(!Input1, 2))
endif
endmacro

macro Op1()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(Toadstool, hex(!Input1, 2))
endif
endmacro

macro Op2()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(Bowser, hex(!Input1, 2))
endif
endmacro

macro Op3()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(Geno, hex(!Input1, 2))
endif
endmacro

macro Op4()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(Mallow, hex(!Input1, 2))
endif
endmacro

macro Op5()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(UNK00, hex(!Input1, 2))
endif
endmacro

macro Op6()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(UNK01, hex(!Input1, 2))
endif
endmacro

macro Op7()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(UNK02, hex(!Input1, 2))
endif
endmacro

macro Op8()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(UNK03, hex(!Input1, 2))
endif
endmacro

macro Op9()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(UNK04, hex(!Input1, 2))
endif
endmacro

macro Op10()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(UNK05, hex(!Input1, 2))
endif
endmacro

macro Op11()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(UNK06, hex(!Input1, 2))
endif
endmacro

macro Op12()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(SpriteLayer, hex(!Input1, 2))
endif
endmacro

macro Op13()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(BG1Layer, hex(!Input1, 2))
endif
endmacro

macro Op14()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(BG2Layer, hex(!Input1, 2))
endif
endmacro

macro Op15()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(BG3Layer, hex(!Input1, 2))
endif
endmacro

macro Op16()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(UNK07, hex(!Input1, 2))
endif
endmacro

macro Op17()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(UNK08, hex(!Input1, 2))
endif
endmacro

macro Op18()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(UNK09, hex(!Input1, 2))
endif
endmacro

macro Op19()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(UNK0A, hex(!Input1, 2))
endif
endmacro

macro Op20()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC00, hex(!Input1, 2))
endif
endmacro

macro Op21()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC01, hex(!Input1, 2))
endif
endmacro

macro Op22()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC02, hex(!Input1, 2))
endif
endmacro

macro Op23()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC03, hex(!Input1, 2))
endif
endmacro

macro Op24()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC04, hex(!Input1, 2))
endif
endmacro

macro Op25()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC05, hex(!Input1, 2))
endif
endmacro

macro Op26()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC06, hex(!Input1, 2))
endif
endmacro

macro Op27()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC07, hex(!Input1, 2))
endif
endmacro

macro Op28()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC08, hex(!Input1, 2))
endif
endmacro

macro Op29()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC09, hex(!Input1, 2))
endif
endmacro

macro Op30()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC0A, hex(!Input1, 2))
endif
endmacro

macro Op31()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC0B, hex(!Input1, 2))
endif
endmacro

macro Op32()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC0C, hex(!Input1, 2))
endif
endmacro

macro Op33()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC0D, hex(!Input1, 2))
endif
endmacro

macro Op34()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC0E, hex(!Input1, 2))
endif
endmacro

macro Op35()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC0F, hex(!Input1, 2))
endif
endmacro

macro Op36()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC10, hex(!Input1, 2))
endif
endmacro

macro Op37()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC11, hex(!Input1, 2))
endif
endmacro

macro Op38()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC12, hex(!Input1, 2))
endif
endmacro

macro Op39()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC13, hex(!Input1, 2))
endif
endmacro

macro Op40()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC14, hex(!Input1, 2))
endif
endmacro

macro Op41()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC15, hex(!Input1, 2))
endif
endmacro

macro Op42()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC16, hex(!Input1, 2))
endif
endmacro

macro Op43()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC17, hex(!Input1, 2))
endif
endmacro

macro Op44()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC18, hex(!Input1, 2))
endif
endmacro

macro Op45()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC19, hex(!Input1, 2))
endif
endmacro

macro Op46()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC1A, hex(!Input1, 2))
endif
endmacro

macro Op47()
	%readbyte(Input1)
if !Pass == 1
	%HandleES00To2F(NPC1B, hex(!Input1, 2))
endif
endmacro

macro Op48()
if !Pass == 1
	print "	%ES30_UNK()"
endif
endmacro

macro Op49()
if !Pass == 1
	print "	%ES31_UNK()"
endif
endmacro

macro Op50()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%ES32_UNK($",hex(!Input1, 2),", $",hex(!Input2, 4),")"
endif
endmacro

macro Op51()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%ES33_UNK($",hex(!Input1, 2),", $",hex(!Input2, 4),")"
endif
endmacro

macro Op52()
if !Pass == 1
	print "	%ES34_ChangeMovementDir()"
endif
endmacro

macro Op53()
if !Pass == 1
	print "	%ES35_SetOWMenuAcessibility()"
endif
endmacro

macro Op54()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES36_AddCharToParty($",hex(!Input1, 2),")"
endif
endmacro

macro Op55()
if !Pass == 1
	print "	%ES37_StorePartyCount()"
endif
endmacro

macro Op56()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES38_StoreCharFromSlotTo007000($",hex(!Input1, 2),")"
endif
endmacro

macro Op57()
	%readbyte(Input1)
	%readword(Input2)
	!Input3 #= !Input2+($!Bank<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%ES39_UNK(",hex(!Input1, 2)," , DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op58()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
	!Input4 #= !Input2+($!Bank<<16)
	%HandleJump(!Input4)
	!Input4 #= !Input3+($!Bank<<16)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%ES3A_UNK($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op59()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
	!Input4 #= !Input2+($!Bank<<16)
	%HandleJump(!Input4)
	!Input4 #= !Input3+($!Bank<<16)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%ES3B_UNK($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op60()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%readword(Input4)
	!Input5 #= !Input4+($!Bank<<16)
	%HandleJump(!Input5)
if !Pass == 1
	print "	%ES3C_UNK($",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),", DATA_!Bank",hex(!Input4, 4),")"
endif
endmacro

macro Op61()
	%readword(Input1)
	!Input2 #= !Input1+($!Bank<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%ES3D_UNK(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op62()
	%readbyte(Input1)
	%readbyte(Input2)
	%readword(Input3)
	!Input4 #= !Input3+($!Bank<<16)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%ES3E_UNK($",hex(!Input1, 2),", $",hex(!Input2, 2),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op63()
	%readbyte(Input1)
	%readword(Input2)
	!Input3 #= !Input2+($!Bank<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%ES3F_UNK($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op64()
	%readword(Input1)
if !Pass == 1
	print "	%ES40_ExecuteSimulEvent($",hex(!Input2, 4),")"
endif
endmacro

macro Op65()
	%readword(Input1)
if !Pass == 1
	print "	%ES41_BranchIf00316DEquals3(DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op66()
	%readword(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%ES42_UNK($",hex(!Input1, 4),", $",hex(!Input2, 4),")"
endif
endmacro

macro Op67()
if !Pass == 1
	print "	%ES43_UNK"
endif
endmacro

macro Op68()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES44_UNK($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op69()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES45_UNK($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op70()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES46_UNK($",hex(!Input1, 2),")"
endif
endmacro

macro Op71()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES47_UNK($",hex(!Input1, 2),")"
endif
endmacro

macro Op72()
if !Pass == 1
	print "	%ES48_UNKEngageBattle()"
endif
endmacro

macro Op73()
if !Pass == 1
	print "	%ES49_EngageBattleFormationFrom00700E()"
endif
endmacro

macro Op74()
	%readword(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES4A_EngageBattle($",hex(!Input1, 4),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op75()
	%readword(Input1)
if !Pass == 1
	print "	%ES4B_LeadToWorldMapPoint($",hex(!Input1, 4),")"
endif
endmacro

macro Op76()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES4C_OpenShopMenu($",hex(!Input1, 2),")"
endif
endmacro

macro Op77()
if !Pass == 1
	print "	%ES4D_UNK()"
endif
endmacro

macro Op78()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES4E_ExecuteEventCategory($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op79()
	%readbyte(Input1)
if !Pass == 1
	!TEMP = "NULL"
	if !Input1 == $00
		!TEMP = "FileSelect"
	elseif !Input1 == $01
		!TEMP = "PauseMenu"
	elseif !Input1 == $02
		!TEMP = "WorldMap"
	elseif !Input1 == $03
		!TEMP = "Shop"
	elseif !Input1 == $04
		!TEMP = "SaveGame"
	elseif !Input1 == $05
		!TEMP = "MaxedOutItems"
	endif
	print "	%ES4F_OpenMenu($",hex(!Input1, 2),")"
endif
endmacro

macro Op80()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES50_GiveItem($",hex(!Input1, 2),")"
endif
endmacro

macro Op81()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES51_TakeItem($",hex(!Input1, 2),")"
endif
endmacro

macro Op82()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES52_GiveCoins($",hex(!Input1, 2),")"
endif
endmacro

macro Op83()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES53_GiveFrogCoins($",hex(!Input1, 2),")"
endif
endmacro

macro Op84()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES54_EquipItemToChar($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op85()
if !Pass == 1
	print "	%ES55_GetAvailableItemSlots()"
endif
endmacro

macro Op86()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES56_SubtractHPFromChar($",hex(!Input1, 2),")"
endif
endmacro

macro Op87()
if !Pass == 1
	print "	%ES57_SubtractFP()"
endif
endmacro

macro Op88()
if !Pass == 1
	print "	%ES58_StoreCurrentFP()"
endif
endmacro

macro Op89()
if !Pass == 1
	print "	%ES59_UNK()"
endif
endmacro

macro Op90()
if !Pass == 1
	print "	%ES5A_UNK()"
endif
endmacro

macro Op91()
if !Pass == 1
	print "	%ES5B_UNK()"
endif
endmacro

macro Op92()
	%readword(Input1)
if !Pass == 1
	print "	%ES5C_ReadFromAddress($",hex(!Input2, 4),")"
endif
endmacro

macro Op93()
if !Pass == 1
	print "	%ES5D_Load00600F()"
endif
endmacro

macro Op94()
if !Pass == 1
	print "	%ES5E_UNK()"
endif
endmacro

macro Op95()
if !Pass == 1
	print "	%ES5F_UNK()"
endif
endmacro

macro Op96()
	%readword(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES60_ExecuteDialogue($",hex(!Input1, 4),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op97()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES61_WalkAroundDialogueFrom007000($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op98()
	%readword(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES62_WalkAroundDialogue($",hex(!Input1, 4),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op99()
if !Pass == 1
	print "	%ES63_UNK()"
endif
endmacro

macro Op100()
if !Pass == 1
	print "	%ES64_UNK()"
endif
endmacro

macro Op101()
if !Pass == 1
	print "	%ES65_UNK()"
endif
endmacro

macro Op102()
	%readword(Input1)
	!Input2 #= !Input1+($!Bank<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%ES66_Process2ndDialogueOption(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op103()
	%readword(Input1)
	%readword(Input2)
	!Input3 #= !Input1+($!Bank<<16)
	%HandleJump(!Input3)
	!Input3 #= !Input2+($!Bank<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%ES67_Process2ndOr3rdDialogueOption(DATA_!Bank",hex(!Input1, 4),", DATA_!Bank",hex(!Input2, 2),")"
endif
endmacro

macro Op104()
	%readword(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
if !Pass == 1
	print "	%ES68_EnterNewArea($",hex(!Input1, 4),", $",hex(!Input2, 2),", $",hex(!Input3, 2),", $",hex(!Input4, 2),")"
endif
endmacro

macro Op105()
if !Pass == 1
	print "	%ES69_UNK()"
endif
endmacro

macro Op106()
	%readword(Input1)
if !Pass == 1
	print "	%ES6A_ChangeAreaGFX($",hex(!Input1, 4),")"
endif
endmacro

macro Op107()
	%readword(Input1)
if !Pass == 1
	print "	%ES6B_ChangeAreaCollison($",hex(!Input1, 4),")"
endif
endmacro

macro Op108()
if !Pass == 1
	print "	%ES6C_UNK()"
endif
endmacro

macro Op109()
if !Pass == 1
	print "	%ES6D_UNK()"
endif
endmacro

macro Op110()
if !Pass == 1
	print "	%ES6E_UNK()"
endif
endmacro

macro Op111()
if !Pass == 1
	print "	%ES6F_UNK()"
endif
endmacro

macro Op112()
if !Pass == 1
	print "	%ES70_LightenScreenWithFollowingCode()"
endif
endmacro

macro Op113()
if !Pass == 1
	print "	%ES71_LightenScreenBeforeFollowingCode()"
endif
endmacro

macro Op114()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES72_LightenScreenWithFollowingCode($",hex(!Input1, 2),")"
endif
endmacro

macro Op115()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES73_LightenScreenBeforeFollowingCode($",hex(!Input1, 2),")"
endif
endmacro

macro Op116()
if !Pass == 1
	print "	%ES74_DarkenScreenWithFollowingCode()"
endif
endmacro

macro Op117()
if !Pass == 1
	print "	%ES75_DarkenScreenBeforeFollowingCode()"
endif
endmacro

macro Op118()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES76_DarkenScreenWithFollowingCode($",hex(!Input1, 2),")"
endif
endmacro

macro Op119()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES77_DarkenScreenBeforeFollowingCode($",hex(!Input1, 2),")"
endif
endmacro

macro Op120()
if !Pass == 1
	print "	%ES78_UNK()"
endif
endmacro

macro Op121()
if !Pass == 1
	print "	%ES79_UNK()"
endif
endmacro

macro Op122()
if !Pass == 1
	print "	%ES7A_UNK()"
endif
endmacro

macro Op123()
if !Pass == 1
	print "	%ES7B_UNK()"
endif
endmacro

macro Op124()
if !Pass == 1
	print "	%ES7C_UNK()"
endif
endmacro

macro Op125()
if !Pass == 1
	print "	%ES7D_UNK()"
endif
endmacro

macro Op126()
if !Pass == 1
	print "	%ES7E_UNK()"
endif
endmacro

macro Op127()
if !Pass == 1
	print "	%ES7F_UNK()"
endif
endmacro

macro Op128()
if !Pass == 1
	print "	%ES80_UNK()"
endif
endmacro

macro Op129()
if !Pass == 1
	print "	%ES81_UNK()"
endif
endmacro

macro Op130()
if !Pass == 1
	print "	%ES82_UNK()"
endif
endmacro

macro Op131()
if !Pass == 1
	print "	%ES83_UNK()"
endif
endmacro

macro Op132()
if !Pass == 1
	print "	%ES84_UNK()"
endif
endmacro

macro Op133()
if !Pass == 1
	print "	%ES85_UNK()"
endif
endmacro

macro Op134()
if !Pass == 1
	print "	%ES86_UNK()"
endif
endmacro

macro Op135()
if !Pass == 1
	print "	%ES87_UNK()"
endif
endmacro

macro Op136()
if !Pass == 1
	print "	%ES88_UNK()"
endif
endmacro

macro Op137()
if !Pass == 1
	print "	%ES89_UNK()"
endif
endmacro

macro Op138()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES8A_ChangePalette(",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op139()
if !Pass == 1
	print "	%ES8B_UNK()"
endif
endmacro

macro Op140()
if !Pass == 1
	print "	%ES8C_UNK()"
endif
endmacro

macro Op141()
if !Pass == 1
	print "	%ES8D_UNK()"
endif
endmacro

macro Op142()
if !Pass == 1
	print "	%ES8E_UNK()"
endif
endmacro

macro Op143()
if !Pass == 1
	print "	%ES8F_UNK()"
endif
endmacro

macro Op144()
if !Pass == 1
	print "	%ES90_UNK()"
endif
endmacro

macro Op145()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES91_PlayMusic($",hex(!Input1, 2),")"
endif
endmacro

macro Op146()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES92_FadeInMusic($",hex(!Input1, 2),")"
endif
endmacro

macro Op147()
if !Pass == 1
	print "	%ES93_FadeoutMusic()"
endif
endmacro

macro Op148()
if !Pass == 1
	print "	%ES94_StopMusic()"
endif
endmacro

macro Op149()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES95_FadeOutMusic($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op150()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES96_UNK(",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op151()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES97_UNK($",hex(!Input1, 2),",$",hex(!Input2, 2),")"
endif
endmacro

macro Op152()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES98_ChangeMusicPitch($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op153()
if !Pass == 1
	print "	%ES99_UNK()"
endif
endmacro

macro Op154()
if !Pass == 1
	print "	%ES9A_UNK()"
endif
endmacro

macro Op155()
if !Pass == 1
	print "	%ES9B_StopSoundEffect()"
endif
endmacro

macro Op156()
	%readbyte(Input1)
if !Pass == 1
	print "	%ES9C_PlaySoundEffect($",hex(!Input1, 2),")"
endif
endmacro

macro Op157()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES9D_PlaySoundEffect($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op158()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES9E_UNK($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op159()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ES9F_UNK($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op160()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESA0_SetEventFlag($",hex(!Input1, 2),")"
endif
endmacro

macro Op161()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESA1_SetEventFlag($",hex(!Input1, 2),")"
endif
endmacro

macro Op162()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESA2_SetEventFlag($",hex(!Input1, 2),")"
endif
endmacro

macro Op163()
if !Pass == 1
	print "	%ESA3_SetEventFlagFrom007000()"
endif
endmacro

macro Op164()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESA4_ClearEventFlag($",hex(!Input1, 2),")"
endif
endmacro

macro Op165()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESA5_ClearEventFlag($",hex(!Input1, 2),")"
endif
endmacro

macro Op166()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESA6_ClearEventFlag($",hex(!Input1, 2),")"
endif
endmacro

macro Op167()
if !Pass == 1
	print "	%ESA7_ClearEventFlagFrom007000()"
endif
endmacro

macro Op168()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ESA8_StoreByteToTable0070A0($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op169()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ESA9_AddByteToTable0070A0($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op170()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESAA_IncrementByteInTable0070A0($",hex(!Input1, 2),")"
endif
endmacro

macro Op171()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESAB_DecrementByteInTable0070A0($",hex(!Input1, 2),")"
endif
endmacro

macro Op172()
	%readword(Input1)
if !Pass == 1
	print "	%ESAC_StoreByteTo007000($",hex(!Input1, 4),")"
endif
endmacro

macro Op173()
	%readword(Input1)
if !Pass == 1
	print "	%ESAD_AddByteTo007000($",hex(!Input1, 4),")"
endif
endmacro

macro Op174()
if !Pass == 1
	print "	%ESAE_Increment007000()"
endif
endmacro

macro Op175()
if !Pass == 1
	print "	%ESAF_Decrement007000()"
endif
endmacro

macro Op176()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%ESB0_StoreByteToTable007000($",hex(!Input1, 2),", $",hex(!Input2, 4),")"
endif
endmacro

macro Op177()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%ESB1_AddByteToTable007000($",hex(!Input1, 2),", $",hex(!Input2, 4),")"
endif
endmacro

macro Op178()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESB2_IncrementByteInTable007000($",hex(!Input1, 2),")"
endif
endmacro

macro Op179()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESB3_DecrementByteInTable007000($",hex(!Input1, 2),")"
endif
endmacro

macro Op180()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESB4_StoreTable0070A0ByteTo007000($",hex(!Input1, 2),")"
endif
endmacro

macro Op181()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESB5_StoreTable007000ByteTo0070A0($",hex(!Input1, 2),")"
endif
endmacro

macro Op182()
	%readword(Input1)
if !Pass == 1
	print "	%ESB6_GetRNGValue($",hex(!Input1, 4),")"
endif
endmacro

macro Op183()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%ESB7_GetRNGValue($",hex(!Input1, 2)," : dw $",hex(!Input2, 4),")"
endif
endmacro

macro Op184()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESB8_AddTable007000ByteTo007000($",hex(!Input1, 2),")"
endif
endmacro

macro Op185()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESB9_SubtractTable007000ByteTo007000($",hex(!Input1, 2),")"
endif
endmacro

macro Op186()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESBA_StoreTable007000ByteTo007000($",hex(!Input1, 2),")"
endif
endmacro

macro Op187()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESBB_Store007000ByteToTable007000($",hex(!Input1, 2),")"
endif
endmacro

macro Op188()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ESBC_StoreTable007000ByteToTable007000($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op189()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%ESBD_SwapTable007000Bytes($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op190()
if !Pass == 1
	print "	%ESBE_StoreTable007010toTable007016()"
endif
endmacro

macro Op191()
if !Pass == 1
	print "	%ESBF_StoreTable007016toTable007010()"
endif
endmacro

macro Op192()
	%readword(Input1)
if !Pass == 1
	print "	%ESC0_Compare007000ToByte($",hex(!Input1, 4),")"
endif
endmacro

macro Op193()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESC1_CompareTable007000To007000($",hex(!Input1, 2),")"
endif
endmacro

macro Op194()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%ESC2_CompareTable007000ToByte($",hex(!Input1, 2)," : dw $",hex(!Input1, 4),")"
endif
endmacro

macro Op195()
if !Pass == 1
	print "	%ESC3_StoreAreaByteTo007000()"
endif
endmacro

macro Op196()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESC4_UNK($",hex(!Input1, 2),")"
endif
endmacro

macro Op197()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESC5_UNK($",hex(!Input1, 2),")"
endif
endmacro

macro Op198()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESC6_StoreZCoordOfObjTo007000($",hex(!Input1, 2),")"
endif
endmacro

macro Op199()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESC7_UNK($",hex(!Input1, 2),")"
endif
endmacro

macro Op200()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESC8_UNK($",hex(!Input1, 2),")"
endif
endmacro

macro Op201()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESC9_UNK($",hex(!Input1, 2),")"
endif
endmacro

macro Op202()
if !Pass == 1
	print "	%ESCA_StoreHeldControllerInputTo007000()"
endif
endmacro

macro Op203()
if !Pass == 1
	print "	%ESCB_StorePressedControllerInputTo007000()"
endif
endmacro

macro Op204()
if !Pass == 1
	print "	%ESCC_UNK()"
endif
endmacro

macro Op205()
if !Pass == 1
	print "	%ESCD_UNK()"
endif
endmacro

macro Op206()
if !Pass == 1
	print "	%ESCE_UNK()"
endif
endmacro

macro Op207()
if !Pass == 1
	print "	%ESCF_UNK()"
endif
endmacro

macro Op208()
	%readword(Input1)
if !Pass == 1
	print "	%ESD0_ExecuteNextEvent($",hex(!Input1, 4),")"
endif

	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op209()
	%readword(Input1)
if !Pass == 1
	print "	%ESD1_ExecuteEvent($",hex(!Input1, 4),")"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op210()
	%readword(Input1)
	!Input2 #= !Input1+($!Bank<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%ESD2_JumpToAddr(DATA_!Bank",hex(!Input1, 4),")"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op211()
	%readword(Input1)
	!Input2 #= !Input1+($!Bank<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%ESD3_JumpToSubroutine(DATA_!Bank",hex(!Input1, 4),")"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op212()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESD4_RepeatSegmentedFunction(",hex(!Input1, 2),")"
endif
endmacro

macro Op213()
	%readword(Input1)
if !Pass == 1
	print "	%ESD5_UNK($",hex(!Input1, 4),")"
endif
endmacro

macro Op214()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESD6_Store007000ToObjMem($",hex(!Input1, 2),")"
endif
endmacro

macro Op215()
if !Pass == 1
	print "	%ESD7_EndSegmentedFunction()"
endif
endmacro

macro Op216()
	%readbyte(Input1)
	%readword(Input2)
	!Input3 #= !Input2+($!Bank<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%ESD8_BranchIfFlagSet($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op217()
	%readbyte(Input1)
	%readword(Input2)
	!Input3 #= !Input2+($!Bank<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%ESD9_BranchIfFlagSet($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op218()
	%readbyte(Input1)
	%readword(Input2)
	!Input3 #= !Input2+($!Bank<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%ESDA_BranchIfFlagSet($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op219()
	%readword(Input1)
	!Input2 #= !Input1+($!Bank<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%ESDB_BranchIfFlagSet(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op220()
	%readbyte(Input1)
	%readword(Input2)
	!Input3 #= !Input2+($!Bank<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%ESDC_BranchIfFlagClear($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op221()
	%readbyte(Input1)
	%readword(Input2)
	!Input3 #= !Input2+($!Bank<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%ESDD_BranchIfFlagClear($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op222()
	%readbyte(Input1)
	%readword(Input2)
	!Input3 #= !Input2+($!Bank<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%ESDE_BranchIfFlagClear($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op223()
	%readword(Input1)
	!Input2 #= !Input1+($!Bank<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%ESDF_BranchIfFlagClear(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op224()
	%readbyte(Input1)
	%readbyte(Input2)
	%readword(Input3)
	!Input4 #= !Input3+($!Bank<<16)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%ESE0_BranchIfMemEqualsValue($",hex(!Input1, 2),", $",hex(!Input2, 2),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op225()
	%readbyte(Input1)
	%readbyte(Input2)
	%readword(Input3)
	!Input4 #= !Input3+($!Bank<<16)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%ESE1_BranchIfMemNotEqualsValue($",hex(!Input1, 2),", $",hex(!Input2, 2),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op226()
	%readword(Input1)
	%readword(Input2)
	!Input3 #= !Input2+($!Bank<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%ESE2_BranchIf007000EqualsValue($",hex(!Input1, 4),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op227()
	%readword(Input1)
	%readword(Input2)
	!Input3 #= !Input2+($!Bank<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%ESE3_BranchIf007000NotEqualsValue($",hex(!Input1, 4),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op228()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
	!Input4 #= !Input3+($!Bank<<16)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%ESE4_BranchIfTable007000EqualsValue($",hex(!Input1, 2),", $",hex(!Input2, 4),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op229()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
	!Input4 #= !Input3+($!Bank<<16)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%ESE5_BranchIfTable007000NotEqualsValue($",hex(!Input1, 2),", $",hex(!Input2, 4),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op230()
	%readword(Input1)
	%readword(Input2)
	!Input3 #= !Input2+($!Bank<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%ESE6_BranchIfNo007000BitsSet($",hex(!Input1, 4),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op231()
	%readword(Input1)
	%readword(Input2)
	!Input3 #= !Input2+($!Bank<<16)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%ESE7_BranchIfAny007000BitsSet($",hex(!Input1, 4),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op232()
	%readword(Input1)
	!Input2 #= !Input1+($!Bank<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%ESE8_BranchIfGenRNGValGreaterThan128(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op233()
	%readword(Input1)
	!Input2 #= !Input1+($!Bank<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%ESE9_BranchIfGenRNGValGreaterThan66(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op234()
	%readword(Input1)
	!Input2 #= !Input1+($!Bank<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%ESEA_BranchIfBit1OfTable0070A0Set(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op235()
	%readword(Input1)
	!Input2 #= !Input1+($!Bank<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%ESEB_BranchIfBit1OfTable0070A0Clear(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op236()
	%readword(Input1)
	!Input2 #= !Input1+($!Bank<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%ESEC_BranchIfBit0OfTable0070A0Set(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op237()
	%readword(Input1)
	!Input2 #= !Input1+($!Bank<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%ESED_BranchIfBit1OfTable0070A0Clear(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op238()
	%readword(Input1)
	!Input2 #= !Input1+($!Bank<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%ESEE_BranchIfBit7OfTable0070A0Set(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op239()
	%readword(Input1)
	!Input2 #= !Input1+($!Bank<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%ESEF_BranchIfBit7OfTable0070A0Clear(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op240()
	%readbyte(Input1)
if !Pass == 1
	print "	%ESF0_SetFrameDuration($",hex(!Input1, 2),")"
endif
endmacro

macro Op241()
	%readword(Input1)
if !Pass == 1
	print "	%ESF1_SetFrameDuration($",hex(!Input1, 4),")"
endif
endmacro

macro Op242()
	%readword(Input1)
if !Pass == 1
	print "	%ESF2_UNK($",hex(!Input1, 4),")"
endif
endmacro

macro Op243()
	%readword(Input1)
if !Pass == 1
	print "	%ESF3_UNK($",hex(!Input1, 4),")"
endif
endmacro

macro Op244()
if !Pass == 1
	print "	%ESF4_UNK()"
endif
endmacro

macro Op245()
if !Pass == 1
	print "	%ESF5_UNK()"
endif
endmacro

macro Op246()
if !Pass == 1
	print "	%ESF6_UNK()"
endif
endmacro

macro Op247()
if !Pass == 1
	print "	%ESF7_UNK()"
endif
endmacro

macro Op248()
	%readbyte(Input1)
	%readbyte(Input2)
	%readword(Input3)
	!Input4 #= !Input3+($!Bank<<16)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%ESF8_BranchIfCharInParty($",hex(!Input1, 2),", $",hex(!Input2, 2),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op249()
if !Pass == 1
	print "	%ESF9_RestartEventStringFromStart()"
endif
endmacro

macro Op250()
if !Pass == 1
	print "	%ESFA_RestartEventStringFromStart()"
endif
endmacro

macro Op251()
if !Pass == 1
	print "	%ESFB_ResetAndChooseGame()"
endif
endmacro

macro Op252()
if !Pass == 1
	print "	%ESFC_ResetGame()"
endif
endmacro

macro Op253()
	!TEMP = 0
	%readbyte(Input1)
if !Input1 = $33
	!TEMP = 1
	%readbyte(Input2)
	%readword(Input3)
elseif !Input1 = $34
	!TEMP = 1
	%readbyte(Input2)
	%readword(Input3)
elseif !Input1 = $3D
	!TEMP = 1
	%readbyte(Input2)
	%readword(Input3)
elseif !Input1 = $3E
	!TEMP = 2
	%readbyte(Input2)
	%readword(Input3)
	%readword(Input4)
elseif !Input1 = $3F
	!TEMP = 3
	%readword(Input2)
elseif !Input1 = $46
	!TEMP = 4
	%readword(Input2)
elseif !Input1 = $4C
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $4D
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $58
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $5D
	!TEMP = 6
	%readbyte(Input2)
	%readbyte(Input3)
elseif !Input1 = $62
	!TEMP = 3
	%readword(Input2)
elseif !Input1 = $66
	!TEMP = 6
	%readbyte(Input2)
	%readbyte(Input3)
elseif !Input1 = $88
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $89
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $8A
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $8B
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $8C
	!TEMP = 7
	%readword(Input2)
	%readbyte(Input3)
elseif !Input1 = $8E
	!TEMP = 7
	%readword(Input2)
	%readbyte(Input3)
elseif !Input1 = $8F
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $90
	!TEMP = 6
	%readbyte(Input2)
	%readbyte(Input3)
elseif !Input1 = $94
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $95
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $96
	!TEMP = 1
	%readbyte(Input2)
	%readword(Input3)
elseif !Input1 = $97
	!TEMP = 1
	%readbyte(Input2)
	%readword(Input3)
elseif !Input1 = $98
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $9C
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $9D
	!TEMP = 6
	%readbyte(Input2)
	%readbyte(Input3)
elseif !Input1 = $9E
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $A8
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $A9
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $AA
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $AC
	!TEMP = 3
	%readword(Input2)
elseif !Input1 = $B0
	!TEMP = 3
	%readword(Input2)
elseif !Input1 = $B1
	!TEMP = 3
	%readword(Input2)
elseif !Input1 = $B2
	!TEMP = 3
	%readword(Input2)
elseif !Input1 = $B3
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $B4
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $B5
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $B6
	!TEMP = 6
	%readbyte(Input2)
	%readbyte(Input3)
elseif !Input1 = $B7
	!TEMP = 5
	%readbyte(Input2)
elseif !Input1 = $C8
	!TEMP = 6
	%readbyte(Input2)
	%readbyte(Input3)
elseif !Input1 = $F0
	!TEMP = 2
	%readbyte(Input2)
	%readword(Input3)
	%readword(Input4)
endif
if !Pass == 1
	if !TEMP = 1
		print "	%ESFD_ExtendedFunction",hex(!Input1, 2),"($",hex(!Input2, 2),", DATA_!Bank",hex(!Input3, 4),")"
	elseif !TEMP = 2
		print "	%ESFD_ExtendedFunction",hex(!Input1, 2),"($",hex(!Input2, 2),", $",hex(!Input3, 2),", DATA_!Bank",hex(!Input4, 4),")"
	elseif !TEMP = 3
		print "	%ESFD_ExtendedFunction",hex(!Input1, 2),"(DATA_!Bank",hex(!Input2, 4),")"
	elseif !TEMP = 4
		print "	%ESFD_ExtendedFunction",hex(!Input1, 2),"($",hex(!Input2, 4),")"
	elseif !TEMP = 5
		print "	%ESFD_ExtendedFunction",hex(!Input1, 2),"($",hex(!Input2, 2),")"
	elseif !TEMP = 6
		print "	%ESFD_ExtendedFunction",hex(!Input1, 2),"($",hex(!Input2, 2),", $",hex(!Input3, 2),")"
	elseif !TEMP = 6
		print "	%ESFD_ExtendedFunction",hex(!Input1, 2),"($",hex(!Input2, 4),", $",hex(!Input3, 2),")"
	else
		print "	%ESFD_ExtendedFunction",hex(!Input1, 2),"()"
	endif
endif
endmacro

macro Op254()
if !Pass == 1
	print "	%ESFE_EndEvent()"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op255()
if !Pass == 1
	print "	%ESFF_End()"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro HandleES00To2F(Obj, Byte)
!TEMP1 = 0
!TEMP2 = 0
!TEMP3 = 0
!TEMP4 = 0
!TEMP5 = 0
;if <Byte> >= $08
	%readbyte(Input2)
	%readbyte(Input3)
;endif
	print "	%ES<Byte>_ObjStr(<Obj>, $<Byte>, !TEMP1, !TEMP2, TEMP3, TEMP4, !TEMP5)"
endmacro

org !ROMOffset
if !DoTwoPassesFlag == 1
	while !ByteCounter < !MaxBytes
		%GetOpcode()
		%Op!Input1()
		!LoopCounter #= !LoopCounter+1
	endif
	!LoopCounter #= 0
	!ByteCounter #= 0
endif
	!Pass = 1
while !ByteCounter < !MaxBytes
	%PrintLabel(!CurrentOffset)
	%GetOpcode()
	%Op!Input1()
	!LoopCounter #= !LoopCounter+1
endif

!Input1 #= !ROMOffset+!ByteCounter
print "Disassembly has ended at $",hex(!ROMOffset+!ByteCounter, 6)
