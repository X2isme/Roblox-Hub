local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Raven Hub", "Ocean")

-- home
local Home = Window:NewTab("Home")
local HomeSection = Home:NewSection("Credits")
HomeSection:NewLabel("Made By Tyrel Batutuy")
HomeSection:NewLabel("Raven Hub")

-- Player
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")
PlayerSection:NewTextBox("Enter WalkSpeed", "Enter WalkSpeed", function(txt)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (txt)
end)

PlayerSection:NewButton("Reset WalkSpeed", "Reset WalkSpeed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

PlayerSection:NewTextBox("Enter JumpPower", "Enter JumpPower", function(txt)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = (txt)
end)

PlayerSection:NewButton("Reset JumpPower", "Reset JumpPower", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

PlayerSection:NewTextBox("Teleport To Player", "Teleports To Player", function(tp)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tp].Character.HumanoidRootPart.CFrame
    local Victim = tp
end)

PlayerSection:NewLabel("Teleport Only Works If Full User And Not Using Fe")
PlayerSection:NewLabel("Animation.")

-- Scripts
local Scripts = Window:NewTab("Scripts")
local ScriptsSection = Scripts:NewSection("Scripts")
ScriptsSection:NewButton("Teleport Tool", "Teleport Tool", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/GuBiX19e'))()
end)

ScriptsSection:NewButton("Netless", "Netless", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/Cu7bKQWN'),true))()
end)

ScriptsSection:NewButton("Hitbox", "Hitbox", function()
    _G.HeadSize = 20
	_G.Disabled = true

	game:GetService('RunService').RenderStepped:connect(function()
		if _G.Disabled then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
						v.Character.HumanoidRootPart.Transparency = 0.7
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		end
	end)
end)

ScriptsSection:NewButton("Walk On Walls", "Walk On Walls", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/RY9cBbdG'),true))()
end)

ScriptsSection:NewButton("Replication Ui", "Replication Ui", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/rM0LU2mJ'),true))()
end)

ScriptsSection:NewButton("Keyboard Script", "Keyboard", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/manimcool21/Keyboard-FE/main/Protected%20(3).lua'),true))()
end)

ScriptsSection:NewButton("Vxpe Bedwars", "Vxpe Bedwars", function()
    if game.PlaceId == 6872265039 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
    else
        game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "Notification";
            Text = "Game Not Supported";
                    })
    end
end)

ScriptsSection:NewButton("Enclosed Script Dahood", "Dahood Script", function()
    if game.PlaceId == 2788229376 then
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Pvpahh/enclosed/main/enclosed'))()
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Notification";
            Text = "Game Not Supported"
        })
    end
end)

ScriptsSection:NewButton("Chat Translator", "Chat Translator", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/WSBZiDNe'),true))()
end)

ScriptsSection:NewButton("Tall R15", "Tall R15", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/MXstG0Qd'))()
end)

ScriptsSection:NewButton("Build A Boat Copy Build", "Copy Build", function()
    if game.PlaceId == 537413528 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/StenDirt/Trash-Game/main/Script.lua"))()
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Notification";
            Text = "Game Not Supported"
        })
    end
end)

ScriptsSection:NewButton("Super Tools", "Super Tools", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/sQWeMuB0'))()
end)

ScriptsSection:NewButton("Btools", "Btools", function()
    Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 4
end)

ScriptsSection:NewButton("Mouse Fling", "Mouse Fling", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/1ASvZmRL'))()
end)

-- guis
local Guis = Window:NewTab("Guis")
local GuisSection = Guis:NewSection("Guis")
GuisSection:NewButton("Fly Gui", "Fly Gui", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/tyreltrijo/Fly/main/Fly%20Gui'))()
end)

GuisSection:NewButton("Prison Life Gui", "Prison Life Gui", function()
    if game.PlaceId == 155615604 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Notification";
            Text = "Game Not Supported"
        })
    end
end)

