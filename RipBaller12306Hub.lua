local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local win = Flux:Window("awesome script", "Slap battles", Color3.fromRGB(0, 255, 0), Enum.KeyCode.LeftControl)
local tab = win:Tab("Main", "http://www.roblox.com/asset/?id=6023426915")
tab:Button("Revive character", "Not works", function()
Flux:Notification("It not works now!", "Ok")
end)
tab:Button("Say slap battles is cool", "Says slap battles is cool", function()
            if game.ReplicatedStorage.DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest") then
              game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Slap battles is cool", "All")
            end
end)
tab:Line()
tab:Slider("Walkspeed", "Makes your faster.", 20, 50, 20,function(t)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
end)
tab:Colorpicker("Body color", Color3.fromRGB(255,255,255), function(t)
game.Players.LocalPlayer.Character.Head.Color = t
game.Players.LocalPlayer.Character.Torso.Color = t
game.Players.LocalPlayer.Character["Left Arm"].Color = t
game.Players.LocalPlayer.Character["Left Leg"].Color = t
game.Players.LocalPlayer.Character["Right Arm"].Color = t
game.Players.LocalPlayer.Character["Right Leg"].Color = t
end)
tab:Textbox("Notes", "You can see your notes by pressing F9.", true, function(t)
print(t)
end)
tab:Button("Rhythm explosion", "Spawns Rhythm explosion", function()
game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion",0)
end)
tab:Button("Esp", "You cant turn it off", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PopCat0881/PopCat0881/main/Esp.lua"))()
end)
