local names = {"nino", "mari", 'nika', "daChi", "lado", 'ana', "tornike", "gvanca", "rauli", "gio", "tamta", "mate", "luka" }
local found = false
function AddName(names)
    print("Enter searchName:")
    local searchName = io.read()

    for i, name in ipairs(names) do
        if(searchName ~= name) then 
            found = false 
        else found = true
            break
        end
    end
    if (found == true)then
        print("this name already exists")
    end
    if (found == false)then
        print("add name?")
        YesOrNo = io.read()
        if (YesOrNo == "yes")then
        table.insert(names, searchName)
        else print("name wasn't added")
        end
    end
    print("are we done?")
    YOrN = io.read()
end
    while(YOrN ~= "yes") do
        AddName(names)
    end
