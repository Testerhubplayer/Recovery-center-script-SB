if game.PlaceId == 9431156611 then
local bypass;
    bypass = hookmetamethod(game, "__namecall", function(method, ...) 
        if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.Ban then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.AdminGUI then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.WS then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.WS2 then
            return
        end
        return bypass(method, ...)
    end)

local AntiLava = Instance.new("Part", workspace)
AntiLava.Name = "AntiLava"
AntiLava.Position = Vector3.new(-238, -43, 401)
AntiLava.Size = Vector3.new(150,30,150)
AntiLava.Anchored = true
AntiLava.Transparency = 1
AntiLava.CanCollide = false

local AntiAcid = Instance.new("Part", workspace)
AntiAcid.Position = Vector3.new(-70, -20, -725)
AntiAcid.Name = "AntiAcid"
AntiAcid.Size = Vector3.new(155, 35, 144)
AntiAcid.Anchored = true
AntiAcid.Transparency = 1
AntiLava.CanCollide = false

local sex = loadstring(game:HttpGet('https://raw.githubusercontent.com/CludeHub/CludeHub/main/CludeHub'))()

local Window = sex:Create('Slap Royale','Slap Battle','Creator')

local ExampleTab1 = Window:CreateTab('Combat','earth')
local ExampleTab2 = Window:CreateTab('Misc','earth')
local ExampleTab3 = Window:CreateTab('Antis','earth')

ExampleTab1:CreateToggle("Slap Aura",false,function(val)  
        slapAura = val
            if val == true then
                while slapAura do
                    task.wait(.005)  
                    pcall(function()    
                        for Index, Player in next, game.Players:GetPlayers() do
                            if Player ~= game.Players.LocalPlayer and Player.Character and Player.Character:FindFirstChild("entered") then
                                if Player.Character:FindFirstChild("Head") then
                                    if Player.Character.Head:FindFirstChild("UnoReverseCard") == nil and Player.Character:FindFirstChild("rock") == nil then
                                        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                            local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude
                                            task.wait()
                                            if 25 >= Magnitude then
                                                shared.gloveHits[getGlove()]:FireServer(Player.Character:WaitForChild("Head"))
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end 
        end
	print('toggle',val)     
end)

ExampleTab3:CreateToggle("Anti Acid",false,function(val)  
        AntiAcid.CanCollide = val
	print('toggle',val)     
end)

ExampleTab3:CreateToggle("Anti Lava",false,function(val)     
        AntiLava.CanCollide = val
	print('toggle',val)     
end)

ExampleTab1:CreateToggle("Glove ESP",false,function(val)     
            GloveESP = val
if GloveESP == false then
for i, v in ipairs(game.Players:GetChildren()) do
                if v.Character and v.Character:FindFirstChild("Head") and v.Character.Head:FindFirstChild("GloveEsp") then
 v.Character.Head.GloveEsp:Destroy()
                end
            end
end
while GloveESP do
for i, v in ipairs(game.Players:GetChildren()) do
                if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.Character.inMatch.Value == true and v.Character.Head:FindFirstChild("GloveEsp") == nil then
GloveEsp = Instance.new("BillboardGui", v.Character.Head)
GloveEsp.Adornee = v.Character.Head
GloveEsp.Name = "GloveEsp"
GloveEsp.Size = UDim2.new(0, 100, 0, 150)
GloveEsp.StudsOffset = Vector3.new(0, 1, 0)
GloveEsp.AlwaysOnTop = true
GloveEsp.StudsOffset = Vector3.new(0, 3, 0)
GloveEspText = Instance.new("TextLabel", GloveEsp)
GloveEspText.BackgroundTransparency = 1
GloveEspText.Size = UDim2.new(0, 100, 0, 100)
GloveEspText.TextSize = 24
GloveEspText.Font = Enum.Font.SourceSansSemibold
GloveEspText.TextColor3 = Color3.new(255, 255, 255)
GloveEspText.TextStrokeTransparency = 0
GloveEspText.Text = v.Glove.Value
                end
            end
task.wait()
            end
	print('toggle',val)     
end)

ExampleTab1:CreateToggle("Remove zone",false,function(val)     
            RemoveZone = val
game.Players.LocalPlayer.Character:WaitForChild("inZone").Changed:Connect(function()
if RemoveZone then
game.Players.LocalPlayer.Character:WaitForChild("inZone").Value = false
end
end)
	print('toggle',val)     
end)

ExampleTab2:CreateButton("Bomb Bus",function()	
            repeat task.wait()
until game.Players.LocalPlayer.Backpack:FindFirstChild("Bomb")
            for i, v in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "Bomb" then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    v:Activate()
                end
            end
 print('press button')    
end)

ExampleTab2:CreateButton("Leave Bus",function()	 
            game:GetService("ReplicatedStorage").Events.BusJumping:FireServer()
repeat task.wait()
until game.Players.LocalPlayer.PlayerGui:FindFirstChild("JumpPrompt")
game.Players.LocalPlayer.PlayerGui.JumpPrompt:Destroy()
 print('press button')    
end)

ExampleTab1:CreateButton("Get 250 power",function()	 
            for i = 1, 2 do
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["True Power"])
game.Players.LocalPlayer.Character["True Power"]:Activate()
            end
 print('press button')    
end)

