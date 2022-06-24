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

    if game.PlaceId == 60654525 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Add Money", "Press Enter After Value", function(Moen)
        MAeN = Moen/2
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Buy", -MAeN, "Steel")
        wait(0.3)
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", MAeN, "Steel")
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", MAeN, "Steel")
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", MAeN, "Steel")
    end)
end

if game.PlaceId == 4839647441 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Add Money", "Press Enter After Value, put money in money collector", function(Monr)
        game.ReplicatedStorage.updateCollector:FireServer(Monr)
    end)
end
if game.PlaceId == 5775214331 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    local MainSection = Main:NewSection("GLITCHY, REJOIN TO CHANGE MULTIPLE TIMES!")

    MainSection:NewTextBox("Money Hack", "Press Enter After Value, makes stone work whatever u want", function(MonD)
        local meta = getrawmetatable(game)
        local old = meta.__namecall
        setreadonly(meta,false)
        function meta:__namecall(...)
        local args = {...}
        if self == game.ReplicatedStorage.Events.DropSell then
        args[1] = MonD
        return old(self,unpack(args))
        end
        return old(self,...)
        end
    end)
end
if game.PlaceId == 2110185000 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    local MainSection = Main:NewSection("use knife each time you do this!!!")

    MainSection:NewTextBox("Money Hack", "Press Enter After Value, then sell", function(Monw)
        moewn = Monw/5
        on = 1
        function codeW()
        local plrN = game.Players.LocalPlayer.Name
        for i,Base in pairs(game.Workspace.Fields[plrN].LastField:GetChildren()) do
        if Base.Name == "BASE" and on == 1 then
        for x,Crop in pairs(Base:GetChildren()) do
        local A_1 = game:GetService("Workspace").Fields[plrN].LastField.BASE[Crop.Name]
        local A_2 = game:GetService("Workspace")[plrN].Knife
        local A_3 = moewn
        local Event = game:GetService("ReplicatedStorage").ToolEvents.Rem
        Event:FireServer(A_1, A_2, A_3)
        wait()
        end
        end
        end
        end
        function codeB()
        local plrN = game.Players.LocalPlayer.Name
        for i,Base in pairs(game.Workspace.Fields[plrN].LastField:GetChildren()) do
        if Base.Name == "BASE" and on == 1 then
        for x,Crop in pairs(Base:GetChildren()) do
        local A_1 = game:GetService("Workspace").Fields[plrN].LastField.BASE[Crop.Name]
        local A_2 = game:GetService("Players")[plrN].Backpack.Knife
        local A_3 = moewn
        local Event = game:GetService("ReplicatedStorage").ToolEvents.Rem
        Event:FireServer(A_1, A_2, A_3)
        wait()
        end
        end
        end
        end

        local good,bad = pcall(codeW)
        if good then 
            codeW()
        else
            local good,bad = pcall(codeB)
            if good then
                codeB()
            else 
                wait()
            end
        end
    end)
end
if game.PlaceId == 2599583795 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Money", "Press Enter After Value", function(Monrde)
        local Remote = game.ReplicatedStorage.Storage.RemoteServices.TycoonService['Smelt']

        local Arguments = {
        [1] = Monrde
        }

        Remote:InvokeServer(unpack(Arguments))
    end)
end
