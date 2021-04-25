
%SPCDataBlockStart(!Define_JP_SPC700_EngineStartAddress)
SPC700_Engine:
	CLRP
	MOV X, #$CF
	MOV SP, X
	MOV A, #$00
	MOV X, A
CODE_0507:
	MOV (X+), A
	CMP X, #$F0
	BNE CODE_0507
	INC A
	CALL CODE_12A7
	SET5 $43
	MOV A, #$68
	MOV Y, #$0C
	CALL CODE_0BBF
	MOV Y, #$1C
	CALL CODE_0BBF
	MOV A, #$1F
	MOV Y, #$5D
	CALL CODE_0BBF
	MOV A, #$00
	MOV X, A
CODE_0528:
	MOV $0100+x, A
	MOV $0200+x, A
	MOV $0300+x, A
	MOV $0400+x, A
	INC X
	BNE CODE_0528
	MOV A, #$01
	MOV $0392, A
	MOV A, #$F0
	MOV $00F1, A
	MOV A, #$10
	MOV $00FA, A
	MOV $4C, A
	MOV A, #$01
	MOV $00F1, A
	MOV Y, #$00
	MOV $14, Y
	MOV A, #$FF
	MOV $13, A
	MOV X, #$0A
	DIV YA, X
	MOV $15, A
	INCW $13
	MOV Y, $14
	MOV A, $13
	MOV X, #$FF
	PUSH Y
	PUSH A
	DIV YA, X
	MOV $16, A
	POP A
	MOV $08, A
	POP A
	LSR A
	ROR $08
	MOV Y, A
	MOV A, $08
	MOV X, #$10
	DIV YA, X
	MOV $0391, A
	MOV A, #$05
CODE_0579:
	MOV Y, A
	MOV A, #$00
	MOV $F2, Y
	MOV $F3, A
	MOV A, Y
	CLRC
	ADC A, #$10
	CMP A, #$85
	BNE CODE_0579
	MOV A, #$80
	MOV $0400, A
	MOV $F4, A
CODE_058F:
	CMP A, $F4
	BNE CODE_058F
	MOV A, #$30
	MOV $00F1, A
	INC $0400
	MOV A, $0400
	MOV $F4, A
	MOV A, #$9C
	MOV $0C, A
	ASL A
	MOV $0D, A
	MOV A, #$01
	MOV $00F1, A
CODE_05AC:
	MOV Y, #$0A
CODE_05AE:
	CMP Y, #$05
	BEQ CODE_05B9
	BCS CODE_05BC
	CMP $47, $48
	BNE CODE_05CA
CODE_05B9:
	BBS7 $47, CODE_05CA
CODE_05BC:
	MOV A, $0639+y
	MOV $00F2, A
	MOV A, $0643+y
	MOV X, A
	MOV A, (X)
	MOV $00F3, A
CODE_05CA:
	DBNZ Y, CODE_05AE
	MOV $3F, Y
	MOV $40, Y
CODE_05D0:
	CALL CODE_0684
	CALL CODE_064E
	MOV X, #$00
	MOV $41, #$01
CODE_05DB:
	CALL CODE_1690
	INC X
	INC X
	ASL $41
	BNE CODE_05DB
	MOV Y, $00FD
	BNE CODE_05EC
	JMP CODE_05D0

CODE_05EC:
	PUSH Y
	MOV A, #$20
	MUL YA
	CLRC
	ADC A, $18
	MOV $18, A
	BCC CODE_05FE
	CMP $47, $48
	BEQ CODE_05FE
	INC $47
CODE_05FE:
	POP Y
	MOV A, $4C
	MUL YA
	CLRC
	ADC A, $4A
	MOV $4A, A
	BCC CODE_0618
	MOV $09, #$01
	CALL CODE_0684
	CALL CODE_0DA3
	CALL CODE_0DBE
CODE_0615:
	JMP CODE_05AC

CODE_0618:
	BEQ CODE_0615
	MOV X, #$00
	MOV $41, #$01
CODE_061F:
	MOV A, $61+x
	BEQ CODE_0626
	CALL CODE_15C5
CODE_0626:
	INC X
	INC X
	ASL $41
	BNE CODE_061F
	BRA CODE_0615

;---------------------------------------------------------------------------

CODE_062E:
	MOV A, $0C
	EOR A, $0D
	LSR A
	LSR A
	NOTC
	ROR $0C
	ROR $0D
	RET

;---------------------------------------------------------------------------

DATA_063A:
	db $2C,$3C,$0D,$4D,$6C,$4C,$5C,$3D
	db $2D,$5C,$72,$74,$49,$45,$43,$3F
	db $02,$44,$46,$40

CODE_064E:
	MOV A, $044D
	BEQ CODE_066F
	DEC $11
	BNE CODE_066F
	MOV A, $044D
	MOV $11, A
	DEC $12
	BNE CODE_0670
	MOV A, $0E
	OR A, #$1F
	TSET $0040, A
	CALL CODE_0C6C
	MOV A, #$00
	MOV $044D, A
CODE_066F:
	RET

CODE_0670:
	MOV X, #$00
	MOV $41, #$01
CODE_0675:
	MOV A, $61+x
	BEQ CODE_067D
	MOV A, #$01
	MOV $CD+x, A
CODE_067D:
	INC X
	INC X
	ASL $41
	BNE CODE_0675
	RET

;---------------------------------------------------------------------------

CODE_0684:
	MOV A, $F4
	CMP A, $F4
	BNE CODE_0684
	CMP A, #$00
	BMI CODE_06D6
	BEQ CODE_06A0
	CMP A, #$1A
	BCS CODE_06A1
	MOV X, A
	ASL A
	MOV Y, A
	MOV A, DATA_06A4-$01+y
	PUSH A
	MOV A, DATA_06A4-$02+y
	PUSH A
	MOV A, X
CODE_06A0:
	RET

CODE_06A1:
	JMP CODE_0793

DATA_06A4:
	dw CODE_0702
	dw CODE_071E
	dw CODE_0740
	dw CODE_0762
	dw CODE_0765
	dw CODE_0768
	dw CODE_0771
	dw CODE_0779
	dw CODE_0793
	dw CODE_07A9
	dw CODE_07C3
	dw CODE_073A
	dw CODE_073D
	dw CODE_07A6
	dw CODE_0814
	dw CODE_0871
	dw CODE_08AA
	dw CODE_08AD
	dw CODE_08B0
	dw CODE_0757
	dw CODE_08E8
	dw CODE_0903
	dw CODE_080D
	dw CODE_0906
	dw CODE_091D

CODE_06D6:
	AND A, #$7F
	BEQ CODE_06FF
	MOV $0352, A
	CALL CODE_1838
	MOV A, $F5
	XCN A
	AND A, #$0F
	MOV $0405+x, A
	MOV A, $F5
	AND A, #$0F
	MOV $0415+x, A
	MOV A, $F6
	MOV $0406+x, A
	MOV A, $F7
	MOV $0416+x, A
	MOV $08, #$01
	CALL CODE_093C
CODE_06FF:
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_0702:
	MOV A, $F5
	CMP A, #$02
	BCS CODE_071B
	MOV $0438, A
	CMP A, #$00
	BNE CODE_0712
	CALL CODE_0C28
CODE_0712:
	MOV Y, $F6
	CALL CODE_11A6
	MOV A, $F7
	MOV $12, A
CODE_071B:
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_071E:
	MOV A, $F5
	XCN A
	AND A, #$0F
	MOV $0401, A
	MOV A, $F5
	AND A, #$0F
	MOV $0403, A
	MOV A, $F6
	MOV $0402, A
	MOV A, $F7
	MOV $0404, A
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_073A:
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_073D:
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_0740:
	MOV A, $00F5
	MOV $5B, A
	MOV A, $00F6
	MOV $5C, A
	SETC
	SBC A, $5A
	MOV X, $5B
	CALL CODE_1336
	MOVW $5D, YA
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_0757:
	MOV A, $00F5
	MOV $044D, A
	MOV $11, A
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_0762:
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_0765:
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_0768:
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_076B:
	CALL CODE_0DBE
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_0771:
	MOV A, $F5
	MOV $0392, A
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_0779:
	MOV A, $03FA
	BEQ CODE_0784
	SETC
	SBC A, #$02
	MOV $03FA, A
CODE_0784:
	MOV A, #$80
	MOV X, #$FF
	CALL CODE_192D
	MOV A, #$00
	MOV $037F, A
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_0793:
	MOV A, #$31
	MOV $00F1, A
	INC $0400
	MOV A, $0400
	AND A, #$8F
	MOV $0400, A
	MOV $F4, A
	RET

;---------------------------------------------------------------------------

CODE_07A6:
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_07A9:
	MOV Y, #$6C
	MOV $F2, Y
	MOV A, $F3
	OR A, #$E0
	CALL CODE_0BBF
	MOV A, #$01
	CALL CODE_12A7
	SET5 $43
	MOV A, #$F0
	MOV $00F1, A
	JMP !REGISTER_SPC700_IPLROMLoc

;---------------------------------------------------------------------------

CODE_07C3:
	MOV Y, #$6C
	MOV $F2, Y
	MOV A, $F3
	OR A, #$E0
	CALL CODE_0BBF
	CALL CODE_0C28
	MOV A, #$FF
	MOV $0439, A
	MOV A, #$01
	CALL CODE_12A7
	MOV $09, #$C0
	MOV $08, #$00
	MOV Y, #$00
	MOV A, #$00
CODE_07E5:
	MOV ($08)+y, A
	INC Y
	BNE CODE_07E5
	INC $09
	BNE CODE_07E5
	MOV A, #$80
	MOV $F1, A
	JMP !REGISTER_SPC700_IPLROMLoc

;---------------------------------------------------------------------------

CODE_07F5:
	CALL CODE_0813
	MOV A, #$00
	MOV Y, #$6C
	CALL CODE_0BBF
	CALL CODE_0793
	MOV A, $F4
CODE_0804:
	CMP A, $0400
	BNE CODE_0804
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_080C:
	RET

;---------------------------------------------------------------------------

CODE_080D:
	CALL CODE_0813
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_0813:
	RET

;---------------------------------------------------------------------------

CODE_0814:
	MOV A, $F5
	MOV $0F, A
	MOV A, $F6
	MOV $10, A
	MOV A, $F7
	MOV $043C, A
	CMP A, #$35
	BCC CODE_0845
	MOV A, $0E
	EOR A, #$1F
	TSET $0040, A
	MOV $09, #$C0
	MOV $08, #$00
	MOV Y, #$00
	MOV A, #$00
CODE_0836:
	MOV ($08)+y, A
	INC Y
	BNE CODE_0836
	INC $09
	BNE CODE_0836
	CALL CODE_0C6C
	JMP CODE_0793