ExampleTab2:CreateButton("Use permanent item",function()	
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.Name == "Bull's essence" or v.Name == "Potion of Strength" or v.Name == "Boba" or v.Name == "Speed Potion" or v.Name == "Frog Potion" or v.Name == "Strength Brew" or v.Name == "Frog Brew" or v.Name == "Speed Brew" then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                        v:Activate()
                    end
            end
 print('press button')    
end)
end
local sex = loadstring(game:HttpGet('https://raw.githubusercontent.com/CludeHub/CludeHub/main/CludeHub'))()

local Window = sex:Create('Slap Battle','Slap Battle','Creator')

local ExampleTab1 = Window:CreateTab('Combat','earth')
local ExampleTab2 = Window:CreateTab('misc','earth')
local ExampleTab3 = Window:CreateTab('Antis','earth')
local ExampleTab4 = Window:CreateTab('Player','earth')

ExampleTab2:CreateToggle("Slapple Farm",false,function(val)   
        slappleFarm = val
            if val == true then
                while slappleFarm do
                    wait(.001)
                    for Index, Instance in next, workspace.Arena.island5.Slapples:GetDescendants() do
                        if Instance.ClassName == "TouchTransmitter" then
                            firetouchinterest(game.Players.LocalPlayer.Character.Head, Instance.Parent, 0)
                            firetouchinterest(game.Players.LocalPlayer.Character.Head, Instance.Parent, 1)
                        end
                    end
                end
        end
	print('toggle',val)     
end)

ExampleTab2:CreateToggle("fish farm",false,function(val)     
        fishFarm = val
            if val == true then 
                if game.Players.LocalPlayer.Character:FindFirstChild("entered") and getGlove() == "ZZZZZZZ" then            
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Bed [ OvErCrInGe02#0658 ] "].Bed3.CFrame * CFrame.new(0,0,-1)
                    task.wait(.5)
                    game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
                else
                    print("FAILED TO TELEPORT TO SAFE SPOT PLEASE DO IT MANUALLY")
                end
                task.wait()
        
                while fishFarm and task.wait() do
                    if getGlove() == "ZZZZZZZ" and workspace:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild("entered") then
                        if workspace:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild("Ragdolled").Value then
                            task.wait(1)
                            Time += 1
                            print("You Have Been Asleep For: " .. Time .. " Seconds. You Have: " .. (3600 - Time) .. " Seconds Left")
                        else
                            Time = 0
                        end
                    end
                end
            else
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
	print('toggle',val)     
end)

ExampleTab2:CreateLabel(" ")

ExampleTab2:CreateButton("Get Tycoon",function()	
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2129212145) then
            if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then    
                repeat task.wait(.5)   
                    firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)          
                until game.Players.LocalPlayer.Character:FindFirstChild("entered") 
            end
            task.wait()
            repeat task.wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.Plate.CFrame * CFrame.new(0,-2,0)   
            until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2129212145) 
            -----------------------------------------------------------------------------------------------------------------------
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.Plate.CFrame * CFrame.new(0,2,0)
        end
 print('press button')    
