local lfs = require("lfs") -- LuaFileSystem.

--- Load the list of folders from folders.lua
local folders = require("folders")

-- Command to create the structure 
local function create_structure(demand_name)
    local base_path = "./" .. demand_name

    -- Create the base directory, if necessary
    local success, base_err = lfs.mkdir(base_path)
    if success then
        print("Base directory created: " .. base_path)
    elseif base_err and not base_err:match("file exists") then
        print("Error creating base directory: " .. base_err)
        return
    end

    -- Create the subfolders
    for _, dir in ipairs(folders) do
        local path = base_path .. "/" .. dir
        local sub_success, sub_err = lfs.mkdir(path)
        if sub_success then
            print("Directory created: " .. path)
        elseif sub_err and sub_err:match("file exists") then
            print("Directory already exists: " .. path)
        else
            print("Error creating directory: " .. path .. " - " .. sub_err)
        end
    end
end

return {
    create_structure = create_structure
}
