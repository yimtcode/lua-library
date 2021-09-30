require("tablex")

function copy_example()
    local person = {name = "yimt"}
    local newPerson = tablex.copy(person)

    print(person == newPerson, person, newPerson)
end

copy_example()