CODE_0845:
	MOV $41, #$20
	MOV X, $03FA
CODE_084B:
	MOV A, $0471+x
	BEQ CODE_0868
	MOV A, #$00
	MOV $0355+x, A
	MOV $61+x, A
	MOV $0356+x, A
	MOV Y, #$5C
	MOV $F2, Y
	MOV A, $F3
	MOV $F7, A
	OR A, $41
	MOV $F2, Y
	MOV $F3, A
CODE_0868:
	INC X
	INC X
	ASL $41
	BNE CODE_084B
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_0871:
	MOV Y, #$00
	MOV X, $043C
CODE_0876:
	MOV A, $F5
	MOV ($0F)+y, A
	INC Y
	MOV A, $F6
	MOV ($0F)+y, A
	INC Y
	MOV A, $F7
	MOV ($0F)+y, A
	INC Y
	CALL CODE_0793
	DEC X
	BEQ CODE_0898
CODE_088B:
	MOV A, $F4
	CMP A, #$10
	BEQ CODE_0876
	CMP A, #$11
	BNE CODE_088B
	JMP CODE_0793

CODE_0898:
	MOV A, $043C
	ASL A
	CLRC
	ADC A, $043C
	CLRC
	ADC A, $0F
	MOV $0F, A
	BCC CODE_08A9
	INC $10
CODE_08A9:
	RET

;---------------------------------------------------------------------------

CODE_08AA:
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_08AD:
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_08B0:
	MOV Y, $F5
	MOV $14, Y
	MOV A, $F6
	MOV $13, A
	MOV X, #$0A
	DIV YA, X
	MOV $15, A
	INCW $13
	MOV Y, $14
	MOV A, $13
	PUSH A
	PUSH Y
	MOV X, #$FF
	DIV YA, X
	MOV $16, A
	POP A
	POP X
	PUSH A
	PUSH Y
	MOV Y, #$00
	MOV A, #$FF
	DIV YA, X
	MOV $17, A
	POP A
	MOV $08, A
	POP A
	LSR A
	ROR $08
	MOV Y, A
	MOV A, $08
	MOV X, #$10
	DIV YA, X
	MOV $0391, A
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_08E8:
	CALL CODE_0DBE
	CALL CODE_0DBE
	CALL CODE_0DBE
	CALL CODE_0DBE
	CALL CODE_0DBE
	CALL CODE_0DBE
	CALL CODE_0DBE
	CALL CODE_0DBE
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_0903:
	JMP CODE_1DD3

;---------------------------------------------------------------------------

CODE_0906:
	MOV A, $F5
	BEQ CODE_091A
	MOV $0352, A
	CALL CODE_1838
	MOV A, $F6
	CALL CODE_10FB
	MOV A, $F7
	CALL CODE_120F
CODE_091A:
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_091D:
	MOV X, $037F
	MOV A, $0356+x
	CMP A, #$A3
	BNE CODE_0939
	MOV A, $03FA
	BEQ CODE_0932
	SETC
	SBC A, #$02
	MOV $03FA, A
CODE_0932:
	MOV A, #$80
	MOV X, #$FF
	CALL CODE_192D
CODE_0939:
	JMP CODE_0793

;---------------------------------------------------------------------------

CODE_093C:
	MOV $51, X
	MOV $58, #$00
	MOV A, $0405+x
	MOV $05, A
	MOV A, $0406+x
	MOV $04, A
	MOV Y, $0401
	MOV A, $0402
	CMPW YA, $04
	BCC CODE_097B
	SUBW YA, $04
	MOV $04, $13
	MOV $05, $14
	CMPW YA, $04
	BCS CODE_096B
	MOVW $04, YA
	MOV X, $15
	DIV YA, X
	CLRC
	ADC A, #$0A
	BRA CODE_099F

CODE_096B:
	MOV X, $51
	MOV A, #$00
	MOV $0355+x, A
	MOV $61+x, A
	MOV $0356+x, A
	MOV $044E+x, A
	RET

CODE_097B:
	PUSH Y
	MOV $52, A
	MOVW YA, $04
	POP X
	MOV $05, X
	MOV X, $52
	MOV $04, X
	SUBW YA, $04
	MOV $04, $13
	MOV $05, $14
	CMPW YA, $04
	BCS CODE_096B
	MOVW $04, YA
	MOV X, $15
	DIV YA, X
	MOV $52, A
	MOV A, #$0A
	SETC
	SBC A, $52
CODE_099F:
	MOV $0426, A
	MOVW YA, $04
	MOV X, $16
	BNE CODE_09AD
	MOV Y, $17
	MUL YA
	BRA CODE_09AE

CODE_09AD:
	DIV YA, X
CODE_09AE:
	LSR A
	MOV $53, A
	MOV X, $51
	CALL CODE_09DE
	LSR A
	CLRC
	ADC A, $53
	MOV $53, A
	MOV A, #$FF
	SETC
	SBC A, $53
	MOV X, $51
	MOV $0470, A
	CALL CODE_120F
	MOV A, $0426
	CALL CODE_10FB
	PUSH X
	MOV A, #$01
CODE_09D2:
	ASL A
	DEC X
	DEC X
	BNE CODE_09D2
	MOV $41, A
	OR $5F, $41
	POP X
	RET

;---------------------------------------------------------------------------

CODE_09DE:
	MOV A, $0415+x
	MOV $05, A
	MOV A, $0416+x
	MOV $04, A
	MOV Y, $0403
	MOV A, $0404
	CMPW YA, $04
	BCC CODE_0A0C
	SUBW YA, $04
	MOV $04, $13
	MOV $05, $14
	CMPW YA, $04
	BCC CODE_0A01
	JMP CODE_096B

CODE_0A01:
	MOV X, $16
	BNE CODE_0A0A
	MOV Y, $17
	MUL YA
	BRA CODE_0A0B

CODE_0A0A:
	DIV YA, X
CODE_0A0B:
	RET

CODE_0A0C:
	PUSH Y
	MOV $52, A
	MOVW YA, $04
	POP X
	MOV $05, X
	MOV X, $52
	MOV $04, X
	SUBW YA, $04
	CMP Y, #$00
	BNE CODE_0A25
	CMP A, #$05
	BCS CODE_0A25
	MOV $58, #$01
CODE_0A25:
	MOV $04, $13
	MOV $05, $14
	CMPW YA, $04
	BCC CODE_0A32
	JMP CODE_096B

CODE_0A32:
	MOV $046E, Y
	MOV $046F, A
	MOV X, $16
	BNE CODE_0A41
	MOV Y, $17
	MUL YA
	BRA CODE_0A42

CODE_0A41:
	DIV YA, X
CODE_0A42:
	PUSH A
	MOV A, $0392
	CMP A, #$02
	BEQ CODE_0A4C
	POP A
	RET

CODE_0A4C:
	BBC0 $58, CODE_0A53
	MOV A, #$00
	BRA CODE_0A7F

CODE_0A53:
	MOV A, $0426
	CMP A, #$0A
	BCC CODE_0A5E
	MOV A, #$40
	BRA CODE_0A60

CODE_0A5E:
	MOV A, #$80
CODE_0A60:
	MOV $0426, A
	MOV A, $046E
	MOV $05, A
	MOV A, $046F
	MOV $04, A
	MOV X, $0391
	DIV YA, X
	MOV X, $51
	CMP A, #$08
	BCS CODE_0A79
	MOV A, #$08
CODE_0A79:
	CMP A, #$10
	BCC CODE_0A7F
	MOV A, #$10
CODE_0A7F:
	MOV $045E+x, A
	POP A
	RET

;---------------------------------------------------------------------------

CODE_0A84:
	RET

CODE_0A85:
	CMP Y, #$C8
	BCS CODE_0A84
	MOV A, $0E
	AND A, $41
	BNE CODE_0A84
	PUSH Y
	MOV A, $41
	TSET $0040, A
	MOV Y, #$5C
	CALL CODE_0BB7
	POP Y
	MOV A, $0393+x
	BEQ CODE_0AB1
	MOV A, $0C
CODE_0AA2:
	CMP A, #$14
	BCC CODE_0AAB
	SETC
	SBC A, #$14
	BRA CODE_0AA2

CODE_0AAB:
	CALL CODE_10FB
	CALL CODE_062E
CODE_0AB1:
	MOV A, $03E6+x
	BEQ CODE_0AC3
	PUSH X
	PUSH Y
	CALL CODE_1739
	POP Y
	POP X
	MOV A, $03F9
	BEQ CODE_0AC3
	MOV Y, A
CODE_0AC3:
	MOV A, Y
	AND A, #$7F
	CMP X, $03FA
	BCS CODE_0ADC
	MOV Y, $03F9
	BNE CODE_0AE0
	CLRC
	ADC A, $0351
	CLRC
	ADC A, $03A3+x
	CLRC
	ADC A, $03B3+x
CODE_0ADC:
	CLRC
	ADC A, $0341+x
CODE_0AE0:
	MOV $02B1+x, A
	MOV A, $02D1+x
	MOV $02B0+x, A
	MOV A, $0311+x
	LSR A
	MOV A, #$00
	ROR A
	MOV $0300+x, A
	MOV A, #$00
	MOV $BC+x, A
	MOV $8D+x, A
	MOV $0330+x, A
	MOV $CC+x, A
	MOV $03F9, A
	CALL CODE_1718
	OR $5F, $41
	OR $3F, $41
	MOV A, $02E0+x
	MOV $AC+x, A
	BEQ CODE_0B2F
	MOV A, $02E1+x
	MOV $AD+x, A
	MOV A, $02F0+x
	BNE CODE_0B25
	MOV A, $02B1+x
	SETC
	SBC A, $02F1+x
	MOV $02B1+x, A
CODE_0B25:
	MOV A, $02F1+x
	CLRC
	ADC A, $02B1+x
	CALL CODE_1311
CODE_0B2F:
	CALL CODE_132B
CODE_0B32:
	MOV Y, #$00
	MOV A, $05
	SETC
	SBC A, #$34
	BCS CODE_0B44
	MOV A, $05
	SETC
	SBC A, #$13
	BCS CODE_0B48
	DEC Y
	ASL A
CODE_0B44:
	ADDW YA, $04
	MOVW $04, YA
CODE_0B48:
	PUSH X
	MOV A, $05
	ASL A
	MOV Y, #$00
	MOV X, #$18
	DIV YA, X
	MOV X, A
	MOV A, DATA_0BC6+$01+y
	MOV $09, A
	MOV A, DATA_0BC6+y
	MOV $08, A
	MOV A, DATA_0BC6+$03+y
	PUSH A
	MOV A, DATA_0BC6+$02+y
	POP Y
	SUBW YA, $08
	MOV Y, $04
	MUL YA
	MOV A, Y
	MOV Y, #$00
	ADDW YA, $08
	MOV $09, Y
	ASL A
	ROL $09
	MOV $08, A
	BRA CODE_0B7B

