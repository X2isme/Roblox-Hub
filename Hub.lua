if TestVariable = true
    print("T")
end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Craddee's Bad Hub", "Ocean")
-- Variables
local SmallTick = 0.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001
local Tick = 0.00000000000000000000000000000000000000000000000000000000000000000000000001
local BigsmallTick = 0.00000000000000000000000001
local BigTick = 0.00000001
local TheInf = (5/0)
local SmallBigNumber = 99999
local VeryHugeNumber = math.pow (SmallBigNumber, 61)
local HugerNumber = math.pow (SmallBigNumber, 29)
local HugeNumber = math.pow (SmallBigNumber, 3)
local MathHuge = math.huge
local localplayer = game.Players.LocalPlayer
-- print("View Variable Values: ", SmallTick, Tick, BigTick, TheInf, SmallBigNumber, VeryHugeNumber, HugerNumber, HugeNumber, MathHuge)
-- AllPlayers
Players = game:GetService("Players")
local allPlayersName = {}
for i, player in pairs(Players:GetPlayers()) do
    allPlayersName[i] = player.Name
end
local newPlayerList = allPlayersName


if game.PlaceId == 8508161757 then
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main Stuffs")

    MainSection:NewButton("AutoSpawn Tips CashBag", "Must have Tip Jar!", function()
        AutoTipCashBag = true
        while AutoTipCashBag == true do
            game.ReplicatedStorage.CashBags.TipCashBag:FireServer()
            wait(tick)
        end
    end)

    MainSection:NewButton("Stop AutoTipFarm", "Must have Tip Jar!", function()
        AutoTipCashBag = false
    end)

    MainSection:NewButton("AutoSpawn Bath CashBag", "Must have Bath!", function()
        AutoBathCashBag = true
        while AutoBathCashBag == true do
            game.ReplicatedStorage.CashBags.BathCashBag:FireServer()
            wait(tick)
        end
    end)

    MainSection:NewButton("Stop AutoBathFarm", "Must have Bath!", function()
        AutoBathCashBag = false
    end)
end

if game.PlaceId == 10820788503 then
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main Stuffs")

    MainSection:NewButton("AutoSpawn Tips CashBag", "Must have Tip Jar!", function()
        AutoTipCashBag = true
        while AutoTipCashBag == true do
            game.ReplicatedStorage.CashBags.TipCashBag:FireServer()
            wait(tick)
        end
    end)

    MainSection:NewButton("Stop AutoTipFarm", "Must have Tip Jar!", function()
        AutoTipCashBag = false
    end)

    MainSection:NewButton("AutoSpawn Bath CashBag", "Must have Bath!", function()
        AutoBathCashBag = true
        while AutoBathCashBag == true do
            game.ReplicatedStorage.CashBags.BathCashBag:FireServer()
            wait(tick)
        end
    end)

    MainSection:NewButton("Stop AutoBathFarm", "Must have Bath!", function()
        AutoBathCashBag = false
    end)
end
    
    if game.PlaceId == 413053960 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local StatSection = Main:NewSection("Stats")

    StatSection:NewTextBox("Set Strength", "TextboPress Enter After ValuexInfo", function(STRENGTH)
        game.Players.LocalPlayer.RemoteFunctions.UR_ANTIHACK:FireServer("Strength", "one", STRENGTH, 2)
    end)

    StatSection:NewTextBox("Set Loot", "Press Enter After Value", function(LOOT)
        game.Players.LocalPlayer.RemoteFunctions.UR_ANTIHACK:FireServer("Loot", "one", LOOT, 2)
    end)

    StatSection:NewTextBox("Set Health", "Press Enter After Value", function(HEALTH)
        game.Players.LocalPlayer.RemoteFunctions.UR_ANTIHACK:FireServer("Health", "one", HEALTH, 2)
    end)

    local MoneySection = Main:NewSection("Money")

    MoneySection:NewTextBox("Add Money", "Press Enter After Value", function(Money)
        Cash = Money/2
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Buy", "Gold", -Cash, "Iron")
        wait(0.3)
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", "Gold", Cash, "Iron")
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", "Gold", Cash, "Iron")
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", "Gold", Cash, "Iron")
    end)

    local MiscSection = Main:NewSection("Misc")

    MiscSection:NewButton("GodMode", "ONLY WORKS IN SPAWN", function()
        game.Players.LocalPlayer.RemoteFunctions.UR_ANTIHACK:FireServer("Health", "one", HugeNumber, 2)
    end)

    MiscSection:NewButton("GodMode NPC", "HIT A NPC TO GIVE IT GODMODE", function()
        game.Players.LocalPlayer.RemoteFunctions.UR_ANTIHACK:FireServer("Strength", "one", HugeNumber, 2)
    end)

    MiscSection:NewButton("Reset Gold", "KILL A NPC TO RESET GOLD", function()
        game.Players.LocalPlayer.RemoteFunctions.UR_ANTIHACK:FireServer("Loot", "one", HugeNumber, 2)
    end)
end

    if game.PlaceId == 60654525 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Add Money", "Press Enter After Value", function(Money)
        MoneyDivided = Money/2
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Buy", -MoneyDivided, "Steel")
        wait(0.3)
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", MoneyDivided, "Steel")
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", MoneyDivided, "Steel")
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", MoneyDivided, "Steel")
    end)
end

if game.PlaceId == 4839647441 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Add Money", "Press Enter After Value, put money in money collector", function(Money)
        game.ReplicatedStorage.updateCollector:FireServer(Money)
    end)
end
if game.PlaceId == 5775214331 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    local MainSection = Main:NewSection("GLITCHY, REJOIN TO CHANGE MULTIPLE TIMES!")

    MainSection:NewTextBox("Money Hack", "Press Enter After Value, makes stone work whatever u want", function(Money)
        local meta = getrawmetatable(game)
        local old = meta.__namecall
        setreadonly(meta,false)
        function meta:__namecall(...)
        local args = {...}
        if self == game.ReplicatedStorage.Events.DropSell then
        args[1] = Money
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

    MainSection:NewTextBox("Money", "Press Enter After Value, Money Put In Money Collector", function(Monrde)
        game.ReplicatedStorage.Storage.RemoteServices.TycoonService.Smelt:FireServer(Monrde)
    end)
end

if game.PlaceId == 4301313353 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Money", "Press Enter After Value, Money Put In Money Collector", function(Monrder)
        game.ReplicatedStorage.updateCollector:FireServer(Monrder)
    end)
end

if game.PlaceId == 4301321281 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Money", "Press Enter After Value, Money Put In Money Collector", function(Monrder)
        game.ReplicatedStorage.updateCollector:FireServer(Monrder)
    end)
end

if game.PlaceId == 9461798258 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Inf Money", "Press then you will get money", function()
        while task.wait() do
            local event = game:GetService("ReplicatedStorage").cleanPoop
            event:FireServer()
            local event = game:GetService("ReplicatedStorage").SaveGame
            event:FireServer()
            end
    end)

    MainSection:NewButton("Inf Mad", "Press then you will get mad", function()
        local args = {
            [1] = game:GetService("ReplicatedStorage").Upgrades.maid
         }
         
         game:GetService("ReplicatedStorage").buyUpgrade:FireServer(unpack(args))
    end)

    MainSection:NewButton("Inf Cookies", "Press then you will get cookies", function()
        local args = {
            [1] = game:GetService("ReplicatedStorage").Items.food
         }
         
         game:GetService("ReplicatedStorage").buyTool:FireServer(unpack(args))
         for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
           if v:IsA("Tool")  then
            wait()
            v.Parent = game.Players.LocalPlayer.Character
            wait()
            v.Parent = game.Workspace
         end
         end
    end)
end

if game.PlaceId == 9438506890 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Add Money", "Press Enter After Value", function(Maern)
        game.ReplicatedStorage.Remotes.BuyFood:FireServer(-Maern)
    end)
end

if game.PlaceId == 6668183009 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Money", "Press Enter After Value, Money Put In Money Collector", function(Monera)
        game.ReplicatedStorage.Shop:FireServer("Buy", "J", -Monera)
    end)
end

if game.PlaceId == 6668183009 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MiscSection:NewButton("SEE PAINTINGS WORTH", "Press F9 and look at warnings", function()
       local DevConsole = game:GetService("CoreGui"):WaitForChild("DevConsoleMaster")
local Window = DevConsole.DevConsoleWindow
local UI = Window.DevConsoleUI
local MainView = UI:WaitForChild("MainView")
local ClientLog = MainView:WaitForChild("ClientLog")

local GetHighest = function(...)
local HighestValue
for _, Value in next, ... do
if not HighestValue or Value > HighestValue then
HighestValue = Value
end
end
return HighestValue
end

local CPrint = function(...)
local Args = {...}
local TempColour = table.remove(Args)
local Colour
if typeof(TempColour) == "Color3" then
Colour = TempColour
else
Colour = Color3.fromRGB(255,255,255)
table.insert(Args, TempColour)
end
local CandidParts = {}
for _, Element in next, ClientLog:GetChildren() do
local Name = Element.Name
if Name:match("%d+") then
table.insert(CandidParts, tonumber(Element.Name))
end
end
   local Expecting = GetHighest(CandidParts)
   Expecting = Expecting and (Expecting + 1) or (2)
   print(unpack(Args))
local ExpectedPart = ClientLog:WaitForChild(Expecting)
   local MessagePart = ExpectedPart:FindFirstChild("msg")
   if MessagePart then
       MessagePart.TextColor3 = Colour
   end
end

-- Script Made by Unordinary
for i,v in pairs(game:GetService("ReplicatedStorage").PlayerInfo:GetDescendants()) do
    if v.Name == "1" or v.Name == "2" or v.Name == "3" then
        CPrint(v.Value, Color3.fromRGB(0,255,109))
        wait()
    end
end 
    end)
