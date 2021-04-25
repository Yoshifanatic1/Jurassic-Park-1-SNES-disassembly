; This will dump the text from the computer terminals if applied to a USA JP ROM.
; Note that in the dumped text, ' represents " used by the print command, @ represents " used to contain text, and % represents a space.
; Also, it may take a second before asar starts displaying anything on the command line.
; Also, for some reason, the last few control codes are not dumped. I have no clue why, since !EndOffset is set correctly.

!Offset = $A6AFB3
!EndOffset = $A6B985
!Index = 0
!ByteCount = 0
!LetterFlag #= 0
!PriorLetterFlag #= 0
!RowByteCount = 0
!PrintData = ""

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
endmacro

macro HandleLineOfData(ID)
if !PriorLetterFlag = 0
	if <ID> == 0
		!PrintData += "	db $!LZ<ID>',hex(!Output<ID>)"
	else
		!PrintData += ",',$!LZ<ID>',hex(!Output<ID>)"
	endif
else
	if <ID> == 0
		!PrintData += "	db @!Output<ID>"
	else
		!PrintData += "!Output<ID>"
	endif
endif
endmacro

macro HandleLetters(ID)
	if !Input1 == $20
		!Output<ID> += "%"
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
	elseif !Input1 == $27
		!Output<ID> += "^"
		!LetterFlag #= 1
	elseif !Input1 == $2D
		!Output<ID> += "-"
		!LetterFlag #= 1
	elseif !Input1 == $2E
		!Output<ID> += "."
		!LetterFlag #= 1
	else
		!LetterFlag #= 0
		%HandleVariableDefine(!RowByteCount)
	endif
endmacro

macro PrintVariableData(Data)
if !PriorLetterFlag = 0
	print "print '<Data>"
else
	print "print '<Data>@'"
endif
endmacro

print "lorom"
%ClearDefines()
while !Offset+!ByteCount < !EndOffset
	!Input1 = read1(!Offset+!ByteCount)
	%HandleLetters(!RowByteCount)
	if !RowByteCount == 16
		%PrintVariableData("!PrintData")
		%ClearDefines()
		!PrintData = ""
		!RowByteCount #= $00
		%HandleLetters(!RowByteCount)
	elseif !LetterFlag != !PriorLetterFlag
		%PrintVariableData("!PrintData")
		%ClearDefines()
		!PrintData = ""
		!RowByteCount #= $00
		%HandleLetters(!RowByteCount)
	endif
	if !LetterFlag != !PriorLetterFlag
		!PriorLetterFlag #= !LetterFlag
	endif
	%HandleLineOfData(!RowByteCount)
	!ByteCount #= !ByteCount+1
	!RowByteCount #= !RowByteCount+1
endif
