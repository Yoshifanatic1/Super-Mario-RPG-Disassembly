@asar 1.81

incsrc "DisScriptEntityNames.asm"

; Modify these as needed
sa1rom
!ROMOffset = $F932AA				; The ROM offset to begin disassembly from.
!Bank = F9					; Affects the bank byte for the label used in JSR/JMP instructions.
!DoTwoPassesFlag = 1				; If 1, the script will run twice, with the purpose of generating labels that appear before the branch that points to it. Turning this on may slow down disassembly speed, however.
!MaxBytes = 10058				; The maximum amount of bytes that will be read at a time. Setting this lower/higher will speed up/slow down disassembly.

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

macro Op224()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%GetAttackName(Input1, TEMP1)
	%GetAttackName(Input2, TEMP2)
	%GetAttackName(Input3, TEMP3)
if !Pass == 1
	print "	%BSE0_ChooseFrom3RandomAttacks(!TEMP1, !TEMP2, !TEMP3)"
endif
endmacro

macro Op226()
	%readbyte(Input1)
	%GetTargetName(Input1, TEMP1)
if !Pass == 1
	print "	%BSE2_TargetXX(!TEMP1)"
endif
endmacro

macro Op227()
	%readbyte(Input1)
if !Pass == 1
	print "	%BSE3_BattleDialogue($",hex(!Input1, 2),")"
endif
endmacro

macro Op229()
	%readbyte(Input1)
	%GetBattleEventName(Input1, TEMP1)
if !Pass == 1
	print "	%BSE5_BattleScene(!TEMP1)"
endif
endmacro

macro Op230()
	%readbyte(Input1)
	%readbyte(Input2)
	%IncOrDecChoiceName(Input1, TEMP1)
if !Pass == 1
	print "	%BSE6_IncOrDecVariableXX(!TEMP1, $",hex(!Input2, 2),")"
endif
endmacro

macro Op231()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%SetOrClearBitsChoiceName(Input1, TEMP1)
if !Pass == 1
	print "	%BSE7_SetOrClearVariableXXBits(!TEMP1, $",hex(!Input2, 2),", $",hex(!Input3, 2),")"
endif
endmacro

macro Op232()
	%readbyte(Input1)
if !Pass == 1
	print "	%BSE8_ClearVariableXX($",hex(!Input1, 2),")"
endif
endmacro

macro Op234()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%RemoveOrCallTargetChoiceName(Input1, TEMP1)
	%GetTargetName(Input3, TEMP3)
if !Pass == 1
	print "	%BSEA_RemoveOrCallTargetFromBattle(!TEMP1, !TEMP3)"
endif
endmacro

macro Op235()
	%readbyte(Input1)
	%readbyte(Input2)
	%YesOrNoChoiceName(Input1, TEMP1)
	%GetTargetName(Input2, TEMP2)
if !Pass == 1
	print "	%BSEB_MakeTargetInvincible(!TEMP1, !TEMP2)"
endif
endmacro

macro Op236()
if !Pass == 1
	print "	%BSEC_ExitBattle()"
endif
endmacro

macro Op237()
	%readbyte(Input1)
if !Pass == 1
	print "	%BSED_GetRNGValue($",hex(!Input1, 2),")"
endif
endmacro

macro Op239()
	%readbyte(Input1)
	%GetSpellName(Input1, TEMP1)
if !Pass == 1
	print "	%BSEF_ChooseSpell(!TEMP1)"
endif
endmacro

macro Op240()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%GetSpellName(Input1, TEMP1)
	%GetSpellName(Input2, TEMP2)
	%GetSpellName(Input3, TEMP3)
if !Pass == 1
	print "	%BSF0_ChooseRandomSpell(!TEMP1, !TEMP2, !TEMP3)"
endif
endmacro

macro Op241()
	%readbyte(Input1)
if !Pass == 1
	print "	%BSF1_ExecuteAnimation($",hex(!Input1, 2),")"
endif
endmacro

macro Op242()
	%readbyte(Input1)
	%readbyte(Input2)
	%YesOrNoChoiceName(Input1, TEMP1)
	%GetTargetName(Input2, TEMP2)
if !Pass == 1
	print "	%BSF2_MonsterXXIsUntargetable(!TEMP1, !TEMP2)"
endif
endmacro