end

if game.PlaceId == 9711536246 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Add Coins", "Press Enter After Value", function(KiaCoin)
        game.ReplicatedStorage.PointManager.AddValue:FireServer("Coin", KiaCoin)
    end)
end

if game.PlaceId == 7034960857 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Add Coins", "Press Enter After Value", function(Coin)
        local args = {
            [1] = "JJ-DX-01-BBL-18",
            [2] = -Coin
        }

        game:GetService("ReplicatedStorage").Remotes.BuyDragonEvent:FireServer(unpack(args))
    end)
end

if game.PlaceId == 4325400580 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewDropdown("Set Color", "Color / Team gamepasses for free", {"Default", "Black", "Desert"}, function(Color)
        local Skin_Name = "Default"
        game:GetService("ReplicatedStorage").RE.changeSkins:FireServer(Color)
    end)

    MainSection:NewButton("Kill all enemy units", "Kill all the enemy units", function()
        for i,v in pairs(game.Workspace.Game.Units:GetChildren()) do
            if v.Name == game.Players.LocalPlayer.Name then
            else
            for i,v2 in pairs(v:GetChildren()) do
            local Missile = "Cruise Missile"
            local Position = v2.Torso.Position
            game:GetService("ReplicatedStorage").RE.FireMissile:FireServer(Missile, Position)
            end
            end
            end
    end)

    MainSection:NewButton("Rebirth Farm", "Farm rebirths", function()
        while wait(.3) do
            loadstring(game:HttpGet("https://pastebin.com/raw/rVrEFdtC"))()
            wait(.15)
            game:GetService("ReplicatedStorage").RE.rebirth:FireServer()
        end
    end)

    MainSection:NewButton("Max Base", "Max out ur base", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/rVrEFdtC"))()
    end)

    MainSection:NewButton("Give all max base", "Give everyone in the server a max base", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/wMDh7RcS"))()           
    end)

    MainSection:NewButton("Capture All", "Capture / Claim all bases", function()
        for i,v in pairs(game.Workspace.Game.Base.Interactives:GetChildren()) do
            game:GetService("ReplicatedStorage").RE.StartCapturing:FireServer(v, true)
            end            
    end)

    Section:NewKeybind("Press E to launch nuke", "launches nuke at mouse when u press E", Enum.KeyCode.E, function()
        local mouse = game:service'Players'.LocalPlayer:GetMouse()

mouse.KeyDown:Connect(function(k)
if k == "q" then
game:GetService("ReplicatedStorage").RE.FireMissile:FireServer("Nuke",Vector3.new(mouse.Hit.p.X,48.6649132,mouse.Hit.p.Z))
end
end)
    end)
    

    MainSection:NewButton("Lag Players", "Drops nuked to all palyers for free", function()
        while wait() do
            for i,v in pairs(game.Players:GetChildren()) do
             targetPos = v.Character.HumanoidRootPart.Position
             game.ReplicatedStorage.RE.FireMissile:FireServer("Nuke",targetPos)
            end
            end           
    end)

    local MainSection = Main:NewSection("Max Base Anyone")
        MainSection:NewDropdown("Max Base", "Give a MaxedOut base to anyone!", allPlayersName, function(Victim)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/MaxBaseAnyoneArmyTycoon.lua",true))()
    end)
end

if game.PlaceId == 2955597371 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Inf Oxygen", "Dont drown and have inf Air / Oxygen", function()
        game:GetService("Players").LocalPlayer.Data.Passes.xInfiniteOxygen.Value=true         
    end)

    MainSection:NewButton("Catch All Fish", "Capture fish", function()
        for i,v in pairs(game:GetService("Workspace").Animals:GetChildren())do
            game.ReplicatedStorage.RemoteEvents.RemoteCollectFish:FireServer(v)
            end          
    end)

    MainSection:NewButton("Auto Upgrade Tills", "Auto Upgrade Tills", function()
        while wait(1) do
            for i=1,4 do game.ReplicatedStorage.RemoteEvents.UpgradeTillEvent:InvokeServer("Till"..tostring(i))end    
            end         
    end)
end

if game.PlaceId == 6668183009 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Money", "Press Enter After Value", function(Moneraa)
        local args = {
            [1] = "First",
            [2] = Moneraa
        
        }
        
        game:GetService("ReplicatedStorage").RE.ticket:FireServer(unpack(args))
    end)
end

if game.PlaceId == 6198039277 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Inf Money", "Get money very fast", function()
        local rs = game:GetService("RunService")

        game.Players.LocalPlayer.PlayerGui.OnScreen.Stats.Pstat.ChildAdded:Connect(function(v)
            if v.Name == "PopUp" then
                rs.RenderStepped:wait()
                v:Destroy()
            end
        end)
        
        rs.RenderStepped:Connect(function()
            for i = 1, 3 do
                game.ReplicatedStorage.RE.Robbery:FireServer()
            end
        end)       
    end)
end

if game.PlaceId == 2608219442 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Nice Autofarm", "Nice but laggy autofarm", function()
        for i,v in pairs (game:GetService("Workspace").Absorbable:GetChildren()) do
            v.CFrame = game:GetService("Players").LocalPlayer.character.HumanoidRootPart.CFrame
            end     
    end)
end

if game.PlaceId == 4064108474 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Add Money", "Press Enter After Value", function(Monerty)
        game.ReplicatedStorage.RE.moneychange:FireServer(Monerty)
    end)

    MainSection:NewTextBox("Add EXP", "Press Enter After Value", function(ThatEXP)
        game.ReplicatedStorage.RE.addXP:FireServer(ThatEXP)
    end)
end

if game.PlaceId == 3203888787 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Add Money", "Press Enter After Value", function(Monertyy)
        game.ReplicatedStorage.RE.moneychange:FireServer(Monertyy)
    end)

    MainSection:NewTextBox("Add EXP", "Press Enter After Value", function(ThatEXPP)
        game.ReplicatedStorage.RE.addXP:FireServer(ThatEXPP)
    end)
end

if game.PlaceId == 2848994117 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Add Money", "Press Enter After Value", function(Monertyye)
        game.ReplicatedStorage.RE.moneychange:FireServer(Monertyye)
    end)

    MainSection:NewTextBox("Add People", "Press Enter After Value", function(ppl)
        game.ReplicatedStorage.RE.addXP:FireServer(ppl)
    end)
end

if game.PlaceId == 7346416636 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Scam Gui", "Gui with scam scripts, not made by me", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/scamguipopittrading.lua",true))()   
    end)
end

if game.PlaceId == 6717367660 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Inf Money", "Get Inf Money", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/happyland.lua",true))()  
    end)
end

if game.PlaceId == 6717367660 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Pink X GUI", "open a Roblox GUI", function()
        loadstring(game:HttpGet("https://drizzy.wtf//PinkX/Script"))()  
    end)
end

if game.PlaceId == 9415202048 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewDropdown("Equips item", "All items listed so far", {"BloxyCola", "Noodle", "BANG!", "Moneybag", "GravityCoil", "Tixbomb", "Railgun", "InvisibilityCape", "BlowDryer", "Darkheart", "Godly Fists"}, function(ItemDropDown)
        local args = {
            [1] = ItemDropDown
        }
        
        game:GetService("ReplicatedStorage").Remotes.equipToolEvent:FireServer(unpack(args))
    end)

    MainSection:NewTextBox("Equipt item (More Items)", "Use if item is not listed on first 1", function(ItemText)
        local args = {
            [1] = ItemText
        }
        
        game:GetService("ReplicatedStorage").Remotes.equipToolEvent:FireServer(unpack(args))
    end)
end

if game.PlaceId == 218377574 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("AutoLift", "nice simple AutoLift", function()
        DoAutoLift = true
        while DoAutoLift == true do
            game:GetService("ReplicatedStorage").Remotes.Lift:FireServer()
            wait(Tick)
            end   
    end)

    MainSection:NewButton("Stop AutoLift", "Stops AutoLift", function()
        DoAutoLift = false
    end)
end

if game.PlaceId == 9739506878 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("AutoLift", "nice simple AutoLift", function()
        DoAutoLift = true
        while DoAutoLift == true do
            game:GetService("ReplicatedStorage").Remotes.Lift:FireServer()
            wait(Tick)
            end   
    end)

    MainSection:NewButton("Stop AutoLift", "Stops AutoLift", function()
        DoAutoLift = false
    end)