CODE_0B77:
	LSR $09
	ROR A
	INC X
CODE_0B7B:
	CMP X, #$06
	BEQ CODE_0B81
	BCC CODE_0B77
CODE_0B81:
	MOV $08, A
	POP X
	MOV A, $0220+x
	MOV Y, $09
	MUL YA
	MOVW $0A, YA
	MOV A, $0220+x
	MOV Y, $08
	MUL YA
	PUSH Y
	MOV A, $0221+x
	MOV Y, $08
	MUL YA
	ADDW YA, $0A
	MOVW $0A, YA
	MOV A, $0221+x
	MOV Y, $09
	MUL YA
	MOV Y, A
	POP A
	ADDW YA, $0A
	MOVW $0A, YA
	MOV A, X
	XCN A
	LSR A
	OR A, #$02
	MOV Y, A
	MOV A, $0A
	CALL CODE_0BB7
	INC Y
	MOV A, $0B
CODE_0BB7:
	PUSH A
	MOV A, $41
	AND A, $0E
	POP A
	BNE CODE_0BC5
CODE_0BBF:
	MOV $00F2, Y
	MOV $00F3, A
CODE_0BC5:
	RET

DATA_0BC6:
	db $5F,$08,$DE,$08,$65,$09,$F4,$09
	db $8C,$0A,$2C,$0B,$D6,$0B,$8B,$0C
	db $4A,$0D,$14,$0E,$EA,$0E,$CD,$0F
	db $BE,$10

;---------------------------------------------------------------------------

CODE_0BE0:
	MOV Y, #$0F
	MOV X, #$0F
CODE_0BE4:
	MOV A, ($1D)+y
	BEQ CODE_0BEC
	MOV $1F+x, A
	MOV $61+x, A
CODE_0BEC:
	DEC Y
	DEC X
	BPL CODE_0BE4
	MOV X, $03FA
	DEC X
	DEC X
	MOV $41, #$01
CODE_0BF8:
	MOV A, ($1F+x)
	MOV $2F+x, A
	BEQ CODE_0C04
	INC $1F+x
	BNE CODE_0C04
	INC $20+x
CODE_0C04:
	MOV A, ($1F+x)
	MOV $30+x, A
	BEQ CODE_0C10
	INC $1F+x
	BNE CODE_0C10
	INC $20+x
CODE_0C10:
	MOV A, $0211+x
	BNE CODE_0C1A
	MOV A, #$00
	CALL CODE_1047
CODE_0C1A:
	MOV A, #$00
	MOV $9C+x, A
	MOV $9D+x, A
	INC A
	MOV $7C+x, A
	DEC X
	DEC X
	BPL CODE_0BF8
	RET

;---------------------------------------------------------------------------

CODE_0C28:
	MOV A, $0E
	EOR A, #$FF
	TSET $0040, A
	MOV A, #$00
	MOV $037F, A
	MOV X, #$00
CODE_0C36:
	MOV $61+x, A
	MOV $0211+x, A
	MOV $02D1+x, A
	MOV $0341+x, A
	MOV $0393+x, A
	MOV $02E0+x, A
	MOV $BC+x, A
	MOV $8D+x, A
	MOV $BD+x, A
	MOV $0330+x, A
	MOV $CC+x, A
	MOV $CD+x, A
	MOV $03B3+x, A
	MOV $03E6+x, A
	MOV $03A3+x, A
	MOV $0355+x, A
	MOV $0356+x, A
	INC X
	INC X
	CMP X, #$10
	BNE CODE_0C36
	MOV $044D, A
CODE_0C6C:
	MOV A, #$0A
	MOV $03FA, A
	MOV A, #$FF
	MOV $0438, A
	MOV A, #$00
	MOV $036C, A
	MOV $0439, A
	MOV X, #$00
CODE_0C80:
	MOV $61+x, A
	MOV $02D1+x, A
	INC X
	INC X
	CMP X, $03FA
	BNE CODE_0C80
	MOV $5B, A
	MOV $79, A
	MOV $4D, A
	MOV $0351, A
	MOV $60, A
	MOV A, #$01
	MOV $4D, A
	MOV A, #$19
	MOV $4E, A
	SETC
	SBC A, $4C
	MOV X, $4D
	CALL CODE_1336
	MOVW $4F, YA
	MOV A, #$01
	CALL CODE_12A7
	SET5 $43
	MOV A, #$00
	MOV Y, #$00
	MOVW $71, YA
	MOVW $73, YA
CODE_0CB8:
	RET

;---------------------------------------------------------------------------

CODE_0CB9:
	MOV $0439, A
	MOV $036C, A
	ASL A
	ASL A
	ASL A
	BEQ CODE_0CB8
	MOV X, A
	MOV A, $7FF9+x
	MOV Y, A
	MOV A, $7FF8+x
	MOVW $1D, YA
	MOV A, $7FFA+x
	MOV $03FA, A
	MOV A, $7FFD+x
	MOV Y, A
	MOV A, $7FFC+x
	MOVW $19, YA
	MOV A, $7FFE+x
	MOV $043A, A
	MOV A, $7FFF+x
	MOV $043B, A
	MOV A, $0E
	EOR A, #$0F
	TSET $0040, A
	MOV A, #$00
	MOV $044D, A
	MOV X, #$00
	MOV $41, #$01
CODE_0CFA:
	MOV A, #$FF
	MOV $0438, A
	MOV $0251+x, A
	MOV A, #$06
	MOV $8C+x, A
	MOV A, X
	MOV A, #$0A
	CALL CODE_10FB
	MOV A, #$00
	MOV $0211+x, A
	MOV $02D1+x, A
	MOV $0341+x, A
	MOV $0393+x, A
	MOV $02E0+x, A
	MOV $BC+x, A
	MOV $8D+x, A
	MOV $BD+x, A
	MOV $0330+x, A
	MOV $CC+x, A
	MOV $CD+x, A
	MOV $03B3+x, A
	MOV $03E6+x, A
	MOV $03A3+x, A
	MOV $61+x, A
	ASL $41
	INC X
	INC X
	CMP X, $03FA
	BNE CODE_0CFA
	MOV A, #$00
	MOV $036B, A
	MOV $5B, A
	MOV $79, A
	MOV $4D, A
	MOV $0351, A
	MOV $60, A
	MOV $4C, #$20
	MOV Y, $03FA
	DEC Y
	MOV X, $03FA
	DEC X
CODE_0D59:
	MOV A, ($1D)+y
	MOV $1F+x, A
	MOV A, #$01
	MOV $61+x, A
	DEC Y
	DEC X
	BPL CODE_0D59
	MOV X, #$00
	MOV $41, #$01
CODE_0D6A:
	MOV A, ($1F+x)
	MOV $2F+x, A
	BEQ CODE_0D76
	INC $1F+x
	BNE CODE_0D76
	INC $20+x
CODE_0D76:
	MOV A, ($1F+x)
	MOV $30+x, A
	BEQ CODE_0D82
	INC $1F+x
	BNE CODE_0D82
	INC $20+x
CODE_0D82:
	ASL $41
	INC X
	INC X
	CMP X, $03FA
	BNE CODE_0D6A
	MOV X, #$00
	MOV $41, #$01
CODE_0D90:
	MOV A, #$00
	MOV $9C+x, A
	MOV $9D+x, A
	INC A
	MOV $7C+x, A
	ASL $41
	INC X
	INC X
	CMP X, $03FA
	BNE CODE_0D90
	RET

;---------------------------------------------------------------------------

CODE_0DA3:
	MOV A, $0438
	BMI CODE_0DBD
	CMP A, $0439
	BEQ CODE_0DB3
CODE_0DAD:
	MOV A, $0438
	JMP CODE_0CB9

CODE_0DB3:
	MOV A, $044D
	BNE CODE_0DAD
	MOV A, #$FF
	MOV $0438, A
CODE_0DBD:
	RET

;---------------------------------------------------------------------------

CODE_0DBE:
	MOV X, #$00
	MOV $5F, X
	MOV $41, #$01
CODE_0DC5:
	MOV $42, X
	MOV A, $61+x
	BNE CODE_0DCE
	JMP CODE_0E91

CODE_0DCE:
	MOV A, $044E+x
	BEQ CODE_0DDC
	MOV A, $044E+x
	SETC
	SBC A, #$01
	MOV $044E+x, A
CODE_0DDC:
	MOV A, X
	DEC $7C+x
	BEQ CODE_0DE4
	JMP CODE_0E8B

CODE_0DE4:
	CALL CODE_0F6B
	BNE CODE_0E51
CODE_0DE9:
	CALL CODE_0F6B
	BEQ CODE_0E16
	CMP A, #$02
	BEQ CODE_0E07
	MOV A, #$00
	MOV $0355+x, A
	MOV $61+x, A
	MOV $0356+x, A
	MOV $044E+x, A
	MOV A, $41
	TSET $0040, A
	JMP CODE_0E91

CODE_0E07:
	CALL CODE_0F6B
	PUSH A
	CALL CODE_0F6B
	MOV $30+x, A
	POP A
	MOV $2F+x, A
	JMP CODE_0DE4

CODE_0E16:
	MOV A, ($1F+x)
	MOV $2F+x, A
	INC $1F+x
	BNE CODE_0E20
	INC $20+x
CODE_0E20:
	MOV A, ($1F+x)
	MOV $30+x, A
	INC $1F+x
	BNE CODE_0E2A
	INC $20+x
CODE_0E2A:
	MOV A, $30+x
	BEQ CODE_0E39
	CMP A, #$FF
	BEQ CODE_0E4E
	CMP A, #$01
	BEQ CODE_0E3C
	JMP CODE_0DE4

CODE_0E39:
	JMP CODE_0C28

CODE_0E3C:
	MOV A, ($1F+x)
	PUSH A
	INC $1F+x
	BNE CODE_0E45
	INC $20
CODE_0E45:
	MOV A, ($1F+x)
	MOV $20+x, A
	POP A
	MOV $1F+x, A
	BRA CODE_0E16

CODE_0E4E:
	JMP CODE_0BE0

CODE_0E51:
	BMI CODE_0E6C
	MOV $0200+x, A
	CALL CODE_0F6B
	BMI CODE_0E6C
	BNE CODE_0E60
	JMP CODE_0DE9

CODE_0E60:
	ASL A
	MOV $0210+x, A
	MOV A, #$FF
	MOV $0201+x, A
	JMP CODE_0DE4

CODE_0E6C:
	CMP A, #$CA
	BCC CODE_0E76
	CALL CODE_0F54
	JMP CODE_0DE4

