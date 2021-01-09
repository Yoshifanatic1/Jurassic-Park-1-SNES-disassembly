
; $800209 = Score, thousands digit
; $800208 = Score, hundreds digit
; $800207 = Score, tens digit
; $800206 = Score, ones digit

!RAM_JP_Global_Player_CollectedIDCardTable = $800253
!RAM_JP_Interior_Player_SecurityLevel1FlagLo = !RAM_JP_Global_Player_CollectedIDCardTable+$12 ; $800265
!RAM_JP_Interior_Player_SecurityLevel1FlagHi = !RAM_JP_Interior_Player_SecurityLevel1FlagLo+$01
!RAM_JP_Interior_Player_SecurityLevel2FlagLo = !RAM_JP_Global_Player_CollectedIDCardTable+$14 ; $800267
!RAM_JP_Interior_Player_SecurityLevel2FlagHi = !RAM_JP_Interior_Player_SecurityLevel2FlagLo+$01

!RAM_JP_Interior_CanEnterDarkRoomSafelyFlagLo = $800269
!RAM_JP_Interior_CanEnterDarkRoomSafelyFlagHi = !RAM_JP_Interior_CanEnterDarkRoomSafelyFlagLo+$01

!RAM_JP_Global_GeneratorIsOnFlagLo = $80026B
!RAM_JP_Global_GeneratorIsOnFlagHi = !RAM_JP_Global_GeneratorIsOnFlagLo+$01
!RAM_JP_Global_MainSystemRestoredFlagLo = $80026D
!RAM_JP_Global_MainSystemRestoredFlagHi = !RAM_JP_Global_MainSystemRestoredFlagLo+$01
!RAM_JP_Global_VisiterCenterSecuredLo = $80026F
!RAM_JP_Global_VisiterCenterSecuredHi = !RAM_JP_Global_VisiterCenterSecuredLo+$01
!RAM_JP_Global_ShipFreeOfDinosFlagLo = $800271
!RAM_JP_Global_ShipFreeOfDinosFlagHi = !RAM_JP_Global_ShipFreeOfDinosFlagLo+$01
!RAM_JP_Global_NerveGasDeployedFlagLo = $800273
!RAM_JP_Global_NerveGasDeployedFlagHi = !RAM_JP_Global_NerveGasDeployedFlagLo+$01
!RAM_JP_Global_MainlandContactedFlagLo = $800275
!RAM_JP_Global_MainlandContactedFlagHi = !RAM_JP_Global_MainlandContactedFlagLo+$01
!RAM_JP_Global_BoardHelicopterFlagLo = $800277
!RAM_JP_Global_BoardHelicopterFlagHi = !RAM_JP_Global_BoardHelicopterFlagLo+$01

!RAM_JP_Exterior_AllEggsCollectedFlagLo = $800289
!RAM_JP_Exterior_AllEggsCollectedFlagHi = !RAM_JP_Exterior_AllEggsCollectedFlagLo+$01
!RAM_JP_Global_Player_PrimaryWeaponAmmoLo = $80028B
!RAM_JP_Global_Player_PrimaryWeaponAmmoHi = !RAM_JP_Global_Player_PrimaryWeaponAmmoLo+$01
!RAM_JP_Global_Player_PrimaryWeaponLo = $80028D
!RAM_JP_Global_Player_PrimaryWeaponHi = !RAM_JP_Global_Player_PrimaryWeaponLo+$01

!RAM_JP_Global_Player_SecondaryWeaponAmmoLo = $800295
!RAM_JP_Global_Player_SecondaryWeaponAmmoHi = !RAM_JP_Global_Player_SecondaryWeaponAmmoLo+$01
!RAM_JP_Global_Player_SecondaryWeaponLo = $800297
!RAM_JP_Global_Player_SecondaryWeaponHi = !RAM_JP_Global_Player_SecondaryWeaponLo+$01

!RAM_JP_Global_Payer_CattleProdAmmoLo = $80029F
!RAM_JP_Global_Payer_CattleProdAmmoHi = !RAM_JP_Global_Payer_CattleProdAmmoLo+$01

; $8002A1 = Related to the cattle prod's ammo.

!RAM_JP_Global_Player_CurrentLifeCountLo = $8002A3
!RAM_JP_Global_Player_CurrentLifeCountHi = !RAM_JP_Global_Player_CurrentLifeCountLo+$01

