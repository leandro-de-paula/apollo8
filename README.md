
# Apollo8

With the increasing demand for organization and efficiency in SQL projects, I noticed a gap in the management process of SQL files. When working with large volumes of SQL files, I often found them scattered and disorganized, complicating the deployment process. With this in mind, I developed the Apollo8 project in Lua, which aims to transform the way we handle SQL files by offering an efficient folder structure. This approach provides a cleaner and more agile way to manage and deploy SQLs, improving the workflow and avoiding common issues of disorganization.

---

## 🚀 **Features**
- Organizes SQL files into a clean folder structure.
- Simplifies the replication of the organization for other developers.
- Facilitates better management and deployment of SQL files.

---

## 📋 **Requirements and Dependencies**

### System Requirements
- **Operating System**: Compatible with Windows, Linux, or macOS (any system supporting the Lua interpreter).
- **Write Permissions**: The user must have sufficient permissions to create folders and files in the desired directories.

### Software Requirements
- **Lua**:
  - Installed Lua interpreter (version 5.1 or higher).
  - Ensure the `lua` command is accessible in the terminal.

#### Installing Lua
- **Linux (Arch)**:
  ```bash
  sudo pacman -S lua
  ```
- **Linux (Ubuntu)**:
  ```bash
  sudo apt-get install lua5.1
  ```
- **Windows/macOS**:
  Follow the instructions on the [official Lua website](https://www.lua.org).

- **LuaFileSystem Library (LFS)**:
  - Required for directory manipulation.
  - Install with LuaRocks:
    ```bash
    luarocks install luafilesystem
    ```

- **Terminal/Command Prompt**:
  - Necessary for executing commands and passing arguments to Apollo8.

---

## ⚙️ **Configuration**
1. Ensure the main file (`apollo8.lua`) and related scripts (e.g., `help.lua`, `about.lua`, etc.) are in the same directory.
2. Optionally, add the Apollo8 directory to your system PATH for easier execution:

   - **Linux/macOS**:
     ```bash
     export PATH=$PATH:/path/to/apollo8
     ```
   - **Windows**:
     Add the directory to the PATH in system settings.

---

## 🖥️ **Execution**

### Creating a Folder Structure
```bash
lua apollo8.lua <nome_da_demanda>
```

### Viewing Help
```bash
lua apollo8.lua -help
```

### Displaying Version Information
```bash
lua apollo8.lua -v
```

### About Apollo8
```bash
lua apollo8.lua -about
```

---

## 📚 **Documentation**
- [Lua Documentation](https://www.lua.org/docs.html)
- [LuaRocks Documentation](https://luarocks.org)
- [Apollo8 Wiki (coming soon)]