end)

ExampleTab1:CreateToggle("infinite Reverse",false,function(val)    
        autoReverse = val
            if val == true then
                while autoReverse and task.wait() do
                    local Character = workspace:WaitForChild(game.Players.LocalPlayer.Name)
                    if getGlove() == "Reverse" and Character:FindFirstChild("entered") then
                        task.wait(5.7)
                        game:GetService("ReplicatedStorage"):WaitForChild("ReverseAbility"):FireServer()
                    end
                end
        end
	print('toggle',val)     
end)

ExampleTab1:CreateToggle("universal slap farm",false,function(val)     
        allFarming = val
            if val == true then
                setfpscap(50)
                workspace.DEATHBARRIER.CanTouch = false
                workspace.DEATHBARRIER2.CanTouch = false
                workspace.dedBarrier.CanTouch = false
            
                while allFarming and task.wait() do
                    pcall(function()
                        for Index, Human in next, game.Players:GetPlayers() do
                            if Human ~= game.Players.LocalPlayer and Human.Character and not Human.Character:FindFirstChild("isParticipating") and Human.Character:FindFirstChild("Torso") and Human.Character:FindFirstChild("Head") and Human.Character:FindFirstChild("entered") and Human.Character.Head:FindFirstChild("UnoReverseCard") == nil and Human.Character:FindFirstChild("rock") == nil and Human.Character.Ragdolled.Value == false then
                                if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then                             
                                    task.wait(.1)
                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = Human.Character:FindFirstChild("Right Leg").CFrame * CFrame.new(6,-5,6)   
                                    task.wait()   
                                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand = true
                                    wait(.25)
                                    shared.gloveHits[getGlove()]:FireServer(Human.Character:FindFirstChild("Torso"))
                                    wait(.25)
                                end
                            end
                        end
                    end) 
                end
            else
                setfpscap(1269)
                workspace.DEATHBARRIER.CanTouch = true
                workspace.DEATHBARRIER2.CanTouch = true
                workspace.dedBarrier.CanTouch = true
                -------------------------------------------------------------------------
                if game.Players.LocalPlayer.Character.Humanoid.PlatformStand == true then
                    task.wait(3)
                    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                end
        end
	print('toggle',val)     
end)

ExampleTab1:CreateToggle("Rhythm Spam",false,function(val)  
        spamExplode = val
            if spamExplode then
                while spamExplode and task.wait(.01) do
                    game:GetService("ReplicatedStorage"):WaitForChild("rhythmevent"):FireServer("AoeExplosion", 86)
                end
        end
	print('toggle',val)     
end)

ExampleTab1:CreateToggle("null spam",false,function(val)     
        nullSpam = val
        while nullSpam do
            game:GetService("ReplicatedStorage").NullAbility:FireServer()
        task.wait()
        end
	print('toggle',val)     
end)

