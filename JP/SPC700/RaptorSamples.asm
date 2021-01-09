
%SPCDataBlockStart(6000)
	dw DATA_6004
	dw DATA_70CF

DATA_6004:
	incbin "Samples/SFX/Raptor1.brr"

DATA_70CF:
	incbin "Samples/SFX/Raptor2.brr"
%SPCDataBlockEnd(6000)

%EndSPCUploadAndJumpToEngine($!Define_JP_SPC700_EngineStartAddress)