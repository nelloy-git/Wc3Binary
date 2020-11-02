--=========
-- Include
--=========

local Class = LibManager.getDepency('LuaClass')
---@type Wc3Utils
local Utils = LibManager.getDepency('Wc3Utils')
local isTypeErr = Utils.isTypeErr or error('')
local Log = Utils.Log or error('')
local SmartLoader = Utils.SmartLoader or error('')

---@type BinaryFileClass
local BinFile = require('File') or error('')
---@type BinaryObjectClass
local BinObject = require('Object') or error('')
---@type BinaryUtils
local BinUtils = require('Utils') or error('')
---@type BinaryFieldUnit
local BinFieldUnit = {}
SmartLoader.load(LibManager.getCurLib()..'.Field.Unit', BinFieldUnit)

--=======
-- Class
--=======

local BinaryUnit = Class.new('BinaryUnit', BinObject)
---@class BinaryUnit : BinaryObject
local public = BinaryUnit.public
---@class BinaryUnitClass : BinaryObjectClass
local static = BinaryUnit.static
---@type BinaryUnitClass
local override = BinaryUnit.override
local private = {}

--=========
-- Static
--=========

---@param new_id number
---@param base_id number
---@param name string | nil
---@param child BinaryUnit | nil
---@return BinaryUnit
function override.new(new_id, base_id, name, child)
    isTypeErr(new_id, 'number', 'new_id')
    isTypeErr(base_id, 'number', 'base_id')
    if name then isTypeErr(name, 'string', 'name') end
    if child then isTypeErr(child, BinaryUnit, 'child') end

    local instance = child or Class.allocate(BinaryUnit)
    instance = BinObject.new(new_id, base_id, name, instance)

    private.file:add(instance)

    return instance
end

--========
-- Public
--========

local db_atk = {
    [1] = BinFieldUnit.Attack1,
    [2] = BinFieldUnit.Attack2
}

---------------
-- Abilities --
---------------

---@param time number
function public:setAnimationCastBackswing(time)
    local db = BinFieldUnit.AnimationCastBackswing
    self:setValue(db.value_id, db.value_type, time)
end

---@param id_list table<number, string>
function public:setNormalAbilities(id_list)
    local abil_list = ''
    for i = 1, #id_list do
        abil_list = abil_list..id_list[i]..','
    end
    if #id_list > 0 then
        abil_list = abil_list:sub(1, abil_list:len() - 1)
    end

    local db = BinFieldUnit.NormalAbilities
    self:setValue(db.value_id, db.value_type, abil_list)
end

---@param value number
function public:setMana(value)
    local db = BinFieldUnit.ManaMaximum
    self:setValue(db.value_id, db.value_type, value)
end

---@param value number
function public:setManaRegeneration(value)
    local db = BinFieldUnit.ManaRegeneration
    self:setValue(db.value_id, db.value_type, value)
end

---------------
-- Animation --
---------------

---@param time number
function public:setAnimationBlendTime(time)
    local db = BinFieldUnit.AnimationBlendTimeseconds
    self:setValue(db.value_id, db.value_type, time)
end

---@param atk number
---@param value number
function public:setAttackAnimationBackswingPoint(atk, value)
    local db = db_atk[atk].AnimationBackswingPoint
    self:setValue(db.value_id, db.value_type, value)
end

---@param atk number
---@param value number
function public:setAttackAnimationDamagePoint(atk, value)
    local db = db_atk[atk].AnimationDamagePoint
    self:setValue(db.value_id, db.value_type, value)
end

------------
-- Attack --
------------

-- TODO AreaAttacks

---@param atk number
---@param value attacktype
function public:setAttackType(atk, value)
    local db = db_atk[atk].AttackType
    local str_type = BinUtils.attackTypeToData(value)
    self:setValue(db.value_id, db.value_type, str_type)
end

---@param atk number
---@param value number
function public:setAttackProjectileArc(atk, value)
    local db = db_atk[atk].ProjectileArc
    self:setValue(db.value_id, db.value_type, value)
end

---@param atk number
---@param model string
function public:setAttackProjectileArt(atk, model)
    local db = db_atk[atk].ProjectileArt
    self:setValue(db.value_id, db.value_type, model)
end

---@param atk number
---@param flag boolean
function public:setAttackProjectileHomingEnabled(atk, flag)
    local db = db_atk[atk].ProjectileHomingEnabled
    self:setValue(db.value_id, db.value_type, flag)
end

---@param atk number
---@param value number
function public:setAttackProjectileSpeed(atk, value)
    local db = db_atk[atk].ProjectileSpeed
    self:setValue(db.value_id, db.value_type, value)
end

---@param atk number
---@param value number
function public:setAttackRange(atk, value)
    local db = db_atk[atk].Range
    self:setValue(db.value_id, db.value_type, value)
end

---@param atk number
---@param list table<number, targettype>
function public:setAttackTargetsAllowed(atk, list)
    local val = ''
    for i = 1, #list do
        val = val..BinUtils.targetTypeToData(list[i])
        if i < #list then val = val..',' end
    end

    local db = db_atk[atk].TargetsAllowed
    self:setValue(db.value_id, db.value_type, val)
end

---------------
-- Interface --
---------------

---@param name string
function public:setName(name)
    local db = BinFieldUnit.Name
    self:setValue(db.value_id, db.value_type, name)
end

---@param icon string
function public:setIconGameInterface(icon)
    local db = BinFieldUnit.IconGameInterface
    self:setValue(db.value_id, db.value_type, icon)
end

---@param model string
function public:setModelFile(model)
    local db = BinFieldUnit.ModelFile
    self:setValue(db.value_id, db.value_type, model)
end

---@param size number
function public:setModelSize(size)
    local db = BinFieldUnit.ModelScale
    self:setValue(db.value_id, db.value_type, size)
end

---@param speed number
function public:setMoveSpeed(speed)
    local db = BinFieldUnit.MovementSpeedBase
    self:setValue(db.value_id, db.value_type, speed)
end

------------
-- Sounds --
------------



--=========
-- Private
--=========

private.data = setmetatable({}, {__mode = 'k'})
local sep = Macro(package.config:sub(1,1))
private.file = BinFile.new((GetDst and GetDst() or '')..sep..'war3map.w3u')
BuildFinal(function()
    if not IsGame() then
        private.file:save()
    end
end)

return static