CODE_0E76:
	CALL CODE_0A85
	MOV A, $0200+x
	MOV $7C+x, A
	MOV Y, A
	MOV A, $0201+x
	MUL YA
	MOV A, Y
	BNE CODE_0E87
	INC A
CODE_0E87:
	MOV $7D+x, A
	BRA CODE_0E8E

CODE_0E8B:
	CALL CODE_148E
CODE_0E8E:
	CALL CODE_12F0
CODE_0E91:
	INC X
	INC X
	ASL $41
	BEQ CODE_0E9A
	JMP CODE_0DC5

CODE_0E9A:
	MOV A, $4D
	BEQ CODE_0EA9
	MOVW YA, $4F
	ADDW YA, $4B
	DBNZ $4D, CODE_0EA7
	MOVW YA, $4D
CODE_0EA7:
	MOVW $4B, YA
CODE_0EA9:
	MOV A, $79
	BEQ CODE_0EC2
	MOVW YA, $75
	ADDW YA, $71
	MOVW $71, YA
	MOVW YA, $77
	ADDW YA, $73
	DBNZ $79, CODE_0EC0
	MOVW YA, $79
	MOVW $71, YA
	MOV Y, $7B
CODE_0EC0:
	MOVW $73, YA
CODE_0EC2:
	MOV A, $5B
	BEQ CODE_0ED5
	MOVW YA, $5D
	ADDW YA, $59
	DEC $5B
	BNE CODE_0ED0
	MOVW YA, $5B
CODE_0ED0:
	MOVW $59, YA
	MOV $5F, #$FF
CODE_0ED5:
	MOV X, #$00
	MOV $41, #$01
CODE_0EDA:
	MOV A, $61+x
	BEQ CODE_0EE1
	CALL CODE_1352
CODE_0EE1:
	INC X
	INC X
	ASL $41
	BNE CODE_0EDA
	RET

;---------------------------------------------------------------------------

DATA_0EE8:
	dw CODE_0F7E
	dw CODE_10FB
	dw CODE_1166
	dw CODE_117F
	dw CODE_118B
	dw CODE_11A6
	dw CODE_11AB
	dw CODE_11BD
	dw CODE_11C7
	dw CODE_11D9
	dw CODE_11DD
	dw CODE_11E2
	dw CODE_11EE
	dw CODE_120F
	dw CODE_1218
	dw CODE_1239
	dw CODE_1196
	dw CODE_11F1
	dw CODE_11F5
	dw CODE_120B
	dw CODE_1231
	dw CODE_124A
	dw CODE_127E
	dw CODE_1285
	dw CODE_125D
	dw CODE_1300
	dw DATA_0F30
	dw CODE_11E1
	dw CODE_1047
	dw CODE_10E5
	dw CODE_110D
	dw CODE_1111
	dw CODE_1117
	dw CODE_1121
	dw CODE_1137
	dw CODE_114F

DATA_0F30:
	db $01,$01,$02,$03,$00,$01,$02,$01
	db $02,$01,$01,$03,$00,$01,$02,$01
	db $01,$03,$03,$00,$01,$03,$00,$03
	db $03,$03,$01,$00,$01,$04,$00,$00
	db $01,$01,$01,$00

CODE_0F54:
	AND A, #$7F
	SETC
	SBC A, #$4A
	ASL A
	MOV Y, A
	MOV A, DATA_0EE8+$01+y
	PUSH A
	MOV A, DATA_0EE8+y
	PUSH A
	MOV A, Y
	LSR A
	MOV Y, A
	MOV A, DATA_0F30+y
	BEQ CODE_0F73
CODE_0F6B:
	MOV A, ($2F+x)
CODE_0F6D:
	INC $2F+x
	BNE CODE_0F73
	INC $30+x
CODE_0F73:
	MOV Y, A
	RET

;---------------------------------------------------------------------------

CODE_0F75:
	MOV A, ($2F+x)
	INC $2F+x
	BNE CODE_0F7D
	INC $30+x
CODE_0F7D:
	RET

;---------------------------------------------------------------------------

CODE_0F7E:
	MOV $0211+x, A
	MOV Y, A
	CMP Y, #$FF
	BEQ CODE_0FA5
	BPL CODE_0FB7
	SETC
	SBC A, #$80
CODE_0F8B:
	MOV $51, A
	MOV Y, #$02
	MUL YA
	MOVW $08, YA
	CLRC
	ADC $08, #$00
	ADC $09, #$60
	MOV A, $41
	TCLR $0044, A
	MOV A, #$11
	MOV $03E4, A
	BRA CODE_0FD1

CODE_0FA5:
	CALL CODE_0F6B
	AND A, #$1F
	AND $43, #$20
	TSET $0043, A
	OR $44, $41
	MOV A, #$00
	BRA CODE_0FC3

CODE_0FB7:
	PUSH A
	MOV A, #$01
	MOV $03E4, A
	MOV A, $41
	TCLR $0044, A
	POP A
CODE_0FC3:
	MOV $51, A
	MOV Y, #$02
	MUL YA
	MOVW $08, YA
	CLRC
	ADC $08, #$00
	ADC $09, #$20
CODE_0FD1:
	MOV A, $0E
	AND A, $41
	BNE CODE_1046
	MOV A, $51
	CLRC
	ADC A, $03E4
	ASL A
	ASL A
	MOV $0368, X
	MOV X, A
	MOV Y, #$01
	MOV A, ($08)+y
	PUSH A
	DEC Y
	MOV A, ($08)+y
	POP Y
	MOVW $08, YA
	MOV A, $08
	CLRC
	ADC A, #$05
	MOV DATA_1F00+x, A
	MOV A, $09
	ADC A, #$00
	MOV DATA_1F00+$01+x, A
	MOV Y, #$00
	MOV A, ($08)+y
	CLRC
	ADC A, DATA_1F00+x
	MOV DATA_1F00+$02+x, A
	INC Y
	MOV A, ($08)+y
	ADC A, DATA_1F00+$01+x
	MOV DATA_1F00+$03+x, A
	INC Y
	MOV X, $0368
	MOV A, ($08)+y
	MOV $0220+x, A
	INC Y
	MOV A, ($08)+y
	MOV $0221+x, A
	MOV A, #$00
	MOV $03A3+x, A
	MOV A, #$1F
	MOV $03C3+x, A
	MOV $03C4+x, A
	MOV A, #$7F
	MOV $03D3+x, A
	MOV A, #$00
	MOV $03D4+x, A
	MOV A, X
	XCN A
	LSR A
	OR A, #$04
	MOV Y, A
	MOV A, $51
	CLRC
	ADC A, $03E4
	CALL CODE_0BBF
CODE_1046:
	RET

;---------------------------------------------------------------------------

CODE_1047:
	MOV $0211+x, A
	MOV Y, A
	MOV $51, A
	MOV Y, #$02
	MUL YA
	MOVW $08, YA
	MOV A, $043A
	CLRC
	ADC A, $08
	MOV $08, A
	MOV A, $043B
	CLRC
	ADC A, $09
	MOV $09, A
	MOV A, $41
	TCLR $0044, A
	MOV A, $0E
	AND A, $41
	BEQ CODE_1070
	JMP CODE_10E4

CODE_1070:
	MOV Y, #$01
	MOV A, ($08)+y
	PUSH A
	DEC Y
	MOV A, ($08)+y
	POP Y
	MOVW $08, YA
	MOV A, $51
	MOV $52, A
	CLRC
	ADC A, #$28
	MOV $51, A
	ASL A
	ASL A
	MOV $0368, X
	MOV X, A
	MOV A, $08
	CLRC
	ADC A, #$05
	MOV DATA_1F00+x, A
	MOV A, $09
	ADC A, #$00
	MOV DATA_1F00+$01+x, A
	MOV Y, #$00
	MOV A, ($08)+y
	CLRC
	ADC A, DATA_1F00+x
	MOV DATA_1F00+$02+x, A
	INC Y
	MOV A, ($08)+y
	ADC A, DATA_1F00+$01+x
	MOV DATA_1F00+$03+x, A
	INC Y
	MOV X, $0368
	MOV A, ($08)+y
	MOV $0220+x, A
	INC Y
	MOV A, ($08)+y
	MOV $0221+x, A
	INC Y
	MOV A, ($08)+y
	MOV $52, A
	MOV Y, #$00
	PUSH X
	MOV X, #$0C
	DIV YA, X
	MOV Y, #$0C
	MUL YA
	MOV $53, A
	MOV A, $52
	SETC
	SBC A, $53
	EOR A, #$FF
	INC A
	POP X
	MOV $03A3+x, A
	MOV A, X
	XCN A
	LSR A
	OR A, #$04
	MOV Y, A
	MOV A, $51
	MOV $F2, Y
	MOV $F3, A
CODE_10E4:
	RET

;---------------------------------------------------------------------------

CODE_10E5:
	MOV $03C3+x, A
	CALL CODE_0F6B
	MOV $03C4+x, A
	CALL CODE_0F6B
	MOV $03D3+x, A
	CALL CODE_0F6B
	MOV $03D4+x, A
	RET

;---------------------------------------------------------------------------

CODE_10FB:
	MOV $02A1+x, A
	CMP A, #$14
	BCC CODE_1104
	MOV A, #$14
CODE_1104:
	MOV $0281+x, A
	MOV A, #$00
	MOV $0280+x, A
	RET

;---------------------------------------------------------------------------

CODE_110D:
	MOV A, #$01
	BRA CODE_1113

CODE_1111:
	MOV A, #$00
CODE_1113:
	MOV $0393+x, A
	RET

;---------------------------------------------------------------------------

CODE_1117:
	CMP A, #$10
	BCC CODE_111D
	MOV A, #$10
CODE_111D:
	MOV $045E+x, A
	RET

;---------------------------------------------------------------------------

CODE_1121:
	MOV $51, A
	CALL CODE_062E
	MOV A, $0C
	AND A, #$1F
CODE_112A:
	CMP A, $51
	BCC CODE_1133
	SETC
	SBC A, $51
	BRA CODE_112A

CODE_1133:
	MOV $0341+x, A
	RET

;---------------------------------------------------------------------------

CODE_1137:
	MOV $51, A
	CALL CODE_062E
	MOV A, $0C
	AND A, #$1F
CODE_1140:
	CMP A, $51
	BCC CODE_1149
	SETC
	SBC A, $51
	BRA CODE_1140

CODE_1149:
	OR A, #$03
	MOV $0200+x, A
	RET

;---------------------------------------------------------------------------

CODE_114F:
	MOV A, #$03
	MOV $51, A
	CALL CODE_062E
	MOV A, $0C
	AND A, #$0F
CODE_115A:
	CMP A, $51
	BCC CODE_1163
	SETC
	SBC A, $51
	BRA CODE_115A

CODE_1163:
	JMP CODE_0F8B

