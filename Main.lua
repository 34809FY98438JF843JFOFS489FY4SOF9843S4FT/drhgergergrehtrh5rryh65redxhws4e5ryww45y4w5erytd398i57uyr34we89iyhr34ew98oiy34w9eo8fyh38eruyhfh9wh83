return function(tab)
    local ms = tab:AddSection("Test")

    ms:AddButton({
        Title = "Test Button",
        Description = "Press this to test the button.",
        Callback = function()
            print("Button pressed: Test")
        end
    })

    ms:AddToggle("TestToggle", {
        Title = "Test Toggle",
        Default = false
    }):OnChanged(function(Value)
        print("Toggle state changed:", Value)
    end)

    ms:AddSlider("TestSlider", {
        Title = "Test Slider",
        Description = "Move the slider to test.",
        Default = 0.5,
        Min = 0,
        Max = 10,
        Rounding = 2,
        Callback = function(Value)
            print("Slider value:", Value)
        end
    })

    ms:AddInput("TestInput", {
        Title = "Test Input",
        Default = "0",
        Placeholder = "Type something...",
        Numeric = false,
        Finished = true,
        Callback = function(Value)
            print("Input value:", Value)
        end
    })

    ms:AddDropdown("TestDropdown", {
        Title = "Test Dropdown",
        Values = {"Option 1", "Option 2", "Option 3"},
        Multi = false,
        Default = 1,
        Callback = function(Value)
            print("Dropdown selected:", Value)
        end
    })
end