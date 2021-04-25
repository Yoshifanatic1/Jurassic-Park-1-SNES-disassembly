
!RAM_JP_TitleScreen_CursorXPosLo = $000034
!RAM_JP_TitleScreen_CursorXPosHi = !RAM_JP_TitleScreen_CursorXPosLo+$01
!RAM_JP_TitleScreen_CursorYPosLo = $000036
!RAM_JP_TitleScreen_CursorYPosHi = !RAM_JP_TitleScreen_CursorYPosLo+$01

!RAM_JP_Interior_CurrentRoom = $000067

!RAM_JP_Interior_TilePlayerIsTouching = $8000F0

!RAM_JP_Global_Player_CurrentScoreThousandsDigit = $800203
!RAM_JP_Global_Player_CurrentScoreHundredsDigit = !RAM_JP_Global_Player_CurrentScoreThousandsDigit+$01
!RAM_JP_Global_Player_CurrentScoreTensDigit = !RAM_JP_Global_Player_CurrentScoreThousandsDigit+$02
!RAM_JP_Global_Player_CurrentScoreOnesDigit = !RAM_JP_Global_Player_CurrentScoreThousandsDigit+$03
!RAM_JP_Global_Player_PointsToGiveThousandsDigit = $800207
!RAM_JP_Global_Player_PointsToGiveHundredsDigit = !RAM_JP_Global_Player_PointsToGiveThousandsDigit+$01
!RAM_JP_Global_Player_PointsToGiveTensDigit = !RAM_JP_Global_Player_PointsToGiveThousandsDigit+$02
!RAM_JP_Global_Player_PointsToGiveOnesDigit = !RAM_JP_Global_Player_PointsToGiveThousandsDigit+$03

!RAM_JP_Exterior_BuildingEntranceLo = $80024B
!RAM_JP_Exterior_BuildingEntranceHi = !RAM_JP_Exterior_BuildingEntranceLo+$01
!RAM_JP_Exterior_Gate1OpenFlagLo = $80024D
!RAM_JP_Exterior_Gate1OpenFlagHi = !RAM_JP_Exterior_Gate1OpenFlagLo+$01
!RAM_JP_Exterior_Gate2OpenFlagLo = $80024F
!RAM_JP_Exterior_Gate2OpenFlagHi = !RAM_JP_Exterior_Gate2OpenFlagLo+$01
!RAM_JP_Exterior_Gate3OpenFlagLo = $800251
!RAM_JP_Exterior_Gate3OpenFlagHi = !RAM_JP_Exterior_Gate3OpenFlagLo+$01
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
!RAM_JP_Global_VisitorCenterSecuredLo = $80026F
!RAM_JP_Global_VisitorCenterSecuredHi = !RAM_JP_Global_VisitorCenterSecuredLo+$01
!RAM_JP_Global_ShipObjectivesClearFlagLo = $800271
!RAM_JP_Global_ShipObjectivesClearFlagHi = !RAM_JP_Global_ShipObjectivesClearFlagLo+$01
!RAM_JP_Global_NerveGasDeployedFlagLo = $800273
!RAM_JP_Global_NerveGasDeployedFlagHi = !RAM_JP_Global_NerveGasDeployedFlagLo+$01
!RAM_JP_Global_MainlandContactedFlagLo = $800275
!RAM_JP_Global_MainlandContactedFlagHi = !RAM_JP_Global_MainlandContactedFlagLo+$01
!RAM_JP_Global_BoardHelicopterFlagLo = $800277
!RAM_JP_Global_BoardHelicopterFlagHi = !RAM_JP_Global_BoardHelicopterFlagLo+$01

!RAM_JP_Exterior_MotionSensorActiveFlagLo = $800287
!RAM_JP_Exterior_MotionSensorActiveFlagHi = !RAM_JP_Exterior_MotionSensorActiveFlagLo+$01
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

!RAM_JP_Global_MusicSetting = $8002EF

