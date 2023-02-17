local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Astra", "Synapse")

-- MAIN
local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Character")

Section:NewButton("Back/Front flip", "Back, front, flip", function()
    wait(5)

--[[ Info ]]--

local ver = "2.00"
local scriptname = "feFlip"


--[[ Keybinds ]]--

local FrontflipKey = Enum.KeyCode.Z
local BackflipKey = Enum.KeyCode.X
local AirjumpKey = Enum.KeyCode.C


--[[ Dependencies ]]--

local ca = game:GetService("ContextActionService")
local zeezy = game:GetService("Players").LocalPlayer
local h = 0.0174533
local antigrav


--[[ Functions ]]--

function zeezyFrontflip(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		zeezy.Character.Humanoid:ChangeState("Jumping")
		wait()
		zeezy.Character.Humanoid.Sit = true
		for i = 1,360 do 
			delay(i/720,function()
			zeezy.Character.Humanoid.Sit = true
				zeezy.Character.HumanoidRootPart.CFrame = zeezy.Character.HumanoidRootPart.CFrame * CFrame.Angles(-h,0,0)
			end)
		end
		wait(0.55)
		zeezy.Character.Humanoid.Sit = false
	end
end

function zeezyBackflip(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		zeezy.Character.Humanoid:ChangeState("Jumping")
		wait()
		zeezy.Character.Humanoid.Sit = true
		for i = 1,360 do
			delay(i/720,function()
			zeezy.Character.Humanoid.Sit = true
				zeezy.Character.HumanoidRootPart.CFrame = zeezy.Character.HumanoidRootPart.CFrame * CFrame.Angles(h,0,0)
			end)
		end
		wait(0.55)
		zeezy.Character.Humanoid.Sit = false
	end
end

function zeezyAirjump(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		zeezy.Character:FindFirstChildOfClass'Humanoid':ChangeState("Seated")
		wait()
		zeezy.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")	
	end
end


--[[ Binds ]]--

ca:BindAction("zeezyFrontflip",zeezyFrontflip,false,FrontflipKey)
ca:BindAction("zeezyBackflip",zeezyBackflip,false,BackflipKey)
ca:BindAction("zeezyAirjump",zeezyAirjump,false,AirjumpKey)

--[[ Load Message ]]--

print(scriptname .. " " .. ver .. " loaded successfully")
print("made by Zeezy#7203")

local notifSound = Instance.new("Sound",workspace)
notifSound.PlaybackSpeed = 1.5
notifSound.Volume = 0.15
notifSound.SoundId = "rbxassetid://170765130"
notifSound.PlayOnRemove = true
notifSound:Destroy()
game.StarterGui:SetCore("SendNotification", {Title = "feFlip", Text = "feFlip loaded successfully!", Icon = "rbxassetid://505845268", Duration = 5, Button1 = "Okay"})
end)

Section:NewToggle("Super jump, speed", "you can go fast and jump high", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

Section:NewButton("CMD-X", "admin GUI", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"))()
end)

--LOCAL PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Character")


PlayerSection:NewSlider("Walkspeed", "SPEEEEED", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("JumpPower", "just jump", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

--OTHER
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

OtherSection:NewButton("Pendulum hub v3", "Fun mode", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
end)

OtherSection:NewButton("Chat spoofer", "spam chat", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/djBfk8Li'),true))()
end)


OtherSection:NewButton("Infinite Yield", "Admin", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

--CREDITS
local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("made by mertviy_naruto#9857")
