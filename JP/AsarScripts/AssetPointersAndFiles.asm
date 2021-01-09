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
	dl UnknownDataPointersStart,(UnknownDataPointersEnd-UnknownDataPointersStart)/$0C
	dl TexturePointersStart,(TexturePointersEnd-TexturePointersStart)/$0C
	dl SPCDataPointersStart,(SPCDataPointersEnd-SPCDataPointersStart)/$0C
	dl SFXBRRPointersStart,(SFXBRRPointersEnd-SFXBRRPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

UncompressedGFXPointersStart:
	dl $81F397,$81F697,Layer3_RadarTiles,Layer3_RadarTilesEnd
	dl $848000,$858000,DATA_848000,DATA_848000End
	dl $858000,$868000,DATA_858000,DATA_858000End
	dl $868000,$878000,DATA_868000,DATA_868000End
	dl $878000,$888000,DATA_878000,DATA_878000End
	dl $8FE358,$8FFB58,DATA_8FE358,DATA_8FE358End
	dl $91A1DC,$91F5DC,DATA_91A1DC,DATA_91A1DCEnd
	dl $928000,$92FC00,DATA_928000,DATA_928000End
	dl $938000,$93FE00,DATA_938000,DATA_938000End
	dl $948000,$94FE00,DATA_948000,DATA_948000End
	dl $958000,$95FB00,DATA_958000,DATA_958000End
	dl $968000,$96FE00,DATA_968000,DATA_968000End
	dl $978000,$979080,Layer3_CattleProdAmmoDisplay,Layer3_CattleProdAmmoDisplayEnd
	dl $979080,$97DA80,DATA_979080,DATA_979080End
	dl $97DA80,$97DC80,DennisNedryPortrait,DennisNedryPortraitEnd
	dl $97DC80,$97DE80,AlexMurphyPortrait,AlexMurphyPortraitEnd
	dl $97DE80,$97E080,EllieSattlerPortrait,EllieSattlerPortraitEnd
	dl $97E080,$97E280,JohnHammondPortrait,JohnHammondPortraitEnd
	dl $97E280,$97E480,IanMalcolmPortrait,IanMalcolmPortraitEnd
	dl $97E480,$97E680,RobertMuldoonPortrait,RobertMuldoonPortraitEnd
	dl $97E680,$97E880,TimMurphyPortrait,TimMurphyPortraitEnd
	dl $988000,$98D580,DATA_988000,DATA_988000End
	dl $998000,$99DA00,DATA_998000,DATA_998000End
	dl $9A8000,$9AF500,DATA_9A8000,DATA_9A8000End
	dl $9B8000,$9BF800,DATA_9B8000,DATA_9B8000End
	dl $9C8000,$9CF800,DATA_9C8000,DATA_9C8000End
	dl $9D8000,$9E8000,DATA_9D8000,DATA_9D8000End
	dl $9E8000,$9F8000,DATA_9E8000,DATA_9E8000End
	dl $9F8000,$9FE800,DATA_9F8000,DATA_9F8000End
UncompressedGFXPointersEnd:

;--------------------------------------------------------------------

CompressedGFXPointersStart:
	dl $81EAD7,$81EC8B,Sprite_FlamesAndShadows,Sprite_FlamesAndShadowsEnd
	dl $81F0A3,$81F397,Layer2_ExteriorAreasGrassTiles,Layer2_ExteriorAreasGrassTilesEnd
	dl $81F7D1,$81FBD7,Layer3_ExteriorAreasStatusBar,Layer3_ExteriorAreasStatusBarEnd
	dl $82B72C,$82BE10,Layer3_MrDNAMessageBoxTiles,Layer3_MrDNAMessageBoxTilesEnd
	dl $83D6F5,$83DD9F,Layer3_DinoEggMessageBox,Layer3_DinoEggMessageBoxEnd
	dl $83ED92,$83F4F2,Layer3_RegularMessageBoxTiles,Layer3_RegularMessageBoxTilesEnd
	dl $8CC44E,$8CC87E,Sprite_Mode7IntroText,Sprite_Mode7IntroTextEnd
	dl $8CC87E,$8CDD86,Mode7_IsleNubular,Mode7_IsleNubularEnd
	dl $8D8000,$8E8E94,BG_TitleScreen,BG_TitleScreenEnd
	dl $8E8E94,$8EFA66,BG_HighScoreScreen,BG_HighScoreScreenEnd
	dl $8F8000,$8F93E2,Sprite_TitleScreen_OpenedMenu,Sprite_TitleScreen_OpenedMenuEnd
	dl $8F93E2,$8FA72C,Sprite_TitleScreen_ClosedMenu,Sprite_TitleScreen_ClosedMenuEnd
	dl $8FA860,$8FC28E,BG_Mode7IntroMountains,BG_Mode7IntroMountainsEnd
	dl $8FC28E,$8FC4C2,Sprite_GameOverScreenNumbers,Sprite_GameOverScreenNumbersEnd
	dl $8FC4C2,$8FD4AA,Sprite_JurassicParkFont,Sprite_JurassicParkFontEnd
	dl $8FD4AA,$8FDFFE,OceanLogo,OceanLogoEnd
	dl $908000,$91A1DC,BG_GameOverScreen,BG_GameOverScreenEnd
	dl $A18C00,$A19DC4,Sprite_InteriorHUD,Sprite_InteriorHUDEnd
	dl $A3F800,$A3FCAC,BG_ComputerTerminal_06,BG_ComputerTerminal_06End
	dl $ADF800,$AE8000,Sprite_AlanGrantHand,Sprite_AlanGrantHandEnd
	dl $AEF800,$AEFE80,Sprite_AlanGrantHand_02,Sprite_AlanGrantHand_02End
	dl $AFF800,$B08000,BG_ComputerTerminal,BG_ComputerTerminalEnd
	dl $B0F800,$B18000,BG_ComputerTerminal_02,BG_ComputerTerminal_02End
	dl $B1F800,$B28000,BG_ComputerTerminal_03,BG_ComputerTerminal_03End
	dl $B2F800,$B38000,BG_ComputerTerminal_04,BG_ComputerTerminal_04End
	dl $B3F800,$B48000,BG_ComputerTerminal_05,BG_ComputerTerminal_05End
CompressedGFXPointersEnd:

;--------------------------------------------------------------------

UnknownDataPointersStart:
	dl $A08000,$A08204,DATA_A08000,DATA_A08000End
	dl $A08204,$A09EAD,DATA_A08204,DATA_A08204End
	dl $A09EAD,$A0A033,DATA_A09EAD,DATA_A09EADEnd
	dl $A0A033,$A0BAA0,DATA_A0A033,DATA_A0A033End
	dl $A0BAA0,$A0BB51,DATA_A0BAA0,DATA_A0BAA0End
	dl $A0BB51,$A0C983,DATA_A0BB51,DATA_A0BB51End
	dl $A0C983,$A0CA42,DATA_A0C983,DATA_A0C983End
	dl $A0CA42,$A0DB6D,DATA_A0CA42,DATA_A0CA42End
	dl $A0DB6D,$A0DCBE,DATA_A0DB6D,DATA_A0DB6DEnd
	dl $A0DCBE,$A0ED7D,DATA_A0DCBE,DATA_A0DCBEEnd
	dl $A0ED7D,$A0EE17,DATA_A0ED7D,DATA_A0ED7DEnd
	dl $A0EE17,$A0FD55,DATA_A0EE17,DATA_A0EE17End
	dl $A0FD55,$A0FDD7,DATA_A0FD55,DATA_A0FD55End
	dl $A0FDD7,$A0FF77,DATA_A0FDD7,DATA_A0FDD7End
	dl $A1C274,$A1CFA4,DATA_A1C274,DATA_A1C274End
	dl $A1CFA4,$A1DC71,DATA_A1CFA4,DATA_A1CFA4End
	dl $A1DC71,$A1EAAC,DATA_A1DC71,DATA_A1DC71End
	dl $A1EAAC,$A1F895,DATA_A1EAAC,DATA_A1EAACEnd
	dl $A1F895,$A1F99D,DATA_A1F895,DATA_A1F895End
	dl $A1F99D,$A1FA07,DATA_A1F99D,DATA_A1F99DEnd
	dl $A1FA07,$A1FE19,DATA_A1FA07,DATA_A1FA07End
	dl $A1FE19,$A1FFB2,DATA_A1FE19,DATA_A1FE19End
	dl $A2FECC,$A2FFE4,DATA_A2FECC,DATA_A2FECCEnd
	dl $A3FCAC,$A3FD78,DATA_A3FCAC,DATA_A3FCACEnd
	dl $A3FD78,$A3FF51,DATA_A3FD78,DATA_A3FD78End
	dl $A3FF51,$A3FFF0,DATA_A3FF51,DATA_A3FF51End
	dl $A4F8AA,$A4FA72,DATA_A4F8AA,DATA_A4F8AAEnd
	dl $A4FB9B,$A4FBEC,DATA_A4FB9B,DATA_A4FB9BEnd
	dl $A4FBEC,$A4FC40,DATA_A4FBEC,DATA_A4FBECEnd
	dl $A4FC40,$A4FCFC,DATA_A4FC40,DATA_A4FC40End
	dl $A4FCFC,$A4FDBD,DATA_A4FCFC,DATA_A4FCFCEnd
	dl $A4FDBD,$A4FF3F,DATA_A4FDBD,DATA_A4FDBDEnd
	dl $A585F3,$A588ED,DATA_A585F3,DATA_A585F3End
	dl $A588ED,$A5AFAB,DATA_A588ED,DATA_A588EDEnd
	dl $A5AFAB,$A5BAA3,DATA_A5AFAB,DATA_A5AFABEnd
	dl $A5BAA3,$A5BC0E,DATA_A5BAA3,DATA_A5BAA3End
	dl $A5BC0E,$A5D849,DATA_A5BC0E,DATA_A5BC0EEnd
	dl $A5D849,$A5F1C0,DATA_A5D849,DATA_A5D849End
	dl $A5F1C0,$A5FF4A,DATA_A5F1C0,DATA_A5F1C0End
	dl $A68000,$A68286,DATA_A68000,DATA_A68000End
	dl $A68286,$A682AE,DATA_A68286,DATA_A68286End
	dl $A682AE,$A683F2,DATA_A682AE,DATA_A682AEEnd
	dl $A6C462,$A6C550,DATA_A6C462,DATA_A6C462End
	dl $A6C550,$A6C934,DATA_A6C550,DATA_A6C550End
	dl $A6C934,$A6C954,DATA_A6C934,DATA_A6C934End
	dl $A6C954,$A6C982,DATA_A6C954,DATA_A6C954End
	dl $A6C982,$A6CA94,DATA_A6C982,DATA_A6C982End
	dl $A6CA94,$A6DDCF,DATA_A6CA94,DATA_A6CA94End
	dl $A6DDCF,$A6FADA,DATA_A6DDCF,DATA_A6DDCFEnd
	dl $A6FADA,$A6FB80,DATA_A6FADA,DATA_A6FADAEnd
	dl $A6FB80,$A6FD16,DATA_A6FB80,DATA_A6FB80End
	dl $A6FD27,$A6FE11,DATA_A6FD27,DATA_A6FD27End
	dl $A6FE11,$A6FF8C,DATA_A6FE11,DATA_A6FE11End
	dl $A6FF8C,$A6FFC5,DATA_A6FF8C,DATA_A6FF8CEnd
	dl $A7FF0D,$A7FF55,DATA_A7FF0D,DATA_A7FF0DEnd
	dl $A7FF55,$A7FFA7,DATA_A7FF55,DATA_A7FF55End
	dl $A8FE26,$A8FED8,DATA_A8FE26,DATA_A8FE26End
	dl $A8FF26,$A8FFD8,DATA_A8FF26,DATA_A8FF26End
	dl $A9FCFA,$A9FEC6,DATA_A9FCFA,DATA_A9FCFAEnd
	dl $A9FEC6,$A9FF74,DATA_A9FEC6,DATA_A9FEC6End
	dl $ABFF2E,$ABFFF8,DATA_ABFF2E,DATA_ABFF2EEnd
	dl $B4FA8E,$B4FFD7,DATA_B4FA8E,DATA_B4FA8EEnd
	dl $B5EB6B,$B5EBA2,DATA_B5EB6B,DATA_B5EB6BEnd
	dl $B5EBA2,$B5FEAE,DATA_B5EBA2,DATA_B5EBA2End
	dl $B5FEAE,$B5FEFA,DATA_B5FEAE,DATA_B5FEAEEnd
	dl $B6FB63,$B6FF26,DATA_B6FB63,DATA_B6FB63End
	dl $B7F40E,$B7F45F,DATA_B7F40E,DATA_B7F40EEnd
	dl $B7F45F,$B7F4B4,DATA_B7F45F,DATA_B7F45FEnd
	dl $B7F4B4,$B7F8E4,DATA_B7F4B4,DATA_B7F4B4End
	dl $B7F8E4,$B7F93B,DATA_B7F8E4,DATA_B7F8E4End
	dl $B7F93B,$B7F9D6,DATA_B7F93B,DATA_B7F93BEnd
	dl $B7F9D6,$B7FB2F,DATA_B7F9D6,DATA_B7F9D6End
	dl $B7FB2F,$B7FCD4,DATA_B7FB2F,DATA_B7FB2FEnd
	dl $B7FCD4,$B7FE07,DATA_B7FCD4,DATA_B7FCD4End
	dl $B7FE07,$B7FE96,DATA_B7FE07,DATA_B7FE07End
	dl $B7FE96,$B7FF55,DATA_B7FE96,DATA_B7FE96End
	dl $B7FF55,$B7FFF5,DATA_B7FF55,DATA_B7FF55End
	dl $BAFDE1,$BAFEE8,DATA_BAFDE1,DATA_BAFDE1End
	dl $BAFEE8,$BAFFA7,DATA_BAFEE8,DATA_BAFEE8End
	dl $BBFDF5,$BBFEB2,DATA_BBFDF5,DATA_BBFDF5End
	dl $BBFEB2,$BBFFF3,DATA_BBFEB2,DATA_BBFEB2End
	dl $BFFB71,$BFFF57,DATA_BFFB71,DATA_BFFB71End
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
	dl $B0A400,$B0B000,BloodCeilingLightAndLightSpots,BloodCeilingLightAndLightSpotsEnd
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

Layer3_RadarTiles:
	db "Layer3_RadarTiles.bin"
Layer3_RadarTilesEnd:
DATA_848000:
	db "DATA_848000.bin"
DATA_848000End:
DATA_858000:
	db "DATA_858000.bin"
DATA_858000End:
DATA_868000:
	db "DATA_868000.bin"
DATA_868000End:
DATA_878000:
	db "DATA_878000.bin"
DATA_878000End:
DATA_8FE358:
	db "DATA_8FE358.bin"
DATA_8FE358End:
DATA_91A1DC:
	db "DATA_91A1DC.bin"
DATA_91A1DCEnd:
DATA_928000:
	db "DATA_928000.bin"
DATA_928000End:
DATA_938000:
	db "DATA_938000.bin"
DATA_938000End:
DATA_948000:
	db "DATA_948000.bin"
DATA_948000End:
DATA_958000:
	db "DATA_958000.bin"
DATA_958000End:
DATA_968000:
	db "DATA_968000.bin"
DATA_968000End:
Layer3_CattleProdAmmoDisplay:
	db "Layer3_CattleProdAmmoDisplay.bin"
Layer3_CattleProdAmmoDisplayEnd:
DATA_979080:
	db "DATA_979080.bin"
DATA_979080End:
DennisNedryPortrait:
	db "DennisNedryPortrait.bin"
DennisNedryPortraitEnd:
AlexMurphyPortrait:
	db "AlexMurphyPortrait.bin"
AlexMurphyPortraitEnd:
EllieSattlerPortrait:
	db "EllieSattlerPortrait.bin"
EllieSattlerPortraitEnd:
JohnHammondPortrait:
	db "JohnHammondPortrait.bin"
JohnHammondPortraitEnd:
IanMalcolmPortrait:
	db "IanMalcolmPortrait.bin"
IanMalcolmPortraitEnd:
RobertMuldoonPortrait:
	db "RobertMuldoonPortrait.bin"
RobertMuldoonPortraitEnd:
TimMurphyPortrait:
	db "TimMurphyPortrait.bin"
TimMurphyPortraitEnd:
DATA_988000:
	db "DATA_988000.bin"
DATA_988000End:
DATA_998000:
	db "DATA_998000.bin"
DATA_998000End:
DATA_9A8000:
	db "DATA_9A8000.bin"
DATA_9A8000End:
DATA_9B8000:
	db "DATA_9B8000.bin"
DATA_9B8000End:
DATA_9C8000:
	db "DATA_9C8000.bin"
DATA_9C8000End:
DATA_9D8000:
	db "DATA_9D8000.bin"
DATA_9D8000End:
DATA_9E8000:
	db "DATA_9E8000.bin"
DATA_9E8000End:
DATA_9F8000:
	db "DATA_9F8000.bin"
DATA_9F8000End:

;--------------------------------------------------------------------

Sprite_FlamesAndShadows:
	db "Sprite_FlamesAndShadows.bin"
Sprite_FlamesAndShadowsEnd:
Layer2_ExteriorAreasGrassTiles:
	db "Layer2_ExteriorAreasGrassTiles.bin"
Layer2_ExteriorAreasGrassTilesEnd:
Layer3_ExteriorAreasStatusBar:
	db "Layer3_ExteriorAreasStatusBar.bin"
Layer3_ExteriorAreasStatusBarEnd:
Layer3_MrDNAMessageBoxTiles:
	db "Layer3_MrDNAMessageBoxTiles.bin"
Layer3_MrDNAMessageBoxTilesEnd:
Layer3_DinoEggMessageBox:
	db "Layer3_DinoEggMessageBox.bin"
Layer3_DinoEggMessageBoxEnd:
Layer3_RegularMessageBoxTiles:
	db "Layer3_RegularMessageBoxTiles.bin"
Layer3_RegularMessageBoxTilesEnd:
Sprite_Mode7IntroText:
	db "Sprite_Mode7IntroText.bin"
Sprite_Mode7IntroTextEnd:
Mode7_IsleNubular:
	db "Mode7_IsleNubular.bin"
Mode7_IsleNubularEnd:
BG_TitleScreen:
	db "BG_TitleScreen.bin"
BG_TitleScreenEnd:
BG_HighScoreScreen:
	db "BG_HighScoreScreen.bin"
BG_HighScoreScreenEnd:
Sprite_TitleScreen_OpenedMenu:
	db "Sprite_TitleScreen_OpenedMenu.bin"
Sprite_TitleScreen_OpenedMenuEnd:
Sprite_TitleScreen_ClosedMenu:
	db "Sprite_TitleScreen_ClosedMenu.bin"
Sprite_TitleScreen_ClosedMenuEnd:
BG_Mode7IntroMountains:
	db "BG_Mode7IntroMountains.bin"
BG_Mode7IntroMountainsEnd:
Sprite_GameOverScreenNumbers:
	db "Sprite_GameOverScreenNumbers.bin"
Sprite_GameOverScreenNumbersEnd:
Sprite_JurassicParkFont:
	db "Sprite_JurassicParkFont.bin"
Sprite_JurassicParkFontEnd:
OceanLogo:
	db "OceanLogo.bin"
OceanLogoEnd:
BG_GameOverScreen:
	db "BG_GameOverScreen.bin"
BG_GameOverScreenEnd:
Sprite_InteriorHUD:
	db "Sprite_InteriorHUD.rnc"
Sprite_InteriorHUDEnd:
BG_ComputerTerminal_06:
	db "BG_ComputerTerminal_06.bin"
BG_ComputerTerminal_06End:
Sprite_AlanGrantHand:
	db "Sprite_AlanGrantHand.bin"
Sprite_AlanGrantHandEnd:
Sprite_AlanGrantHand_02:
	db "Sprite_AlanGrantHand_02.bin"
Sprite_AlanGrantHand_02End:
BG_ComputerTerminal:
	db "BG_ComputerTerminal.bin"
BG_ComputerTerminalEnd:
BG_ComputerTerminal_02:
	db "BG_ComputerTerminal_02.bin"
BG_ComputerTerminal_02End:
BG_ComputerTerminal_03:
	db "BG_ComputerTerminal_03.bin"
BG_ComputerTerminal_03End:
BG_ComputerTerminal_04:
	db "BG_ComputerTerminal_04.bin"
BG_ComputerTerminal_04End:
BG_ComputerTerminal_05:
	db "BG_ComputerTerminal_05.bin"
BG_ComputerTerminal_05End:

;--------------------------------------------------------------------

DATA_A08000:
	db "DATA_A08000.rnc"
DATA_A08000End:
DATA_A08204:
	db "DATA_A08204.rnc"
DATA_A08204End:
DATA_A09EAD:
	db "DATA_A09EAD.rnc"
DATA_A09EADEnd:
DATA_A0A033:
	db "DATA_A0A033.rnc"
DATA_A0A033End:
DATA_A0BAA0:
	db "DATA_A0BAA0.rnc"
DATA_A0BAA0End:
DATA_A0BB51:
	db "DATA_A0BB51.rnc"
DATA_A0BB51End:
DATA_A0C983:
	db "DATA_A0C983.rnc"
DATA_A0C983End:
DATA_A0CA42:
	db "DATA_A0CA42.rnc"
DATA_A0CA42End:
DATA_A0DB6D:
	db "DATA_A0DB6D.rnc"
DATA_A0DB6DEnd:
DATA_A0DCBE:
	db "DATA_A0DCBE.rnc"
DATA_A0DCBEEnd:
DATA_A0ED7D:
	db "DATA_A0ED7D.rnc"
DATA_A0ED7DEnd:
DATA_A0EE17:
	db "DATA_A0EE17.rnc"
DATA_A0EE17End:
DATA_A0FD55:
	db "DATA_A0FD55.rnc"
DATA_A0FD55End:
DATA_A0FDD7:
	db "DATA_A0FDD7.rnc"
DATA_A0FDD7End:
DATA_A1C274:
	db "DATA_A1C274.rnc"
DATA_A1C274End:
DATA_A1CFA4:
	db "DATA_A1CFA4.rnc"
DATA_A1CFA4End:
DATA_A1DC71:
	db "DATA_A1DC71.rnc"
DATA_A1DC71End:
DATA_A1EAAC:
	db "DATA_A1EAAC.rnc"
DATA_A1EAACEnd:
DATA_A1F895:
	db "DATA_A1F895.rnc"
DATA_A1F895End:
DATA_A1F99D:
	db "DATA_A1F99D.rnc"
DATA_A1F99DEnd:
DATA_A1FA07:
	db "DATA_A1FA07.rnc"
DATA_A1FA07End:
DATA_A1FE19:
	db "DATA_A1FE19.rnc"
DATA_A1FE19End:
DATA_A2FECC:
	db "DATA_A2FECC.rnc"
DATA_A2FECCEnd:
DATA_A3FCAC:
	db "DATA_A3FCAC.rnc"
DATA_A3FCACEnd:
DATA_A3FD78:
	db "DATA_A3FD78.rnc"
DATA_A3FD78End:
DATA_A3FF51:
	db "DATA_A3FF51.rnc"
DATA_A3FF51End:
DATA_A4F8AA:
	db "DATA_A4F8AA.rnc"
DATA_A4F8AAEnd:
DATA_A4FB9B:
	db "DATA_A4FB9B.rnc"
DATA_A4FB9BEnd:
DATA_A4FBEC:
	db "DATA_A4FBEC.rnc"
DATA_A4FBECEnd:
DATA_A4FC40:
	db "DATA_A4FC40.rnc"
DATA_A4FC40End:
DATA_A4FCFC:
	db "DATA_A4FCFC.rnc"
DATA_A4FCFCEnd:
DATA_A4FDBD:
	db "DATA_A4FDBD.rnc"
DATA_A4FDBDEnd:
DATA_A585F3:
	db "DATA_A585F3.rnc"
DATA_A585F3End:
DATA_A588ED:
	db "DATA_A588ED.rnc"
DATA_A588EDEnd:
DATA_A5AFAB:
	db "DATA_A5AFAB.rnc"
DATA_A5AFABEnd:
DATA_A5BAA3:
	db "DATA_A5BAA3.rnc"
DATA_A5BAA3End:
DATA_A5BC0E:
	db "DATA_A5BC0E.rnc"
DATA_A5BC0EEnd:
DATA_A5D849:
	db "DATA_A5D849.rnc"
DATA_A5D849End:
DATA_A5F1C0:
	db "DATA_A5F1C0.rnc"
DATA_A5F1C0End:
DATA_A68000:
	db "DATA_A68000.rnc"
DATA_A68000End:
DATA_A68286:
	db "DATA_A68286.rnc"
DATA_A68286End:
DATA_A682AE:
	db "DATA_A682AE.rnc"
DATA_A682AEEnd:
DATA_A6C462:
	db "DATA_A6C462.rnc"
DATA_A6C462End:
DATA_A6C550:
	db "DATA_A6C550.rnc"
DATA_A6C550End:
DATA_A6C934:
	db "DATA_A6C934.rnc"
DATA_A6C934End:
DATA_A6C954:
	db "DATA_A6C954.rnc"
DATA_A6C954End:
DATA_A6C982:
	db "DATA_A6C982.rnc"
DATA_A6C982End:
DATA_A6CA94:
	db "DATA_A6CA94.rnc"
DATA_A6CA94End:
DATA_A6DDCF:
	db "DATA_A6DDCF.rnc"
DATA_A6DDCFEnd:
DATA_A6FADA:
	db "DATA_A6FADA.rnc"
DATA_A6FADAEnd:
DATA_A6FB80:
	db "DATA_A6FB80.rnc"
DATA_A6FB80End:
DATA_A6FD27:
	db "DATA_A6FD27.rnc"
DATA_A6FD27End:
DATA_A6FE11:
	db "DATA_A6FE11.rnc"
DATA_A6FE11End:
DATA_A6FF8C:
	db "DATA_A6FF8C.rnc"
DATA_A6FF8CEnd:
DATA_A7FF0D:
	db "DATA_A7FF0D.rnc"
DATA_A7FF0DEnd:
DATA_A7FF55:
	db "DATA_A7FF55.rnc"
DATA_A7FF55End:
DATA_A8FE26:
	db "DATA_A8FE26.rnc"
DATA_A8FE26End:
DATA_A8FF26:
	db "DATA_A8FF26.rnc"
DATA_A8FF26End:
DATA_A9FCFA:
	db "DATA_A9FCFA.rnc"
DATA_A9FCFAEnd:
DATA_A9FEC6:
	db "DATA_A9FEC6.rnc"
DATA_A9FEC6End:
DATA_ABFF2E:
	db "DATA_ABFF2E.rnc"
DATA_ABFF2EEnd:
DATA_B4FA8E:
	db "DATA_B4FA8E.rnc"
DATA_B4FA8EEnd:
DATA_B5EB6B:
	db "DATA_B5EB6B.rnc"
DATA_B5EB6BEnd:
DATA_B5EBA2:
	db "DATA_B5EBA2.rnc"
DATA_B5EBA2End:
DATA_B5FEAE:
	db "DATA_B5FEAE.rnc"
DATA_B5FEAEEnd:
DATA_B6FB63:
	db "DATA_B6FB63.rnc"
DATA_B6FB63End:
DATA_B7F40E:
	db "DATA_B7F40E.rnc"
DATA_B7F40EEnd:
DATA_B7F45F:
	db "DATA_B7F45F.rnc"
DATA_B7F45FEnd:
DATA_B7F4B4:
	db "DATA_B7F4B4.rnc"
DATA_B7F4B4End:
DATA_B7F8E4:
	db "DATA_B7F8E4.rnc"
DATA_B7F8E4End:
DATA_B7F93B:
	db "DATA_B7F93B.rnc"
DATA_B7F93BEnd:
DATA_B7F9D6:
	db "DATA_B7F9D6.rnc"
DATA_B7F9D6End:
DATA_B7FB2F:
	db "DATA_B7FB2F.rnc"
DATA_B7FB2FEnd:
DATA_B7FCD4:
	db "DATA_B7FCD4.rnc"
DATA_B7FCD4End:
DATA_B7FE07:
	db "DATA_B7FE07.rnc"
DATA_B7FE07End:
DATA_B7FE96:
	db "DATA_B7FE96.rnc"
DATA_B7FE96End:
DATA_B7FF55:
	db "DATA_B7FF55.rnc"
DATA_B7FF55End:
DATA_BAFDE1:
	db "DATA_BAFDE1.rnc"
DATA_BAFDE1End:
DATA_BAFEE8:
	db "DATA_BAFEE8.rnc"
DATA_BAFEE8End:
DATA_BBFDF5:
	db "DATA_BBFDF5.rnc"
DATA_BBFDF5End:
DATA_BBFEB2:
	db "DATA_BBFEB2.rnc"
DATA_BBFEB2End:
DATA_BFFB71:
	db "DATA_BFFB71.rnc"
DATA_BFFB71End:

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
BloodCeilingLightAndLightSpots:
	db "BloodCeilingLightAndLightSpots.bin"
BloodCeilingLightAndLightSpotsEnd:
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
