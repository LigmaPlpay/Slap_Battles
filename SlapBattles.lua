if not game:IsLoaded() then
    game.Loaded:Wait()
end

game:GetService("GuiService"):ClearError()

local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Giangplay/Script/main/Orion_Library_PE_V2.lua")))()
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
if game.PlaceId == 6403373529 then
local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Giangplay/Script/main/Orion_Library_PE_V2.lua")))()
local Window = OrionLib:MakeWindow({IntroText = "Moai Hub", Name = ("Moai Hub".." | "..HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = "slap battls"})
    
---Anti Void---
if workspace:FindFirstChild("VoidPart1") == nil then
local VoidPart1 = Instance.new("Part", workspace)
VoidPart1.Position = Vector3.new(0,-50026.5,0)
VoidPart1.Name = "VoidPart1"
VoidPart1.Size = Vector3.new(2048,70,2048)
VoidPart1.Anchored = true
VoidPart1.Transparency = 1
VoidPart1.CanCollide = false
end

if workspace:FindFirstChild("VoidPart") == nil then
local VoidPart = Instance.new("Part", workspace)
VoidPart.Position = Vector3.new(-80.5, -10.005, -246.5)
VoidPart.Name = "VoidPart"
VoidPart.Size = Vector3.new(2048, 1, 2048)
VoidPart.Material = "ForceField"
VoidPart.Anchored = true
VoidPart.Transparency = 1
VoidPart.CanCollide = false

local TournamentAntiVoid = Instance.new("Part", VoidPart)
TournamentAntiVoid.Name = "TAntiVoid"
TournamentAntiVoid.Size = Vector3.new(2048, 15, 2048)
TournamentAntiVoid.Position = Vector3.new(3450, 59.009, 68)
TournamentAntiVoid.Anchored = true
TournamentAntiVoid.Transparency = 1
TournamentAntiVoid.CanCollide = false
end
    
---Tabs---

local Tab11 = Window:MakeTab({
Name = "Combat",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local Tab1 = Window:MakeTab({
Name = "Teleport",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

---Info---

Tab11:AddSlider({
Name = "Reach",
Min = 2,
Max = 30,
Default = 30,
Color = Color3.fromRGB(255,255,255),
Increment = 1,
ValueName = "Reach",
Callback = function(Value)
	_G.ReachHitbox = Value
    end    
})

Tab11:AddToggle({
Name = "Hitbox Player",
Default = false,
Callback = function(Value)
_G.HitboxPlayer = Value
while _G.HitboxPlayer do
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                        v.Character.HumanoidRootPart.Size = Vector3.new(_G.ReachHitbox,_G.ReachHitbox,_G.ReachHitbox)
                        v.Character.HumanoidRootPart.Transparency = 0.75
                    end
                end
task.wait()
end
if _G.HitboxPlayer == false then
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                        v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                        v.Character.HumanoidRootPart.Transparency = 1
                    end
                end
end
	end    
})

Tab11:AddToggle({
Name = "Slap Aura",
Default = false,
Callback = function(Value)
SlapAura = Value
while SlapAura and SlapAuraFriend == "Fight" do
pcall(function()
for i,v in next, game.Players:GetChildren() do
                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil or game.Players.LocalPlayer.leaderstats.Glove.Value == "Error" then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                        if _G.ReachSlapArua >= Magnitude then
gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(v.Character:WaitForChild(SlapAuraCharacter),true)
                    end
end
end
end
                end
end)
task.wait(.1)
end
while SlapAura and SlapAuraFriend == "Not Fight" do
pcall(function()
for i,v in next, game.Players:GetChildren() do
                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and not game.Players.LocalPlayer:IsFriendsWith(v.UserId) and v.Character.Ragdolled.Value == false then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil or game.Players.LocalPlayer.leaderstats.Glove.Value == "Error" then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                        if _G.ReachSlapArua >= Magnitude then
gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(v.Character:WaitForChild(SlapAuraCharacter),true)
                    end
end
end
end
                end
end)
task.wait(.1)
end
	end    
})

AntiVoid = Tab11:AddToggle({
Name = "Anti Void",
Default = false,
Callback = function(Value)
game.Workspace["VoidPart"].CanCollide = Value
game.Workspace["VoidPart"]["TAntiVoid"].CanCollide = Value
if Value == true then
game.Workspace["VoidPart"].Transparency = 0.5
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = 0.5
else
game.Workspace["VoidPart"].Transparency = 1
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = 1
end
	end    
})

Tab1:AddDropdown({
Name = "Teleport",
Default = "",
Options = {"Arena", "Island Slapple"},
Callback = function(Value)
if Value == "Arena" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
elseif Value == "Island Slapple" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0)
end
	end    
})
