
%SPCDataBlockStart(0800)

InitializeSPC700:
	CLRP
	MOV X, #$FF
	MOV SP, X
	MOV Y, #$6C
	MOV $F2, Y
	MOV A, $F3
	OR A, #$E0
	MOV $00F2, Y
	MOV $00F3, A
	MOV $00, #$00
	MOV $01, #$80
	MOV Y, #$00
CODE_081A:
	MOV A, #$00
CODE_081C:
	MOV ($00)+y, A
	INC $00
	BNE CODE_081C
	INC $01
	MOV A, $01
	CMP A, #$FF
	BNE CODE_081A
	JMP !REGISTER_SPC700_IPLROMLoc

%SPCDataBlockEnd(0800)

%EndSPCUploadAndJumpToEngine($0800)