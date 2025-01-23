return function(tab)
    local plr = game.Players.LocalPlayer
    local chr = plr.Character or plr.CharacterAdded:Wait()

    local function tp(pos)
        if chr and chr:FindFirstChild("HumanoidRootPart") then
            chr.HumanoidRootPart.CFrame = CFrame.new(pos)
        end
    end

    local ms = tab:AddSection("Map Toggle")

    ms:AddToggle("MapToggle", {
        Title = "Equip Map",
        Default = false
    }):OnChanged(function(v)
        local bp = plr:FindFirstChild("Backpack")
        if v then
            if bp and not plr.Character:FindFirstChild("Map") then
                local tool = bp:FindFirstChild("Map")
                if tool then
                    plr.Character.Humanoid:EquipTool(tool)
                end
            end
        else
            local tool = plr.Character:FindFirstChild("Map")
            if tool then
                tool.Parent = bp
            end
        end
    end)

    local ts = tab:AddSection("Teleport Section")

    local world1 = tab:AddSection("World 1 Locations")
    world1:AddDropdown("World1Dropdown", {
        Title = "Select Location",
        Description = "Choose a World 1 location to teleport",
        Values = {"Pvp", "Leaderboards", "Mount Shop", "Spawn", "Grocery Store", "Blacksmith"},
        Multi = false,
        Default = "Spawn",
        Callback = function(selected)
            local coords = {
                ["Spawn"] = Vector3.new(-1.40, 59.17, -27.76),
                ["Pvp"] = Vector3.new(-15.83, 96.40, -413.64),
                ["Leaderboards"] = Vector3.new(166.53, 126.52, -576.48),
                ["Mount Shop"] = Vector3.new(9.22, 58.63, -14.07),
                ["Grocery Store"] = Vector3.new(59.63, 97.23, -368.83),
                ["Blacksmith"] = Vector3.new(-56.59, 97.23, -341.58)
            }
            tp(coords[selected])
        end
    })

    local world1Bosses = tab:AddSection("World 1 Bosses")
    world1Bosses:AddDropdown("World1BossesDropdown", {
        Title = "Select Boss",
        Description = "Choose a World 1 boss to teleport",
        Values = {"Ancient Gladiator", "Holy Sect Exile", "Sacrificial Piece", "Mechanical Minion", "Blade"},
        Multi = false,
        Default = "Ancient Gladiator",
        Callback = function(selected)
            local coords = {
                ["Ancient Gladiator"] = Vector3.new(38.12, 100.37, -309.53),
                ["Holy Sect Exile"] = Vector3.new(14.10, 100.37, -309.01),
                ["Sacrificial Piece"] = Vector3.new(-15.49, 100.37, -310.10),
                ["Mechanical Minion"] = Vector3.new(-37.56, 100.37, -309.54),
                ["Blade"] = Vector3.new(-1.08, 102.04, -282.64)
            }
            tp(coords[selected])
        end
    })

    local world2 = tab:AddSection("World 2 Locations")
    world2:AddDropdown("World2Dropdown", {
        Title = "Select Location",
        Description = "Choose a World 2 location to teleport",
        Values = {"Spawn", "Mount Shop", "Blacksmith"},
        Multi = false,
        Default = "Spawn",
        Callback = function(selected)
            local coords = {
                ["Spawn"] = Vector3.new(-691.55, 55.24, 1193.55),
                ["Mount Shop"] = Vector3.new(-710.89, 54.71, 1178.95),
                ["Blacksmith"] = Vector3.new(-749.19, 54.48, 1227.92)
            }
            tp(coords[selected])
        end
    })

    local world2Bosses = tab:AddSection("World 2 Bosses")
    world2Bosses:AddDropdown("World2BossesDropdown", {
        Title = "Select Boss",
        Description = "Choose a World 2 boss to teleport",
        Values = {"Jungle Hunter", "Dual Edge Specter", "Rock Golem Sentinel", "Marooned Cavalier", "Woodland Sovereign", "Cannibal Shaman"},
        Multi = false,
        Default = "Jungle Hunter",
        Callback = function(selected)
            local coords = {
                ["Jungle Hunter"] = Vector3.new(-718.06, 55.85, 1272.00),
                ["Dual Edge Specter"] = Vector3.new(-782.24, 56.09, 1321.91),
                ["Rock Golem Sentinel"] = Vector3.new(-826.70, 59.67, 1408.19),
                ["Marooned Cavalier"] = Vector3.new(-924.23, 56.78, 1385.65),
                ["Cannibal Shaman"] = Vector3.new(-891.35, 61.08, 1481.01),
                ["Woodland Sovereign"] = Vector3.new(-1041.97, 54.81, 1324.87)
            }
            tp(coords[selected])
        end
    })

    local world3 = tab:AddSection("World 3 Locations")
    world3:AddDropdown("World3Dropdown", {
        Title = "Select Location",
        Description = "Choose a World 3 location to teleport",
        Values = {"Spawn", "Mount Shop", "Blacksmith"},
        Multi = false,
        Default = "Spawn",
        Callback = function(selected)
            local coords = {
                ["Spawn"] = Vector3.new(1715.53, 54.19, 2819.48),
                ["Mount Shop"] = Vector3.new(1728.42, 51.23, 2760.71),
                ["Blacksmith"] = Vector3.new(1763.18, -132.36, 2888.10)
            }
            tp(coords[selected])
        end
    })

    local world3Bosses = tab:AddSection("World 3 Bosses")
    world3Bosses:AddDropdown("World3BossesDropdown", {
        Title = "Select Boss",
        Description = "Choose a World 3 boss to teleport",
        Values = {"Prototype Zero", "Abyssal High Priest", "Guardian Priest", "Advanced Mecha MKII", "Deep Sea Undead"},
        Multi = false,
        Default = "Deep Sea Undead",
        Callback = function(selected)
            local coords = {
                ["Deep Sea Undead"] = Vector3.new(1773.87, -132.80, 2860.51),
                ["Guardian Priest"] = Vector3.new(1380.68, -125.77, 2808.35),
                ["Advanced Mecha MKII"] = Vector3.new(2011.13, -128.93, 2760.34),
                ["Abyssal High Priest"] = Vector3.new(1363.40, -126.52, 2823.81),
                ["Prototype Zero"] = Vector3.new(2019.57, -64.02, 2814.30)
            }
            tp(coords[selected])
        end
    })
end
