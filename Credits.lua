return function(tab)
    local credits = tab:AddSection("Credits")

    credits:AddParagraph("Executor", "Lootify - Integrated with Zynova Hub V1, providing w shit for enhanced gameplay.")
    credits:AddParagraph("Developer", "Developed by Albert")
    credits:AddParagraph("Contact", "For support or inquiries, reach out via Discord server discord.gg/zynovascripts.")

    credits:AddButton({
        Title = "Copy Discord Link",
        Description = "Click to copy the Discord server link to your clipboard.",
        Callback = function()
            setclipboard("https://discord.gg/zynovascripts")
        end
    })
end