!RAM_JP_Global_SoundTableIndexLo = $8002F5
!RAM_JP_Global_SoundTableIndexHi = !RAM_JP_Global_SoundTableIndexLo+$01

!RAM_JP_Global_SoundTable = $8002FB

!RAM_JP_Exterior_CurrentPoleMessageLo = $80037F
!RAM_JP_Exterior_CurrentPoleMessageHi = !RAM_JP_Exterior_CurrentPoleMessageLo+$01
!RAM_JP_TitleScreen_WaitBeforeAutoFadeOutLo = $800381
!RAM_JP_TitleScreen_WaitBeforeAutoFadeOutHi = !RAM_JP_TitleScreen_WaitBeforeAutoFadeOutLo+$01
!RAM_JP_TitleScreen_ScreenToFadeOutToLo = $800383
!RAM_JP_TitleScreen_ScreenToFadeOutToHi = !RAM_JP_TitleScreen_ScreenToFadeOutToLo+$01

!RAM_JP_Exterior_FadeOutToEndingFlagLo = $80038B
!RAM_JP_Exterior_FadeOutToEndingFlagHi = !RAM_JP_Exterior_FadeOutToEndingFlagLo+$01

!RAM_JP_TitleScreen_SelectedStartOrHighScoreMenuOption = $80044D

!RAM_JP_TitleScreen_MenuSizeChangeTimerLo = $80046B

!RAM_JP_Global_OAMBuffer = $80049F

; $8006CD = Related to what character portrait to use in the message boxes

!RAM_JP_Exterior_Player_MovementDirectionLo = $800B21
!RAM_JP_Exterior_Player_MovementDirectionHi = !RAM_JP_Exterior_Player_MovementDirectionLo+$01

!RAM_JP_Exterior_Player_WalkingFrameLo = $800DEB
!RAM_JP_Exterior_Player_WalkingFrameHi = !RAM_JP_Exterior_Player_WalkingFrameLo+$01
!RAM_JP_Exterior_Player_InAirFlagLo = $800DED
!RAM_JP_Exterior_Player_InAirFlagHi = !RAM_JP_Exterior_Player_InAirFlagLo+$01
	; $0002 = Jumping
	; $FFFE = Electric Shock Knockback
	; $FFFF = Knockback
!RAM_JP_Exterior_Player_OnStairsFlagLo = $800DEF
!RAM_JP_Exterior_Player_OnStairsFlagHi = !RAM_JP_Exterior_Player_OnStairsFlagLo+$01

!RAM_JP_Exterior_TouchedPoleFlagLo = $800DFF
!RAM_JP_Exterior_TouchedPoleFlagHi = !RAM_JP_Exterior_TouchedPoleFlagLo+$01

!RAM_JP_Exterior_Player_CanPickUpItemFlagLo = $800E2D
!RAM_JP_Exterior_Player_CanPickUpItemFlagHi = !RAM_JP_Exterior_Player_CanPickUpItemFlagLo+$01

!RAM_JP_Global_Player_RemainingEggsToCollectLo = $7E0E0F
!RAM_JP_Global_Player_RemainingEggsToCollectHi = !RAM_JP_Global_Player_RemainingEggsToCollectLo+$01
!RAM_JP_Global_Player_PickedUpEggFlagLo = $800E11
!RAM_JP_Global_Player_PickedUpEggFlagHi = !RAM_JP_Global_Player_PickedUpEggFlagLo+$01

!RAM_JP_Exterior_Player_CheckpointZPosLo = $800E33
!RAM_JP_Exterior_Player_CheckpointZPosHi = !RAM_JP_Exterior_Player_CheckpointZPosLo+$01
!RAM_JP_Exterior_Player_CheckpointXPosLo = $800E35
!RAM_JP_Exterior_Player_CheckpointXPosHi = !RAM_JP_Exterior_Player_CheckpointXPosLo+$01
!RAM_JP_Exterior_Player_CheckpointYPosLo = $800E37
!RAM_JP_Exterior_Player_CheckpointYPosHi = !RAM_JP_Exterior_Player_CheckpointYPosLo+$01

