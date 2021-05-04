
macro GetPlayerNames(Input, Temp)
if !<Input> == $00
	!<Temp> = "Mario"
elseif !<Input> == $01
	!<Temp> = "Toadstool"
elseif !<Input> == $02
	!<Temp> = "Bowser"
elseif !<Input> == $03
	!<Temp> = "Geno"
elseif !<Input> == $04
	!<Temp> = "Mallow"
else
	!<Temp> = "NULLPlayer!<Input>"
endif
endmacro

macro GetSpellName(Input, Temp)
if !<Input> == $00
	!<Temp> = "Jump"
elseif !<Input> == $01
	!<Temp> = "FireOrb"
elseif !<Input> == $02
	!<Temp> = "SuperJump"
elseif !<Input> == $03
	!<Temp> = "SuperFlame"
elseif !<Input> == $04
	!<Temp> = "UltraJump"
elseif !<Input> == $05
	!<Temp> = "UltraFlame"
elseif !<Input> == $06
	!<Temp> = "Therapy"
elseif !<Input> == $07
	!<Temp> = "GroupHug"
elseif !<Input> == $08
	!<Temp> = "SleepyTime"
elseif !<Input> == $09
	!<Temp> = "ComeBack"
elseif !<Input> == $0A
	!<Temp> = "Mute"
elseif !<Input> == $0B
	!<Temp> = "PsychBomb"
elseif !<Input> == $0C
	!<Temp> = "Terrorize"
elseif !<Input> == $0D
	!<Temp> = "PoisonGas"
elseif !<Input> == $0E
	!<Temp> = "Crusher"
elseif !<Input> == $0F
	!<Temp> = "BowserCrush"
elseif !<Input> == $10
	!<Temp> = "GenoBeam"
elseif !<Input> == $11
	!<Temp> = "GenoBoost"
elseif !<Input> == $12
	!<Temp> = "GenoWhirl"
elseif !<Input> == $13
	!<Temp> = "GenoBlast"
elseif !<Input> == $14
	!<Temp> = "GenoFlash"
elseif !<Input> == $15
	!<Temp> = "Thunderbolt"
elseif !<Input> == $16
	!<Temp> = "HPRain"
elseif !<Input> == $17
	!<Temp> = "Psychopath"
elseif !<Input> == $18
	!<Temp> = "Shocker"
elseif !<Input> == $19
	!<Temp> = "Snowy"
elseif !<Input> == $1A
	!<Temp> = "StarRain"
elseif !<Input> == $40
	!<Temp> = "Drain"
elseif !<Input> == $41
	!<Temp> = "LightningOrb"
elseif !<Input> == $42
	!<Temp> = "Flame"
elseif !<Input> == $43
	!<Temp> = "Bolt"
elseif !<Input> == $44
	!<Temp> = "Crystal"
elseif !<Input> == $45
	!<Temp> = "FlameStone"
elseif !<Input> == $46
	!<Temp> = "MegaDrain"
elseif !<Input> == $47
	!<Temp> = "WillyWisp"
elseif !<Input> == $48
	!<Temp> = "DiamondSaw"
elseif !<Input> == $49
	!<Temp> = "ElectroShock"
elseif !<Input> == $4A
	!<Temp> = "Blast"
elseif !<Input> == $4B
	!<Temp> = "Storm"
elseif !<Input> == $4C
	!<Temp> = "IceRock"
elseif !<Input> == $4D
	!<Temp> = "Escape"
elseif !<Input> == $4E
	!<Temp> = "DarkStar"
elseif !<Input> == $4F
	!<Temp> = "Recover"
elseif !<Input> == $50
	!<Temp> = "MegaRecover"
elseif !<Input> == $51
	!<Temp> = "FlameWall"
elseif !<Input> == $52
	!<Temp> = "StaticE"
elseif !<Input> == $53
	!<Temp> = "SandStorm"
elseif !<Input> == $54
	!<Temp> = "Blizzard"
elseif !<Input> == $55
	!<Temp> = "DrainBeam"
elseif !<Input> == $56
	!<Temp> = "MeteorBlast"
elseif !<Input> == $57
	!<Temp> = "LightBeam"
elseif !<Input> == $58
	!<Temp> = "WaterBlast"
elseif !<Input> == $59
	!<Temp> = "Solidify"
elseif !<Input> == $5A
	!<Temp> = "PetalBlast"
elseif !<Input> == $5B
	!<Temp> = "AuroraFlash"
elseif !<Input> == $5C
	!<Temp> = "Boulder"
elseif !<Input> == $5D
	!<Temp> = "Corona"
elseif !<Input> == $5E
	!<Temp> = "MeteorSwarm"
elseif !<Input> == $5F
	!<Temp> = "KnockOut"
elseif !<Input> == $60
	!<Temp> = "WeirdMushroom"
elseif !<Input> == $61
	!<Temp> = "BreakerBeam"
elseif !<Input> == $62
	!<Temp> = "Shredder"
elseif !<Input> == $63
	!<Temp> = "Sledge"
elseif !<Input> == $64
	!<Temp> = "SwordRain"
elseif !<Input> == $65
	!<Temp> = "SpearRain"
elseif !<Input> == $66
	!<Temp> = "ArrowRain"
elseif !<Input> == $67
	!<Temp> = "BigBang"
elseif !<Input> == $68
	!<Temp> = "SmithyChestHeadScrow"
elseif !<Input> == $69
	!<Temp> = "SmithyChestHeadFear"
elseif !<Input> == $6A
	!<Temp> = "SmithyChestHeadMute"
elseif !<Input> == $6B
	!<Temp> = "SmithyChestHeadPoison"
elseif !<Input> == $6C
	!<Temp> = "ChainSaw"
elseif !<Input> == $FB
	!<Temp> = "SkipTurn"
else
	!<Temp> = "NULLSpell!<Input>"
endif
endmacro

macro GetAttackName(Input, Temp)
if !<Input> == $00
	!<Temp> = "StationaryAttack1"
elseif !<Input> == $01
	!<Temp> = "NormalAttack1"
elseif !<Input> == $02
	!<Temp> = "HighJumpAttack1"
elseif !<Input> == $03
	!<Temp> = "NormalAttack2"
elseif !<Input> == $04
	!<Temp> = "NormalAttack3"
elseif !<Input> == $05
	!<Temp> = "AfterImagesAttack"
elseif !<Input> == $06
	!<Temp> = "SpinAttack"
elseif !<Input> == $07
	!<Temp> = "NoAnimationAttack"
elseif !<Input> == $08
	!<Temp> = "DiveUndergroundAttack"
elseif !<Input> == $09
	!<Temp> = "ShoulderChargeAttack1"
elseif !<Input> == $0A
	!<Temp> = "LevitateAttack"
elseif !<Input> == $0B
	!<Temp> = "HighJumpAttack2"
elseif !<Input> == $0C
	!<Temp> = "TeleportAttack"
elseif !<Input> == $0D
	!<Temp> = "ShortJumpAttack"
elseif !<Input> == $0E
	!<Temp> = "CrocoCharge"
elseif !<Input> == $0F
	!<Temp> = "ShoulderChargeAttack2"
elseif !<Input> == $10
	!<Temp> = "SmallSpikeShotAttack"
elseif !<Input> == $11
	!<Temp> = "Thornet"
elseif !<Input> == $12
	!<Temp> = "LargeSpikeShotAttack"
elseif !<Input> == $13
	!<Temp> = "Funguspike"
elseif !<Input> == $14
	!<Temp> = "KnifeThrowAttack"
elseif !<Input> == $15
	!<Temp> = "ShurikenThrowAttack"
elseif !<Input> == $16
	!<Temp> = "FullHouse"
elseif !<Input> == $17
	!<Temp> = "WildCard"
elseif !<Input> == $18
	!<Temp> = "RoyalFlush"
elseif !<Input> == $19
	!<Temp> = "BombThrowAttack"
elseif !<Input> == $1A
	!<Temp> = "SpritzBomb"
elseif !<Input> == $1B
	!<Temp> = "BlackRockThrowAttack1"
elseif !<Input> == $1C
	!<Temp> = "BlackRockThrowAttack2"
elseif !<Input> == $1D
	!<Temp> = "BulletBillShootAttack"
elseif !<Input> == $1E
	!<Temp> = "Blazer"
elseif !<Input> == $1F
	!<Temp> = "OrbShotAttack"
elseif !<Input> == $20
	!<Temp> = "SmithyFingerShotAttack"
elseif !<Input> == $21
	!<Temp> = "Echofinder"
elseif !<Input> == $22
	!<Temp> = "ScrowBell"
elseif !<Input> == $23
	!<Temp> = "DoomReverb"
elseif !<Input> == $24
	!<Temp> = "SporeChimes"
elseif !<Input> == $25
	!<Temp> = "InkBlast"
elseif !<Input> == $26
	!<Temp> = "GunkBall"
elseif !<Input> == $27
	!<Temp> = "Endobubble"
elseif !<Input> == $28
	!<Temp> = "WaterdropAttack"
elseif !<Input> == $29
	!<Temp> = "SleepSauce"
elseif !<Input> == $2A
	!<Temp> = "VenomDrool"
elseif !<Input> == $2B
	!<Temp> = "MushFunk"
elseif !<Input> == $2C
	!<Temp> = "ScrowFunk"
elseif !<Input> == $2D
	!<Temp> = "Stench"
elseif !<Input> == $2E
	!<Temp> = "HammerThrowAttack"
elseif !<Input> == $2F
	!<Temp> = "FearHammerThrowAttack"
elseif !<Input> == $30
	!<Temp> = "ViroPlasm"
elseif !<Input> == $31
	!<Temp> = "PsychoPlasm"
elseif !<Input> == $32
	!<Temp> = "MuteLightBallAttack"
elseif !<Input> == $33
	!<Temp> = "SleepLightBallAttack"
elseif !<Input> == $34
	!<Temp> = "PollenNap"
elseif !<Input> == $35
	!<Temp> = "ScrowDust"
elseif !<Input> == $36
	!<Temp> = "Sporocyst"
elseif !<Input> == $37
	!<Temp> = "Toxicyst"
elseif !<Input> == $38
	!<Temp> = "ThrowBoneAttack1"
elseif !<Input> == $39
	!<Temp> = "ThrowBoneAttack2"
elseif !<Input> == $3A
	!<Temp> = "LullaBye"
elseif !<Input> == $3B
	!<Temp> = "Elegy"
elseif !<Input> == $3C
	!<Temp> = "Backfire"
elseif !<Input> == $3D
	!<Temp> = "VaVaVoom"
elseif !<Input> == $3E
	!<Temp> = "FunNRun"
elseif !<Input> == $3F
	!<Temp> = "BodySlam"
elseif !<Input> == $40
	!<Temp> = "Howl"
elseif !<Input> == $41
	!<Temp> = "Scream"
elseif !<Input> == $42
	!<Temp> = "IronMaiden"
elseif !<Input> == $43
	!<Temp> = "Fangs"
elseif !<Input> == $44
	!<Temp> = "Poison"
elseif !<Input> == $45
	!<Temp> = "CarniKiss"
elseif !<Input> == $46
	!<Temp> = "Claw"
elseif !<Input> == $47
	!<Temp> = "Grinder"
elseif !<Input> == $48
	!<Temp> = "DarkClaw"
elseif !<Input> == $49
	!<Temp> = "Scythe"
elseif !<Input> == $4A
	!<Temp> = "Sickle"
elseif !<Input> == $4B
	!<Temp> = "Deathsickle"
elseif !<Input> == $4C
	!<Temp> = "EerieJig"
elseif !<Input> == $4D
	!<Temp> = "SomnusWaltz"
elseif !<Input> == $4E
	!<Temp> = "DahliaDance"
elseif !<Input> == $4F
	!<Temp> = "Skewer"
elseif !<Input> == $50
	!<Temp> = "Pierce"
elseif !<Input> == $51
	!<Temp> = "SmithyTankHeadBulletAttack"
elseif !<Input> == $52
	!<Temp> = "Magnum"
elseif !<Input> == $53
	!<Temp> = "Psyche"
elseif !<Input> == $54
	!<Temp> = "Migraine"
elseif !<Input> == $55
	!<Temp> = "BobOmbSelfDestructAttack"
elseif !<Input> == $56
	!<Temp> = "MicrobombSelfDestructAttack"
elseif !<Input> == $57
	!<Temp> = "Multistrike"
elseif !<Input> == $58
	!<Temp> = "FlutterHush"
elseif !<Input> == $59
	!<Temp> = "GenoCloneAttack"
elseif !<Input> == $5A
	!<Temp> = "MarioCloneAttack"
elseif !<Input> == $5B
	!<Temp> = "Toadstool2Attack"
elseif !<Input> == $5C
	!<Temp> = "FearRoulette"
elseif !<Input> == $5D
	!<Temp> = "Smithy1HammerAttack"
elseif !<Input> == $5E
	!<Temp> = "StationaryAttack2"
elseif !<Input> == $5F
	!<Temp> = "Smithy2HammerAttack"
elseif !<Input> == $60
	!<Temp> = "HammerTime"
elseif !<Input> == $61
	!<Temp> = "ValorUp"
elseif !<Input> == $62
	!<Temp> = "TerrapinAttack"
elseif !<Input> == $63
	!<Temp> = "LastShot"
elseif !<Input> == $64
	!<Temp> = "BowserClawAttack"
