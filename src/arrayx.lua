arrayx = {}

---
--- 最小值
---@param srouce table
---@param callback function
---@return any
function arrayx.min(source, callback)
    assert(#source ~= 0, "array empty error")

    local min = nil
    local min_weight
    for _, v in ipairs(source) do
        local weight = v
        if callback ~= nil then
            weight = callback(v)
        end

        if min == nil or min_weight > weight then
            min = v
            min_weight = weight
        end
    end

    return min
end

---
--- 最大值
---@param srouce table
---@param callback function
---@return any
function arrayx.max(source, callback)
    assert(#source ~= 0, "array empty error")

    local max = nil
    local max_weight = 0

    for _, v in ipairs(source) do
        local weight = v
        if callback ~= nil then
            weight = callback(v)
        end

        if max == nil or max_weight < weight then
            max = v
            max_weight = weight
        end
    end

    return max
end

---
--- 总计
---@param source any[]
---@param callback function
---@return number
function arrayx.sum(source, callback)
    local sum = 0

    for _, v in pairs(source) do
        if callback == nil then
            sum = sum + v
        else
            sum = sum + callback(v)
        end
    end

    return sum
end

---
--- 是否存在任一符合条件
---@param source any[]
---@param callback function
---@return boolean
function arrayx.any(source, callback)
    for _, v in ipairs(source) do
        if callback(v) then
            return true
        end
    end

    return false
end

---
--- 过滤
---@param source any[]
---@param callback function
---@return table
function arrayx.filter(source, callback)
    local new = {}

    for _, v in pairs(source) do
        if callback(v) then
            table.insert(new, v)
        end
    end

    return new
end

---
--- 查询
---@param source any[]
---@param callback function
---@return any
function arrayx.find(source, callback)
    for _, v in pairs(source) do
        if callback(v) then
            return v
        end
    end

    return nil
end

---
--- 查询索引
--- 如果找不到符合条件的元素，索引返回-1
---@param source any[]
---@param callback function
---@return number
function arrayx.find_index(source, callback)
    for i, v in pairs(source) do
        if callback(v) then
            return i
        end
    end

    return -1
end

---
--- 合并多个数组
---@vararg any
---@return any[]
function arrayx.merge(...)
    local source = {...}
    local new = {}

    for _, arr in pairs(source) do
        for _, v in pairs(arr) do
            table.insert(new, v)
        end
    end

    return new
end

---
--- 遍历
---@param source table
---@param callback function
function arrayx.for_each(source, callback)
    for i, v in ipairs(source) do
        if not callback(i, v) then
            break
        end
    end
end

---
--- 处理每个元素
---@param source table
---@param callback function
---@return table
function arrayx.map(source, callback)
    local new = {}
    for _, v in ipairs(source) do
        table.insert(new, callback(v))
    end

    return new
end

---
--- 消减
---@param source table
---@param callback function
---@return any
function arrayx.reduce(source, callback)
    if #source == 0 then
        return nil
    end
    
    if #source == 1 then
        return source[1]
    end

    local result = source[1]
    for i = 2, #source, 1 do
        result = callback(result, source[i])
    end

    return result
end

---
--- 翻转
---@param source table
---@return table
function arrayx.reverse(source)
    local new = {}

    for i = #source, 1, -1 do
        table.insert(new, source[i])
    end

    return new
end

return arrayx
