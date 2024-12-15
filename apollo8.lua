local help = require("help")                  -- Command -help
local version = require("version")            -- Command -v
local about = require("about")                -- Command -about
local apollo8_CSM = require("apollo8_CSM")    -- Command Service Module


local function main()

  -- Check if a specific command has been passed
  if #arg == 0 then
    print("Usage: apollo8 <command> [arguments]")
    os.exit(1)
  end

  local command = arg[1]

  if command == "-help" then
    help.show_help()
  elseif command == "-v" then
    version.show_version()
  elseif command == "-about" then
    about.show_about()
  else
    -- Command to create the structure (apollo8 <demand_name>)
    local demand_name = command
    apollo8_CSM.create_structure(demand_name)
  end
end

main()