GuisSection:NewButton("Tower Of Hell Gui", "Toh Gui", function()
    if game.PlaceId == 1962086868 then
    loadstring(game:HttpGet('https://pastebin.com/raw/BbVHjH56'))()
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Notification";
            Text = "Game Not Supported"
        })
    end
end)

GuisSection:NewButton("Ninja Legends Gui", "NL Gui", function()
    if game.PlaceId == 3956818381 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptpastebin/raw/main/44"))()
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Notification";
            Text = "Game Not Supported"
        })
    end
end)

GuisSection:NewButton("Shindo Life Gui", "Shindo Life Gui", function()
    if game.PlaceId == 4616652839 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L1Z..."))()
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Notification";
            Text = "Game Not Supported"
        })
    end
end)

GuisSection:NewButton("Murder Mystery 2 Gui", "Mm2 Gui", function()
    if game.PlaceId == 142823291 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Doggo-cryto/EclipseMM2/master/Script", true))()
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Notification";
            Text = "Game Not Supported"
        })
    end
end)

GuisSection:NewButton("Chaos Gui", "Chaos Gui", function()
    local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TextButton_4 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local UICorner_8 = Instance.new("UICorner")
local TextButton_5 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(34, 6, 32)
Main.Position = UDim2.new(0.10494753, 0, 0.0906666666, 0)
Main.Size = UDim2.new(0, 526, 0, 307)
Main.Active = true
Main.Draggable = true

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(82, 89, 75)
TextButton.BorderColor3 = Color3.fromRGB(55, 86, 108)
TextButton.Position = UDim2.new(0.269961983, 0, 0.110749185, 0)
TextButton.Size = UDim2.new(0, 371, 0, 29)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Free Gamepass (chaos)"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.MouseButton1Down:Connect(function()
game.Players.LocalPlayer.UserId = "2205774994"
end)

UICorner.Parent = TextButton

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
TextLabel.Size = UDim2.new(0, 526, 0, 24)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Chaos Script GUI"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 22.000

UICorner_2.Parent = TextLabel

TextLabel_2.Parent = Main
TextLabel_2.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
TextLabel_2.Size = UDim2.new(0, 134, 0, 307)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = ""
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 14.000

UICorner_3.Parent = TextLabel_2

TextButton_2.Parent = Main
TextButton_2.BackgroundColor3 = Color3.fromRGB(34, 6, 32)
TextButton_2.Position = UDim2.new(0.0209125467, 0, 0.110749185, 0)
TextButton_2.Size = UDim2.new(0, 114, 0, 29)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Main"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 25.000

UICorner_4.Parent = TextButton_2

TextButton_3.Parent = Main
TextButton_3.BackgroundColor3 = Color3.fromRGB(82, 89, 75)
TextButton_3.BorderColor3 = Color3.fromRGB(55, 86, 108)
TextButton_3.Position = UDim2.new(0.269961983, 0, 0.231270358, 0)
TextButton_3.Size = UDim2.new(0, 371, 0, 29)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Infinite Yield"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000
TextButton_3.MouseButton1Down:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

UICorner_5.Parent = TextButton_3

TextButton_4.Parent = Main
TextButton_4.BackgroundColor3 = Color3.fromRGB(82, 89, 75)
TextButton_4.BorderColor3 = Color3.fromRGB(55, 86, 108)
TextButton_4.Position = UDim2.new(0.269961983, 0, 0.351791531, 0)
TextButton_4.Size = UDim2.new(0, 371, 0, 29)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "HitBox"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextSize = 14.000
TextButton_4.MouseButton1Down:Connect(function()
	_G.HeadSize = 20
	_G.Disabled = true

	game:GetService('RunService').RenderStepped:connect(function()
		if _G.Disabled then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
						v.Character.HumanoidRootPart.Transparency = 0.7
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		end
	end)
end)

UICorner_6.Parent = TextButton_4

TextLabel_3.Parent = Main
TextLabel_3.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
TextLabel_3.Position = UDim2.new(-2.32830644e-10, 0, 0.879478812, 0)
TextLabel_3.Size = UDim2.new(0, 134, 0, 37)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Arceus X#0001"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextSize = 14.000

