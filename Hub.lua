local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Craddee's Bad Hub", "Ocean")

if game.PlaceId == 8508161757 then
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main Stuffs")

    MainSection:NewButton("Spawn Tips Cash Bag", "Must have Tip Jar! Might Lag!", function()
        game.ReplicatedStorage.CashBags.TipCashBag:FireServer()
    end)

    MainSection:NewButton("Spawn Bath Cash Bag", "Must have Bath! Might Lag!", function()
        game.ReplicatedStorage.CashBags.BathCashBag:FireServer()
    end)
end
    
    if game.PlaceId == 413053960 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local StatSection = Main:NewSection("Stats")

    StatSection:NewTextBox("Set Strength", "TextboPress Enter After ValuexInfo", function(STR)
        game.Players.LocalPlayer.RemoteFunctions.UR_ANTIHACK:FireServer("Strength", "one", STR, 2)
    end)

    StatSection:NewTextBox("Set Loot", "Press Enter After Value", function(LOO)
        game.Players.LocalPlayer.RemoteFunctions.UR_ANTIHACK:FireServer("Loot", "one", LOO, 2)
    end)

    StatSection:NewTextBox("Set Health", "Press Enter After Value", function(HEA)
        game.Players.LocalPlayer.RemoteFunctions.UR_ANTIHACK:FireServer("Health", "one", HEA, 2)
    end)

    local MoneySection = Main:NewSection("Money")

    MoneySection:NewTextBox("Add Money", "Press Enter After Value", function(Mon)
        MAN = Mon/2
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Buy", "Gold", -MAN, "Iron")
        wait(0.3)
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", "Gold", MAN, "Iron")
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", "Gold", MAN, "Iron")
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", "Gold", MAN, "Iron")
    end)

    local MiscSection = Main:NewSection("Misc")

    MiscSection:NewButton("GodMode", "ONLY WORKS IN SPAWN", function()
        game.Players.LocalPlayer.RemoteFunctions.UR_ANTIHACK:FireServer("Health", "one", 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 2)
    end)

    MiscSection:NewButton("GodMode NPC", "HIT A NPC TO GIVE IT GODMODE", function()
        game.Players.LocalPlayer.RemoteFunctions.UR_ANTIHACK:FireServer("Strength", "one", 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 2)
    end)

    MiscSection:NewButton("Reset Gold", "HIT A NPC TO RESET GOLD", function()
        game.Players.LocalPlayer.RemoteFunctions.UR_ANTIHACK:FireServer("Loot", "one", 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 2)
    end)
end