elseif !<Input> == $65
	!<Temp> = "BowserSpikeAttack"
elseif !<Input> == $66
	!<Temp> = "BowyerLocksAButtonAttack"
elseif !<Input> == $67
	!<Temp> = "BowyerLocksYButtonAttack"
elseif !<Input> == $68
	!<Temp> = "BowyerLocksXButtonAttack"
elseif !<Input> == $69
	!<Temp> = "BowyerArrowAttack"
elseif !<Input> == $6A
	!<Temp> = "Gnight"
elseif !<Input> == $6B
	!<Temp> = "ShyguySlingshotAttack"
elseif !<Input> == $6C
	!<Temp> = "HeavyTroopaLaunchAttack"
elseif !<Input> == $6D
	!<Temp> = "Chomp"
elseif !<Input> == $6E
	!<Temp> = "GetTough"
elseif !<Input> == $6F
	!<Temp> = "MukumukuAttack1"
elseif !<Input> == $70
	!<Temp> = "MissedMe"
elseif !<Input> == $71
	!<Temp> = "MukumukuAttack2"
elseif !<Input> == $72
	!<Temp> = "LocoExpress"
elseif !<Input> == $73
	!<Temp> = "3EggShotAttack"
elseif !<Input> == $74
	!<Temp> = "1EggShotAttack"
elseif !<Input> == $75
	!<Temp> = "SelfDestructSlowAttack"
elseif !<Input> == $76
	!<Temp> = "EggbertSelfDestructAttack"
elseif !<Input> == $77
	!<Temp> = "Jinxed"
elseif !<Input> == $78
	!<Temp> = "TripleKick"
elseif !<Input> == $79
	!<Temp> = "Quicksilver"
elseif !<Input> == $7A
	!<Temp> = "BombsAway"
elseif !<Input> == $7B
	!<Temp> = "VigorUp"
elseif !<Input> == $7C
	!<Temp> = "IntroGoombaAttack"
elseif !<Input> == $7D
	!<Temp> = "SilverBullet"
elseif !<Input> == $7E
	!<Temp> = "Terrapunch"
elseif !<Input> == $7F
	!<Temp> = "ScrowFangs"
elseif !<Input> == $80
	!<Temp> = "Shaker"
elseif !<Input> == $82
	!<Temp> = "UnknownAttack82"
elseif !<Input> == $88
	!<Temp> = "UnknownAttack88"
elseif !<Input> == $B0
	!<Temp> = "UnknownAttackB0"
elseif !<Input> == $C8
	!<Temp> = "UnknownAttackC8"
elseif !<Input> == $FB
	!<Temp> = "SkipTurn"
else
	!<Temp> = "NULLAttack!<Input>"
endif
endmacro

macro GetBattleBGName(Input, Temp)
if !<Input> == $00
	!<Temp> = "ForestMaze"
elseif !<Input> == $01
	!<Temp> = "Bowyer"
elseif !<Input> == $02
	!<Temp> = "Beanstalk"
elseif !<Input> == $03
	!<Temp> = "KingCalamariCellar"
elseif !<Input> == $04
	!<Temp> = "SunkenShip"
elseif !<Input> == $05
	!<Temp> = "MolevilleMines"
elseif !<Input> == $06
	!<Temp> = "UnusedMine"
elseif !<Input> == $07
	!<Temp> = "BowsersKeep"
elseif !<Input> == $08
	!<Temp> = "CzarDragon"
elseif !<Input> == $09
	!<Temp> = "Grasslands1"
elseif !<Input> == $0A
	!<Temp> = "Mountain"
elseif !<Input> == $0B
	!<Temp> = "MushroomKingdomHouse"
elseif !<Input> == $0C
	!<Temp> = "BoosterTower"
elseif !<Input> == $0D
	!<Temp> = "MushroomKingdomCastle1"
elseif !<Input> == $0E
	!<Temp> = "UnderwaterKeroSewers"
elseif !<Input> == $0F
	!<Temp> = "MushroomKingdomCastle2"
elseif !<Input> == $10
	!<Temp> = "Exor"
elseif !<Input> == $11
	!<Temp> = "BoosterTowerBalcony"
elseif !<Input> == $12
	!<Temp> = "CountDown"
elseif !<Input> == $13
	!<Temp> = "SmithyFactory"
elseif !<Input> == $14
	!<Temp> = "BarrelVolcano"
elseif !<Input> == $15
	!<Temp> = "KeroSwers"
elseif !<Input> == $16
	!<Temp> = "NimbusCastle"
elseif !<Input> == $17
	!<Temp> = "Birdo"
elseif !<Input> == $18
	!<Temp> = "NimbusLand"
elseif !<Input> == $19
	!<Temp> = "Underground"
elseif !<Input> == $1A
	!<Temp> = "Unknown"
elseif !<Input> == $1B
	!<Temp> = "UnusedGreenhouse"
elseif !<Input> == $1C
	!<Temp> = "MushroomKingdom"
elseif !<Input> == $1D
	!<Temp> = "Chandeliers"
elseif !<Input> == $1E
	!<Temp> = "PathToBowyer"
elseif !<Input> == $1F
	!<Temp> = "LevelUpFG"
elseif !<Input> == $20
	!<Temp> = "LevelUpBG"
elseif !<Input> == $21
	!<Temp> = "Grasslands2"
elseif !<Input> == $22
	!<Temp> = "UnusedSeaCave"
elseif !<Input> == $23
	!<Temp> = "MarrymoreChapel"
elseif !<Input> == $24
	!<Temp> = "StarHill"
elseif !<Input> == $25
	!<Temp> = "Yaridovich"
elseif !<Input> == $26
	!<Temp> = "Sea"
elseif !<Input> == $27
	!<Temp> = "AxemRangers"
elseif !<Input> == $28
	!<Temp> = "DominoAndCloaker"
elseif !<Input> == $29
	!<Temp> = "BeanValleyGrasslands"
elseif !<Input> == $2A
	!<Temp> = "BelomeTemple"
elseif !<Input> == $2B
	!<Temp> = "LandsEndDesert"
elseif !<Input> == $2C
	!<Temp> = "Smithy1"
elseif !<Input> == $2D
	!<Temp> = "Smithy2"
elseif !<Input> == $2E
	!<Temp> = "JinxDojo"
elseif !<Input> == $2F
	!<Temp> = "Culex"
elseif !<Input> == $30
	!<Temp> = "FactoryGrounds"
elseif !<Input> == $31
	!<Temp> = "BeanValleyPipeRoom"
else
	!<Temp> = "NULLBattleBG!<Input>"
endif
endmacro

macro GetItemName(Input, Temp)
if !<Input> == $00
	!<Temp> = "Weapon"
elseif !<Input> == $01
	!<Temp> = "Armor"
elseif !<Input> == $02
	!<Temp> = "Accessory"
elseif !<Input> == $03
	!<Temp> = "Space1"
elseif !<Input> == $04
	!<Temp> = "Space2"
elseif !<Input> == $05
	!<Temp> = "Hammer"
elseif !<Input> == $06
	!<Temp> = "FroggieStick"
elseif !<Input> == $07
	!<Temp> = "NokNokShell"
elseif !<Input> == $08
	!<Temp> = "PunchGlove"
elseif !<Input> == $09
	!<Temp> = "FingerShot"
elseif !<Input> == $0A
	!<Temp> = "Cymbals"
elseif !<Input> == $0B
	!<Temp> = "Chomp"
elseif !<Input> == $0C
	!<Temp> = "Masher"
elseif !<Input> == $0D
	!<Temp> = "ChompShell"
elseif !<Input> == $0E
	!<Temp> = "SuperHammer"
elseif !<Input> == $0F
	!<Temp> = "HandGun"
elseif !<Input> == $10
	!<Temp> = "WhompGlove"
elseif !<Input> == $11
	!<Temp> = "SlapGlove"
elseif !<Input> == $12
	!<Temp> = "TroopaShell"
elseif !<Input> == $13
	!<Temp> = "Parasol"
elseif !<Input> == $14
	!<Temp> = "HurlyGloves"
elseif !<Input> == $15
	!<Temp> = "DoublePunch"
elseif !<Input> == $16
	!<Temp> = "RibbitStick"
elseif !<Input> == $17
	!<Temp> = "SpikedLink"
elseif !<Input> == $18
	!<Temp> = "MegaGlove"
elseif !<Input> == $19
	!<Temp> = "WarFan"
elseif !<Input> == $1A
	!<Temp> = "HandCannon"
elseif !<Input> == $1B
	!<Temp> = "StickyGlove"
elseif !<Input> == $1C
	!<Temp> = "UltraHammer"
elseif !<Input> == $1D
	!<Temp> = "SuperSlap"
elseif !<Input> == $1E
	!<Temp> = "DrillClaw"
elseif !<Input> == $1F
	!<Temp> = "StarGun"
elseif !<Input> == $20
	!<Temp> = "SonicCymbal"
elseif !<Input> == $21
	!<Temp> = "LazyShellWeapon"
elseif !<Input> == $22
	!<Temp> = "FryingPan"
elseif !<Input> == $23
	!<Temp> = "LuckyHammer"
elseif !<Input> == $24
	!<Temp> = "Spare1"
elseif !<Input> == $25
	!<Temp> = "Shirt"
elseif !<Input> == $26
	!<Temp> = "Pants"
elseif !<Input> == $27
	!<Temp> = "ThickShirt"
elseif !<Input> == $28
	!<Temp> = "ThickPants"
elseif !<Input> == $29
	!<Temp> = "MegaShirt"
elseif !<Input> == $2A
	!<Temp> = "MegaPants"
elseif !<Input> == $2B
	!<Temp> = "WorkPants"
elseif !<Input> == $2C
	!<Temp> = "MegaCape"
elseif !<Input> == $2D
	!<Temp> = "HappyShirt"
elseif !<Input> == $2E
	!<Temp> = "HappyPants"
elseif !<Input> == $2F
	!<Temp> = "HappyCape"
elseif !<Input> == $30
	!<Temp> = "HappyShell"
elseif !<Input> == $31
	!<Temp> = "PolkaDress"
elseif !<Input> == $32
	!<Temp> = "SailorShirt"
elseif !<Input> == $33
	!<Temp> = "SailorPants"
elseif !<Input> == $34
	!<Temp> = "SailorCape"
elseif !<Input> == $35
	!<Temp> = "NauticaDress"
elseif !<Input> == $36
	!<Temp> = "CourageShell"
elseif !<Input> == $37
	!<Temp> = "FuzzyShirt"
elseif !<Input> == $38
	!<Temp> = "FuzzyPants"
elseif !<Input> == $39
	!<Temp> = "FuzzyCape"
elseif !<Input> == $3A
	!<Temp> = "FuzzyDress"
elseif !<Input> == $3B
	!<Temp> = "FireShirt"
elseif !<Input> == $3C
	!<Temp> = "FirePants"
elseif !<Input> == $3D
	!<Temp> = "FireCape"
elseif !<Input> == $3E
	!<Temp> = "FireShell"
elseif !<Input> == $3F
	!<Temp> = "FireDress"
elseif !<Input> == $40
	!<Temp> = "HeroShirt"
elseif !<Input> == $41
	!<Temp> = "PrincePants"
elseif !<Input> == $42
	!<Temp> = "StarCape"
elseif !<Input> == $43
	!<Temp> = "HealShell"
elseif !<Input> == $44
	!<Temp> = "RoyalDress"
elseif !<Input> == $45
	!<Temp> = "SuperSuit"
elseif !<Input> == $46
	!<Temp> = "LazyShellArmor"
elseif !<Input> == $47
	!<Temp> = "Spare2"
elseif !<Input> == $48
	!<Temp> = "Spare3"
elseif !<Input> == $49
	!<Temp> = "Spare4"
elseif !<Input> == $4A
	!<Temp> = "ZoomShoes"
elseif !<Input> == $4B
	!<Temp> = "SafetyBadge"
elseif !<Input> == $4C
	!<Temp> = "JumpShoes"
elseif !<Input> == $4D
	!<Temp> = "SafetyRing"
elseif !<Input> == $4E
	!<Temp> = "Amulet"
elseif !<Input> == $4F
	!<Temp> = "ScroogeRing"
elseif !<Input> == $50
	!<Temp> = "ExpBooster"
elseif !<Input> == $51
	!<Temp> = "AttackScarf"
elseif !<Input> == $52
	!<Temp> = "RareScarf"
elseif !<Input> == $53
	!<Temp> = "BTubRing"
elseif !<Input> == $54
	!<Temp> = "AntidotePin"
elseif !<Input> == $55
	!<Temp> = "WakeUpPin"
elseif !<Input> == $56
	!<Temp> = "FearlessPin"
elseif !<Input> == $57
	!<Temp> = "TrueformPin"
elseif !<Input> == $58
	!<Temp> = "CoinTrick"
elseif !<Input> == $59
	!<Temp> = "GhostMedal"
elseif !<Input> == $5A
	!<Temp> = "JinxBelt"
elseif !<Input> == $5B
	!<Temp> = "Feather"
elseif !<Input> == $5C
	!<Temp> = "TroopaPin"
elseif !<Input> == $5D
	!<Temp> = "SignalRing"
elseif !<Input> == $5E
	!<Temp> = "QuartzCharm"
elseif !<Input> == $5F
	!<Temp> = "Spare5"
