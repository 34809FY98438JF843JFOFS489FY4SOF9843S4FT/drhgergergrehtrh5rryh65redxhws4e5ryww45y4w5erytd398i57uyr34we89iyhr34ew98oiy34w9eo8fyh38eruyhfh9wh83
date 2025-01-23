repeat wait() until game:IsLoaded()

local v = "V1"
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()
local mainScript = loadstring(game:HttpGet("https://raw.githubusercontent.com/officialislandsarchive/test2rf/main/main.lua"))()
local saveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/officialislandsarchive/test2rf/main/SaveManager.lua"))()
local interfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/officialislandsarchive/test2rf/main/InterfaceManager.lua"))()

local scriptLinks = {
    Main = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/Hub/refs/heads/main/Main.lua",
    Player = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/Hub/refs/heads/main/Player.lua",
    Teleports = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/Hub/refs/heads/main/Teleports.lua",
    AutoFarm = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/Hub/refs/heads/main/Auto-Farm.lua",
    ESP = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/Hub/refs/heads/main/Esp-and-Visuals.lua",
    Inventory = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/Hub/refs/heads/main/Backpack.lua",
    Mounts = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/Hub/refs/heads/main/Mounts.lua",
    Shops = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/Hub/refs/heads/main/Shops.lua",
    Misc = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/Hub/refs/heads/main/Misc.lua",
    Security = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/Hub/refs/heads/main/Anti-Cheat-Bypass.lua",
    Server = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/Hub/refs/heads/main/Server-Tools.lua",
    Settings = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/Hub/refs/heads/main/Settings.lua",
    Credits = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/Hub/refs/heads/main/Credits.lua"
}

local window = mainScript:CreateWindow({
    Title = "Zynova Hub "..v.." [FREE!]",
    SubTitle = "Made by Albert",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local tabs = {
    Main = window:AddTab({ Title = "Main", Icon = "home" }),
    Player = window:AddTab({ Title = "Player", Icon = "user" }),
    Teleports = window:AddTab({ Title = "Teleports", Icon = "map" }),
    AutoFarm = window:AddTab({ Title = "Auto Farm", Icon = "carrot" }),
    ESP = window:AddTab({ Title = "ESP & Visuals", Icon = "eye" }),
    Inventory = window:AddTab({ Title = "Backpack", Icon = "package" }),
    Mounts = window:AddTab({ Title = "Mounts", Icon = "brush" }),
    Quests = window:AddTab({ Title = "Quests", Icon = "scroll" }),
    Misc = window:AddTab({ Title = "Miscellaneous", Icon = "wrench" }),
    Security = window:AddTab({ Title = "Anti Cheat Bypass", Icon = "bomb" }),
    Server = window:AddTab({ Title = "Server Tools", Icon = "server" }),
    Settings = window:AddTab({ Title = "Settings", Icon = "settings" }),
    Credits = window:AddTab({ Title = "Credits", Icon = "info" })
}

for k, v in pairs(tabs) do
    local link = scriptLinks[k]
    if link and link ~= "" then
        local success, err = pcall(function()
            loadstring(game:HttpGet(link))()(v)
        end)
        if success then
            print("Success: "..k.." tab has been loaded.")
        else
            print("Error: Failed to load "..k.." script. Reason: "..err)
        end
    else
        print("Notice: "..k.." has no script linked.")
    end
end

saveManager:SetLibrary(mainScript)
interfaceManager:SetLibrary(mainScript)
saveManager:SetFolder("ZynovahubFREE/Lootify")
interfaceManager:SetFolder("ZynovahubFREE/Lootify")
interfaceManager:BuildInterfaceSection(tabs.Settings)
saveManager:BuildConfigSection(tabs.Settings)
window:SelectTab(1)
saveManager:LoadAutoloadConfig()