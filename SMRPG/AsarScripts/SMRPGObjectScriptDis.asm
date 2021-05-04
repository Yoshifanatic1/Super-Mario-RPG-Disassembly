includefrom SMRPGEventScriptDis.asm

macro OSOp0()
if !Pass == 1
	print "		%OS00_MakeObjectVisible()"
endif
endmacro

macro OSOp1()
if !Pass == 1
	print "		%OS01_MakeObjectInvisible()"
endif
endmacro

macro OSOp2()
if !Pass == 1
	print "		%OS02_EnableSequencePlayback()"
endif
endmacro

macro OSOp3()
if !Pass == 1
	print "		%OS03_DisableSequencePlayback()"
endif
endmacro

macro OSOp4()
if !Pass == 1
	print "		%OS04_EnableConstantSequencePlayback()"
endif
endmacro

macro OSOp5()
if !Pass == 1
	print "		%OS05_DisableConstantSequencePlayback()"
endif
endmacro

macro OSOp6()
if !Pass == 1
	print "		%OS06_EnableMoonWalkTypeMovement()"
endif
endmacro

macro OSOp7()
if !Pass == 1
	print "		%OS07_DisableMoonWalkTypeMovement()"
endif
endmacro

macro OSOp8()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
if !Pass == 1
	print "		%OS08_SetAnimationSequence($",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),")"
endif
endmacro

macro OSOp9()
if !Pass == 1
	print "		%OS09_SetObjectToDefault()"
endif
endmacro

