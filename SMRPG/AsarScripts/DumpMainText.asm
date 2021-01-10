; This will dump the text from the main text banks if applied to a USA SMRPG ROM.
; Note that in the dumped text, } represents " used by the print command, ^ represents " used to contain text, and | represents a space.
; Also, it may take a second before asar starts displaying anything on the command line.

!Offset = $E4531E
!EndOffset = $E49000
!MaxRowByteCount = 32

!ByteCount = 0
!CommandWithParamsFlag = 0
!NewLabel = 0

macro HandleVariableDefine(ID)
	!Output<ID> #= !Input1
	if !Input1 < 16
		!LZ<ID> += "0"
	else
		!LZ<ID> += ""
	endif
endmacro

macro ClearDefines()
	!Output0 = ""
	!Output1 = ""
	!Output2 = ""
	!Output3 = ""
	!Output4 = ""
	!Output5 = ""
	!Output6 = ""
	!Output7 = ""
	!Output8 = ""
	!Output9 = ""
	!Output10 = ""
	!Output11 = ""
	!Output12 = ""
	!Output13 = ""
	!Output14 = ""
	!Output15 = ""
	!Output16 = ""
	!Output17 = ""
	!Output18 = ""
	!Output19 = ""
	!Output20 = ""
	!Output21 = ""
	!Output22 = ""
	!Output23 = ""
	!Output24 = ""
	!Output25 = ""
	!Output26 = ""
	!Output27 = ""
	!Output28 = ""
	!Output29 = ""
	!Output30 = ""
	!Output31 = ""
	!Output32 = ""
	!Output33 = ""
	!LZ0 = ""
	!LZ1 = ""
	!LZ2 = ""
	!LZ3 = ""
	!LZ4 = ""
	!LZ5 = ""
	!LZ6 = ""
	!LZ7 = ""
	!LZ8 = ""
	!LZ9 = ""
	!LZ10 = ""
	!LZ11 = ""
	!LZ12 = ""
	!LZ13 = ""
	!LZ14 = ""
	!LZ15 = ""
	!LZ16 = ""
	!LZ17 = ""
	!LZ18 = ""
	!LZ19 = ""
	!LZ20 = ""
	!LZ21 = ""
	!LZ22 = ""
	!LZ23 = ""
	!LZ24 = ""
	!LZ25 = ""
	!LZ26 = ""
	!LZ27 = ""
	!LZ28 = ""
	!LZ29 = ""
	!LZ30 = ""
	!LZ31 = ""
	!LZ32 = ""
	!LZ33 = ""
	!LetterFlag #= 0
	!PriorLetterFlag #= 0
	!PrintData = ""
	!RowByteCount #= 0
	!NewLine = 0
endmacro

macro HandleLineOfData(ID)
if !NewLine == 0
	!PriorLetterFlag #= !LetterFlag
	if !PriorLetterFlag == 0
		!PrintData += "print }	db $!LZ<ID>},hex(!Output<ID>)"
	else
		!PrintData += "print }	db ^!Output<ID>"
	endif
	!NewLine #= 1
else
	if !LetterFlag != !PriorLetterFlag
		if !PriorLetterFlag == 0
			!PrintData += ",},^"
		else
			!PrintData += "^"
		endif
		!PriorLetterFlag #= !LetterFlag
	else
		if !PriorLetterFlag == 0
			!PrintData += ",}"
		endif
	endif
	if !LetterFlag == 0
		!PrintData += ",$!LZ<ID>},hex(!Output<ID>)"
	else
		!PrintData += "!Output<ID>"
	endif
endif
endmacro

