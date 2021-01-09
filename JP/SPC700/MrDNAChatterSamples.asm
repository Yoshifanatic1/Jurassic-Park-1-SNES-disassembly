
%SPCDataBlockStart(6000)
	dw DATA_6006
	dw DATA_62CA
	dw DATA_64A4

DATA_6006:
	incbin "Samples/SFX/MrDNAChatter1.brr"

DATA_62CA:
	incbin "Samples/SFX/MrDNAChatter2.brr"

DATA_64A4:
	incbin "Samples/SFX/MrDNAChatter3.brr"
%SPCDataBlockEnd(6000)

%EndSPCUploadAndJumpToEngine($!Define_JP_SPC700_EngineStartAddress)