!RAM_JP_Exterior_WaitBeforeMrDNATriviaAppearsLo = $800E3D
!RAM_JP_Exterior_WaitBeforeMrDNATriviaAppearsHi = !RAM_JP_Exterior_WaitBeforeMrDNATriviaAppearsLo+$01
!RAM_JP_Exterior_MrDNATriviaTilemapIndexLo = $800E3F
!RAM_JP_Exterior_MrDNATriviaTilemapIndexHi = !RAM_JP_Exterior_MrDNATriviaTilemapIndexLo+$01

!RAM_JP_Exterior_Player_UseDemoMovementsFlagLo = $800E4C
!RAM_JP_Exterior_Player_UseDemoMovementsFlagHi = !RAM_JP_Exterior_Player_UseDemoMovementsFlagLo+$01

!RAM_JP_Interior_OAMBuffer = $801400

!RAM_JP_Interior_MapWidthLo = $80169A
!RAM_JP_Interior_MapWidthHi = !RAM_JP_Interior_MapWidthLo+$01
!RAM_JP_Interior_MapLengthLo = $80169C
!RAM_JP_Interior_MapLengthHi = !RAM_JP_Interior_MapLengthLo+$01

!RAM_JP_Interior_CurrentAreaLo = $8016B5
!RAM_JP_Interior_CurrentAreaHi = !RAM_JP_Exterior_CurrentAreaLo+$01
!RAM_JP_Interior_EntityLoadStatusBuildingIndexLo = $8016B7
!RAM_JP_Interior_EntityLoadStatusBuildingIndexHi = !RAM_JP_Interior_EntityLoadStatusBuildingIndexLo+$01
!RAM_JP_Interior_DinosaursOnFloorCountLo = $8016B9
!RAM_JP_Interior_DinosaursOnFloorCountHi = !RAM_JP_Interior_DinosaursOnFloorCount+$01

!RAM_JP_Interior_ElevatorMusicToUseLo = $8016C6
!RAM_JP_Interior_ElevatorMusicToUseHi = !RAM_JP_Interior_ElevatorMusicToUseLo+$01

!RAM_JP_Interior_UseNightVisionFlagLo = $80179D
!RAM_JP_Interior_UseNightVisionFlagHi = !RAM_JP_Interior_UseNightVisionFlagLo+$01

!RAM_JP_Interior_BufferedDinosaursOnFloorMessageData = $801807

!RAM_JP_Interior_ComputerTerminalID = $801843

!RAM_JP_Interior_ComputerTerminalMessageIndex = $801895

!RAM_JP_Interior_EntityLoadStatusTable = $801AA4

!RAM_JP_Global_Player_CollectedBatteryTable = $801DE4

!RAM_JP_Interior_CollectedNerveGasFlagLo = $801DEF
!RAM_JP_Interior_CollectedNerveGasFlagHi = !RAM_JP_Interior_CollectedNerveGasFlagLo+$01

!RAM_JP_Interior_EntityLoadStatusByteIndexLo = $801DF1
!RAM_JP_Interior_EntityLoadStatusByteIndexHi = !RAM_JP_Interior_EntityLoadStatusByteIndexLo+$01
!RAM_JP_Interior_EntityLoadStatusBitIndexLo = $801DF3
!RAM_JP_Interior_EntityLoadStatusBitIndexHi = !RAM_JP_Interior_EntityLoadStatusBitIndexLo+$01
!RAM_JP_Interior_ShipContactedFlagLo = $801DF5
!RAM_JP_Interior_ShipContactedFlagHi = !RAM_JP_Interior_ShipContacteFlagLo+$01
!RAM_JP_Interior_ShipFreeOfDinosFlagLo = $801DF7
!RAM_JP_Interior_ShipFreeOfDinosFlagHi = !RAM_JP_Interior_ShipFreeOfDinosFlagLo+$01
!RAM_JP_Interior_DinosaursOnFloorTable = $801DF9
!RAM_JP_Interior_KilledAllDinosaursOnFloorFlagTable = $801E14