end

if game.PlaceId == 10135321551 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("AutoLift", "nice simple AutoLift", function()
        DoAutoLift = true
        while DoAutoLift == true do
            game:GetService("ReplicatedStorage").Remotes.Lift:FireServer()
            wait(Tick)
            end   
    end)

    MainSection:NewButton("Stop AutoLift", "Stops AutoLift", function()
        DoAutoLift = false
    end)
end

if game.PlaceId == 10144942022 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("AutoLift", "nice simple AutoLift", function()
        DoAutoLift = true
        while DoAutoLift == true do
            game:GetService("ReplicatedStorage").Remotes.Lift:FireServer()
            wait(Tick)
            end   
    end)

    MainSection:NewButton("Stop AutoLift", "Stops AutoLift", function()
        DoAutoLift = false
    end)
end

if game.PlaceId == 10135223315 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("AutoLift", "nice simple AutoLift", function()
        DoAutoLift = true
        while DoAutoLift == true do
            game:GetService("ReplicatedStorage").Remotes.Lift:FireServer()
            wait(Tick)
            end   
    end)

    MainSection:NewButton("Stop AutoLift", "Stops AutoLift", function()
        DoAutoLift = false
    end)
end

if game.PlaceId == 10135914792 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("AutoLift", "nice simple AutoLift", function()
        DoAutoLift = true
        while DoAutoLift == true do
            game:GetService("ReplicatedStorage").Remotes.Lift:FireServer()
            wait(Tick)
            end   
    end)

    MainSection:NewButton("Stop AutoLift", "Stops AutoLift", function()
        DoAutoLift = false
    end)
end

if game.PlaceId == 10001513103 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Unlimited Words GUI, read desc", "just dont use more words than u have", function()
        local library = loadstring(game:HttpGet("https://pastebin.com/raw/eKwyeQa0", true))()

        local tab1 = library:CreateTab("Unlimited Words", true)
        local box = library:MakeBox(tab1,"Enter Text Here","...",function(box)
           local args = {
               [1] = box.text,
               [2] = "All"
           }
           game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        end) 
    end)
end

if game.PlaceId == 9718523719 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("autoclick noob", "NoobieClick?", function()
        AutoClickNoob = true
        while AutoClickNoob == true do
            game:GetService("ReplicatedStorage").ClickNoob:FireServer()
            wait(0.000001)
            end 
    end)

    MainSection:NewButton("stop autonoob", "No NoobieClick", function()
        AutoClickNoob = false
    end)
end

if game.PlaceId == 8884334497 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("OP Autoclick", "Wassup im B O R E D", function()
        DoAutoclick = true
        while DoAutoclick == true do
            game:GetService("ReplicatedStorage").Remotes.Click:InvokeServer()
            end
    end)

    MainSection:NewButton("Stop Autoclick", "Stops OP Autoclick", function()
        DoAutoclick = false
    end)
end

if game.PlaceId == 920587237 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("make all pets FR (Client)", "rejoin to undo", function()
        local clientData = require(game.ReplicatedStorage.ClientModules.Core.ClientData)
        local playerData = clientData.get_data()[tostring(game.Players.LocalPlayer)]
        for i,v in pairs(playerData.inventory.pets) do
        v.properties.rideable = true
        v.properties.flyable = true
        end
    end)
end

if game.PlaceId == 9498006165 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("OP Autoclick", "S p a c e B a r", function()
        DoAutoclick = true
        while DoAutoclick == true do
            game:GetService("ReplicatedStorage").Events.Tap:FireServer()
            wait(Tick)
        end
    end)

    MainSection:NewButton("Stop Autoclick", "Stops OP Autoclick", function()
        DoAutoclick = false
    end)
end

if game.PlaceId == 3686253681 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Auto Mass", "M A S S", function()
        DoAutoMass = true
        while DoAutoMass == true do
            local args = {
                [1] = "Mass",
                [2] = VeryHugeNumber
            }
            game:GetService("ReplicatedStorage").ChangePlayerStat:FireServer(unpack(args))
            wait(SmallTick)
        end
    end)

    MainSection:NewButton("Stop Auto Mass", "Stops AutoMass", function()
        DoAutoMass = false
    end)

    MainSection:NewButton("Auto SuperNova", "Super! Nova!", function()
        DoAutoSuperNova = true
        while DoAutoSuperNova == true do
            game:GetService("ReplicatedStorage").GoSupernova:FireServer()
            wait(BigTick)
        end
    end)

    MainSection:NewButton("Auto SuperNova", "Stops AutoSuperNova", function()
        DoAutoSuperNova = false
    end)
end

if game.PlaceId == 8750997647 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Autoclick", "Be Autoclicking", function()
        Autoclick = true
        while Autoclick == true do
            game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
            wait(Tick)
        end
    end)

    MainSection:NewButton("Stop Autoclick", "Stops Autoclick", function()
        DoAutoclick = false
    end)

    MainSection:NewButton("Auto Rebirth", "Auto Rebirths", function()
        DoAutoRebirth = true
        while DoAutoRebirth == true do
            local args = {
                 [1] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
            wait(BigTick)
        end
    end)

    MainSection:NewButton("Stop Auto Rebirth", "Stops Auto Rebirth", function()
        DoAutoRebirth = false
    end)
end

if game.PlaceId == 10108131074 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("Auto Grass - Read Desc", "your most unlocked world by numbers", function(World)
    DoAutoGrass = true
    while DoAutoGrass == true do
        local args = {
            [1] = "1"
        }
        game:GetService("ReplicatedStorage").Remotes.Game.ClientMowGrass:FireServer(unpack(args))
        wait(BigTick)
        end
    end)

MainSection:NewButton("Stop Auto Grass", "Stops AutoGrass", function()
        DoAutoGrass = false
    end)

MainSection:NewButton("Fill Gas", "Fills up gas", function()

    local args = {
    [1] = workspace.Map.Zones:FindFirstChild("1"):FindFirstChild("1").GasStation.GasPumps,
    [2] = true
    }
    game:GetService("ReplicatedStorage").Remotes.Game.ClientToggleUseGasStation:FireServer(unpack(args))

    end)

MainSection:NewButton("Auto Fill Gas", "Basiclly Inf Gas", function()
    AutoGas = true
    while AutoGas == true do
        local args = {
        [1] = workspace.Map.Zones:FindFirstChild("1"):FindFirstChild("1").GasStation.GasPumps,
        [2] = true
        }
        game:GetService("ReplicatedStorage").Remotes.Game.ClientToggleUseGasStation:FireServer(unpack(args))
        wait(BigTick)
        end
    end)

MainSection:NewButton("Stop Auto Fill Gas", "Stops Auto Gas", function()
    AutoGas = false
    end)
end

if game.PlaceId == 10439131644 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("Add Candy", "Adds candy", function(Candy)
    local args = {
        [1] = "JoeyMcFlowey",
        [2] = Candy
    }
    game:GetService("ReplicatedStorage").Droptopla:FireServer(unpack(args))
    end)
end

if game.PlaceId == 9185412259 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewDropdown("Get Any Badge", "OP But Not", {"PSEasyMode", "PSNormalMode", "PSHardMode", "PSExtremeMode"}, function(Badge)
    local args = {
        [1] = Badge
    }
    game:GetService("ReplicatedStorage").Knit.Services.PlayerBadgeService.RF.rewardBadge:InvokeServer(unpack(args))
    end)
end

if game.PlaceId == 8265676621 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

local dropdown = MainSection:NewDropdown("Kick Any Player", "OP But Not", allPlayersName, function(TheVictim)
    game.ReplicatedStorage.KickPlayer:FireServer(TheVictim)
    end)
end

if game.PlaceId == 7262582142 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("Paintbrush - Desc", "Max is 99", function(PaintBrushLevel)
    local args = {
        [1] = "Equip",
        [2] = {
            ["Tool"] = "T".. PaintBrushLevel
        }
    }
    game:GetService("ReplicatedStorage").SpecWork.Shared.Network.ToggleTool:InvokeServer(unpack(args))
    end)

MainSection:NewTextBox("FillPaint - Desc", "Max is 100", function(FillPaint)
    local args = {
        [1] = FillPaint
    }

    game:GetService("ReplicatedStorage").SpecWork.Shared.Network.RefillPaint:FireServer(unpack(args))
    end)

MainSection:NewButton("Inf Paint", "PainBrush", function()
    InfPaint = true
    while InfPaint == true do
        local args = {
            [1] = 100
        }
        game:GetService("ReplicatedStorage").SpecWork.Shared.Network.RefillPaint:FireServer(unpack(args))
        wait(0.005)
        end
    end)

MainSection:NewButton("Stop InfPaint", "Anti PainBrush", function()
    InfPaint = false
    end)
end

if game.PlaceId == 9846056789 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Diamond Cup ESP", "press when diamonds r shown", function(DiamondCup1)
    for i,v in pairs(workspace:GetChildren()) do
        if v.Name == "fakediamond1" then v:Destroy() end
    end
    
    local diamondmesh = Instance.new("MeshPart")
    diamondmesh.Anchored = true
    diamondmesh.MeshId = "rbxassetid://10241207391"
    diamondmesh.Name = "fakediamond1"
    diamondmesh.Size = Vector3.new(0.507319, 0.543082, 0.585802)
    Instance.new("Highlight", diamondmesh)
    
    local player = game.Players.LocalPlayer
    local character = player.character
    local arena
    local cupFolder
    
    for _, v in pairs(game:GetService("Workspace").ArenasREAL:GetDescendants()) do
        if v:IsA("TextLabel") and v.Text == "@"..player.Name then
            arena = v.Parent.Parent.Parent.Parent.Parent.Parent.Parent
        end
    end
    
    for _, v in pairs(arena:GetDescendants()) do
        if v.Name == "Spot" then
            v.Parent.Name = tostring(v.Value)
            cupFolder = v.Parent.Parent
        end
    end
    
    for _,diamond in pairs(arena.ArenaTemplate.Important.Diamonds:GetChildren()) do
        if diamond.Transparency == 1 then continue end
        
        local closest,distance = nil, 1000
        for _,cup in pairs(cupFolder:GetChildren()) do
            local mag = (cup.Detail.Position - diamond.Position).Magnitude
            if mag < distance then closest = cup distance = mag end
        end
        
        local clone = diamondmesh:Clone()
        clone.Parent = workspace
        clone.Position = closest.Primary.Position
        closest.Primary:GetPropertyChangedSignal("Position"):Connect(function()
            clone.Position = closest.Primary.Position
        end)
    end
    end)
