---@class BinaryFieldUnit
local FieldUnit = {}

FieldUnit.AIPlacementRadius = {value_id = "uabr", value_type = 'real'}
FieldUnit.AIPlacementType = {value_id = "uabt", value_type = 'string'}
FieldUnit.AllowCustomTeamColor = {value_id = "utcc", value_type = 'bool'}
FieldUnit.AnimationBlendTimeseconds = {value_id = "uble", value_type = 'real'}
FieldUnit.AnimationCastBackswing = {value_id = "ucbs", value_type = 'real'}
FieldUnit.AnimationCastPoint = {value_id = "ucpt", value_type = 'real'}
FieldUnit.AnimationRunSpeed = {value_id = "urun", value_type = 'real'}
FieldUnit.AnimationWalkSpeed = {value_id = "uwal", value_type = 'real'}
--- 'Ethereal', 'Flesh', 'Wood', 'Stone', 'Metal'
FieldUnit.ArmorSoundType = {value_id = "uarm", value_type = 'string'}
--- 'normal', 'small', 'medium', 'large', 'fort', 'hero', 'divine', 'none'
FieldUnit.ArmorType = {value_id = "udty", value_type = 'string'}
FieldUnit.ArtSpecial = {value_id = "uspa", value_type = 'string'}
FieldUnit.ArtTarget = {value_id = "utaa", value_type = 'string'}
FieldUnit.Attack1 = {}
FieldUnit.Attack1.AnimationBackswingPoint = {value_id = "ubs1", value_type = 'real'}
FieldUnit.Attack1.AnimationDamagePoint = {value_id = "udp1", value_type = 'real'}
FieldUnit.Attack1.AreaofEffectFullDamage = {value_id = "ua1f", value_type = 'int'}
FieldUnit.Attack1.AreaofEffectMediumDamage = {value_id = "ua1h", value_type = 'int'}
FieldUnit.Attack1.AreaofEffectSmallDamage = {value_id = "ua1q", value_type = 'int'}
FieldUnit.Attack1.AreaofEffectTargets = {value_id = "ua1p", value_type = 'string'}
--- 'unknown', 'normal', 'pierce', 'siege', 'spells', 'chaos', 'magic', 'hero'
FieldUnit.Attack1.AttackType = {value_id = "ua1t", value_type = 'string'}
FieldUnit.Attack1.CooldownTime = {value_id = "ua1c", value_type = 'real'}
FieldUnit.Attack1.DamageBase = {value_id = "ua1b", value_type = 'int'}
FieldUnit.Attack1.DamageFactorMedium = {value_id = "uhd1", value_type = 'real'}
FieldUnit.Attack1.DamageFactorSmall = {value_id = "uqd1", value_type = 'real'}
FieldUnit.Attack1.DamageLossFactor = {value_id = "udl1", value_type = 'real'}
FieldUnit.Attack1.DamageSidesperDie = {value_id = "ua1s", value_type = 'int'}
FieldUnit.Attack1.DamageSpillDistance = {value_id = "usd1", value_type = 'real'}
FieldUnit.Attack1.DamageSpillRadius = {value_id = "usr1", value_type = 'real'}
FieldUnit.Attack1.DamageUpgradeAmount = {value_id = "udu1", value_type = 'int'}
FieldUnit.Attack1.DamageDice = {value_id = "ua1d", value_type = 'int'}
FieldUnit.Attack1.MaximumTargets = {value_id = "utc1", value_type = 'int'}
FieldUnit.Attack1.ProjectileArc = {value_id = "uma1", value_type = 'real'}
FieldUnit.Attack1.ProjectileArt = {value_id = "ua1m", value_type = 'string'}
FieldUnit.Attack1.ProjectileHomingEnabled = {value_id = "umh1", value_type = 'bool'}
FieldUnit.Attack1.ProjectileSpeed = {value_id = "ua1z", value_type = 'int'}
FieldUnit.Attack1.Range = {value_id = "ua1r", value_type = 'int'}
FieldUnit.Attack1.RangeMotionBuffer = {value_id = "urb1", value_type = 'real'}
FieldUnit.Attack1.ShowUI = {value_id = "uwu1", value_type = 'bool'}
--- 'air', 'alive', 'allies', 'ancient', 'dead', 'debris', 'decoration', 'enemies', 'friend', 'ground', 'hero',
--- 'invulnerable', 'item', 'mechanical', 'neutral', 'nonancient', 'none', 'nonhero', 'nonsapper', 'notself',
--- 'organic', 'player', 'playerunits', 'sapper', 'self', 'structure', 'terrain', 'tree', 'vulnerable', 'wall',
FieldUnit.Attack1.TargetsAllowed = {value_id = "ua1g", value_type = 'string'}
--- 'Nothing', 'AxeMediumChop', 'MetalHeavyBash', 'MetalHeavyChop',
--- 'MetalHeavySlice', 'MetalLightChop', 'MetalLightSlice', 'MetalMediumBash', 'MetalMediumChop',
--- 'MetalMediumSlice', 'RockHeavyBash', 'WoodHeavyBash', 'WoodLightBash', 'WoodMediumBash'
FieldUnit.Attack1.WeaponSound = {value_id = "ucs1", value_type = 'string'}
--- 'normal', 'instant', 'artillery', 'aline', 'missile', 'splash', 'bounce', 'line'
FieldUnit.Attack1.WeaponType = {value_id = "ua1w", value_type = 'string'}
FieldUnit.Attack2 = {}
FieldUnit.Attack2.AnimationBackswingPoint = {value_id = "ubs2", value_type = 'real'}
FieldUnit.Attack2.AnimationDamagePoint = {value_id = "udp2", value_type = 'real'}
FieldUnit.Attack2.AreaofEffectFullDamage = {value_id = "ua2f", value_type = 'int'}
FieldUnit.Attack2.AreaofEffectMediumDamage = {value_id = "ua2h", value_type = 'int'}
FieldUnit.Attack2.AreaofEffectSmallDamage = {value_id = "ua2q", value_type = 'int'}
FieldUnit.Attack2.AreaofEffectTargets = {value_id = "ua2p", value_type = 'string'}
--- 'unknown', 'normal', 'pierce', 'siege', 'spells', 'chaos', 'magic', 'hero'
FieldUnit.Attack2.AttackType = {value_id = "ua2t", value_type = 'string'}
FieldUnit.Attack2.CooldownTime = {value_id = "ua2c", value_type = 'real'}
FieldUnit.Attack2.DamageBase = {value_id = "ua2b", value_type = 'int'}
FieldUnit.Attack2.DamageFactorMedium = {value_id = "uhd2", value_type = 'real'}
FieldUnit.Attack2.DamageFactorSmall = {value_id = "uqd2", value_type = 'real'}
FieldUnit.Attack2.DamageLossFactor = {value_id = "udl2", value_type = 'real'}
FieldUnit.Attack2.DamageSidesperDie = {value_id = "ua2s", value_type = 'int'}
FieldUnit.Attack2.DamageSpillDistance = {value_id = "usd2", value_type = 'real'}
FieldUnit.Attack2.DamageSpillRadius = {value_id = "usr2", value_type = 'real'}
FieldUnit.Attack2.DamageUpgradeAmount = {value_id = "udu2", value_type = 'int'}
FieldUnit.Attack2.DamagebooleanofDice = {value_id = "ua2d", value_type = 'int'}
FieldUnit.Attack2.MaximumbooleanofTargets = {value_id = "utc2", value_type = 'int'}
FieldUnit.Attack2.ProjectileArc = {value_id = "uma2", value_type = 'real'}
FieldUnit.Attack2.ProjectileArt = {value_id = "ua2m", value_type = 'string'}
FieldUnit.Attack2.ProjectileHomingEnabled = {value_id = "umh2", value_type = 'bool'}
FieldUnit.Attack2.ProjectileSpeed = {value_id = "ua2z", value_type = 'int'}
FieldUnit.Attack2.Range = {value_id = "ua2r", value_type = 'int'}
FieldUnit.Attack2.RangeMotionBuffer = {value_id = "urb2", value_type = 'real'}
FieldUnit.Attack2.ShowUI = {value_id = "uwu2", value_type = 'bool'}
--- 'air', 'alive', 'allies', 'ancient', 'dead', 'debris', 'decoration', 'enemies', 'friend', 'ground', 'hero',
--- 'invulnerable', 'item', 'mechanical', 'neutral', 'nonancient', 'none', 'nonhero', 'nonsapper', 'notself',
--- 'organic', 'player', 'playerunits', 'sapper', 'self', 'structure', 'terrain', 'tree', 'vulnerable', 'wall'
FieldUnit.Attack2.TargetsAllowed = {value_id = "ua2g", value_type = 'string'}
--- 'Nothing', 'AxeMediumChop', 'MetalHeavyBash', 'MetalHeavyChop',
--- 'MetalHeavySlice', 'MetalLightChop', 'MetalLightSlice', 'MetalMediumBash', 'MetalMediumChop',
--- 'MetalMediumSlice', 'RockHeavyBash', 'WoodHeavyBash', 'WoodLightBash', 'WoodMediumBash'
FieldUnit.Attack2.WeaponSound = {value_id = "ucs2", value_type = 'string'}
--- 'unknown', 'normal', 'pierce', 'siege', 'spells', 'chaos', 'magic', 'hero'
FieldUnit.Attack2.WeaponType = {value_id = "ua2w", value_type = 'string'}
FieldUnit.AttacksEnabled = {value_id = "uaen", value_type = 'int'}
FieldUnit.BuildTime = {value_id = "ubld", value_type = 'int'}
FieldUnit.ButtonPositionX = {value_id = "ubpx", value_type = 'int'}
FieldUnit.ButtonPositionY = {value_id = "ubpy", value_type = 'int'}
FieldUnit.CanDropItemsOnDeath = {value_id = "udro", value_type = 'bool'}
FieldUnit.CanFlee = {value_id = "ufle", value_type = 'bool'}
FieldUnit.CategorizationCampaign = {value_id = "ucam", value_type = 'bool'}
FieldUnit.CategorizationSpecial = {value_id = "uspe", value_type = 'bool'}
FieldUnit.CollisionSize = {value_id = "ucol", value_type = 'real'}
FieldUnit.DeathTimeseconds = {value_id = "udtm", value_type = 'real'}
FieldUnit.DeathType = {value_id = "udea", value_type = 'int'}
FieldUnit.DefaultActiveAbility = {value_id = "udaa", value_type = 'string'}
FieldUnit.DefenseBase = {value_id = "udef", value_type = 'int'}
FieldUnit.DefenseUpgradeBonus = {value_id = "udup", value_type = 'int'}
FieldUnit.DependencyEquivalents = {value_id = "udep", value_type = 'string'}
FieldUnit.Description = {value_id = "ides", value_type = 'string'}
FieldUnit.DisplayasNeutralHostile = {value_id = "uhos", value_type = 'bool'}
FieldUnit.ElevationSamplePoints = {value_id = "uept", value_type = 'int'}
FieldUnit.ElevationSampleRadius = {value_id = "uerd", value_type = 'real'}
FieldUnit.FogOfWarSampleRadius = {value_id = "ufrd", value_type = 'real'}
FieldUnit.FoodCost = {value_id = "ufoo", value_type = 'int'}
FieldUnit.FoodProduced = {value_id = "ufma", value_type = 'int'}
FieldUnit.GoldBountyAwardedBase = {value_id = "ubba", value_type = 'int'}
FieldUnit.GoldBountyAwardedSidesperDie = {value_id = "ubsi", value_type = 'int'}
FieldUnit.GoldBountyAwardedbooleanofDice = {value_id = "ubdi", value_type = 'int'}
FieldUnit.GoldCost = {value_id = "ugol", value_type = 'int'}
FieldUnit.HasTilesetSpecificData = {value_id = "utss", value_type = 'bool'}
FieldUnit.HasWaterShadow = {value_id = "ushr", value_type = 'bool'}
FieldUnit.HideMinimapDisplay = {value_id = "uhom", value_type = 'bool'}
FieldUnit.HitPointsMaximumBase = {value_id = "uhpm", value_type = 'int'}
FieldUnit.HitPointsRegenerationRate = {value_id = "uhpr", value_type = 'real'}
FieldUnit.HitPointsRegenerationType = {value_id = "uhrt", value_type = 'string'}
FieldUnit.Hotkey = {value_id = "uhot", value_type = 'string'}
FieldUnit.IconGameInterface = {value_id = "uico", value_type = 'string'}
FieldUnit.IconScoreScreen = {value_id = "ussi", value_type = 'string'}
FieldUnit.IsaBuilding = {value_id = "ubdg", value_type = 'bool'}
FieldUnit.ItemsSold = {value_id = "usei", value_type = 'string'}
FieldUnit.LumberBountyAwardedBase = {value_id = "ulba", value_type = 'int'}
FieldUnit.LumberBountyAwardedSidesperDie = {value_id = "ulbs", value_type = 'int'}
FieldUnit.LumberBountyAwardedbooleanofDice = {value_id = "ulbd", value_type = 'int'}
FieldUnit.LumberCost = {value_id = "ulum", value_type = 'int'}
FieldUnit.ManaInitialAmount = {value_id = "umpi", value_type = 'int'}
FieldUnit.ManaMaximum = {value_id = "umpm", value_type = 'int'}
FieldUnit.ManaRegeneration = {value_id = "umpr", value_type = 'real'}
FieldUnit.MaximumPitchAngledegrees = {value_id = "umxp", value_type = 'real'}
FieldUnit.MaximumRollAngledegrees = {value_id = "umxr", value_type = 'real'}
FieldUnit.MinimumAttackRange = {value_id = "uamn", value_type = 'int'}
FieldUnit.ModelFile = {value_id = "umdl", value_type = 'string'}
FieldUnit.ModelFileExtraVersions = {value_id = "uver", value_type = 'string'}
FieldUnit.MovementHeight = {value_id = "umvh", value_type = 'real'}
FieldUnit.MovementHeightMinimum = {value_id = "umvf", value_type = 'real'}
FieldUnit.MovementSound = {value_id = "umsl", value_type = 'string'}
--- 'horse', 'fly', 'hover', 'float', 'amph'
FieldUnit.MovementType = {value_id = "umvt", value_type = 'string'}
FieldUnit.Name = {value_id = "unam", value_type = 'string'}
FieldUnit.NameEditorSuffix = {value_id = "unsf", value_type = 'string'}
FieldUnit.NormalAbilities = {value_id = "uabi", value_type = 'string'}
FieldUnit.OccluderHeight = {value_id = "uocc", value_type = 'real'}
FieldUnit.OrientationInterpolation = {value_id = "uori", value_type = 'int'}
FieldUnit.PlaceableInEditor = {value_id = "uine", value_type = 'bool'}
FieldUnit.PointValue = {value_id = "upoi", value_type = 'int'}
FieldUnit.Priority = {value_id = "upri", value_type = 'int'}
FieldUnit.ProjectileImpactZ = {value_id = "uimz", value_type = 'real'}
FieldUnit.ProjectileImpactZSwimming = {value_id = "uisz", value_type = 'real'}
FieldUnit.ProjectileLaunchX = {value_id = "ulpx", value_type = 'real'}
FieldUnit.ProjectileLaunchY = {value_id = "ulpy", value_type = 'real'}
FieldUnit.ProjectileLaunchZ = {value_id = "ulpz", value_type = 'real'}
FieldUnit.ProjectileLaunchZSwimming = {value_id = "ulsz", value_type = 'real'}
FieldUnit.PropulsionWindowdegrees = {value_id = "uprw", value_type = 'real'}
--- 'commoner', 'creeps', 'critters', 'demon', 'human', 'naga', 'nightelf', 'orc', 'other', 'undead', 'unknown'
FieldUnit.Race = {value_id = "urac", value_type = 'string'}
FieldUnit.RandomSound = {value_id = "ursl", value_type = 'string'}
FieldUnit.RepairGoldCost = {value_id = "ugor", value_type = 'int'}
FieldUnit.RepairLumberCost = {value_id = "ulur", value_type = 'int'}
FieldUnit.RepairTime = {value_id = "urtm", value_type = 'int'}
FieldUnit.RequiredAnimationNames = {value_id = "uani", value_type = 'string'}
FieldUnit.RequiredAnimationNamesAttachments = {value_id = "uaap", value_type = 'string'}
FieldUnit.RequiredAttachmentLinkNames = {value_id = "ualp", value_type = 'string'}
FieldUnit.RequiredBoneNames = {value_id = "ubpr", value_type = 'string'}
FieldUnit.Requirements = {value_id = "ureq", value_type = 'string'}
FieldUnit.RequirementsLevels = {value_id = "urqa", value_type = 'string'}
FieldUnit.ScaleProjectiles = {value_id = "uscb", value_type = 'bool'}
FieldUnit.ModelScale = {value_id = "usca", value_type = 'real'}
FieldUnit.SelectionCircleHeight = {value_id = "uslz", value_type = 'real'}
FieldUnit.SelectionCircleOnWater = {value_id = "usew", value_type = 'bool'}
FieldUnit.SelectionScale = {value_id = "ussc", value_type = 'real'}
FieldUnit.ShadowImageCenterX = {value_id = "ushx", value_type = 'real'}
FieldUnit.ShadowImageCenterY = {value_id = "ushy", value_type = 'real'}
FieldUnit.ShadowImageHeight = {value_id = "ushh", value_type = 'real'}
FieldUnit.ShadowImageUnit = {value_id = "ushu", value_type = 'string'}
FieldUnit.ShadowImageWidth = {value_id = "ushw", value_type = 'real'}
FieldUnit.ShadowTextureBuilding = {value_id = "ushb", value_type = 'string'}
FieldUnit.SightRadiusDay = {value_id = "usid", value_type = 'int'}
FieldUnit.SightRadiusNight = {value_id = "usin", value_type = 'int'}
FieldUnit.Sleeps = {value_id = "usle", value_type = 'bool'}
FieldUnit.SoundLoopingFadeInRate = {value_id = "ulfi", value_type = 'int'}
FieldUnit.SoundLoopingFadeOutRate = {value_id = "ulfo", value_type = 'int'}
FieldUnit.MovementSpeedBase = {value_id = "umvs", value_type = 'int'}
FieldUnit.MovementSpeedMaximum = {value_id = "umas", value_type = 'int'}
FieldUnit.MovementSpeedMinimum = {value_id = "umis", value_type = 'int'}
FieldUnit.StockMaximum = {value_id = "usma", value_type = 'int'}
FieldUnit.StockReplenishInterval = {value_id = "usrg", value_type = 'int'}
FieldUnit.StockStartDelay = {value_id = "usst", value_type = 'int'}
FieldUnit.TargetedAs = {value_id = "utar", value_type = 'string'}
FieldUnit.TeamColor = {value_id = "utco", value_type = 'int'}
FieldUnit.Tilesets = {value_id = "util", value_type = 'string'}
FieldUnit.TintingColorBlue = {value_id = "uclb", value_type = 'int'}
FieldUnit.TintingColorGreen = {value_id = "uclg", value_type = 'int'}
FieldUnit.TintingColorRed = {value_id = "uclr", value_type = 'int'}
FieldUnit.TooltipBasic = {value_id = "utip", value_type = 'string'}
FieldUnit.TooltipExtended = {value_id = "utub", value_type = "string"}
FieldUnit.TurnRate = {value_id = "umvr", value_type = 'real'}
FieldUnit.UnitClassification = {value_id = "utyp", value_type = 'string'}
FieldUnit.UnitSoundSet = {value_id = "usnd", value_type = 'string'}
FieldUnit.UnitsSold = {value_id = "useu", value_type = 'string'}
FieldUnit.UpgradesUsed = {value_id = "upgr", value_type = 'string'}
FieldUnit.UseClickHelper = {value_id = "uuch", value_type = 'bool'}
FieldUnit.UseExtendedLineofSight = {value_id = "ulos", value_type = 'bool'}