elseif !<Input> == $60
	!<Temp> = "Mushroom"
elseif !<Input> == $61
	!<Temp> = "MidMushroom"
elseif !<Input> == $62
	!<Temp> = "MaxMushroom"
elseif !<Input> == $63
	!<Temp> = "HoneySyrup"
elseif !<Input> == $64
	!<Temp> = "MapleSyrup"
elseif !<Input> == $65
	!<Temp> = "RoyalSyrup"
elseif !<Input> == $66
	!<Temp> = "PickMeUp"
elseif !<Input> == $67
	!<Temp> = "AbleJuice"
elseif !<Input> == $68
	!<Temp> = "Bracer"
elseif !<Input> == $69
	!<Temp> = "Energizer"
elseif !<Input> == $6A
	!<Temp> = "YoshiAde"
elseif !<Input> == $6B
	!<Temp> = "RedEssence"
elseif !<Input> == $6C
	!<Temp> = "KerokeroCola"
elseif !<Input> == $6D
	!<Temp> = "YoshiCookie"
elseif !<Input> == $6E
	!<Temp> = "PureWater"
elseif !<Input> == $6F
	!<Temp> = "SleepyBomb"
elseif !<Input> == $70
	!<Temp> = "BadMushroom"
elseif !<Input> == $71
	!<Temp> = "FireBomb"
elseif !<Input> == $72
	!<Temp> = "IceBomb"
elseif !<Input> == $73
	!<Temp> = "FlowerTab"
elseif !<Input> == $74
	!<Temp> = "FlowerJar"
elseif !<Input> == $75
	!<Temp> = "FlowerBox"
elseif !<Input> == $76
	!<Temp> = "YoshiCandy"
elseif !<Input> == $77
	!<Temp> = "FroggieDrink"
elseif !<Input> == $78
	!<Temp> = "MukuCookie"
elseif !<Input> == $79
	!<Temp> = "Elixer"
elseif !<Input> == $7A
	!<Temp> = "Megalixer"
elseif !<Input> == $7B
	!<Temp> = "SeeYa"
elseif !<Input> == $7C
	!<Temp> = "TempleKey"
elseif !<Input> == $7D
	!<Temp> = "GoodieBag"
elseif !<Input> == $7E
	!<Temp> = "EarlierTimes"
elseif !<Input> == $7F
	!<Temp> = "FreshenUp"
elseif !<Input> == $80
	!<Temp> = "RareFrogCoin"
elseif !<Input> == $81
	!<Temp> = "Wallet"
elseif !<Input> == $82
	!<Temp> = "CricketPie"
elseif !<Input> == $83
	!<Temp> = "RockCandy"
elseif !<Input> == $84
	!<Temp> = "CastleKey1"
elseif !<Input> == $85
	!<Temp> = "DebugBomb"
elseif !<Input> == $86
	!<Temp> = "CastleKey2"
elseif !<Input> == $87
	!<Temp> = "BambinoBomb"
elseif !<Input> == $88
	!<Temp> = "SheepAttack"
elseif !<Input> == $89
	!<Temp> = "CarboCookie"
elseif !<Input> == $8A
	!<Temp> = "ShinyStone"
elseif !<Input> == $8B
	!<Temp> = "DUMMY1"
elseif !<Input> == $8C
	!<Temp> = "RoomKey"
elseif !<Input> == $8D
	!<Temp> = "ElderKey"
elseif !<Input> == $8E
	!<Temp> = "ShedKey"
elseif !<Input> == $8F
	!<Temp> = "LambsLure"
elseif !<Input> == $90
	!<Temp> = "FrightBomb"
elseif !<Input> == $91
	!<Temp> = "MysteryEgg"
elseif !<Input> == $92
	!<Temp> = "BeetleBox1"
elseif !<Input> == $93
	!<Temp> = "BeetleBox2"
elseif !<Input> == $94
	!<Temp> = "LuckyJewel"
elseif !<Input> == $95
	!<Temp> = "DUMMY2"
elseif !<Input> == $96
	!<Temp> = "SopranoCard"
elseif !<Input> == $97
	!<Temp> = "AltoCard"
elseif !<Input> == $98
	!<Temp> = "TenorCard"
elseif !<Input> == $99
	!<Temp> = "Crystalline"
elseif !<Input> == $9A
	!<Temp> = "PowerBlast"
elseif !<Input> == $9B
	!<Temp> = "WiltShroom"
elseif !<Input> == $9C
	!<Temp> = "RottenMush"
elseif !<Input> == $9D
	!<Temp> = "MoldyMush"
elseif !<Input> == $9E
	!<Temp> = "Seed"
elseif !<Input> == $9F
	!<Temp> = "Fertilizer"
elseif !<Input> == $A0
	!<Temp> = "WasteBasket"
elseif !<Input> == $A1
	!<Temp> = "BigBooFlag"
elseif !<Input> == $A2
	!<Temp> = "DryBonesFlag"
elseif !<Input> == $A3
	!<Temp> = "GeaperFlag"
elseif !<Input> == $A4
	!<Temp> = "SecretGame"
elseif !<Input> == $A5
	!<Temp> = "ScrowBomb"
elseif !<Input> == $A6
	!<Temp> = "CricketJam"
elseif !<Input> == $A7
	!<Temp> = "BaneBomb"
elseif !<Input> == $A8
	!<Temp> = "DoomBomb"
elseif !<Input> == $A9
	!<Temp> = "FearBomb"
elseif !<Input> == $AA
	!<Temp> = "SleepBomb"
elseif !<Input> == $AB
	!<Temp> = "MuteBomb"
elseif !<Input> == $AC
	!<Temp> = "Fireworks"
elseif !<Input> == $AD
	!<Temp> = "Bomb"
elseif !<Input> == $AE
	!<Temp> = "BrightCard"
elseif !<Input> == $AF
	!<Temp> = "OddMushroom"
elseif !<Input> == $B0
	!<Temp> = "StarEgg"
else
	!<Temp> = "NULLItem!<Input>"
endif
endmacro

macro GetEnemyName(Input, Temp)
if !<Input> == $00
	!<Temp> = "Terrapin"
elseif !<Input> == $01
	!<Temp> = "Spikey"
elseif !<Input> == $02
	!<Temp> = "SkyTroopa"
elseif !<Input> == $03
	!<Temp> = "MadMallet"
elseif !<Input> == $04
	!<Temp> = "Shaman"
elseif !<Input> == $05
	!<Temp> = "Crook"
elseif !<Input> == $06
	!<Temp> = "Goomba"
elseif !<Input> == $07
	!<Temp> = "PiranhaPlant"
elseif !<Input> == $08
	!<Temp> = "Amanita"
elseif !<Input> == $09
	!<Temp> = "Goby"
elseif !<Input> == $0A
	!<Temp> = "Bloober"
elseif !<Input> == $0B
	!<Temp> = "BandanaRed"
elseif !<Input> == $0C
	!<Temp> = "Lakitu"
elseif !<Input> == $0D
	!<Temp> = "Birdy"
elseif !<Input> == $0E
	!<Temp> = "Pinwheel"
elseif !<Input> == $0F
	!<Temp> = "RatFunk"
elseif !<Input> == $10
	!<Temp> = "K9"
elseif !<Input> == $11
	!<Temp> = "Magmite"
elseif !<Input> == $12
	!<Temp> = "TheBigBoo"
elseif !<Input> == $13
	!<Temp> = "DryBones"
elseif !<Input> == $14
	!<Temp> = "Greaper"
elseif !<Input> == $15
	!<Temp> = "Sparky"
elseif !<Input> == $16
	!<Temp> = "Chomp"
elseif !<Input> == $17
	!<Temp> = "Pandorite"
elseif !<Input> == $18
	!<Temp> = "ShyRanger"
elseif !<Input> == $19
	!<Temp> = "BobOmb"
elseif !<Input> == $1A
	!<Temp> = "Spookum"
elseif !<Input> == $1B
	!<Temp> = "HammerBro"
elseif !<Input> == $1C
	!<Temp> = "Buzzer"
elseif !<Input> == $1D
	!<Temp> = "Ameboid"
elseif !<Input> == $1E
	!<Temp> = "Gecko"
elseif !<Input> == $1F
	!<Temp> = "Wiggler"
elseif !<Input> == $20
	!<Temp> = "Crusty"
elseif !<Input> == $21
	!<Temp> = "Magikoopa"
elseif !<Input> == $22
	!<Temp> = "Leuko"
elseif !<Input> == $23
	!<Temp> = "Jawful"
elseif !<Input> == $24
	!<Temp> = "Enigma"
elseif !<Input> == $25
	!<Temp> = "Blaster"
elseif !<Input> == $26
	!<Temp> = "Guerrilla"
elseif !<Input> == $27
	!<Temp> = "BabaYaga"
elseif !<Input> == $28
	!<Temp> = "Hobgoblin"
elseif !<Input> == $29
	!<Temp> = "Reacher"
elseif !<Input> == $2A
	!<Temp> = "Shogun"
elseif !<Input> == $2B
	!<Temp> = "OrbUser"
elseif !<Input> == $2C
	!<Temp> = "HeavyTroopa"
elseif !<Input> == $2D
	!<Temp> = "Shadow"
elseif !<Input> == $2E
	!<Temp> = "Cluster"
elseif !<Input> == $2F
	!<Temp> = "Bahamutt"
elseif !<Input> == $30
	!<Temp> = "Octolot"
elseif !<Input> == $31
	!<Temp> = "Frogog"
elseif !<Input> == $32
	!<Temp> = "Clerk"
elseif !<Input> == $33
	!<Temp> = "Gunyolk"
elseif !<Input> == $34
	!<Temp> = "Boomer"
elseif !<Input> == $35
	!<Temp> = "RemoCon"
elseif !<Input> == $36
	!<Temp> = "Snapdragon"
elseif !<Input> == $37
	!<Temp> = "Stumpet"
elseif !<Input> == $38
	!<Temp> = "Dodo2"
elseif !<Input> == $39
	!<Temp> = "Jester"
elseif !<Input> == $3A
	!<Temp> = "Artichoker"
elseif !<Input> == $3B
	!<Temp> = "Arachne"
elseif !<Input> == $3C
	!<Temp> = "Carroboscis"
elseif !<Input> == $3D
	!<Temp> = "Hippopo"
elseif !<Input> == $3E
	!<Temp> = "Mastadoom"
elseif !<Input> == $3F
	!<Temp> = "Corkpedite"
elseif !<Input> == $40
	!<Temp> = "TerraCotta"
elseif !<Input> == $41
	!<Temp> = "Spikester"
elseif !<Input> == $42
	!<Temp> = "Malakoopa"
elseif !<Input> == $43
	!<Temp> = "Pounder"
elseif !<Input> == $44
	!<Temp> = "Poundette"
elseif !<Input> == $45
	!<Temp> = "Sackit"
elseif !<Input> == $46
	!<Temp> = "GuGoomba"
elseif !<Input> == $47
	!<Temp> = "Chewy"
elseif !<Input> == $48
	!<Temp> = "Fireball"
elseif !<Input> == $49
	!<Temp> = "MrKipper"
elseif !<Input> == $4A
	!<Temp> = "FactoryChief"
elseif !<Input> == $4B
	!<Temp> = "BandanaBlue"
elseif !<Input> == $4C
	!<Temp> = "Manager"
elseif !<Input> == $4D
	!<Temp> = "Bluebird"
elseif !<Input> == $4E
	!<Temp> = "Empty1"
elseif !<Input> == $4F
	!<Temp> = "AlleyRat"
elseif !<Input> == $50
	!<Temp> = "Chow"
elseif !<Input> == $51
	!<Temp> = "Magmus"
elseif !<Input> == $52
	!<Temp> = "LilBoo"
elseif !<Input> == $53
	!<Temp> = "Vomer"
elseif !<Input> == $54
	!<Temp> = "GlumReaper"
elseif !<Input> == $55
	!<Temp> = "Pryosphere"
elseif !<Input> == $56
	!<Temp> = "ChompChomp"
elseif !<Input> == $57
	!<Temp> = "Hidon"
elseif !<Input> == $58
	!<Temp> = "SlingShy"
elseif !<Input> == $59
	!<Temp> = "RobOmb"
elseif !<Input> == $5A
	!<Temp> = "ShyGuy"
elseif !<Input> == $5B
	!<Temp> = "Ninja"
elseif !<Input> == $5C
	!<Temp> = "Stinger"
elseif !<Input> == $5D
	!<Temp> = "Goombette"
elseif !<Input> == $5E
	!<Temp> = "Geckit"
elseif !<Input> == $5F
	!<Temp> = "Jabit"
elseif !<Input> == $60
	!<Temp> = "StarCruster"
elseif !<Input> == $61
	!<Temp> = "Merlin"
elseif !<Input> == $62
	!<Temp> = "Muckle"
elseif !<Input> == $63
	!<Temp> = "Forkies"
elseif !<Input> == $64
	!<Temp> = "Gorgon"
elseif !<Input> == $65
	!<Temp> = "BigBertha"
elseif !<Input> == $66
	!<Temp> = "ChainedKong"
elseif !<Input> == $67
	!<Temp> = "Fautso"
elseif !<Input> == $68
	!<Temp> = "StawHead"
elseif !<Input> == $69
	!<Temp> = "Juju"
elseif !<Input> == $6A
	!<Temp> = "ArmoredAnt"
