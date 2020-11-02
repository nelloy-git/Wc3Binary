--=========
-- Include
--=========

local Class = LibManager.getDepency('LuaClass')
---@type Wc3Utils
local Utils = LibManager.getDepency('Wc3Utils')
local isTypeErr = Utils.isTypeErr or error('')
local Log = Utils.Log or error('')

---@type BinaryUtils
local BinUtils = require('Utils') or error('')

--=======
-- Class
--=======

local BinaryObject = Class.new('BinaryObject')
---@class BinaryObject
local public = BinaryObject.public
---@class BinaryObjectClass
local static = BinaryObject.static
---@type BinaryObjectClass
local override = BinaryObject.override
local private = {}

--========
-- Static
--========

---@param id number
---@param base_id number
---@param name string | nil
---@param child BinaryObject | nil
---@return BinaryObject
function override.new(id, base_id, name, child)
    isTypeErr(id, 'number', 'id')
    isTypeErr(base_id, 'number', 'base_id')
    if name then isTypeErr(name, 'string', 'name') end
    if child then isTypeErr(child, BinaryObject, 'child') end

    local instance = child or Class.allocate(BinaryObject)
    private.newData(instance, id, base_id, name)

    return instance
end

--========
-- Public
--========

---@return string
function public:getId()
    return private.data[self].id
end

---@return string
function public:getBaseId()
    return private.data[self].base_id
end

---@return string
function public:getName()
    return private.data[self].name
end

---@param value_id string
---@param value_type string | "'bool'" | "'int'" | "'real'" | "'unreal'" | "'string'"
---@param value any
function public:setValue(value_id, value_type, value)
    isTypeErr(value_id, 'string', 'value_id')
    if not (value_type == 'bool' or
       value_type == 'int' or
       value_type == 'real' or
       value_type == 'unreal' or
       value_type == 'string') then
        Log:err('Unavailable \'value_type\'. Got '..value_type, 2)
    end
    isTypeErr(value, private.real_types[value_type], 'value')

    local priv = private.data[self]
    priv.values[value_id] = {value_type = value_type, value = value}
end

---@return string
function public:serialize()
    local priv = private.data[self]

    local bytes = ''
    local changes_count = 0
    for value_id, value_data in pairs(priv.values) do
        local value_type = value_data.value_type
        local value = value_data.value
        bytes = bytes..
                value_id..
                private.type_to_bytes[value_type]..
                private.value_to_bytes[value_type](value)..
                '\0\0\0\0'

        changes_count = changes_count + 1
    end

    -- Adds header
    bytes = BinUtils.id2byte(priv.base_id)..     -- Base (parent's) id
            BinUtils.id2byte(priv.id)..          -- New id
            BinUtils.int2byte(changes_count)..    -- Changes count
            bytes

    return bytes
end

--=========
-- Private
--=========

private.data = setmetatable({}, {__mode = 'k'})
private.field_serial_end = '\0\0\0\0'

---@param self BinaryObject
---@param id number | string
---@param base_id number | string
---@param name string
function private.newData(self, id, base_id, name)
    local priv = {
        id = id,
        base_id = base_id,
        name = name,
        values = {}
    }
    private.data[self] = priv
end

private.real_types = {
    bool = 'boolean',
    int = 'number',
    real = 'number',
    unreal = 'number',
    string = 'string',
}

private.type_to_bytes = {
    bool = BinUtils.int2byte(0),
    int = BinUtils.int2byte(0),
    real = BinUtils.int2byte(1),
    unreal = BinUtils.int2byte(2),
    string = BinUtils.int2byte(3),
}

private.value_to_bytes = {
    bool = BinUtils.int2byte,
    int = BinUtils.int2byte,
    real = BinUtils.float2byte,
    unreal = BinUtils.float2byte,
    string = BinUtils.str2byte,
}

return BinaryObject.static