--=============
-- Hero fields
--=============
FieldUnit.Hero_AgilityPerLevel = {value_id = "uagp", value_type = 'real'}
FieldUnit.Hero_ConstructionSound = {value_id = "ubsl", value_type = 'string'}
FieldUnit.Hero_FormationRank = {value_id = "ufor", value_type = 'int'}
FieldUnit.Hero_GroundTexture = {value_id = "uubs", value_type = 'string'}
FieldUnit.Hero_GroupSeparationEnabled = {value_id = "urpo", value_type = 'bool'}
FieldUnit.Hero_GroupSeparationGroupNumber = {value_id = "urpg", value_type = 'int'}
FieldUnit.Hero_GroupSeparationParameter = {value_id = "urpp", value_type = 'int'}
FieldUnit.Hero_GroupSeparationPriority = {value_id = "urpr", value_type = 'int'}
FieldUnit.Hero_HeroAbilities = {value_id = "uhab", value_type = 'string'}
FieldUnit.Hero_HeroRevivalLocations = {value_id = "urva", value_type = 'string'}
FieldUnit.Hero_HideHeroDeathMsg = {value_id = "uhhd", value_type = 'bool'}
FieldUnit.Hero_HideHeroInterfaceIcon = {value_id = "uhhb", value_type = 'bool'}
FieldUnit.Hero_HideHeroMinimapDisplay = {value_id = "uhhm", value_type = 'bool'}
FieldUnit.Hero_IntelligencePerLevel = {value_id = "uinp", value_type = 'real'}
FieldUnit.Hero_Level = {value_id = "ulev", value_type = 'int'}
FieldUnit.Hero_PrimaryAttribute = {value_id = "upra", value_type = 'string'}
FieldUnit.Hero_ProperNames = {value_id = "upro", value_type = 'string'}
FieldUnit.Hero_ProperNamesUsed = {value_id = "upru", value_type = 'int'}
FieldUnit.Hero_RequierementsForTier1 = {value_id = "urq0", value_type = 'string'}
FieldUnit.Hero_RequierementsForTier2 = {value_id = "urq1", value_type = 'string'}
FieldUnit.Hero_RequierementsForTier3 = {value_id = "urq2", value_type = 'string'}
FieldUnit.Hero_RequierementsForTier4 = {value_id = "urq3", value_type = 'string'}
FieldUnit.Hero_RequierementsForTier5 = {value_id = "urq4", value_type = 'string'}
FieldUnit.Hero_RequierementsForTier6 = {value_id = "urq5", value_type = 'string'}
FieldUnit.Hero_RequierementsForTier7 = {value_id = "urq6", value_type = 'string'}
FieldUnit.Hero_RequierementsForTier8 = {value_id = "urq7", value_type = 'string'}
FieldUnit.Hero_RequierementsForTier9 = {value_id = "urq8", value_type = 'string'}
FieldUnit.Hero_StartingAgility = {value_id = "uagi", value_type = 'int'}
FieldUnit.Hero_StartingIntelligence = {value_id = "uint", value_type = 'int'}
FieldUnit.Hero_StartingStrength = {value_id = "ustr", value_type = 'int'}
FieldUnit.Hero_StrengthPerLevel = {value_id = "ustp", value_type = 'real'}
FieldUnit.Hero_StructuresBuilt = {value_id = "ubui", value_type = 'string'}
FieldUnit.Hero_TooltipAwaken = {value_id = "uawt", value_type = 'string'}
FieldUnit.Hero_TooltipRevive = {value_id = "utpr", value_type = 'string'}
FieldUnit.Hero_TransportedSize = {value_id = "ucar", value_type = 'int'}