elseif !<Input> == $6B
	!<Temp> = "Orbison"
elseif !<Input> == $6C
	!<Temp> = "TubOTroopa"
elseif !<Input> == $6D
	!<Temp> = "Doppel"
elseif !<Input> == $6E
	!<Temp> = "Pulsar"
elseif !<Input> == $6F
	!<Temp> = "PurpleBahamutt"
elseif !<Input> == $70
	!<Temp> = "Octovader"
elseif !<Input> == $71
	!<Temp> = "Ribbite"
elseif !<Input> == $72
	!<Temp> = "Director"
elseif !<Input> == $73
	!<Temp> = "UnusedGunyolk"
elseif !<Input> == $74
	!<Temp> = "UnusedBlueBoomer"
elseif !<Input> == $75
	!<Temp> = "Puppox"
elseif !<Input> == $76
	!<Temp> = "FinkFlower"
elseif !<Input> == $77
	!<Temp> = "Lumbler"
elseif !<Input> == $78
	!<Temp> = "Springer"
elseif !<Input> == $79
	!<Temp> = "Harlequin"
elseif !<Input> == $7A
	!<Temp> = "Kriffid"
elseif !<Input> == $7B
	!<Temp> = "Spinthra"
elseif !<Input> == $7C
	!<Temp> = "Radish"
elseif !<Input> == $7D
	!<Temp> = "Crippo"
elseif !<Input> == $7E
	!<Temp> = "Mastablasta"
elseif !<Input> == $7F
	!<Temp> = "PileDriver"
elseif !<Input> == $80
	!<Temp> = "Apprentice"
elseif !<Input> == $81
	!<Temp> = "Empty2"
elseif !<Input> == $82
	!<Temp> = "Empty3"
elseif !<Input> == $83
	!<Temp> = "Empty4"
elseif !<Input> == $84
	!<Temp> = "GenoSpirit"
elseif !<Input> == $85
	!<Temp> = "SmallBird"
elseif !<Input> == $86
	!<Temp> = "BoxBoy"
elseif !<Input> == $87
	!<Temp> = "Shelly"
elseif !<Input> == $88
	!<Temp> = "SuperSpike"
elseif !<Input> == $89
	!<Temp> = "Dodo1"
elseif !<Input> == $8A
	!<Temp> = "Oerlikon"
elseif !<Input> == $8B
	!<Temp> = "Chester"
elseif !<Input> == $8C
	!<Temp> = "Body"
elseif !<Input> == $8D
	!<Temp> = "PileDriverBody"
elseif !<Input> == $8E
	!<Temp> = "Torte"
elseif !<Input> == $8F
	!<Temp> = "ShyAway"
elseif !<Input> == $90
	!<Temp> = "JinxClone"
elseif !<Input> == $91
	!<Temp> = "MachineMadeShyster"
elseif !<Input> == $92
	!<Temp> = "MachineMadeDrillBit"
elseif !<Input> == $93
	!<Temp> = "Formless"
elseif !<Input> == $94
	!<Temp> = "Mokura"
elseif !<Input> == $95
	!<Temp> = "FireCrystal"
elseif !<Input> == $96
	!<Temp> = "WaterCrystal"
elseif !<Input> == $97
	!<Temp> = "EarthCrystal"
elseif !<Input> == $98
	!<Temp> = "WindCrystal"
elseif !<Input> == $99
	!<Temp> = "MarioClone"
elseif !<Input> == $9A
	!<Temp> = "Toadstool2"
elseif !<Input> == $9B
	!<Temp> = "BowserClone"
elseif !<Input> == $9C
	!<Temp> = "GenoClone"
elseif !<Input> == $9D
	!<Temp> = "MallowClone"
elseif !<Input> == $9E
	!<Temp> = "Shyster"
elseif !<Input> == $9F
	!<Temp> = "Kinklink"
elseif !<Input> == $A0
	!<Temp> = "CaptiveToadstool"
elseif !<Input> == $A1
	!<Temp> = "HanginShy"
elseif !<Input> == $A2
	!<Temp> = "Smelter"
elseif !<Input> == $A3
	!<Temp> = "MachineMadeMack"
elseif !<Input> == $A4
	!<Temp> = "MachineMadeBowyer"
elseif !<Input> == $A5
	!<Temp> = "MachineMadeYaridovich"
elseif !<Input> == $A6
	!<Temp> = "MachineMadeAxemPink"
elseif !<Input> == $A7
	!<Temp> = "MachineMadeAxemBlack"
elseif !<Input> == $A8
	!<Temp> = "MachineMadeAxemRed"
elseif !<Input> == $A9
	!<Temp> = "MachineMadeAxemYellow"
elseif !<Input> == $AA
	!<Temp> = "MachineMadeAxemGreen"
elseif !<Input> == $AB
	!<Temp> = "IntroGoomba"
elseif !<Input> == $AC
	!<Temp> = "IntroHammerBros"
elseif !<Input> == $AD
	!<Temp> = "IntroBirdo"
elseif !<Input> == $AE
	!<Temp> = "BBBomb"
elseif !<Input> == $AF
	!<Temp> = "Magidragon"
elseif !<Input> == $B0
	!<Temp> = "Starslap"
elseif !<Input> == $B1
	!<Temp> = "Mukumuku"
elseif !<Input> == $B2
	!<Temp> = "Zeostar"
elseif !<Input> == $B3
	!<Temp> = "Jagger"
elseif !<Input> == $B4
	!<Temp> = "Chompweed"
elseif !<Input> == $B5
	!<Temp> = "SmithyTankHead"
elseif !<Input> == $B6
	!<Temp> = "SmithyBoxHead"
elseif !<Input> == $B7
	!<Temp> = "CorkpediteBody"
elseif !<Input> == $B8
	!<Temp> = "Microbomb"
elseif !<Input> == $B9
	!<Temp> = "Thwomp"
elseif !<Input> == $BA
	!<Temp> = "Grit"
elseif !<Input> == $BB
	!<Temp> = "Neosquid"
elseif !<Input> == $BC
	!<Temp> = "YaridovichMirage"
elseif !<Input> == $BD
	!<Temp> = "Helio"
elseif !<Input> == $BE
	!<Temp> = "RightEye"
elseif !<Input> == $BF
	!<Temp> = "LeftEye"
elseif !<Input> == $C0
	!<Temp> = "KnifeGuy"
elseif !<Input> == $C1
	!<Temp> = "GrateGuy"
elseif !<Input> == $C2
	!<Temp> = "Bundt"
elseif !<Input> == $C3
	!<Temp> = "Jinx1"
elseif !<Input> == $C4
	!<Temp> = "Jinx2"
elseif !<Input> == $C5
	!<Temp> = "CountDown"
elseif !<Input> == $C6
	!<Temp> = "DingALing"
elseif !<Input> == $C7
	!<Temp> = "Belome1"
elseif !<Input> == $C8
	!<Temp> = "Belome2"
elseif !<Input> == $C9
	!<Temp> = "UnusedBelome"
elseif !<Input> == $CA
	!<Temp> = "Smilax"
elseif !<Input> == $CB
	!<Temp> = "Thrax"
elseif !<Input> == $CC
	!<Temp> = "Megasmilax"
elseif !<Input> == $CD
	!<Temp> = "Birdo"
elseif !<Input> == $CE
	!<Temp> = "Eggbert"
elseif !<Input> == $CF
	!<Temp> = "AxemYellow"
elseif !<Input> == $D0
	!<Temp> = "Punchinello"
elseif !<Input> == $D1
	!<Temp> = "RightTentacles"
elseif !<Input> == $D2
	!<Temp> = "AxemRed"
elseif !<Input> == $D3
	!<Temp> = "AxemGreen"
elseif !<Input> == $D4
	!<Temp> = "KingBomb"
elseif !<Input> == $D5
	!<Temp> = "MezzoBomb"
elseif !<Input> == $D6
	!<Temp> = "Unknown"
elseif !<Input> == $D7
	!<Temp> = "Raspberry"
elseif !<Input> == $D8
	!<Temp> = "KingCalamari"
elseif !<Input> == $D9
	!<Temp> = "LeftTentacles"
elseif !<Input> == $DA
	!<Temp> = "Jinx3"
elseif !<Input> == $DB
	!<Temp> = "Zombone"
elseif !<Input> == $DC
	!<Temp> = "CzarDragon"
elseif !<Input> == $DD
	!<Temp> = "Cloaker1"
elseif !<Input> == $DE
	!<Temp> = "Domino1"
elseif !<Input> == $DF
	!<Temp> = "MadAdder"
elseif !<Input> == $E0
	!<Temp> = "Mack"
elseif !<Input> == $E1
	!<Temp> = "Bodyguard"
elseif !<Input> == $E2
	!<Temp> = "Yaridovich"
elseif !<Input> == $E3
	!<Temp> = "DrillBit"
elseif !<Input> == $E4
	!<Temp> = "AxemPink"
elseif !<Input> == $E5
	!<Temp> = "AxemBlack"
elseif !<Input> == $E6
	!<Temp> = "Bowyer"
elseif !<Input> == $E7
	!<Temp> = "Aero"
elseif !<Input> == $E8
	!<Temp> = "UnusedExorMouth"
elseif !<Input> == $E9
	!<Temp> = "Exor"
elseif !<Input> == $EA
	!<Temp> = "Smithy1"
elseif !<Input> == $EB
	!<Temp> = "Shyper"
elseif !<Input> == $EC
	!<Temp> = "SmithyBody"
elseif !<Input> == $ED
	!<Temp> = "SmithyHead"
elseif !<Input> == $EE
	!<Temp> = "SmithyMagicHead"
elseif !<Input> == $EF
	!<Temp> = "SmithyChestHead"
elseif !<Input> == $F0
	!<Temp> = "Croco1"
elseif !<Input> == $F1
	!<Temp> = "Croco2"
elseif !<Input> == $F2
	!<Temp> = "UnusedCroco"
elseif !<Input> == $F3
	!<Temp> = "EarthLink"
elseif !<Input> == $F4
	!<Temp> = "Bowser"
elseif !<Input> == $F5
	!<Temp> = "AxemRangers"
elseif !<Input> == $F6
	!<Temp> = "Booster1"
elseif !<Input> == $F7
	!<Temp> = "Booster2"
elseif !<Input> == $F8
	!<Temp> = "Snifit"
elseif !<Input> == $F9
	!<Temp> = "Johnny1"
elseif !<Input> == $FA
	!<Temp> = "Johnny2"
elseif !<Input> == $FB
	!<Temp> = "Valentina"
elseif !<Input> == $FC
	!<Temp> = "Cloaker2"
elseif !<Input> == $FD
	!<Temp> = "Domino2"
elseif !<Input> == $FE
	!<Temp> = "Candle"
elseif !<Input> == $FF
	!<Temp> = "Culex"
else
	!<Temp> = "NULLEnemy!<Input>"
endif
endmacro

macro GetMusicName(Input, Temp)
if !<Input> == $00
	!<Temp> = "Silence1"
elseif !<Input> == $01
	!<Temp> = "DodoIsComing"
elseif !<Input> == $02
	!<Temp> = "MushroomKingdom"
elseif !<Input> == $03
	!<Temp> = "FightAgainstStrongerMonster"
elseif !<Input> == $04
	!<Temp> = "YosterIsland"
elseif !<Input> == $05
	!<Temp> = "SeasideTown"
elseif !<Input> == $06
	!<Temp> = "FightAgainstMonsters"
elseif !<Input> == $07
	!<Temp> = "PipeVault"
elseif !<Input> == $08
	!<Temp> = "InvincibleStar"
elseif !<Input> == $09
	!<Temp> = "Victory"
elseif !<Input> == $0A
	!<Temp> = "InTheFlowerGarden"
elseif !<Input> == $0B
	!<Temp> = "BowsersCastle1stVisit"
elseif !<Input> == $0C
	!<Temp> = "FightAgainstBowser"
elseif !<Input> == $0D
	!<Temp> = "TheRoadIsFullOfDangers"
elseif !<Input> == $0E
	!<Temp> = "MariosPad"
elseif !<Input> == $0F
	!<Temp> = "HeresSomeWeapons"
elseif !<Input> == $10
	!<Temp> = "LetsRace"
elseif !<Input> == $11
	!<Temp> = "TadpolePond"
elseif !<Input> == $12
	!<Temp> = "RoseTown"
elseif !<Input> == $13
	!<Temp> = "RaceTraining"
elseif !<Input> == $14
	!<Temp> = "Shock"
elseif !<Input> == $15
	!<Temp> = "SadSong"
elseif !<Input> == $16
	!<Temp> = "MidasRiver"
elseif !<Input> == $17
	!<Temp> = "GotAStarPiecePart1"
elseif !<Input> == $18
	!<Temp> = "GotAStarPiecePart2"
elseif !<Input> == $19
	!<Temp> = "FightAgainstAnArmedBoss"
elseif !<Input> == $1A
	!<Temp> = "ForestMaze"
elseif !<Input> == $1B
	!<Temp> = "DungeonIsFullOfMonsters"
elseif !<Input> == $1C
	!<Temp> = "LetsPlayGeno"
elseif !<Input> == $1D
	!<Temp> = "StartSlotMenu"
elseif !<Input> == $1E
	!<Temp> = "LongLongAgo"
elseif !<Input> == $1F
	!<Temp> = "BoostersTower"
