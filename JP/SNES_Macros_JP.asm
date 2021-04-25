
;---------------------------------------------------------------------------

macro UnknownMacro00(RAM1, RAM2, Table1)
	STA.w <RAM1>
	ASL
	ASL
	ASL
	ASL
	STA.w <RAM1>+$80
	LDA.b [$16]
	AND.w #$07FF
	ASL
	ASL
	ASL
	ORA.b $22
	TAX
	LDA.l <Table1>,x
	TAY
	SEC
	ROR
	AND.w #$FFE0
	STA.w <RAM2>
	TYA
	XBA
	AND.w #$3C00
	ORA.b $1E
	AND.w #$3FFF
	STA.w <RAM1>+$40
	TYA
	AND.w #$0003
	ORA.w #DATA_848000>>16
	STA.w <RAM2>+$40
endmacro

;---------------------------------------------------------------------------

macro UnknownMacro01(RAM1, RAM2, Table1)
	STA.w <RAM1>+$02
	ASL
	ASL
	ASL
	ASL
	STA.w <RAM1>+$82
	LDA.l <Table1>,x
	TAY
	SEC
	ROR
	AND.w #$FFE0
	STA.w <RAM2>+$02
	TYA
	XBA
	AND.w #$3C00
	ORA.b $1E
	AND.w #$3FFF
	STA.w <RAM1>+$42
	TYA
	AND.w #$0003
	ORA.w #DATA_848000>>16
	STA.w <RAM2>+$42
endmacro

;---------------------------------------------------------------------------

macro UnknownMacro02()
	LDA.b $1E
	CLC
	ADC.w #$0020
	AND.w #$43FF
	STA.b $1E
endmacro

;---------------------------------------------------------------------------

macro UnknownMacro03()
	LDA.b $16
	CLC
	ADC.w #$0200
	BCC.b +
	INC.b $18
	ADC.w #$7FFF
+:
	STA.b $16
endmacro

;---------------------------------------------------------------------------

macro UnknownMacro04()
	LDA.b $1E
	INC
	AND.w #$001F
	ORA.b $20
	STA.b $1E
endmacro

;---------------------------------------------------------------------------

macro UnknownMacro05()
	LDA.b $16
	INC
	INC
	STA.b $16
endmacro

;---------------------------------------------------------------------------

macro UnknownFunction01(RAM1, RAM2, Table1, Table2, Offset)
	STA.w <RAM1>+<Offset>
	ASL
	ASL
	ASL
	ASL
	STA.w <RAM1>+$80+<Offset>
	LDA.b [$16]
	AND.w #$07FF
	ASL
	ASL
	ASL
	ORA.b $22
	TAX
	LDA.l <Table1>,x
	TAY
	SEC
	ROR
	AND.w #$FFE0
	STA.w <RAM2>+<Offset>
	TYA
	XBA
	AND.w #$3C00
	ORA.b $1E
	AND.w #$3FFF
	STA.w <RAM1>+$40+<Offset>
	TYA
	AND.w #$0003
	ORA.w #DATA_848000>>16
	STA.w <RAM2>+$40+<Offset>
	LDA.b $1E
	CLC
	ADC.w #$0020
	AND.w #$43FF
	STA.b $1E
	STA.w <RAM1>+$02+<Offset>
	ASL
	ASL
	ASL
	ASL
	STA.w <RAM1>+$82+<Offset>
	LDA.l <Table2>,x
	TAY
	SEC
	ROR
	AND.w #$FFE0
	STA.w <RAM2>+$02+<Offset>
	TYA
	XBA
	AND.w #$3C00
	ORA.b $1E
	AND.w #$3FFF
	STA.w <RAM1>+$42+<Offset>
	TYA
	AND.w #$0003
	ORA.w #DATA_848000>>16
	STA.w <RAM2>+$42+<Offset>
if <RAM1>+<Offset> != <RAM1>+$3C
	LDA.b $16
	CLC
	ADC.w #$0200
	BCC.b +
	INC.b $18
	ADC.w #$7FFF