UICorner_7.Parent = TextLabel_3

UICorner_8.Parent = Main

TextButton_5.Parent = Main
TextButton_5.BackgroundColor3 = Color3.fromRGB(82, 89, 75)
TextButton_5.BorderColor3 = Color3.fromRGB(55, 86, 108)
TextButton_5.Position = UDim2.new(0.269961983, 0, 0.475570023, 0)
TextButton_5.Size = UDim2.new(0, 371, 0, 29)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "Godmode (r6)"
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextSize = 14.000
TextButton_5.MouseButton1Down:Connect(function()
	local lp = game:GetService "Players".LocalPlayer
	if lp.Character:FindFirstChild "Head" then
		local char = lp.Character
		char.Archivable = true
		local new = char:Clone()
		new.Parent = workspace
		lp.Character = new
		wait(2)
		local oldhum = char:FindFirstChildWhichIsA "Humanoid"
		local newhum = oldhum:Clone()
		newhum.Parent = char
		newhum.RequiresNeck = false
		oldhum.Parent = nil
		wait(2)
		lp.Character = char
		new:Destroy()
		wait(1)
		newhum:GetPropertyChangedSignal("Health"):Connect(
		function()
			if newhum.Health <= 0 then
				oldhum.Parent = lp.Character
				wait(1)
				oldhum:Destroy()
			end
		end)
		workspace.CurrentCamera.CameraSubject = char
		if char:FindFirstChild "Animate" then
			char.Animate.Disabled = true
			wait(.1)
			char.Animate.Disabled = false
		end
		lp.Character:FindFirstChild "Head":Destroy()
	end
end)

UICorner_9.Parent = TextButton_5
end)