ExampleTab1:CreateToggle("Slap Aura",false,function(val)   
        slapAura = val
            if val == true then
                while slapAura do
                    task.wait(.005)  
                    pcall(function()    
                        for Index, Player in next, game.Players:GetPlayers() do
                            if Player ~= game.Players.LocalPlayer and Player.Character and Player.Character:FindFirstChild("entered") then
                                if Player.Character:FindFirstChild("Head") then
                                    if Player.Character.Head:FindFirstChild("UnoReverseCard") == nil and Player.Character:FindFirstChild("rock") == nil then
                                        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                            local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude
                                            task.wait()
                                            if 25 >= Magnitude then
                                                shared.gloveHits[getGlove()]:FireServer(Player.Character:WaitForChild("Head"))
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end 
        end
	print('toggle',val)     
end)

ExampleTab3:CreateToggle("Anti Ragdoll",false,function(val)     
        antiRagdoll = val
            if val == true then
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                task.wait()
                game.Players.LocalPlayer.CharacterAdded:Connect(function(Character)
                    task.wait()
                    Character:WaitForChild("Ragdolled").Changed:Connect(function()
                        if Character:WaitForChild("Ragdolled").Value == true and antiRagdoll == true then
                            repeat task.wait()
                                Character.Torso.Anchored = true
                            until Character:FindFirstChild("Torso") == nil or Character:WaitForChild("Ragdolled").Value == false
                            ----------------------------------------------------------------------------------------------------
                            Character.Torso.Anchored = false
                        end
                    end)
                end)
        end
	print('toggle',val)     
end)

ExampleTab3:CreateToggle("Anti Admin",false,function(val)    
        antiAdmins = val
            if val == true then
                game.Players.PlayerAdded:Connect(function(Plr)
                    if Plr:GetRankInGroup(9950771) and 7 <= Plr:GetRankInGroup(9950771) and antiAdmins then
                        game.Players.LocalPlayer:Kick("Admin Detected 🔥")
                    end
                end)
        end
	print('toggle',val)     
end)

ExampleTab3:CreateToggle("Anti Hallow Jack",false,function(val)  
        antiHallow = val
            if val == true then
                game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = true
            else
                game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Enabled = true
        end
	print('toggle',val)     
end)

ExampleTab3:CreateToggle("Anti Zando",false,function(val)    
        antiZH = val
            if val == true then
                while antiZH do
                    wait(.001)
                    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v:IsA("Part") and v.Name == "Part" then
                            v:Destroy()
                        end 
                    end 
                end
        end
	print('toggle',val)     
end)

ExampleTab3:CreateToggle("Anti Reaper",false,function(val)     
        antiReaper = val
            if val == true then
                while antiReaper do
                    wait(.001)
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.Name == "DeathMark" then
                            game:GetService("ReplicatedStorage").ReaperGone:FireServer(game:GetService("Players").LocalPlayer.Character.DeathMark)
                            game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy()
                        end 
                    end
                end
        end
	print('toggle',val)     
end)

ExampleTab3:CreateToggle("Anti Pusher",false,function(val)    
        antiPusher = val
            if val == true then
                while antiPusher do
                    wait(.001)
                    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == "wall" then
                            v.CanCollide = false
                        end
                    end
                end
        end
	print('toggle',val)     
end)

ExampleTab3:CreateToggle("Anti Booster",false,function(val)    
        antiBooster = val
            if val == true then
                if game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChild("BoosterObject", 1) then
                    game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChild("BoosterObject", 1):Destroy()
                end
                task.wait()
                game.Workspace[game.Players.LocalPlayer.Name].DescendantAdded:Connect(function(v)
                    if antiBooster == true then
                        if v.Name == "BoosterObject" then
                            task.wait(.1)
                            v:Destroy()

                        end
                    end
                end)
        end
	print('toggle',val)     
end)

ExampleTab3:CreateToggle("Anti Squid",false,function(val)    
        AntiSquid = val
            if val == true then
                while AntiSquid do
                    task.wait()
                    for i,v in pairs(game.Players.LocalPlayer.PlayerGui.SquidInk:GetChildren()) do
                        if v.Parent then
                            v:Destroy()
                        end
                    end
                 end
        end
	print('toggle',val)     
end)

ExampleTab3:CreateToggle("Anti Mail",false,function(val)
        antiMail = val
            if val == true then
                game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(UI)
                    if antiMail == true then
                        if UI.Name == "MailPopup" then
                            UI.Frame.Visible = false
                            task.wait()
                            game.Players.LocalPlayer.Character.Head.MailIcon:Destroy()
                        end
                    end
                end)
            else
                if game.Players.LocalPlayer.PlayerGui:FindFirstChild("MailPopup") then
                    game.Players.LocalPlayer.PlayerGui.MailPopup.Frame.Visible = true
                    task.wait()
                end
        end
	print('toggle',val)     
end)

ExampleTab3:CreateToggle("Anti Stun",false,function(val)   
        antiStun = val
            if val == true then
                while antiStun do
                    task.wait()
                    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.PlatformStand == true and not Farming and not allFarming and not game.Players.LocalPlayer.Character.Ragdolled.Value == true and game.Workspace:FindFirstChild("Shockwave") then
                        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                    end
            end
        end
	print('toggle',val)     
end)

