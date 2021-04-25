
%SPCDataBlockStart(6000)
	dw DATA_6002

DATA_6002:
	incbin "Samples/SFX/BoneCrunch.brr"
%SPCDataBlockEnd(6000)

%EndSPCUploadAndJumpToEngine($!Define_JP_SPC700_EngineStartAddress)