--=================
-- Building fields
--=================

FieldUnit.AgilityPerLevel = {value_id = "uagp", value_type = 'real'}
FieldUnit.ConstructionSound = {value_id = "ubsl", value_type = 'string'}
FieldUnit.GroundTexture = {value_id = "uubs", value_type = 'string'}
FieldUnit.ItemsMade = {value_id = "umki", value_type = 'string'}
FieldUnit.NeutralBuildingShowsMinimapIcon = {value_id = "unbm", value_type = 'bool'}
FieldUnit.NeutralBuildingValidAsRandomBuilding = {value_id = "unbr", value_type = 'bool'}
FieldUnit.PathingMap = {value_id = "upat", value_type = 'string'}
FieldUnit.PlacementPreventedBy = {value_id = "upar", value_type = 'string'}
FieldUnit.PlacementRequires = {value_id = "upap", value_type = 'string'}
FieldUnit.PlacementRequiresWaterRadius = {value_id = "upaw", value_type = 'real'}
FieldUnit.ResearchesAvailable = {value_id = "ures", value_type = 'string'}
FieldUnit.RevivesDeadHeros = {value_id = "urev", value_type = 'bool'}
FieldUnit.UnitsTrained = {value_id = "utra", value_type = 'string'}
FieldUnit.UpgradesTo = {value_id = "uupt", value_type = 'string'}

return FieldUnit