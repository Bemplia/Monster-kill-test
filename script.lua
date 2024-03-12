local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Monster kill test V1", "Ocean")

local Main = Window:NewTab("Main")
local Movement = Window:NewTab("Movement")
local Tp = Window:NewTab("Tp")
local Esp = Window:NewTab("Esp")
local SafeZone = Window:NewTab("Safe Zone")
local Gui = Window:NewTab("Gui")
local Creator = Window:NewTab("Creator")

local MainSection = Main:NewSection("Main")
local TpSection = Tp:NewSection("Tp")
local MovementSection = Movement:NewSection("Movement")
local EspSection = Esp:NewSection("Esp")
local SafeZoneSection = SafeZone:NewSection("Safe Zone")
local GuiSection = Gui:NewSection("Gui")
local CreatorSection = Creator:NewSection("Bemplia/alekseY312/arbuzik.new")



MainSection:NewButton("Rejoin", "Rejoin", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

MainSection:NewButton("FullBright", "", function()
Lighting = game:GetService("Lighting")
Lighting.Brightness = 2
Lighting.ClockTime = 14
Lighting.FogEnd = 100000
Lighting.GlobalShadows = false
Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end)

MainSection:NewButton("Anti AFK", "Jump every 5 seconds", function()
while wait(5) do
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 46
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
end)

MainSection:NewToggle("Freeze The Rake", "WOW", function(state)
if state then
    game:GetService("Workspace").Monster.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game:GetService("Workspace").Monster.HumanoidRootPart.Anchored = true
    game:GetService("Workspace").Monster.Head.Anchored = true
    game:GetService("Workspace").Monster.Torso.Anchored = true
    game:GetService("Workspace").Monster["Left Arm"].Anchored = true
    game:GetService("Workspace").Monster["Right Arm"].Anchored = true
    game:GetService("Workspace").Monster["Left Leg"].Anchored = true
    game:GetService("Workspace").Monster["Right Leg"].Anchored = true
else
    game:GetService("Workspace").Monster.HumanoidRootPart.Anchored = false
    game:GetService("Workspace").Monster.Head.Anchored = false
    game:GetService("Workspace").Monster.Torso.Anchored = false
    game:GetService("Workspace").Monster["Left Arm"].Anchored = false
    game:GetService("Workspace").Monster["Right Arm"].Anchored = false
    game:GetService("Workspace").Monster["Left Leg"].Anchored = false
    game:GetService("Workspace").Monster["Right Leg"].Anchored = false
end
end)

MovementSection:NewButton("Inf stamina", "U can run forever", function()
while wait() do
game.Players.LocalPlayer.Character.StaminaValues.Stamina.Value = 200
end
end)

MovementSection:NewTextBox("WalkSpeed", "...", function(WalkSpeed)
while game:GetService("RunService").RenderStepped:wait() do
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeed
end
end)

MovementSection:NewTextBox("JumpPower", "...", function(JumpPower)
while game:GetService("RunService").RenderStepped:wait() do
game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
end
end)

MovementSection:NewToggle("Noclip", "...", function(Noclip)
while Noclip do
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
if Noclip == false then
game.Players.LocalPlayer.Character.Head.CanCollide = true
game.Players.LocalPlayer.Character.Torso.CanCollide = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
break
end
wait()
end
end)

TpSection:NewButton("Go to the monster", "Telport to monster", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Monster.HumanoidRootPart.CFrame
end)

TpSection:NewButton("Go to the spawn monster", "Teleport to the spawn monster", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310.109894, 5.14281559, -237.512543, -0.146724075, -3.93631439e-08, 0.989177465, 5.89843996e-09, 1, 4.06687235e-08, -0.989177465, 1.1801685e-08, -0.146724075)
end)

TpSection:NewButton("Go to the house", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(535.733582, 5.68867397, -253.122955, -0.72162801, 4.81650346e-08, 0.692281067, 4.41496084e-08, 1, -2.35532127e-08, -0.692281067, 1.35672789e-08, -0.72162801)
end)

TpSection:NewButton("Go to the storage", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(388.115509, 8.04133511, 139.804733, 0.99899435, -5.09200291e-08, 0.0448367037, 4.9270696e-08, 1, 3.78904552e-08, -0.0448367037, -3.56432146e-08, 0.99899435)
end)

TpSection:NewButton("Go to the Dual Tower", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(484.608429, 68.6672058, -387.710541, -0.999360085, -7.54597522e-08, -0.0357683562, -7.64771215e-08, 1, 2.70751688e-08, 0.0357683562, 2.97933038e-08, -0.999360085)
end)

