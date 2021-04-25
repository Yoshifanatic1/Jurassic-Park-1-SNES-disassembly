; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

lorom
;!ROMVer = $0000						; Note: This is set within the batch script
!JP_U1 = $0001
!JP_U2 = $0002
!JP_E = $0004
!JP_S = $0008
!JP_F = $0010
!JP_G = $0020
!JP_I = $0040
!JP_J = $0080

org $008000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl UncompressedGFXPointersStart,(UncompressedGFXPointersEnd-UncompressedGFXPointersStart)/$0C
	dl CompressedGFXPointersStart,(CompressedGFXPointersEnd-CompressedGFXPointersStart)/$0C
	dl UncompressedTilemapsPointersStart,(UncompressedTilemapsPointersEnd-UncompressedTilemapsPointersStart)/$0C
	dl CompressedTilemapsPointersStart,(CompressedTilemapsPointersEnd-CompressedTilemapsPointersStart)/$0C
	dl MrDNAMessageBoxTilemapsPointersStart,(MrDNAMessageBoxTilemapsPointersEnd-MrDNAMessageBoxTilemapsPointersStart)/$0C
	dl RegularMessageBoxTilemapsPointersStart,(RegularMessageBoxTilemapsPointersEnd-RegularMessageBoxTilemapsPointersStart)/$0C
	dl InteriorMapsPointersStart,(InteriorMapsPointersEnd-InteriorMapsPointersStart)/$0C
	dl UnknownDataPointersStart,(UnknownDataPointersEnd-UnknownDataPointersStart)/$0C
	dl TexturePointersStart,(TexturePointersEnd-TexturePointersStart)/$0C
	dl UncompressedPalettePointersStart,(UncompressedPalettePointersEnd-UncompressedPalettePointersStart)/$0C
	dl CompressedPalettePointersStart,(CompressedPalettePointersEnd-CompressedPalettePointersStart)/$0C
	dl GarbageDataPointersStart,(GarbageDataPointersEnd-GarbageDataPointersStart)/$0C
	dl SPCDataPointersStart,(SPCDataPointersEnd-SPCDataPointersStart)/$0C
	dl SFXBRRPointersStart,(SFXBRRPointersEnd-SFXBRRPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

UncompressedGFXPointersStart:
	dl $81F397,$81F697,GFX_Layer3_RadarTiles,GFX_Layer3_RadarTilesEnd
	dl $848000,$888000,GFX_LayerX_ExteriorAreas,GFX_LayerX_ExteriorAreasEnd
	dl $8FE358,$8FEB58,GFX_Sprite_BigSmokeCloud,GFX_Sprite_BigSmokeCloudEnd
	dl $8FEB58,$8FFB58,GFX_Sprite_RotatingMechanism,GFX_Sprite_RotatingMechanismEnd
	dl $91A1DC,$91F5DC,GFX_Sprite_Pachycephalosaurus,GFX_Sprite_PachycephalosaurusEnd
	dl $928000,$92B000,GFX_Sprite_Triceratops,GFX_Sprite_TriceratopsEnd
	dl $92B000,$92BC00,GFX_Sprite_Compsognathus,GFX_Sprite_CompsognathusEnd
	dl $92BC00,$92D400,GFX_Sprite_MetalDoorBridge,GFX_Sprite_MetalDoorBridgeEnd
	dl $92D400,$92E000,GFX_Sprite_ElectricFenceGate,GFX_Sprite_ElectricFenceGateEnd
	dl $92E000,$92EC00,GFX_Sprite_Boulders,GFX_Sprite_BouldersEnd
	dl $92EC00,$92FC00,GFX_Sprite_MrDNA,GFX_Sprite_MrDNAEnd
	dl $938000,$93FE00,GFX_Sprite_Player,GFX_Sprite_PlayerEnd
	dl $948000,$94FE00,GFX_Sprite_Player_02,GFX_Sprite_Player_02End
	dl $958000,$95FB00,GFX_Sprite_Player_03,GFX_Sprite_Player_03End
	dl $968000,$96FE00,GFX_Sprite_Player_04,GFX_Sprite_Player_04End
	dl $978000,$979080,GFX_Layer3_CattleProdAmmoDisplay,GFX_Layer3_CattleProdAmmoDisplayEnd
	dl $979080,$979F80,GFX_Sprite_CattleProd,GFX_Sprite_CattleProdEnd
	dl $979F80,$97A380,GFX_Sprite_ShotgunShots,GFX_Sprite_ShotgunShotsEnd
	dl $97A380,$97A780,GFX_Sprite_RocketLauncherShots,GFX_Sprite_RocketLauncherShotsEnd
	dl $97A780,$97AB80,GFX_Sprite_TranquilizerShots,GFX_Sprite_TranquilizerShotsEnd
	dl $97AB80,$97AF80,GFX_Sprite_GasGrenadeShots,GFX_Sprite_GasGrenadeShotsEnd
	dl $97AF80,$97B000,GFX_Sprite_BolasSnareRifleShots,GFX_Sprite_BolasSnareRifleShotsEnd
	dl $97B000,$97B300,GFX_Sprite_Items,GFX_Sprite_ItemsEnd
	dl $97B300,$97B700,GFX_Sprite_Unknown1,GFX_Sprite_Unknown1End
	dl $97B700,$97B880,GFX_Sprite_Items_02,GFX_Sprite_Items_02End
	dl $97B880,$97B980,GFX_Sprite_MiniExplosions,GFX_Sprite_MiniExplosionsEnd
	dl $97B980,$97BE80,GFX_Sprite_DilophosaurSpit,GFX_Sprite_DilophosaurSpitEnd
	dl $97BE80,$97C080,GFX_Sprite_SmallSmokeCloud,GFX_Sprite_SmallSmokeCloudEnd
	dl $97C080,$97DA80,GFX_Sprite_Dragonfly,GFX_Sprite_DragonflyEnd
	dl $97DA80,$97DC80,GFX_Sprite_DennisNedryPortrait,GFX_Sprite_DennisNedryPortraitEnd
	dl $97DC80,$97DE80,GFX_Sprite_AlexMurphyPortrait,GFX_Sprite_AlexMurphyPortraitEnd
	dl $97DE80,$97E080,GFX_Sprite_EllieSattlerPortrait,GFX_Sprite_EllieSattlerPortraitEnd
	dl $97E080,$97E280,GFX_Sprite_JohnHammondPortrait,GFX_Sprite_JohnHammondPortraitEnd
	dl $97E280,$97E480,GFX_Sprite_IanMalcolmPortrait,GFX_Sprite_IanMalcolmPortraitEnd
	dl $97E480,$97E680,GFX_Sprite_RobertMuldoonPortrait,GFX_Sprite_RobertMuldoonPortraitEnd
	dl $97E680,$97E880,GFX_Sprite_TimMurphyPortrait,GFX_Sprite_TimMurphyPortraitEnd
	dl $988000,$98CE00,GFX_Sprite_Gallimimus,GFX_Sprite_GallimimusEnd
	dl $98CE00,$98D580,GFX_Sprite_Unknown2,GFX_Sprite_Unknown2sEnd
	dl $998000,$99DA00,GFX_Sprite_Dilophosaur,GFX_Sprite_DilophosaurEnd
	dl $9A8000,$9AF500,GFX_Sprite_Dilophosaur_02,GFX_Sprite_Dilophosaur_02End
	dl $9B8000,$9BF800,GFX_Sprite_TyrannosaurusRex,GFX_Sprite_TyrannosaurusRexEnd
	dl $9C8000,$9CF800,GFX_Sprite_TyrannosaurusRex_02,GFX_Sprite_TyrannosaurusRex_02End
	dl $9D8000,$9FE800,GFX_Sprite_Velociraptor,GFX_Sprite_VelociraptorEnd
UncompressedGFXPointersEnd:

;--------------------------------------------------------------------

CompressedGFXPointersStart:
	dl $81EAD7,$81EC8B,GFX_Sprite_FlamesAndShadows,GFX_Sprite_FlamesAndShadowsEnd
	dl $81F0A3,$81F397,GFX_Layer2_ExteriorAreasGrassTiles,GFX_Layer2_ExteriorAreasGrassTilesEnd
	dl $81F7D1,$81FBD7,GFX_Layer3_ExteriorAreasStatusBar,GFX_Layer3_ExteriorAreasStatusBarEnd
	dl $82B72C,$82BE10,GFX_Layer3_MrDNAMessageBoxTiles,GFX_Layer3_MrDNAMessageBoxTilesEnd
	dl $83D6F5,$83DD9F,GFX_Layer3_DinoEggMessageBox,GFX_Layer3_DinoEggMessageBoxEnd
	dl $83ED92,$83F4F2,GFX_Layer3_RegularMessageBoxTiles,GFX_Layer3_RegularMessageBoxTilesEnd
	dl $8CC44E,$8CC87E,GFX_Sprite_Mode7IntroText,GFX_Sprite_Mode7IntroTextEnd
	dl $8CC87E,$8CDD86,GFX_Mode7_IsleNublar,GFX_Mode7_IsleNublarEnd
	dl $8D8000,$8E8E94,GFX_BG_TitleScreen,GFX_BG_TitleScreenEnd
	dl $8E8E94,$8EFA66,GFX_BG_HighScoreScreen,GFX_BG_HighScoreScreenEnd
	dl $8F8000,$8F93E2,GFX_Sprite_TitleScreen_OpenedMenu,GFX_Sprite_TitleScreen_OpenedMenuEnd
	dl $8F93E2,$8FA72C,GFX_Sprite_TitleScreen_ClosedMenu,GFX_Sprite_TitleScreen_ClosedMenuEnd
	dl $8FA860,$8FC28E,GFX_BG_Mode7IntroMountains,GFX_BG_Mode7IntroMountainsEnd
	dl $8FC28E,$8FC4C2,GFX_Sprite_GameOverScreenNumbers,GFX_Sprite_GameOverScreenNumbersEnd
	dl $8FC4C2,$8FD4AA,GFX_Sprite_JurassicParkFont,GFX_Sprite_JurassicParkFontEnd
	dl $8FD4AA,$8FDFFE,GFX_OceanLogo,GFX_OceanLogoEnd
	dl $908000,$91A1DC,GFX_BG_GameOverScreen,GFX_BG_GameOverScreenEnd
if !ROMVer&(!JP_U2) != $00
	dl $000000,$000000,GFX_Sprite_InteriorHUD,GFX_Sprite_InteriorHUDEnd
else
	dl $A18C00,$A19DC4,GFX_Sprite_InteriorHUD,GFX_Sprite_InteriorHUDEnd
endif
	dl $A3F800,$A3FCAC,GFX_BG_ComputerTerminal_06,GFX_BG_ComputerTerminal_06End
	dl $ADF800,$AE8000,GFX_Sprite_AlanGrantHand,GFX_Sprite_AlanGrantHandEnd
	dl $AEF800,$AEFE80,GFX_Sprite_AlanGrantHand_02,GFX_Sprite_AlanGrantHand_02End
	dl $AFF800,$B08000,GFX_BG_ComputerTerminal,GFX_BG_ComputerTerminalEnd
	dl $B0F800,$B18000,GFX_BG_ComputerTerminal_02,GFX_BG_ComputerTerminal_02End
	dl $B1F800,$B28000,GFX_BG_ComputerTerminal_03,GFX_BG_ComputerTerminal_03End
	dl $B2F800,$B38000,GFX_BG_ComputerTerminal_04,GFX_BG_ComputerTerminal_04End
	dl $B3F800,$B48000,GFX_BG_ComputerTerminal_05,GFX_BG_ComputerTerminal_05End
CompressedGFXPointersEnd:

;--------------------------------------------------------------------

UncompressedTilemapsPointersStart:
	dl $888000,$8C8000,TM_ExteriorAreaMap,TM_ExteriorAreaMapEnd
	dl $8C8000,$8CC000,TM_ExteriorAreaMap16,TM_ExteriorAreaMap16End
UncompressedTilemapsPointersEnd:

;--------------------------------------------------------------------

CompressedTilemapsPointersStart:
	dl $81EC8B,$81F0A3,TM_Layer2_ExteriorAreasGrass,TM_Layer2_ExteriorAreasGrassEnd
	dl $81F697,$81F7D1,TM_Layer3_ExteriorAreas,TM_Layer3_ExteriorAreasEnd
	dl $83D4D5,$83D6F5,TM_Layer3_DinoEggMessageBox,TM_Layer3_DinoEggMessageBoxEnd
	dl $8CC000,$8CC23A,TM_Mode7_IsleNublar,TM_Mode7_IsleNublarEnd
	dl $8CDF9A,$8CE768,TM_BG_GameOverScreen,TM_BG_GameOverScreenEnd
	dl $8CE768,$8CEE74,TM_BG_TitleScreen,TM_BG_TitleScreenEnd
	dl $8CF2B0,$8CFA84,TM_BG_HighScoreScreen,TM_BG_HighScoreScreenEnd
	dl $8FA72C,$8FA860,TM_BG_Mode7IntroMountains,TM_BG_Mode7IntroMountainsEnd
	dl $8FDFFE,$8FE218,TM_OceanLogo,TM_OceanLogoEnd
	dl $A6864A,$A68A5C,TM_BG_ComputerTerminal,TM_BG_ComputerTerminalEnd
CompressedTilemapsPointersEnd:

;--------------------------------------------------------------------

MrDNAMessageBoxTilemapsPointersStart:
	dl $8280D0,$828338,DATA_8280D0,DATA_8280D0End
	dl $828338,$82857E,DATA_828338,DATA_828338End
	dl $82857E,$8287DA,DATA_82857E,DATA_82857EEnd
	dl $8287DA,$828A14,DATA_8287DA,DATA_8287DAEnd
	dl $828A14,$828C66,DATA_828A14,DATA_828A14End
	dl $828C66,$828EB4,DATA_828C66,DATA_828C66End
	dl $828EB4,$8290FA,DATA_828EB4,DATA_828EB4End
	dl $8290FA,$82933A,DATA_8290FA,DATA_8290FAEnd
	dl $82933A,$82958C,DATA_82933A,DATA_82933AEnd
	dl $82958C,$8297C4,DATA_82958C,DATA_82958CEnd
	dl $8297C4,$829A1E,DATA_8297C4,DATA_8297C4End
	dl $829A1E,$829C54,DATA_829A1E,DATA_829A1EEnd
	dl $829C54,$829E8C,DATA_829C54,DATA_829C54End
	dl $829E8C,$82A0C8,DATA_829E8C,DATA_829E8CEnd
	dl $82A0C8,$82A30A,DATA_82A0C8,DATA_82A0C8End
	dl $82A30A,$82A530,DATA_82A30A,DATA_82A30AEnd
	dl $82A530,$82A76A,DATA_82A530,DATA_82A530End
	dl $82A76A,$82A99C,DATA_82A76A,DATA_82A76AEnd
	dl $82A99C,$82ABE2,DATA_82A99C,DATA_82A99CEnd
	dl $82ABE2,$82AE18,DATA_82ABE2,DATA_82ABE2End
	dl $82AE18,$82B05A,DATA_82AE18,DATA_82AE18End
	dl $82B05A,$82B292,DATA_82B05A,DATA_82B05AEnd
	dl $82B292,$82B4DA,DATA_82B292,DATA_82B292End
	dl $82B4DA,$82B72C,DATA_82B4DA,DATA_82B4DAEnd
MrDNAMessageBoxTilemapsPointersEnd:

;--------------------------------------------------------------------

RegularMessageBoxTilemapsPointersStart:
	dl $82BE10,$82C040,DATA_82BE10,DATA_82BE10End
	dl $82C040,$82C27E,DATA_82C040,DATA_82C040End
	dl $82C27E,$82C4CA,DATA_82C27E,DATA_82C27EEnd
	dl $82C4CA,$82C6C2,DATA_82C4CA,DATA_82C4CAEnd
	dl $82C6C2,$82C904,DATA_82C6C2,DATA_82C6C2End
	dl $82C904,$82CB3E,DATA_82C904,DATA_82C904End
	dl $82CB3E,$82CD5E,DATA_82CB3E,DATA_82CB3EEnd
	dl $82CD5E,$82CF92,DATA_82CD5E,DATA_82CD5EEnd
	dl $82CF92,$82D1B6,DATA_82CF92,DATA_82CF92End
	dl $82D1B6,$82D400,DATA_82D1B6,DATA_82D1B6End
	dl $82D400,$82D602,DATA_82D400,DATA_82D400End
	dl $82D602,$82D802,DATA_82D602,DATA_82D602End
	dl $82D802,$82DA5A,DATA_82D802,DATA_82D802End
	dl $82DA5A,$82DC9A,DATA_82DA5A,DATA_82DA5AEnd
	dl $82DC9A,$82DEDA,DATA_82DC9A,DATA_82DC9AEnd
	dl $82DEDA,$82E104,DATA_82DEDA,DATA_82DEDAEnd
	dl $82E104,$82E344,DATA_82E104,DATA_82E104End
	dl $82E344,$82E568,DATA_82E344,DATA_82E344End
	dl $82E568,$82E7A4,DATA_82E568,DATA_82E568End
	dl $82E7A4,$82E9CA,DATA_82E7A4,DATA_82E7A4End
	dl $82E9CA,$82EC0C,DATA_82E9CA,DATA_82E9CAEnd
	dl $82EC0C,$82EE46,DATA_82EC0C,DATA_82EC0CEnd
	dl $82EE46,$82F06E,DATA_82EE46,DATA_82EE46End
	dl $82F06E,$82F296,DATA_82F06E,DATA_82F06EEnd
	dl $82F296,$82F4C2,DATA_82F296,DATA_82F296End
	dl $82F4C2,$82F702,DATA_82F4C2,DATA_82F4C2End
	dl $82F702,$82F936,DATA_82F702,DATA_82F702End
	dl $82F936,$82FB5E,DATA_82F936,DATA_82F936End
	dl $82FB5E,$82FD6A,DATA_82FB5E,DATA_82FB5EEnd
RegularMessageBoxTilemapsPointersEnd:

;--------------------------------------------------------------------

InteriorMapsPointersStart:
	dl $A08000,$A08204,Ship_EntryLevel_RoomDataPtrs,Ship_EntryLevel_RoomDataPtrsEnd
	dl $A08204,$A09EAD,Ship_EntryLevel_Entities,Ship_EntryLevel_EntitiesEnd
if !ROMVer&(!JP_U2) != $00
	dl $A1DE51,$A1DFD7,Ship_SubLevel2_RoomDataPtrs,Ship_SubLevel2_RoomDataPtrsEnd
	dl $000000,$000000,Ship_SubLevel2_Entities,Ship_SubLevel2_EntitiesEnd
	dl $A0B920,$A0B9D1,NorthUtilityShed_GroundLevel_RoomDataPtrs,NorthUtilityShed_GroundLevel_RoomDataPtrsEnd
	dl $A0B9D1,$A0C803,NorthUtilityShed_GroundLevel_Entities,NorthUtilityShed_GroundLevel_EntitiesEnd
	dl $A0C803,$A0C8C2,NorthUtilityShed_GroundLevel_MapLayout,NorthUtilityShed_GroundLevel_MapLayoutEnd
	dl $A0C8C2,$A0D9ED,VisitorCenter_GroundLevel_Entities,VisitorCenter_GroundLevel_EntitiesEnd
	dl $A0D9ED,$A0DB3E,VisitorCenter_GroundLevel_MapLayout,VisitorCenter_GroundLevel_MapLayoutEnd
	dl $A0DB3E,$A0EBFD,Ship_SubLevel4_Entities,Ship_SubLevel4_EntitiesEnd
	dl $A0EBFD,$A0EC97,BeachUtilityShed_GroundLevel_RoomDataPtrs,BeachUtilityShed_GroundLevel_RoomDataPtrsEnd
	dl $A0EC97,$A0FBD5,VisitorCenter_SubLevel_Entities,VisitorCenter_SubLevel_EntitiesEnd
	dl $BEFF7E,$BF8000,NublarUtilityShed_SubLevel_RoomDataPtrs,NublarUtilityShed_SubLevel_RoomDataPtrsEnd
	dl $000000,$000000,Ship_SubLevel2_MapLayout,Ship_SubLevel2_MapLayoutEnd
	dl $A5F287,$A5FFB7,NublarUtilityShed_GroundLevel_Entities,NublarUtilityShed_GroundLevel_EntitiesEnd
	dl $A1B3CA,$A1C097,NublarUtilityShed_SubLevel_Entities,NublarUtilityShed_SubLevel_EntitiesEnd
	dl $A1C097,$A1CED2,BeachUtilityShed_SubLevel_Entities,BeachUtilityShed_SubLevel_EntitiesEnd
	dl $A1CED2,$A1DCBB,BeachUtilityShed_GroundLevel_Entities,BeachUtilityShed_GroundLevel_EntitiesEnd
	dl $A9FEDB,$A9FFE3,RaptorPen_GroundLevel_MapLayout,RaptorPen_GroundLevel_MapLayoutEnd
	dl $000000,$000000,RaptorPen_UpperLevel_RoomDataPtrs,RaptorPen_UpperLevel_RoomDataPtrsEnd
	dl $000000,$000000,RaptorPen_UpperLevel_Entities,RaptorPen_UpperLevel_EntitiesEnd
	dl $000000,$000000,RaptorPen_SubLevel1_MapLayout,RaptorPen_SubLevel1_MapLayoutEnd
else
	dl $A09EAD,$A0A033,Ship_SubLevel2_RoomDataPtrs,Ship_SubLevel2_RoomDataPtrsEnd
	dl $A0A033,$A0BAA0,Ship_SubLevel2_Entities,Ship_SubLevel2_EntitiesEnd
	dl $A0BAA0,$A0BB51,NorthUtilityShed_GroundLevel_RoomDataPtrs,NorthUtilityShed_GroundLevel_RoomDataPtrsEnd
	dl $A0BB51,$A0C983,NorthUtilityShed_GroundLevel_Entities,NorthUtilityShed_GroundLevel_EntitiesEnd
	dl $A0C983,$A0CA42,NorthUtilityShed_GroundLevel_MapLayout,NorthUtilityShed_GroundLevel_MapLayoutEnd
	dl $A0CA42,$A0DB6D,VisitorCenter_GroundLevel_Entities,VisitorCenter_GroundLevel_EntitiesEnd
	dl $A0DB6D,$A0DCBE,VisitorCenter_GroundLevel_MapLayout,VisitorCenter_GroundLevel_MapLayoutEnd
	dl $A0DCBE,$A0ED7D,Ship_SubLevel4_Entities,Ship_SubLevel4_EntitiesEnd
	dl $A0ED7D,$A0EE17,BeachUtilityShed_GroundLevel_RoomDataPtrs,BeachUtilityShed_GroundLevel_RoomDataPtrsEnd
	dl $A0EE17,$A0FD55,VisitorCenter_SubLevel_Entities,VisitorCenter_SubLevel_EntitiesEnd
	dl $A0FD55,$A0FDD7,NublarUtilityShed_SubLevel_RoomDataPtrs,NublarUtilityShed_SubLevel_RoomDataPtrsEnd
	dl $A0FDD7,$A0FF77,Ship_SubLevel2_MapLayout,Ship_SubLevel2_MapLayoutEnd
	dl $A1C274,$A1CFA4,NublarUtilityShed_GroundLevel_Entities,NublarUtilityShed_GroundLevel_EntitiesEnd
	dl $A1CFA4,$A1DC71,NublarUtilityShed_SubLevel_Entities,NublarUtilityShed_SubLevel_EntitiesEnd
	dl $A1DC71,$A1EAAC,BeachUtilityShed_SubLevel_Entities,BeachUtilityShed_SubLevel_EntitiesEnd
	dl $A1EAAC,$A1F895,BeachUtilityShed_GroundLevel_Entities,BeachUtilityShed_GroundLevel_EntitiesEnd
	dl $A1F895,$A1F99D,RaptorPen_GroundLevel_MapLayout,RaptorPen_GroundLevel_MapLayoutEnd
	dl $A1F99D,$A1FA07,RaptorPen_UpperLevel_RoomDataPtrs,RaptorPen_UpperLevel_RoomDataPtrsEnd
	dl $A1FA07,$A1FE19,RaptorPen_UpperLevel_Entities,RaptorPen_UpperLevel_EntitiesEnd
	dl $A1FE19,$A1FFB2,RaptorPen_SubLevel1_MapLayout,RaptorPen_SubLevel1_MapLayoutEnd
endif
	dl $A2FECC,$A2FFE4,VisitorCenter_GroundFloor_RoomDataPtrs,VisitorCenter_GroundFloor_RoomDataPtrsEnd
	dl $A3FCAC,$A3FD78,VisitorCenter_SubLevel_MapLayout,VisitorCenter_SubLevel_MapLayoutEnd
if !ROMVer&(!JP_U2) != $00
	dl $000000,$000000,Ship_SubLevel3_MapLayout,Ship_SubLevel3_MapLayoutEnd
	dl $000000,$000000,NorthUtilityShed_SubLevel_RoomDataPtrs,NorthUtilityShed_SubLevel_RoomDataPtrsEnd
	dl $000000,$000000,RaptorPen_SubLevel2_RoomDataPtrs,RaptorPen_SubLevel2_RoomDataPtrsEnd
	dl $000000,$000000,DATA_A4FB9B,DATA_A4FB9BEnd
	dl $000000,$000000,DATA_A4FBEC,DATA_A4FBECEnd
	dl $000000,$000000,DATA_A4FC40,DATA_A4FC40End
	dl $000000,$000000,DATA_A4FCFC,DATA_A4FCFCEnd
	dl $000000,$000000,DATA_A4FDBD,DATA_A4FDBDEnd
else
	dl $A3FD78,$A3FF51,Ship_SubLevel3_MapLayout,Ship_SubLevel3_MapLayoutEnd
	dl $A3FF51,$A3FFF0,NorthUtilityShed_SubLevel_RoomDataPtrs,NorthUtilityShed_SubLevel_RoomDataPtrsEnd
	dl $A4F8AA,$A4FA72,RaptorPen_SubLevel2_RoomDataPtrs,RaptorPen_SubLevel2_RoomDataPtrsEnd
	dl $A4FB9B,$A4FBEC,DATA_A4FB9B,DATA_A4FB9BEnd
	dl $A4FBEC,$A4FC40,DATA_A4FBEC,DATA_A4FBECEnd
	dl $A4FC40,$A4FCFC,DATA_A4FC40,DATA_A4FC40End
	dl $A4FCFC,$A4FDBD,DATA_A4FCFC,DATA_A4FCFCEnd
	dl $A4FDBD,$A4FF3F,DATA_A4FDBD,DATA_A4FDBDEnd
endif
	dl $A585F3,$A588ED,RaptorNest_RoomDataPtrs,RaptorNest_RoomDataPtrsEnd
	dl $A588ED,$A5AFAB,RaptorNest_Entities,RaptorNest_EntitiesEnd
	dl $A5AFAB,$A5BAA3,Ship_SubLevel1_Entities,Ship_SubLevel1_EntitiesEnd
if !ROMVer&(!JP_U2) != $00
	dl $B5FE77,$B5FFE2,RaptorPen_GroundLevel_RoomDataPtrs,RaptorPen_GroundLevel_RoomDataPtrsEnd
	dl $A5BAA3,$A5D6DE,RaptorPen_SubLevel1_Entities,RaptorPen_SubLevel1_EntitiesEnd
	dl $A5D6DE,$A5F055,RaptorPen_SubLevel2_Entities,RaptorPen_SubLevel2_EntitiesEnd
	dl $000000,$000000,NorthUtilityShed_SubLevel_Entities,NorthUtilityShed_SubLevel_EntitiesEnd
	dl $A8FE26,$A8FF38,VisitorCenter_Floor1_RoomDataPtrs,VisitorCenter_Floor1_RoomDataPtrsEnd
	dl $A6BFBE,$A6D2F9,VisitorCenter_Floor1_Entities,VisitorCenter_Floor1_EntitiesEnd
	dl $000000,$000000,Ship_SubLevel3_Entities,Ship_SubLevel3_EntitiesEnd
	dl $A8FF38,$A8FFDE,NublarUtilityShed_GroundLevel_RoomDataPtrs,NublarUtilityShed_GroundLevel_RoomDataPtrsEnd
	dl $000000,$000000,RaptorPen_SubLevel1_RoomDataPtrs,RaptorPen_SubLevel1_RoomDataPtrsEnd
	dl $000000,$000000,DATA_A6FD27,DATA_A6FD27End
	dl $000000,$000000,DATA_A6FE11,DATA_A6FE11End
	dl $000000,$000000,DATA_A6FF8C,DATA_A6FF8CEnd
	dl $000000,$000000,DATA_A8FF26,DATA_A8FF26End
else
	dl $A5BAA3,$A5BC0E,RaptorPen_GroundLevel_RoomDataPtrs,RaptorPen_GroundLevel_RoomDataPtrsEnd
	dl $A5BC0E,$A5D849,RaptorPen_SubLevel1_Entities,RaptorPen_SubLevel1_EntitiesEnd
	dl $A5D849,$A5F1C0,RaptorPen_SubLevel2_Entities,RaptorPen_SubLevel2_EntitiesEnd
	dl $A5F1C0,$A5FF4A,NorthUtilityShed_SubLevel_Entities,NorthUtilityShed_SubLevel_EntitiesEnd
	dl $A6C982,$A6CA94,VisitorCenter_Floor1_RoomDataPtrs,VisitorCenter_Floor1_RoomDataPtrsEnd
	dl $A6CA94,$A6DDCF,VisitorCenter_Floor1_Entities,VisitorCenter_Floor1_EntitiesEnd
	dl $A6DDCF,$A6FADA,Ship_SubLevel3_Entities,Ship_SubLevel3_EntitiesEnd
	dl $A6FADA,$A6FB80,NublarUtilityShed_GroundLevel_RoomDataPtrs,NublarUtilityShed_GroundLevel_RoomDataPtrsEnd
	dl $A6FB80,$A6FD16,RaptorPen_SubLevel1_RoomDataPtrs,RaptorPen_SubLevel1_RoomDataPtrsEnd
	dl $A6FD27,$A6FE11,DATA_A6FD27,DATA_A6FD27End
	dl $A6FE11,$A6FF8C,DATA_A6FE11,DATA_A6FE11End
	dl $A6FF8C,$A6FFC5,DATA_A6FF8C,DATA_A6FF8CEnd
	dl $A8FF26,$A8FFD8,DATA_A8FF26,DATA_A8FF26End
endif
	dl $A7FF0D,$A7FF55,RaptorPen_EntryLevel_RoomDataPtrs,RaptorPen_EntryLevel_RoomDataPtrsEnd
if !ROMVer&(!JP_U2) != $00
	dl $000000,$000000,RaptorPen_EntryLevel_MapLayout,RaptorPen_EntryLevel_MapLayoutEnd
	dl $000000,$000000,BeachUtilityShed_SubLevel_MapLayout,BeachUtilityShed_SubLevel_MapLayoutEnd
	dl $000000,$000000,RaptorPen_SubLevel2_MapLayout,RaptorPen_SubLevel2_MapLayoutEnd
	dl $000000,$000000,NublarUtilityShed_SubLevel_MapLayout,NublarUtilityShed_SubLevel_MapLayoutEnd
else
	dl $A7FF55,$A7FFA7,RaptorPen_EntryLevel_MapLayout,RaptorPen_EntryLevel_MapLayoutEnd
	dl $A8FE26,$A8FED8,BeachUtilityShed_SubLevel_MapLayout,BeachUtilityShed_SubLevel_MapLayoutEnd
	dl $A9FCFA,$A9FEC6,RaptorPen_SubLevel2_MapLayout,RaptorPen_SubLevel2_MapLayoutEnd
	dl $A9FEC6,$A9FF74,NublarUtilityShed_SubLevel_MapLayout,NublarUtilityShed_SubLevel_MapLayoutEnd
endif
	dl $ABFF2E,$ABFFF8,BeachUtilityShed_GroundLevel_MapLayout,BeachUtilityShed_GroundLevel_MapLayoutEnd
if !ROMVer&(!JP_U2) != $00
	dl $000000,$000000,RaptorNest_MapLayout,RaptorNest_MapLayoutEnd
	dl $A7FFA4,$A7FFDB,SecretLevel_RoomDataPtrs,SecretLevel_RoomDataPtrsEnd
	dl $B5EB6B,$B5FE77,RaptorPen_GroundLevel_Entities,RaptorPen_GroundLevel_EntitiesEnd
	dl $000000,$000000,RaptorPen_UpperLevel_MapLayout,RaptorPen_UpperLevel_MapLayoutEnd
	dl $000000,$000000,RaptorPen_EntryLevel_Entities,RaptorPen_EntryLevel_EntitiesEnd
else
	dl $B4FA8E,$B4FFD7,RaptorNest_MapLayout,RaptorNest_MapLayoutEnd
	dl $B5EB6B,$B5EBA2,SecretLevel_RoomDataPtrs,SecretLevel_RoomDataPtrsEnd
	dl $B5EBA2,$B5FEAE,RaptorPen_GroundLevel_Entities,RaptorPen_GroundLevel_EntitiesEnd
	dl $B5FEAE,$B5FEFA,RaptorPen_UpperLevel_MapLayout,RaptorPen_UpperLevel_MapLayoutEnd
	dl $B6FB63,$B6FF26,RaptorPen_EntryLevel_Entities,RaptorPen_EntryLevel_EntitiesEnd
endif
	dl $B7F40E,$B7F45F,VisitorCenter_RoofLevel_RoomDataPtrs,VisitorCenter_RoofLevel_RoomDataPtrsEnd
	dl $B7F45F,$B7F4B4,VisitorCenter_RoofLevel_MapLayout,VisitorCenter_RoofLevel_MapLayoutEnd
	dl $B7F4B4,$B7F8E4,SecretLevel_Entities,SecretLevel_EntitiesEnd
	dl $B7F8E4,$B7F93B,SecretLevel_MapLayout,SecretLevel_MapLayoutEnd
	dl $B7F93B,$B7F9D6,Ship_SubLevel1_MapLayout,Ship_SubLevel1_MapLayoutEnd
	dl $B7F9D6,$B7FB2F,Ship_EntryLevel_MapLayout,Ship_EntryLevel_MapLayoutEnd
	dl $B7FB2F,$B7FCD4,Ship_SubLevel3_RoomDataPtrs,Ship_SubLevel3_RoomDataPtrsEnd
	dl $B7FCD4,$B7FE07,Ship_SubLevel4_RoomDataPtrs,Ship_SubLevel4_RoomDataPtrsEnd
	dl $B7FE07,$B7FE96,Ship_SubLevel1_RoomDataPtrs,Ship_SubLevel1_RoomDataPtrsEnd
	dl $B7FE96,$B7FF55,NorthUtilityShed_SubLevel_MapLayout,NorthUtilityShed_SubLevel_MapLayoutEnd
	dl $B7FF55,$B7FFF5,BeachUtilityShed_SubLevel_RoomDataPtrs,BeachUtilityShed_SubLevel_RoomDataPtrsEnd
	dl $BAFDE1,$BAFEE8,Ship_SubLevel4_MapLayout,Ship_SubLevel4_MapLayoutEnd
	dl $BAFEE8,$BAFFA7,VisitorCenter_SubLevel_RoomDataPtrs,VisitorCenter_SubLevel_RoomDataPtrsEnd
	dl $BBFDF5,$BBFEB2,NublarUtilityShed_GroundLevel_MapLayout,NublarUtilityShed_GroundLevel_MapLayoutEnd
	dl $BBFEB2,$BBFFF2,VisitorCenter_Floor1_MapLayout,VisitorCenter_Floor1_MapLayoutEnd
	dl $BFFB71,$BFFF54,VisitorCenter_RoofLevel_Entities,VisitorCenter_RoofLevel_EntitiesEnd
InteriorMapsPointersEnd:

;--------------------------------------------------------------------

UnknownDataPointersStart:
if !ROMVer&(!JP_U2) != $00
	dl $BCFD59,$BCFFDF,DATA_A68000,DATA_A68000End
	dl $B4FFCE,$B4FFF6,DATA_A68286,DATA_A68286End
	dl $A1EFEB,$A1F12F,DATA_A682AE,DATA_A682AEEnd
	dl $A6EEFD,$A6EFEB,DATA_A6C462,DATA_A6C462End
	dl $A6C550,$A6C934,DATA_A6C550,DATA_A6C550End
	dl $A6BBDA,$A6BFBE,DATA_A6C550,DATA_A6C550End
	dl $A8FFDE,$A8FFFE,DATA_A6C934,DATA_A6C934End
	dl $B8FFCA,$B8FFF8,DATA_A6C954,DATA_A6C954End
else
	dl $A68000,$A68286,DATA_A68000,DATA_A68000End
	dl $A68286,$A682AE,DATA_A68286,DATA_A68286End
	dl $A682AE,$A683F2,DATA_A682AE,DATA_A682AEEnd
	dl $A6C462,$A6C550,DATA_A6C462,DATA_A6C462End
	dl $A6C550,$A6C934,DATA_A6C550,DATA_A6C550End
	dl $A6C934,$A6C954,DATA_A6C934,DATA_A6C934End
	dl $A6C954,$A6C982,DATA_A6C954,DATA_A6C954End
endif
UnknownDataPointersEnd:

;--------------------------------------------------------------------

TexturePointersStart:
	dl $A18000,$A18600,RefridgeratorWall_Left,RefridgeratorWall_LeftEnd
	dl $A18600,$A18C00,RefridgeratorWall_Right,RefridgeratorWall_RightEnd
	dl $A28000,$A28600,RaptorPenWindowFerns_Left,RaptorPenWindowFerns_LeftEnd
	dl $A28600,$A28C00,RaptorPenWindowFerns_Right,RaptorPenWindowFerns_RightEnd
	dl $A28C00,$A29200,RaptorPenWindowPalmTrees_Left,RaptorPenWindowPalmTrees_LeftEnd
	dl $A29200,$A29800,RaptorPenWindowPalmTrees_Right,RaptorPenWindowPalmTrees_RightEnd
	dl $A29800,$A29E00,RaptorPrepareLunge_Left_Battery,RaptorPrepareLunge_Left_BatteryEnd
	dl $A29E00,$A2A400,RaptorPrepareLunge_Right_NerveGasBomb,RaptorPrepareLunge_Right_NerveGasBombEnd
	dl $A2A400,$A2B000,RaptorLunge1,RaptorLunge1End
	dl $A2B000,$A2B600,RaptorLunge2_Left_RocketLauncher,RaptorLunge2_Left_RocketLauncherEnd
	dl $A2B600,$A2BC00,RaptorLunge2_Right_BolasSnareRifle,RaptorLunge2_Right_BolasSnareRifleEnd
	dl $A2BC00,$A2C200,RaptorLunge3_Left_Shotgun,RaptorLunge3_Left_ShotgunEnd
	dl $A2C200,$A2C800,RaptorLunge3_Right_TranquilizerGun,RaptorLunge3_Right_TranquilizerGunEnd
	dl $A2C800,$A2CE00,GunSmoke,GunSmokeEnd
	dl $A2CE00,$A2D400,GasGrenadeSmoke,GasGrenadeSmokeEnd
	dl $A2D400,$A2DA00,ShotgunBulletAndBolasSnareRifleBall,ShotgunBulletAndBolasSnareRifleBallEnd
	dl $A2DA00,$A2E000,DartAndRocket,DartAndRocketEnd
	dl $A2E000,$A2E600,IdleDilophosaur,IdleDilophosaurEnd
	dl $A2E600,$A2EC00,DilophosaurSpitting1,DilophosaurSpitting1End
	dl $A2EC00,$A2F800,DilophosaurSpitting2,DilophosaurSpitting2End
	dl $A38000,$A38C00,DilophosaurSpitting3,DilophosaurSpitting3End
	dl $A38C00,$A39800,DilophosaurSpitting4,DilophosaurSpitting4End
	dl $A39800,$A3A400,DilophosaurSpitting5,DilophosaurSpitting5End
	dl $A3A400,$A3B000,DilophosaurExploding,DilophosaurExplodingEnd
	dl $A3B000,$A3BC00,DilophosaurDying,DilophosaurDyingEnd
	dl $A3BC00,$A3C200,ComputerTerminal_Left,ComputerTerminal_LeftEnd
	dl $A3C200,$A3C800,ComputerTerminal_Right,ComputerTerminal_RightEnd
	dl $A3C800,$A3CE00,WoodBox_Front_StovePot,WoodBox_Front_StovePotEnd
	dl $A3CE00,$A3D400,WoodBox_Side_MiniFridge_Side,WoodBox_Side_MiniFridge_SideEnd
	dl $A3D400,$A3DA00,LabWall_RedDNADisplay,LabWall_RedDNADisplayEnd
	dl $A3DA00,$A3E000,LabWall_Light,LabWall_LightEnd
	dl $A3E000,$A3E600,LabWall_Pillar,LabWall_PillarEnd
	dl $A3E600,$A3EC00,StoveFront,StoveFrontEnd
	dl $A3EC00,$A3F200,DarkMetalWall1,DarkMetalWall1End
	dl $A3F200,$A3F800,DarkMetalWall_Pillar,DarkMetalWall_PillarEnd
	dl $AC8000,$AC8600,ShipWall_LeftPillar,ShipWall_LeftPillarEnd
	dl $AC8600,$AC8C00,ShipWall_Light,ShipWall_LightEnd
	dl $AC8C00,$AC9200,ShipWall_RightPillar1,ShipWall_RightPillar1End
	dl $AC9200,$AC9800,ShipWall,ShipWallEnd
	dl $AC9800,$AC9E00,ShipWall_Window,ShipWall_WindowEnd
	dl $AC9E00,$ACA400,ShipWall_Pipes,ShipWall_PipesEnd
	dl $ACA400,$ACAA00,DarkShipWall1,DarkShipWall1End
	dl $ACAA00,$ACB000,ShipWall_LifePreserver_Left,ShipWall_LifePreserver_LeftEnd
	dl $ACB000,$ACB600,ShipWall_LifePreserver_Right,ShipWall_LifePreserver_RightEnd
	dl $ACB600,$ACBC00,ShipWall_RightPillar2,ShipWall_RightPillar2End
	dl $ACBC00,$ACC200,ShipWall_DoublePillar,ShipWall_DoublePillarEnd
	dl $ACC200,$ACC800,DarkMetalWall2,DarkMetalWall2End
	dl $ACC800,$ACCE00,MetalWall_Grate,MetalWall_GrateEnd
	dl $ACCE00,$ACD400,MetalWall_StripedBar,MetalWall_StripedBarEnd
	dl $ACD400,$ACDA00,Generator_PowerOff,Generator_PowerOffEnd
	dl $ACDA00,$ACE000,Generator_PowerOn,Generator_PowerOnEnd
	dl $ACE000,$ACE600,MetalWall_LargeRivets,MetalWall_LargeRivetsEnd
	dl $ACE600,$ACEC00,MetalWall_Switch,MetalWall_SwitchEnd
	dl $ACEC00,$ACF200,MetalWall_Light,MetalWall_LightEnd
	dl $ACF200,$ACF800,MetalWall_RightPillar,MetalWall_RightPillarEnd
	dl $AD8000,$AD8600,MetalWall_DoublePillar,MetalWall_DoublePillarEnd
	dl $AD8600,$AD8C00,VisitorCenterWall_CautionSign_Left,VisitorCenterWall_CautionSign_LeftEnd
	dl $AD8C00,$AD9200,VisitorCenterWall_CautionSign_Right,VisitorCenterWall_CautionSign_RightEnd
	dl $AD9200,$AD9800,VisitorCenterWall_BiohazardSign_Left,VisitorCenterWall_BiohazardSign_LeftEnd
	dl $AD9800,$AD9E00,VisitorCenterWall_BiohazardSign_Right,VisitorCenterWall_BiohazardSign_RightEnd
	dl $AD9E00,$ADA400,VisitorCenterWall_ProjectSign_Left,VisitorCenterWall_ProjectSign_LeftEnd
	dl $ADA400,$ADAA00,VisitorCenterWall_ProjectSign_Right,VisitorCenterWall_ProjectSign_RightEnd
	dl $ADAA00,$ADB000,VisitorCenterWall_Chalkboard_Left,VisitorCenterWall_Chalkboard_LeftEnd
	dl $ADB000,$ADB600,VisitorCenterWall_Chalkboard_Right,VisitorCenterWall_Chalkboard_RightEnd
	dl $ADB600,$ADBC00,VisitorCenterWall1,VisitorCenterWall1End
	dl $ADBC00,$ADC200,VisitorCenterWall_Pillar,VisitorCenterWall_PillarEnd
	dl $ADC200,$ADC800,VisitorCenterWall2,VisitorCenterWall2End
	dl $ADC800,$ADCE00,VisitorCenterWall_DoublePillar,VisitorCenterWall_DoublePillarEnd
	dl $ADCE00,$ADD400,VisitorCenterWall_Fan_Frame1,VisitorCenterWall_Fan_Frame1End
	dl $ADD400,$ADDA00,VisitorCenterWall_Fan_Frame2,VisitorCenterWall_Fan_Frame2End
	dl $ADDA00,$ADE000,VisitorCenterWall_Fan_Frame3,VisitorCenterWall_Fan_Frame3End
	dl $ADE000,$ADE600,VisitorCenterWall_AirVent,VisitorCenterWall_AirVentEnd
	dl $ADE600,$ADEC00,VisitorCenterWall_ComputerTerminal_Left,VisitorCenterWall_ComputerTerminal_LeftEnd
	dl $ADEC00,$ADF200,VisitorCenterWall_ComputerTerminal_Right,VisitorCenterWall_ComputerTerminal_RightEnd
	dl $ADF200,$ADF800,VisitorCenterWall_ComputerTerminalKeypad_Right,VisitorCenterWall_ComputerTerminalKeypad_RightEnd
	dl $AE8000,$AE8600,KitchenWall_MiddlePillar1,KitchenWall_MiddlePillar1End
	dl $AE8600,$AE8C00,KitchenWall_MiddlePillar2,KitchenWall_MiddlePillar2End
	dl $AE8C00,$AE9200,KitchenWall_MiddlePillar3,KitchenWall_MiddlePillar3End
	dl $AE9200,$AE9800,KitchenWall_MiddlePillar4,KitchenWall_MiddlePillar4End
	dl $AE9800,$AE9E00,KitchenWall_Fan_Frame1,KitchenWall_Fan_Frame1End
	dl $AE9E00,$AEA400,KitchenWall_Fan_Frame2,KitchenWall_Fan_Frame2End
	dl $AEA400,$AEAA00,KitchenWall_Fan_Frame3,KitchenWall_Fan_Frame3End
	dl $AEAA00,$AEB000,KitchenWall,KitchenWallEnd
	dl $AEB000,$AEB600,KitchenWall_DoublePillar,KitchenWall_DoublePillarEnd
	dl $AEB600,$AEBC00,DarkShipWall2,DarkShipWall2End
	dl $AEBC00,$AEC200,StoneWall_LeftPillar,StoneWall_LeftPillarEnd
	dl $AEC200,$AEC800,StoneWall_RightPillar,StoneWall_RightPillarEnd
	dl $AEC800,$AECE00,StoneWall_Left,StoneWall_LeftEnd
	dl $AECE00,$AED400,StoneWall_Right,StoneWall_RightEnd
	dl $AED400,$AEDA00,PurpleGate,PurpleGateEnd
	dl $AEDA00,$AEE000,JurassicParkLogo_Left,JurassicParkLogo_LeftEnd
	dl $AEE000,$AEE600,JurassicParkLogo_Middle,JurassicParkLogo_MiddleEnd
	dl $AEE600,$AEEC00,JurassicParkLogo_Right,JurassicParkLogo_RightEnd
	dl $AEEC00,$AEF200,DarkStoneWall_Left,DarkStoneWall_LeftEnd
	dl $AEF200,$AEF800,DarkStoneWall_Right,DarkStoneWall_RightEnd
	dl $AF8000,$AF8600,StoneWall_LightLeft,StoneWall_LightLeftEnd
	dl $AF8600,$AF8C00,StoneWall_LightMiddle,StoneWall_LightMiddleEnd
	dl $AF8C00,$AF9200,StoneWall_LightRight,StoneWall_LightRightEnd
	dl $AF9200,$AF9800,DarkElevatorWall,DarkElevatorWallEnd
	dl $AF9800,$AF9E00,ElevatorWall_Speaker,ElevatorWall_SpeakerEnd
	dl $AF9E00,$AFA400,ElevatorWall_Light,ElevatorWall_LightEnd
	dl $AFA400,$AFAA00,LabWall_MediumMonitor_Left,LabWall_MediumMonitor_LeftEnd
	dl $AFAA00,$AFB000,LabWall_MediumMonitor_Right,LabWall_MediumMonitor_RightEnd
	dl $AFB000,$AFB600,LabWall_SmallMonitors_Left,LabWall_SmallMonitors_LeftEnd
	dl $AFB600,$AFBC00,LabWall_SmallMonitors_Right,LabWall_SmallMonitors_RightEnd
	dl $AFBC00,$AFC200,VisitorCenterDoor_Inner,VisitorCenterDoor_InnerEnd
	dl $AFC200,$AFC800,VisitorCenterDoor_Outer,VisitorCenterDoor_OuterEnd
	dl $AFC800,$AFCE00,ShedDoor_Inner,ShedDoor_InnerEnd
	dl $AFCE00,$AFD400,ShedDoor_Outer,ShedDoor_OuterEnd
	dl $AFD400,$AFDA00,ElevatorDoor_Inner,ElevatorDoor_InnerEnd
	dl $AFDA00,$AFE000,ElevatorDoor_Outer,ElevatorDoor_OuterEnd
	dl $AFE000,$AFE600,ShipDoor_Inner,ShipDoor_InnerEnd
	dl $AFE600,$AFEC00,ShipDoor_Outer,ShipDoor_OuterEnd
	dl $AFEC00,$AFF200,KitchenDoor_Inner,KitchenDoor_InnerEnd
	dl $AFF200,$AFF800,KitchenDoor_Outer,KitchenDoor_OuterEnd
	dl $B08000,$B08600,PottedPlants,PottedPlantsEnd
	dl $B08600,$B08C00,BunsenBurner,BunsenBurnerEnd
	dl $B08C00,$B09200,Beakers,BeakersEnd
	dl $B09200,$B09800,TestTubeRackAndStool,TestTubeRackAndStoolEnd
	dl $B09800,$B0A400,TableChairAndBed,TableChairAndBedEnd
	dl $B0A400,$B0B000,TinyExplosionCeilingLightAndLightSpots,TinyExplosionCeilingLightAndLightSpotsEnd
	dl $B0B000,$B0B600,FirstAidKitAndStrangeMachine,FirstAidKitAndStrangeMachineEnd
	dl $B0B600,$B0BC00,TableLampAndExtraLife,TableLampAndExtraLifeEnd
	dl $B0BC00,$B0C200,SideOfRefridgerator,SideOfRefridgeratorEnd
	dl $B0C200,$B0C800,GreenPotAndRubberPlant,GreenPotAndRubberPlantEnd
	dl $B0C800,$B0CE00,Incubator,IncubatorEnd
	dl $B0CE00,$B0D400,PottedPalmTree,PottedPalmTreeEnd
	dl $B0D400,$B0E000,TriplePottedPalmTree,TriplePottedPalmTreeEnd
	dl $B0E000,$B0E600,IncubatorCounterEndAndSide,IncubatorCounterEndAndSideEnd
	dl $B0E600,$B0EC00,IncubatorCounterMiddleAndMiniFridgeFront,IncubatorCounterMiddleAndMiniFridgeFrontEnd
	dl $B0EC00,$B0F200,Chain,ChainEnd
	dl $B0F200,$B0F800,FridgeFront,FridgeFrontEnd
	dl $B18000,$B18C00,RaptorExploding,RaptorExplodingEnd
	dl $B18C00,$B19800,BigExplosionCloud,BigExplosionCloudEnd
	dl $B19800,$B1A400,MediumExplosionCloud,MediumExplosionCloudEnd
	dl $B1A400,$B1B000,SmallExplosionCloud,SmallExplosionCloudEnd
	dl $B1B000,$B1B600,RaptorWalk_Away1,RaptorWalk_Away1End
	dl $B1B600,$B1BC00,RaptorWalk_Away2,RaptorWalk_Away2End
	dl $B1BC00,$B1C200,RaptorWalk_Away3,RaptorWalk_Away3End
	dl $B1C200,$B1C800,RaptorWalk_Away4,RaptorWalk_Away4End
	dl $B1C800,$B1CE00,RaptorWalk_Away5,RaptorWalk_Away5End
	dl $B1CE00,$B1D400,RaptorWalk_Away6,RaptorWalk_Away6End
	dl $B1D400,$B1DA00,RaptorWalk_Towards1,RaptorWalk_Towards1End
	dl $B1DA00,$B1E000,RaptorWalk_Towards2,RaptorWalk_Towards2End
	dl $B1E000,$B1E600,RaptorWalk_Towards3,RaptorWalk_Towards3End
	dl $B1E600,$B1EC00,RaptorWalk_Towards4,RaptorWalk_Towards4End
	dl $B1EC00,$B1F200,RaptorWalk_Towards5,RaptorWalk_Towards5End
	dl $B1F200,$B1F800,RaptorWalk_Towards6,RaptorWalk_Towards6End
	dl $B28000,$B28C00,RaptorWalk_BodySide1,RaptorWalk_BodySide1End
	dl $B28C00,$B29800,RaptorWalk_BodySide2,RaptorWalk_BodySide2End
	dl $B29800,$B2A400,RaptorWalk_BodySide3,RaptorWalk_BodySide3End
	dl $B2A400,$B2B000,RaptorWalk_BodySide4,RaptorWalk_BodySide4End
	dl $B2B000,$B2BC00,RaptorWalk_BodySide5,RaptorWalk_BodySide5End
	dl $B2BC00,$B2C800,RaptorWalk_BodySide6,RaptorWalk_BodySide6End
	dl $B2C800,$B2D400,RaptorWalk_TailSide1,RaptorWalk_TailSide1End
	dl $B2D400,$B2E000,RaptorWalk_TailSide2,RaptorWalk_TailSide2End
	dl $B2E000,$B2EC00,RaptorWalk_TailSide3,RaptorWalk_TailSide3End
	dl $B2EC00,$B2F800,RaptorDying_Away1,RaptorDying_Away1End
	dl $B38000,$B38C00,RaptorDying_AwayBody2,RaptorDying_AwayBody2End
	dl $B38C00,$B39200,RaptorDying_AwayTail2,RaptorDying_AwayTail2End
	dl $B39200,$B39800,DilophosaurSpit,DilophosaurSpitEnd
	dl $B39800,$B3A400,RaptorDying_Towards1,RaptorDying_Towards1End
	dl $B3A400,$B3B000,RaptorDying2_TowardsBody2,RaptorDying2_TowardsBody2End
	dl $B3B000,$B3BC00,RaptorDying2_TowardsTail2,RaptorDying2_TowardsTail2End
	dl $B3BC00,$B3C200,RaptorDying3_Head_IDCard,RaptorDying3_Head_IDCardEnd
	dl $B3C200,$B3C800,RaptorDying3_Body_Drumstick,RaptorDying3_Body_DrumstickEnd
	dl $B3C800,$B3CE00,RaptorDying3_Tail_GasGrenade,RaptorDying3_Tail_GasGrenadeEnd
	dl $B3CE00,$B3D400,GasGrenadeProjectileAndBlankSpace,GasGrenadeProjectileAndBlankSpaceEnd
	dl $B3D400,$B3DA00,RaptorDying4_HeadAndLegs_Egg,RaptorDying4_HeadAndLegs_EggEnd
	dl $B3DA00,$B3E000,RaptorDying4_Body_SideOfMiniFridge,RaptorDying4_Body_SideOfMiniFridgeEnd
	dl $B3E000,$B3EC00,RaptorDying_SideBody,RaptorDying_SideBodyEnd
	dl $B3EC00,$B3F200,RaptorDying_SideTail_Computer,RaptorDying_SideTail_ComputerEnd
	dl $B3F200,$B3F800,ExitSign_BigLetterD,ExitSign_BigLetterDEnd
	dl $BBF7F5,$BBFDF5,Darkness,DarknessEnd
TexturePointersEnd:

;--------------------------------------------------------------------

UncompressedPalettePointersStart:
	dl $80A21A,$80A23A,PAL_TyrannosaurusRex,PAL_TyrannosaurusRexEnd
	dl $80A23A,$80A25A,PAL_Velociraptor,PAL_VelociraptorEnd
	dl $80A25A,$80A27A,PAL_Triceratops,PAL_TriceratopsEnd
	dl $80A27A,$80A29A,PAL_Player,PAL_PlayerEnd
	dl $80A29A,$80A33A,DATA_80A29A,DATA_80A29AEnd
	dl $80A33A,$80A35A,PAL_ElectrifiedPlayer,PAL_ElectrifiedPlayerEnd
	dl $81867E,$81869E,PAL_AnimatedFlowingWater,PAL_AnimatedFlowingWaterEnd
	dl $81CFB9,$81CFD9,PAL_DennisNedryPortrait,PAL_DennisNedryPortraitEnd
	dl $81CFD9,$81CFF9,PAL_AlexMurphyPortrait,PAL_AlexMurphyPortraitEnd
	dl $81CFF9,$81D019,PAL_EllieSattlerPortrait,PAL_EllieSattlerPortraitEnd
	dl $81D019,$81D039,PAL_JohnHammondPortrait,PAL_JohnHammondPortraitEnd
	dl $81D039,$81D059,PAL_IanMalcolmPortrait,PAL_IanMalcolmPortraitEnd
	dl $81D059,$81D079,PAL_RobertMuldoonPortrait,PAL_RobertMuldoonPortraitEnd
	dl $81D079,$81D099,PAL_TimMurphyPortrait,PAL_TimMurphyPortraitEnd
	dl $81D099,$81D0B9,PAL_MrDNA,PAL_MrDNAEnd
	dl $81D0B9,$81D1B9,DATA_81D0B9,DATA_81D0B9End
	dl $81D1B9,$81D1D9,PAL_MrDNAMessageBox,PAL_MrDNAMessageBoxEnd
	dl $81D1D9,$81D1F9,PAL_RegularMessageBox,PAL_RegularMessageBoxEnd
	dl $81D1F9,$81D3B9,DATA_81D1F9,DATA_81D1F9End
UncompressedPalettePointersEnd:

;--------------------------------------------------------------------

CompressedPalettePointersStart:
	dl $81E903,$81EAD7,PAL_ExteriorAreas,PAL_ExteriorAreasEnd
	dl $8CC23A,$8CC44E,PAL_Mode7Intro,PAL_Mode7IntroEnd
	dl $8CDD86,$8CDF9A,PAL_GameOverScreen,PAL_GameOverScreenEnd
	dl $8CEE74,$8CF0A6,PAL_TitleScreen,PAL_TitleScreenEnd
	dl $8CF0A6,$8CF2B0,PAL_HighScoreScreen,PAL_HighScoreScreenEnd
	dl $8FE218,$8FE358,PAL_OceanLogo,PAL_OceanLogoEnd
	dl $AAFDB0,$AAFFE2,PAL_InteriorAreas,PAL_InteriorAreasEnd
	dl $AEFE80,$AF8000,PAL_ComputerTerminal,PAL_ComputerTerminalEnd
CompressedPalettePointersEnd:

;--------------------------------------------------------------------

GarbageDataPointersStart:
if !ROMVer&(!JP_U2) != $00
	dl $80FEE5,$80FFC0,DATA_80FEE5,DATA_80FEE5End
else
	dl $80FA14,$80FBF4,DATA_80FA14,DATA_80FA14End
	dl $80FEAF,$80FFC0,DATA_80FEAF,DATA_80FEAFEnd
endif
	dl $81FDE7,$828000,DATA_81FDE7,DATA_81FDE7End
	dl $82FD6A,$838000,DATA_82FD6A,DATA_82FD6AEnd
	dl $83F4F2,$848000,DATA_83F4F2,DATA_83F4F2End
	dl $8CFA84,$8D8000,DATA_8CFA84,DATA_8CFA84End
	dl $8EFA66,$8F8000,DATA_8EFA66,DATA_8EFA66End
	dl $8FFB58,$908000,DATA_8FFB58,DATA_8FFB58End
	dl $91F5DC,$928000,DATA_91F5DC,DATA_91F5DCEnd
	dl $92FC00,$938000,DATA_92FC00,DATA_92FC00End
	dl $93FE00,$948000,DATA_93FE00,DATA_93FE00End
	dl $94FE00,$958000,DATA_94FE00,DATA_94FE00End
	dl $95FB00,$968000,DATA_95FB00,DATA_95FB00End
	dl $96FE00,$978000,DATA_96FE00,DATA_96FE00End
	dl $97E880,$988000,DATA_97E880,DATA_97E880End
	dl $98D580,$998000,DATA_98D580,DATA_98D580End
	dl $99DA00,$9A8000,DATA_99DA00,DATA_99DA00End
	dl $9AF500,$9B8000,DATA_9AF500,DATA_9AF500End
	dl $9BF800,$9C8000,DATA_9BF800,DATA_9BF800End
	dl $9CF800,$9D8000,DATA_9CF800,DATA_9CF800End
	dl $9FE800,$A08000,DATA_9FE800,DATA_9FE800End
	dl $A0FF77,$A18000,DATA_A0FF77,DATA_A0FF77End
	dl $A1FFB2,$A28000,DATA_A1FFB2,DATA_A1FFB2End
	dl $A2FFE4,$A38000,DATA_A2FFE4,DATA_A2FFE4End
	dl $A3FFF0,$A48000,DATA_A3FFF0,DATA_A3FFF0End
	dl $A4FF3F,$A58000,DATA_A4FF3F,DATA_A4FF3FEnd
	dl $A5FF4A,$A68000,DATA_A5FF4A,DATA_A5FF4AEnd
	dl $A6FFC5,$A78000,DATA_A6FFC5,DATA_A6FFC5End
if !ROMVer&(!JP_U2) != $00
	dl $A7FFDC,$A88000,DATA_A7FFDC,DATA_A7FFDCEnd
else
	dl $A7FFA7,$A88000,DATA_A7FFA7,DATA_A7FFA7End
	dl $A8FFD8,$A98000,DATA_A8FFD8,DATA_A8FFD8End
endif
	dl $A9FF74,$AA8000,DATA_A9FF74,DATA_A9FF74End
	dl $AAFFE2,$AB8000,DATA_AAFFE2,DATA_AAFFE2End
	dl $ABFFF8,$AC8000,DATA_ABFFF8,DATA_ABFFF8End
if !ROMVer&(!JP_U2) != $00
	dl $B4FFF6,$B58000,DATA_B4FFF6,DATA_B4FFF6End
else
	dl $B4FFD7,$B58000,DATA_B4FFD7,DATA_B4FFD7End
endif
	dl $B5FEFA,$B68000,DATA_B5FEFA,DATA_B5FEFAEnd
	dl $B6FF26,$B78000,DATA_B6FF26,DATA_B6FF26End
	dl $B7FFF5,$B88000,DATA_B7FFF5,DATA_B7FFF5End
if !ROMVer&(!JP_U2) != $00
	dl $B8FFF9,$B98000,DATA_B8FFF9,DATA_B8FFF9End
else
	dl $B8FFCA,$B98000,DATA_B8FFCA,DATA_B8FFCAEnd
endif
	dl $B9FFDE,$BA8000,DATA_B9FFDE,DATA_B9FFDEEnd
if !ROMVer&(!JP_U2) != $00
	dl $BAFFEF,$BB8000,DATA_BAFFEF,DATA_BAFFEFEnd
else
	dl $BAFFA7,$BB8000,DATA_BAFFA7,DATA_BAFFA7End
endif
	dl $BBFFF2,$BC8000,DATA_BBFFF2,DATA_BBFFF2End
if !ROMVer&(!JP_U2) != $00
	dl $BCFFE0,$BD8000,DATA_BCFFE0,DATA_BCFFE0End
	dl $000000,$BE8000,DATA_BDFE46,DATA_BDFE46End
	dl $000000,$BF8000,DATA_BEFF7E,DATA_BEFF7EEnd
	dl $000000,$C08000,DATA_BFFF54,DATA_BFFF54End
else
	dl $BCFD59,$BD8000,DATA_BCFD59,DATA_BCFD59End
	dl $BDFE46,$BE8000,DATA_BDFE46,DATA_BDFE46End
	dl $BEFF7E,$BF8000,DATA_BEFF7E,DATA_BEFF7EEnd
	dl $BFFF54,$C08000,DATA_BFFF54,DATA_BFFF54End
endif
GarbageDataPointersEnd:

;--------------------------------------------------------------------

SPCDataPointersStart:
	dl $B48000,$B4D212,DATA_B48000,DATA_B48000End
	dl $B4EFFB,$B4FA8E,DATA_B4EFFB,DATA_B4EFFBEnd
	dl $B68000,$B6FB63,DATA_B68000,DATA_B68000End
	dl $B78000,$B7F40E,DATA_B78000,DATA_B78000End
	dl $B88000,$B8F660,DATA_B88000,DATA_B88000End
	dl $B98000,$B9CACE,DATA_B98000,DATA_B98000End
	dl $BA8000,$BAFDE1,DATA_BA8000,DATA_BA8000End
	dl $BB8000,$BBF7F5,DATA_BB8000,DATA_BB8000End
	dl $BC8000,$BCFD59,DATA_BC8000,DATA_BC8000End
	dl $BD8000,$BDE792,DATA_BD8000,DATA_BD8000End
	dl $BE8000,$BEE361,DATA_BE8000,DATA_BE8000End
	dl $BF8000,$BFD6D8,DATA_BF8000,DATA_BF8000End
	dl $BFD6D8,$BFF19D,DATA_BFD6D8,DATA_BFD6D8End
SPCDataPointersEnd:

;--------------------------------------------------------------------

SFXBRRPointersStart:
	dl $838006,$839A6A,SFXBRR_BoneCrunch,SFXBRR_BoneCrunchEnd
	dl $B4D218,$B4EFF7,SFXBRR_WelcomeToJurassicPark,SFXBRR_WelcomeToJurassicParkEnd
	dl $B598F7,$B59AD7,SFXBRR_00,SFXBRR_00End
	dl $B59AD7,$B5AF6B,SFXBRR_01,SFXBRR_01End
	dl $B5AF6B,$B5B58C,SFXBRR_02,SFXBRR_02End
	dl $B5B58C,$B5C240,SFXBRR_03,SFXBRR_03End
	dl $B5C240,$B5C94B,SFXBRR_04,SFXBRR_04End
	dl $B5C94B,$B5CE31,SFXBRR_05,SFXBRR_05End
	dl $B5CE31,$B5D7B2,SFXBRR_06,SFXBRR_06End
	dl $B5D7BC,$B5DFCF,SFXBRR_Alan,SFXBRR_AlanEnd
	dl $B5DFD9,$B5EB67,SFXBRR_Helicopter,SFXBRR_HelicopterEnd
	dl $B8F666,$B8FFC6,SFXBRR_WaterSplash,SFXBRR_WaterSplashEnd
	dl $B9CAD4,$B9E928,SFXBRR_TRexRoar,SFXBRR_TRexRoarEnd
	dl $B9E932,$B9F202,SFXBRR_Grant,SFXBRR_GrantEnd
	dl $B9F20C,$B9FFDA,SFXBRR_MrGrant,SFXBRR_MrGrantEnd
	dl $BDE798,$BDFE42,SFXBRR_Unknown,SFXBRR_UnknownEnd
	dl $BEE369,$BEF434,SFXBRR_Raptor1,SFXBRR_Raptor1End
	dl $BEF434,$BEFF7A,SFXBRR_Raptor2,SFXBRR_Raptor2End
	dl $BFF1A7,$BFF46B,SFXBRR_MrDNAChatter1,SFXBRR_MrDNAChatter1End
	dl $BFF46B,$BFF645,SFXBRR_MrDNAChatter2,SFXBRR_MrDNAChatter2End
	dl $BFF645,$BFFB6D,SFXBRR_MrDNAChatter3,SFXBRR_MrDNAChatter3End
SFXBRRPointersEnd:

;--------------------------------------------------------------------

GFX_Layer3_RadarTiles:
	db "GFX_Layer3_RadarTiles.bin"
GFX_Layer3_RadarTilesEnd:
GFX_LayerX_ExteriorAreas:
if !ROMVer&(!JP_U2) != $00
	db "GFX_LayerX_ExteriorAreas_JP_U2.bin"
else
	db "GFX_LayerX_ExteriorAreas_JP_U1.bin"
endif
GFX_LayerX_ExteriorAreasEnd:
GFX_Sprite_BigSmokeCloud:
	db "GFX_Sprite_BigSmokeCloud.bin"
GFX_Sprite_BigSmokeCloudEnd:
GFX_Sprite_RotatingMechanism:
	db "GFX_Sprite_RotatingMechanism.bin"
GFX_Sprite_RotatingMechanismEnd:
GFX_Sprite_Pachycephalosaurus:
	db "GFX_Sprite_Pachycephalosaurus.bin"
GFX_Sprite_PachycephalosaurusEnd:
GFX_Sprite_Triceratops:
	db "GFX_Sprite_Triceratops.bin"
GFX_Sprite_TriceratopsEnd:
GFX_Sprite_Compsognathus:
	db "GFX_Sprite_Compsognathus.bin"
GFX_Sprite_CompsognathusEnd:
GFX_Sprite_MetalDoorBridge:
	db "GFX_Sprite_MetalDoorBridge.bin"
GFX_Sprite_MetalDoorBridgeEnd:
GFX_Sprite_ElectricFenceGate:
	db "GFX_Sprite_ElectricFenceGate.bin"
GFX_Sprite_ElectricFenceGateEnd:
GFX_Sprite_Boulders:
	db "GFX_Sprite_Boulders.bin"
GFX_Sprite_BouldersEnd:
GFX_Sprite_MrDNA:
	db "GFX_Sprite_MrDNA.bin"
GFX_Sprite_MrDNAEnd:
GFX_Sprite_Player:
	db "GFX_Sprite_Player.bin"
GFX_Sprite_PlayerEnd:
GFX_Sprite_Player_02:
	db "GFX_Sprite_Player_02.bin"
GFX_Sprite_Player_02End:
GFX_Sprite_Player_03:
	db "GFX_Sprite_Player_03.bin"
GFX_Sprite_Player_03End:
GFX_Sprite_Player_04:
	db "GFX_Sprite_Player_04.bin"
GFX_Sprite_Player_04End:
GFX_Layer3_CattleProdAmmoDisplay:
	db "GFX_Layer3_CattleProdAmmoDisplay.bin"
GFX_Layer3_CattleProdAmmoDisplayEnd:
GFX_Sprite_CattleProd:
	db "GFX_Sprite_CattleProd.bin"
GFX_Sprite_CattleProdEnd:
GFX_Sprite_ShotgunShots:
	db "GFX_Sprite_ShotgunShots.bin"
GFX_Sprite_ShotgunShotsEnd:
GFX_Sprite_RocketLauncherShots:
	db "GFX_Sprite_RocketLauncherShots.bin"
GFX_Sprite_RocketLauncherShotsEnd:
GFX_Sprite_TranquilizerShots:
	db "GFX_Sprite_TranquilizerShots.bin"
GFX_Sprite_TranquilizerShotsEnd:
GFX_Sprite_GasGrenadeShots:
	db "GFX_Sprite_GasGrenadeShots.bin"
GFX_Sprite_GasGrenadeShotsEnd:
GFX_Sprite_BolasSnareRifleShots:
	db "GFX_Sprite_BolasSnareRifleShots.bin"
GFX_Sprite_BolasSnareRifleShotsEnd:
GFX_Sprite_Items:
	db "GFX_Sprite_Items.bin"
GFX_Sprite_ItemsEnd:
GFX_Sprite_Unknown1:
	db "GFX_Sprite_Unknown1.bin"
GFX_Sprite_Unknown1End:
GFX_Sprite_Items_02:
	db "GFX_Sprite_Items_02.bin"
GFX_Sprite_Items_02End:
GFX_Sprite_MiniExplosions:
	db "GFX_Sprite_MiniExplosions.bin"
GFX_Sprite_MiniExplosionsEnd:
GFX_Sprite_DilophosaurSpit:
	db "GFX_Sprite_DilophosaurSpit.bin"
GFX_Sprite_DilophosaurSpitEnd:
GFX_Sprite_SmallSmokeCloud:
	db "GFX_Sprite_SmallSmokeCloud.bin"
GFX_Sprite_SmallSmokeCloudEnd:
GFX_Sprite_Dragonfly:
	db "GFX_Sprite_Dragonfly.bin"
GFX_Sprite_DragonflyEnd:
GFX_Sprite_DennisNedryPortrait:
	db "GFX_Sprite_DennisNedryPortrait.bin"
GFX_Sprite_DennisNedryPortraitEnd:
GFX_Sprite_AlexMurphyPortrait:
	db "GFX_Sprite_AlexMurphyPortrait.bin"
GFX_Sprite_AlexMurphyPortraitEnd:
GFX_Sprite_EllieSattlerPortrait:
	db "GFX_Sprite_EllieSattlerPortrait.bin"
GFX_Sprite_EllieSattlerPortraitEnd:
GFX_Sprite_JohnHammondPortrait:
	db "GFX_Sprite_JohnHammondPortrait.bin"
GFX_Sprite_JohnHammondPortraitEnd:
GFX_Sprite_IanMalcolmPortrait:
	db "GFX_Sprite_IanMalcolmPortrait.bin"
GFX_Sprite_IanMalcolmPortraitEnd:
GFX_Sprite_RobertMuldoonPortrait:
	db "GFX_Sprite_RobertMuldoonPortrait.bin"
GFX_Sprite_RobertMuldoonPortraitEnd:
GFX_Sprite_TimMurphyPortrait:
	db "GFX_Sprite_TimMurphyPortrait.bin"
GFX_Sprite_TimMurphyPortraitEnd:
GFX_Sprite_Gallimimus:
	db "GFX_Sprite_Gallimimus.bin"
GFX_Sprite_GallimimusEnd:
GFX_Sprite_Unknown2:
	db "GFX_Sprite_Unknown2.bin"
GFX_Sprite_Unknown2sEnd:
GFX_Sprite_Dilophosaur:
	db "GFX_Sprite_Dilophosaur.bin"
GFX_Sprite_DilophosaurEnd:
GFX_Sprite_Dilophosaur_02:
	db "GFX_Sprite_Dilophosaur_02.bin"
GFX_Sprite_Dilophosaur_02End:
GFX_Sprite_TyrannosaurusRex:
	db "GFX_Sprite_TyrannosaurusRex.bin"
GFX_Sprite_TyrannosaurusRexEnd:
GFX_Sprite_TyrannosaurusRex_02:
	db "GFX_Sprite_TyrannosaurusRex_02.bin"
GFX_Sprite_TyrannosaurusRex_02End:
GFX_Sprite_Velociraptor:
	db "GFX_Sprite_Velociraptor.bin"
GFX_Sprite_VelociraptorEnd:

;--------------------------------------------------------------------

GFX_Sprite_FlamesAndShadows:
	db "GFX_Sprite_FlamesAndShadows.bin"
GFX_Sprite_FlamesAndShadowsEnd:
GFX_Layer2_ExteriorAreasGrassTiles:
	db "GFX_Layer2_ExteriorAreasGrassTiles.bin"
GFX_Layer2_ExteriorAreasGrassTilesEnd:
GFX_Layer3_ExteriorAreasStatusBar:
	db "GFX_Layer3_ExteriorAreasStatusBar.bin"
GFX_Layer3_ExteriorAreasStatusBarEnd:
GFX_Layer3_MrDNAMessageBoxTiles:
	db "GFX_Layer3_MrDNAMessageBoxTiles.bin"
GFX_Layer3_MrDNAMessageBoxTilesEnd:
GFX_Layer3_DinoEggMessageBox:
	db "GFX_Layer3_DinoEggMessageBox.bin"
GFX_Layer3_DinoEggMessageBoxEnd:
GFX_Layer3_RegularMessageBoxTiles:
	db "GFX_Layer3_RegularMessageBoxTiles.bin"
GFX_Layer3_RegularMessageBoxTilesEnd:
GFX_Sprite_Mode7IntroText:
	db "GFX_Sprite_Mode7IntroText.bin"
GFX_Sprite_Mode7IntroTextEnd:
GFX_Mode7_IsleNublar:
	db "GFX_Mode7_IsleNublar.bin"
GFX_Mode7_IsleNublarEnd:
GFX_BG_TitleScreen:
	db "GFX_BG_TitleScreen.bin"
GFX_BG_TitleScreenEnd:
GFX_BG_HighScoreScreen:
	db "GFX_BG_HighScoreScreen.bin"
GFX_BG_HighScoreScreenEnd:
GFX_Sprite_TitleScreen_OpenedMenu:
	db "GFX_Sprite_TitleScreen_OpenedMenu.bin"
GFX_Sprite_TitleScreen_OpenedMenuEnd:
GFX_Sprite_TitleScreen_ClosedMenu:
	db "GFX_Sprite_TitleScreen_ClosedMenu.bin"
GFX_Sprite_TitleScreen_ClosedMenuEnd:
GFX_BG_Mode7IntroMountains:
	db "GFX_BG_Mode7IntroMountains.bin"
GFX_BG_Mode7IntroMountainsEnd:
GFX_Sprite_GameOverScreenNumbers:
	db "GFX_Sprite_GameOverScreenNumbers.bin"
GFX_Sprite_GameOverScreenNumbersEnd:
GFX_Sprite_JurassicParkFont:
	db "GFX_Sprite_JurassicParkFont.bin"
GFX_Sprite_JurassicParkFontEnd:
GFX_OceanLogo:
	db "GFX_OceanLogo.bin"
GFX_OceanLogoEnd:
GFX_BG_GameOverScreen:
	db "GFX_BG_GameOverScreen.bin"
GFX_BG_GameOverScreenEnd:
GFX_Sprite_InteriorHUD:
	db "GFX_Sprite_InteriorHUD.rnc"
GFX_Sprite_InteriorHUDEnd:
GFX_BG_ComputerTerminal_06:
	db "GFX_BG_ComputerTerminal_06.bin"
GFX_BG_ComputerTerminal_06End:
GFX_Sprite_AlanGrantHand:
	db "GFX_Sprite_AlanGrantHand.bin"
GFX_Sprite_AlanGrantHandEnd:
GFX_Sprite_AlanGrantHand_02:
	db "GFX_Sprite_AlanGrantHand_02.bin"
GFX_Sprite_AlanGrantHand_02End:
GFX_BG_ComputerTerminal:
	db "GFX_BG_ComputerTerminal.bin"
GFX_BG_ComputerTerminalEnd:
GFX_BG_ComputerTerminal_02:
	db "GFX_BG_ComputerTerminal_02.bin"
GFX_BG_ComputerTerminal_02End:
GFX_BG_ComputerTerminal_03:
	db "GFX_BG_ComputerTerminal_03.bin"
GFX_BG_ComputerTerminal_03End:
GFX_BG_ComputerTerminal_04:
	db "GFX_BG_ComputerTerminal_04.bin"
GFX_BG_ComputerTerminal_04End:
GFX_BG_ComputerTerminal_05:
	db "GFX_BG_ComputerTerminal_05.bin"
GFX_BG_ComputerTerminal_05End:

;--------------------------------------------------------------------

TM_ExteriorAreaMap:
if !ROMVer&(!JP_U2) != $00
	db "ExteriorAreaMap_JP_U2.bin"
else
	db "ExteriorAreaMap_JP_U1.bin"
endif
TM_ExteriorAreaMapEnd:
TM_ExteriorAreaMap16:
	db "ExteriorAreaMap16.bin"
TM_ExteriorAreaMap16End:

;--------------------------------------------------------------------

TM_Layer2_ExteriorAreasGrass:
	db "Layer2_ExteriorAreasGrass.bin"
TM_Layer2_ExteriorAreasGrassEnd:
TM_Layer3_ExteriorAreas:
	db "Layer3_ExteriorAreas.bin"
TM_Layer3_ExteriorAreasEnd:
TM_Layer3_DinoEggMessageBox:
	db "Layer3_DinoEggMessageBox.bin"
TM_Layer3_DinoEggMessageBoxEnd:
TM_Mode7_IsleNublar:
	db "Mode7_IsleNublar.bin"
TM_Mode7_IsleNublarEnd:
TM_BG_GameOverScreen:
	db "BG_GameOverScreen.bin"
TM_BG_GameOverScreenEnd:
TM_BG_TitleScreen:
	db "BG_TitleScreen.bin"
TM_BG_TitleScreenEnd:
TM_BG_HighScoreScreen:
	db "BG_HighScoreScreen.bin"
TM_BG_HighScoreScreenEnd:
TM_BG_Mode7IntroMountains:
	db "BG_Mode7IntroMountains.bin"
TM_BG_Mode7IntroMountainsEnd:
TM_OceanLogo:
	db "OceanLogo.bin"
TM_OceanLogoEnd:
TM_BG_ComputerTerminal:
	db "BG_ComputerTerminal.bin"
TM_BG_ComputerTerminalEnd:

;--------------------------------------------------------------------

DATA_8280D0:
	db "DATA_8280D0.bin"
DATA_8280D0End:
DATA_828338:
	db "DATA_828338.bin"
DATA_828338End:
DATA_82857E:
	db "DATA_82857E.bin"
DATA_82857EEnd:
DATA_8287DA:
	db "DATA_8287DA.bin"
DATA_8287DAEnd:
DATA_828A14:
	db "DATA_828A14.bin"
DATA_828A14End:
DATA_828C66:
	db "DATA_828C66.bin"
DATA_828C66End:
DATA_828EB4:
	db "DATA_828EB4.bin"
DATA_828EB4End:
DATA_8290FA:
	db "DATA_8290FA.bin"
DATA_8290FAEnd:
DATA_82933A:
	db "DATA_82933A.bin"
DATA_82933AEnd:
DATA_82958C:
	db "DATA_82958C.bin"
DATA_82958CEnd:
DATA_8297C4:
	db "DATA_8297C4.bin"
DATA_8297C4End:
DATA_829A1E:
	db "DATA_829A1E.bin"
DATA_829A1EEnd:
DATA_829C54:
	db "DATA_829C54.bin"
DATA_829C54End:
DATA_829E8C:
	db "DATA_829E8C.bin"
DATA_829E8CEnd:
DATA_82A0C8:
	db "DATA_82A0C8.bin"
DATA_82A0C8End:
DATA_82A30A:
	db "DATA_82A30A.bin"
DATA_82A30AEnd:
DATA_82A530:
	db "DATA_82A530.bin"
DATA_82A530End:
DATA_82A76A:
	db "DATA_82A76A.bin"
DATA_82A76AEnd:
DATA_82A99C:
	db "DATA_82A99C.bin"
DATA_82A99CEnd:
DATA_82ABE2:
	db "DATA_82ABE2.bin"
DATA_82ABE2End:
DATA_82AE18:
	db "DATA_82AE18.bin"
DATA_82AE18End:
DATA_82B05A:
	db "DATA_82B05A.bin"
DATA_82B05AEnd:
DATA_82B292:
	db "DATA_82B292.bin"
DATA_82B292End:
DATA_82B4DA:
	db "DATA_82B4DA.bin"
DATA_82B4DAEnd:

;--------------------------------------------------------------------

DATA_82BE10:
	db "DATA_82BE10.bin"
DATA_82BE10End:
DATA_82C040:
	db "DATA_82C040.bin"
DATA_82C040End:
DATA_82C27E:
	db "DATA_82C27E.bin"
DATA_82C27EEnd:
DATA_82C4CA:
	db "DATA_82C4CA.bin"
DATA_82C4CAEnd:
DATA_82C6C2:
	db "DATA_82C6C2.bin"
DATA_82C6C2End:
DATA_82C904:
	db "DATA_82C904.bin"
DATA_82C904End:
DATA_82CB3E:
	db "DATA_82CB3E.bin"
DATA_82CB3EEnd:
DATA_82CD5E:
	db "DATA_82CD5E.bin"
DATA_82CD5EEnd:
DATA_82CF92:
	db "DATA_82CF92.bin"
DATA_82CF92End:
DATA_82D1B6:
	db "DATA_82D1B6.bin"
DATA_82D1B6End:
DATA_82D400:
	db "DATA_82D400.bin"
DATA_82D400End:
DATA_82D602:
	db "DATA_82D602.bin"
DATA_82D602End:
DATA_82D802:
	db "DATA_82D802.bin"
DATA_82D802End:
DATA_82DA5A:
	db "DATA_82DA5A.bin"
DATA_82DA5AEnd:
DATA_82DC9A:
	db "DATA_82DC9A.bin"
DATA_82DC9AEnd:
DATA_82DEDA:
	db "DATA_82DEDA.bin"
DATA_82DEDAEnd:
DATA_82E104:
	db "DATA_82E104.bin"
DATA_82E104End:
DATA_82E344:
	db "DATA_82E344.bin"
DATA_82E344End:
DATA_82E568:
	db "DATA_82E568.bin"
DATA_82E568End:
DATA_82E7A4:
	db "DATA_82E7A4.bin"
DATA_82E7A4End:
DATA_82E9CA:
	db "DATA_82E9CA.bin"
DATA_82E9CAEnd:
DATA_82EC0C:
	db "DATA_82EC0C.bin"
DATA_82EC0CEnd:
DATA_82EE46:
	db "DATA_82EE46.bin"
DATA_82EE46End:
DATA_82F06E:
	db "DATA_82F06E.bin"
DATA_82F06EEnd:
DATA_82F296:
	db "DATA_82F296.bin"
DATA_82F296End:
DATA_82F4C2:
	db "DATA_82F4C2.bin"
DATA_82F4C2End:
DATA_82F702:
	db "DATA_82F702.bin"
DATA_82F702End:
DATA_82F936:
	db "DATA_82F936.bin"
DATA_82F936End:
DATA_82FB5E:
	db "DATA_82FB5E.bin"
DATA_82FB5EEnd:

;--------------------------------------------------------------------

Ship_EntryLevel_RoomDataPtrs:
	db "Ship_EntryLevel_RoomDataPtrs.rnc"
Ship_EntryLevel_RoomDataPtrsEnd:
Ship_EntryLevel_Entities:
	db "Ship_EntryLevel_Entities.rnc"
Ship_EntryLevel_EntitiesEnd:
Ship_SubLevel2_RoomDataPtrs:
	db "Ship_SubLevel2_RoomDataPtrs.rnc"
Ship_SubLevel2_RoomDataPtrsEnd:
Ship_SubLevel2_Entities:
if !ROMVer&(!JP_U2) != $00
	db "Ship_SubLevel2_Entities_JP_U2.rnc"
else
	db "Ship_SubLevel2_Entities_JP_U1.rnc"
endif
Ship_SubLevel2_EntitiesEnd:
NorthUtilityShed_GroundLevel_RoomDataPtrs:
	db "NorthUtilityShed_GroundLevel_RoomDataPtrs.rnc"
NorthUtilityShed_GroundLevel_RoomDataPtrsEnd:
NorthUtilityShed_GroundLevel_Entities:
	db "NorthUtilityShed_GroundLevel_Entities.rnc"
NorthUtilityShed_GroundLevel_EntitiesEnd:
NorthUtilityShed_GroundLevel_MapLayout:
	db "NorthUtilityShed_GroundLevel_MapLayout.rnc"
NorthUtilityShed_GroundLevel_MapLayoutEnd:
VisitorCenter_GroundLevel_Entities:
	db "VisitorCenter_GroundLevel_Entities.rnc"
VisitorCenter_GroundLevel_EntitiesEnd:
VisitorCenter_GroundLevel_MapLayout:
	db "VisitorCenter_GroundLevel_MapLayout.rnc"
VisitorCenter_GroundLevel_MapLayoutEnd:
Ship_SubLevel4_Entities:
	db "Ship_SubLevel4_Entities.rnc"
Ship_SubLevel4_EntitiesEnd:
BeachUtilityShed_GroundLevel_RoomDataPtrs:
	db "BeachUtilityShed_GroundLevel_RoomDataPtrs.rnc"
BeachUtilityShed_GroundLevel_RoomDataPtrsEnd:
VisitorCenter_SubLevel_Entities:
	db "VisitorCenter_SubLevel_Entities.rnc"
VisitorCenter_SubLevel_EntitiesEnd:
NublarUtilityShed_SubLevel_RoomDataPtrs:
	db "NublarUtilityShed_SubLevel_RoomDataPtrs.rnc"
NublarUtilityShed_SubLevel_RoomDataPtrsEnd:
Ship_SubLevel2_MapLayout:
if !ROMVer&(!JP_U2) != $00
	db "Ship_SubLevel2_MapLayout_JP_U2.rnc"
else
	db "Ship_SubLevel2_MapLayout_JP_U1.rnc"
endif
Ship_SubLevel2_MapLayoutEnd:
NublarUtilityShed_GroundLevel_Entities:
	db "NublarUtilityShed_GroundLevel_Entities.rnc"
NublarUtilityShed_GroundLevel_EntitiesEnd:
NublarUtilityShed_SubLevel_Entities:
	db "NublarUtilityShed_SubLevel_Entities.rnc"
NublarUtilityShed_SubLevel_EntitiesEnd:
BeachUtilityShed_SubLevel_Entities:
	db "BeachUtilityShed_SubLevel_Entities.rnc"
BeachUtilityShed_SubLevel_EntitiesEnd:
BeachUtilityShed_GroundLevel_Entities:
	db "BeachUtilityShed_GroundLevel_Entities.rnc"
BeachUtilityShed_GroundLevel_EntitiesEnd:
RaptorPen_GroundLevel_MapLayout:
	db "RaptorPen_GroundLevel_MapLayout.rnc"
RaptorPen_GroundLevel_MapLayoutEnd:
RaptorPen_UpperLevel_RoomDataPtrs:
if !ROMVer&(!JP_U2) != $00
	db "RaptorPen_UpperLevel_RoomDataPtrs_JP_U2.rnc"
else
	db "RaptorPen_UpperLevel_RoomDataPtrs_JP_U1.rnc"
endif
RaptorPen_UpperLevel_RoomDataPtrsEnd:
RaptorPen_UpperLevel_Entities:
if !ROMVer&(!JP_U2) != $00
	db "RaptorPen_UpperLevel_Entities_JP_U2.rnc"
else
	db "RaptorPen_UpperLevel_Entities_JP_U1.rnc"
endif
RaptorPen_UpperLevel_EntitiesEnd:
RaptorPen_SubLevel1_MapLayout:
if !ROMVer&(!JP_U2) != $00
	db "RaptorPen_SubLevel1_MapLayout_JP_U2.rnc"
else
	db "RaptorPen_SubLevel1_MapLayout_JP_U1.rnc"
endif
RaptorPen_SubLevel1_MapLayoutEnd:
VisitorCenter_GroundFloor_RoomDataPtrs:
	db "VisitorCenter_GroundFloor_RoomDataPtrs.rnc"
VisitorCenter_GroundFloor_RoomDataPtrsEnd:
VisitorCenter_SubLevel_MapLayout:
	db "VisitorCenter_SubLevel_MapLayout.rnc"
VisitorCenter_SubLevel_MapLayoutEnd:
Ship_SubLevel3_MapLayout:
if !ROMVer&(!JP_U2) != $00
	db "Ship_SubLevel3_MapLayout_JP_U2.rnc"
else
	db "Ship_SubLevel3_MapLayout_JP_U1.rnc"
endif
Ship_SubLevel3_MapLayoutEnd:
NorthUtilityShed_SubLevel_RoomDataPtrs:
if !ROMVer&(!JP_U2) != $00
	db "NorthUtilityShed_SubLevel_RoomDataPtrs_JP_U2.rnc"
else
	db "NorthUtilityShed_SubLevel_RoomDataPtrs_JP_U1.rnc"
endif
NorthUtilityShed_SubLevel_RoomDataPtrsEnd:
RaptorPen_SubLevel2_RoomDataPtrs:
if !ROMVer&(!JP_U2) != $00
	db "RaptorPen_SubLevel2_RoomDataPtrs_JP_U2.rnc"
else
	db "RaptorPen_SubLevel2_RoomDataPtrs_JP_U1.rnc"
endif
RaptorPen_SubLevel2_RoomDataPtrsEnd:
DATA_A4FB9B:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A4FB9B_JP_U2.rnc"
else
	db "DATA_A4FB9B_JP_U1.rnc"
endif
DATA_A4FB9BEnd:
DATA_A4FBEC:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A4FBEC_JP_U2.rnc"
else
	db "DATA_A4FBEC_JP_U1.rnc"
endif
DATA_A4FBECEnd:
DATA_A4FC40:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A4FC40_JP_U2.rnc"
else
	db "DATA_A4FC40_JP_U1.rnc"
endif
DATA_A4FC40End:
DATA_A4FCFC:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A4FCFC_JP_U2.rnc"
else
	db "DATA_A4FCFC_JP_U1.rnc"
endif
DATA_A4FCFCEnd:
DATA_A4FDBD:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A4FDBD_JP_U2.rnc"
else
	db "DATA_A4FDBD_JP_U1.rnc"
endif
DATA_A4FDBDEnd:
RaptorNest_RoomDataPtrs:
	db "RaptorNest_RoomDataPtrs.rnc"
RaptorNest_RoomDataPtrsEnd:
RaptorNest_Entities:
	db "RaptorNest_Entities.rnc"
RaptorNest_EntitiesEnd:
Ship_SubLevel1_Entities:
	db "Ship_SubLevel1_Entities.rnc"
Ship_SubLevel1_EntitiesEnd:
RaptorPen_GroundLevel_RoomDataPtrs:
	db "RaptorPen_GroundLevel_RoomDataPtrs.rnc"
RaptorPen_GroundLevel_RoomDataPtrsEnd:
RaptorPen_SubLevel1_Entities:
	db "RaptorPen_SubLevel1_Entities.rnc"
RaptorPen_SubLevel1_EntitiesEnd:
RaptorPen_SubLevel2_Entities:
	db "RaptorPen_SubLevel2_Entities.rnc"
RaptorPen_SubLevel2_EntitiesEnd:
NorthUtilityShed_SubLevel_Entities:
if !ROMVer&(!JP_U2) != $00
	db "NorthUtilityShed_SubLevel_Entities_JP_U2.rnc"
else
	db "NorthUtilityShed_SubLevel_Entities_JP_U1.rnc"
endif
NorthUtilityShed_SubLevel_EntitiesEnd:
VisitorCenter_Floor1_RoomDataPtrs:
	db "VisitorCenter_Floor1_RoomDataPtrs.rnc"
VisitorCenter_Floor1_RoomDataPtrsEnd:
VisitorCenter_Floor1_Entities:
	db "VisitorCenter_Floor1_Entities.rnc"
VisitorCenter_Floor1_EntitiesEnd:
Ship_SubLevel3_Entities:
if !ROMVer&(!JP_U2) != $00
	db "Ship_SubLevel3_Entities_JP_U2.rnc"
else
	db "Ship_SubLevel3_Entities_JP_U1.rnc"
endif
Ship_SubLevel3_EntitiesEnd:
NublarUtilityShed_GroundLevel_RoomDataPtrs:
	db "NublarUtilityShed_GroundLevel_RoomDataPtrs.rnc"
NublarUtilityShed_GroundLevel_RoomDataPtrsEnd:
RaptorPen_SubLevel1_RoomDataPtrs:
if !ROMVer&(!JP_U2) != $00
	db "RaptorPen_SubLevel1_RoomDataPtrs_JP_U2.rnc"
else
	db "RaptorPen_SubLevel1_RoomDataPtrs_JP_U1.rnc"
endif
RaptorPen_SubLevel1_RoomDataPtrsEnd:
DATA_A6FD27:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A6FD27_JP_U2.rnc"
else
	db "DATA_A6FD27_JP_U1.rnc"
endif
DATA_A6FD27End:
DATA_A6FE11:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A6FE11_JP_U2.rnc"
else
	db "DATA_A6FE11_JP_U1.rnc"
endif
DATA_A6FE11End:
DATA_A6FF8C:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A6FF8C_JP_U2.rnc"
else
	db "DATA_A6FF8C_JP_U1.rnc"
endif
DATA_A6FF8CEnd:
RaptorPen_EntryLevel_RoomDataPtrs:
	db "RaptorPen_EntryLevel_RoomDataPtrs.rnc"
RaptorPen_EntryLevel_RoomDataPtrsEnd:
RaptorPen_EntryLevel_MapLayout:
if !ROMVer&(!JP_U2) != $00
	db "RaptorPen_EntryLevel_MapLayout_JP_U2.rnc"
else
	db "RaptorPen_EntryLevel_MapLayout_JP_U1.rnc"
endif
RaptorPen_EntryLevel_MapLayoutEnd:
BeachUtilityShed_SubLevel_MapLayout:
if !ROMVer&(!JP_U2) != $00
	db "BeachUtilityShed_SubLevel_MapLayout_JP_U2.rnc"
else
	db "BeachUtilityShed_SubLevel_MapLayout_JP_U1.rnc"
endif
BeachUtilityShed_SubLevel_MapLayoutEnd:
DATA_A8FF26:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A8FF26_JP_U2.rnc"
else
	db "DATA_A8FF26_JP_U1.rnc"
endif
DATA_A8FF26End:
RaptorPen_SubLevel2_MapLayout:
if !ROMVer&(!JP_U2) != $00
	db "RaptorPen_SubLevel2_MapLayout_JP_U2.rnc"
else
	db "RaptorPen_SubLevel2_MapLayout_JP_U1.rnc"
endif
RaptorPen_SubLevel2_MapLayoutEnd:
NublarUtilityShed_SubLevel_MapLayout:
if !ROMVer&(!JP_U2) != $00
	db "NublarUtilityShed_SubLevel_MapLayout_JP_U2.rnc"
else
	db "NublarUtilityShed_SubLevel_MapLayout_JP_U1.rnc"
endif
NublarUtilityShed_SubLevel_MapLayoutEnd:
BeachUtilityShed_GroundLevel_MapLayout:
	db "BeachUtilityShed_GroundLevel_MapLayout.rnc"
BeachUtilityShed_GroundLevel_MapLayoutEnd:
RaptorNest_MapLayout:
if !ROMVer&(!JP_U2) != $00
	db "RaptorNest_MapLayout_JP_U2.rnc"
else
	db "RaptorNest_MapLayout_JP_U1.rnc"
endif
RaptorNest_MapLayoutEnd:
SecretLevel_RoomDataPtrs:
	db "SecretLevel_RoomDataPtrs.rnc"
SecretLevel_RoomDataPtrsEnd:
RaptorPen_GroundLevel_Entities:
	db "RaptorPen_GroundLevel_Entities.rnc"
RaptorPen_GroundLevel_EntitiesEnd:
RaptorPen_UpperLevel_MapLayout:
if !ROMVer&(!JP_U2) != $00
	db "RaptorPen_UpperLevel_MapLayout_JP_U2.rnc"
else
	db "RaptorPen_UpperLevel_MapLayout_JP_U1.rnc"
endif
RaptorPen_UpperLevel_MapLayoutEnd:
RaptorPen_EntryLevel_Entities:
if !ROMVer&(!JP_U2) != $00
	db "RaptorPen_EntryLevel_Entities_JP_U2.rnc"
else
	db "RaptorPen_EntryLevel_Entities_JP_U1.rnc"
endif
RaptorPen_EntryLevel_EntitiesEnd:
VisitorCenter_RoofLevel_RoomDataPtrs:
	db "VisitorCenter_RoofLevel_RoomDataPtrs.rnc"
VisitorCenter_RoofLevel_RoomDataPtrsEnd:
VisitorCenter_RoofLevel_MapLayout:
	db "VisitorCenter_RoofLevel_MapLayout.rnc"
VisitorCenter_RoofLevel_MapLayoutEnd:
SecretLevel_Entities:
	db "SecretLevel_Entities.rnc"
SecretLevel_EntitiesEnd:
SecretLevel_MapLayout:
	db "SecretLevel_MapLayout.rnc"
SecretLevel_MapLayoutEnd:
Ship_SubLevel1_MapLayout:
	db "Ship_SubLevel1_MapLayout.rnc"
Ship_SubLevel1_MapLayoutEnd:
Ship_EntryLevel_MapLayout:
	db "Ship_EntryLevel_MapLayout.rnc"
Ship_EntryLevel_MapLayoutEnd:
Ship_SubLevel3_RoomDataPtrs:
if !ROMVer&(!JP_U2) != $00
	db "Ship_SubLevel3_RoomDataPtrs_JP_U2.rnc"
else
	db "Ship_SubLevel3_RoomDataPtrs_JP_U1.rnc"
endif
Ship_SubLevel3_RoomDataPtrsEnd:
Ship_SubLevel4_RoomDataPtrs:
	db "Ship_SubLevel4_RoomDataPtrs.rnc"
Ship_SubLevel4_RoomDataPtrsEnd:
Ship_SubLevel1_RoomDataPtrs:
	db "Ship_SubLevel1_RoomDataPtrs.rnc"
Ship_SubLevel1_RoomDataPtrsEnd:
NorthUtilityShed_SubLevel_MapLayout:
	db "NorthUtilityShed_SubLevel_MapLayout.rnc"
NorthUtilityShed_SubLevel_MapLayoutEnd:
BeachUtilityShed_SubLevel_RoomDataPtrs:
	db "BeachUtilityShed_SubLevel_RoomDataPtrs.rnc"
BeachUtilityShed_SubLevel_RoomDataPtrsEnd:
Ship_SubLevel4_MapLayout:
	db "Ship_SubLevel4_MapLayout.rnc"
Ship_SubLevel4_MapLayoutEnd:
VisitorCenter_SubLevel_RoomDataPtrs:
	db "VisitorCenter_SubLevel_RoomDataPtrs.rnc"
VisitorCenter_SubLevel_RoomDataPtrsEnd:
NublarUtilityShed_GroundLevel_MapLayout:
	db "NublarUtilityShed_GroundLevel_MapLayout.rnc"
NublarUtilityShed_GroundLevel_MapLayoutEnd:
VisitorCenter_Floor1_MapLayout:
	db "VisitorCenter_Floor1_MapLayout.rnc"
VisitorCenter_Floor1_MapLayoutEnd:
VisitorCenter_RoofLevel_Entities:
	db "VisitorCenter_RoofLevel_Entities.rnc"
VisitorCenter_RoofLevel_EntitiesEnd:

;--------------------------------------------------------------------

DATA_A68000:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A68000_JP_U2.rnc"
else
	db "DATA_A68000_JP_U1.rnc"
endif
DATA_A68000End:
DATA_A68286:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A68286_JP_U2.rnc"
else
	db "DATA_A68286_JP_U1.rnc"
endif
DATA_A68286End:
DATA_A682AE:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A682AE_JP_U2.rnc"
else
	db "DATA_A682AE_JP_U1.rnc"
endif
DATA_A682AEEnd:
DATA_A6C462:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A6C462_JP_U2.rnc"
else
	db "DATA_A6C462_JP_U1.rnc"
endif
DATA_A6C462End:
DATA_A6C550:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A6C550_JP_U2.rnc"
else
	db "DATA_A6C550_JP_U1.rnc"
endif
DATA_A6C550End:
DATA_A6C934:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A6C934_JP_U2.rnc"
else
	db "DATA_A6C934_JP_U1.rnc"
endif
DATA_A6C934End:
DATA_A6C954:
if !ROMVer&(!JP_U2) != $00
	db "DATA_A6C954_JP_U2.rnc"
else
	db "DATA_A6C954_JP_U1.rnc"
endif
DATA_A6C954End:

;--------------------------------------------------------------------

RefridgeratorWall_Left:
	db "RefridgeratorWall_Left.bin"
RefridgeratorWall_LeftEnd:
RefridgeratorWall_Right:
	db "RefridgeratorWall_Right.bin"
RefridgeratorWall_RightEnd:
RaptorPenWindowFerns_Left:
	db "RaptorPenWindowFerns_Left.bin"
RaptorPenWindowFerns_LeftEnd:
RaptorPenWindowFerns_Right:
	db "RaptorPenWindowFerns_Right.bin"
RaptorPenWindowFerns_RightEnd:
RaptorPenWindowPalmTrees_Left:
	db "RaptorPenWindowPalmTrees_Left.bin"
RaptorPenWindowPalmTrees_LeftEnd:
RaptorPenWindowPalmTrees_Right:
	db "RaptorPenWindowPalmTrees_Right.bin"
RaptorPenWindowPalmTrees_RightEnd:
RaptorPrepareLunge_Left_Battery:
	db "RaptorPrepareLunge_Left_Battery.bin"
RaptorPrepareLunge_Left_BatteryEnd:
RaptorPrepareLunge_Right_NerveGasBomb:
	db "RaptorPrepareLunge_Right_NerveGasBomb.bin"
RaptorPrepareLunge_Right_NerveGasBombEnd:
RaptorLunge1:
	db "RaptorLunge1.bin"
RaptorLunge1End:
RaptorLunge2_Left_RocketLauncher:
	db "RaptorLunge2_Left_RocketLauncher.bin"
RaptorLunge2_Left_RocketLauncherEnd:
RaptorLunge2_Right_BolasSnareRifle:
	db "RaptorLunge2_Right_BolasSnareRifle.bin"
RaptorLunge2_Right_BolasSnareRifleEnd:
RaptorLunge3_Left_Shotgun:
	db "RaptorLunge3_Left_Shotgun.bin"
RaptorLunge3_Left_ShotgunEnd:
RaptorLunge3_Right_TranquilizerGun:
	db "RaptorLunge3_Right_TranquilizerGun.bin"
RaptorLunge3_Right_TranquilizerGunEnd:
GunSmoke:
	db "GunSmoke.bin"
GunSmokeEnd:
GasGrenadeSmoke:
	db "GasGrenadeSmoke.bin"
GasGrenadeSmokeEnd:
ShotgunBulletAndBolasSnareRifleBall:
	db "ShotgunBulletAndBolasSnareRifleBall.bin"
ShotgunBulletAndBolasSnareRifleBallEnd:
DartAndRocket:
	db "DartAndRocket.bin"
DartAndRocketEnd:
IdleDilophosaur:
	db "IdleDilophosaur.bin"
IdleDilophosaurEnd:
DilophosaurSpitting1:
	db "DilophosaurSpitting1.bin"
DilophosaurSpitting1End:
DilophosaurSpitting2:
	db "DilophosaurSpitting2.bin"
DilophosaurSpitting2End:
DilophosaurSpitting3:
	db "DilophosaurSpitting3.bin"
DilophosaurSpitting3End:
DilophosaurSpitting4:
	db "DilophosaurSpitting4.bin"
DilophosaurSpitting4End:
DilophosaurSpitting5:
	db "DilophosaurSpitting5.bin"
DilophosaurSpitting5End:
DilophosaurExploding:
	db "DilophosaurExploding.bin"
DilophosaurExplodingEnd:
DilophosaurDying:
	db "DilophosaurDying.bin"
DilophosaurDyingEnd:
ComputerTerminal_Left:
	db "ComputerTerminal_Left.bin"
ComputerTerminal_LeftEnd:
ComputerTerminal_Right:
	db "ComputerTerminal_Right.bin"
ComputerTerminal_RightEnd:
WoodBox_Front_StovePot:
	db "WoodBox_Front_StovePot.bin"
WoodBox_Front_StovePotEnd:
WoodBox_Side_MiniFridge_Side:
	db "WoodBox_Side_MiniFridge_Side.bin"
WoodBox_Side_MiniFridge_SideEnd:
LabWall_RedDNADisplay:
	db "LabWall_RedDNADisplay.bin"
LabWall_RedDNADisplayEnd:
LabWall_Light:
	db "LabWall_Light.bin"
LabWall_LightEnd:
LabWall_Pillar:
	db "LabWall_Pillar.bin"
LabWall_PillarEnd:
StoveFront:
	db "StoveFront.bin"
StoveFrontEnd:
DarkMetalWall1:
	db "DarkMetalWall1.bin"
DarkMetalWall1End:
DarkMetalWall_Pillar:
	db "DarkMetalWall_Pillar.bin"
DarkMetalWall_PillarEnd:
ShipWall_LeftPillar:
	db "ShipWall_LeftPillar.bin"
ShipWall_LeftPillarEnd:
ShipWall_Light:
	db "ShipWall_Light.bin"
ShipWall_LightEnd:
ShipWall_RightPillar1:
	db "ShipWall_RightPillar1.bin"
ShipWall_RightPillar1End:
ShipWall:
	db "ShipWall.bin"
ShipWallEnd:
ShipWall_Window:
	db "ShipWall_Window.bin"
ShipWall_WindowEnd:
ShipWall_Pipes:
	db "ShipWall_Pipes.bin"
ShipWall_PipesEnd:
DarkShipWall1:
	db "DarkShipWall1.bin"
DarkShipWall1End:
ShipWall_LifePreserver_Left:
	db "ShipWall_LifePreserver_Left.bin"
ShipWall_LifePreserver_LeftEnd:
ShipWall_LifePreserver_Right:
	db "ShipWall_LifePreserver_Right.bin"
ShipWall_LifePreserver_RightEnd:
ShipWall_RightPillar2:
	db "ShipWall_RightPillar2.bin"
ShipWall_RightPillar2End:
ShipWall_DoublePillar:
	db "ShipWall_DoublePillar.bin"
ShipWall_DoublePillarEnd:
DarkMetalWall2:
	db "DarkMetalWall2.bin"
DarkMetalWall2End:
MetalWall_Grate:
	db "MetalWall_Grate.bin"
MetalWall_GrateEnd:
MetalWall_StripedBar:
	db "MetalWall_StripedBar.bin"
MetalWall_StripedBarEnd:
Generator_PowerOff:
	db "Generator_PowerOff.bin"
Generator_PowerOffEnd:
Generator_PowerOn:
	db "Generator_PowerOn.bin"
Generator_PowerOnEnd:
MetalWall_LargeRivets:
	db "MetalWall_LargeRivets.bin"
MetalWall_LargeRivetsEnd:
MetalWall_Switch:
	db "MetalWall_Switch.bin"
MetalWall_SwitchEnd:
MetalWall_Light:
	db "MetalWall_Light.bin"
MetalWall_LightEnd:
MetalWall_RightPillar:
	db "MetalWall_RightPillar.bin"
MetalWall_RightPillarEnd:
MetalWall_DoublePillar:
	db "MetalWall_DoublePillar.bin"
MetalWall_DoublePillarEnd:
VisitorCenterWall_CautionSign_Left:
	db "VisitorCenterWall_CautionSign_Left.bin"
VisitorCenterWall_CautionSign_LeftEnd:
VisitorCenterWall_CautionSign_Right:
	db "VisitorCenterWall_CautionSign_Right.bin"
VisitorCenterWall_CautionSign_RightEnd:
VisitorCenterWall_BiohazardSign_Left:
	db "VisitorCenterWall_BiohazardSign_Left.bin"
VisitorCenterWall_BiohazardSign_LeftEnd:
VisitorCenterWall_BiohazardSign_Right:
	db "VisitorCenterWall_BiohazardSign_Right.bin"
VisitorCenterWall_BiohazardSign_RightEnd:
VisitorCenterWall_ProjectSign_Left:
	db "VisitorCenterWall_ProjectSign_Left.bin"
VisitorCenterWall_ProjectSign_LeftEnd:
VisitorCenterWall_ProjectSign_Right:
	db "VisitorCenterWall_ProjectSign_Right.bin"
VisitorCenterWall_ProjectSign_RightEnd:
VisitorCenterWall_Chalkboard_Left:
	db "VisitorCenterWall_Chalkboard_Left.bin"
VisitorCenterWall_Chalkboard_LeftEnd:
VisitorCenterWall_Chalkboard_Right:
	db "VisitorCenterWall_Chalkboard_Right.bin"
VisitorCenterWall_Chalkboard_RightEnd:
VisitorCenterWall1:
	db "VisitorCenterWall1.bin"
VisitorCenterWall1End:
VisitorCenterWall_Pillar:
	db "VisitorCenterWall_Pillar.bin"
VisitorCenterWall_PillarEnd:
VisitorCenterWall2:
	db "VisitorCenterWall2.bin"
VisitorCenterWall2End:
VisitorCenterWall_DoublePillar:
	db "VisitorCenterWall_DoublePillar.bin"
VisitorCenterWall_DoublePillarEnd:
VisitorCenterWall_Fan_Frame1:
	db "VisitorCenterWall_Fan_Frame1.bin"
VisitorCenterWall_Fan_Frame1End:
VisitorCenterWall_Fan_Frame2:
	db "VisitorCenterWall_Fan_Frame2.bin"
VisitorCenterWall_Fan_Frame2End:
VisitorCenterWall_Fan_Frame3:
	db "VisitorCenterWall_Fan_Frame3.bin"
VisitorCenterWall_Fan_Frame3End:
VisitorCenterWall_AirVent:
	db "VisitorCenterWall_AirVent.bin"
VisitorCenterWall_AirVentEnd:
VisitorCenterWall_ComputerTerminal_Left:
	db "VisitorCenterWall_ComputerTerminal_Left.bin"
VisitorCenterWall_ComputerTerminal_LeftEnd:
VisitorCenterWall_ComputerTerminal_Right:
	db "VisitorCenterWall_ComputerTerminal_Right.bin"
VisitorCenterWall_ComputerTerminal_RightEnd:
VisitorCenterWall_ComputerTerminalKeypad_Right:
	db "VisitorCenterWall_ComputerTerminalKeypad_Right.bin"
VisitorCenterWall_ComputerTerminalKeypad_RightEnd:
KitchenWall_MiddlePillar1:
	db "KitchenWall_MiddlePillar1.bin"
KitchenWall_MiddlePillar1End:
KitchenWall_MiddlePillar2:
	db "KitchenWall_MiddlePillar2.bin"
KitchenWall_MiddlePillar2End:
KitchenWall_MiddlePillar3:
	db "KitchenWall_MiddlePillar3.bin"
KitchenWall_MiddlePillar3End:
KitchenWall_MiddlePillar4:
	db "KitchenWall_MiddlePillar4.bin"
KitchenWall_MiddlePillar4End:
KitchenWall_Fan_Frame1:
	db "KitchenWall_Fan_Frame1.bin"
KitchenWall_Fan_Frame1End:
KitchenWall_Fan_Frame2:
	db "KitchenWall_Fan_Frame2.bin"
KitchenWall_Fan_Frame2End:
KitchenWall_Fan_Frame3:
	db "KitchenWall_Fan_Frame3.bin"
KitchenWall_Fan_Frame3End:
KitchenWall:
	db "KitchenWall.bin"
KitchenWallEnd:
KitchenWall_DoublePillar:
	db "KitchenWall_DoublePillar.bin"
KitchenWall_DoublePillarEnd:
DarkShipWall2:
	db "DarkShipWall2.bin"
DarkShipWall2End:
StoneWall_LeftPillar:
	db "StoneWall_LeftPillar.bin"
StoneWall_LeftPillarEnd:
StoneWall_RightPillar:
	db "StoneWall_RightPillar.bin"
StoneWall_RightPillarEnd:
StoneWall_Left:
	db "StoneWall_Left.bin"
StoneWall_LeftEnd:
StoneWall_Right:
	db "StoneWall_Right.bin"
StoneWall_RightEnd:
PurpleGate:
	db "PurpleGate.bin"
PurpleGateEnd:
JurassicParkLogo_Left:
	db "JurassicParkLogo_Left.bin"
JurassicParkLogo_LeftEnd:
JurassicParkLogo_Middle:
	db "JurassicParkLogo_Middle.bin"
JurassicParkLogo_MiddleEnd:
JurassicParkLogo_Right:
	db "JurassicParkLogo_Right.bin"
JurassicParkLogo_RightEnd:
DarkStoneWall_Left:
	db "DarkStoneWall_Left.bin"
DarkStoneWall_LeftEnd:
DarkStoneWall_Right:
	db "DarkStoneWall_Right.bin"
DarkStoneWall_RightEnd:
StoneWall_LightLeft:
	db "StoneWall_LightLeft.bin"
StoneWall_LightLeftEnd:
StoneWall_LightMiddle:
	db "StoneWall_LightMiddle.bin"
StoneWall_LightMiddleEnd:
StoneWall_LightRight:
	db "StoneWall_LightRight.bin"
StoneWall_LightRightEnd:
DarkElevatorWall:
	db "DarkElevatorWall.bin"
DarkElevatorWallEnd:
ElevatorWall_Speaker:
	db "ElevatorWall_Speaker.bin"
ElevatorWall_SpeakerEnd:
ElevatorWall_Light:
	db "ElevatorWall_Light.bin"
ElevatorWall_LightEnd:
LabWall_MediumMonitor_Left:
	db "LabWall_MediumMonitor_Left.bin"
LabWall_MediumMonitor_LeftEnd:
LabWall_MediumMonitor_Right:
	db "LabWall_MediumMonitor_Right.bin"
LabWall_MediumMonitor_RightEnd:
LabWall_SmallMonitors_Left:
	db "LabWall_SmallMonitors_Left.bin"
LabWall_SmallMonitors_LeftEnd:
LabWall_SmallMonitors_Right:
	db "LabWall_SmallMonitors_Right.bin"
LabWall_SmallMonitors_RightEnd:
VisitorCenterDoor_Inner:
	db "VisitorCenterDoor_Inner.bin"
VisitorCenterDoor_InnerEnd:
VisitorCenterDoor_Outer:
	db "VisitorCenterDoor_Outer.bin"
VisitorCenterDoor_OuterEnd:
ShedDoor_Inner:
	db "ShedDoor_Inner.bin"
ShedDoor_InnerEnd:
ShedDoor_Outer:
	db "ShedDoor_Outer.bin"
ShedDoor_OuterEnd:
ElevatorDoor_Inner:
	db "ElevatorDoor_Inner.bin"
ElevatorDoor_InnerEnd:
ElevatorDoor_Outer:
	db "ElevatorDoor_Outer.bin"
ElevatorDoor_OuterEnd:
ShipDoor_Inner:
	db "ShipDoor_Inner.bin"
ShipDoor_InnerEnd:
ShipDoor_Outer:
	db "ShipDoor_Outer.bin"
ShipDoor_OuterEnd:
KitchenDoor_Inner:
	db "KitchenDoor_Inner.bin"
KitchenDoor_InnerEnd:
KitchenDoor_Outer:
	db "KitchenDoor_Outer.bin"
KitchenDoor_OuterEnd:
PottedPlants:
	db "PottedPlants.bin"
PottedPlantsEnd:
BunsenBurner:
	db "BunsenBurner.bin"
BunsenBurnerEnd:
Beakers:
	db "Beakers.bin"
BeakersEnd:
TestTubeRackAndStool:
	db "TestTubeRackAndStool.bin"
TestTubeRackAndStoolEnd:
TableChairAndBed:
	db "TableChairAndBed.bin"
TableChairAndBedEnd:
TinyExplosionCeilingLightAndLightSpots:
	db "TinyExplosionCeilingLightAndLightSpots.bin"
TinyExplosionCeilingLightAndLightSpotsEnd:
FirstAidKitAndStrangeMachine:
	db "FirstAidKitAndStrangeMachine.bin"
FirstAidKitAndStrangeMachineEnd:
TableLampAndExtraLife:
	db "TableLampAndExtraLife.bin"
TableLampAndExtraLifeEnd:
SideOfRefridgerator:
	db "SideOfRefridgerator.bin"
SideOfRefridgeratorEnd:
GreenPotAndRubberPlant:
	db "GreenPotAndRubberPlant.bin"
GreenPotAndRubberPlantEnd:
Incubator:
	db "Incubator.bin"
IncubatorEnd:
PottedPalmTree:
	db "PottedPalmTree.bin"
PottedPalmTreeEnd:
TriplePottedPalmTree:
	db "TriplePottedPalmTree.bin"
TriplePottedPalmTreeEnd:
IncubatorCounterEndAndSide:
	db "IncubatorCounterEndAndSide.bin"
IncubatorCounterEndAndSideEnd:
IncubatorCounterMiddleAndMiniFridgeFront:
	db "IncubatorCounterMiddleAndMiniFridgeFront.bin"
IncubatorCounterMiddleAndMiniFridgeFrontEnd:
Chain:
	db "Chain.bin"
ChainEnd:
FridgeFront:
	db "FridgeFront.bin"
FridgeFrontEnd:
RaptorExploding:
	db "RaptorExploding.bin"
RaptorExplodingEnd:
BigExplosionCloud:
	db "BigExplosionCloud.bin"
BigExplosionCloudEnd:
MediumExplosionCloud:
	db "MediumExplosionCloud.bin"
MediumExplosionCloudEnd:
SmallExplosionCloud:
	db "SmallExplosionCloud.bin"
SmallExplosionCloudEnd:
RaptorWalk_Away1:
	db "RaptorWalk_Away1.bin"
RaptorWalk_Away1End:
RaptorWalk_Away2:
	db "RaptorWalk_Away2.bin"
RaptorWalk_Away2End:
RaptorWalk_Away3:
	db "RaptorWalk_Away3.bin"
RaptorWalk_Away3End:
RaptorWalk_Away4:
	db "RaptorWalk_Away4.bin"
RaptorWalk_Away4End:
RaptorWalk_Away5:
	db "RaptorWalk_Away5.bin"
RaptorWalk_Away5End:
RaptorWalk_Away6:
	db "RaptorWalk_Away6.bin"
RaptorWalk_Away6End:
RaptorWalk_Towards1:
	db "RaptorWalk_Towards1.bin"
RaptorWalk_Towards1End:
RaptorWalk_Towards2:
	db "RaptorWalk_Towards2.bin"
RaptorWalk_Towards2End:
RaptorWalk_Towards3:
	db "RaptorWalk_Towards3.bin"
RaptorWalk_Towards3End:
RaptorWalk_Towards4:
	db "RaptorWalk_Towards4.bin"
RaptorWalk_Towards4End:
RaptorWalk_Towards5:
	db "RaptorWalk_Towards5.bin"
RaptorWalk_Towards5End:
RaptorWalk_Towards6:
	db "RaptorWalk_Towards6.bin"
RaptorWalk_Towards6End:
RaptorWalk_BodySide1:
	db "RaptorWalk_BodySide1.bin"
RaptorWalk_BodySide1End:
RaptorWalk_BodySide2:
	db "RaptorWalk_BodySide2.bin"
RaptorWalk_BodySide2End:
RaptorWalk_BodySide3:
	db "RaptorWalk_BodySide3.bin"
RaptorWalk_BodySide3End:
RaptorWalk_BodySide4:
	db "RaptorWalk_BodySide4.bin"
RaptorWalk_BodySide4End:
RaptorWalk_BodySide5:
	db "RaptorWalk_BodySide5.bin"
RaptorWalk_BodySide5End:
RaptorWalk_BodySide6:
	db "RaptorWalk_BodySide6.bin"
RaptorWalk_BodySide6End:
RaptorWalk_TailSide1:
	db "RaptorWalk_TailSide1.bin"
RaptorWalk_TailSide1End:
RaptorWalk_TailSide2:
	db "RaptorWalk_TailSide2.bin"
RaptorWalk_TailSide2End:
RaptorWalk_TailSide3:
	db "RaptorWalk_TailSide3.bin"
RaptorWalk_TailSide3End:
RaptorDying_Away1:
	db "RaptorDying_Away1.bin"
RaptorDying_Away1End:
RaptorDying_AwayBody2:
	db "RaptorDying_AwayBody2.bin"
RaptorDying_AwayBody2End:
RaptorDying_AwayTail2:
	db "RaptorDying_AwayTail2.bin"
RaptorDying_AwayTail2End:
DilophosaurSpit:
	db "DilophosaurSpit.bin"
DilophosaurSpitEnd:
RaptorDying_Towards1:
	db "RaptorDying_Towards1.bin"
RaptorDying_Towards1End:
RaptorDying2_TowardsBody2:
	db "RaptorDying2_TowardsBody2.bin"
RaptorDying2_TowardsBody2End:
RaptorDying2_TowardsTail2:
	db "RaptorDying2_TowardsTail2.bin"
RaptorDying2_TowardsTail2End:
RaptorDying3_Head_IDCard:
	db "RaptorDying3_Head_IDCard.bin"
RaptorDying3_Head_IDCardEnd:
RaptorDying3_Body_Drumstick:
	db "RaptorDying3_Body_Drumstick.bin"
RaptorDying3_Body_DrumstickEnd:
RaptorDying3_Tail_GasGrenade:
	db "RaptorDying3_Tail_GasGrenade.bin"
RaptorDying3_Tail_GasGrenadeEnd:
GasGrenadeProjectileAndBlankSpace:
	db "GasGrenadeProjectileAndBlankSpace.bin"
GasGrenadeProjectileAndBlankSpaceEnd:
RaptorDying4_HeadAndLegs_Egg:
	db "RaptorDying4_HeadAndLegs_Egg.bin"
RaptorDying4_HeadAndLegs_EggEnd:
RaptorDying4_Body_SideOfMiniFridge:
	db "RaptorDying4_Body_SideOfMiniFridge.bin"
RaptorDying4_Body_SideOfMiniFridgeEnd:
RaptorDying_SideBody:
	db "RaptorDying_SideBody.bin"
RaptorDying_SideBodyEnd:
RaptorDying_SideTail_Computer:
	db "RaptorDying_SideTail_Computer.bin"
RaptorDying_SideTail_ComputerEnd:
ExitSign_BigLetterD:
	db "ExitSign_BigLetterD.bin"
ExitSign_BigLetterDEnd:
Darkness:
	db "Darkness.bin"
DarknessEnd:

;--------------------------------------------------------------------

PAL_TyrannosaurusRex:
	db "TyrannosaurusRex.bin"
PAL_TyrannosaurusRexEnd:
PAL_Velociraptor:
	db "Velociraptor.bin"
PAL_VelociraptorEnd:
PAL_Triceratops:
	db "Triceratops.bin"
PAL_TriceratopsEnd:
PAL_Player:
	db "Player.bin"
PAL_PlayerEnd:
DATA_80A29A:
	db "DATA_80A29A.bin"
DATA_80A29AEnd:
PAL_ElectrifiedPlayer:
	db "ElectrifiedPlayer.bin"
PAL_ElectrifiedPlayerEnd:
PAL_AnimatedFlowingWater:
	db "AnimatedFlowingWater.bin"
PAL_AnimatedFlowingWaterEnd:
PAL_DennisNedryPortrait:
	db "DennisNedryPortrait.bin"
PAL_DennisNedryPortraitEnd:
PAL_AlexMurphyPortrait:
	db "AlexMurphyPortrait.bin"
PAL_AlexMurphyPortraitEnd:
PAL_EllieSattlerPortrait:
	db "EllieSattlerPortrait.bin"
PAL_EllieSattlerPortraitEnd:
PAL_JohnHammondPortrait:
	db "JohnHammondPortrait.bin"
PAL_JohnHammondPortraitEnd:
PAL_IanMalcolmPortrait:
	db "IanMalcolmPortrait.bin"
PAL_IanMalcolmPortraitEnd:
PAL_RobertMuldoonPortrait:
	db "RobertMuldoonPortrait.bin"
PAL_RobertMuldoonPortraitEnd:
PAL_TimMurphyPortrait:
	db "TimMurphyPortrait.bin"
PAL_TimMurphyPortraitEnd:
PAL_MrDNA:
	db "MrDNA.bin"
PAL_MrDNAEnd:
DATA_81D0B9:
	db "DATA_81D0B9.bin"
DATA_81D0B9End:
PAL_MrDNAMessageBox:
	db "MrDNAMessageBox.bin"
PAL_MrDNAMessageBoxEnd:
PAL_RegularMessageBox:
	db "RegularMessageBox.bin"
PAL_RegularMessageBoxEnd:
DATA_81D1F9:
	db "DATA_81D1F9.bin"
DATA_81D1F9End:

;--------------------------------------------------------------------

PAL_ExteriorAreas:
	db "ExteriorAreas.bin"
PAL_ExteriorAreasEnd:
PAL_Mode7Intro:
	db "Mode7Intro.bin"
PAL_Mode7IntroEnd:
PAL_GameOverScreen:
	db "GameOverScreen.bin"
PAL_GameOverScreenEnd:
PAL_TitleScreen:
	db "TitleScreen.bin"
PAL_TitleScreenEnd:
PAL_HighScoreScreen:
	db "HighScoreScreen.bin"
PAL_HighScoreScreenEnd:
PAL_OceanLogo:
	db "OceanLogo.bin"
PAL_OceanLogoEnd:
PAL_InteriorAreas:
	db "InteriorAreas.bin"
PAL_InteriorAreasEnd:
PAL_ComputerTerminal:
	db "ComputerTerminal.bin"
PAL_ComputerTerminalEnd:

;--------------------------------------------------------------------

if !ROMVer&(!JP_U2) != $00
DATA_80FEE5:
	db "DATA_80FEE5_JP_U2.bin"
DATA_80FEE5End:
else
DATA_80FA14:
	db "DATA_80FA14_JP_U1.bin"
DATA_80FA14End:
DATA_80FEAF:
	db "DATA_80FEAF_JP_U1.bin"
DATA_80FEAFEnd:
endif
DATA_81FDE7:
if !ROMVer&(!JP_U2) != $00
	db "DATA_81FDE7_JP_U2.bin"
else
	db "DATA_81FDE7_JP_U1.bin"
endif
DATA_81FDE7End:
DATA_82FD6A:
if !ROMVer&(!JP_U2) != $00
	db "DATA_82FD6A_JP_U2.bin"
else
	db "DATA_82FD6A_JP_U1.bin"
endif
DATA_82FD6AEnd:
DATA_83F4F2:
if !ROMVer&(!JP_U2) != $00
	db "DATA_83F4F2_JP_U2.bin"
else
	db "DATA_83F4F2_JP_U1.bin"
endif
DATA_83F4F2End:
DATA_8CFA84:
if !ROMVer&(!JP_U2) != $00
	db "DATA_8CFA84_JP_U2.bin"
else
	db "DATA_8CFA84_JP_U1.bin"
endif
DATA_8CFA84End:
DATA_8EFA66:
if !ROMVer&(!JP_U2) != $00
	db "DATA_8EFA66_JP_U2.bin"
else
	db "DATA_8EFA66_JP_U1.bin"
endif
DATA_8EFA66End:
DATA_8FFB58:
if !ROMVer&(!JP_U2) != $00
	db "DATA_8FFB58_JP_U2.bin"
else
	db "DATA_8FFB58_JP_U1.bin"
endif
DATA_8FFB58End:
DATA_91F5DC:
if !ROMVer&(!JP_U2) != $00
	db "DATA_91F5DC_JP_U2.bin"
else
	db "DATA_91F5DC_JP_U1.bin"
endif
DATA_91F5DCEnd:
DATA_92FC00:
if !ROMVer&(!JP_U2) != $00
	db "DATA_92FC00_JP_U2.bin"
else
	db "DATA_92FC00_JP_U1.bin"
endif
DATA_92FC00End:
DATA_93FE00:
if !ROMVer&(!JP_U2) != $00
	db "DATA_93FE00_JP_U2.bin"
else
	db "DATA_93FE00_JP_U1.bin"
endif
DATA_93FE00End:
DATA_94FE00:
if !ROMVer&(!JP_U2) != $00
	db "DATA_94FE00_JP_U2.bin"
else
	db "DATA_94FE00_JP_U1.bin"
endif
DATA_94FE00End:
DATA_95FB00:
if !ROMVer&(!JP_U2) != $00
	db "DATA_95FB00_JP_U2.bin"
else
	db "DATA_95FB00_JP_U1.bin"
endif
DATA_95FB00End:
DATA_96FE00:
if !ROMVer&(!JP_U2) != $00
	db "DATA_96FE00_JP_U2.bin"
else
	db "DATA_96FE00_JP_U1.bin"
endif
DATA_96FE00End:
DATA_97E880:
if !ROMVer&(!JP_U2) != $00
	db "DATA_97E880_JP_U2.bin"
else
	db "DATA_97E880_JP_U1.bin"
endif
DATA_97E880End:
DATA_98D580:
if !ROMVer&(!JP_U2) != $00
	db "DATA_98D580_JP_U2.bin"
else
	db "DATA_98D580_JP_U1.bin"
endif
DATA_98D580End:
DATA_99DA00:
if !ROMVer&(!JP_U2) != $00
	db "DATA_99DA00_JP_U2.bin"
else
	db "DATA_99DA00_JP_U1.bin"
endif
DATA_99DA00End:
DATA_9AF500:
if !ROMVer&(!JP_U2) != $00
	db "DATA_9AF500_JP_U2.bin"
else
	db "DATA_9AF500_JP_U1.bin"
endif
DATA_9AF500End:
DATA_9BF800:
if !ROMVer&(!JP_U2) != $00
	db "DATA_9BF800_JP_U2.bin"
else
	db "DATA_9BF800_JP_U1.bin"
endif
DATA_9BF800End:
DATA_9CF800:
if !ROMVer&(!JP_U2) != $00
	db "DATA_9CF800_JP_U2.bin"
else
	db "DATA_9CF800_JP_U1.bin"
endif
DATA_9CF800End:
DATA_9FE800:
if !ROMVer&(!JP_U2) != $00
	db "DATA_9FE800_JP_U2.bin"
else
	db "DATA_9FE800_JP_U1.bin"
endif
DATA_9FE800End:
DATA_A0FF77:
	db "DATA_A0FF77.bin"
DATA_A0FF77End:
DATA_A1FFB2:
	db "DATA_A1FFB2.bin"
DATA_A1FFB2End:
DATA_A2FFE4:
	db "DATA_A2FFE4.bin"
DATA_A2FFE4End:
DATA_A3FFF0:
	db "DATA_A3FFF0.bin"
DATA_A3FFF0End:
DATA_A4FF3F:
	db "DATA_A4FF3F.bin"
DATA_A4FF3FEnd:
DATA_A5FF4A:
	db "DATA_A5FF4A.bin"
DATA_A5FF4AEnd:
DATA_A6FFC5:
	db "DATA_A6FFC5.bin"
DATA_A6FFC5End:
if !ROMVer&(!JP_U2) != $00
DATA_A7FFDC:
	db "DATA_A7FFDC_JP_U2.bin"
DATA_A7FFDCEnd:
else
DATA_A7FFA7:
	db "DATA_A7FFA7_JP_U1.bin"
DATA_A7FFA7End:
DATA_A8FFD8:
	db "DATA_A8FFD8_JP_U1.bin"
DATA_A8FFD8End:
endif
DATA_A9FF74:
	db "DATA_A9FF74.bin"
DATA_A9FF74End:
DATA_AAFFE2:
	db "DATA_AAFFE2.bin"
DATA_AAFFE2End:
DATA_ABFFF8:
	db "DATA_ABFFF8.bin"
DATA_ABFFF8End:
if !ROMVer&(!JP_U2) != $00
DATA_B4FFF6:
	db "DATA_B4FFF6_JP_U2.bin"
DATA_B4FFF6End:
else
DATA_B4FFD7:
	db "DATA_B4FFD7_JP_U1.bin"
DATA_B4FFD7End:
endif
DATA_B5FEFA:
	db "DATA_B5FEFA.bin"
DATA_B5FEFAEnd:
DATA_B6FF26:
	db "DATA_B6FF26.bin"
DATA_B6FF26End:
DATA_B7FFF5:
	db "DATA_B7FFF5.bin"
DATA_B7FFF5End:
if !ROMVer&(!JP_U2) != $00
DATA_B8FFF9:
	db "DATA_B8FFF9_JP_U2.bin"
DATA_B8FFF9End:
else
DATA_B8FFCA:
	db "DATA_B8FFCA_JP_U1.bin"
DATA_B8FFCAEnd:
endif
DATA_B9FFDE:
if !ROMVer&(!JP_U2) != $00
	db "DATA_B9FFDE_JP_U2.bin"
else
	db "DATA_B9FFDE_JP_U1.bin"
endif
DATA_B9FFDEEnd:
if !ROMVer&(!JP_U2) != $00
DATA_BAFFEF:
	db "DATA_BAFFEF_JP_U2.bin"
DATA_BAFFEFEnd:
else
DATA_BAFFA7:
	db "DATA_BAFFA7_JP_U1.bin"
DATA_BAFFA7End:
endif
DATA_BBFFF2:
if !ROMVer&(!JP_U2) != $00
	db "DATA_BBFFF2_JP_U2.bin"
else
	db "DATA_BBFFF2_JP_U1.bin"
endif
DATA_BBFFF2End:
if !ROMVer&(!JP_U2) != $00
DATA_BCFFE0:
	db "DATA_BCFFE0_JP_U2.bin"
DATA_BCFFE0End:
else
DATA_BCFD59:
	db "DATA_BCFD59_JP_U1.bin"
DATA_BCFD59End:
endif
DATA_BDFE46:
if !ROMVer&(!JP_U2) != $00
	db "DATA_BDFE46_JP_U2.bin"
else
	db "DATA_BDFE46_JP_U1.bin"
endif
DATA_BDFE46End:
DATA_BEFF7E:
if !ROMVer&(!JP_U2) != $00
	db "DATA_BEFF7E_JP_U2.bin"
else
	db "DATA_BEFF7E_JP_U1.bin"
endif
DATA_BEFF7EEnd:
DATA_BFFF54:
if !ROMVer&(!JP_U2) != $00
	db "DATA_BFFF54_JP_U2.bin"
else
	db "DATA_BFFF54_JP_U1.bin"
endif
DATA_BFFF54End:

;--------------------------------------------------------------------

DATA_B48000:
	db "DATA_B48000.bin"
DATA_B48000End:
DATA_B4EFFB:
	db "DATA_B4EFFB.bin"
DATA_B4EFFBEnd:
DATA_B68000:
	db "DATA_B68000.bin"
DATA_B68000End:
DATA_B78000:
	db "DATA_B78000.bin"
DATA_B78000End:
DATA_B88000:
	db "DATA_B88000.bin"
DATA_B88000End:
DATA_B98000:
	db "DATA_B98000.bin"
DATA_B98000End:
DATA_BA8000:
	db "DATA_BA8000.bin"
DATA_BA8000End:
DATA_BB8000:
	db "DATA_BB8000.bin"
DATA_BB8000End:
DATA_BC8000:
	db "DATA_BC8000.bin"
DATA_BC8000End:
DATA_BD8000:
	db "DATA_BD8000.bin"
DATA_BD8000End:
DATA_BE8000:
	db "DATA_BE8000.bin"
DATA_BE8000End:
DATA_BF8000:
	db "DATA_BF8000.bin"
DATA_BF8000End:
DATA_BFD6D8:
	db "DATA_BFD6D8.bin"
DATA_BFD6D8End:

;--------------------------------------------------------------------

SFXBRR_BoneCrunch:
	db "BoneCrunch.brr"
SFXBRR_BoneCrunchEnd:
SFXBRR_WelcomeToJurassicPark:
	db "WelcomeToJurassicPark.brr"
SFXBRR_WelcomeToJurassicParkEnd:
SFXBRR_00:
	db "00.brr"
SFXBRR_00End:
SFXBRR_01:
	db "01.brr"
SFXBRR_01End:
SFXBRR_02:
	db "02.brr"
SFXBRR_02End:
SFXBRR_03:
	db "03.brr"
SFXBRR_03End:
SFXBRR_04:
	db "04.brr"
SFXBRR_04End:
SFXBRR_05:
	db "05.brr"
SFXBRR_05End:
SFXBRR_06:
	db "06.brr"
SFXBRR_06End:
SFXBRR_Alan:
	db "Alan.brr"
SFXBRR_AlanEnd:
SFXBRR_Helicopter:
	db "Helicopter.brr"
SFXBRR_HelicopterEnd:
SFXBRR_WaterSplash:
	db "WaterSplash.brr"
SFXBRR_WaterSplashEnd:
SFXBRR_TRexRoar:
	db "TRexRoar.brr"
SFXBRR_TRexRoarEnd:
SFXBRR_Grant:
	db "Grant.brr"
SFXBRR_GrantEnd:
SFXBRR_MrGrant:
	db "MrGrant.brr"
SFXBRR_MrGrantEnd:
SFXBRR_Unknown:
	db "Unknown.brr"
SFXBRR_UnknownEnd:
SFXBRR_Raptor1:
	db "Raptor1.brr"
SFXBRR_Raptor1End:
SFXBRR_Raptor2:
	db "Raptor2.brr"
SFXBRR_Raptor2End:
SFXBRR_MrDNAChatter1:
	db "MrDNAChatter1.brr"
SFXBRR_MrDNAChatter1End:
SFXBRR_MrDNAChatter2:
	db "MrDNAChatter2.brr"
SFXBRR_MrDNAChatter2End:
SFXBRR_MrDNAChatter3:
	db "MrDNAChatter3.brr"
SFXBRR_MrDNAChatter3End:

;--------------------------------------------------------------------
