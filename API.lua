LibManager.startLib('Wc3Binary')

--===========
-- Depencies
--===========

LibManager.addDepency('LuaClass', 'https://github.com/nelloy-git/LuaClass.git')
LibManager.addDepency('Wc3Utils', 'https://github.com/nelloy-git/Wc3Utils.git')

--=====
-- API
--=====

---@class Wc3Binary
local Wc3Binary = {}

---@type BinaryAbilityClass
Wc3Binary.Ability = require('Ability') or error('')
---@type BinaryUnitClass
Wc3Binary.Unit = require('Unit') or error('')
---@type BinaryUtils
local Utils = require('Utils') or error('')
Wc3Binary.getAbilityId = Utils.nextAbilityId or error('')
Wc3Binary.getOrderId = Utils.nextOrderId or error('')
Wc3Binary.getUnitId = Utils.nextUnitId or error('')
Wc3Binary.getHeroId = Utils.nextHeroId or error('')

LibManager.endLib()

return Wc3Binary