;---------------------------------------------------------------------------

CODE_1166:
	MOV $9D+x, A
	PUSH A
	CALL CODE_0F6B
	MOV $02A0+x, A
	SETC
	SBC A, $0281+x
	POP X
	CALL CODE_1336
	MOV $0290+x, A
	MOV A, Y
	MOV $0291+x, A
	RET

;---------------------------------------------------------------------------

CODE_117F:
	MOV $0310+x, A
	CALL CODE_0F6B
	MOV $0301+x, A
	CALL CODE_0F6B
CODE_118B:
	MOV $BD+x, A
	MOV $0321+x, A
	MOV A, #$00
	MOV $0311+x, A
	RET

;---------------------------------------------------------------------------

CODE_1196:
	MOV $0311+x, A
	PUSH A
	MOV Y, #$00
	MOV A, $BD+x
	POP X
	DIV YA, X
	MOV X, $42
	MOV $0320+x, A
	RET

;---------------------------------------------------------------------------

CODE_11A6:
	MOV A, #$00
	MOVW $59, YA
	RET

;---------------------------------------------------------------------------

CODE_11AB:
	MOV $5B, A
	CALL CODE_0F6B
	MOV $5C, A
	SETC
	SBC A, $5A
	MOV X, $5B
	CALL CODE_1336
	MOVW $5D, YA
	RET

;---------------------------------------------------------------------------

CODE_11BD:
	MOV A, $036B
	BNE CODE_11C6
	MOV A, #$00
	MOVW $4B, YA
CODE_11C6:
	RET

;---------------------------------------------------------------------------

CODE_11C7:
	MOV $4D, A
	CALL CODE_0F6B
	MOV $4E, A
	SETC
	SBC A, $4C
	MOV X, $4D
	CALL CODE_1336
	MOVW $4F, YA
	RET

;---------------------------------------------------------------------------

CODE_11D9:
	MOV $0351, A
	RET

;---------------------------------------------------------------------------

CODE_11DD:
	MOV $0341+x, A
	RET

;---------------------------------------------------------------------------

CODE_11E1:
	RET

;---------------------------------------------------------------------------

CODE_11E2:
	MOV $0340+x, A
	CALL CODE_0F6B
	MOV $0331+x, A
	CALL CODE_0F6B
CODE_11EE:
	MOV $CD+x, A
	RET

;---------------------------------------------------------------------------

CODE_11F1:
	MOV A, #$01
	BRA CODE_11F7

CODE_11F5:
	MOV A, #$00
CODE_11F7:
	MOV $02F0+x, A
	MOV A, Y
	MOV $02E1+x, A
	CALL CODE_0F6B
	MOV $02E0+x, A
	CALL CODE_0F6B
	MOV $02F1+x, A
	RET

;---------------------------------------------------------------------------

CODE_120B:
	MOV $02E0+x, A
	RET

;---------------------------------------------------------------------------

CODE_120F:
	MOV $0251+x, A
	MOV A, #$00
	MOV $0250+x, A
	RET

;---------------------------------------------------------------------------

CODE_1218:
	MOV $9C+x, A
	PUSH A
	CALL CODE_0F6B
	MOV $0270+x, A
	SETC
	SBC A, $0251+x
	POP X
	CALL CODE_1336
	MOV $0260+x, A
	MOV A, Y
	MOV $0261+x, A
	RET

;---------------------------------------------------------------------------

CODE_1231:
	MOV $51, A
	MOV A, $51
	MOV $02D1+x, A
	RET

;---------------------------------------------------------------------------

CODE_1239:
	ASL A
	MOV Y, A
	MOV A, ($19)+y
	MOV $043D+x, A
	INC Y
	MOV A, ($19)+y
	MOV $043E+x, A
	MOV $03E6+x, A
	RET

;---------------------------------------------------------------------------

CODE_124A:
	MOV $45, A
	CALL CODE_0F6B
	MOV A, #$00
	MOVW $71, YA
	CALL CODE_0F6B
	MOV A, #$00
	MOVW $73, YA
	CLR5 $43
	RET

;---------------------------------------------------------------------------

CODE_125D:
	MOV $79, A
	CALL CODE_0F6B
	MOV $7A, A
	SETC
	SBC A, $72
	MOV X, $79
	CALL CODE_1336
	MOVW $75, YA
	CALL CODE_0F6B
	MOV $7B, A
	SETC
	SBC A, $74
	MOV X, $79
	CALL CODE_1336
	MOVW $77, YA
	RET

;---------------------------------------------------------------------------

CODE_127E:
	MOVW $71, YA
	MOVW $73, YA
	SET5 $43
	RET

;---------------------------------------------------------------------------

CODE_1285:
	CALL CODE_12A7
	CALL CODE_0F6B
	MOV $49, A
	CALL CODE_0F6B
	MOV Y, #$08
	MUL YA
	MOV X, A
	MOV Y, #$0F
CODE_1296:
	MOV A, DATA_1670+x
	CALL CODE_0BBF
	INC X
	MOV A, Y
	CLRC
	ADC A, #$10
	MOV Y, A
	BPL CODE_1296
	MOV X, $42
	RET

;---------------------------------------------------------------------------

CODE_12A7:
	MOV $48, A
	MOV Y, #$7D
	MOV $00F2, Y
	MOV A, $00F3
	CMP A, $48
	BEQ CODE_12E0
	AND A, #$0F
	EOR A, #$FF
	BBC7 $47, CODE_12BF
	CLRC
	ADC A, $47
CODE_12BF:
	MOV $47, A
	MOV Y, #$04
CODE_12C3:
	MOV A, DATA_063A-$01+y
	MOV $00F2, A
	MOV A, #$00
	MOV $00F3, A
	DBNZ Y, CODE_12C3
	MOV A, $43
	OR A, #$20
	MOV Y, #$6C
	CALL CODE_0BBF
	MOV A, $48
	MOV Y, #$7D
	CALL CODE_0BBF
CODE_12E0:
	ASL A
	ASL A
	ASL A
	EOR A, #$FF
	SETC
	ADC A, $FF
	MOV Y, #$6D
	JMP CODE_0BBF

;---------------------------------------------------------------------------

CODE_12ED:
	MOV $60, A
	RET

;---------------------------------------------------------------------------

CODE_12F0:
	MOV A, $AC+x
	BNE CODE_1328
	MOV A, ($2F+x)
	CMP A, #$E3
	BNE CODE_1328
	CALL CODE_0F6D
	CALL CODE_0F6B
CODE_1300:
	MOV $AD+x, A
	CALL CODE_0F6B
	MOV $AC+x, A
	CALL CODE_0F6B
	CLRC
	ADC A, $0351
	ADC A, $0341+x
CODE_1311:
	AND A, #$7F
	MOV $02D0+x, A
	SETC
	SBC A, $02B1+x
	MOV Y, $AC+x
	PUSH Y
	POP X
	CALL CODE_1336
	MOV $02C0+x, A
	MOV A, Y
	MOV $02C1+x, A
CODE_1328:
	MOV A, #$00
	RET

;---------------------------------------------------------------------------

CODE_132B:
	MOV A, $02B1+x
	MOV $05, A
	MOV A, $02B0+x
	MOV $04, A
	RET

;---------------------------------------------------------------------------

CODE_1336:
	NOTC
	ROR $06
	BPL CODE_133E
	EOR A, #$FF
	INC A
CODE_133E:
	MOV Y, #$00
	DIV YA, X
	PUSH A
	MOV A, #$00
	DIV YA, X
	POP Y
	MOV X, $42
CODE_1348:
	BBC7 $06, CODE_1351
	MOVW $08, YA
	MOVW YA, $02
	SUBW YA, $08
CODE_1351:
	RET

;---------------------------------------------------------------------------

CODE_1352:
	MOV A, $9C+x
	BEQ CODE_135F
	MOV A, #$50
	MOV Y, #$02
	DEC $9C+x
	CALL CODE_145A
CODE_135F:
	MOV Y, $CD+x
	BEQ CODE_1386
	MOV A, $0340+x
	CBNE $CC+x, CODE_1384
	OR $5F, $41
	MOV A, $0330+x
	BPL CODE_1378
	INC Y
	BNE CODE_1378
	MOV A, #$80
	BRA CODE_137C

CODE_1378:
	CLRC
	ADC A, $0331+x
CODE_137C:
	MOV $0330+x, A
	CALL CODE_164B
	BRA CODE_138B

CODE_1384:
	INC $CC+x
CODE_1386:
	MOV A, #$FF
	CALL CODE_1656
CODE_138B:
	MOV A, $9D+x
	BEQ CODE_1398
	MOV A, #$80
	MOV Y, #$02
	DEC $9D+x
	CALL CODE_145A
CODE_1398:
	MOV A, $41
	AND A, $5F
	BEQ CODE_1408
	MOV A, $0281+x
	MOV Y, A
	MOV A, $0280+x
	MOVW $04, YA
CODE_13A7:
	MOV A, X
	XCN A
	LSR A
	MOV $06, A
	MOV A, $0392
	CMP A, #$02
	BNE CODE_13BF
	MOV A, $045E+x
	BEQ CODE_13BF
	MOV A, $02A1+x
	CMP A, #$40
	BCS CODE_1409
CODE_13BF:
	MOV A, $0392
	BNE CODE_13C4
CODE_13C4:
	MOV Y, $05
	MOV A, DATA_1444+$01+y
	SETC
	SBC A, DATA_1444+y
	MOV Y, $04
	MUL YA
	MOV A, Y
	MOV Y, $05
	PUSH A
	MOV A, $0392
	BNE CODE_13DE
	POP A
	MOV A, #$64
	BRA CODE_13E3

CODE_13DE:
	POP A
	CLRC
	ADC A, DATA_1444+y
CODE_13E3:
	MOV Y, A
	MOV A, $0271+x
	MUL YA
	MOV A, $02A1+x
	ASL A
	BBC0 $06, CODE_13F0
	ASL A
CODE_13F0:
	MOV A, Y
	BCC CODE_13F6
	EOR A, #$FF
	INC A
CODE_13F6:
	MOV Y, $06
	CALL CODE_0BB7
	MOV Y, #$14
	MOV A, #$00
	SUBW YA, $04
	MOVW $04, YA
	INC $06
	BBC1 $06, CODE_13BF
CODE_1408:
	RET

CODE_1409:
	BPL CODE_141E
	CALL CODE_1431
	MOV A, $0271+x
	LSR A
	MOV Y, $06
	CALL CODE_0BBF
	INC Y
	MOV A, $045F+x
	JMP CODE_0BBF

CODE_141E:
	CALL CODE_1431
	MOV A, $045F+x
	MOV Y, $06
	CALL CODE_0BBF
	INC Y
	MOV A, $0271+x
	LSR A
	JMP CODE_0BBF