end

if game.PlaceId == 10375377326 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("FillMachine", "Fills PopcornMachine", function()
    local args = {
        [1] = math.huge
    }
    game:GetService("ReplicatedStorage").Deposit:FireServer(unpack(args))
    end)

MainSection:NewButton("AutoFillMachine", "AutoFills PopcornMachine", function()
    AutoFillPopcorn = true
    while AutoFillPopcorn == true do
    local args = {
        [1] = math.huge
    }
    game:GetService("ReplicatedStorage").Deposit:FireServer(unpack(args))
    wait(0.1)
    end
    end)

MainSection:NewButton("Stop AutoFillMachine", "Stops AutoFillMachine", function()
    AutoFillPopcorn = false
    end)
end

if game.PlaceId == 9609300403 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("AutoClick", "Autoclicks", function()
    AutoClicks = true
    while AutoClicks == true do
        game:GetService("ReplicatedStorage").Communication.Click:FireServer()
        wait(BigTick)
        end
    end)

MainSection:NewButton("Stop AutoClick", "StopsAutoClick", function()
    AutoClicks = false
    end)
end

if game.PlaceId == 10319501620 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("AutoCoins", "AutoCollects Coins", function()
    AutoCoin = true
    while AutoCoin == true do
        local args = {
            [1] = "(x:-13.172073364257812, y:31.68347930908203, z:-81.21162414550781)"
        }
        game:GetService("ReplicatedStorage").RemoteEvents.RewardCurrencyPickup:FireServer(unpack(args))
        wait(BigTick)
        end
    end)

MainSection:NewButton("Stop AutoCoin", "Stops AutoCoin", function()
    AutoCoin = false
    end)

MainSection:NewButton("AllStickers", "Gets all the stickers", function()
    game:GetService("ReplicatedStorage").RemoteFunctions.PlayerCollectionAdd:InvokeServer("Stickers", "Sticker1")
    game:GetService("ReplicatedStorage").RemoteFunctions.PlayerCollectionAdd:InvokeServer("Stickers", "Sticker2")
    game:GetService("ReplicatedStorage").RemoteFunctions.PlayerCollectionAdd:InvokeServer("Stickers", "Sticker3")
    game:GetService("ReplicatedStorage").RemoteFunctions.PlayerCollectionAdd:InvokeServer("Stickers", "Sticker4")
    game:GetService("ReplicatedStorage").RemoteFunctions.PlayerCollectionAdd:InvokeServer("Stickers", "Sticker5")
    game:GetService("ReplicatedStorage").RemoteFunctions.PlayerCollectionAdd:InvokeServer("Stickers", "Sticker6")
    game:GetService("ReplicatedStorage").RemoteFunctions.PlayerCollectionAdd:InvokeServer("Stickers", "Sticker7")
    game:GetService("ReplicatedStorage").RemoteFunctions.PlayerCollectionAdd:InvokeServer("Stickers", "Sticker8")
    game:GetService("ReplicatedStorage").RemoteFunctions.PlayerCollectionAdd:InvokeServer("Stickers", "Sticker9")
    game:GetService("ReplicatedStorage").RemoteFunctions.PlayerCollectionAdd:InvokeServer("Stickers", "Sticker10")
    end)

MainSection:NewDropdown("Get Sticker", "Get Any Sticker", {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}, function(Sticker)
    game:GetService("ReplicatedStorage").RemoteFunctions.PlayerCollectionAdd:InvokeServer("Stickers", "Sticker".. Sticker)
    end)
end

if game.PlaceId == 9529019408 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Unlock Circus", "Unlocks the Circus World", function()
    game:GetService("ReplicatedStorage").Assets.Network.GrabCircusKey:FireServer()
    end)
end

if game.PlaceId == 5890116343 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("AgeUp", "Get 1 year older", function()
    game:GetService("ReplicatedStorage").Remotes.AgeUp:FireServer()
    end)

MainSection:NewButton("Auto AgeUp", "Get old very fast", function()
    AutoAgeUp = true
    while AutoAgeUp == true do
    game:GetService("ReplicatedStorage").Remotes.AgeUp:FireServer()
    wait(Tick)
    end
    end)

MainSection:NewButton("Stop Auto AgeUp", "Stops Auto AgeUp", function()
    AutoAgeUp = false
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.AgeUp:FireServer()
    wait(1)
    game.Players.LocalPlayer:Kick("Rejoin")
    end)

MainSection:NewButton("GodMode", "a lil glitchy", function()
    GodMode = true
    while GodMode == true do
        local args = {
            [1] = true
        }
        game:GetService("ReplicatedStorage").Remotes.toggleSafe:FireServer(unpack(args))
        wait(BigsmallTick)
        end
    end)

MainSection:NewButton("Stop GodMode", '"Im No God"', function()
    GodMode = false
    end)

MainSection:NewTextBox("Join Family", "Join any family", function(Family)
    local args = {
        [1] = Family
    } 
    game:GetService("ReplicatedStorage").Remotes.AcceptInvite:FireServer(unpack(args))
    end)

MainSection:NewTextBox("Create Family", "Create A Family", function(FamilyName)
    local args = {
        [1] = FamilyName
    }   
    game:GetService("ReplicatedStorage").Remotes.CreateFamily:FireServer(unpack(args))
    end)

MainSection:NewDropdown("KickFromFamily", "Kicks a player from their family", allPlayersName, function(FamilyKickPlayer)
    local function FindPlayer(playerName)
        Players = game:GetService("Players")
        for i, player in pairs(Players:GetPlayers()) do
            if player.Name == playerName then
                return player
            end
        end
    end
    
    playerNameToKick = FamilyKickPlayer
    playerToKick = FindPlayer(playerNameToKick)
    game:GetService("ReplicatedStorage").Remotes.KickFromFamily:FireServer(playerToKick)
    end)

MainSection:NewDropdown("InviteAnyPlayer", "Invite anyone to the family you are currently in", allPlayersName, function(FamilyInvitePlayer)
    local function FindPlayer(playerName)
        Players = game:GetService("Players")
        for i, player in pairs(Players:GetPlayers()) do
            if player.Name == playerName then
                return player
            end
        end
    end
    
    playerNameToInvite = FamilyInvitePlayer
    playerToInvite = FindPlayer(playerNameToInvite)
    game:GetService("ReplicatedStorage").Remotes.SendInvite:FireServer(playerToInvite)
    end)
end

if game.PlaceId == 9926433554 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("Get Money", "Get how much money u want", function(MoneyGet)
    local A_1 = {} game:GetService("ReplicatedStorage").Events.Recent.AxeEvent:FireServer(A_1, -MoneyGet)
    end)

MainSection:NewTextBox("Get/Equipt Any Pickaxe", "a lil glitchy, rejoin if not work", function(Pickaxe)
    local args = {
        [1] = "Pickaxe # " ..Pickaxe,
        [2] = Pickaxe
    }
    game:GetService("ReplicatedStorage").Events.Recent.BuyAxe:FireServer(unpack(args))
    wait(0.2)
    local args = {
        [1] = Pickaxe
    }
    game:GetService("ReplicatedStorage").Events.EquipPickaxe:InvokeServer(unpack(args))
    game.Players.LocalPlayer:Kick("Rejoin")

    end)
end

if game.PlaceId == 10218305738 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Unlimited Steps", "Dont Lose Steps", function()
    local a=game.Players.LocalPlayer.Character;a.HumanoidRootPart:Destroy()local b=a.Humanoid;b.Parent=game.ServerStorage;b.Parent=a
    end)

