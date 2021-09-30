tablex = {}

---
--- Lua table深拷贝
---@param src any
---@return any
function tablex.copy(src)
    if type(src) ~= 'table' then
        return src
    end

    local new = {}
    for k, v in pairs(src) do
        new[k] = tablex.copy(v)
    end

    return new
end

return tablex