!RAM_JP_Global_Player_DamageTakenLo = $8002EB
!RAM_JP_Global_Player_DamageTakenHi = !RAM_JP_Global_Player_DamageTakenLo+$01

; $0002FB = Sound ID?
; $0002FC = High X/Y position of sound?
; $0002FD = Low X positon of sound?
; $0002FE = Low Y positon of sound?

!RAM_JP_Exterior_FadeOutToEndingFlagLo = $80038B
!RAM_JP_Exterior_FadeOutToEndingFlagHi = !RAM_JP_Exterior_FadeOutToEndingFlagLo+$01

!RAM_JP_Global_OAMBuffer = $80049F

; $8006CD = Related to what character portrait to use in the message boxes

!RAM_JP_Exterior_Player_CanPickUpItemFlagLo = $800E2D
!RAM_JP_Exterior_Player_CanPickUpItemFlagHi = !RAM_JP_Exterior_Player_CanPickUpItemFlagLo+$01

!RAM_JP_Global_Player_RemainingEggsToCollectLo = $7E0E0F
!RAM_JP_Global_Player_RemainingEggsToCollectHi = !RAM_JP_Global_Player_RemainingEggsToCollectLo+$01
!RAM_JP_Global_Player_PickedUpEggFlagLo = $800E11
!RAM_JP_Global_Player_PickedUpEggFlagHi = !RAM_JP_Global_Player_PickedUpEggFlagLo+$01

!RAM_JP_Exterior_WaitBeforeMrDNATriviaAppearsLo = $800E3D
!RAM_JP_Exterior_WaitBeforeMrDNATriviaAppearsHi = !RAM_JP_Exterior_WaitBeforeMrDNATriviaAppearsLo+$01
!RAM_JP_Exterior_MrDNATriviaTilemapIndexLo = $800E3F
!RAM_JP_Exterior_MrDNATriviaTilemapIndexHi = !RAM_JP_Exterior_MrDNATriviaTilemapIndexLo+$01

!RAM_JP_Interior_OAMBuffer = $801400

!RAM_JP_Interior_DinosaursOnFloorCount = $8016B9

!RAM_JP_Interior_ElevatorMusicToUseLo = $8016C6
!RAM_JP_Interior_ElevatorMusicToUseHi = !RAM_JP_Interior_ElevatorMusicToUseLo+$01

!RAM_JP_Interior_UseNightVisionFlagLo = $80179D
!RAM_JP_Interior_UseNightVisionFlagHi = !RAM_JP_Interior_UseNightVisionFlagLo+$01

!RAM_JP_Interior_ComputerTerminalMessageIndex = $801895

; $801DE4 = Night vision goggle battery collection flags.

!RAM_JP_Interior_CollectedNerveGasFlagLo = $801DEF
!RAM_JP_Interior_CollectedNerveGasFlagHi = !RAM_JP_Interior_CollectedNerveGasFlagLo+$01

!RAM_JP_Interior_ShipContactedFlagLo = $801DF5
!RAM_JP_Interior_ShipContactedFlagHi = !RAM_JP_Interior_ShipContacteFlagLo+$01

!RAM_JP_Global_HighScoreScreenOAMData = $7E2000

!RAM_JP_Exterior_Player_XPosLo = $7E2476
!RAM_JP_Exterior_Player_XPosLo = !RAM_JP_Exterior_Player_XPosLo+$01

!RAM_JP_Exterior_Player_YPosLo = $7E2C4A
!RAM_JP_Exterior_Player_YPosLo = !RAM_JP_Exterior_Player_YPosLo+$01

!RAM_JP_Exterior_Sprites_SpriteIDLo = $7E3038
!RAM_JP_Exterior_Sprites_SpriteIDHi = !RAM_JP_Exterior_Sprites_SpriteIDLo+$01

struct JP_Global_OAMBuffer !RAM_JP_Global_OAMBuffer
	.XDisp: skip $01
	.YDisp: skip $01
	.Tile: skip $01
	.Prop: skip $01
endstruct align $04

struct JP_Global_UpperOAMBuffer !RAM_JP_Global_OAMBuffer+$0200
	.Slot: skip $01
endstruct align $01

struct JP_Interior_OAMBuffer !RAM_JP_Interior_OAMBuffer
	.XDisp: skip $01
	.YDisp: skip $01
	.Tile: skip $01
	.Prop: skip $01
endstruct align $04

struct JP_Interior_UpperOAMBuffer !RAM_JP_Interior_OAMBuffer+$0200
	.Slot: skip $01
endstruct align $01