CODE_1431:
	MOV A, $045E+x
	MOV Y, A
	MOV A, $0271+x
	LSR A
	XCN A
	AND A, #$0F
	MUL YA
	EOR A, #$FF
	INC A
	MOV $045F+x, A
	RET

DATA_1444:
	db $00,$01,$03,$07,$0D,$15,$1E,$29
	db $34,$42,$51,$5E,$67,$6E,$73,$77
	db $7A,$7C,$7D,$7E,$7F,$7F

;---------------------------------------------------------------------------

CODE_145A:
	OR $5F, $41
CODE_145D:
	MOVW $08, YA
	MOVW $0A, YA
	PUSH X
	POP Y
	CLRC
	BNE CODE_1470
	ADC $0A, #$1F
	MOV A, #$00
	MOV ($08)+y, A
	INC Y
	BRA CODE_1479

CODE_1470:
	ADC $0A, #$10
	CALL CODE_1477
	INC Y
CODE_1477:
	MOV A, ($08)+y
CODE_1479:
	ADC A, ($0A)+y
	MOV ($08)+y, A
	RET

;---------------------------------------------------------------------------

CODE_147E:
	INC Y
	MOV A, ($08)+y
	PUSH A
	INC Y
	MOV A, ($08)+y
	MOV $09, A
	POP A
	MOV $08, A
	MOV Y, #$00
	BRA CODE_14B2

CODE_148E:
	CMP X, $03FA
	BCS CODE_149C
	MOV A, #$01
	CMP A, $7C+x
	BEQ CODE_14A5
	JMP CODE_1557

CODE_149C:
	MOV A, #$01
	CMP A, $7C+x
	BEQ CODE_14A5
	JMP CODE_1557

CODE_14A5:
	MOV A, #$00
	MOV $037E, A
	MOV A, $2F+x
	MOV Y, $30+x
	MOVW $08, YA
	MOV Y, #$00
CODE_14B2:
	MOV A, ($08)+y
	BEQ CODE_14D5
	BMI CODE_14BF
CODE_14B8:
	INC Y
	MOV A, ($08)+y
	BPL CODE_14B8
	BEQ CODE_14D5
CODE_14BF:
	CMP A, #$C8
	BNE CODE_14C6
	JMP CODE_1557

CODE_14C6:
	CMP A, #$CA
	BCC CODE_1537
	INC Y
	PUSH Y
	MOV Y, A
	POP A
	CLRC
	ADC A, $0E66+y
	MOV Y, A
	BRA CODE_14B2

CODE_14D5:
	INC Y
	MOV A, ($08)+y
	BEQ CODE_14E0
	CMP A, #$01
	BEQ CODE_1537
	BRA CODE_147E

CODE_14E0:
	MOV A, $20+x
	PUSH A
	MOV A, $1F+x
	POP Y
	MOVW $08, YA
	MOV Y, $037E
CODE_14EB:
	MOV A, ($08)+y
	PUSH A
	INC Y
	MOV A, ($08)+y
	INC Y
	MOV $037E, Y
	MOV Y, A
	POP A
	MOVW $08, YA
	MOV Y, #$00
	MOV A, $09
	BEQ CODE_1537
	CMP A, #$FF
	BEQ CODE_1509
	CMP A, #$01
	BEQ CODE_151C
	BRA CODE_14B2

CODE_1509:
	PUSH X
	POP Y
	MOV A, ($1D)+y
	PUSH A
	INC Y
	MOV A, ($1D)+y
	MOV Y, A
	POP A
	MOVW $08, YA
	MOV Y, #$00
	MOV $037E, Y
	BRA CODE_14EB

CODE_151C:
	MOV A, $20+x
	PUSH A
	MOV A, $1F+x
	POP Y
	MOVW $08, YA
	MOV Y, #$02
	MOV A, ($08)+y
	PUSH A
	INC Y
	MOV A, ($08)+y
	MOV Y, A
	POP A
	MOVW $08, YA
	MOV Y, #$00
	MOV $037E, Y
	BRA CODE_14EB

CODE_1537:
	CMP A, #$C9
	BNE CODE_1546
	MOV A, $8C+x
	CMP A, #$04
	BEQ CODE_1557
	CALL CODE_170B
	BRA CODE_1557

CODE_1546:
	CMP X, $03FA
	BCS CODE_1552
	MOV A, $0200+x
	CMP A, #$02
	BCC CODE_1557
CODE_1552:
	MOV A, $41
	TSET $0040, A
CODE_1557:
	CLR7 $07
	MOV A, $AC+x
	BEQ CODE_1570
	MOV A, $AD+x
	BEQ CODE_1565
	DEC $AD+x
	BRA CODE_1570

CODE_1565:
	SET7 $07
	MOV A, #$B0
	MOV Y, #$02
	DEC $AC+x
	CALL CODE_145D
CODE_1570:
	CALL CODE_132B
	MOV A, $BD+x
	BEQ CODE_15C1
	MOV A, $0310+x
	CBNE $BC+x, CODE_15BF
	MOV A, $008D+x
	CMP A, $0311+x
	BNE CODE_158A
	MOV A, $0321+x
	BRA CODE_1595

CODE_158A:
	INC $8D+x
	MOV Y, A
	BEQ CODE_1591
	MOV A, $BD+x
CODE_1591:
	CLRC
	ADC A, $0320+x
CODE_1595:
	MOV $BD+x, A
	MOV A, $0300+x
	CLRC
	ADC A, $0301+x
	MOV $0300+x, A
CODE_15A1:
	MOV $06, A
	ASL A
	ASL A
	BCC CODE_15A9
	EOR A, #$FF
CODE_15A9:
	MOV Y, A
	MOV A, $BD+x
	CMP A, #$F1
	BCC CODE_15B5
	AND A, #$0F
	MUL YA
	BRA CODE_15B9

CODE_15B5:
	MUL YA
	MOV A, Y
	MOV Y, #$00
CODE_15B9:
	CALL CODE_1636
CODE_15BC:
	JMP CODE_0B32

CODE_15BF:
	INC $BC+x
CODE_15C1:
	BBS7 $07, CODE_15BC
	RET

;---------------------------------------------------------------------------

CODE_15C5:
	CLR7 $07
	MOV A, $CD+x
	BEQ CODE_15D4
	MOV A, $0340+x
	CBNE $CC+x, CODE_15D4
	CALL CODE_163E
CODE_15D4:
	MOV A, $0281+x
	MOV Y, A
	MOV A, $0280+x
	MOVW $04, YA
	MOV A, $9D+x
	BEQ CODE_15EB
	MOV A, $0291+x
	MOV Y, A
	MOV A, $0290+x
	CALL CODE_1620
CODE_15EB:
	BBC7 $07, CODE_15F1
	CALL CODE_13A7
CODE_15F1:
	CLR7 $07
	CALL CODE_132B
	MOV A, $AC+x
	BEQ CODE_1608
	MOV A, $AD+x
	BNE CODE_1608
	MOV A, $02C1+x
	MOV Y, A
	MOV A, $02C0+x
	CALL CODE_1620
CODE_1608:
	MOV A, $BD+x
	BEQ CODE_15C1
	MOV A, $0310+x
	CBNE $BC+x, CODE_15C1
	MOV Y, $4A
	MOV A, $0301+x
	MUL YA
	MOV A, Y
	CLRC
	ADC A, $0300+x
	JMP CODE_15A1

;---------------------------------------------------------------------------

CODE_1620:
	SET7 $07
	MOV $06, Y
	CALL CODE_1348
	PUSH Y
	MOV Y, $4A
	MUL YA
	MOV $08, Y
	MOV $09, #$00
	MOV Y, $4A
	POP A
	MUL YA
	ADDW YA, $08
CODE_1636:
	CALL CODE_1348
	ADDW YA, $04
	MOVW $04, YA
	RET

;---------------------------------------------------------------------------

CODE_163E:
	SET7 $07
	MOV Y, $4A
	MOV A, $0331+x
	MUL YA
	MOV A, Y
	CLRC
	ADC A, $0330+x
CODE_164B:
	ASL A
	BCC CODE_1650
	EOR A, #$FF
CODE_1650:
	MOV Y, $CD+x
	MUL YA
	MOV A, Y
	EOR A, #$FF
CODE_1656:
	MOV Y, $5A
	MUL YA
	MOV A, $0210+x
	MUL YA
	MOV A, $0251+x
	MUL YA
	CMP X, $03FA
	BCS CODE_1669
	MOV A, $12
	MUL YA
CODE_1669:
	MOV A, Y
	MUL YA
	MOV A, Y
	MOV $0271+x, A
	RET

;---------------------------------------------------------------------------

DATA_1670:
	db $7F,$00,$00,$00,$00,$00,$00,$00
	db $58,$BF,$DB,$F0,$FE,$07,$0C,$0C
	db $0C,$21,$2B,$2B,$13,$FE,$F3,$F9
	db $34,$33,$00,$D9,$E5,$01,$FC,$EB

;---------------------------------------------------------------------------

CODE_1690:
	MOV A, $8C+x
	BEQ CODE_16A4
	CMP A, #$01
	BEQ CODE_16A5
	CMP A, #$02
	BEQ CODE_16C3
	CMP A, #$04
	BEQ CODE_16D3
	CMP A, #$05
	BEQ CODE_16F6
CODE_16A4:
	RET

CODE_16A5:
	CALL CODE_172E
	CMP A, #$7F
	BNE CODE_16A4
	MOV A, $03D3+x
	CMP A, #$7F
	BNE CODE_16B8
	INC $8C+x
	INC $8C+x
	RET

CODE_16B8:
	MOV A, $03C4+x
	OR A, #$A0
	CALL CODE_1721
	INC $8C+x
	RET

CODE_16C3:
	CALL CODE_172E
	CMP A, $03D3+x
	BCS CODE_16A4
	MOV A, #$80
	CALL CODE_1721
	INC $8C+x
	RET

CODE_16D3:
	CALL CODE_172E
	CMP A, #$01
	BCS CODE_16A4
	MOV A, $03D4+x
	AND A, #$E0
	BEQ CODE_16F1
	LSR A
	LSR A
	LSR A
	LSR A
	MOV $03B4+x, A
	MOV A, #$CB
	CALL CODE_1721
	INC $8C+x
	BRA CODE_16F6

CODE_16F1:
	MOV A, #$06
	MOV $8C+x, A
	RET

CODE_16F6:
	CALL CODE_172E
	CMP A, #$03
	BCC CODE_16A4
	MOV A, #$10
	SETC
	SBC A, $03B4+x
	OR A, #$A0
	CALL CODE_1721
	INC $8C+x
	RET

;---------------------------------------------------------------------------

CODE_170B:
	MOV A, $03D4+x
	AND A, #$1F
	OR A, #$A0
	CALL CODE_1721
	INC $8C+x
	RET