elseif !<Input> == $20
	!<Temp> = "AndMyNamesBooster"
elseif !<Input> == $21
	!<Temp> = "Moleville"
elseif !<Input> == $22
	!<Temp> = "StarHill"
elseif !<Input> == $23
	!<Temp> = "MountainRailroad"
elseif !<Input> == $24
	!<Temp> = "Explanation"
elseif !<Input> == $25
	!<Temp> = "StartOfBoosterHill"
elseif !<Input> == $26
	!<Temp> = "BoosterHill"
elseif !<Input> == $27
	!<Temp> = "Marrymore"
elseif !<Input> == $28
	!<Temp> = "NewPartner"
elseif !<Input> == $29
	!<Temp> = "SunkenShip"
elseif !<Input> == $2A
	!<Temp> = "StillTheRoadIsFullOfMonsters"
elseif !<Input> == $2B
	!<Temp> = "Silence2"
elseif !<Input> == $2C
	!<Temp> = "Sea"
elseif !<Input> == $2D
	!<Temp> = "HeartBeatingALittleFasterPart1"
elseif !<Input> == $2E
	!<Temp> = "HeartBeatingALittleFasterPart2"
elseif !<Input> == $2F
	!<Temp> = "GrateGuysCasino"
elseif !<Input> == $30
	!<Temp> = "GenoAwakens"
elseif !<Input> == $31
	!<Temp> = "Celebrational"
elseif !<Input> == $32
	!<Temp> = "NimbusLand"
elseif !<Input> == $33
	!<Temp> = "MonstroTown"
elseif !<Input> == $34
	!<Temp> = "Toadofsky"
elseif !<Input> == $35
	!<Temp> = "Silence3"
elseif !<Input> == $36
	!<Temp> = "HappyAdventureDelighfulAdventure"
elseif !<Input> == $37
	!<Temp> = "WorldMap"
elseif !<Input> == $38
	!<Temp> = "Factory"
elseif !<Input> == $39
	!<Temp> = "SwordCrashesAndStarsScatter"
elseif !<Input> == $3A
	!<Temp> = "ConversationWithCulex"
elseif !<Input> == $3B
	!<Temp> = "FightAgainstCulex"
elseif !<Input> == $3C
	!<Temp> = "VictoryAgainstCulex"
elseif !<Input> == $3D
	!<Temp> = "Valentina"
elseif !<Input> == $3E
	!<Temp> = "BarrelVolcano"
elseif !<Input> == $3F
	!<Temp> = "AxemRangersDropIn"
elseif !<Input> == $40
	!<Temp> = "TheEnd"
elseif !<Input> == $41
	!<Temp> = "Gate"
elseif !<Input> == $42
	!<Temp> = "BowsersCastle2ndVisit"
elseif !<Input> == $43
	!<Temp> = "WeaponsFactory"
elseif !<Input> == $44
	!<Temp> = "FightAgainstSmithy1"
elseif !<Input> == $45
	!<Temp> = "FightAgainstSmithy2"
elseif !<Input> == $46
	!<Temp> = "EndingPart1"
elseif !<Input> == $47
	!<Temp> = "EndingPart2"
elseif !<Input> == $48
	!<Temp> = "EndingPart3"
elseif !<Input> == $49
	!<Temp> = "EndingPart4"
else
	!<Temp> = "NULLMusic!<Input>"
endif
endmacro

macro GetEventSoundName(Input, Temp)
if !<Input> == $00
	!<Temp> = "None"
elseif !<Input> == $01
	!<Temp> = "MenuSelect"
elseif !<Input> == $02
	!<Temp> = "MenuCancel"
elseif !<Input> == $03
	!<Temp> = "MenuScroll"
elseif !<Input> == $04
	!<Temp> = "Jump"
elseif !<Input> == $05
	!<Temp> = "BlockSwitch"
elseif !<Input> == $06
	!<Temp> = "RunningWater1"
elseif !<Input> == $07
	!<Temp> = "RushingWater"
elseif !<Input> == $08
	!<Temp> = "Waterfall"
elseif !<Input> == $09
	!<Temp> = "GreenSwitch"
elseif !<Input> == $0A
	!<Temp> = "Trampoline"
elseif !<Input> == $0B
	!<Temp> = "WhooshAway"
elseif !<Input> == $0C
	!<Temp> = "Dizziness"
elseif !<Input> == $0D
	!<Temp> = "Coin"
elseif !<Input> == $0E
	!<Temp> = "Flower"
elseif !<Input> == $0F
	!<Temp> = "BirdsChirping"
elseif !<Input> == $10
	!<Temp> = "OpenDoor"
elseif !<Input> == $11
	!<Temp> = "OpenFrontGate"
elseif !<Input> == $12
	!<Temp> = "SuddenStop"
elseif !<Input> == $13
	!<Temp> = "LongFall"
elseif !<Input> == $14
	!<Temp> = "LightningBolt"
elseif !<Input> == $15
	!<Temp> = "Rumbling"
elseif !<Input> == $16
	!<Temp> = "CloseDoor"
elseif !<Input> == $17
	!<Temp> = "ClownCar"
elseif !<Input> == $18
	!<Temp> = "TappingFeet1"
elseif !<Input> == $19
	!<Temp> = "HeelClick"
elseif !<Input> == $1A
	!<Temp> = "LaughingBowser"
elseif !<Input> == $1B
	!<Temp> = "FoundAnItem"
elseif !<Input> == $1C
	!<Temp> = "PipeEntrance"
elseif !<Input> == $1D
	!<Temp> = "Alarm Clock"
elseif !<Input> == $1E
	!<Temp> = "SurprisedMonster"
elseif !<Input> == $1F
	!<Temp> = "SpinningFlower"
elseif !<Input> == $20
	!<Temp> = "UndergroundWarp"
elseif !<Input> == $21
	!<Temp> = "JumpingFish"
elseif !<Input> == $22
	!<Temp> = "Squirm"
elseif !<Input> == $23
	!<Temp> = "RunningWater2"
elseif !<Input> == $2B
	!<Temp> = "PopUpFromWater"
elseif !<Input> == $2C
	!<Temp> = "GhostFloat"
elseif !<Input> == $2D
	!<Temp> = "GoombaTaunt"
elseif !<Input> == $2E
	!<Temp> = "CrumblingNoise"
elseif !<Input> == $2F
	!<Temp> = "Snooze"
elseif !<Input> == $30
	!<Temp> = "MinecartStart"
elseif !<Input> == $31
	!<Temp> = "BigShellHit"
elseif !<Input> == $32
	!<Temp> = "WaterDroplet"
elseif !<Input> == $33
	!<Temp> = "MovingYellowSwitch"
elseif !<Input> == $34
	!<Temp> = "DeepBounce"
elseif !<Input> == $35
	!<Temp> = "Bounce"
elseif !<Input> == $36
	!<Temp> = "Goodnight"
elseif !<Input> == $37
	!<Temp> = "LoseCoins"
elseif !<Input> == $38
	!<Temp> = "ShakeHead"
elseif !<Input> == $39
	!<Temp> = "FingerSnap"
elseif !<Input> == $3A
	!<Temp> = "Insert"
elseif !<Input> == $3B
	!<Temp> = "HoveringFrogfucius"
elseif !<Input> == $3C
	!<Temp> = "Explosion"
elseif !<Input> == $3D
	!<Temp> = "DeepUhOh"
elseif !<Input> == $3E
	!<Temp> = "Boshi"
elseif !<Input> == $3F
	!<Temp> = "Yoshi"
elseif !<Input> == $40
	!<Temp> = "TadpoleApplause"
elseif !<Input> == $41
	!<Temp> = "ThwompStomp"
elseif !<Input> == $42
	!<Temp> = "KickShell"
elseif !<Input> == $43
	!<Temp> = "SwordInKeep"
elseif !<Input> == $47
	!<Temp> = "MushroomCure"
elseif !<Input> == $48
	!<Temp> = "SyrupCure"
elseif !<Input> == $49
	!<Temp> = "LouderThwompStomp"
elseif !<Input> == $4A
	!<Temp> = "BoostersTrain"
elseif !<Input> == $4B
	!<Temp> = "RocketingBlast"
elseif !<Input> == $4C
	!<Temp> = "BoostersTrainHorn"
elseif !<Input> == $4D
	!<Temp> = "BowyerMinionJumping"
elseif !<Input> == $4E
	!<Temp> = "Click1"
elseif !<Input> == $50
	!<Temp> = "Beeping"
elseif !<Input> == $51
	!<Temp> = "Star"
elseif !<Input> == $52
	!<Temp> = "ScreechingStop"
elseif !<Input> == $53
	!<Temp> = "WeirdLaugh"
elseif !<Input> == $54
	!<Temp> = "Smoked"
elseif !<Input> == $55
	!<Temp> = "Flower"
elseif !<Input> == $56
	!<Temp> = "BigBounce"
elseif !<Input> == $57
	!<Temp> = "Correct"
elseif !<Input> == $58
	!<Temp> = "Wrong"
elseif !<Input> == $59
	!<Temp> = "LitFuse"
elseif !<Input> == $5A
	!<Temp> = "Curtain"
elseif !<Input> == $5B
	!<Temp> = "TumblingBoulder"
elseif !<Input> == $5D
	!<Temp> = "JumpIntoWater"
elseif !<Input> == $5E
	!<Temp> = "FrogCoin"
elseif !<Input> == $5F
	!<Temp> = "LevelUpWithStar"
elseif !<Input> == $60
	!<Temp> = "SwingingFist"
elseif !<Input> == $61
	!<Temp> = "EngageBattle"
elseif !<Input> == $63
	!<Temp> = "TappingFeet2"
elseif !<Input> == $64
	!<Temp> = "MinecartRide"
elseif !<Input> == $65
	!<Temp> = "TerrapinAttack"
elseif !<Input> == $66
	!<Temp> = "TimeRunningOut"
elseif !<Input> == $67
	!<Temp> = "ToadstoolCrying"
elseif !<Input> == $68
	!<Temp> = "SwingingChomp"
elseif !<Input> == $69
	!<Temp> = "Surprise"
elseif !<Input> == $6A
	!<Temp> = "OffBalance"
elseif !<Input> == $6B
	!<Temp> = "DrumRoll"
elseif !<Input> == $6C
	!<Temp> = "DrumRollEnd"
elseif !<Input> == $6D
	!<Temp> = "BigShellHit"
elseif !<Input> == $6E
	!<Temp> = "StarHillStar"
elseif !<Input> == $6F
	!<Temp> = "Sleeping"
elseif !<Input> == $70
	!<Temp> = "DrainingWater"
elseif !<Input> == $71
	!<Temp> = "OpenChamberDoor"
elseif !<Input> == $75
	!<Temp> = "SpinningMonster"
elseif !<Input> == $76
	!<Temp> = "BeckoningTentacle"
elseif !<Input> == $77
	!<Temp> = "CzarDragonRoar"
elseif !<Input> == $78
	!<Temp> = "AxemRangerStrikePose"
elseif !<Input> == $79
	!<Temp> = "AxemRangerTeleport"
elseif !<Input> == $7B
	!<Temp> = "SergeantFlutterFly"
elseif !<Input> == $7C
	!<Temp> = "UnknownSound1"
elseif !<Input> == $7D
	!<Temp> = "EnterDeepWater"
elseif !<Input> == $7E
	!<Temp> = "EmergeFromDeepWater"
elseif !<Input> == $7F
	!<Temp> = "MysteryEgg"
elseif !<Input> == $80
	!<Temp> = "Floating"
elseif !<Input> == $81
	!<Temp> = "BabyYoshi"
elseif !<Input> == $82
	!<Temp> = "BigBabyYoshi"
elseif !<Input> == $84
	!<Temp> = "HonkingHorn"
elseif !<Input> == $85
	!<Temp> = "CloseHitDoor"
elseif !<Input> == $86
	!<Temp> = "Swipe"
elseif !<Input> == $87
	!<Temp> = "ImpendingBlast"
elseif !<Input> == $8F
	!<Temp> = "MetronomeUpbeatDing"
elseif !<Input> == $90
	!<Temp> = "Click2"
elseif !<Input> == $91
	!<Temp> = "BlacksmithHammerStrike"
elseif !<Input> == $92
	!<Temp> = "MachineTransform"
elseif !<Input> == $93
	!<Temp> = "Click3"
elseif !<Input> == $94
	!<Temp> = "MergeIntoYaridovich"
elseif !<Input> == $95
	!<Temp> = "SignalRing"
elseif !<Input> == $96
	!<Temp> = "TouchSaveBlock"
elseif !<Input> == $97
	!<Temp> = "CrashHit"
elseif !<Input> == $98
	!<Temp> = "DeltBlackjackCard"
elseif !<Input> == $99
	!<Temp> = "SlotMachine"
elseif !<Input> == $9A
	!<Temp> = "HitBelomeStatueMouth"
elseif !<Input> == $9B
	!<Temp> = "PostCreditsWhistle"
elseif !<Input> == $9C
	!<Temp> = "LinkFanfare"
elseif !<Input> == $9D
	!<Temp> = "DescendingFall"
elseif !<Input> == $9E
	!<Temp> = "HardLand"
elseif !<Input> == $9F
	!<Temp> = "UnknownSound2"
elseif !<Input> == $A0
	!<Temp> = "Chomp"
elseif !<Input> == $A1
	!<Temp> = "Ghost"
