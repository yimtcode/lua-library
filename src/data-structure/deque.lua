deque = {}

---
--- 创建双端队列
---@return table
function deque:new()
    self.__index = self
    return setmetatable({first = 0, last = -1}, self)
end

---
--- 获取队列长度
---@return number
function deque:len()
    return self.last - self.first + 1
end

---
--- 从左推入
---@param value any
function deque:push_left(value)
    self.first = self.first - 1
    self[self.first] = value
end

---
--- 从右推入
---@param value any
function deque:push_right(value)
    self.last = self.last + 1
    self[self.last] = value
end

---
--- 从左弹出
---@return value any
function deque:pop_left()
    assert(self:len() == 0, "deque is empty")

    local value = self[self.first]
    self[self.first] = nil
    self.first = self.first + 1
    return value
end

---
--- 从右弹出
---@return value any
function deque:pop_right()
    assert(self:len() == 0, "deque is empty")

    local value = self[self.last]
    self[self.last] = nil
    self.last = self.last - 1
    return value
end

return deque