macro Op243()
	%readbyte(Input1)
	%readbyte(Input2)
	%EnableOrDisableChoiceName(Input1, TEMP1)
	!Input3 #= !Input2&$01
	%PlayerCommandChoiceName(Input3, TEMP2)
	!Input3 #= !Input2&$02
	%PlayerCommandChoiceName(Input3, TEMP3)
	!Input3 #= !Input2&$04
	%PlayerCommandChoiceName(Input3, TEMP4)
if !Pass == 1
	print "	%BSF3_TogglePlayerCommands(!TEMP1, !TEMP2, !TEMP3, !TEMP4)"
endif
endmacro

macro Op244()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%TakeOrReturnItemsChoiceName(Input2, TEMP2)
if !Pass == 1
	print "	%BSF4_TakeOrReturnItems(!TEMP2)"
endif
endmacro

macro Op251()
if !Pass == 1
	print "	%BSFB_DoNothing()"
endif
endmacro

macro Op252()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%GetBSIfCommandName(Input1, Input2, Input3, TEMP1, TEMP2, TEMP3)
if !Pass == 1
	if !TEMP4 == 0
		print "	%BSFC_IfCommand(!TEMP1, !TEMP2, !TEMP3)"
	elseif !TEMP4 == 1
		print "	%BSFC_IfCommand(!TEMP1, $",hex(!TEMP2, 2),", !TEMP3)"
	elseif !TEMP4 == 2
		print "	%BSFC_IfCommand(!TEMP1, !TEMP2, $",hex(!TEMP3, 2),")"
	elseif !TEMP4 == 3
		print "	%BSFC_IfCommand(!TEMP1, $",hex(!TEMP2, 2),", $",hex(!TEMP3, 2),")"
	endif
endif
endmacro

macro Op253()
if !Pass == 1
	print "	%BSFD_Wait1Turn()"
endif
endmacro

macro Op254()
if !Pass == 1
	print "	%BSFE_Wait1TurnAndRecheckIfs()"
endif
endmacro

macro Op255()
	%readbyte(Input1)
if !Pass == 1
	if !Input1 == $FF
		print "	%BSFFFF_EndScript()"
		%DefineLabelAfterNoPassOpcode(!CurrentOffset)
	else
		!ByteCounter #= !ByteCounter-1
		!CurrentOffset #= !ROMOffset+!ByteCounter
		print "	%BSFF_EndIfAndOtherCommands()"
	endif
endif
endmacro

macro HandleES00To2F(Obj, Byte)
!TEMP1 = 0
!TEMP2 = 0
!TEMP3 = 0
!TEMP4 = 0
!TEMP5 = 0
if <Byte> >= $08
	%readbyte(Input2)
	%readbyte(Input3)
endif
if 
	print "	%BS<Byte>_ObjStr(<Obj>, $<Byte>, !TEMP1, !TEMP2, TEMP3, TEMP4, !TEMP5)"
endmacro

org !ROMOffset
if !DoTwoPassesFlag == 1
	!ByteCounter #= -512
	while !ByteCounter < 0
		%readword(Input1)
		!Input2 #= !Input1+($!Bank<<16)
		;print hex(!Input2)
		%DefineLabelAfterNoPassOpcode(!Input2)
	endif
	!LoopCounter #= 0
	!ByteCounter #= 0
	!CurrentOffset #= !ROMOffset+!ByteCounter
	while !ByteCounter < !MaxBytes
		%GetOpcode()
		if !Input1 < $E0
		else
			%Op!Input1()
		endif
		!LoopCounter #= !LoopCounter+1
	endif
	!LoopCounter #= 0
	!ByteCounter #= 0
	!CurrentOffset #= !ROMOffset+!ByteCounter
endif
	!Pass = 1
while !ByteCounter < !MaxBytes
	%PrintLabel(!CurrentOffset)
	%GetOpcode()
	if !Input1 < $E0
		%GetAttackName(Input1, TEMP1)
		print "	%BSXX_ChooseAttackOrSpecial(!TEMP1)"
	else
		%Op!Input1()
	endif
	!LoopCounter #= !LoopCounter+1
endif

!Input1 #= !ROMOffset+!ByteCounter
;print ";Disassembly has ended at $",hex(!ROMOffset+!ByteCounter, 6)
