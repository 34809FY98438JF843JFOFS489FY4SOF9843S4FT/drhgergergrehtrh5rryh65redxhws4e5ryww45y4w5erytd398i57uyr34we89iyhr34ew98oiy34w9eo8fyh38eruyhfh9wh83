return function(tab)
    local plr = game.Players.LocalPlayer
    local chr = plr.Character or plr.CharacterAdded:Wait()
    local bp = plr:FindFirstChild("Backpack")

    local function tp(pos)
        if chr and chr:FindFirstChild("HumanoidRootPart") then
            chr.HumanoidRootPart.CFrame = CFrame.new(pos)
        end
    end

    local function equipMap()
        if bp and not plr.Character:FindFirstChild("Map") then
            local tool = bp:FindFirstChild("Map")
            if tool then
                plr.Character.Humanoid:EquipTool(tool)
            end
        end
    end

    local function unequipMap()
        local tool = plr.Character:FindFirstChild("Map")
        if tool then
            tool.Parent = bp
        end
    end

    local ms = tab:AddSection("Map Toggle")

    ms:AddToggle("MapToggle", {
        Title = "Equip Map",
        Default = false
    }):OnChanged(function(v)
        if v then
            equipMap()
            print("Map equipped")
        else
            unequipMap()
            print("Map unequipped")
        end
    end)

    local locations = {
        ["World 1"] = {
            ["Pvp"] = Vector3.new(-15.83, 96.40, -413.64),
            ["Leaderboards"] = Vector3.new(166.53, 126.52, -576.48),
            ["Mount Shop"] = Vector3.new(9.22, 58.63, -14.07),
            ["Spawn"] = Vector3.new(-1.40, 59.17, -27.76),
            ["Grocery Store"] = Vector3.new(59.63, 97.23, -368.83),
            ["Blacksmith"] = Vector3.new(-56.59, 97.23, -341.58)
        },
        ["World 1 Bosses"] = {
            ["Ancient Gladiator"] = Vector3.new(38.12, 100.37, -309.53),
            ["Holy Sect Exile"] = Vector3.new(14.10, 100.37, -309.01),
            ["Sacrificial Piece"] = Vector3.new(-15.49, 100.37, -310.10),
            ["Mechanical Minion"] = Vector3.new(-37.56, 100.37, -309.54),
            ["Blade"] = Vector3.new(-1.08, 102.04, -282.64)
        },
        ["World 2"] = {
            ["Spawn"] = Vector3.new(-691.55, 55.24, 1193.55),
            ["Mount Shop"] = Vector3.new(-710.89, 54.71, 1178.95),
            ["Blacksmith"] = Vector3.new(-749.19, 54.48, 1227.92)
        },
        ["World 2 Bosses"] = {
            ["Jungle Hunter"] = Vector3.new(-718.06, 55.85, 1272.00),
            ["Dual Edge Specter"] = Vector3.new(-782.24, 56.09, 1321.91),
            ["Rock Golem Sentinel"] = Vector3.new(-826.70, 59.67, 1408.19),
            ["Marooned Cavalier"] = Vector3.new(-924.23, 56.78, 1385.65),
            ["Woodland Sovereign"] = Vector3.new(-1041.97, 54.81, 1324.87),
            ["Cannibal Shaman"] = Vector3.new(-891.35, 61.08, 1481.01)
        },
        ["World 3"] = {
            ["Spawn"] = Vector3.new(1715.53, 54.19, 2819.48),
            ["Mount Shop"] = Vector3.new(1728.42, 51.23, 2760.71),
            ["Blacksmith"] = Vector3.new(1763.18, -132.36, 2888.10)
        },
        ["World 3 Bosses"] = {
            ["Prototype Zero"] = Vector3.new(2019.57, -64.02, 2814.30),
            ["Abyssal High Priest"] = Vector3.new(1363.40, -126.52, 2823.81),
            ["Guardian Priest"] = Vector3.new(1380.68, -125.77, 2808.35),
            ["Advanced Mecha MKII"] = Vector3.new(2011.13, -128.93, 2760.34),
            ["Deep Sea Undead"] = Vector3.new(1773.87, -132.80, 2860.51)
        }
    }

    for world, places in pairs(locations) do
        local section = tab:AddSection(world)
        section:AddDropdown(world .. "Dropdown", {
            Title = "Select Location",
            Description = "Choose a location to teleport",
            Values = table.keys(places),
            Multi = true,
            Default = {},
            Callback = function(selected)
                for _, loc in ipairs(selected) do
                    if places[loc] then
                        tp(places[loc])
                        print("Teleported to:", loc)
                        wait(1) 
                    end
                end
            end
        })
    end
end