elseif !<Input> == $A2
	!<Temp> = "ClosingGateDoor"
else
	!<Temp> = "NULLESound!<Input>"
endif
endmacro

macro GetBattleSoundName(Input, Temp)
if !<Input> == $00
	!<Temp> = "None"
elseif !<Input> == $01
	!<Temp> = "MenuSelect"
elseif !<Input> == $02
	!<Temp> = "MenuCancel"
elseif !<Input> == $03
	!<Temp> = "MenuScroll"
elseif !<Input> == $04
	!<Temp> = "Jump"
elseif !<Input> == $05
	!<Temp> = "BirdTweet"
elseif !<Input> == $06
	!<Temp> = "StatusUp"
elseif !<Input> == $07
	!<Temp> = "Wrong"
elseif !<Input> == $08
	!<Temp> = "Dizzy"
elseif !<Input> == $09
	!<Temp> = "ArrowSling"
elseif !<Input> == $0A
	!<Temp> = "Punch"
elseif !<Input> == $0B
	!<Temp> = "Swoosh"
elseif !<Input> == $0C
	!<Temp> = "Explosion"
elseif !<Input> == $0D
	!<Temp> = "Coin"
elseif !<Input> == $0E
	!<Temp> = "GrabFlower"
elseif !<Input> == $0F
	!<Temp> = "SpikeStrike"
elseif !<Input> == $10
	!<Temp> = "Bite"
elseif !<Input> == $11
	!<Temp> = "StarGun"
elseif !<Input> == $12
	!<Temp> = "ShellKick"
elseif !<Input> == $13
	!<Temp> = "FlameWall"
elseif !<Input> == $14
	!<Temp> = "AuroraFlash"
elseif !<Input> == $15
	!<Temp> = "WingFlap"
elseif !<Input> == $16
	!<Temp> = "Electroshock"
elseif !<Input> == $17
	!<Temp> = "UnknownSound1"
elseif !<Input> == $19
	!<Temp> = "Slap1"
elseif !<Input> == $1A
	!<Temp> = "MineCartTrackScraping"
elseif !<Input> == $1B
	!<Temp> = "GetItem"
elseif !<Input> == $1C
	!<Temp> = "Flame"
elseif !<Input> == $1D
	!<Temp> = "Drain"
elseif !<Input> == $1E
	!<Temp> = "FireOrbThrow"
elseif !<Input> == $1F
	!<Temp> = "FireOrbHit"
elseif !<Input> == $20
	!<Temp> = "FireOrbFinish"
elseif !<Input> == $21
	!<Temp> = "Land"
elseif !<Input> == $22
	!<Temp> = "SpikeShot1"
elseif !<Input> == $23
	!<Temp> = "BombsAway"
elseif !<Input> == $24
	!<Temp> = "Snowy"
elseif !<Input> == $25
	!<Temp> = "ItemToss"
elseif !<Input> == $26
	!<Temp> = "HitByTossedItem"
elseif !<Input> == $27
	!<Temp> = "ClawStrike"
elseif !<Input> == $28
	!<Temp> = "K9FangHit"
elseif !<Input> == $29
	!<Temp> = "HammerHit"
elseif !<Input> == $2A
	!<Temp> = "JohnnySkewerStrike"
elseif !<Input> == $2B
	!<Temp> = "CastSpell"
elseif !<Input> == $2C
	!<Temp> = "ThunderboltSecondStrike"
elseif !<Input> == $2D
	!<Temp> = "HPRainCloud"
elseif !<Input> == $2E
	!<Temp> = "Bounce"
elseif !<Input> == $2F
	!<Temp> = "DryClunk"
elseif !<Input> == $30
	!<Temp> = "MarioPunch"
elseif !<Input> == $31
	!<Temp> = "CymbalCrash"
elseif !<Input> == $32
	!<Temp> = "TinyShellHit"
elseif !<Input> == $33
	!<Temp> = "SuperFlameHit"
elseif !<Input> == $34
	!<Temp> = "FingerShot"
elseif !<Input> == $35
	!<Temp> = "ThwompStomp"
elseif !<Input> == $36
	!<Temp> = "HammerTimeHammerHit"
elseif !<Input> == $37
	!<Temp> = "MariosHammer"
elseif !<Input> == $38
	!<Temp> = "SuperJump1upSound"
elseif !<Input> == $39
	!<Temp> = "UnknownSound2"
elseif !<Input> == $3A
	!<Temp> = "MariosShellKickUp"
elseif !<Input> == $3B
	!<Temp> = "MariosShellKickForward"
elseif !<Input> == $3C
	!<Temp> = "CymbalResonance"
elseif !<Input> == $3D
	!<Temp> = "UseItem"
elseif !<Input> == $3E
	!<Temp> = "MonsterRunAway"
elseif !<Input> == $3F
	!<Temp> = "GenoBlastIgnition"
elseif !<Input> == $40
	!<Temp> = "EggHatch"
elseif !<Input> == $41
	!<Temp> = "YoshiCantMakeCookie"
elseif !<Input> == $42
	!<Temp> = "RecoverHPOrFP"
elseif !<Input> == $43
	!<Temp> = "UnknownSound3"
elseif !<Input> == $44
	!<Temp> = "RainCloud"
elseif !<Input> == $45
	!<Temp> = "GenoPowerUp"
elseif !<Input> == $46
	!<Temp> = "GenoBeam"
elseif !<Input> == $47
	!<Temp> = "DrumRoll"
elseif !<Input> == $48
	!<Temp> = "RainCloudAppears"
elseif !<Input> == $49
	!<Temp> = "Correct"
elseif !<Input> == $4A
	!<Temp> = "UnknownSound4"
elseif !<Input> == $4B
	!<Temp> = "YoshiTalk"
elseif !<Input> == $4C
	!<Temp> = "YoshiMakeItem"
elseif !<Input> == $4D
	!<Temp> = "StatBoost"
elseif !<Input> == $4E
	!<Temp> = "TimedStatBoost"
elseif !<Input> == $4F
	!<Temp> = "Rumble"
elseif !<Input> == $50
	!<Temp> = "Hit1"
elseif !<Input> == $51
	!<Temp> = "Hit2"
elseif !<Input> == $52
	!<Temp> = "BigHit1"
elseif !<Input> == $53
	!<Temp> = "DryBonesHit"
elseif !<Input> == $54
	!<Temp> = "BigHit2"
elseif !<Input> == $55
	!<Temp> = "JinxTripleKick"
elseif !<Input> == $56
	!<Temp> = "LongFall"
elseif !<Input> == $57
	!<Temp> = "LazyShellKick"
elseif !<Input> == $58
	!<Temp> = "TickingBomb"
elseif !<Input> == $59
	!<Temp> = "EnemyDefeated"
elseif !<Input> == $5A
	!<Temp> = "UnknownSound5"
elseif !<Input> == $5C
	!<Temp> = "Fall"
elseif !<Input> == $5D
	!<Temp> = "UnknownSound6"
elseif !<Input> == $5E
	!<Temp> = "MallowsShocker"
elseif !<Input> == $5F
	!<Temp> = "BowsersCrusher"
elseif !<Input> == $60
	!<Temp> = "Boulder"
elseif !<Input> == $61
	!<Temp> = "Toss"
elseif !<Input> == $62
	!<Temp> = "Click"
elseif !<Input> == $63
	!<Temp> = "WillyWisp"
elseif !<Input> == $64
	!<Temp> = "ElectroshockSparks"
elseif !<Input> == $65
	!<Temp> = "UnknownSound7"
elseif !<Input> == $66
	!<Temp> = "StaticE"
elseif !<Input> == $67
	!<Temp> = "CrystalHits"
elseif !<Input> == $68
	!<Temp> = "Blizzard"
elseif !<Input> == $69
	!<Temp> = "RockCandy"
elseif !<Input> == $6A
	!<Temp> = "LightBeam"
elseif !<Input> == $6B
	!<Temp> = "BubblePop"
elseif !<Input> == $6C
	!<Temp> = "Howl"
elseif !<Input> == $6D
	!<Temp> = "BulletShot"
elseif !<Input> == $6E
	!<Temp> = "HugeExplosion"
elseif !<Input> == $6F
	!<Temp> = "HeavyLanding"
elseif !<Input> == $70
	!<Temp> = "Swing"
elseif !<Input> == $71
	!<Temp> = "Shot"
elseif !<Input> == $72
	!<Temp> = "SpikeyAttack"
elseif !<Input> == $73
	!<Temp> = "Hit3"
elseif !<Input> == $74
	!<Temp> = "TerrapinHit"
elseif !<Input> == $75
	!<Temp> = "UnknownSound8"
elseif !<Input> == $76
	!<Temp> = "UnknownSound9"
elseif !<Input> == $77
	!<Temp> = "MeteorSwarm"
elseif !<Input> == $78
	!<Temp> = "DeepSwallow"
elseif !<Input> == $79
	!<Temp> = "BigSwing"
elseif !<Input> == $7A
	!<Temp> = "Poisoned"
elseif !<Input> == $7B
	!<Temp> = "ChompBite1"
elseif !<Input> == $7C
	!<Temp> = "GoombaRunForward"
elseif !<Input> == $7D
	!<Temp> = "SpikeShot2"
elseif !<Input> == $7E
	!<Temp> = "BigObjectBounces"
elseif !<Input> == $7F
	!<Temp> = "WaterSplash"
elseif !<Input> == $80
	!<Temp> = "LilBooApproaches1"
elseif !<Input> == $81
	!<Temp> = "UnknownSound10"
elseif !<Input> == $82
	!<Temp> = "ValorVigorUp"
elseif !<Input> == $83
	!<Temp> = "ComeBackStarSummon"
elseif !<Input> == $84
	!<Temp> = "LittleBeep"
elseif !<Input> == $85
	!<Temp> = "Lullaby1"
elseif !<Input> == $86
	!<Temp> = "Hit4"
elseif !<Input> == $87
	!<Temp> = "Hit5"
elseif !<Input> == $88
	!<Temp> = "LilBooApproaches2"
elseif !<Input> == $89
	!<Temp> = "HeavyMachineStomp"
elseif !<Input> == $8A
	!<Temp> = "Endobubble"
elseif !<Input> == $8B
	!<Temp> = "EndobubbleEnd"
elseif !<Input> == $8C
	!<Temp> = "ComeBackStar"
elseif !<Input> == $8D
	!<Temp> = "Lullaby2"
elseif !<Input> == $8E
	!<Temp> = "UnknownSound11"
elseif !<Input> == $8F
	!<Temp> = "TossSomething"
elseif !<Input> == $90
	!<Temp> = "LightningOrb"
elseif !<Input> == $92
	!<Temp> = "Slap2"
elseif !<Input> == $94
	!<Temp> = "HandGun"
elseif !<Input> == $95
	!<Temp> = "EnemyJumpsHigh"
elseif !<Input> == $96
	!<Temp> = "TorteHits"
elseif !<Input> == $97
	!<Temp> = "Spores"
elseif !<Input> == $98
	!<Temp> = "Hit6"
elseif !<Input> == $99
	!<Temp> = "FakeDKGrowl"
elseif !<Input> == $9A
	!<Temp> = "BuzzingBee"
elseif !<Input> == $9B
	!<Temp> = "SparkyHit"
elseif !<Input> == $9C
	!<Temp> = "ChompBite2"
elseif !<Input> == $9D
	!<Temp> = "OrbAttack"
elseif !<Input> == $9E
	!<Temp> = "UnknownSound12"
elseif !<Input> == $9F
	!<Temp> = "BigDeepHit"
elseif !<Input> == $A0
	!<Temp> = "WingSlap"
elseif !<Input> == $B0
	!<Temp> = "FadeOut"
elseif !<Input> == $BC
	!<Temp> = "PetalBlast"
elseif !<Input> == $BD
	!<Temp> = "DustAttack"
elseif !<Input> == $BE
	!<Temp> = "ComeBack"
elseif !<Input> == $BF
	!<Temp> = "MonsterCall"
elseif !<Input> == $C0
	!<Temp> = "BigShellKick"
elseif !<Input> == $C1
	!<Temp> = "BigShellHit1"
elseif !<Input> == $C2
	!<Temp> = "BigShellHit2"
elseif !<Input> == $C3
	!<Temp> = "ExplosiveAttack"
elseif !<Input> == $C4
	!<Temp> = "HoveringAttack"
elseif !<Input> == $C5
	!<Temp> = "Smash"
elseif !<Input> == $C6
	!<Temp> = "IceRock"
elseif !<Input> == $C7
	!<Temp> = "ArrowRain"
elseif !<Input> == $C8
	!<Temp> = "SpearRain"
elseif !<Input> == $C9
	!<Temp> = "SwordRain"
elseif !<Input> == $CA
	!<Temp> = "Corona1"
elseif !<Input> == $CB
	!<Temp> = "Corona2"
elseif !<Input> == $CC
	!<Temp> = "Chomping"
elseif !<Input> == $CD
	!<Temp> = "Jinxed"
elseif !<Input> == $CE
	!<Temp> = "MonsterSwing"
elseif !<Input> == $CF
	!<Temp> = "MonsterTaunt"
elseif !<Input> == $D0
	!<Temp> = "SmithyLightUp"
elseif !<Input> == $D1
	!<Temp> = "SmithyTransform"