macro HandleLetters(ID)
	if !CommandWithParamsFlag != 0
		!LetterFlag #= 0
		%HandleVariableDefine(!RowByteCount)
		!CommandWithParamsFlag #= !CommandWithParamsFlag-1
	elseif !Input1 == $00
		!LetterFlag #= 0
		!NewLabel = 1
		!RowByteCount #= !MaxRowByteCount
		%HandleVariableDefine(!RowByteCount)
	elseif !Input1 == $01
		!LetterFlag #= 0
		!RowByteCount #= !MaxRowByteCount
		%HandleVariableDefine(!RowByteCount)
	elseif !Input1 == $02
		!LetterFlag #= 0
		!RowByteCount #= !MaxRowByteCount
		%HandleVariableDefine(!RowByteCount)
	elseif !Input1 == $06
		!LetterFlag #= 0
		!NewLabel = 1
		!RowByteCount #= !MaxRowByteCount
		%HandleVariableDefine(!RowByteCount)
	elseif !Input1 == $0B
		!LetterFlag #= 0
		!CommandWithParamsFlag = 1
		%HandleVariableDefine(!RowByteCount)
	elseif !Input1 == $1C
		!LetterFlag #= 0
		!CommandWithParamsFlag = 1
		%HandleVariableDefine(!RowByteCount)
	elseif !Input1 == $20
		!Output<ID> += "|"
		!LetterFlag #= 1
	elseif !Input1 == $21
		!Output<ID> += "!"
		!LetterFlag #= 1
	elseif !Input1 == $27
		!Output<ID> += "'"
		!LetterFlag #= 1
	elseif !Input1 == $28
		!Output<ID> += "("
		!LetterFlag #= 1
	elseif !Input1 == $29
		!Output<ID> += ")"
		!LetterFlag #= 1
	elseif !Input1 == $2C
		!Output<ID> += ","
		!LetterFlag #= 1
	elseif !Input1 == $2D
		!Output<ID> += "-"
		!LetterFlag #= 1
	elseif !Input1 == $2E
		!Output<ID> += "."
		!LetterFlag #= 1
	elseif !Input1 == $2F
		!Output<ID> += "/"
		!LetterFlag #= 1
	elseif !Input1 == $30
		!Output<ID> += 0
		!LetterFlag #= 1
	elseif !Input1 == $31
		!Output<ID> += 1
		!LetterFlag #= 1
	elseif !Input1 == $32
		!Output<ID> += 2
		!LetterFlag #= 1
	elseif !Input1 == $33
		!Output<ID> += 3
		!LetterFlag #= 1
	elseif !Input1 == $34
		!Output<ID> += 4
		!LetterFlag #= 1
	elseif !Input1 == $35
		!Output<ID> += 5
		!LetterFlag #= 1
	elseif !Input1 == $36
		!Output<ID> += 6
		!LetterFlag #= 1
	elseif !Input1 == $37
		!Output<ID> += 7
		!LetterFlag #= 1
	elseif !Input1 == $38
		!Output<ID> += 8
		!LetterFlag #= 1
	elseif !Input1 == $39
		!Output<ID> += 9
		!LetterFlag #= 1
	elseif !Input1 == $3A
		!Output<ID> += "~"
		!LetterFlag #= 1
	elseif !Input1 == $3F
		!Output<ID> += "?"
		!LetterFlag #= 1
	elseif !Input1 == $40
		!Output<ID> += "@"
		!LetterFlag #= 1
	elseif !Input1 == $41
		!Output<ID> += A
		!LetterFlag #= 1
	elseif !Input1 == $42
		!Output<ID> += B
		!LetterFlag #= 1
	elseif !Input1 == $43
		!Output<ID> += C
		!LetterFlag #= 1
	elseif !Input1 == $44
		!Output<ID> += D
		!LetterFlag #= 1
	elseif !Input1 == $45
		!Output<ID> += E
		!LetterFlag #= 1
	elseif !Input1 == $46
		!Output<ID> += F
		!LetterFlag #= 1
	elseif !Input1 == $47
		!Output<ID> += G
		!LetterFlag #= 1
	elseif !Input1 == $48
		!Output<ID> += H
		!LetterFlag #= 1
	elseif !Input1 == $49
		!Output<ID> += I
		!LetterFlag #= 1
	elseif !Input1 == $4A
		!Output<ID> += J
		!LetterFlag #= 1
	elseif !Input1 == $4B
		!Output<ID> += K
		!LetterFlag #= 1
	elseif !Input1 == $4C
		!Output<ID> += L
		!LetterFlag #= 1
	elseif !Input1 == $4D
		!Output<ID> += M
		!LetterFlag #= 1
	elseif !Input1 == $4E
		!Output<ID> += N
		!LetterFlag #= 1
	elseif !Input1 == $4F
		!Output<ID> += O
		!LetterFlag #= 1
	elseif !Input1 == $50
		!Output<ID> += P
		!LetterFlag #= 1
	elseif !Input1 == $51
		!Output<ID> += Q
		!LetterFlag #= 1
	elseif !Input1 == $52
		!Output<ID> += R
		!LetterFlag #= 1
	elseif !Input1 == $53
		!Output<ID> += S
		!LetterFlag #= 1
	elseif !Input1 == $54
		!Output<ID> += T
		!LetterFlag #= 1
	elseif !Input1 == $55
		!Output<ID> += U
		!LetterFlag #= 1
	elseif !Input1 == $56
		!Output<ID> += V
		!LetterFlag #= 1
	elseif !Input1 == $57
		!Output<ID> += W
		!LetterFlag #= 1
	elseif !Input1 == $58
		!Output<ID> += X
		!LetterFlag #= 1
	elseif !Input1 == $59
		!Output<ID> += Y
		!LetterFlag #= 1
	elseif !Input1 == $5A
		!Output<ID> += Z
		!LetterFlag #= 1
	elseif !Input1 == $61
		!Output<ID> += a
		!LetterFlag #= 1
	elseif !Input1 == $62
		!Output<ID> += b
		!LetterFlag #= 1
	elseif !Input1 == $63
		!Output<ID> += c
		!LetterFlag #= 1
	elseif !Input1 == $64
		!Output<ID> += d
		!LetterFlag #= 1
	elseif !Input1 == $65
		!Output<ID> += e
		!LetterFlag #= 1
	elseif !Input1 == $66
		!Output<ID> += f
		!LetterFlag #= 1
	elseif !Input1 == $67
		!Output<ID> += g
		!LetterFlag #= 1
	elseif !Input1 == $68
		!Output<ID> += h
		!LetterFlag #= 1
	elseif !Input1 == $69
		!Output<ID> += i
		!LetterFlag #= 1
	elseif !Input1 == $6A
		!Output<ID> += j
		!LetterFlag #= 1
	elseif !Input1 == $6B
		!Output<ID> += k
		!LetterFlag #= 1
	elseif !Input1 == $6C
		!Output<ID> += l
		!LetterFlag #= 1
	elseif !Input1 == $6D
		!Output<ID> += m
		!LetterFlag #= 1
	elseif !Input1 == $6E
		!Output<ID> += n
		!LetterFlag #= 1
	elseif !Input1 == $6F
		!Output<ID> += o
		!LetterFlag #= 1
	elseif !Input1 == $70
		!Output<ID> += p
		!LetterFlag #= 1
	elseif !Input1 == $71
		!Output<ID> += q
		!LetterFlag #= 1
	elseif !Input1 == $72
		!Output<ID> += r
		!LetterFlag #= 1
	elseif !Input1 == $73
		!Output<ID> += s
		!LetterFlag #= 1
	elseif !Input1 == $74
		!Output<ID> += t
		!LetterFlag #= 1
	elseif !Input1 == $75
		!Output<ID> += u
		!LetterFlag #= 1
	elseif !Input1 == $76
		!Output<ID> += v
		!LetterFlag #= 1
	elseif !Input1 == $77
		!Output<ID> += w
		!LetterFlag #= 1
	elseif !Input1 == $78
		!Output<ID> += x
		!LetterFlag #= 1
	elseif !Input1 == $79
		!Output<ID> += y
		!LetterFlag #= 1
	elseif !Input1 == $7A
		!Output<ID> += z
		!LetterFlag #= 1
	elseif !Input1 == $8E
		!Output<ID> += ":"
		!LetterFlag #= 1
	elseif !Input1 == $8F
		!Output<ID> += ";"
		!LetterFlag #= 1
	elseif !Input1 == $90
		!Output<ID> += "["
		!LetterFlag #= 1
	elseif !Input1 == $91
		!Output<ID> += "]"
		!LetterFlag #= 1
	elseif !Input1 == $93
		!Output<ID> += "#"
		!LetterFlag #= 1
	elseif !Input1 == $94
		!Output<ID> += "+"
		!LetterFlag #= 1
	elseif !Input1 == $96
		!Output<ID> += "%"
		!LetterFlag #= 1
	elseif !Input1 == $9A
		!Output<ID> += "*"
		!LetterFlag #= 1
	elseif !Input1 == $9B
		!Output<ID> += "`"
		!LetterFlag #= 1
	elseif !Input1 == $9C
		!Output<ID> += "&"
		!LetterFlag #= 1
	else
		!LetterFlag #= 0
		%HandleVariableDefine(!RowByteCount)
	endif
	%HandleLineOfData(!RowByteCount)
	!RowByteCount #= !RowByteCount+1
endmacro

hirom
print "hirom"
%ClearDefines()
print "print }DATA_},hex(!Offset+!ByteCount),}:}"
while !Offset+!ByteCount < !EndOffset
	!Input1 = read1(!Offset+!ByteCount)
	%HandleLetters(!RowByteCount)
	if !RowByteCount >= !MaxRowByteCount+1
		if !LetterFlag == 0
		else
			!PrintData += "^}"
		endif
		print "!PrintData"
		if !NewLabel == 1
			print "print }}"
			print "print }DATA_},hex(!Offset+!ByteCount+1),}:}"
			!NewLabel #= 0
		endif
		%ClearDefines()
	endif
	!ByteCount #= !ByteCount+1
endif
