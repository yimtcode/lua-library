require("stringx")

function split_example()
    local strs = stringx.split("aaa1bbb", "1")
    for _, v in ipairs(strs) do
        print(v)
    end
end

split_example()