;---------------------------------------------------------------------------

CODE_1718:
	MOV A, #$01
	MOV $8C+x, A
	MOV A, $03C3+x
	OR A, #$C0
CODE_1721:
	PUSH A
	MOV A, X
	XCN A
	LSR A
	OR A, #$07
	MOV Y, A
	POP A
	MOV $F2, Y
	MOV $F3, A
	RET

;---------------------------------------------------------------------------

CODE_172E:
	MOV A, X
	XCN A
	LSR A
	OR A, #$08
	MOV Y, A
	MOV $F2, Y
	MOV A, $F3
	RET

;---------------------------------------------------------------------------

CODE_1739:
	MOV $51, Y
	MOV A, $043E+x
	MOV Y, A
	MOV A, $043D+x
	MOVW $1B, YA
	MOV Y, #$00
	MOV A, ($1B)+y
	MOV $52, A
	INC Y
	MOV A, #$00
	MOV $53, A
CODE_174F:
	INC Y
	INC Y
	MOV A, ($1B)+y
	CMP A, $51
	BEQ CODE_1778
	BCC CODE_175B
	BRA CODE_1764

CODE_175B:
	INC Y
	MOV A, ($1B)+y
	CMP A, $51
	BCS CODE_1778
	BEQ CODE_1778
CODE_1764:
	INC $53
	MOV A, $53
	ASL A
	ASL A
	ASL A
	ASL A
	MOV Y, A
	INC Y
	CMP A, $52
	BNE CODE_174F
	MOV A, #$01
	MOV $03F6, A
	RET

CODE_1778:
	MOV A, $53
	XCN A
	INC A
	MOV Y, A
	MOV A, ($1B)+y
	MOV $03F8, A
	INC Y
	MOV A, ($1B)+y
	MOV $03B3+x, A
	INC Y
	INC Y
	INC Y
	MOV A, ($1B)+y
	ASL A
	CMP A, $0210+x
	BCC CODE_1798
	BRA CODE_1764

CODE_1795:
	INC Y
	BRA CODE_17A3

CODE_1798:
	INC Y
	MOV A, ($1B)+y
	ASL A
	CMP A, $0210+x
	BCS CODE_17A3
	BRA CODE_1764

CODE_17A3:
	MOV A, $03F8
	PUSH Y
	CALL CODE_1047
	POP Y
	INC Y
	MOV A, ($1B)+y
	MOV $03C3+x, A
	INC Y
	MOV A, ($1B)+y
	MOV $03C4+x, A
	INC Y
	MOV A, ($1B)+y
	MOV $03D3+x, A
	INC Y
	MOV A, ($1B)+y
	MOV $03D4+x, A
	INC Y
	MOV A, ($1B)+y
	CMP A, #$FF
	BNE CODE_17CC
	BRA CODE_17DF

CODE_17CC:
	CMP A, #$FE
	BNE CODE_17D3
	INC Y
	BRA CODE_1813

CODE_17D3:
	CMP A, #$FD
	BNE CODE_17EF
	MOV A, $51
	AND A, #$7F
	LSR A
	LSR A
	BRA CODE_17EF

CODE_17DF:
	MOV A, $0C
CODE_17E1:
	CMP A, #$14
	BCC CODE_17EA
	SETC
	SBC A, #$14
	BRA CODE_17E1

CODE_17EA:
	PUSH A
	CALL CODE_062E
	POP A
CODE_17EF:
	CALL CODE_10FB
	INC Y
	MOV A, ($1B)+y
	BEQ CODE_1813
	MOV $9D+x, A
	PUSH A
	INC Y
	MOV A, ($1B)+y
	MOV $02A0+x, A
	SETC
	SBC A, $0281+x
	POP X
	PUSH Y
	CALL CODE_1336
	MOV $0290+x, A
	MOV A, Y
	MOV $0291+x, A
	POP Y
	BRA CODE_1814

CODE_1813:
	INC Y
CODE_1814:
	INC Y
	MOV A, ($1B)+y
	ASL A
	CMP A, $0210+x
	BCC CODE_1820
	MOV $0210+x, A
CODE_1820:
	INC Y
	MOV A, ($1B)+y
	ASL A
	CMP A, $0210+x
	BCS CODE_182C
	MOV $0210+x, A
CODE_182C:
	INC Y
	MOV A, ($1B)+y
	MOV $03F9, A
	MOV A, #$00
	MOV $03F6, A
CODE_1837:
	RET

;---------------------------------------------------------------------------

CODE_1838:
	MOV A, $0352
	BEQ CODE_1837
	MOV A, $03FA
	BEQ CODE_184C
	CMP A, #$10
	BEQ CODE_1837
	SETC
	SBC A, #$02
	MOV $03FA, A
CODE_184C:
	MOV A, $0352
	MOV $03E3, A
	MOV Y, A
	MOV A, DATA_1A24-$01+y
	BEQ CODE_1877
	CMP A, #$01
	BEQ CODE_1891
	CMP A, #$04
	BNE CODE_186A
	MOV A, $0352
	OR A, #$80
	MOV $03E3, A
	BRA CODE_1877

CODE_186A:
	CMP A, #$03
	BEQ CODE_1891
	MOV A, $0352
	CLRC
	ADC A, #$80
	MOV $0352, A
CODE_1877:
	MOV X, #$0E
	MOV $03FC, X
CODE_187C:
	MOV A, $0356+x
	CMP A, $0352
	BNE CODE_188A
	MOV $03FC, X
	JMP CODE_18FD

CODE_188A:
	DEC X
	DEC X
	CMP X, $03FA
	BNE CODE_187C
CODE_1891:
	MOV X, #$0E
	MOV $03FC, X
	MOV A, #$FF
	MOV $03FB, A
CODE_189B:
	MOV A, $61+x
	BNE CODE_18A4
	MOV $03FC, X
	BRA CODE_18FD

CODE_18A4:
	MOV A, $0356+x
	BMI CODE_18C0
	MOV A, $0355+x
	BMI CODE_18C0
	MOV A, $044E+x
	BNE CODE_18C0
	MOV A, $7C+x
	CMP A, $03FB
	BCS CODE_18C0
	MOV $03FB, A
	MOV $03FC, X
CODE_18C0:
	DEC X
	DEC X
	CMP X, $03FA
	BNE CODE_189B
	MOV A, $03FB
	BPL CODE_18FD
	MOV A, $0458
	OR A, $045A
	OR A, $045C
	BEQ CODE_18FD
	MOV X, #$0E
	MOV A, #$FF
	MOV $03FB, A
CODE_18DE:
	MOV A, $0355+x
	BMI CODE_18F6
	MOV A, $0356+x
	BMI CODE_18F6
	MOV A, $044E+x
	CMP A, $03FB
	BCS CODE_18F6
	MOV $03FB, A
	MOV $03FC, X
CODE_18F6:
	DEC X
	DEC X
	CMP X, $03FA
	BNE CODE_18DE
CODE_18FD:
	MOV A, $03E3
	MOV Y, A
	MOV A, DATA_1A57-$01+y
	MOV $044E+x, A
	MOV A, DATA_1A8A-$01+y
	MOV $0471+x, A
	MOV A, DATA_1A24-$01+y
	CMP A, #$03
	BNE CODE_191C
	MOV A, $03FB
	CMP A, #$50
	BCC CODE_191C
	RET

CODE_191C:
	MOV X, $03FC
	MOV A, $0352
	MOV A, $03E3
	MOV $0355+x, A
	MOV A, $0352
	BPL CODE_1961
CODE_192D:
	MOV $51, A
	PUSH X
	MOV X, $037F
	BEQ CODE_1957
	MOV A, #$00
	MOV $61+x, A
	MOV $0355+x, A
	MOV $0356+x, A
	MOV A, #$01
CODE_1941:
	ASL A
	DEC X
	DEC X
	BNE CODE_1941
	MOV $58, A
	TSET $0040, A
	MOV Y, #$5C
	MOV $F2, Y
	MOV A, $F3
	OR A, $58
	MOV $F2, Y
	MOV $F3, A
CODE_1957:
	POP X
	MOV A, $51
	AND A, #$7F
	BEQ CODE_19B2
	MOV $037F, X
CODE_1961:
	ASL A
	BEQ CODE_19B2
	MOV Y, A
	MOV A, DATA_19BE-$02+y
	MOV $2F+x, A
	MOV A, DATA_19BE-$01+y
	MOV $30+x, A
	MOV A, #$01
	MOV $61+x, A
	MOV A, $0352
	MOV $0356+x, A
	PUSH X
	MOV A, #$01
CODE_197C:
	ASL A
	DEC X
	DEC X
	BNE CODE_197C
	MOV $58, A
	TSET $0040, A
	MOV Y, #$5C
	MOV $F2, Y
	MOV A, $F3
	OR A, $58
	MOV $F2, Y
	MOV $F3, A
	POP X
	MOV A, #$00
	MOV $0341+x, A
	MOV $0211+x, A
	MOV $02D1+x, A
	MOV $02E0+x, A
	MOV $BD+x, A
	MOV $CD+x, A
	MOV A, #$00
	MOV $9C+x, A
	MOV $9D+x, A
	MOV A, #$02
	MOV $0200+x, A
	MOV $7C+x, A
CODE_19B2:
	MOV A, $03FA
	BEQ CODE_19BD
	CLRC
	ADC A, #$02
	MOV $03FA, A
CODE_19BD:
	RET

DATA_19BE:
	dw DATA_1ABD,DATA_1ACB,DATA_1ADF,DATA_1AE6,DATA_1AFA,DATA_1B06,DATA_1B1F,DATA_1B3E
	dw DATA_1B53,DATA_1B5A,DATA_1B66,DATA_1B6D,DATA_1B79,DATA_1B8B,DATA_1B9D,DATA_1BB1
	dw DATA_1BB8,DATA_1BC4,DATA_1BD0,DATA_1BD7,DATA_1BDE,DATA_1BED,DATA_1BF9,DATA_1C02
	dw DATA_1C0B,DATA_1C12,DATA_1C19,DATA_1C20,DATA_1C30,DATA_1C37,DATA_1C3E,DATA_1C4A
	dw DATA_1C5C,DATA_1C7D,DATA_1C9E,DATA_1CC1,DATA_1CC8,DATA_1CCF,DATA_1CDA,DATA_1CE6
	dw DATA_1D00,DATA_1D28,DATA_1D54,DATA_1D5B,DATA_1D62,DATA_1D73,DATA_1D83,DATA_1D90
	dw DATA_1DA3,DATA_1DB3,DATA_1DC3

