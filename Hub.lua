local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Craddee's Bad Hub", "Ocean")
-- Variables
local SmallTick = 0.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001
local Tick = 0.00000000000000000000000000000000000000000000000000000000000000000000000001
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
            local chosenPlayer = Victim

for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
	if v.Name == chosenPlayer then
		for i,v2 in pairs(v:GetChildren()) do
			for i,v3 in pairs(v2:GetChildren()) do
				if v3:IsA("ObjectValue") then
					v3.Name = v3.Value.Name
				end
			end
		end
	end
end


for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
	if v.Name == chosenPlayer then
		for i,v2 in pairs(v:GetChildren()) do
			for i,v3 in pairs(v2:GetChildren()) do
				if v3:IsA("ObjectValue") then
					if v3.Name == "Barracks" then
						local Class = game.ReplicatedStorage.Game.Buildings["Barracks"]["2"];
						local Button = v2;
						local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
						Target:FireServer(Class, Button);
					else
						if v3.Name == "Greenhouse" then
							local Class = game.ReplicatedStorage.Game.Buildings["Greenhouse"]["2"];
							local Button = v2;
							local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
							Target:FireServer(Class, Button);
						else
							if v3.Name == "Factory" then
									local Class = game.ReplicatedStorage.Game.Buildings["Factory"]["3"];
									local Button = v2;
									local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
									Target:FireServer(Class, Button);
							else
								if v3.Name == "Oil Field" then
										local Class = game.ReplicatedStorage.Game.Buildings["Oil Field"]["2"];
										local Button = v2;
										local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
										Target:FireServer(Class, Button);
								else
									if v3.Name == "Guard Tower" then
										local Class = game.ReplicatedStorage.Game.Buildings["Guard Tower"]["1"];
										local Button = v2;
										local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
										Target:FireServer(Class, Button);
									else
										if v3.Name == "Wall" then
											local Class = game.ReplicatedStorage.Game.Buildings["Wall"]["2"];
											local Button = v2;
											local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
											Target:FireServer(Class, Button);
										else
											if v3.Name == "Generator Powerplant" then
												local Class = game.ReplicatedStorage.Game.Buildings["Generator Powerplant"]["1"];
												local Button = v2;
												local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
												Target:FireServer(Class, Button);
											else
												if v3.Name == "Missile Factory" then
													local Class = game.ReplicatedStorage.Game.Buildings["Missile Factory"]["1"];
													local Button = v2;
													local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
													Target:FireServer(Class, Button);
												else
													if v3.Name == "Command Center" then
														local Class = game.ReplicatedStorage.Game.Buildings["Command Center"]["2"];
														local Button = v2;
														local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
														Target:FireServer(Class, Button);
													else
														if v3.Name == "Drone Factory" then
															local Class = game.ReplicatedStorage.Game.Buildings["Drone Factory"]["1"];
															local Button = v2;
															local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
															Target:FireServer(Class, Button);
														else
															if v3.Name == "Military" then
																local Class = game.ReplicatedStorage.Game.Buildings.Military["Tank Factory"]["2"];
																local Button = v2;
																local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																Target:FireServer(Class, Button);
															else
																if v3.Name == "Nuclear Powerplant" then
																	local Class = game.ReplicatedStorage.Game.Buildings["Nuclear Powerplant"]["1"];
																	local Button = v2;
																	local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																	Target:FireServer(Class, Button);
																else
																	if v3.Name == "Airport" then
																		local Class = game.ReplicatedStorage.Game.Buildings["Airport"]["1"];
																		local Button = v2;
																		local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																		Target:FireServer(Class, Button);
																	else
																		if v3.Name == "Helicopter Bay" then
																			local Class = game.ReplicatedStorage.Game.Buildings["Helicopter Bay"]["2"];
																			local Button = v2;
																			local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																			Target:FireServer(Class, Button);
																		else
																			if v3.Name == "Main Base" then
																				local Class = game.ReplicatedStorage.Game.Buildings["Main Base"]["2"];
																				local Button = v2;
																				local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																				Target:FireServer(Class, Button);
																			end
																		end
																	end
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end
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

if game.PlaceId == 7056117669 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewTextBox("Kick Player", "Press Enter After Value", function(playertokick)
    end)

    MainSection:NewTextBox("Kick Player For ", "Press Enter After Value", function(reson)
        local target = playertokick
        local mess = reson
        local repsto = game:GetService("ReplicatedStorage")
        
        repsto.KickPlayer:FireServer(target, mess)
    end)

    local MainSection2 = Main:NewSection("-- SEPARATE SECTIONS --")

    MainSection2:NewTextBox("Kick All For ", "Press Enter After Value", function(reson)
        local mess = reson
        local repsto = game:GetService("ReplicatedStorage")

        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                repsto.KickPlayer:FireServer(v.Name, mess)
            end
        end
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

    MainSection:NewButton("Autofarm 1", "nice simple autofarm, rejoin to stop", function()
        while true do
            game:GetService("ReplicatedStorage").Remotes.Lift:FireServer()
            wait(0.00000000001)
            end   
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

    MainSection:NewButton("autoclick noob", "rejoin to stop", function()
        while true do
            game:GetService("ReplicatedStorage").ClickNoob:FireServer()
            wait(0.000001)
            end 
    end)
end

if game.PlaceId == 8884334497 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("OP Autoclick", "rejoin to stop", function()
        while true do
            game:GetService("ReplicatedStorage").Remotes.Click:InvokeServer()
            end
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

    MainSection:NewButton("OP Autoclick", "rejoin to stop", function()
        while true do
            game:GetService("ReplicatedStorage").Events.Tap:FireServer()
            wait(Tick)
        end
    end)
end

if game.PlaceId == 3686253681 then
    -- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("Auto Mass", "rejoin to stop", function()
        while true do
            local args = {
                [1] = "Mass",
                [2] = VeryHugeNumber
            }
            game:GetService("ReplicatedStorage").ChangePlayerStat:FireServer(unpack(args))
            wait(SmallTick)
        end
    end)

    MainSection:NewButton("Auto SuperNova", "rejoin to stop", function()
        while true do
            game:GetService("ReplicatedStorage").GoSupernova:FireServer()
            wait(BigTick)
            end
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
