; This will dump the text from the interior sections if applied to a USA JP ROM.
; Note that in the dumped text, + represents ", % represents a space, and & represents something that wasn't a standard character.
; Also, it may take a second before asar starts displaying anything on the command line.

!LoopCounter = 0
!Offset = $A4DFFE
!EndOffset = $A4EC03
while !LoopCounter < !EndOffset-!Offset
	!Output = ""
	!LetterCount = 0
	!Input = $FF
	print "DATA_",hex(!Offset+!LoopCounter),":"
	while !Input != $00
		!Input = read1(!Offset+!LoopCounter)
		if !Input == $20
			!Output += "%"
		elseif !Input == $30
			!Output += 0
		elseif !Input == $31
			!Output += 1
		elseif !Input == $32
			!Output += 2
		elseif !Input == $33
			!Output += 3
		elseif !Input == $34
			!Output += 4
		elseif !Input == $35
			!Output += 5
		elseif !Input == $36
			!Output += 6
		elseif !Input == $37
			!Output += 7
		elseif !Input == $38
			!Output += 8
		elseif !Input == $39
			!Output += 9
		elseif !Input == $41
			!Output += A
		elseif !Input == $42
			!Output += B
		elseif !Input == $43
			!Output += C
		elseif !Input == $44
			!Output += D
		elseif !Input == $45
			!Output += E
		elseif !Input == $46
			!Output += F
		elseif !Input == $47
			!Output += G
		elseif !Input == $48
			!Output += H
		elseif !Input == $49
			!Output += I
		elseif !Input == $4A
			!Output += J
		elseif !Input == $4B
			!Output += K
		elseif !Input == $4C
			!Output += L
		elseif !Input == $4D
			!Output += M
		elseif !Input == $4E
			!Output += N
		elseif !Input == $4F
			!Output += O
		elseif !Input == $50
			!Output += P
		elseif !Input == $51
			!Output += Q
		elseif !Input == $52
			!Output += R
		elseif !Input == $53
			!Output += S
		elseif !Input == $54
			!Output += T
		elseif !Input == $55
			!Output += U
		elseif !Input == $56
			!Output += V
		elseif !Input == $57
			!Output += W
		elseif !Input == $58
			!Output += X
		elseif !Input == $59
			!Output += Y
		elseif !Input == $5A
			!Output += Z
		elseif !Input == $3A
			!Output += ":"
		elseif !Input == $3B
			!Output += ;
		elseif !Input == $21
			!Output += "\!"
		elseif !Input == $27
			!Output += "'"
		elseif !Input == $3F
			!Output += ?
		elseif !Input == $2D
			!Output += "-"
		elseif !Input == $2C
			!Output += ","
		elseif !Input == $2E
			!Output += "."
		else
			!Output += "&"
		endif
		!LoopCounter #= !LoopCounter+1
		!LetterCount #= !LetterCount+1
		if !LetterCount == 32
			!Input = $FF
		endif
	endif
	!LoopCounter #= !LoopCounter+1
	print "db +!Output+,$00"
	print ""
endif