MainSection:NewButton("Sword Reach", "OP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/Reech.lua",true))()
    end)
end

if game.PlaceId == 13822889 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("AzureHub Read Desc", "Key: Azure_crackedlol", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/AzureHub.lua",true))()
    end)
end

if game.PlaceId == 1365404657 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("Join Any Flock", "Join Any Flock Without Perms", function(Flock)
    local args = {
        [1] = workspace.Flocks:FindFirstChild(Flock)
    }
    game:GetService("ReplicatedStorage").FlockEvents.JoinFlock:FireServer(unpack(args))
    end)
end

if game.PlaceId == 5712833750 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("OP Autofarm", "VERY OP", function(delay)
    OPAutofarm = true
    while OPAutofarm == true do
        local args = {
            [1] = workspace.Eggs.Egg1
        }
        game:GetService("ReplicatedStorage").EggEvent:FireServer(unpack(args))
        wait(delay)
        end  
    end)

MainSection:NewButton("Stop Autofarm", "stop dat lag", function()
    OPAutofarm = false
    end)

MainSection:NewButton("more characters", "gives a couple characters", function()
    game:GetService("ReplicatedStorage").TreasureEvent:FireServer(workspace.Treasures.Treasure1)
    wait(0.1)
    game:GetService("ReplicatedStorage").TreasureEvent:FireServer(workspace.Treasures.Treasure2)
    wait(0.1)
    game:GetService("ReplicatedStorage").TreasureEvent:FireServer(workspace.Treasures.Treasure3)
    wait(0.1)
    game:GetService("ReplicatedStorage").TreasureEvent:FireServer(workspace.Treasures.Treasure4)
    wait(0.1)
    game:GetService("ReplicatedStorage").TreasureEvent:FireServer(workspace.Treasures.Treasure5)
    end)
end

if game.PlaceId == 8372375635 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("AFK Dream", "AutoFarm", function()
    AFKDream = true
    while AFKDream == true do
        game:GetService("ReplicatedStorage").Events.Sell:FireServer()
        local args = {
            [1] = true
        }
        game:GetService("ReplicatedStorage").Events.Sleep:FireServer(unpack(args))
        game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.E,false,game)
        wait(0.3)
        end  
    end)

MainSection:NewButton("Stop AFK Dream", "Stops the Autofarm", function()
    AFKDream = false
    game:GetService("ReplicatedStorage").Events.Sell:FireServer()
    local args = {
        [1] = false
    }
    game:GetService("ReplicatedStorage").Events.Sleep:FireServer(unpack(args))
    end)
end

if game.PlaceId == 10429088113 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("Equipt any pet", "VERY OP", function(PetToEquipt)
    local args = {
        [1] = PetToEquipt
    }
    game:GetService("ReplicatedStorage").equipPet:FireServer(unpack(args))
    end)
end

if game.PlaceId == 5813165034 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Max snowbar", "VERY OP", function()
    MaxSnowbar = true
    while MaxSnowbar == true do 
        game:GetService("ReplicatedStorage").Remotes.SnowBar:FireServer()
        wait(Tick)
    end
    end)

MainSection:NewButton("Stop snowbar", "NoMoreSnow", function()
    MaxSnowbar = false
    end)
end

if game.PlaceId == 9662949425 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("Max Bone", "put the max bones in textbox", function(MaxBone)
end)

MainSection:NewButton("Do Max Bone", "put the max bones in textbox", function()
    local args = {
        [1] = MaxBone,
        [2] = MaxBone
    }
    workspace.AddBones:FireServer(unpack(args))
    end)
end

if game.PlaceId == 10758955211 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Auto Win", "Very OP", function()
    AutoWin = true
    while AutoWin == true do
    game:GetService("ReplicatedStorage").RemoteEvents.RewardWins:FireServer()
    wait(0.1)
    end
    end)

MainSection:NewButton("Stop Win", "E", function()
    AutoWin = false
    end)
end

if game.PlaceId == 8321875194 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("Get Coins", "OP", function(Coinss)
        local args = {
            [1] = Coinss
        }
        game:GetService("ReplicatedStorage").GiveCoin:FireServer(unpack(args))    
    end)
end

if game.PlaceId == 9173489535 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("Get Coins", "OP", function(FliCoin)
    local args = {
        [1] = FliCoin
    }
    game:GetService("ReplicatedStorage").RemoteEvents.UpdateCoins:FireServer(unpack(args))  
    end)
end

if game.PlaceId == 10676523834 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Auto Win", "Very OP", function()
    AutoWins = true
    while AutoWins == true do
        local args = {
            [1] = "CheckAdd",
            [2] = 14,
            [3] = 14,
            [4] = 14
        }
        game:GetService("ReplicatedStorage").RemoteEvents.Star_RemoteEvent:FireServer(unpack(args))
        wait(0.001)        
    end
    end)

MainSection:NewButton("Stop Win", "E", function()
    AutoWins = false
    end)
end

if game.PlaceId == 10827143707 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Auto Bean", "Very OP", function()
    AutoBean = true
    while AutoBean == true do
        local args = {
            [1] = math.random
        }
        game:GetService("ReplicatedStorage").Remotes.DialogInteraction:FireServer(unpack(args))
    wait(tick)
    end
    end)

MainSection:NewButton("Stop Bean", "E", function()
    AutoBean = false
    end)
end

if game.PlaceId == 7026828578 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Auto Speed", "Very OP", function()
    AutoRebSped = true
    while AutoRebSped == true do
        local args = {
            [1] = math.huge,
            [2] = 20
        }
        game:GetService("ReplicatedStorage").GlobalFunctions.AddPlayerSpeed:FireServer(unpack(args))    
        game:GetService("ReplicatedStorage").GlobalFunctions.RebirthPlayerCallFromClient:FireServer()
    wait(BigTick)
    end
    end)

MainSection:NewButton("Stop Speed", "EE", function()
    AutoRebSped = false
    end)

MainSection:NewTextBox("Add Speed", "OP", function(AddSpeed)
    local args = {
        [1] = AddSpeed,
        [2] = 20
    }
    game:GetService("ReplicatedStorage").GlobalFunctions.AddPlayerSpeed:FireServer(unpack(args))    
    end)

MainSection:NewButton("Fix Speed", "FixesSpeed", function()
    local args = {
        [1] = math.huge,
        [2] = 20
    }
    game:GetService("ReplicatedStorage").GlobalFunctions.AddPlayerSpeed:FireServer(unpack(args))    
    game:GetService("ReplicatedStorage").GlobalFunctions.RebirthPlayerCallFromClient:FireServer()
    end)
end

if game.PlaceId == 10577425443 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Auto Win", "Very OP", function()
    AutoDoWin = true
    while AutoDoWin == true do
        game:GetService("ReplicatedStorage").RF.GetWin:InvokeServer()
    wait(Tick)
    end
    end)

MainSection:NewButton("Stop Win", "E", function()
    AutoDoWin = false
    end)
end

if game.PlaceId == 9992339729 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("Points for Answer", "For TextBox Below", function(BlocksAmount)
    BlocksError = false
    Blocks = BlocksAmount
    Verify = Blocks
    Verify = Verify:gsub("-", "")
    Verify = Verify:gsub(" ", "")
    Verify = Verify:gsub("0", "")
    Verify = Verify:gsub("1", "")
    Verify = Verify:gsub("2", "")
    Verify = Verify:gsub("3", "")
    Verify = Verify:gsub("4", "")
    Verify = Verify:gsub("5", "")
    Verify = Verify:gsub("6", "")
    Verify = Verify:gsub("7", "")
    Verify = Verify:gsub("8", "")
    Verify = Verify:gsub("9", "")
    VerifyNumber = #Verify
    if VerifyNumber == 0 then
        Blocks = Blocks:gsub(" ", "")
        Verify = ""
        BlocksError = false
    else
        print('[Error]: String "Blocks" has a INVALID Character. Please DoubleCheck. Blocks Will be Default')
        BlocksError = true
        Blocks = 0
        end
    end)

MainSection:NewTextBox("Sumbmit Answer", "ANSWER HERE", function(Answer)
    Answer = Answer:gsub(" ", "")
    Answer = Answer:upper(Answer)
    if BlocksError == true then
        local args = {
            [1] = Answer,
            [2] = #Answer
        }
        game:GetService("ReplicatedStorage").SubmittedAnswer:FireServer(unpack(args))
    else
        local args = {
            [1] = Answer,
            [2] = Blocks
        }
        game:GetService("ReplicatedStorage").SubmittedAnswer:FireServer(unpack(args))
        end
    end)
end

if game.PlaceId == 4036494886 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("OP Gui", "Very OP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
    end)
end

