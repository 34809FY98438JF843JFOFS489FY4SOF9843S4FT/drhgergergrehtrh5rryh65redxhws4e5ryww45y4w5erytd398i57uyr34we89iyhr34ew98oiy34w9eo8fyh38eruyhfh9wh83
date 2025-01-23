repeat wait() until game:IsLoaded()

local v = "V1"
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()
local mainScript = loadstring(game:HttpGet("https://raw.githubusercontent.com/officialislandsarchive/test2rf/main/main.lua"))()
local saveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/officialislandsarchive/test2rf/main/SaveManager.lua"))()
local interfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/officialislandsarchive/test2rf/main/InterfaceManager.lua"))()

local scriptLinks = {
    Main = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/drhgergergrehtrh5rryh65redxhws4e5ryww45y4w5erytd398i57uyr34we89iyhr34ew98oiy34w9eo8fyh38eruyhfh9wh83/main/Main.lua",
    Player = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/drhgergergrehtrh5rryh65redxhws4e5ryww45y4w5erytd398i57uyr34we89iyhr34ew98oiy34w9eo8fyh38eruyhfh9wh83/main/Player.lua",
    Teleports = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/drhgergergrehtrh5rryh65redxhws4e5ryww45y4w5erytd398i57uyr34we89iyhr34ew98oiy34w9eo8fyh38eruyhfh9wh83/main/Teleports.lua",
    AutoFarm = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/drhgergergrehtrh5rryh65redxhws4e5ryww45y4w5erytd398i57uyr34we89iyhr34ew98oiy34w9eo8fyh38eruyhfh9wh83/main/AutoFarm.lua",
    ESP = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/drhgergergrehtrh5rryh65redxhws4e5ryww45y4w5erytd398i57uyr34we89iyhr34ew98oiy34w9eo8fyh38eruyhfh9wh83/main/ESP.lua",
    Inventory = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/drhgergergrehtrh5rryh65redxhws4e5ryww45y4w5erytd398i57uyr34we89iyhr34ew98oiy34w9eo8fyh38eruyhfh9wh83/main/Inventory.lua",
    Pets = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/drhgergergrehtrh5rryh65redxhws4e5ryww45y4w5erytd398i57uyr34we89iyhr34ew98oiy34w9eo8fyh38eruyhfh9wh83/main/Mounts.lua",
    Quests = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/drhgergergrehtrh5rryh65redxhws4e5ryww45y4w5erytd398i57uyr34we89iyhr34ew98oiy34w9eo8fyh38eruyhfh9wh83/main/Shops.lua",
    Misc = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/drhgergergrehtrh5rryh65redxhws4e5ryww45y4w5erytd398i57uyr34we89iyhr34ew98oiy34w9eo8fyh38eruyhfh9wh83/main/Misc.lua",
    Security = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/drhgergergrehtrh5rryh65redxhws4e5ryww45y4w5erytd398i57uyr34we89iyhr34ew98oiy34w9eo8fyh38eruyhfh9wh83/main/Security.lua",
    Server = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/drhgergergrehtrh5rryh65redxhws4e5ryww45y4w5erytd398i57uyr34we89iyhr34ew98oiy34w9eo8fyh38eruyhfh9wh83/main/Server.lua",
    Settings = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/drhgergergrehtrh5rryh65redxhws4e5ryww45y4w5erytd398i57uyr34we89iyhr34ew98oiy34w9eo8fyh38eruyhfh9wh83/main/Settings.lua",
    Credits = "https://raw.githubusercontent.com/34809FY98438JF843JFOFS489FY4SOF9843S4FT/drhgergergrehtrh5rryh65redxhws4e5ryww45y4w5erytd398i57uyr34we89iyhr34ew98oiy34w9eo8fyh38eruyhfh9wh83/main/Credits.lua"
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
    Pets = window:AddTab({ Title = "Mounts", Icon = "brush" }),
    Quests = window:AddTab({ Title = "Quests", Icon = "scroll" }),
    Misc = window:AddTab({ Title = "Miscellaneous", Icon = "wrench" }),
    Security = window:AddTab({ Title = "Anti Cheat Bypass", Icon = "bomb" }),
    Server = window:AddTab({ Title = "Server Tools", Icon = "server" }),
    Settings = window:AddTab({ Title = "Settings", Icon = "settings" }),
    Credits = window:AddTab({ Title = "Credits", Icon = "info" })
}

local function loadTabScripts()
    local threads = {}
    for k, v in pairs(tabs) do
        local link = scriptLinks[k]
        if link and link ~= "" then
            table.insert(threads, coroutine.create(function()
                local success, err = pcall(function()
                    loadstring(game:HttpGet(link))()(v)
                end)
                if not success then
                    print("Error: Failed to load "..k.." script. Reason: "..err)
                end
            end))
        end
    end
    for _, thread in ipairs(threads) do
        coroutine.resume(thread)
    end
end

loadTabScripts()

saveManager:SetLibrary(mainScript)
interfaceManager:SetLibrary(mainScript)
saveManager:SetFolder("ZynovahubFREE/Lootify")
interfaceManager:SetFolder("ZynovahubFREE/Lootify")
interfaceManager:BuildInterfaceSection(tabs.Settings)
saveManager:BuildConfigSection(tabs.Settings)
window:SelectTab(1)
saveManager:LoadAutoloadConfig()
