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
--print("View Variable Values: ", SmallTick, Tick, BigTick, TheInf, SmallBigNumber, VeryHugeNumber, HugerNumber, HugeNumber, MathHuge)

if game.PlaceId == 8508161757 then
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main Stuffs")

    MainSection:NewButton("AutoSpawn Tips CashBag", "Must have Tip Jar!", function()
        AutoTipCashBag = true
        while AutoTipCashBag == true do
            game.ReplicatedStorage.CashBags.TipCashBag:FireServer()
        end
    end)

    MainSection:NewButton("Stop AutoTipFarm", "Must have Tip Jar!", function()
        AutoTipCashBag = false
    end)

    MainSection:NewButton("AutoSpawn Bath CashBag", "Must have Bath!", function()
        AutoBathCashBag = true
        while AutoBathCashBag == true do
            game.ReplicatedStorage.CashBags.BathCashBag:FireServer()
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
        game.Players.LocalPlayer.RemoteFunctions.UR_ANTIHACK:FireServer("Health", "one", 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 2)
    end)

    MiscSection:NewButton("GodMode NPC", "HIT A NPC TO GIVE IT GODMODE", function()
        game.Players.LocalPlayer.RemoteFunctions.UR_ANTIHACK:FireServer("Strength", "one", 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 2)
    end)

    MiscSection:NewButton("Reset Gold", "KILL A NPC TO RESET GOLD", function()
        game.Players.LocalPlayer.RemoteFunctions.UR_ANTIHACK:FireServer("Loot", "one", 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 2)
    end)
end

    if game.PlaceId == 60654525 then
        -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Add Money", "Press Enter After Value", function(Money)
        MAeN = Moen/2
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Buy", -Money, "Steel")
        wait(0.3)
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", Money, "Steel")
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", Money, "Steel")
        game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", Money, "Steel")
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

    Players = game:GetService("Players")
    for i, player in pairs(Players:GetPlayers()) do
        MainSection:NewDropdown("Max Base", "Give a MaxedOut base to anyone!", {Players}, function(Victim)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/X2isme/Roblox-Hub/main/MaxBaseAnyoneArmyTycoon.lua",true))()
    end)
    end
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
MainSection:NewDropdown("Kick Any Player", "OP But Not", {player.Name}, function(TheVictim)
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

MainSection:NewTextBox("KickFromFamily", "Kicks a player from their family", function(FamilyKickPlayer)
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

MainSection:NewTextBox("InviteAnyPlayer", "Invite anyone to the family you are currently in", function(FamilyInvitePlayer)
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


-- All Games

local All = Window:NewTab("All")
local AllSection = All:NewSection("All Games")

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