GuisSection:NewButton("Ghost Player Gui", "Ghost Player Gui", function()
    -- Gui to Lua
-- Version: 3.2

game.StarterGui:SetCore("SendNotification", {
    Title = "GhostPlayer Scripts";
    Text = "made by ItzzJoshua_"; -- what the text says (ofc)
    Duration = 60;
    })
    
    -- Instances:
    
    local ScreenGui = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local TextButton = Instance.new("TextButton")
    local TextButton_2 = Instance.new("TextButton")
    local TextButton_3 = Instance.new("TextButton")
    local TextButton_4 = Instance.new("TextButton")
    local TextButton_5 = Instance.new("TextButton")
    local TextButton_6 = Instance.new("TextButton")
    local TextButton_7 = Instance.new("TextButton")
    local TextButton_8 = Instance.new("TextButton")
    local TextButton_9 = Instance.new("TextButton")
    local TextButton_10 = Instance.new("TextButton")
    local TextButton_11 = Instance.new("TextButton")
    local TextButton_12 = Instance.new("TextButton")
    local TextButton_13 = Instance.new("TextButton")
    local TextButton_14 = Instance.new("TextButton")
    local TextButton_15 = Instance.new("TextButton")
    local TextButton_16 = Instance.new("TextButton")
    local TextLabel_2 = Instance.new("TextLabel")
    
    --Properties:
    
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Main.Name = "Main"
    Main.Parent = ScreenGui
    Main.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
    Main.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Main.BorderSizePixel = 5
    Main.Position = UDim2.new(0.21171169, 0, 0.181818172, 0)
    Main.Size = UDim2.new(0, 383, 0, 237)
    Main.Active = true
    Main.Draggable = true
    
    TextLabel.Parent = Main
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BorderSizePixel = 4
    TextLabel.Position = UDim2.new(-0.0652741492, 0, 0, 0)
    TextLabel.Size = UDim2.new(0, 429, 0, 41)
    TextLabel.Font = Enum.Font.PatrickHand
    TextLabel.Text = "GhostPlayer Scripts GUI"
    TextLabel.TextColor3 = Color3.fromRGB(225, 0, 3)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true
    
    TextButton.Parent = Main
    TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton.BorderSizePixel = 3
    TextButton.Position = UDim2.new(0.0208877288, 0, 0.23206751, 0)
    TextButton.Size = UDim2.new(0, 68, 0, 30)
    TextButton.Font = Enum.Font.PatrickHand
    TextButton.Text = "Player GUI"
    TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.TextScaled = true
    TextButton.TextSize = 14.000
    TextButton.TextWrapped = true
    TextButton.MouseButton1Down:connect(function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\68\56\117\81\76\49\109\84\39\41\41\40\41\10")()
    end)
    TextButton_2.Parent = Main
    TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton_2.BorderSizePixel = 3
    TextButton_2.Position = UDim2.new(0.263707578, 0, 0.23206751, 0)
    TextButton_2.Size = UDim2.new(0, 68, 0, 30)
    TextButton_2.Font = Enum.Font.PatrickHand
    TextButton_2.Text = "Auto Presser V2"
    TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_2.TextScaled = true
    TextButton_2.TextSize = 14.000
    TextButton_2.TextWrapped = true
    TextButton_2.MouseButton1Down:connect(function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\78\76\98\49\55\116\117\106\39\41\41\40\41\10")()
    end)
    TextButton_3.Parent = Main
    TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton_3.BorderSizePixel = 3
    TextButton_3.Position = UDim2.new(0.498694509, 0, 0.23206751, 0)
    TextButton_3.Size = UDim2.new(0, 68, 0, 30)
    TextButton_3.Font = Enum.Font.PatrickHand
    TextButton_3.Text = "Kill GUI"
    TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_3.TextScaled = true
    TextButton_3.TextSize = 14.000
    TextButton_3.TextWrapped = true
    TextButton_3.MouseButton1Down:connect(function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\85\101\119\99\54\105\53\39\41\41\40\41\10")()
    end)
    TextButton_4.Parent = Main
    TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton_4.BorderSizePixel = 3
    TextButton_4.Position = UDim2.new(0.736292422, 0, 0.23206751, 0)
    TextButton_4.Size = UDim2.new(0, 68, 0, 30)
    TextButton_4.Font = Enum.Font.PatrickHand
    TextButton_4.Text = "Time Stop GUI"
    TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_4.TextScaled = true
    TextButton_4.TextSize = 14.000
    TextButton_4.TextWrapped = true
    TextButton_4.MouseButton1Down:connect(function()
    loadstring(game:HttpGet('https://pastebin.com/raw/djAd7g2W'))()
    end)
    TextButton_5.Parent = Main
    TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton_5.BorderSizePixel = 3
    TextButton_5.Position = UDim2.new(0.736292422, 0, 0.434599161, 0)
    TextButton_5.Size = UDim2.new(0, 68, 0, 30)
    TextButton_5.Font = Enum.Font.PatrickHand
    TextButton_5.Text = "Teleport GUI"
    TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_5.TextScaled = true
    TextButton_5.TextSize = 14.000
    TextButton_5.TextWrapped = true
    TextButton_5.MouseButton1Down:connect(function()
    loadstring(game:HttpGet('https://pastebin.com/raw/1dM3mAJq'))()
    end)
    TextButton_6.Parent = Main
    TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton_6.BorderSizePixel = 3
    TextButton_6.Position = UDim2.new(0.498694509, 0, 0.434599161, 0)
    TextButton_6.Size = UDim2.new(0, 68, 0, 30)
    TextButton_6.Font = Enum.Font.PatrickHand
    TextButton_6.Text = "UpDown GUI"
    TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_6.TextScaled = true
    TextButton_6.TextSize = 14.000
    TextButton_6.TextWrapped = true
    TextButton_6.MouseButton1Down:connect(function()
    loadstring(game:HttpGet('https://pastebin.com/raw/3GhN6aps'))()
    end)
    TextButton_7.Parent = Main
    TextButton_7.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton_7.BorderSizePixel = 3
    TextButton_7.Position = UDim2.new(0.263707578, 0, 0.434599161, 0)
    TextButton_7.Size = UDim2.new(0, 68, 0, 30)
    TextButton_7.Font = Enum.Font.PatrickHand
    TextButton_7.Text = "Auto Chat"
    TextButton_7.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_7.TextScaled = true
    TextButton_7.TextSize = 14.000
    TextButton_7.TextWrapped = true
    TextButton_7.MouseButton1Down:connect(function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\48\120\113\74\98\72\98\52\39\41\41\40\41\10")()
    end)
    TextButton_8.Parent = Main
    TextButton_8.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton_8.BorderSizePixel = 3
    TextButton_8.Position = UDim2.new(0.0208877325, 0, 0.434599161, 0)
    TextButton_8.Size = UDim2.new(0, 68, 0, 30)
    TextButton_8.Font = Enum.Font.PatrickHand
    TextButton_8.Text = "Position Reader"
    TextButton_8.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_8.TextScaled = true
    TextButton_8.TextSize = 14.000
    TextButton_8.TextWrapped = true
    TextButton_8.MouseButton1Down:connect(function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\87\121\72\66\67\86\104\119\39\41\41\40\41\10")()
    end)
    TextButton_9.Parent = Main
    TextButton_9.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton_9.BorderSizePixel = 3
    TextButton_9.Position = UDim2.new(0.736292422, 0, 0.637130797, 0)
    TextButton_9.Size = UDim2.new(0, 68, 0, 30)
    TextButton_9.Font = Enum.Font.PatrickHand
    TextButton_9.Text = "Lag Script GUI"
    TextButton_9.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_9.TextScaled = true
    TextButton_9.TextSize = 14.000
    TextButton_9.TextWrapped = true
    TextButton_9.MouseButton1Down:connect(function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\119\117\112\51\113\55\101\113\39\41\41\40\41\10")()
    end)
    TextButton_10.Parent = Main
    TextButton_10.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton_10.BorderSizePixel = 3
    TextButton_10.Position = UDim2.new(0.498694509, 0, 0.637130797, 0)
    TextButton_10.Size = UDim2.new(0, 68, 0, 30)
    TextButton_10.Font = Enum.Font.PatrickHand
    TextButton_10.Text = "Invisible GUI"
    TextButton_10.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_10.TextScaled = true
    TextButton_10.TextSize = 14.000
    TextButton_10.TextWrapped = true
    TextButton_10.MouseButton1Down:connect(function()
    loadstring(game:HttpGet('https://pastebin.com/raw/AYtzGEPb'))()
    end)
    TextButton_11.Parent = Main
    TextButton_11.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton_11.BorderSizePixel = 3
    TextButton_11.Position = UDim2.new(0.263707578, 0, 0.637130797, 0)
    TextButton_11.Size = UDim2.new(0, 68, 0, 30)
    TextButton_11.Font = Enum.Font.PatrickHand
    TextButton_11.Text = "Custom Hitbox"
    TextButton_11.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_11.TextScaled = true
    TextButton_11.TextSize = 14.000
    TextButton_11.TextWrapped = true
    TextButton_11.MouseButton1Down:connect(function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\84\117\76\56\53\57\57\77\39\41\41\40\41\10")()
    end)
    TextButton_12.Parent = Main
    TextButton_12.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton_12.BorderSizePixel = 3
    TextButton_12.Position = UDim2.new(0.0208877325, 0, 0.637130797, 0)
    TextButton_12.Size = UDim2.new(0, 68, 0, 30)
    TextButton_12.Font = Enum.Font.PatrickHand
    TextButton_12.Text = "Dupe Tools"
    TextButton_12.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_12.TextScaled = true
    TextButton_12.TextSize = 14.000
    TextButton_12.TextWrapped = true
    TextButton_12.MouseButton1Down:connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Dupe%20Tools%20Main%20Script.md'))()
    end)
    TextButton_13.Parent = Main
    TextButton_13.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton_13.BorderSizePixel = 3
    TextButton_13.Position = UDim2.new(0.0208877325, 0, 0.83544302, 0)
    TextButton_13.Size = UDim2.new(0, 68, 0, 30)
    TextButton_13.Font = Enum.Font.PatrickHand
    TextButton_13.Text = "Fling GUI"
    TextButton_13.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_13.TextScaled = true
    TextButton_13.TextSize = 14.000
    TextButton_13.TextWrapped = true
    TextButton_13.MouseButton1Down:Connect(function()
    loadstring(game:HttpGet('https://pastebin.com/raw/fj5VwQtC'))()
    end)
    TextButton_14.Parent = Main
    TextButton_14.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton_14.BorderSizePixel = 3
    TextButton_14.Position = UDim2.new(0.263707578, 0, 0.83544302, 0)
    TextButton_14.Size = UDim2.new(0, 68, 0, 30)
    TextButton_14.Font = Enum.Font.PatrickHand
    TextButton_14.Text = "Auto jump GUI"
    TextButton_14.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_14.TextScaled = true
    TextButton_14.TextSize = 14.000
    TextButton_14.TextWrapped = true
    TextButton_14.MouseButton1Down:Connect(function()
    loadstring(game:HttpGet('https://pastebin.com/raw/vViq08jX'))()
    end)
    TextButton_15.Parent = Main
    TextButton_15.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton_15.BorderSizePixel = 3
    TextButton_15.Position = UDim2.new(0.498694539, 0, 0.83544302, 0)
    TextButton_15.Size = UDim2.new(0, 68, 0, 30)
    TextButton_15.Font = Enum.Font.PatrickHand
    TextButton_15.Text = "Freeze Cam GUI"
    TextButton_15.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_15.TextScaled = true
    TextButton_15.TextSize = 14.000
    TextButton_15.TextWrapped = true
    TextButton_15.MouseButton1Down:Connect(function()
    loadstring(game:HttpGet('https://pastebin.com/raw/T0S0RPTW'))()
    end)
    TextButton_16.Parent = Main
    TextButton_16.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    TextButton_16.BorderSizePixel = 3
    TextButton_16.Position = UDim2.new(0.736292481, 0, 0.83544302, 0)
    TextButton_16.Size = UDim2.new(0, 68, 0, 30)
    TextButton_16.Font = Enum.Font.PatrickHand
    TextButton_16.Text = "Chat Hax GUI"
    TextButton_16.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_16.TextScaled = true
    TextButton_16.TextSize = 14.000
    TextButton_16.TextWrapped = true
    TextButton_16.MouseButton1Down:Connect(function()
    loadstring(game:HttpGet('https://pastebin.com/raw/MBpnp3yS'))()
    end)
    TextLabel_2.Parent = Main
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BorderSizePixel = 4
    TextLabel_2.Position = UDim2.new(-0.0652741492, 0, 0.995780587, 0)
    TextLabel_2.Size = UDim2.new(0, 429, 0, 41)
    TextLabel_2.Font = Enum.Font.PatrickHand
    TextLabel_2.Text = "Made by ItzzJoshua_"
    TextLabel_2.TextColor3 = Color3.fromRGB(225, 0, 3)
    TextLabel_2.TextScaled = true
    TextLabel_2.TextSize = 14.000
    TextLabel_2.TextWrapped = true
end)

GuisSection:NewButton("BloxFruit Gui", "Bloxfruit Gui", function()
    if game.PlaceId == 2753915549 then
_G.Color = Color3.fromRGB(255,0,0)
loadstring(game:HttpGet('https://raw.githubusercontent.com/Toonza555/BonkHub/main/Bonkxx.txt'))()
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Notification";
            Text = "Game Not Supported"
        })
    end
end)

GuisSection:NewButton("Yeet Fling Gui", "Yeet Fling Gui", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/saMtiek2",true))()
end)

GuisSection:NewButton("Ultimate Troll Gui", "Utg Gui", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukez/Scripts/main/UTG%20V3%20RAW"))()
end)

GuisSection:NewButton("Slap Battle Gui", "SB Gui", function()
    if game.PlaceId == 6403373529 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/slap_battles_gui/main/0.lua"))()
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Notification";
            Text = "Game Not Supported"
        })
    end
end)