macro OSOp10()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS0A_StoreByteToObjectTable0A($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp11()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS0B_SetBitsOfObjectTable0A($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp12()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS0C_XORBitsOfObjectTable0A($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp13()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS0D_UNK($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp14()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS0E_UNK($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp15()
if !Pass == 1
	print "		%OS0F_UNK()"
endif
endmacro

macro OSOp16()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS10_SetTransitionSequenceFlags($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp17()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS11_SetBitsOfObjectTable0D($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp18()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS12_SetBitsOfObjectTable0B($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp19()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS13_SetLayeringPriority($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp20()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS14_SetBitsOfObjectTable0E($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp21()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS15_SetBitsOfObjectTable0C($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp22()
if !Pass == 1
	print "		%OS16_UNK()"
endif
endmacro

macro OSOp23()
if !Pass == 1
	print "		%OS17_UNK()"
endif
endmacro

macro OSOp24()
if !Pass == 1
	print "		%OS18_UNK()"
endif
endmacro

macro OSOp25()
if !Pass == 1
	print "		%OS19_UNK()"
endif
endmacro

macro OSOp26()
if !Pass == 1
	print "		%OS1A_UNK()"
endif
endmacro

macro OSOp27()
if !Pass == 1
	print "		%OS1B_UNK()"
endif
endmacro

macro OSOp28()
if !Pass == 1
	print "		%OS1C_UNK()"
endif
endmacro

macro OSOp29()
if !Pass == 1
	print "		%OS1D_UNK()"
endif
endmacro

macro OSOp30()
if !Pass == 1
	print "		%OS1E_UNK()"
endif
endmacro

macro OSOp31()
if !Pass == 1
	print "		%OS1F_UNK()"
endif
endmacro

macro OSOp32()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS20_UNK($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp33()
if !Pass == 1
	print "		%OS21_UNK()"
endif
endmacro

macro OSOp34()
if !Pass == 1
	print "		%OS22_UNK()"
endif
endmacro

macro OSOp35()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS23_UNK($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp36()
	%readword(Input1)
	%readword(Input2)
if !Pass == 1
	print "		%OS24_UNK($",hex(!Input1, 4),", $",hex(!Input2, 4),")"
endif
endmacro

macro OSOp37()
	%readword(Input1)
	%readword(Input2)
if !Pass == 1
	print "		%OS25_UNK($",hex(!Input1, 4),", $",hex(!Input2, 4),")"
endif
endmacro

macro OSOp38()
	%readword(Input1)
	%readword(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
	%readword(Input5)
	%readword(Input6)
	%readword(Input7)
	%readword(Input8)
	%readbyte(Input9)
if !Pass == 1
	print "		%OS26_ExecuteAnimation($",hex(!Input1, 4),", $",hex(!Input2, 4),"), $",hex(!Input3, 2),"), $",hex(!Input4, 2),"), $",hex(!Input5, 4),", $",hex(!Input6, 4),", $",hex(!Input7, 4),", $",hex(!Input8, 4),", $",hex(!Input9, 2),")"
endif
endmacro

macro OSOp39()
	%readword(Input1)
	%readword(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
	%readword(Input5)
	%readword(Input6)
	%readword(Input7)
	%readword(Input8)
	%readbyte(Input9)
if !Pass == 1
	print "		%OS27_ExecuteAnimation($",hex(!Input1, 4),", $",hex(!Input2, 4),"), $",hex(!Input3, 2),"), $",hex(!Input4, 2),"), $",hex(!Input5, 4),", $",hex(!Input6, 4),", $",hex(!Input7, 4),", $",hex(!Input8, 4),", $",hex(!Input9, 2),")"
endif
endmacro

macro OSOp40()
	%readword(Input1)
	%readword(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
	%readword(Input5)
	%readword(Input6)
	%readword(Input7)
	%readword(Input8)
	%readbyte(Input9)
if !Pass == 1
	print "		%OS28_ExecuteAnimation($",hex(!Input1, 4),", $",hex(!Input2, 4),"), $",hex(!Input3, 2),"), $",hex(!Input4, 2),"), $",hex(!Input5, 4),", $",hex(!Input6, 4),", $",hex(!Input7, 4),", $",hex(!Input8, 4),", $",hex(!Input9, 2),")"
endif
endmacro

macro OSOp41()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS29_UNK($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp42()
if !Pass == 1
	print "		%OS2A_UNK()"
endif
endmacro

macro OSOp43()
	%readbyte(Input1)
	%readbyte(Input2)
	%readword(Input3)
if !Pass == 1
	print "		%OS2B_UNK($",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),")"
endif
endmacro

macro OSOp44()
	%readword(Input1)
if !Pass == 1
	print "		%OS2C_UNK($",hex(!Input1, 4),")"
endif
endmacro

macro OSOp45()
	%readword(Input1)
if !Pass == 1
	print "		%OS2D_UNK($",hex(!Input1, 4),")"
endif
endmacro

macro OSOp46()
	%readword(Input1)
if !Pass == 1
	print "		%OS2E_UNK($",hex(!Input1, 4),")"
endif
endmacro

macro OSOp47()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%readword(Input4)
	%readbyte(Input5)
if !Pass == 1
	print "		%OS2F_UNK($",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),", $",hex(!Input4, 4),", $",hex(!Input5, 2),")"
endif
endmacro

macro OSOp48()
	%readword(Input1)
if !Pass == 1
	print "		%OS30_UNK($",hex(!Input1, 4),")"
endif
endmacro

macro OSOp49()
	%readword(Input1)
if !Pass == 1
	print "		%OS31_UNK($",hex(!Input1, 4),")"
endif
endmacro

macro OSOp50()
	%readword(Input1)
if !Pass == 1
	print "		%OS32_UNK($",hex(!Input1, 4),")"
endif
endmacro

macro OSOp51()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "		%OS33_UNK($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro OSOp52()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS34_UNK($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp53()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "		%OS35_UNK($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro OSOp54()
if !Pass == 1
	print "		%OS36_UNK()"
endif
endmacro

macro OSOp55()
if !Pass == 1
	print "		%OS37_UNK()"
endif
endmacro

macro OSOp56()
if !Pass == 1
	print "		%OS38_UNK()"
endif
endmacro

macro OSOp57()
if !Pass == 1
	print "		%OS39_UNK()"
endif
endmacro

macro OSOp58()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
if !Pass == 1
	print "		%OS3A_UNK($",hex(!Input1, 2),", $",hex(!Input2, 4),", $",hex(!Input3, 2),")"
endif
endmacro

macro OSOp59()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
if !Pass == 1
	print "		%OS3B_UNK($",hex(!Input1, 2),", $",hex(!Input2, 4),", $",hex(!Input3, 2),")"
endif
endmacro

macro OSOp60()
	%readbyte(Input1)
	%readbyte(Input2)
	%readword(Input3)
if !Pass == 1
	print "		%OS3C_UNK($",hex(!Input1, 2),", $",hex(!Input2, 2),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro OSOp61()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "		%OS3D_UNK($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro OSOp62()
	%readbyte(Input1)
	%readbyte(Input2)
	%readword(Input3)
if !Pass == 1
	print "		%OS3E_UNK($",hex(!Input1, 2),", $",hex(!Input2, 2),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro OSOp63()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "		%OS3F_UNK($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro OSOp64()
if !Pass == 1
	print "		%OS40_UNK()"
endif
endmacro

macro OSOp65()
if !Pass == 1
	print "		%OS41_UNK()"
endif
endmacro

macro OSOp66()
if !Pass == 1
	print "		%OS42_UNK()"
endif
endmacro

macro OSOp67()
if !Pass == 1
	print "		%OS43_UNK()"
endif
endmacro

macro OSOp68()
if !Pass == 1
	print "		%OS44_UNK()"
endif
endmacro

macro OSOp69()
if !Pass == 1
	print "		%OS45_UNK()"
endif
endmacro

macro OSOp70()
if !Pass == 1
	print "		%OS46_UNK()"
endif
endmacro

macro OSOp71()
if !Pass == 1
	print "		%OS47_UNK()"
endif
endmacro

macro OSOp72()
if !Pass == 1
	print "		%OS48_UNK()"
endif
endmacro

macro OSOp73()
if !Pass == 1
	print "		%OS49_UNK()"
endif
endmacro

macro OSOp74()
if !Pass == 1
	print "		%OS4A_UNK()"
endif
endmacro

macro OSOp75()
if !Pass == 1
	print "		%OS4B_UNK()"
endif
endmacro

macro OSOp76()
if !Pass == 1
	print "		%OS4C_UNK()"
endif
endmacro

macro OSOp77()
if !Pass == 1
	print "		%OS4D_UNK()"
endif
endmacro

macro OSOp78()
if !Pass == 1
	print "		%OS4E_UNK()"
endif
endmacro

macro OSOp79()
if !Pass == 1
	print "		%OS4F_UNK()"
endif
endmacro

macro OSOp80()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS50_ShiftEast($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp81()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS51_ShiftSouthEast($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp82()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS52_ShiftSouth($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp83()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS53_ShiftSouthWest($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp84()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS54_ShiftWest($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp85()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS55_ShiftNorthWest($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp86()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS56_ShiftNorth($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp87()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS57_ShiftNorthEast($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp88()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS58_ShiftEast($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp89()
if !Pass == 1
	print "		%OS59_ShiftEast()"
endif
endmacro

macro OSOp90()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS5A_ShiftUp($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp91()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS5B_ShiftDown($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp92()
if !Pass == 1
	print "		%OS5C_ShiftInfinitelyUp()"
endif
endmacro

macro OSOp93()
if !Pass == 1
	print "		%OS5D_ShiftInfinitelyDown()"
endif
endmacro

macro OSOp94()
if !Pass == 1
	print "		%OS5E_UNK()"
endif
endmacro

macro OSOp95()
if !Pass == 1
	print "		%OS5F_UNK()"
endif
endmacro

macro OSOp96()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS60_ShiftSlightlyEast($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp97()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS61_ShiftSlightlySouthEast($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp98()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS62_ShiftSlightlySouth($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp99()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS63_ShiftSlightlySouthWest($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp100()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS64_ShiftSlightlyWest($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp101()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS65_ShiftSlightlyNorthWest($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp102()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS66_ShiftSlightlyNorth($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp103()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS67_ShiftSlightlyNorthEast($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp104()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS68_ShiftSlightlyEast($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp105()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS69_ShiftSlightlyEast($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp106()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS6A_ShiftSlightlyUp($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp107()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS6B_ContinuePreviousSequencePlayback($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp108()
if !Pass == 1
	print "		%OS6C_UNK()"
endif
endmacro

macro OSOp109()
if !Pass == 1
	print "		%OS6D_UNK()"
endif
endmacro

macro OSOp110()
if !Pass == 1
	print "		%OS6E_UNK()"
endif
endmacro

macro OSOp111()
if !Pass == 1
	print "		%OS6F_UNK()"
endif
endmacro

macro OSOp112()
if !Pass == 1
	print "		%OS70_FaceEast()"
endif
endmacro

macro OSOp113()
if !Pass == 1
	print "		%OS71_FaceSouthEast()"
endif
endmacro

macro OSOp114()
if !Pass == 1
	print "		%OS72_FaceSouth()"
endif
endmacro

macro OSOp115()
if !Pass == 1
	print "		%OS73_FaceSouthWest()"
endif
endmacro

macro OSOp116()
if !Pass == 1
	print "		%OS74_FaceWest()"
endif
endmacro

macro OSOp117()
if !Pass == 1
	print "		%OS75_FaceNorthWest()"
endif
endmacro

macro OSOp118()
if !Pass == 1
	print "		%OS76_FaceNorth()"
endif
endmacro

macro OSOp119()
if !Pass == 1
	print "		%OS77_FaceNorthEast()"
endif
endmacro

macro OSOp120()
if !Pass == 1
	print "		%OS78_FaceSouth()"
endif
endmacro

macro OSOp121()
if !Pass == 1
	print "		%OS79_TurnSouth()"
endif
endmacro

macro OSOp122()
if !Pass == 1
	print "		%OS7A_TurnRandomly()"
endif
endmacro

macro OSOp123()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS7B_UNK($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp124()
if !Pass == 1
	print "		%OS7C_FaceEast()"
endif
endmacro

macro OSOp125()
if !Pass == 1
	print "		%OS7D_FaceSouthWest()"
endif
endmacro

macro OSOp126()
	%readword(Input1)
if !Pass == 1
	print "		%OS7E_Jump($",hex(!Input1, 4),")"
endif
endmacro

macro OSOp127()
	%readword(Input1)
if !Pass == 1
	print "		%OS7F_JumpWithSound($",hex(!Input1, 4),")"
endif
endmacro

macro OSOp128()
	%readword(Input1)
if !Pass == 1
	print "		%OS80_ShiftToPlanarCoords($",hex(!Input1, 4),")"
endif
endmacro

macro OSOp129()
	%readword(Input1)
if !Pass == 1
	print "		%OS81_ShiftToPlanarUnits($",hex(!Input1, 4),")"
endif
endmacro

macro OSOp130()
	%readword(Input1)
if !Pass == 1
	print "		%OS82_TransferToPlanarCoords($",hex(!Input1, 4),")"
endif
endmacro

macro OSOp131()
	%readword(Input1)
if !Pass == 1
	print "		%OS83_TransferToPlanarUnits($",hex(!Input1, 4),")"
endif
endmacro

macro OSOp132()
	%readword(Input1)
if !Pass == 1
	print "		%OS84_TransferToPlanarPixels($",hex(!Input1, 4),")"
endif
endmacro

macro OSOp133()
if !Pass == 1
	print "		%OS85_UNK()"
endif
endmacro

macro OSOp134()
if !Pass == 1
	print "		%OS86_UNK()"
endif
endmacro

macro OSOp135()
	%readbyte(Input1)
if !Pass == 1
	print "		%OS87_TranserToXXsCoords($",hex(!Input1, 2),")"
endif
endmacro

macro OSOp136()
if !Pass == 1
	print "		%OS88_UNK()"
endif
endmacro

macro OSOp137()
if !Pass == 1
	print "		%OS89_UNK()"
endif
endmacro

macro OSOp138()
if !Pass == 1
	print "		%OS8A_UNK()"
endif
endmacro

macro OSOp139()
if !Pass == 1
	print "		%OS8B_UNK()"
endif
endmacro

macro OSOp140()
if !Pass == 1
	print "		%OS8C_UNK()"
endif
endmacro

macro OSOp141()
if !Pass == 1
	print "		%OS8D_UNK()"
endif
endmacro

macro OSOp142()
if !Pass == 1
	print "		%OS8E_UNK()"
endif
endmacro

macro OSOp143()
if !Pass == 1
	print "		%OS8F_UNK()"
endif
endmacro

macro OSOp144()
	%readword(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "		%OS90_BounceToCoords($",hex(!Input1, 4),", $",hex(!Input2, 2),")"
endif
endmacro

macro OSOp145()
	%readword(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "		%OS91_BounceToPlanarUnits($",hex(!Input1, 4),",$",hex(!Input2, 2),")"
endif
endmacro

macro OSOp146()
endmacro

macro OSOp147()
endmacro

macro OSOp148()
endmacro

macro OSOp149()
endmacro

macro OSOp150()
endmacro

macro OSOp151()
endmacro

macro OSOp152()
endmacro

macro OSOp153()
endmacro

macro OSOp154()
endmacro

macro OSOp155()
endmacro

macro OSOp156()
endmacro

macro OSOp157()
endmacro

macro OSOp158()
endmacro

macro OSOp159()
endmacro

macro OSOp160()
endmacro

macro OSOp161()
endmacro

macro OSOp162()
endmacro

macro OSOp163()
endmacro

macro OSOp164()
endmacro

macro OSOp165()
endmacro

macro OSOp166()
endmacro

macro OSOp167()
endmacro

macro OSOp168()
endmacro

macro OSOp169()
endmacro

macro OSOp170()
endmacro

macro OSOp171()
endmacro

macro OSOp172()
endmacro

macro OSOp173()
endmacro

macro OSOp174()
endmacro

macro OSOp175()
endmacro

macro OSOp176()
endmacro

macro OSOp177()
endmacro

macro OSOp178()
endmacro

macro OSOp179()
endmacro

macro OSOp180()
endmacro

macro OSOp181()
endmacro

macro OSOp182()
endmacro

macro OSOp183()
endmacro

macro OSOp184()
endmacro

macro OSOp185()
endmacro

macro OSOp186()
endmacro

macro OSOp187()
endmacro

macro OSOp188()
endmacro

macro OSOp189()
endmacro

macro OSOp190()
endmacro

macro OSOp191()
endmacro

macro OSOp192()
endmacro

macro OSOp193()
endmacro

macro OSOp194()
endmacro

macro OSOp195()
endmacro

macro OSOp196()
endmacro

macro OSOp197()
endmacro

macro OSOp198()
endmacro

macro OSOp199()
endmacro

macro OSOp200()
endmacro

macro OSOp201()
endmacro

macro OSOp202()
endmacro

macro OSOp203()
endmacro

macro OSOp204()
endmacro

macro OSOp205()
endmacro

macro OSOp206()
endmacro

macro OSOp207()
endmacro

macro OSOp208()
endmacro

macro OSOp209()
endmacro

macro OSOp210()
endmacro

macro OSOp211()
endmacro

macro OSOp212()
endmacro

macro OSOp213()
endmacro

macro OSOp214()
endmacro

macro OSOp215()
endmacro

macro OSOp216()
endmacro

macro OSOp217()
endmacro

macro OSOp218()
endmacro

macro OSOp219()
endmacro

macro OSOp220()
endmacro

macro OSOp221()
endmacro

macro OSOp222()
endmacro

macro OSOp223()
endmacro

macro OSOp224()
endmacro

macro OSOp225()
endmacro

macro OSOp226()
endmacro

macro OSOp227()
endmacro

macro OSOp228()
endmacro

macro OSOp229()
endmacro

macro OSOp230()
endmacro

macro OSOp231()
endmacro

macro OSOp232()
endmacro

macro OSOp233()
endmacro

macro OSOp234()
endmacro

macro OSOp235()
endmacro

macro OSOp236()
endmacro

macro OSOp237()
endmacro

macro OSOp238()
endmacro

macro OSOp239()
endmacro

macro OSOp240()
endmacro

macro OSOp241()
endmacro

macro OSOp242()
endmacro

macro OSOp243()
endmacro

macro OSOp244()
endmacro

macro OSOp245()
endmacro

macro OSOp246()
endmacro

macro OSOp247()
endmacro

macro OSOp248()
endmacro

macro OSOp249()
endmacro

macro OSOp250()
endmacro

macro OSOp251()
endmacro

macro OSOp252()
endmacro

macro OSOp253()
endmacro

macro OSOp254()
if !Pass == 1
	print "		%OSFE_EndCodeString()"
endif
endmacro

macro OSOp255()
if !Pass == 1
	print "		%OSFF_EndCode()"
endif
endmacro

macro DisassembleObjectScript()
if !DoTwoPassesFlag == 1
	while !ByteCounter < !MaxBytes
		%GetOpcode()
		%OSOp!Input1()
		!LoopCounter #= !LoopCounter+1
	endif
	!LoopCounter #= 0
	!ByteCounter #= 0
endif
	!Pass = 1
while !ByteCounter < !MaxBytes
	%PrintLabel(!CurrentOffset)
	%GetOpcode()
	%OSOp!Input1()
	!LoopCounter #= !LoopCounter+1
endif