!RAM_JP_Global_HighScoreScreenOAMData = $7E2000

!RAM_JP_Exterior_Sprites_XPosLo = $7E2090
!RAM_JP_Exterior_Sprites_XPosHi = !RAM_JP_Exterior_Sprites_XPosLo+$01

!RAM_JP_Exterior_Player_XPosLo = $7E2476
!RAM_JP_Exterior_Player_XPosHi = !RAM_JP_Exterior_Player_XPosLo+$01

!RAM_JP_Exterior_Sprites_SubXPosLo = $7E247A
!RAM_JP_Exterior_Sprites_SubXPosHi = !RAM_JP_Exterior_Sprites_SubXPosLo+$01

!RAM_JP_Exterior_Player_SubXPosLo = $7E2860
!RAM_JP_Exterior_Player_SubXPosHi = !RAM_JP_Exterior_Player_SubXPosLo+$01

!RAM_JP_Exterior_Sprites_YPosLo = $7E2864
!RAM_JP_Exterior_Sprites_YPosHi = !RAM_JP_Exterior_Sprites_YPosLo+$01

!RAM_JP_Exterior_Player_YPosLo = $7E2C4A
!RAM_JP_Exterior_Player_YPosHi = !RAM_JP_Exterior_Player_YPosLo+$01

!RAM_JP_Exterior_Sprites_SubYPosLo = $7E2C4E
!RAM_JP_Exterior_Sprites_SubYPosHi = !RAM_JP_Exterior_Sprites_SubYPosLo+$01

!RAM_JP_Exterior_Player_SubYPosLo = $7E3034
!RAM_JP_Exterior_Player_SubYPosHi = !RAM_JP_Exterior_Player_SubYPosLo+$01

!RAM_JP_Exterior_Sprites_IDLo = $7E3038
!RAM_JP_Exterior_Sprites_IDHi = !RAM_JP_Exterior_Sprites_IDLo+$01

!RAM_JP_Exterior_Sprites_AnimationFrameLo = $7E3422
!RAM_JP_Exterior_Sprites_AnimationFrameHi = !RAM_JP_Exterior_Sprites_AnimationFrameLo+$01
!RAM_JP_Exterior_Player_AnimationFrameLo = !RAM_JP_Exterior_Sprites_AnimationFrameLo+$03E6	; $7E3808
!RAM_JP_Exterior_Player_AnimationFrameHi = !RAM_JP_Exterior_Player_AnimationFrameLo+$01

!RAM_JP_Exterior_Sprites_ZPosLo = $7E4F88
!RAM_JP_Exterior_Sprites_ZPosHi = !RAM_JP_Exterior_Sprites_ZPosLo+$01
!RAM_JP_Exterior_Player_ZPosLo = !RAM_JP_Exterior_Sprites_ZPosLo+$03E6				; $7E536E
!RAM_JP_Exterior_Player_ZPosHi = !RAM_JP_Exterior_Player_ZPosLo+$01

!RAM_JP_Exterior_Sprites_MovementDirectionLo = $7E5372
!RAM_JP_Exterior_Sprites_MovementDirectionHi = !RAM_JP_Exterior_Sprites_MovementDirectionLo+$01

!RAM_JP_Exterior_Sprites_SpeedLo = $7E575C
!RAM_JP_Exterior_Sprites_SpeedHi = !RAM_JP_Exterior_Sprites_SpeedLo+$01

!RAM_JP_Exterior_Player_SpeedLo = $7E5B42
!RAM_JP_Exterior_Player_SpeedHi = !RAM_JP_Exterior_Player_SpeedLo+$01

