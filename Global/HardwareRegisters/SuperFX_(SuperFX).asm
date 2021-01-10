@includeonce

;---------------------------------------------------------------------------

; SuperFX code assembly specific macros

macro SuperFXBankStart(Base)
assert !InBank == !FALSE, "You must put a SuperFXBankEnd macro before calling SuperFXBankStart again!"
asset !SuperFXPointers != $00, "You must generate at least one pointer with SuperFXRoutinePointer() before beginning a SuperFX code bank!"
assert !EndOfSuperFXPointers == !TRUE, "You need to end the SuperFX routine pointer table with EndSuperFXRoutinePointers() before beginning any SuperFX banks!"
	dl FXCODE_<Base>_Start
	dl FXCODE_<Base>_End
	FXCODE_<Base>_Start:
	base $<Base>
	!InBank = !TRUE
endmacro

;---------------------------------------------------------------------------

macro SuperFXBankEnd(Base)
assert !InBank == !TRUE, "You must put a SuperFXBankStart macro before calling SuperFXBankEnd!"
	base off
	FXCODE_<Base>_End:
	!InBank = !FALSE
endmacro

;---------------------------------------------------------------------------

macro SuperFXRoutinePointer(Label)
if !SuperFXPointers == $00
	dl SuperFXPointerTableEnd
	!EndOfSuperFXPointers = !FALSE
SuperFXPointerTableStart:
endif
	dl <Label>
!SuperFXPointers #= !SuperFXPointers+$01
endmacro

;---------------------------------------------------------------------------

macro EndSuperFXRoutinePointers()
assert !SuperFXPointers != $00, "You must generate at least one pointer with SuperFXRoutinePointer() before you can end the pointer table!"
assert !EndOfSuperFXPointers != !TRUE, "You already ended the SuperFX routine pointer table!"

!EndOfSuperFXPointers = !TRUE
SuperFXPointerTableEnd:
endmacro

;---------------------------------------------------------------------------
