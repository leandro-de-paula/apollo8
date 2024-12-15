local M = {}

function M.show_help()
  print("Apollo8 - Help")
  print("Usage: apollo8 <command> [arguments]")
  print("\nCommands: ")
  print("-help          Show this help message")
  print("-v             Show version of Apollo8")
  print("-about         Show information about Apollo8")
  print("<demand_name>  Create directory structure for the demand")
end

return M
