---@class BinaryFieldAbility
local FieldAbility = {}

FieldAbility.AnimationNames = {value_id = "aani", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.AreaEffect = {value_id = "aaea", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.AreaOfEffect = {value_id = "aare", value_type = 'unreal', need_lvl = false, extra_id = 0}
FieldAbility.ArtCaster = {value_id = "acat", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.ArtEffect = {value_id = "aeat", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.ArtSpecial = {value_id = "asat", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.ArtTarget = {value_id = "atat", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.Buffs = {value_id = "abuf", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.ButtonPositionNormalX = {value_id = "abpx", value_type = 'int', need_lvl = false, extra_id = 0}
FieldAbility.ButtonPositionNormalY = {value_id = "abpy", value_type = 'int', need_lvl = false, extra_id = 0}
FieldAbility.ButtonPositionResearchX = {value_id = "arpx", value_type = 'int', need_lvl = false, extra_id = 0}
FieldAbility.ButtonPositionResearchY = {value_id = "arpy", value_type = 'int', need_lvl = false, extra_id = 0}
FieldAbility.ButtonPositionTurnOffX = {value_id = "aubx", value_type = 'int', need_lvl = false, extra_id = 0}
FieldAbility.ButtonPositionTurnOffY = {value_id = "auby", value_type = 'int', need_lvl = false, extra_id = 0}
FieldAbility.CastRange = {value_id = "aran", value_type = 'unreal', need_lvl = false, extra_id = 0}
FieldAbility.CasterAttachmentPoint = {value_id = "acap", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.CasterAttachmentPoint1 = {value_id = "aca1", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.CasterAttachments = {value_id = "acac", value_type = 'int', need_lvl = false, extra_id = 0}
FieldAbility.CastingTime = {value_id = "acas", value_type = 'unreal', need_lvl = false, extra_id = 0}
FieldAbility.CheckDependencies = {value_id = "achd", value_type = 'bool', need_lvl = false, extra_id = 0}
FieldAbility.Cooldown = {value_id = "acdn", value_type = 'unreal', need_lvl = false, extra_id = 0}
FieldAbility.DurationHero = {value_id = "ahdu", value_type = 'unreal', need_lvl = false, extra_id = 0}
FieldAbility.DurationNormal = {value_id = "adur", value_type = 'unreal', need_lvl = false, extra_id = 0}
FieldAbility.EditorSuffix = {value_id = "ansf", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.EffectSound = {value_id = "aefs", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.EffectSoundLooping = {value_id = "aefl", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.Effects = {value_id = "aeff", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.HeroAbility = {value_id = "aher", value_type = 'bool', need_lvl = false, extra_id = 0}
FieldAbility.HotkeyLearn = {value_id = "arhk", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.HotkeyNormal = {value_id = "ahky", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.HotkeyTurnOff = {value_id = "auhk", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.IconNormal = {value_id = "aart", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.IconResearch = {value_id = "arar", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.IconTurnOff = {value_id = "auar", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.ItemAbility = {value_id = "aite", value_type = 'bool', need_lvl = false, extra_id = 0}
FieldAbility.LevelSkipRequirement = {value_id = "alsk", value_type = 'int', need_lvl = false, extra_id = 0}
FieldAbility.Levels = {value_id = "alev", value_type = 'int', need_lvl = false, extra_id = 0}
FieldAbility.LightningEffects = {value_id = "alig", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.ManaCost = {value_id = "amcs", value_type = 'int', need_lvl = false, extra_id = 0}
FieldAbility.MissileArc = {value_id = "amac", value_type = 'unreal', need_lvl = false, extra_id = 0}
FieldAbility.MissileArt = {value_id = "amat", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.MissileHomingEnabled = {value_id = "amho", value_type = 'bool', need_lvl = false, extra_id = 0}
FieldAbility.MissileSpeed = {value_id = "amsp", value_type = 'int', need_lvl = false, extra_id = 0}
FieldAbility.Name = {value_id = "anam", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.OrderStringActivate = {value_id = "aoro", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.OrderStringDeactivate = {value_id = "aorf", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.OrderStringTurnOff = {value_id = "aoru", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.OrderStringUseTurnOn = {value_id = "aord", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.PriorityForSpellSteal = {value_id = "apri", value_type = 'int', need_lvl = false, extra_id = 0}
FieldAbility.Race = {value_id = "arac", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.RequiredLevel = {value_id = "arlv", value_type = 'int', need_lvl = false, extra_id = 0}
FieldAbility.Requirements = {value_id = "areq", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.RequirementsLevels = {value_id = "arqa", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.SpecialAttachmentPoint = {value_id = "aspt", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.TargetAttachmentPoint = {value_id = "ata0", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.TargetAttachmentPoint1 = {value_id = "ata1", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.TargetAttachmentPoint2 = {value_id = "ata2", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.TargetAttachmentPoint3 = {value_id = "ata3", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.TargetAttachmentPoint4 = {value_id = "ata4", value_type = 'string', need_lvl = false, extra_id = 0}
FieldAbility.TargetAttachmentPoint5 = {value_id = "ata5", value_type = 'string', need_lvl = false, extra_id = 0}

FieldAbility.TargetAttachments = {value_id = "atac", value_type = 'int', need_lvl = true, extra_id = 0}
--- 'air', 'alive', 'allies', 'ancient', 'dead', 'debris', 'decoration', 'enemies', 'friend', 'ground', 'hero',
--- 'invulnerable', 'item', 'mechanical', 'neutral', 'nonancient', 'none', 'nonhero', 'nonsapper', 'notself',
--- 'organic', 'player', 'playerunits', 'sapper', 'self', 'structure', 'terrain', 'tree', 'vulnerable', 'wall'
FieldAbility.TargetsAllowed = {value_id = "atar", value_type = 'string', need_lvl = true, extra_id = 0}
FieldAbility.TooltipLearn = {value_id = "aret", value_type = 'string', need_lvl = true, extra_id = 0}
FieldAbility.TooltipLearnExtended = {value_id = "arut", value_type = 'string', need_lvl = true, extra_id = 0}
FieldAbility.TooltipNormal = {value_id = "atp1", value_type = 'string', need_lvl = true, extra_id = 0}
FieldAbility.TooltipNormalExtended = {value_id = "aub1", value_type = 'string', need_lvl = true, extra_id = 0}
FieldAbility.TooltipTurnOff = {value_id = "aut1", value_type = 'string', need_lvl = true, extra_id = 0}
FieldAbility.TooltipTurnOffExtended = {value_id = "auu1", value_type = 'string', need_lvl = true, extra_id = 0}

FieldAbility.ANcl = {}
FieldAbility.ANcl.ArtDuration = {value_id = "Ncl4", value_type = 'unreal', need_lvl = true, extra_id = 4}
FieldAbility.ANcl.BaseOrderID = {value_id = "Ncl6", value_type = 'string', need_lvl = true, extra_id = 6}
FieldAbility.ANcl.DisableOtherAbilities = {value_id = "Ncl5", value_type = 'bool', need_lvl = true, extra_id = 5}
FieldAbility.ANcl.FollowThroughTime = {value_id = "Ncl1", value_type = 'unreal', need_lvl = true, extra_id = 1}
--- 0 - none; 1 - unit; 2 - point; 3 - point or unit
FieldAbility.ANcl.TargetType = {value_id = "Ncl2", value_type = 'int', need_lvl = true, extra_id = 2}
--- Summ of flags: visible - 1, area target - 2, material - 4, universal - 8, group - 16
FieldAbility.ANcl.Options = {value_id = "Ncl3", value_type = 'int', need_lvl = true, extra_id = 3}


return FieldAbility