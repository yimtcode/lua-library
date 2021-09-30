stringx = {}

---
--- 字符串切分
---@param src string @原始字符串
---@param sub string @切分字符串
---@return string[] @结果
function stringx.split(src, sub)
    local startIndex = 1
    local strArray = {}

    while true do
        local endIndex = string.find(src, sub, startIndex, true)
        if endIndex == nil then
            local s = string.sub(src, startIndex, #src)
            table.insert(strArray, s)
            break
        end

        local s = string.sub(src, startIndex, endIndex - 1)
        table.insert(strArray, s)
        startIndex = endIndex + 1
    end

    return strArray
end

return stringx