if game.PlaceId == 10868496812 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
MainSection:NewTextBox("GetMone", "1 is abt 90-250", function(EggMoney)
    HalfEggMoney = EggMoney/2
    TycoonNumber = 0
    repeat
    local args = {
        [1] = TycoonNumber,
        [2] = {
            ["Event"] = "BuyRate",
            ["Props"] = {
                ["Amount"] = HalfEggMoney
            }
        }
    }
    game:GetService("ReplicatedStorage").ReplicaRemoteEvents.Replica_ReplicaSignal:FireServer(unpack(args))
    --FixMone
    local args = {
        [1] = TycoonNumber,
        [2] = {
            ["Event"] = "BuyRate",
            ["Props"] = {
                ["Amount"] = -HalfEggMoney
            }
        }
    }
    game:GetService("ReplicatedStorage").ReplicaRemoteEvents.Replica_ReplicaSignal:FireServer(unpack(args))
    local args = {
        [1] = TycoonNumber,
        [2] = {
            ["Event"] = "BuyRate",
            ["Props"] = {
                ["Amount"] = -HalfEggMoney
            }
        }
    }
    game:GetService("ReplicatedStorage").ReplicaRemoteEvents.Replica_ReplicaSignal:FireServer(unpack(args))
    TycoonNumber = TycoonNumber + 1
    until TycoonNumber == 9
    TycoonNumber = 0
    end)
end

if game.PlaceId == 9297410766 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("HitBall", "Hits ball with max power", function()
    local args = {
        [1] = "yeet",
        [2] = 1.04,
        [3] = "GetALifeKid"
    }
    game:GetService("Players").LocalPlayer.Character.Act:FireServer(unpack(args))    
    end)

MainSection:NewDropdown("UpgradeType", "Select Upgrade Type", {"Uniform", "Cleats", "Hat", "Ball"}, function(UT)
    UpgradeType = UT
    end)

MainSection:NewTextBox("EquiptUpgrade", "VERY OP", function(Upgrade)
    local args = {
        [1] = "Equip",
        [2] = UpgradeType,
        [3] = Upgrade,
        [4] = "GetALifeKid"
    }
    game:GetService("ReplicatedStorage").Action:FireServer(unpack(args))    
    end)
end

if game.PlaceId == 10631181587 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("gUI", "vERY oP", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SleeksScripts/Stone-Miner-Simulator-2-Script/main/Script'))()  
    end)
end

if game.PlaceId == 9648883891 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("Get Money", "VERY OP", function(GCOIN) 
    local args = {
        [1] = GCOIN
    }
    game:GetService("ReplicatedStorage").RemoteObjects.DanceGameCash:FireServer(unpack(args))
    end)
end

if game.PlaceId == 10631181587 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("GetDayRewards", "VERY OP", function()
    Day = 0
    repeat
    local args = {
        [1] = "get_seven_day_reward",
        [2] = {
            ["1"] = Day
        }
    }
    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
    Day = Day+1
    until Day == 9
    end)

MainSection:NewButton("GAMEPASSES", "VERY OP", function()   
    for x = 1, 7 do
        local A_1 = "get_seven_day_reward"
        local A_2 = {["1"] = x}
        local Event = game:GetService("ReplicatedStorage").RemoteFunction
        Event:InvokeServer(A_1, A_2)
        wait()
    end
    
    for _, v in pairs(game:GetService("Workspace").Code:GetChildren()) do
        local A_1 = "redeem_code"
        local A_2 = {
            ["1"] = v.SurfaceGui.TextLabel.Text
            }
        local Event = game:GetService("ReplicatedStorage").RemoteFunction
        Event:InvokeServer(A_1, A_2)
    end
        
    for _, v in pairs(game:GetService("Workspace").Code2:GetChildren()) do
        local A_1 = "redeem_code"
        local A_2 = {
            ["1"] = v.SurfaceGui.TextLabel.Text
        }
        local Event = game:GetService("ReplicatedStorage").RemoteFunction 	Event:InvokeServer(A_1, A_2)
        end
    end)
end

if game.PlaceId == 5740246170 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("AutoBuild", "op", function()
    local env = getgenv()

    env.Settings = {
        ['AutoAddBricks'] = true;
    }

    local Settings = env.Settings

    env.Players = game:GetService("Players")
    env.RunService = game:GetService("RunService")
    env.lp = Players['LocalPlayer']

    local function getTower()
        for index, value in next, workspace:GetChildren() do 
            if value.Name == "Tower" and value.Owner.Value == lp then 
                return value 
            end
        end
    end

    local function AddBricksPerSecond(Tower)
        local Bricks = lp.leaderstats.Bricks.Value
        local left = Tower.PurchaseUpgradeButtonLeft or nil 
        local right = Tower.PurchaseUpgradeButtonRight or nil 
        if not left or not right then return end
        

        local price = tonumber( string.split(left.Head.ShopGui.Frame.Price.Text," ")[1] )
        

        if Bricks > price then 
            Bricks = Bricks - price 
            lp.Character.PrimaryPart.CFrame = left.Head.CFrame
            wait()
            firetouchinterest(lp.Character.PrimaryPart, left.Head, 0)
            firetouchinterest(lp.Character.PrimaryPart, left.Head, 1)
        end 
        
        price = tonumber( string.split(right.Head.ShopGui.Frame.Price.Text," ")[1] )
        
        if Bricks > price then 
            lp.Character.PrimaryPart.CFrame = right.Head.CFrame
            wait()
            firetouchinterest(lp.Character.PrimaryPart, right.Head, 0)
            firetouchinterest(lp.Character.PrimaryPart, right.Head, 1)
            
        end 
        
    end

    local function AddBricks(Tower)
        fireclickdetector(Tower.ClickDetector) 
    end

    local tower = getTower()

    while Settings.AutoAddBricks do 
        RunService.Heartbeat:wait()
        AddBricks(tower)
        AddBricksPerSecond(tower)
        end
    end)

MainSection:NewButton("StopBuild", "E", function()
    env.Settings = {
        ['AutoAddBricks'] = true;
    }
    end)
end

if game.PlaceId == 10631181587 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("wINN aLL oBBY", "vERY oP", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SleeksScripts/Stone-Miner-Simulator-2-Script/main/Script'))()  
    end)
end

if game.PlaceId == 10631181587 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Winn All Obby", "Ez?", function()
setsimulationradius(1000,1000)
    _G.test = true
    while _G.test do
        wait()
    for i,v in pairs(game.Workspace.Tycoons[game.Players.LocalPlayer.Team.Name].Gumballs:GetChildren()) do
        if v.Name == "Gumball" and isnetworkowner(v) then
            v.CFrame = Game.Workspace.Tycoons[game.Players.LocalPlayer.Team.Name].Interact.Guminator.Converter.CFrame
        end
    end
end
end)
end

if game.PlaceId == 10859465529 then
-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Safe", "Save Urself. WAIT AFTER USE", function()
    game:GetService("ReplicatedStorage").RemoteCalls.GameSpecific.Title.ReturnToTitleScreen:InvokeServer()
    wait(5)
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
    end)
end

if game.PlaceId == 9677464361 then
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

MainSection:NewButton("AutoFarm", "Very OP", function()
    AutoFarms = true
    while AutoFarms == true do
        local args = {
            [1] = "Shoot",
            [2] = "Green"
        }
        game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
              
        local args = {
            [1] = "Made"
        }
        game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))        
        wait(0.1)
    end
    end)

MainSection:NewButton("Stop Win", "E", function()
    AutoFarms = false
    end)

    if game.PlaceId == 10462101644 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    
MainSection:NewTextBox("ChangeHeight", ".........", function(Height)
    local args = {
        [1] = "ChangeHeight",
        [2] = Height,
        [3] = false
    }
    game:GetService("ReplicatedStorage").Events.Props.PropRF:InvokeServer(unpack(args))
        end)
    end

MainSection:NewTextBox("ChangeWheight", ".........", function(Wheight)
    local args = {
         [1] = "ChangeWheight",
        [2] = Wheight,
        [3] = false
    }
    game:GetService("ReplicatedStorage").Events.Props.PropRF:InvokeServer(unpack(args))
        end)
    end

if game.PlaceId == 10266345621 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    
    MainSection:NewButton("Auto SnowBall", "Very OP", function()
        AutoSnowBall = true
        while AutoSnowBall == true do
            game:GetService("ReplicatedStorage").Events.Ball.CollectSnow:FireServer()
        wait(Tick)
        end
    end)
    
    MainSection:NewButton("Stop Snow", "E", function()
        AutoSnowBall = false
    end)
end

if game.PlaceId == 10266345621 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Auto SnowBall", "Very OP", function()
        AutoSnowBall = true
        while AutoSnowBall == true do
        game:GetService("ReplicatedStorage").Events.CollectSnow:FireServer()
        wait(Tick)
        end
    end)

    MainSection:NewButton("Stop Snow", "E", function()
        AutoSnowBall = false
    end)

    MainSection:NewButton("AntiPush", "Very OP", function()
        AntiPush = true
        while AntiPush == true do
        local args = {
            [1] = true
        }
        game:GetService("ReplicatedStorage").Events.JumpState:FireServer(unpack(args))
        wait(Tick)
        end
    end)

    MainSection:NewButton("Stop AntiPush", "E", function()
        AntiPush = false
    end)
