require("arrayx")

function min_exmaple()
    -- exmpale 1
    local data1 = {3, 4, 5, 1}
    print(arrayx.min(data1))

    -- example 2
    local data2 = {
        {name = "a", age = 20},
        {name = "b", age = 19},
        {name = "c", age = 21}
    }
    local callback = function(v)
        return v.age
    end
    local obj = arrayx.min(data2, callback)
    print(obj.name, obj.age)
end
-- min_exmaple()

function max_exmaple()
    -- exmpale 1
    local data1 = {3, 4, 5, 1}
    print(arrayx.max(data1))

    -- example 2
    local data2 = {
        {name = "a", age = 20},
        {name = "b", age = 19},
        {name = "c", age = 21}
    }
    local callback = function(v)
        return v.age
    end
    local obj = arrayx.max(data2, callback)
    print(obj.name, obj.age)
end
-- max_exmaple()

function sum_example()
    -- exmpale 1
    local data1 = {1, 2, 3}
    print(arrayx.sum(data1))

    -- example 2
    local data2 = {
        {name = "a", age = 20},
        {name = "b", age = 19},
        {name = "c", age = 21}
    }
    local callback = function(v)
        return v.age
    end
    print(arrayx.sum(data2, callback))
end
-- sum_example()

function any_example()
    local data = {1, 2, 3, 4}
    local callback = function(v)
        return v == 3
    end

    print(arrayx.any(data, callback))
end
-- any_example()

function filter_example()
    local data = {1, 2, 3, 4}
    local callback = function(v)
        return v % 2 == 0
    end

    local newData = arrayx.filter(data, callback)
    for _, v in ipairs(newData) do
        print(v)
    end
end
-- filter_example()

function find_example()
    local data = {1, 2, 3, 4}
    local callback = function(v)
        return v == 3
    end

    print(arrayx.find(data, callback))
end
-- find_example()

function find_index_example()
    local data = {"a", "b", "c", "d"}
    local callback = function(v)
        return v == "b"
    end
    print(arrayx.find_index(data, callback))
end
-- find_index_example()

function merge_example()
    local data1 = {1, 2, 3}
    local data2 = {4, 5, 6}
    local new = arrayx.merge(data1, data2)
    for _, v in ipairs(new) do
        print(v)
    end
end
-- merge_example()

function for_each_example()
    local data = {"a", "b", "c"}
    local callback = function(i, v)
        print(i, v)
        return true
    end

    arrayx.for_each(data, callback)
end
-- for_each_example()

function map_example()
    local data = {1, 2, 3}
    local callback = function(v)
        return v * 2
    end
    local new = arrayx.map(data, callback)
    for _, v in ipairs(new) do
        print(v)
    end
end
-- map_example()

function reduce_example()
    local data = {1, 2, 3}
    local callback = function(result, current)
        return result + current
    end
    local result = arrayx.reduce(data, callback)
    print(result)
end
-- reduce_example()

function reverse_example()
    local data = {1, 2, 3}
    local new = arrayx.reverse(data)
    for _, v in ipairs(new) do
        print(v)
    end
end
-- reverse_example()