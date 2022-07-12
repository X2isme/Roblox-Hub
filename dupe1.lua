local AmountToDupe = 3

local plr = game.Players.LocalPlayer
local char = plr.Character
local pos = char.HumanoidRootPart.Position
local http = game:GetService("HttpService")

local file = 'rejoindupe.json'
writefile(file,http:JSONEncode({
   ['AmountToDupe'] = AmountToDupe,
   ['CurrentAmount'] = 0
}))
char.HumanoidRootPart.CFrame = CFrame.new(0,999999,0)
for i,v in pairs(plr.Backpack:GetChildren()) do
   if v:IsA("Tool") then
       v.Parent = char
   end
end
wait(.3)
for i,v in pairs(char:GetChildren()) do
   if v:IsA("Tool") then
       v.Parent = workspace
   end
end

local dupescript = [[
   game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
   repeat wait() until game.Players.LocalPlayer
   repeat wait() until game.Players.LocalPlayer.Character
   repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(%s)
   local plr = game.Players.LocalPlayer
   local char = plr.Character
   local file = "%s"
   local a = readfile(file)
   local data = game:GetService("HttpService"):JSONDecode(a)
   if data['CurrentAmount'] >= data['AmountToDupe'] then
       wait(0.5)
       for i,v in pairs(workspace:GetChildren()) do
           if v:IsA("Tool") then
               char.Humanoid:EquipTool(v)
           end
       end
       return
   else
       wait()
       char.HumanoidRootPart.CFrame = CFrame.new(0,999999,0)
       for i,v in pairs(plr.Backpack:GetChildren()) do
           if v:IsA("Tool") then
               v.Parent = char
           end
       end
       wait(.3)
       for i,v in pairs(char:GetChildren()) do
           if v:IsA("Tool") then
               v.Parent = workspace
           end
       end
       wait(.1)
       data['CurrentAmount'] = data['CurrentAmount'] + 1
       writefile(file,game:GetService("HttpService"):JSONEncode(data))
   end
   syn.queue_on_teleport(readfile("%s"))
   repeat
   game:GetService("TeleportService"):Teleport(game.PlaceId)    
   wait(0.5)
   until nil
]]
dupescript = string.format(dupescript,tostring(pos),file,"dupescript.lua")

writefile('dupescript.lua',dupescript)
syn.queue_on_teleport(dupescript)
game:GetService("TeleportService"):Teleport(game.PlaceId)