!RAM_JP_Exterior_Player_InteractionZPosLo = $7E72BE
!RAM_JP_Exterior_Player_InteractionZPosHi = !RAM_JP_Exterior_Player_InteractionZPosLo+$01

!RAM_JP_Exterior_Sprites_DamageTakenLo = $7E72C2
!RAM_JP_Exterior_Sprites_DamageTakenHi = !RAM_JP_Exterior_Sprites_DamageTakenLo+$01

!RAM_JP_Interior_RoomDataPtrTable = $7EA9B4
	; (2*Num of rooms) bytes = 16-bit pointers to each room's data
	; 1st ptr = Room data of current room YY
	; 2nd ptr = Room data of a connecting room of room YY
	; 3rd ptr = Wall data of another connecting room of room YY
	; .....
	; $FFFF = End of room YY data pointers.

!RAM_JP_Interior_EntityTable = $7EAEC8				; Note: This RAM define might be inaccurate due to how this address is indexed
!RAM_JP_Interior_WallTable = $7EAEC8

!RAM_JP_Interior_MapDataBuffer = $7F0000

!RAM_JP_Interior_TexturePtrsTableBank = $7F2EC4
!RAM_JP_Interior_TexturePtrsTableLoHi = $7F311C
!RAM_JP_Interior_TexturePropTable = $7F3374

struct JP_Global_OAMBuffer !RAM_JP_Global_OAMBuffer
	.XDisp: skip $01
	.YDisp: skip $01
	.Tile: skip $01
	.Prop: skip $01
endstruct align $04

struct JP_Global_UpperOAMBuffer !RAM_JP_Global_OAMBuffer+$0200
	.Slot: skip $01
endstruct align $01

struct JP_Global_SoundTable !RAM_JP_Global_SoundTable
	.ID	skip $01
	.PosHi	skip $01
	.XPosLo	skip $01
	.YPosLo	skip $01
endstruct

struct JP_Interior_OAMBuffer !RAM_JP_Interior_OAMBuffer
	.XDisp: skip $01
	.YDisp: skip $01
	.Tile: skip $01
	.Prop: skip $01
endstruct align $04

struct JP_Interior_UpperOAMBuffer !RAM_JP_Interior_OAMBuffer+$0200
	.Slot: skip $01
endstruct align $01

struct JP_Interior_EntityTable !RAM_JP_Interior_EntityTable
	.Unknown1	skip $02	; $7EAEC8
	.Unknown2	skip $02	; $7EAECA
	.Unknown3	skip $02	; $7EAECC
	.IDLo		skip $01	; $7EAECE
	.IDHi		skip $01	; $7EAECF
	.Unknown4	skip $02	; $7EAED0
	.Unknown5	skip $01	; $7EAED2
	.Unknown6	skip $01	; $7EAED3
	.Unknown7	skip $01	; $7EAED4
	.Unknown8	skip $01	; $7EAED5
	.TextureIndexLo	skip $01	; $7EAED6
	.TextureIndexHi	skip $01	; $7EAED7
	.Unknown9	skip $02	; $7EAED8
endstruct align $12

;---------------------------------------------------------------------------

!RAM_JP_Exterior_Sprite16_TyrannosaurusRex_AnimationFrame = $7E43CA
!RAM_JP_Exterior_Sprite16_TyrannosaurusRex_CurrentState = $7E4B9E
; $00 = Wait
; $01 = Running
; $02 = Retreat
; $03 = Eat Grant
!RAM_JP_Exterior_Sprite16_TyrannosaurusRex_KnockbackTimer = $7E631A
!RAM_JP_Exterior_Sprite16_TyrannosaurusRex_ChaseTimer = $7E6AEE
!RAM_JP_Exterior_Sprite16_TyrannosaurusRex_EatAnimationTimer = $7E6AEE
!RAM_JP_Exterior_Sprite16_TyrannosaurusRex_CanRoarWhenChasingFlag = $7E826A

;---------------------------------------------------------------------------