elseif !<Input> == $D2
	!<Temp> = "BoosterTrainHorn"
else
	!<Temp> = "NULLBSound!<Input>"
endif
endmacro

macro GetWorldMapName(Input, Temp)
if !<Input> == $00
	!<Temp> = "BowsersDomain"
elseif !<Input> == $01
	!<Temp> = "MushroomKingdom "
elseif !<Input> == $02
	!<Temp> = "ForestMaze"
elseif !<Input> == $03
	!<Temp> = "Moleville"
elseif !<Input> == $04
	!<Temp> = "Seaside"
elseif !<Input> == $05
	!<Temp> = "LandsEnd"
elseif !<Input> == $06
	!<Temp> = "LandsEndCopy"
elseif !<Input> == $07
	!<Temp> = "NimbusLand"
elseif !<Input> == $08
	!<Temp> = "YosterIsle"
else
	!<Temp> = "NULLWorldMap!<Input>"
endif
endmacro

macro GetWorldMapPointName(Input, Temp)
if !<Input> == $00
	!<Temp> = "ToMariosPad1"
elseif !<Input> == $01
	!<Temp> = "BowsersKeep1"
elseif !<Input> == $02
	!<Temp> = "ToMariosPad2"
elseif !<Input> == $03
	!<Temp> = "VistaHill"
elseif !<Input> == $04
	!<Temp> = "BowsersKeep2"
elseif !<Input> == $05
	!<Temp> = "Gate"
elseif !<Input> == $06
	!<Temp> = "ToNimbusLand"
elseif !<Input> == $07
	!<Temp> = "ToBowsersKeepMKSide"
elseif !<Input> == $08
	!<Temp> = "MariosPad"
elseif !<Input> == $09
	!<Temp> = "MushroomWay"
elseif !<Input> == $0A
	!<Temp> = "MushroomKingdom"
elseif !<Input> == $0B
	!<Temp> = "BanditsWay"
elseif !<Input> == $0C
	!<Temp> = "ToKeroSewers"
elseif !<Input> == $0D
	!<Temp> = "ToMushroomKingdom"
elseif !<Input> == $0E
	!<Temp> = "KeroSewers"
elseif !<Input> == $0F
	!<Temp> = "MidasRiver"
elseif !<Input> == $10
	!<Temp> = "TadpolePond"
elseif !<Input> == $11
	!<Temp> = "RoseWay"
elseif !<Input> == $12
	!<Temp> = "RoseTown"
elseif !<Input> == $13
	!<Temp> = "ForestMaze"
elseif !<Input> == $14
	!<Temp> = "PipeVault"
elseif !<Input> == $15
	!<Temp> = "ToYosterIsle"
elseif !<Input> == $16
	!<Temp> = "ToMoleville"
elseif !<Input> == $17
	!<Temp> = "ToPipeVault"
elseif !<Input> == $18
	!<Temp> = "Moleville"
elseif !<Input> == $19
	!<Temp> = "BoosterPass"
elseif !<Input> == $1A
	!<Temp> = "BoosterTower"
elseif !<Input> == $1B
	!<Temp> = "BoosterHill"
elseif !<Input> == $1C
	!<Temp> = "Marrymore"
elseif !<Input> == $1D
	!<Temp> = "ToStarHill"
elseif !<Input> == $1E
	!<Temp> = "ToMarrymore"
elseif !<Input> == $1F
	!<Temp> = "StarHill"
elseif !<Input> == $20
	!<Temp> = "SeasideTown"
elseif !<Input> == $21
	!<Temp> = "Sea"
elseif !<Input> == $22
	!<Temp> = "SunkenShip"
elseif !<Input> == $23
	!<Temp> = "ToLandsEnd"
elseif !<Input> == $24
	!<Temp> = "ToSeasideTown"
elseif !<Input> == $25
	!<Temp> = "LandsEnd"
elseif !<Input> == $26
	!<Temp> = "MonstroTown"
elseif !<Input> == $27
	!<Temp> = "BeanValley"
elseif !<Input> == $28
	!<Temp> = "GrateGuysCasino"
elseif !<Input> == $29
	!<Temp> = "ToNimbusLand"
elseif !<Input> == $2A
	!<Temp> = "ToSeasideTownCopy"
elseif !<Input> == $2B
	!<Temp> = "LandsEndCopy"
elseif !<Input> == $2C
	!<Temp> = "MonstroTownCopy"
elseif !<Input> == $2D
	!<Temp> = "BeanValleyCopy"
elseif !<Input> == $2E
	!<Temp> = "GrateGuysCasinoCopy"
elseif !<Input> == $2F
	!<Temp> = "ToNimbusLandCopy"
elseif !<Input> == $30
	!<Temp> = "ToBeanValley"
elseif !<Input> == $31
	!<Temp> = "NimbusLand"
elseif !<Input> == $32
	!<Temp> = "BarrelVolcano"
elseif !<Input> == $33
	!<Temp> = "ToBowsersKeepNLSide"
elseif !<Input> == $34
	!<Temp> = "YosterIsle"
elseif !<Input> == $35
	!<Temp> = "ToPipeVault"
elseif !<Input> == $36
	!<Temp> = "CoalMines"
elseif !<Input> == $37
	!<Temp> = "Factory"
else
	!<Temp> = "NULLWorldMapPoint!<Input>"
endif
endmacro

macro GetWorldMapAreaName(Input, Temp)
if !<Input> == $00
	!<Temp> = "TalkToExor"
elseif !<Input> == $01
	!<Temp> = "MariosPad"
elseif !<Input> == $02
	!<Temp> = "MushroomWay"
elseif !<Input> == $03
	!<Temp> = "MushroomKingdom"
elseif !<Input> == $04
	!<Temp> = "BanditsWay"
elseif !<Input> == $05
	!<Temp> = "KeroSewers"
elseif !<Input> == $06
	!<Temp> = "MidasRiver"
elseif !<Input> == $07
	!<Temp> = "TadpolePond"
elseif !<Input> == $08
	!<Temp> = "PipeVault"
elseif !<Input> == $09
	!<Temp> = "RoseWay"
elseif !<Input> == $0A
	!<Temp> = "RoseTown"
elseif !<Input> == $0B
	!<Temp> = "ForestMaze"
elseif !<Input> == $0C
	!<Temp> = "YosterIsle"
elseif !<Input> == $0D
	!<Temp> = "Moleville"
elseif !<Input> == $0E
	!<Temp> = "BoosterPass"
elseif !<Input> == $0F
	!<Temp> = "BoosterTower"
elseif !<Input> == $10
	!<Temp> = "Marrymore"
elseif !<Input> == $11
	!<Temp> = "StarHill"
elseif !<Input> == $12
	!<Temp> = "SeasideTown"
elseif !<Input> == $13
	!<Temp> = "Sea"
elseif !<Input> == $14
	!<Temp> = "SunkenShip"
elseif !<Input> == $15
	!<Temp> = "LandsEnd"
elseif !<Input> == $16
	!<Temp> = "MonstroTown"
elseif !<Input> == $17
	!<Temp> = "BeanValley"
elseif !<Input> == $18
	!<Temp> = "NimbusLand"
elseif !<Input> == $19
	!<Temp> = "BarrelVolcano"
elseif !<Input> == $1A
	!<Temp> = "VistaHill"
elseif !<Input> == $1B
	!<Temp> = "BoosterHill"
elseif !<Input> == $1C
	!<Temp> = "BowsersKeep2ndVisit"
elseif !<Input> == $1D
	!<Temp> = "Gate"
elseif !<Input> == $1E
	!<Temp> = "GrateGuysCasino"
elseif !<Input> == $1F
	!<Temp> = "DebugRoom"
else
	!<Temp> = "NULLWorldMapArea!<Input>"
endif
endmacro

macro GetBattleEventName(Input, Temp)
if !<Input> == $00
	!<Temp> = "MallowHitsCroco"
elseif !<Input> == $01
	!<Temp> = "KinklinkFails"
elseif !<Input> == $02
	!<Temp> = "BelomeSwallowsMallow"
elseif !<Input> == $03
	!<Temp> = "UnknownEvent1"
elseif !<Input> == $04
	!<Temp> = "MackJumpsOffScreen"
elseif !<Input> == $05
	!<Temp> = "MackReturns"
elseif !<Input> == $06
	!<Temp> = "BelomeSpitsOutMallow"
elseif !<Input> == $07
	!<Temp> = "UnknownEvent2"
elseif !<Input> == $08
	!<Temp> = "UnknownEvent3"
elseif !<Input> == $09
	!<Temp> = "PunchinelloSummonsBobOmbs"
elseif !<Input> == $0A
	!<Temp> = "PunchinelloSummonsMezzoBombs"
elseif !<Input> == $0B
	!<Temp> = "PunchinelloSummonsKingBomb"
elseif !<Input> == $0C
	!<Temp> = "UnknownEvent4"
elseif !<Input> == $0D
	!<Temp> = "UnknownEvent5"
elseif !<Input> == $0E
	!<Temp> = "IntroPunchinelloFight"
elseif !<Input> == $0F
	!<Temp> = "CrocoStealsItems"
elseif !<Input> == $10
	!<Temp> = "CrocoReturnsItems"
elseif !<Input> == $11
	!<Temp> = "IntroKnifeAndGrateGuyFight"
elseif !<Input> == $12
	!<Temp> = "KnifeAndGrateGuyTeamUp"
elseif !<Input> == $13
	!<Temp> = "KnifeAndGrateGuySeparate"
elseif !<Input> == $14
	!<Temp> = "MarioAndCoJumpOffBalcony"
elseif !<Input> == $15
	!<Temp> = "JohnnyChallengesMario"
elseif !<Input> == $16
	!<Temp> = "YaridovichMirageAttack"
elseif !<Input> == $17
	!<Temp> = "YaridovichMirageDestroyed"
elseif !<Input> == $18
	!<Temp> = "MachineMadeYaridovichMultiplier"
elseif !<Input> == $19
	!<Temp> = "DrillBit"
elseif !<Input> == $1A
	!<Temp> = "IntroTentaclesRise"
elseif !<Input> == $1B
	!<Temp> = "BeatTentacleSet1"
elseif !<Input> == $1C
	!<Temp> = "BeatTentacleSet2"
elseif !<Input> == $1D
	!<Temp> = "JumpDownKingCalamariHole"
elseif !<Input> == $1E
	!<Temp> = "JumpUpKingCalamariHole"
elseif !<Input> == $1F
	!<Temp> = "BundtMoved1"
elseif !<Input> == $20
	!<Temp> = "BundtMoved2"
elseif !<Input> == $21
	!<Temp> = "CandlesLightUpOnBundt"
elseif !<Input> == $22
	!<Temp> = "BlowCandlesOut"
elseif !<Input> == $23
	!<Temp> = "RaspberryBeatenAndEaten"
elseif !<Input> == $24
	!<Temp> = "TentacleThrowsCharacter"
elseif !<Input> == $25
	!<Temp> = "IntroMarioThrowsHammersAtTroopa"
elseif !<Input> == $26
	!<Temp> = "IntroMarioStompsGoomba"
elseif !<Input> == $27
	!<Temp> = "IntroMallowUsesThunderbolt"
elseif !<Input> == $28
	!<Temp> = "IntroGenoAttacks"
elseif !<Input> == $29
	!<Temp> = "IntroGenoUsesGenoBeam"
elseif !<Input> == $2A
	!<Temp> = "BBBombsExplode"
elseif !<Input> == $2B
	!<Temp> = "TimedHitsTutorial"
elseif !<Input> == $2C
	!<Temp> = "CzarDragonDies"
elseif !<Input> == $2D
	!<Temp> = "ZomboneDies"
elseif !<Input> == $2E
	!<Temp> = "CzarDragonSummonsHelios"
elseif !<Input> == $2F
	!<Temp> = "UnknownEvent6"
elseif !<Input> == $30
	!<Temp> = "DodoCarriesOffMiddleCharacter"
elseif !<Input> == $31
	!<Temp> = "DodoLeavesBattle"
elseif !<Input> == $32
	!<Temp> = "DodoReturns"
elseif !<Input> == $33
	!<Temp> = "ValentinaDefeated"
elseif !<Input> == $34
	!<Temp> = "IntroDominoAndCloaker"
elseif !<Input> == $35
	!<Temp> = "DominoTeamsUpWithMadAdder"
elseif !<Input> == $36
	!<Temp> = "CloakerTeamsUpWithEarthLink"
elseif !<Input> == $37
	!<Temp> = "ShyAwayWatersSmilax1"
elseif !<Input> == $38
	!<Temp> = "ShyAwayWatersSmilax2"
elseif !<Input> == $39
	!<Temp> = "ShyAwayWatersSmilax3"
elseif !<Input> == $3A
	!<Temp> = "ThraxIsThere"
elseif !<Input> == $3B
	!<Temp> = "BelomeConfrontsCharacter"
elseif !<Input> == $3C
	!<Temp> = "BelomeClonesSomeone"
elseif !<Input> == $3D
	!<Temp> = "OnlyMario"
elseif !<Input> == $3E
	!<Temp> = "AxemRangersIntro"
elseif !<Input> == $3F
	!<Temp> = "AxemPinkQuits"
elseif !<Input> == $40
	!<Temp> = "AxemBlackQuits"
elseif !<Input> == $41
	!<Temp> = "AxemYellowQuits"
elseif !<Input> == $42
	!<Temp> = "AxemGreenQuits"
