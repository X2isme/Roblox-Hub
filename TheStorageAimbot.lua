local Aimbot
local StopAimbot = false

local validTools = {"AK47", "LMG", "SMG", "Shotgun", "DoubleBarrelShotgun", "Revolver"}

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local RemoteEvent = ReplicatedStorage:WaitForChild("RemoteEvent")

local UserInputService = game:GetService("UserInputService")

local AimbotLabel = Instance.new("TextLabel")
AimbotLabel.Size = UDim2.new(0.08, 0, 0.05, 0)
AimbotLabel.Position = UDim2.new(0.77, 0, 0.09, 0)
AimbotLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
AimbotLabel.Scaled = true
AimbotLabel.Text = "Aimbot: OFF"
AimbotLabel.BackgroundTransparency = 0
A
AimbotLabel.Parent = game:GetService("Players").LocalPlayer.PlayerGui.HUD

local function Start()
    print("Aimbot started function")

    local function isVisible(targetPosition)
        local rayParams = RaycastParams.new()
        rayParams.FilterType = Enum.RaycastFilterType.Blacklist
        rayParams.FilterDescendantsInstances = {LocalPlayer.Character}
        rayParams.IgnoreWater = true

        local rayResult = workspace:Raycast(
            LocalPlayer.Character.HumanoidRootPart.Position,
            (targetPosition.Position - LocalPlayer.Character.HumanoidRootPart.Position).Unit * 999,
            rayParams
        )

        if rayResult then
            return (rayResult.Position - targetPosition.Position).Magnitude < 5
        end

        return true
    end

    local function findTarget()
        local nearestVisible = nil
        local nearestVisibleDistance = math.huge

        local nearestAny = nil
        local nearestAnyDistance = math.huge

        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local rootPart = player.Character.HumanoidRootPart
                local distance = (LocalPlayer.Character.HumanoidRootPart.Position - rootPart.Position).Magnitude

                if isVisible(rootPart) then
                    if distance < nearestVisibleDistance then
                        nearestVisibleDistance = distance
                        nearestVisible = player
                    end
                end

                if distance < nearestAnyDistance then
                    nearestAnyDistance = distance
                    nearestAny = player
                end
            end
        end

        return nearestVisible or nearestAny
    end

    local function getCurrentCFrame()
        local target = findTarget()
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            return target.Character.HumanoidRootPart.CFrame
        end
        return LocalPlayer.Character.HumanoidRootPart.CFrame
    end

    local CurrentCFrame = getCurrentCFrame()

    local mt = getrawmetatable(game)
    local oldNamecall = mt.__namecall

    setreadonly(mt, false)

    mt.__namecall = newcclosure(function(self, ...)
        local args = {...}
        local method = getnamecallmethod()

        if self == RemoteEvent and method == "FireServer" then
            local action = args[1]
            local tempCFrame = args[2]

            if (action == "UpdateMouse" or action == "M1D" or action == "M1U") and tempCFrame ~= CurrentCFrame and Aimbot then
                CurrentCFrame = getCurrentCFrame()
                RemoteEvent:FireServer(action, CurrentCFrame)
                print("updated event")
                return
            end
        end

        return oldNamecall(self, ...)
    end)

    setreadonly(mt, true)
end

UserInputService.InputBegan:Connect(function(input, isTyping)
    if not isTyping and input.KeyCode == Enum.KeyCode.T then
        if Aimbot ~= true and Aimbot ~= false then
            Aimbot = true
            Start()
        else
            Aimbot = not Aimbot
            if not Aimbot then
                RemoteEvent:FireServer("M1U", CFrame.new())
                AimbotLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                AimbotLabel.Text = "Aimbot: OFF"
            else
                AimbotLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
                AimbotLabel.Text = "Aimbot: ON"
            end
        end
    end
end)