TpSection:NewButton("Go to the mini tower", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(430.462433, 35.7596512, -131.441513, 0.0067421901, -7.16364035e-09, 0.999977291, 4.06004546e-08, 1, 6.89006097e-09, -0.999977291, 4.05530756e-08, 0.0067421901)
end)

TpSection:NewButton("Go to the mini tower 2", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-77.2806396, 33.6151199, -69.4932022, 0.0283908024, -4.91642353e-08, -0.999596894, 6.37101536e-08, 1, -4.73745487e-08, 0.999596894, -6.2339474e-08, 0.0283908024)
end)

TpSection:NewButton("Go to the tower", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5.29672098, 69.9563751, -551.292297, -0.999872088, -1.88271745e-08, 0.0159926582, -1.94159906e-08, 1, -3.66626836e-08, -0.0159926582, -3.69685083e-08, -0.999872088)
end)

EspSection:NewButton("Monster", "You can see monster in the distance", function()
while wait(3) do
pcall (function()
text = "Monster"
item = game:GetService("Workspace").Monster
local BillboardGui = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")
local TextLabel1 = Instance.new("TextLabel")
local rake = game:GetService("Workspace").Monster
local esp = Instance.new("BoxHandleAdornment",rake)  
BillboardGui.Parent = item
BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui.Active = true
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 200, 0, 50)
BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = text
TextLabel.Font = "Legacy"
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextScaled = false
TextLabel.TextStrokeTransparency = 0
TextLabel.TextSize = 8
TextLabel.TextWrapped = true
TextLabel1.Parent = BillboardGui
TextLabel1.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel1.BackgroundTransparency = 1
TextLabel1.Size = UDim2.new(0, 200, 0, 50)
TextLabel1.Font = Enum.Font.SourceSans
TextLabel1.Font = "Legacy"
TextLabel1.TextScaled = false
TextLabel1.TextStrokeTransparency = 0
TextLabel1.TextSize = 8
TextLabel1.TextColor3 = Color3.fromRGB(225, 0, 0)
TextLabel1.Position = UDim2.new(0, 0, -0.3, 0)
esp.Adornee = rake
esp.ZIndex = 0
esp.AlwaysOnTop = true
esp.Color3 = Color3.fromRGB(252, 3, 3)
esp.Transparency = 0.5
esp.Size = Vector3.new(5,6,1,5)
while wait() do
    TextLabel1.Text = "Health: ".. workspace.Monster.Humanoid.Health
end
end)
end
end)

SafeZoneSection:NewButton("Go to Safe Zone", "Telepor to Safe Zone", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9996.72949, 10003.4971, 9986.34082, -0.155898228, -6.66379236e-08, 0.98777312, 5.69063801e-08, 1, 7.64442021e-08, -0.98777312, 6.81281094e-08, -0.155898228)
end)

SafeZoneSection:NewButton("Create Safe Zone", "Click", function()
local Float = Instance.new("Part",workspace);
Float.Size = Vector3.new(50, 1, 50);
Float.Position = Vector3.new(10000, 10000, 10000);
Float.Name = "EXPLOITPART"
Float.Material = "Wood"
Float.Anchored = true;
Float.CanCollide = true;
Float.Transparency = 0;
end)

SafeZoneSection:NewColorPicker("Plate Color", "Change plate color", Color3.fromRGB(225,225,225), function(s)
    game.Workspace.EXPLOITPART.Color = s
end)

SafeZoneSection:NewDropdown("Plate Material", "Change plate material", {"Plastic", "Wood", "Slate", "Concrete", "CorrodedMetal","DiamondPlate","Foil","Grass","Ice","Marble","Granite","Brick","Pebble","Sand","Fabric","SmoothPlastic","Metal","WoodPlanks","Cobblestone","Rock","Glacier","Snow","Sandstone","Mud","Basalt","Ground","CrackedLava","Neon","Glass","Asphalt","LeafyGrass","Salt","Limestone","Pavement","ForceField"}, function(s)
    game.Workspace.EXPLOITPART.Material = s
end)

SafeZoneSection:NewTextBox("Transparency", "", function(s)
game.Workspace.EXPLOITPART.Transparency = s
end)

GuiSection:NewKeybind("Toggle GUI", "", Enum.KeyCode.L, function()
Library:ToggleUI()
end)