DATA_1A24:
	db $00,$00,$01,$04,$00,$02,$01,$01,$01,$01,$01,$01,$04,$04,$01,$01
	db $01,$01,$01,$01,$02,$01,$01,$04,$01,$01,$01,$00,$01,$01,$01,$00
	db $00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02
	db $02,$00,$00

DATA_1A57:
	db $03,$03,$01,$80,$01,$01,$28,$10,$10,$01,$01,$01,$80,$80,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$80,$01,$01,$01,$04,$08,$04,$02,$02
	db $80,$80,$80,$08,$08,$08,$01,$01,$18,$18,$80,$80,$02,$02,$01,$80
	db $80,$04,$01

DATA_1A8A:
	db $00,$00,$00,$01,$00,$00,$00,$01,$01,$00,$00,$00,$01,$01,$00,$00
	db $01,$01,$01,$01,$01,$01,$00,$01,$00,$00,$00,$00,$01,$01,$00,$00
	db $00,$00,$01,$01,$01,$01,$00,$00,$00,$00,$01,$01,$00,$00,$01,$01
	db $00,$01,$00

DATA_1ABD:
	db $CA,$02,$E7,$19,$1F,$7F,$10,$0D,$7F,$9C,$50,$C9,$00,$01

DATA_1ACB:
	db $CA,$03,$E7,$19,$0E,$00,$00,$CD,$32,$14,$78,$D5,$32,$1E,$64,$7F
	db $78,$9F,$00,$01

DATA_1ADF:
	db $CA,$04,$50,$7F,$A8,$00,$01

DATA_1AE6:
	db $CA,$80,$E7,$1F,$02,$00,$16,$DB,$41,$58,$F6,$EB,$03,$46,$73,$A4
	db $28,$C9,$00,$01

DATA_1AFA:
	db $CA,$06,$E7,$1D,$1F,$7F,$00,$50,$5F,$A4,$00,$01

DATA_1B06:
	db $CA,$07,$E7,$1B,$1A,$5F,$1D,$CD,$18,$3C,$7F,$DA,$28,$D5,$19,$3C
	db $50,$7F,$7F,$87,$C8,$00,$02,$1A,$1B

DATA_1B1F:
	db $CA,$0A,$07,$5F,$9D,$CA,$0C,$E7,$15,$10,$00,$12,$DB,$0A,$20,$FA
	db $CD,$00,$5A,$46,$D5,$00,$23,$0A,$20,$64,$92,$7F,$C9,$00,$01

DATA_1B3E:
	db $CA,$81,$E7,$1F,$02,$00,$18,$DB,$1E,$FA,$63,$CD,$19,$28,$A0,$2F
	db $70,$AB,$C9,$00,$01

DATA_1B53:
	db $CA,$80,$50,$69,$A0,$00,$01

DATA_1B5A:
	db $CA,$03,$E7,$1F,$13,$00,$00,$1E,$7F,$A2,$00,$01

DATA_1B66:
	db $CA,$0B,$50,$4B,$A8,$00,$01

DATA_1B6D:
	db $CA,$07,$E7,$1E,$1A,$5F,$1E,$28,$7F,$93,$00,$01

DATA_1B79:
	db $CA,$80,$E7,$19,$01,$00,$12,$CC,$AA,$00,$7F,$64,$8C,$28,$C8,$C9
	db $00,$01

DATA_1B8B:
	db $CA,$80,$E7,$19,$01,$00,$12,$CC,$AA,$14,$7F,$64,$8C,$28,$C8,$C9
	db $00,$01

DATA_1B9D:
	db $CA,$01,$E7,$1F,$12,$00,$1F,$01,$3C,$B7,$9A,$CD,$02,$50,$8C,$23
	db $7F,$B2,$00,$01

DATA_1BB1:
	db $CA,$0A,$0A,$64,$9C,$00,$01

DATA_1BB8:
	db $CA,$01,$E7,$1F,$10,$00,$00,$7F,$7F,$B2,$00,$01

DATA_1BC4:
	db $CA,$0D,$E7,$07,$1A,$00,$1F,$40,$7F,$8C,$00,$01

DATA_1BD0:
	db $CA,$80,$32,$6E,$A4,$00,$01

DATA_1BD7:
	db $CA,$81,$23,$6E,$A4,$00,$01

DATA_1BDE:
	db $CA,$82,$E7,$08,$1F,$7F,$00,$7F,$50,$8C,$C8,$00,$02,$E8,$1B

DATA_1BED:
	db $CA,$83,$E7,$1F,$1A,$00,$1F,$09,$50,$AB,$00,$01

DATA_1BF9:
	db $CA,$05,$EB,$0C,$12,$64,$AB,$00,$01

DATA_1C02:
	db $CA,$80,$CB,$0A,$78,$6E,$9C,$00,$01

DATA_1C0B:
	db $CA,$08,$0C,$6E,$A4,$00,$01

DATA_1C12:
	db $CA,$09,$0C,$75,$AB,$00,$01

DATA_1C19:
	db $CA,$06,$50,$6E,$AB,$00,$01

DATA_1C20:
	db $CA,$0B,$E7,$1F,$06,$00,$00,$CD,$00,$41,$3C,$14,$78,$8C,$00,$01

DATA_1C30:
	db $CA,$80,$20,$7F,$9C,$00,$01

DATA_1C37:
	db $CA,$80,$40,$7F,$A4,$00,$01

DATA_1C3E:
	db $CA,$0D,$E7,$0E,$14,$00,$1F,$24,$64,$A3,$00,$01

DATA_1C4A:
	db $CA,$06,$E7,$1F,$16,$00,$00,$02,$7F,$A5,$02,$7F,$A4,$0C,$7F,$A7
	db $00,$01

DATA_1C5C:
	db $CA,$01,$E7,$18,$16,$20,$18,$DC,$00,$02,$F4,$06,$7F,$98,$9F,$A4
	db $06,$40,$98,$9F,$A4,$06,$20,$98,$9F,$A4,$06,$10,$98,$9F,$A4,$00
	db $01

DATA_1C7D:
	db $CA,$01,$E7,$18,$00,$7F,$00,$DC,$00,$02,$0C,$06,$7F,$A4,$9F,$98
	db $06,$40,$A4,$9F,$98,$06,$20,$A4,$9F,$98,$06,$10,$A4,$9F,$98,$00
	db $01

DATA_1C9E:
	db $E7,$1A,$00,$7F,$18,$03,$2D,$EC,$09,$EB,$05,$ED,$A9,$02,$C9,$EC
	db $0A,$EB,$04,$ED,$A9,$04,$C9,$EC,$07,$EB,$02,$ED,$A9,$03,$C9,$00
	db $02,$A5,$1C

DATA_1CC1:
	db $CA,$80,$24,$7F,$AA,$00,$01

DATA_1CC8:
	db $CA,$80,$24,$7F,$AC,$00,$01

DATA_1CCF:
	db $CA,$80,$CD,$00,$50,$78,$24,$7F,$AE,$00,$01

DATA_1CDA:
	db $CA,$06,$E7,$17,$18,$00,$1F,$1E,$6E,$A3,$00,$01

DATA_1CE6:
	db $CA,$01,$E7,$1F,$12,$00,$1F,$CD,$00,$78,$DC,$DB,$00,$06,$EE,$12
	db $7F,$AB,$12,$50,$AB,$12,$28,$AB,$00,$01

DATA_1D00:
	db $CA,$01,$E7,$1F,$18,$00,$1F,$DB,$00,$03,$F4,$CD,$00,$28,$50,$08
	db $7F,$A4,$AB,$B0,$C9,$B0,$06,$50,$A4,$AB,$B0,$C9,$08,$B0,$04,$28
	db $A4,$AB,$B0,$C9,$08,$B0,$00,$01

DATA_1D28:
	db $CA,$01,$E7,$1F,$18,$00,$1F,$DB,$00,$03,$EE,$CD,$02,$3C,$78,$06
	db $7F,$A4,$A7,$A9,$AB,$AE,$0A,$B0,$06,$50,$A4,$A7,$A9,$AB,$AE,$0A
	db $B0,$06,$28,$A4,$A7,$A9,$AB,$AE,$0A,$B0,$00,$01

DATA_1D54:
	db $CA,$80,$24,$7F,$AA,$00,$01

DATA_1D5B:
	db $CA,$80,$24,$7F,$AA,$00,$01

DATA_1D62:
	db $CA,$02,$E7,$1A,$01,$00,$10,$03,$7F,$9C,$9C,$0D,$9C,$50,$C9,$00
	db $01

DATA_1D73:
	db $CA,$0C,$E7,$11,$1C,$00,$1F,$DB,$06,$08,$FA,$0C,$64,$99,$00,$01

DATA_1D83:
	db $CA,$80,$E7,$1F,$0D,$00,$00,$7F,$7F,$93,$C8,$00,$01

DATA_1D90:
	db $CA,$80,$E7,$04,$00,$7F,$1F,$DB,$00,$FA,$18,$7F,$6E,$87,$C8,$00
	db $02,$9E,$1D

DATA_1DA3:
	db $CA,$0D,$E7,$11,$00,$7F,$1F,$7F,$3C,$93,$C8,$C8,$00,$02,$AD,$1D

DATA_1DB3:
	db $CA,$0B,$E7,$14,$10,$00,$1F,$DB,$00,$30,$04,$30,$6E,$8C,$00,$01

DATA_1DC3:
	db $CA,$0C,$E7,$1F,$1D,$00,$1F,$DB,$00,$03,$FC,$0C,$37,$A4,$00,$01

CODE_1DD3:

;---------------------------------------------------------------------------

%SPCDataBlockEnd(!Define_JP_SPC700_EngineStartAddress)

base $1F00
DATA_1F00:					; Note: Sample table ($2000 is also part of it)

%SPCDataBlockStart(2000)
DATA_2000:
        dw DATA_201C    :       dw DATA_201C+$0021
        dw DATA_21FC    :       dw DATA_21FC+$09E7
        dw DATA_3690    :       dw DATA_3690+$03AE
        dw DATA_3CB1    :       dw DATA_3CB1+$054C
        dw DATA_4965    :       dw DATA_4965+$01FE
        dw DATA_5070    :       dw DATA_5070+$036F
        dw DATA_5556    :       dw DATA_5556+$04BC

DATA_201C:
        incbin "Samples/SFX/00.brr"

DATA_21FC:
        incbin "Samples/SFX/01.brr"

DATA_3690:
        incbin "Samples/SFX/02.brr"

DATA_3CB1:
        incbin "Samples/SFX/03.brr"

DATA_4965:
        incbin "Samples/SFX/04.brr"

DATA_5070:
        incbin "Samples/SFX/05.brr"

DATA_5556:
        incbin "Samples/SFX/06.brr"
%SPCDataBlockEnd(2000)

%EndSPCUploadAndJumpToEngine($!Define_JP_SPC700_EngineStartAddress)