+:
	STA.b $16
	LDA.b $1E
	CLC
	ADC.w #$0020
	AND.w #$43FF
	STA.b $1E
endif
endmacro

;---------------------------------------------------------------------------

macro UnknownFunction02(RAM1, RAM2, Table1, Table2, Offset)
	STA.w <RAM1>+<Offset>
	ASL
	ASL
	ASL
	ASL
	STA.w <RAM1>+$80+<Offset>
	LDA.b [$16]
	AND.w #$07FF
	ASL
	ASL
	ASL
	ORA.b $22
	TAX
	LDA.l <Table1>,x
	TAY
	SEC
	ROR
	AND.w #$FFE0
	STA.w <RAM2>+<Offset>
	TYA
	XBA
	AND.w #$3C00
	ORA.b $1E
	AND.w #$3FFF
	STA.w <RAM1>+$40+<Offset>
	TYA
	AND.w #$0003
	ORA.w #DATA_848000>>16
	STA.w <RAM2>+$40+<Offset>
	LDA.b $16
	CLC
	ADC.w #$0200
	BCC.b +
	INC.b $18
	ADC.w #$7FFF
+:
	STA.b $16
	LDA.b $1E
	CLC
	ADC.w #$0020
	AND.w #$43FF
	STA.b $1E
	STA.w <RAM1>+$02+<Offset>
	ASL
	ASL
	ASL
	ASL
	STA.w <RAM1>+$82+<Offset>
	LDA.b [$16]
	AND.w #$07FF
	ASL
	ASL
	ASL
	ORA.b $22
	TAX
	LDA.l <Table2>,x
	TAY
	SEC
	ROR
	AND.w #$FFE0
	STA.w <RAM2>+$02+<Offset>
	TYA
	XBA
	AND.w #$3C00
	ORA.b $1E
	AND.w #$3FFF
	STA.w <RAM1>+$42+<Offset>
	TYA
	AND.w #$0003
	ORA.w #DATA_848000>>16
	STA.w <RAM2>+$42+<Offset>
if <RAM1>+<Offset> != <RAM1>+$3C
	LDA.b $1E
	CLC
	ADC.w #$0020
	AND.w #$43FF
	STA.b $1E
endif
endmacro

;---------------------------------------------------------------------------

macro UnknownFunction03(RAM1, RAM2, Table1, Table2)
	STA.w <RAM1>
	ASL
	ASL
	ASL
	ASL
	STA.w <RAM1>+$80
	LDA.b [$16]
	AND.w #$07FF
	ASL
	ASL
	ASL
	ORA.b $22
	TAX
	LDA.l <Table1>,x
	TAY
	SEC
	ROR
	AND.w #$FFE0
	STA.w <RAM2>
	TYA
	XBA
	AND.w #$3C00
	ORA.b $1E
	AND.w #$3FFF
	STA.w <RAM1>+$40
	TYA
	AND.w #$0003
	ORA.w #DATA_848000>>16
	STA.w <RAM2>+$40
	LDA.b $16
	INC
	INC
	STA.b $16
	LDA.b $1E
	INC
	ADC.w #$001F
	ORA.b $20
	STA.b $1E
	STA.w <RAM1>+$02
	ASL
	ASL
	ASL
	ASL
	STA.w <RAM1>+$82
	LDA.l <Table2>,x
	TAY
	SEC
	ROR
	AND.w #$FFE0
	STA.w <RAM2>+$02
	TYA
	XBA
	AND.w #$3C00
	ORA.b $1E
	AND.w #$3FFF
	STA.w <RAM1>+$42
	TYA
	AND.w #$0003
	ORA.w #DATA_848000>>16
	STA.w <RAM2>+$42
	LDA.b $1E
	INC
	ADC.w #$001F
	ORA.b $20
	STA.b $1E
endmacro

;---------------------------------------------------------------------------
