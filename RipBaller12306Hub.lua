local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Poor gloves hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionGlovesHub"})
OrionLib:MakeNotification({
	Name = "Notification",
	Content = "Script loaded!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Misc"
})
Tab:AddButton({
	Name = "Clear kick error",
	Callback = function()
      		game:GetService("GuiService"):ClearError()
  	end    
})
Tab:AddButton({
	Name = "Make the glove black (Works only with default)",
	Callback = function()
      		game.Players.LocalPlayer.Backpack.Default.Glove.Color = Color3.fromRGB(000, 000, 000)
  	end    
})
Tab:AddButton({
	Name = "Turn glove into a block (Works only with default)",
	Callback = function()
      		game.Players.LocalPlayer.Backpack.Default.Glove.Mesh:Destroy()
  	end    
})
Tab:AddToggle({
	Name = "Auto slap (For default)",
	Default = false,
	Callback = function(Value)
		_G.SlapAura = Value
		while _G.SlapAura do
		   game.Players.LocalPlayer.Character.Default:Activate()
		   wait(0.3)
		end
	end    
})
Tab:AddToggle({
	Name = "Auto slap (For God's hand)",
	Default = false,
	Callback = function(Value)
		_G.SlapAura = Value
		while _G.SlapAura do
		   game.Players.LocalPlayer.Character["God's hand"]:Activate()
		   wait(0.1)
		end
	end    
})
Tab:AddToggle({
	Name = "Auto slap (For OVERKILL)",
	Default = false,
	Callback = function(Value)
		_G.SlapAura = Value
		while _G.SlapAura do
		   game.Players.LocalPlayer.Character.OVERKILL:Activate()
		   wait(0.1)
		end
	end    
})
Tab:AddButton({
	Name = "Turn on anti void",
	Callback = function()
      		game.Workspace.dedBarrier.CanCollide = true
      		game.Workspace.dedBarrier.Transparency = 1
      		game.Workspace.dedBarrier.Material = "Slate"
      		game.Workspace.dedBarrier.Color = Color3.fromRGB(105, 64, 40)
            game.Workspace.TAntiVoid.CanCollide = true
            game.Workspace.TAntiVoid.Transparency = 1
  	end    
})
Tab:AddButton({
	Name = "Turn off anti void",
	Callback = function()
      		game.Workspace.dedBarrier.CanCollide = false
      		game.Workspace.dedBarrier.Transparency = 1
            game.Workspace.TAntiVoid.CanCollide = false
            game.Workspace.TAntiVoid.Transparency = 1
  	end    
})
Tab:AddButton({
	Name = "Teleport to plate (buggy)",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.Position = game.Workspace.Arena.Plate.Sign.Text.Position
  	end    
})
Tab:AddToggle({
	Name = "Rhythm explosion spam (Works with any glove)",
	Default = false,
	Callback = function(Value)
		_G.RhythmSpam = Value
		while _G.RhythmSpam do
		   game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion",3)
           task.wait()
		end
	end    
})
Tab:AddToggle({
	Name = "Brick spam",
	Default = false,
	Callback = function(Value)
		_G.BrickSpam = Value
		while _G.BrickSpam do
		   game:GetService("ReplicatedStorage").lbrick:FireServer()
		   task.wait(1.1)
		end
	end    
})
Tab:AddToggle({
	Name = "Slow Brick spam (Use if high ping)",
	Default = false,
	Callback = function(Value)
		_G.SlowBrickSpam = Value
		while _G.SlowBrickSpam do
		   game:GetService("ReplicatedStorage").lbrick:FireServer()
		   task.wait(5.1)
		end
	end    
})
Tab:AddToggle({
	Name = "Rojo spam (Works with any glove)",
	Default = false,
	Callback = function(Value)
		if Person == nil then
Person = game.Players.LocalPlayer.Name
end
_G.RojoSpam = Value
while _G.RojoSpam do
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players[Person].Character.HumanoidRootPart.CFrame})
task.wait(2)
end
	end    
})
Tab:AddButton({
	Name = "Equip default",
	Callback = function()
      		fireclickdetector(game.Workspace.Lobby.Default.ClickDetector)
  	end    
})
Tab:AddButton({
	Name = "Equip brick",
	Callback = function()
      		fireclickdetector(game.Workspace.Lobby.Brick.ClickDetector)
  	end    
})
Tab:AddButton({
	Name = "Overkill prompt",
	Callback = function()
      		fireclickdetector(game.Workspace.Lobby.OVERKILL.ClickDetector)
  	end    
})
Tab:AddButton({
	Name = "Equip error",
	Callback = function()
      		fireclickdetector(game.Workspace.Lobby.Error.ClickDetector)
  	end    
})
Tab:AddToggle({
	Name = "Anti brazil portal (On is off, Off is on)",
	Default = true,
	Callback = function(Value)
		game.Workspace.Lobby.brazil.portal.CanTouch = Value
	end    
})
Tab:AddButton({
	Name = "Kick Player (Equip za hando)",
	Callback = function()
      		game:GetService("ReplicatedStorage").Erase:FireServer()
                wait(0.47)
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(1022,213.8,1498)
                game.Workspace.Lobby.brazil.portal.CanTouch = false
  	end    
})