end

if game.PlaceId == 8216162783 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("ID.HoldAnyItem", "Use the ID 1000+", function(TOOLID)
        local args = {
            [1] = "TakeTool",
            [2] = TOOLID,
            [3] = true
        }
        game:GetService("ReplicatedStorage").Events.PickAndDrop.PickAndDropRE:FireServer(unpack(args))
        
    end)

    MainSection:NewButton("GUI", "E", function()
        loadstring(game:HttpGet('https://pastebin.com/raw/vhNFzwzE'))()
    end)
end

if game.PlaceId == 10903978962 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Get wool LVL", "dont put big number!!!", function(WoolLVL)
        local args = {
            [1] = WoolLVL,
            [2] = Vector3.new(348.5956726074219, 3.312828779220581, 596.522705078125)
        }

        game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(unpack(args))
    end)
end

if game.PlaceId == 394846350 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Get JP", "dont put big number!!!", function(JPR)
        local args = {
            [1] = JPR,
            [2] = 2
        }
        game:GetService("ReplicatedStorage").GlobalFunctions.AddPlayerSpeed:FireServer(unpack(args))
    end)
end

if game.PlaceId == 9745792410 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Auto EXP Pet", "put pet", function()
        AutoExpPets = true
        while AutoExpPets == true do
        local args = {
            [1] = {
                ["PetEvolution"] = "Normal",
                ["PetName"] = AutoExpPet
            }
        }
        game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.GetGlobalPetCount:InvokeServer(unpack(args))
        local args = {
            [1] = {
                ["PetEvolution"] = "Shiny",
                ["PetName"] = AutoExpPet
            }
        }
        game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.GetGlobalPetCount:InvokeServer(unpack(args))
        end
    end)

MainSection:NewButton("stop Auto EXP Pet", "put pet", function()
    AutoExpPets = false
end)

MainSection:NewTextBox("DoTrade", "put victim", function(DoTradeVictim)
        local args = {
            [1] = DoTradeVictim,
            [2] = "Accept"
        }
        game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.AcceptDeclineTrade:FireServer(unpack(args))
        local args = {
            [1] = localplayer,
            [2] = "Accept"
        }
        game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.AcceptDeclineTrade:FireServer(unpack(args))
    end)
end

if game.PlaceId == 4133011719 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Auto Score", "O.P.", function()
    AutoScore = true
    while AutoScore == true do
        game:GetService("ReplicatedStorage").Events.ScoreUpdate:FireServer()
        end
    end)

MainSection:NewButton("Stop Auto Score", ".P.O", function()
    AutoScore = false
    end)
end

if game.PlaceId == 9558459273 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Upgrade Juice", "Dosent Show On GUI", function()
    local args = {
        [1] = "Juice"
    }
        game:GetService("ReplicatedStorage").MainEvents.OpeningUpgrade:FireServer(unpack(args))
    end)

MainSection:NewButton("Upgrade Wrench", "Dosent Show On GUI", function()
    local args = {
        [1] = "Wrench"
    }
        game:GetService("ReplicatedStorage").MainEvents.OpeningUpgrade:FireServer(unpack(args))
    end)

MainSection:NewTextBox("ArmorWithProp", "Dosent Show On GUI", function(PropLevel)
    local args = {
        [1] = PropLevel
    }
    game:GetService("ReplicatedStorage").MainEvents.ReceivingArmor:FireServer(unpack(args))
    end)
end

if game.PlaceId == 2693739238 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("Loot ID", "VERYOP", function(LootId)
    local args = {
        [1] = LootId
    }
    game:GetService("ReplicatedStorage").Events.Loot.RequestLoot:FireServer(unpack(args))
    end)

MainSection:NewTextBox("FakeHold", "VERYOP", function(FakeHoldItem)
    FakeHoldItemCaps = string.upper(FakeHoldItem)
    local args = {
        [1] = FakeHoldItemCaps
    }
    game:GetService("ReplicatedStorage").RemoteEvents.setup:FireServer(unpack(args))
    end)

MainSection:NewTextBox("Select Gun", "VERYOP", function(SelectedGun)
    SelectedGunAll = SelectedGun
    end)

MainSection:NewButton("Buy Gun", "VERYOP", function()
    local args = {
        [1] = SelectedGunAll
    }
    game:GetService("ReplicatedStorage").Events.GunShop.RequestBuy:FireServer(unpack(args))
    end)

MainSection:NewButton("Escape Jail", "VERYOP", function()
    Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1327.28125, 12.787861824035645, 31.134889602661133)
    end)

MainSection:NewButton("Sell All", "VERYOP", function()
    local args = {
        [1] = 3
    }
    game:GetService("ReplicatedStorage").Events.Shop.RequestSellAll:FireServer(unpack(args))
    end)
end

if game.PlaceId == 9105971785 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("Get Trail/Item", "VERYOP", function(ItemTrail)
    local args = {
        [1] = game:GetService("ReplicatedStorage").Profiles.localplayer.Inventory.Items,
        [2] = ItemTrail,
        [3] = false,
        [4] = 0
    }
    game:GetService("ReplicatedStorage").Shared.Inventory.RewardItem:InvokeServer(unpack(args))
    end)
end

if game.PlaceId == 7476406054 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Get AdminCrystalTrail", "VERYOP", function()
    local args = {
        [1] = "Buy",
        [2] = "AdminCrystal"
    }
    game:GetService("Players").LocalPlayer.BuyTrail:FireServer(unpack(args))
    local args = {
        [1] = "Equip",
        [2] = "AdminCrystal"
    }
    game:GetService("Players").LocalPlayer.BuyTrail:FireServer(unpack(args))
    end)
end

if game.PlaceId == 6892252562 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("AutoCollectDrops", "VERYOP", function()
    AutoCollectDrop = true
    while AutoCollectDrop == true do
        for i,v in pairs(game:GetService("Workspace").Debris.Pickups:GetDescendants()) do
            if v.ClassName == "Part" then
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,100)
            end
        end
        wait(.1)
        for i,v in pairs(game:GetService("Workspace").Debris.Pickups:GetDescendants()) do
            if v.ClassName == "Part" then
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
            end
        end
        wait(.1)
    end
    end)

MainSection:NewButton("StopCollectDrops", "VERYOP", function()
    AutoCollectDrop = false
    end)
end

if game.PlaceId == 9486506804 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("AutoCoin", "VERYOP", function()
    AutoSoccerBall = true
    while AutoSoccerBall == true do
        game:GetService("ReplicatedStorage").BallHandler_OnKick:FireServer()
        local args = {
            [1] = workspace.Lobby.AdventureFootball.Courses.Course3.Coins.Coin,
            [2] = true
        }
        game:GetService("ReplicatedStorage").Zurich_OnCoinPickUpEvent:FireServer(unpack(args))
        local args = {
            [1] = workspace.Lobby.AdventureFootball.Courses.Course3.Coins.Coin,
            [2] = true
        }
        game:GetService("ReplicatedStorage").Zurich_OnCoinPickUpEvent:FireServer(unpack(args))
        local args = {
            [1] = {
                ["GameMode"] = "Minigolf",
                ["Name"] = "Course1",
                ["Position"] = Vector3.new(68.660400390625, 3.080204486846924, -340.1939697265625),
                ["Id"] = 1,
                ["IsLong"] = false,
                ["Goal"] = workspace.Courses.Adventure.TriggerSpawnBall1.GoalCourse3,
                ["Part"] = workspace.Courses.Adventure.TriggerSpawnBall1
            }
        }
        game:GetService("ReplicatedStorage").Minigolf_OnScore:FireServer(unpack(args))
        game:GetService("ReplicatedStorage").BallHandler_OnKickFinished:FireServer()
        end
    end)

MainSection:NewButton("Stop AutoCoin", "VERYOP", function()
    AutoSoccerBall = false
    end)
end

if game.PlaceId == 2726456994 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("AutoGrow", "VERYOP", function()
    AutoGrow = true
    while AutoGrow == true do
        timer = 0
        repeat
            workspace.Events.AddPoints:FireServer()
            workspace.Events.AddPoints:FireServer()
            workspace.Events.AddPoints:FireServer()
            workspace.Events.AddPoints:FireServer()
            workspace.Events.AddPoints:FireServer()
            timer = timer+1
        until timer == 1000
        wait(0.01)
        end
    end)

MainSection:NewButton("Stop AutoGrow", "VERYOP", function()
    AutoGrow = false
    end)
end

if game.PlaceId == 9107444852 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("AutoRebirth", "VERYOP", function()
    AutoSlapReb = true
    while AutoSlapReb == true do
        local args = {
            [1] = {
                [1] = 1
            }
        }
        game:GetService("ReplicatedStorage").Fwk.RemoteEvents.Rebirth:FireServer(unpack(args))
        wait(0.3)
        end
    end)

MainSection:NewButton("StopRebirth", "VERYOP", function()
    AutoSlapReb = false
    end)