ExampleTab1:CreateToggle("Auto Enter Arena",false,function(val)    
        autoJoin = val
            if val == true then
                while autoJoin do
                    wait()
                    repeat task.wait() until game.Players.LocalPlayer.Character
                    if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        repeat task.wait(.005)
                            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
                            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
                        until game.Players.LocalPlayer.Character:FindFirstChild("entered")
                    end
                end
        end
	print('toggle',val)     
end)

ExampleTab3:CreateToggle("Anti Cube of death",false,function(val)     
        if val == true then
            if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
                workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
            end
        else 
            if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then  
                workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
            end
        end
	print('toggle',val)     
end)

ExampleTab2:CreateToggle("Auto Remove Name",false,function(val)     
        Auto_Remove = val
            if val == true then
                game.Players.LocalPlayer.Character:FindFirstChild("Head").Nametag.TextLabel:Destroy()
                task.wait()
                game.Players.LocalPlayer.CharacterAdded:Connect(function()
                    if Auto_Remove == true then
                        repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Head")
                        game.Players.LocalPlayer.Character:FindFirstChild("Head").Nametag.TextLabel:Destroy()
                    end
                end)
        end
	print('toggle',val)     
end)

ExampleTab3:CreateToggle("Anti Void",false,function(val)     
        if noVoid == true then
            for i,v in pairs(game.Workspace:GetDescendants()) do
                if v.Name == "dedBarrier"  or v.Name == "ArenaBarrier" or v.Name == "DEATHBARRIER" or v.Name == "DEATHBARRIER2" then               
                    v.CanCollide = true
                    v.Material = "ForceField"
                    v.Color = Color3.new(255,255,255)
                    v.Transparency = .9
                end  
            end 
        else
            for i,v in pairs(game.Workspace:GetDescendants()) do
                if v.Name == "dedBarrier"  or v.Name == "ArenaBarrier" or v.Name == "DEATHBARRIER" or v.Name == "DEATHBARRIER2" then               
                    v.CanCollide = false
                    v.Transparency = 1
                end  
            end
        end
	print('toggle',val)     
end)

ExampleTab2:CreateToggle("Spam Error Sound",false,function(val) 
        errorSpam = val
            if val == true then
                while errorSpam do
                    task.wait()
                    game.ReplicatedStorage.ErrorDeath:FireServer()
                end
        end
	print('toggle',val)     
end)

ExampleTab1:CreateToggle("Invisible Reverse",false,function(val)     
        Invis_Reverse = val
            if val == true then
                while Invis_Reverse do
                    repeat wait(.005) until game.Players.LocalPlayer.Character:FindFirstChild("SelectionBox", 1) and game.Players.LocalPlayer.Character:FindFirstChild("Head"):FindFirstChild("UnoReverseCard")
                    game.Players.LocalPlayer.Character.Head["UnoReverseCard"]:Destroy()
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v.Name == "SelectionBox" then
                            v:Destroy()
                        end
                    end
                end
        end
	print('toggle',val)     
end)

ExampleTab2:CreateToggle("Spam Thanos sound",false,function(val)     
        autoThanos = val
            if val == true then
                while autoThanos do
                    task.wait()
                    if getGlove() == "Thanos" then
                        task.wait()
                        game.ReplicatedStorage.Illbeback:FireServer()
                    end
                end
        end
	print('toggle',val)     
end)

ExampleTab2:CreateToggle("Spam Space Sound",false,function(val)   
        spamSpace = val
            if val == true then
                while spamSpace do
                    task.wait()
                        if getGlove() == "Space" then
                            game.ReplicatedStorage["ZeroGSound"]:FireServer()
                            game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
                        end
                end
            else
                for x = 1,5 do
                    task.wait()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
                end
        end
	print('toggle',val)     
end)

ExampleTab4:CreateSlider("Set Speed",1,100,10,function(val)    
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
	print('slider',val)     
end)

ExampleTab4:CreateSlider("Set Jump Power",1,100,10,function(val)     
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = val
	print('slider',val)     
end)

ExampleTab4:CreateSlider("Set Gravity",1,100,10,function(val)    
        if val == "" then   
	val = "200"   
	else  
	game.Workspace.Gravity = val  
	end 
	print('slider',val)     
end)
