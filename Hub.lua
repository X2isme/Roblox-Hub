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
        loadstring(game:HttpGet("https://github.com/X2isme/Roblox-Hub/blob/main/dupe1",true))()
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
