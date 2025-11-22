# Claude Configuration Notes

## System Information
- **Ubuntu Version**: 24.04.3 LTS (Noble)
- **Platform**: WSL2 on Windows
- **Project**: MyFirstGame (Roblox)

## Installed Tools
- Rojo 7.6.1 (installed at /usr/local/bin/rojo)
- Git configured
- SSH key generated (ed25519)
- GitHub CLI (gh) installed but auth hanging

## SSH Configuration
- **Public Key**: ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIP0my4DWIqUjjpTZz47/tpXO9X3ug6cwgoWidqyEk0n7 dreed@roblox-wsl
- **Key Location**: ~/.ssh/id_ed25519
- **Status**: ✓ Added to GitHub and authenticated successfully

## Git Configuration
- **Username**: d-romeo-reed
- **Email**: d-romeo-reed@users.noreply.github.com
- **Default Branch**: main
- **GitHub Repo**: https://github.com/d-romeo-reed/roblox-games

## Project Setup
- Rojo sync tool configured for Roblox Studio integration
- Project location: /home/dreed/RobloxProjects/MyFirstGame
- Source files in: src/
- Git repository initialized and pushed to GitHub

## Workflow: Roblox Studio + WSL + Claude

### Starting the Rojo Server
```bash
cd ~/RobloxProjects/MyFirstGame
rojo serve
```

### In Roblox Studio (Windows)
1. Install Rojo plugin:
   - Download from: https://github.com/rojo-rbx/rojo/releases/latest
   - Get the `Rojo.rbxm` file
   - In Studio: PLUGINS → Plugins Folder → Copy Rojo.rbxm there → Restart Studio
2. Enable HTTP requests:
   - HOME → Game Settings → Security → Allow HTTP Requests (check the box)
3. Click "Rojo" button in PLUGINS tab
4. Click "Connect" to localhost:34872
5. Click "Sync In" to pull files from WSL

### Development Flow
1. Edit Lua files in WSL (Claude can edit them)
2. Rojo automatically syncs changes to Roblox Studio
3. Test in Roblox Studio
4. Commit changes: Claude can create git commits and push to GitHub

### IMPORTANT: File Naming Conventions for Rojo
- **Server Scripts** (run on server): Must end in `.server.lua`
  - Example: `WelcomeMessage.server.lua`
  - These become "Script" objects in ServerScriptService
- **Client Scripts** (run on client): Must end in `.client.lua`
  - Example: `PlayerUI.client.lua`
  - These become "LocalScript" objects
- **Module Scripts** (libraries): End in `.lua`
  - Example: `Utilities.lua`
  - These become "ModuleScript" objects
- **If a file ends in just `.lua` in a server folder, it won't run!** It becomes a ModuleScript

### File Structure
```
MyFirstGame/
├── default.project.json  (Rojo config)
├── src/
│   ├── HelloWorld.lua    (Example script in ReplicatedStorage)
│   └── server/           (Scripts for ServerScriptService)
└── CLAUDE.md             (This file)
```
