require("deque")

local queue = deque:new()
print("len: ", queue:len())

queue:push_left(1)
print("len: ", queue:len())

queue:push_right(2)
queue:push_right(3)
print("len: ", queue:len())

local value = queue:pop_left()
print("value: ", value)

value = queue:pop_right()
print("value: ", value)

value = queue:pop_right()
print("value: ", value)