elseif !<Input> == $43
	!<Temp> = "AxemRangersGroupFormation"
elseif !<Input> == $44
	!<Temp> = "AxemRedQuits"
elseif !<Input> == $45
	!<Temp> = "AxemRangersDefeated"
elseif !<Input> == $46
	!<Temp> = "UnknownEvent7"
elseif !<Input> == $47
	!<Temp> = "JinxTripleKick"
elseif !<Input> == $48
	!<Temp> = "JinxQuicksilver"
elseif !<Input> == $49
	!<Temp> = "JinxBombsAway"
elseif !<Input> == $4A
	!<Temp> = "CulexSummonsCrystals"
elseif !<Input> == $4B
	!<Temp> = "FormlessChangesForm"
elseif !<Input> == $4C
	!<Temp> = "BoomerDefeated"
elseif !<Input> == $4D
	!<Temp> = "ScreenFlashesWhite1"
elseif !<Input> == $4E
	!<Temp> = "DodoExitsBattle"
elseif !<Input> == $4F
	!<Temp> = "MagikoopaSummonsMonster"
elseif !<Input> == $50
	!<Temp> = "NoOneThere"
elseif !<Input> == $51
	!<Temp> = "ExorDefeated"
elseif !<Input> == $52
	!<Temp> = "Smithy1Defeated"
elseif !<Input> == $53
	!<Temp> = "ScreenFlashesWhite2"
elseif !<Input> == $54
	!<Temp> = "ScreenFlashesWhite3"
elseif !<Input> == $55
	!<Temp> = "FearRoulette"
elseif !<Input> == $56
	!<Temp> = "SmelterPoursLiquid"
elseif !<Input> == $57
	!<Temp> = "SmithyTransformsIntoTank"
elseif !<Input> == $58
	!<Temp> = "SmithyTransformsIntoWizard"
elseif !<Input> == $59
	!<Temp> = "SmithyTransformsIntoChest"
elseif !<Input> == $5A
	!<Temp> = "SmithyTransformsIntoBox"
elseif !<Input> == $5B
	!<Temp> = "SmithyHeadFades"
elseif !<Input> == $5C
	!<Temp> = "BirdoAppears"
elseif !<Input> == $5D
	!<Temp> = "BeamOfLightFormsAroundSmithy"
elseif !<Input> == $5E
	!<Temp> = "PunchinellosBombsExplodeIfAlive"
elseif !<Input> == $5F
	!<Temp> = "BombsExplode"
elseif !<Input> == $60
	!<Temp> = "UnknownEvent8"
elseif !<Input> == $61
	!<Temp> = "SmithyWaitsBeforeHeadTransformation"
elseif !<Input> == $62
	!<Temp> = "SmithyDefeated"
elseif !<Input> == $64
	!<Temp> = "EarthlinkOrMadAdderDefeated"
elseif !<Input> == $65
	!<Temp> = "MagikoopaIsThere"
else
	!<Temp> = "NULLBattleEvent!<Input>"
endif
endmacro

macro GetBSIfCommandName(Input1, Input2, Input3, Temp1, Temp2, Temp3)
!TEMP4 = 0
if !<Input1> == $01
	if !<Input2> == $02
		!<Temp2> = "Attack"
	elseif !<Input2> == $03
		!<Temp2> = "Special"
	elseif !<Input2> == $04
		!<Temp2> = "Item"
	else
		!<Temp2> = "NULL!<Input2>"
	endif
	if !<Input3> == $02
		!<Temp3> = "Attack"
	elseif !<Input3> == $03
		!<Temp3> = "Special"
	elseif !<Input3> == $04
		!<Temp3> = "Item"
	else
		!<Temp3> = "NULL!<Input3>"
	endif
	!<Temp1> = "EnemyHitByCommandXXOrYY"
elseif !<Input1> == $02
	%GetSpellName(<Input2>, <Temp2>)
	%GetSpellName(<Input3>, <Temp3>)
	!<Temp1> = "EnemyHitBySpellXXOrYY"
elseif !<Input1> == $03
	%GetItemName(<Input2>, <Temp2>)
	%GetItemName(<Input3>, <Temp3>)
	!<Temp1> = "EnemyHitByItemXXOrYY"
elseif !<Input1> == $04
	!TEMP4 = 2
	%GetElementName(<Input2>, <Temp2>)
	!<Temp3> = !<Input3>
	!<Temp1> = "EnemyHitByElementXX"
elseif !<Input1> == $05
	!TEMP4 = 3
	!<Temp2> = !<Input2>
	!<Temp3> = !<Input3>
	!<Temp1> = "EnemyHit"
elseif !<Input1> == $06
	!TEMP4 = 2
	%GetTargetName(<Input2>, <Temp2>)
	!<Temp3> = !<Input3>
	!<Temp1> = "TargetXXHPIsBelowYY"
elseif !<Input1> == $07
	!TEMP4 = 3
	!<Temp2> = !<Input2>
	!<Temp3> = !<Input3>
	!<Temp1> = "HPIsBelowXXXX"
elseif !<Input1> == $08
	%GetTargetName(<Input2>, <Temp2>)
	%GetStatusName(<Input3>, <Temp3>)
	!<Temp1> = "TargetXXIsAffectedByStatusYY"
elseif !<Input1> == $09
	%GetTargetName(<Input2>, <Temp2>)
	%GetStatusName(<Input3>, <Temp3>)
	!<Temp1> = "TargetXXIsNotAffectedByStatusYY"
elseif !<Input1> == $0A
	!TEMP4 = 3
	!<Temp2> = !<Input2>
	!<Temp3> = !<Input3>
	!<Temp1> = "XXTurnsHavePassed"
elseif !<Input1> == $0C
	!TEMP4 = 3
	!<Temp2> = !<Input2>
	!<Temp3> = !<Input3>
	!<Temp1> = "VariableXXLessThanYY"
elseif !<Input1> == $0D
	!TEMP4 = 3
	!<Temp2> = !<Input2>
	!<Temp3> = !<Input3>
	!<Temp1> = "VariableXXGreaterThanOrEqualToYY"
elseif !<Input1> == $10
	if !<Input2> == $00
		!<Temp2> = "Alive"
	else
		!<Temp2> = "Dead"
	endif
	%GetTargetName(<Input3>, <Temp3>)
	!<Temp1> = "TargetYYIs"
elseif !<Input1> == $11
	!TEMP4 = 3
	!<Temp2> = !<Input2>
	!<Temp3> = !<Input3>
	!<Temp1> = "VariableXXBitsYYSet"
elseif !<Input1> == $12
	!TEMP4 = 3
	!<Temp2> = !<Input2>
	!<Temp3> = !<Input3>
	!<Temp1> = "VariableXXBitsYYClear"
elseif !<Input1> == $13
	!TEMP4 = 3
	!<Temp2> = !<Input2>
	!<Temp3> = !<Input3>
	!<Temp1> = "MonsterInFormationXX"
elseif !<Input1> == $14
	!TEMP4 = 3
	!<Temp2> = !<Input2>
	!<Temp3> = !<Input3>
	!<Temp1> = "OnlyMonsterRemaining"
else
	!<Temp1> = "NULLIfCommand!<Input1>_!<Input2>_!<Input3>"
endif
endmacro

macro GetElementName(Input, Temp)
if !<Input> == $10
	!<Temp> = "Ice"
elseif !<Input> == $20
	!<Temp> = "Electricity"
elseif !<Input> == $40
	!<Temp> = "Fire"
elseif !<Input> == $80
	!<Temp> = "Earth"
else
	!<Temp> = "NULLElement!<Input>"
endif
endmacro

macro GetStatusName(Input, Temp)
if !<Input> == $00
	!<Temp> = "None"
elseif !<Input> == $01
	!<Temp> = "Mute"
elseif !<Input> == $02
	!<Temp> = "Sleep"
elseif !<Input> == $04
	!<Temp> = "Poison"
elseif !<Input> == $08
	!<Temp> = "Fear"
elseif !<Input> == $0F
	!<Temp> = "MuteSleepPoisonOrFear"
elseif !<Input> == $10
	!<Temp> = "Confusion"
elseif !<Input> == $20
	!<Temp> = "Mushroom"
elseif !<Input> == $40
	!<Temp> = "Scarecrow"
elseif !<Input> == $80
	!<Temp> = "RedEssence"
else
	!<Temp> = "NULLStatus!<Input>"
endif
endmacro

macro GetTargetName(Input, Temp)
if !<Input> == $00
	!<Temp> = "Mario"
elseif !<Input> == $01
	!<Temp> = "Toadstool"
elseif !<Input> == $02
	!<Temp> = "Bowser"
elseif !<Input> == $03
	!<Temp> = "Geno"
elseif !<Input> == $04
	!<Temp> = "Mallow"
elseif !<Input> == $10
	!<Temp> = "Slot1Char"
elseif !<Input> == $11
	!<Temp> = "Slot2Char"
elseif !<Input> == $12
	!<Temp> = "Slot3Char"
elseif !<Input> == $13
	!<Temp> = "Monster1"
elseif !<Input> == $14
	!<Temp> = "Monster2"
elseif !<Input> == $15
	!<Temp> = "Monster3"
elseif !<Input> == $16
	!<Temp> = "Monster4"
elseif !<Input> == $17
	!<Temp> = "Monster5"
elseif !<Input> == $18
	!<Temp> = "Monster6"
elseif !<Input> == $19
	!<Temp> = "Monster7"
elseif !<Input> == $1A
	!<Temp> = "Monster8"
elseif !<Input> == $1B
	!<Temp> = "Self"
elseif !<Input> == $1C
	!<Temp> = "AllAlliesExceptSelf"
elseif !<Input> == $1D
	!<Temp> = "RandomAllyExceptSelf"
elseif !<Input> == $1E
	!<Temp> = "AllAlliesAndSelf"
elseif !<Input> == $1F
	!<Temp> = "RandomAllyOrSelf"
elseif !<Input> == $23
	!<Temp> = "AllOpponents"
elseif !<Input> == $24
	!<Temp> = "OneOrMoreOpponents"
elseif !<Input> == $25
	!<Temp> = "RandomOpponent"
elseif !<Input> == $27
	!<Temp> = "OneOrMoreAllies"
elseif !<Input> == $28
	!<Temp> = "Monster1Copy"
elseif !<Input> == $29
	!<Temp> = "Monster2Copy"
elseif !<Input> == $2A
	!<Temp> = "Monster3Copy"
elseif !<Input> == $2B
	!<Temp> = "Monster4Copy"
elseif !<Input> == $2C
	!<Temp> = "Monster5Copy"
elseif !<Input> == $2D
	!<Temp> = "Monster6Copy"
elseif !<Input> == $2E
	!<Temp> = "Monster7Copy"
elseif !<Input> == $2F
	!<Temp> = "Monster8Copy"
else
	!<Temp> = "NULLTarget!<Input>"
endif
endmacro

macro YesOrNoChoiceName(Input, Temp)
if !<Input> == $00
	!<Temp> = "Yes"
elseif !<Input> == $01
	!<Temp> = "No"
else
	!<Temp> = "NULLYesNoChoice!<Input>"
endif
endmacro

macro IncOrDecChoiceName(Input, Temp)
if !<Input> == $00
	!<Temp> = "Increment"
elseif !<Input> == $01
	!<Temp> = "Decrement"
else
	!<Temp> = "NULLIncOrDecChoice!<Input>"
endif
endmacro

macro SetOrClearBitsChoiceName(Input, Temp)
if !<Input> == $00
	!<Temp> = "SetBits"
elseif !<Input> == $01
	!<Temp> = "ClearBits"
else
	!<Temp> = "NULLSetOrClearBitsChoice!<Input>"
endif
endmacro

macro RemoveOrCallTargetChoiceName(Input, Temp)
if !<Input> == $00
	!<Temp> = "RemoveTarget"
elseif !<Input> == $01
	!<Temp> = "CallTarget"
else
	!<Temp> = "NULLRemoveOrCallTargetChoice!<Input>"
endif
endmacro

macro PlayerCommandChoiceName(Input, Temp)
if !<Input> == $00
	!<Temp> = "NoCommand"
elseif !<Input> == $01
	!<Temp> = "AttackCommand"
elseif !<Input> == $02
	!<Temp> = "SpecialCommand"
elseif !<Input> == $04
	!<Temp> = "ItemCommand"
else
	!<Temp> = "NULLPlayerCommandChoice!<Input>"
endif
endmacro

macro TakeOrReturnItemsChoiceName(Input, Temp)
if !<Input> == $00
	!<Temp> = "TakeItems"
elseif !<Input> == $01
	!<Temp> = "ReturnItems"
else
	!<Temp> = "NULLPlayerCommandChoice!<Input>"
endif
endmacro

macro EnableOrDisableChoiceName(Input, Temp)
if !<Input> == $00
	!<Temp> = "Enable"
elseif !<Input> == $01
	!<Temp> = "Disable"
else
	!<Temp> = "NULLEnableOrDisableChoice!<Input>"
endif
endmacro

macro ASCommand63OptionName(Input, Temp)
if !<Input> == $00
	!<Temp> = "Attack"
elseif !<Input> == $01
	!<Temp> = "Spell"
elseif !<Input> == $02
	!<Temp> = "Item"
else
	!<Temp> = "NULLCommandName!<Input>"
endif
endmacro