MainSection:NewButton("AutoClick", "VERYOP", function()
    AutoSlap = true
    while AutoSlap == true do
        local args = {
            [1] = {}
        }
        game:GetService("ReplicatedStorage").Fwk.RemoteEvents.Click:FireServer(unpack(args))
        wait(0.005)
        end
    end)
    
MainSection:NewButton("Stop AutoClick", "VERYOP", function()
    AutoSlap = false
    end)
end

if game.PlaceId == 9107444852 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("SpawnCar", "EX: 110_3", function(CarSpawn)
    local args = {
        [1] = CarSpawn
    }
    game:GetService("ReplicatedStorage").RemoteFunctions.Main.SpawnVehicle:InvokeServer(unpack(args))
    end)
end

if game.PlaceId == 10977918334 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Get wool LVL", "dont put big number!!!", function(WoolLVLS)
        local args = {
            [1] = WoolLVLS,
            [2] = Vector3.new(-310.0931701660156, 5.566789627075195, 2.98732328414917)
        }
        game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(unpack(args))
    end)
end

if game.PlaceId == 10779604733 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Pumkin2022", "Vry OP", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2734.9917, 148.845978, 355.287109, 0.130346656, -0, -0.99146843, 0, 1, -0, 0.99146843, 0, 0.130346656)
        wait(0.001)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2723.70044, 140.232941, 515.602234, 0.631954789, -0.151853248, -0.759982765, 0.578600049, 0.744848609, 0.332298845, 0.51561147, -0.649723887, 0.558572948)
        wait(0.001)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2273.19141, 159.28598, 359.098297, -0.0923259258, 0.541163802, -0.83583349, -0.140492842, 0.82394141, 0.548983037, 0.985767543, 0.168114021, -4.14848328e-05)
        wait(0.001)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2922.73218, 245.187836, 347.579437, -0.0501396656, 0, -0.998742163, 0, 1, 0, 0.998742163, 0, -0.0501396656)
        wait(0.001)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2083.13184, 171.586182, 543.775024, -0.711478353, 0, -0.702708066, 0, 1, 0, 0.702708066, 0, -0.711478353)
        wait(0.001)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2528.88062, 100.91748, 501.91748, -0.238877892, 0.489428699, -0.838687658, -0.0249191523, 0.860317707, 0.509148836, 0.970729828, 0.14252378, -0.193314672)
        wait(0.001)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2583.37793, 112.563072, 554.459229, -0.99855423, 0, 0.05375918, 0, 1, 0, -0.05375918, 0, -0.99855423)
        wait(0.001)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2641.78394, 86.5, 309.783875, 0.994300961, 0.014680529, 0.105594218, -0.0134198256, 0.999830067, -0.012639788, -0.105761826, 0.0111506963, 0.994328976)
        wait(0.001)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2738.94458, 135.067657, 379.401733, 0.860451758, -0.0288628861, 0.508713841, 0.110712625, 0.985131919, -0.131368786, -0.497358561, 0.169357538, 0.85085398)
        wait(0.001)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2680.90771, 136.654449, 413.513184, 0.955782771, -0, -0.294073611, 0, 1, -0, 0.294073611, 0, 0.955782771)
    end)
end

-- All Games

local All = Window:NewTab("All")
local AllSection = All:NewSection("All Games")


    AllSection:NewButton("Full Bright", "Vry OP", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/FullBright.lua"))()
    end)

    AllSection:NewButton("BadgeWalk Hack", "Vry OP", function()
        for _,v in pairs(workspace:GetDescendants()) do
            if v:IsA("TouchTransmitter") then
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
                task.wait()
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
            end
        end
    end)

    AllSection:NewButton("Anti Kick", "Vry OP", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/gsxvWvnj"))()
    end)

    AllSection:NewButton("Copy Console", "Console has to be open", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/console.lua",true))() 
    end)

    AllSection:NewButton("Sword Reach", "mostly patched", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/Reech.lua",true))()
    end)

    AllSection:NewButton("Nullware", "More Animations and Audio", function()
        getgenv().Theme = "Purple"
        loadstring(game:HttpGet("https://gist.githubusercontent.com/M6HqVBcddw2qaN4s/2d722888a388017c18028cd434c43a25/raw/dcccf1027fe4b90780e47767aaf584389c9d7771/EULma3fU90PUOKUn?identifier=".. (function()local a=""for b=1,256 do local c=math.random(1,3)a=a..string.char(c==1 and math.random(48,57)or c==2 and math.random(97,122)or c==3 and math.random(65,90))end;return a end)()))() 
    end)

    AllSection:NewButton("Infinite Yeild", "hi", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",true))()
    end)

    AllSection:NewButton("dupe", "dupe takes a bit", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/dupe1.lua",true))()
    end)

    AllSection:NewButton("Chat Bypass GUI", "Very OP", function()
        loadstring(game:HttpGet("https://the-shed.xyz/roblox/scripts/ChatBypass", true))()
    end)

    AllSection:NewTextBox("Speed", "Press Enter After Value", function(sped)
        local walkSpeed = sped
        local gmt = getrawmetatable(game)
        setreadonly(gmt, false)
        local oldindex = gmt.__index
        gmt.__index = newcclosure(function(self,b)
        if b == "WalkSpeed" then
        return 16
        end
        return oldindex(self,b)
        end)
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = walkSpeed
    end)

    AllSection:NewTextBox("Jump", "Press Enter After Value", function(jrump)
        local Power = jrump
        setscriptable(game:GetService("Players").LocalPlayer.Character.Humanoid,"JumpPower",true)
        sethiddenproperty(game:GetService("Players").LocalPlayer.Character.Humanoid,"JumpPower",Power)
    end)

    AllSection:NewButton("Pet Hack For Sims", "Pet Hack That Works on Some Simulators", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/PetHack.lua",true))()
    end)

    AllSection:NewButton("Click TP - Press t", "Click Tp, Press t To Toggle", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/ClickTp.lua",true))()
    end)

    AllSection:NewButton("Steal Game", "Steals Some Scripts And The Map", function()
        saveinstance()
    end)

    AllSection:NewButton("BackDoor Executor", "Password    Free Scripts", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/BackdoorEXE.lua",true))()
    end)

    AllSection:NewButton("Roblox Animations", "lets you use animations from roblox", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/AnimationEditGUI.lua",true))()
    end)

    AllSection:NewButton("Universe Viewer", "lets you join any place in that game", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/UniverseViewer.lua",true))()
    end)

    AllSection:NewButton("Copy Game/Place ID", "Copys the Game/Place ID to ClipBoard", function()
        setclipboard(game.PlaceId)
        toclipboard(game.PlaceId)
    end)

    AllSection:NewButton("GodMode", "Works in only some games", function()
        game.Players.LocalPlayer.Character.Humanoid.Name = 1
        local l = game.Players.LocalPlayer.Character["1"]:Clone()
        l.Parent = game.Players.LocalPlayer.Character
        l.Name = "Humanoid"
        wait(0.1)
        game.Players.LocalPlayer.Character["1"]:Destroy()
        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
        game.Players.LocalPlayer.Character.Animate.Disabled = true
        wait(0.1)
        game.Players.LocalPlayer.Character.Animate.Disabled = false
        game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
    end)

    AllSection:NewDropdown("Sploof Device", "Works in only some games", {"Mobile", "Gamepad", "Keyboard"}, function(Device)
        local old
local DeviceToSpoof = Device

old = hookmetamethod(game,"__namecall",function(self,...)
   local args = {...}
   local method = getnamecallmethod()
   if method == "FireServer" then
       if tostring(self) == "deviceEvent" then
           args[1] = DeviceToSpoof
           return self.FireServer(self,unpack(args))
       end
   end
   return old(self,...)
end)
    end)

    -- Hubs

local Hubsa = Window:NewTab("Hubs")
local HubSection = Hubsa:NewSection("Hubs")

    HubSection:NewButton("Raven Hub", "Roblox Hub", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/RavenHub.lua"))()
    end)

    HubSection:NewButton("Owl Hub", "Roblox Hub", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
    end)

    HubSection:NewButton("Cone Hub", "Roblox Hub", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nonfunctable/Cone-Hub/main/Kavo-UI-Libary.lua", true))()
    end)

    HubSection:NewButton("Darth Hub", "Roblox Hub", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/sjonks/DarthHub/main/Scripts/DarthHub.lua"))()
    end)

    HubSection:NewButton("Extreme Antonis Hub", "Roblox Hub", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ExtremeAntonis/KeySystemUI/main/KeySystemUI-Obfuscated.lua"))()
    end)

    HubSection:NewButton("GodXNation Hub - see edits", "Roblox Hub - key is godxnation", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GodXNation/GodXNation/main/midnight%20racing%20hubV2%20fixed", true))()
    end)

    HubSection:NewButton("Saza Hub", "Roblox Hub", function()
        _G.Color = Color3.fromRGB(255, 255, 255)
        loadstring(game:HttpGet"https://rawscripts.net/raw/SAZA-HUB_496")()
    end)

    HubSection:NewButton("VG Hub", "Roblox Hub", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
    end)
