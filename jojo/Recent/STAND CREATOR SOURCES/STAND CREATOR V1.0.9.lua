--[[ For any template shares, Please make sure to include a list of the abilities inside the template as follows :

]]--
getgenv().Settings = {
    ['Made By JoJo#2494'] = {
        OWNER = "angelsekittenuwuomg", --/ Stand owner username.
        STANDS = {"JudyCox6", "STAND2USERNAMEHERE"}, --/ List of your stand accounts (if you have more than one you can add more usernames to the table).
        FPS = 60, --/ Will control FPS can improve the overall performance on both instances when set to lower.
        PERFORMANCE = false, --/ If set to true it'll significantly improve your overall FPS if you're struggling with performance.
        NOCLIP = {SynapseX = false, Offset = -3.05}, --/ Offset will control the height of normal noclip (keep unchanged unless you're using titan with a big character / SynapseX option).
        FACELESS = true, --/ If you want to remove your face.
        TRAILS = true, --/ If you want to remove the white trail when charge attacking.
        LEGS = false, --/ If set to true it'll remove your legs.
        ANTIFLING = true, --/ If set to true you can't get flinged nor can you fling anyone.
        TELEPORTMAIN = true, --/ Teleports to the stand user
        RANGE = 50, --/ Controls the melee reach range (50 is max).
        TITAN = {ENABLED = true, DEFAULT = false, TALL = false, WIDE = true, GODV3 = false}, --/ If enabled you will become a titan stand, if you enable god you need to execute before load for it to work (also can be used with titan disabled).
        FOLLOWANIM = {true, ID = 3541044388, SPEED = 0.25}, --/ If set to true will play the desired animation when moving (Default animation is heavily advised), SPEED will control the speed (Recommended is 0.25).
        AUTOPICKUPCASH = true, --/ If set to true will automatically pick up cash when you're near it & should not be used if your dropping cash.
        ANTIBAN = true, --/ If set to true the stand will be automatically kicked from the server, in-case da hood staff is detected on the same server.
    }
}

--//------------------------------------------------------------------------------------------\\-- 
if not game['Loaded'] or not game:GetService("Players").LocalPlayer then 
    game['Loaded']:Wait();
    game:WaitForChild(game:GetService('Players'));
    game:GetService('Players'):WaitForChild(game:GetService("Players").LocalPlayer.Name)
end
--//------------------------------------------------------------------------------------------\\--
for i,v in pairs(Settings['Made By JoJo#2494'].STANDS) do 
if game:GetService("Players").LocalPlayer.Name == v then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JOJOGIO/STAND-FRAMEWORK/main/1.0.9"))()
    STAND = game:GetService("Players"):FindFirstChild(tostring(v))
    OWNER = game:GetService("Players"):WaitForChild(Settings['Made By JoJo#2494'].OWNER)
    rs = game:GetService("RunService") 
--//------------------------------------------------------------------------------------------\\--
    assert(getrawmetatable)
    gmt = getrawmetatable(game)
    setreadonly(gmt, false)
    old = gmt.__namecall
    gmt.__namecall =
    newcclosure(
    function(self, ...)
    local args = {...}
    if tostring(self) == "RemoteFunction" then return end
    if tostring(self) == "MainEvent" then
    if tostring(args[1]) == "DropMoney" or tostring(args[1]) == "TimerDecrease" or  tostring(args[1]) == "Grabbing" or tostring(args[1]) == "Block" or tostring(args[1]) == "Stomp" or tostring(args[1]) == "JoinCrew" or tostring(args[1]) == "PhoneCall" or tostring(args[1]) == "Boombox" or tostring(args[1]) == "BoomboxStop" or tostring(args[1]) == "EnterPromoCode" or tostring(args[1]) == "PurchaseSkinCrate" or tostring(args[1]) == "TimerMoney" or tostring(args[1]) == "Reload" or tostring(args[1]) == "UpdateMousePos" or tostring(args[1]) == "LeaveCrew" or tostring(args[1]) == "FireworkText" then
    else 
    return
    end 
    end
    return old(self, ...)
    end)
--//------------------------------------------------------------------------------------------\\--
    game:GetService("Players").PlayerAdded:Connect(function(Player)
        if Player:WaitForChild("Name") == Settings['Made By JoJo#2494'].OWNER then
            OWNER = Player
        end
        if Settings['Made By JoJo#2494'].ANTIBAN then
            if Player:WaitForChild("Backpack"):FindFirstChild("AdminBan") then
                STAND:Kick("Stand Creator: Staff has joined the server.")
            end
        end
    end)
--//------------------------------------------------------------------------------------------\\--
    if Settings['Made By JoJo#2494'].ANTIBAN then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v and v:WaitForChild("Backpack"):FindFirstChild("AdminBan") then
                STAND:Kick("Stand Creator: Staff was in the server.")
            end
        end
    end
--//------------------------------------------------------------------------------------------\\--
    function Notify(title,text)
      game:GetService("StarterGui"):SetCore("SendNotification",  {
            Title = title;
            Text = text;
            Duration = 3;
            Button1 = "";
            Callback = NotificationBindable;
        })
    end
--//------------------------------------------------------------------------------------------\\-
    if tonumber(Settings['Made By JoJo#2494'].FPS) then
        setfpscap(Settings['Made By JoJo#2494'].FPS)
    end
--//------------------------------------------------------------------------------------------\\-
    if Settings['Made By JoJo#2494'].PERFORMANCE then
     game:GetService("RunService"):Set3dRenderingEnabled(false)
     local g = game
     local w = g.Workspace
     local l = g:GetService"Lighting"
     local t = w:WaitForChild"Terrain"
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 1
    l.GlobalShadows = false
        for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v.ClassName == "Part"
            or v.ClassName == "SpawnLocation"
            or v.ClassName == "WedgePart"
            or v.ClassName == "Terrain"
            or v.ClassName == "MeshPart" then
            v.BrickColor = BrickColor.new(155, 155, 155)
            v.Material = "Plastic"
            end
            if v.ClassName == "Decal" or v.ClassName == "Texture"  then
                v:Destroy()
            end
        end
    end
--//------------------------------------------------------------------------------------------\\-
settings().Physics.PhysicsEnvironmentalThrottle = 1
settings().Rendering.QualityLevel = "Level01"
UserSettings():GetService("UserGameSettings").MasterVolume = 0 
--//------------------------------------------------------------------------------------------\\-
local function x()  
    Stand = {
        Action = "",
        Target = ""
    }
STAND = game:GetService("Players"):FindFirstChild(tostring(v))
OWNER = game:GetService("Players"):WaitForChild(Settings['Made By JoJo#2494'].OWNER)
rs = game:GetService("RunService") 
repeat rs.Stepped:Wait() until STAND.Character:FindFirstChild("ForceField") or STAND.Character:FindFirstChild("ForceField_TESTING")
STAND.Character:WaitForChild("Humanoid")
STAND.Character:WaitForChild("Head")
STAND.Character:WaitForChild("BodyEffects")
--//------------------------------------------------------------------------------------------\\-
if Settings['Made By JoJo#2494'].TITAN.GODV3 then
    pcall(function()
    game:GetService("StarterPlayer").StarterCharacterScripts["CheckingKOED                                                                   ."]:Destroy()
    for i,v in pairs(STAND.Character:GetChildren()) do
       if v.ClassName == 'Script' then
            v:Destroy()
          end
        end
    end)
end
--//------------------------------------------------------------------------------------------\\-
  if Settings['Made By JoJo#2494'].TITAN.ENABLED then
	coroutine.wrap(function()
	repeat wait() until STAND.Backpack:FindFirstChild("Mask")
		coroutine.wrap(function()
			STAND.Character:WaitForChild("BodyEffects"):WaitForChild("Defense"):WaitForChild('CurrentTimeBlock'):Destroy()
		end)()
		local function rm()
			for i, v in pairs(STAND.Character:GetDescendants()) do
					if v.Name == "OriginalPosition" then
						v:Destroy()
					elseif v.Name == "OriginalSize" then
						v:Destroy()
					elseif v.Name == "AvatarPartScaleType" then
						v:Destroy()
					end
				end
			end	
			tall = false
			wide = false
			default = false
			if Settings['Made By JoJo#2494'].TITAN.TALL and wide == false and default == false then
				tall = true
				if STAND.Character.Humanoid:FindFirstChild("HeadScale") then
					rm()
					wait(0.6)
					STAND.Character.Humanoid:FindFirstChild("HeadScale"):Destroy()
					wait(0.6)
				end
				if STAND.Character.Humanoid:FindFirstChild("BodyWidthScale") then
					rm()
					wait(0.6)
					STAND.Character.Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
					wait(0.6)
				end
				if STAND.Character.Humanoid:FindFirstChild("BodyDepthScale") then
					rm()
					wait(0.6)
					STAND.Character.Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
					wait(0.6)
				end
				if STAND.Character.Humanoid:FindFirstChild("BodyTypeScale") then
					rm()
					wait(0.6)
					STAND.Character.Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
					wait(0.6)
				end
			end
			if Settings['Made By JoJo#2494'].TITAN.WIDE and tall == false and default == false then
				wide = true
				if STAND.Character.Humanoid:FindFirstChild("HeadScale") then
					rm()
					wait(0.6)
					STAND.Character.Humanoid:FindFirstChild("HeadScale"):Destroy()
					wait(0.6)
				end
				if STAND.Character.Humanoid:FindFirstChild("BodyDepthScale") then
					rm()
					wait(0.6)
					STAND.Character.Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
					wait(0.6)
				end
			end
			if Settings['Made By JoJo#2494'].TITAN.DEFAULT and tall == false and wide == false then
				default = true
				if STAND.Character.Humanoid:FindFirstChild("HeadScale") then
					rm()
					wait(0.6)
					STAND.Character.Humanoid:FindFirstChild("HeadScale"):Destroy()
					wait(0.6)
				end
				if STAND.Character.Humanoid:FindFirstChild("BodyWidthScale") then
					rm()
					wait(0.6)
					STAND.Character.Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
					wait(0.6)
				end
				if STAND.Character.Humanoid:FindFirstChild("BodyDepthScale") then
					rm()
					wait(0.6)
					STAND.Character.Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
					wait(0.6)
				end
			end
        end)()
      else
        local newCharacter =  game:GetService("Workspace"):WaitForChild(STAND.Name)
        local spoofFolder = Instance.new('Folder');
        spoofFolder.Name = 'FULLY_LOADED_CHAR';
        spoofFolder.Parent = newCharacter;
        newCharacter:WaitForChild('RagdollConstraints'):Destroy();
        local spoofValue = Instance.new('BoolValue', newCharacter);
        spoofValue.Name = 'RagdollConstraints';           
        STAND.Character:WaitForChild("BodyEffects").Defense:Destroy()
        Defense = Instance.new("IntValue", STAND.Character.BodyEffects) 
        Defense.Name = "Defense"
        Defense.Value = 101
        STAND.Character.BodyEffects.Armor:Destroy()
        local Clone1 = Instance.new("IntValue")
        Clone1.Name = "Armor"
        Clone1.Value = 101
        Clone1.Parent = STAND.Character.BodyEffects 
    end
--//------------------------------------------------------------------------------------------\\--
    if Settings['Made By JoJo#2494'].FACELESS then
    for i,f in pairs(STAND.Character:FindFirstChild("Head"):GetChildren()) do
        if f:IsA("Decal") and f.Name == "face" then
            f.Parent = nil
            end
        end
    end           
--//------------------------------------------------------------------------------------------\\--
    STAND.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
    STAND.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    STAND.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
    STAND.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
    STAND.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
    STAND.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
    STAND.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    STAND.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
    STAND.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
    STAND.Character:FindFirstChild("Animate"):Destroy()
    if Settings['Made By JoJo#2494'].LEGS then
		STAND.Character.RightUpperLeg:Destroy()
		STAND.Character.LeftUpperLeg:Destroy()
    end
--//------------------------------------------------------------------------------------------\\--
if Settings['Made By JoJo#2494'].TRAILS then
    coroutine.wrap(function()
        STAND.Character.Humanoid:WaitForChild("TrailEffects"):Destroy()
    end)()
end
--//------------------------------------------------------------------------------------------\\--
repeat
    rs.Stepped:Wait()
    STAND.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].Head.Position)
    fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].ClickDetector)
until STAND.Backpack:FindFirstChild("Mask")
--//------------------------------------------------------------------------------------------\\-- 
if Settings['Made By JoJo#2494'].TELEPORTMAIN then
    pcall(function()
        STAND.Character:WaitForChild('HumanoidRootPart').CFrame = OWNER.Character:WaitForChild('HumanoidRootPart').CFrame * CFrame.new(0,0,math.random(2,4))
    end)
else
    STAND.Character.HumanoidRootPart.CFrame = STAND.Character.HumanoidRootPart.CFrame*CFrame.new(0,3,0)
end
--//------------------------------------------------------------------------------------------\\--
mask = STAND.Backpack:FindFirstChild("Mask")
melee = STAND.Backpack:FindFirstChild("Combat")
mask.Parent = STAND.Character
mask:Activate()
mask.Parent = STAND.Backpack 
melee.Parent = STAND.Character 
STAND.Backpack:WaitForChild("Mask")
STAND.Character:WaitForChild('In-gameMask'):FindFirstChildWhichIsA("Model"):Destroy()
STAND.Character:WaitForChild('In-gameMask'):FindFirstChild('Handle'):Destroy() 
--//------------------------------------------------------------------------------------------\\-- 
function AnimPlay(ID, SPEED)
    local animation = Instance.new('Animation', game:GetService("Workspace"))
    animation.AnimationId = 'rbxassetid://'..ID
    playing = STAND.Character.Humanoid:LoadAnimation(animation)
    playing:Play() 
    if tonumber(SPEED) then
        playing:AdjustSpeed(SPEED)
    else
        playing:AdjustSpeed(1)
    end
    animation:Destroy()
end
--//------------------------------------------------------------------------------------------\\--
function AnimStop(ID, SPEED)
    for i,v in pairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
        if v.Animation.AnimationId == 'rbxassetid://'..ID then
          if tonumber(SPEED) then
                v:Stop(SPEED)
            else
                v:Stop()
            end
        end
    end
end
--//------------------------------------------------------------------------------------------\\--
AnimPlay(3541114300,1)
--//------------------------------------------------------------------------------------------\\--
if Settings['Made By JoJo#2494'].FOLLOWANIM then
    local Glide = Instance.new('Animation', game:GetService("Workspace"))
    Glide.AnimationId = 'rbxassetid://'.. tonumber(Settings['Made By JoJo#2494'].FOLLOWANIM.ID)
    Glide.Name = "Follow"
    Glide2 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Glide)
    function Moved()
        if OWNER.Character:WaitForChild("Humanoid").MoveDirection.magnitude > 0 then
          if Glide2.IsPlaying == true then
            return
          end
            Glide2:Play(tonumber(Settings['Made By JoJo#2494'].FOLLOWANIM.SPEED))
          else
            Glide2:Stop(tonumber(Settings['Made By JoJo#2494'].FOLLOWANIM.SPEED))
          end     
       end
    OWNER.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("MoveDirection"):Connect(Moved)
end
--//------------------------------------------------------------------------------------------\\--
Notify("JoJo's Stand Framework 1.0.9","Success!")
end
--//------------------------------------------------------------------------------------------\\----//------------------------------------------------------------------------------------------\\--
if not STAND.Character:FindFirstChild("ForceField_TESTING") then
repeat wait() until STAND.Character:WaitForChild("BodyEffects"):WaitForChild("K.O").Value == false
    STAND.Character.Humanoid.Health = 0
    x()
else
    x()
end
--//------------------------------------------------------------------------------------------\\--
if Settings['Made By JoJo#2494'].NOCLIP.SynapseX then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LegoHacker1337/legohacks/main/PhysicsServiceOnClient.lua"))()
    setfflag("HumanoidParallelRemoveNoPhysics", "False")
    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
    rs:BindToRenderStep("", Enum.RenderPriority.Camera.Value, function()
    STAND.Character:WaitForChild("Humanoid"):ChangeState(11)
    game:GetService("ReplicatedStorage").MainEvent:FireServer('Block', STAND.Name)
    rs.RenderStepped:Wait()
    end)
else
    noclip = Instance.new('Part', game:GetService("Workspace"))
    noclip.Name = "noclip"
    noclip.Size = Vector3.new(6,0.1,6)
    noclip.Anchored = true
    noclip.Transparency = 1
    local x = Settings['Made By JoJo#2494'].NOCLIP.Offset
    rs.Stepped:Connect(function()
    pcall(function()
        STAND.Character.Head.CanCollide = false
        STAND.Character.UpperTorso.CanCollide = false          
        STAND.Character.HumanoidRootPart.CanCollide = false
        STAND.Character.LowerTorso.CanCollide = false
        game:GetService("ReplicatedStorage").MainEvent:FireServer('Block', STAND.Name)
        noclip.CFrame = STAND.Character.HumanoidRootPart.CFrame + Vector3.new(0,x,0)
        end)
    end)     
end
--//------------------------------------------------------------------------------------------\\--
STAND.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
--//------------------------------------------------------------------------------------------\\--
rs.RenderStepped:connect(function()
  pcall(function()
    local Particle = STAND.Character.UpperTorso:FindFirstChild('ElectricuteParticle') or STAND.Character.UpperTorso:FindFirstChild('FlamethrowerFireParticle') or STAND.Character:FindFirstChild('Christmas_Sock')
        if Particle then Particle:Destroy() end
            for i,v in pairs(STAND.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v.Animation.AnimationId == 'rbxassetid://5641749824' or v.Name == 'Block' then
                v:Stop() 
            end
        end
    end)
end)
--//------------------------------------------------------------------------------------------\\--
coroutine.wrap(function()
    while true do 
    wait()
    local success, err = pcall(function()
        if STAND.Character.BodyEffects.Attacking.Value == true then
          for i,v in pairs(game:GetService('Players'):GetPlayers()) do
              if (v.Character.HumanoidRootPart.Position - STAND.Character.LeftHand.Position).Magnitude <= (Settings['Made By JoJo#2494'].RANGE) then 
                if STAND.Character:FindFirstChildOfClass("Tool") then
                    if STAND.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                        firetouchinterest(STAND.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                    else
                        firetouchinterest(STAND.Character['RightHand'], v.Character.UpperTorso, 0)
                        firetouchinterest(STAND.Character['LeftHand'], v.Character.UpperTorso, 0)
                            if Settings['Made By JoJo#2494'].LEGS == false then
                                firetouchinterest(STAND.Character['RightFoot'], v.Character.UpperTorso, 0)
                                firetouchinterest(STAND.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                firetouchinterest(STAND.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                firetouchinterest(STAND.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                end
                            end
                        end
                    end
                end
            end
        end)
     end
end)()
--//------------------------------------------------------------------------------------------\\--
STAND.CharacterAdded:Connect(function(chr) 
    x()
end)

OWNER.CharacterAdded:Connect(function(chr) 
    OWNER.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("MoveDirection"):Connect(Moved)
end)
--//------------------------------------------------------------------------------------------\\--
if Settings['Made By JoJo#2494'].ANTIFLING then
    coroutine.wrap(function()
    local Services = setmetatable({}, {__index = function(Self, Index)
    local NewService = game.GetService(game, Index)
        if NewService then
        Self[Index] = NewService
        end
        return NewService
        end})
    local function PlayerAdded(Player)
    local Detected = false
    local Character;
    local PrimaryPart;
    local function CharacterAdded(NewCharacter)
        Character = NewCharacter
        repeat
            wait()
            PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
        until PrimaryPart
        Detected = false
    end
    CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
    Player.CharacterAdded:Connect(CharacterAdded)
    Services.RunService.Heartbeat:Connect(function()
        if (Character and Character:IsDescendantOf(workspace)) and (PrimaryPart and PrimaryPart:IsDescendantOf(Character)) then
            if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
                if Detected == false then end

                    Detected = true
                for i,v in ipairs(Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                        v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                        v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                        v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
                    end
                end
                PrimaryPart.CanCollide = false
                PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
            end
        end
    end)
    end
    for i,v in ipairs(Services.Players:GetPlayers()) do
    if v ~= STAND then
        PlayerAdded(v)
    end
    end
    Services.Players.PlayerAdded:Connect(PlayerAdded)
    local LastPosition = nil
    Services.RunService.Heartbeat:Connect(function()
    pcall(function()
        local PrimaryPart = STAND.Character.PrimaryPart
            if PrimaryPart.AssemblyLinearVelocity.Magnitude > 150 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 150 then
                PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                PrimaryPart.CFrame = LastPosition
                elseif PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
                LastPosition = PrimaryPart.CFrame
                end
            end)
        end)
    end)()
end
--//------------------------------------------------------------------------------------------\\--
    Stand = {
        Action = "",
        Target = ""
    }
--//------------------------------------------------------------------------------------------\\--
    local function gplr(String)
        local strl = String:lower()
          for i,v in pairs(game:FindService("Players"):GetPlayers()) do
              if v.Name:lower():sub(1, #String) == String:lower() or v.DisplayName:lower():sub(1, #String) == String:lower() then
                  return v
              end
          end 
      end
--//------------------------------------------------------------------------------------------\\--
    function CreateKeybind(keybind, callback)
    callback = callback or function() end
      game:GetService("UserInputService").InputBegan:Connect(function(Key)
        pcall(function()
            if game:GetService("UserInputService"):GetFocusedTextBox() then return end
                if Key.KeyCode == Enum.KeyCode[keybind] then
                    pcall(callback)
                end
            end)
        end)
    end
--//------------------------------------------------------------------------------------------\\--
    function Create(command, callback)
        callback = callback or function() end
        game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(msg)
            if msg.Message:lower() == command:lower() and msg.FromSpeaker == tostring(OWNER.Name) then
                pcall(callback)
            end
        end)
    end
--//------------------------------------------------------------------------------------------\\--
	function CreateAction(action, callback)
      callback = callback or function() end
        game:GetService("RunService").Heartbeat:Connect(function()
            if Stand.Action == action then
                pcall(callback)
            end
        end)
    end
--//------------------------------------------------------------------------------------------\\--
    function CreateLoop(Name, callback)
        callback = callback or function() end
        if CreatedLoops == nil then
            CreatedLoops = {}
        end
        table.insert(CreatedLoops, Name)
        coroutine.wrap(function()
            while table.find(CreatedLoops, Name) do
                rs.Stepped:Wait()
                pcall(callback)
            end
        end)()
    end
--//------------------------------------------------------------------------------------------\\--
    function StopLoop(Name)
        for i, name in ipairs(CreatedLoops) do
            if name == Name then
                table.remove(CreatedLoops, i)
                break
            end
        end
    end
--//------------------------------------------------------------------------------------------\\--
    function CreateTargetAbility(command, callback)
        callback = callback or function() end
            game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(msg)
                if msg.FromSpeaker == tostring(OWNER.Name) then
                    local msgString = msg.Message:split(" ")
                    local cmdName = msg.Message
                    
                    if msgString[1]:lower() == command:lower()  then
                        
                        local args = {}
                
                        for i = 2, #msgString, 1 do
                            table.insert(args, msgString[i])
                        end

                        if args[1] then
                            local Target = gplr(args[1])
                        if Target then
                            Stand.Target = Target
                            pcall(callback)
                        end
                    end
                end
            end
        end)
    end
--//------------------------------------------------------------------------------------------\\--
    function Chat(msg)
        local A_1 = msg
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
    end
--//------------------------------------------------------------------------------------------\\--
    local OriginalKeyUpValue = 0
    function Stop()
        STAND.Character.LowerTorso.BOOMBOXSOUND:Stop()
    end
--//------------------------------------------------------------------------------------------\\--
    function StopAudio(ID, Key)
        local cor = coroutine.wrap(function()
            wait(STAND.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
            if STAND.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
                Stop()
            end
        end)
        cor()
    end
--//------------------------------------------------------------------------------------------\\--
function Play(ID, STOP)
    if STAND.Backpack:FindFirstChild("[Boombox]") then
        local Tool = nil
        STAND.Backpack["[Boombox]"].Parent = STAND.Character
        game:GetService("ReplicatedStorage").MainEvent:FireServer("Boombox", ID)
        STAND.Character["[Boombox]"].RequiresHandle = false
        if STAND.Character["[Boombox]"]:FindFirstChild("Handle") then
            STAND.Character["[Boombox]"].Handle:Destroy()
        end
        STAND.Character["[Boombox]"].Parent = STAND.Backpack
        STAND.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
        if Tool ~= true then
            if Tool then
                Tool.Parent = STAND.Character
            end
        end
        if STOP == true then
            STAND.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
            local cor = coroutine.wrap(function()
                repeat wait() until STAND.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and STAND.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.0001
                OriginalKeyUpValue = OriginalKeyUpValue+1
                StopAudio(ID, OriginalKeyUpValue)
            end)
            cor()
        end
    end
end
--//-----------------------------------------------------------------------------------------\\--
function Hit(Charge)
wait()
local x = STAND.Character:FindFirstChildWhichIsA("Tool")
    if Charge == false then
        x:Activate()
        x:Deactivate()
    elseif Charge == true then
        x:Activate() 
    end
end
--//-----------------------------------------------------------------------------------------\\--
  function Crew(Join,ID) 
    if not Join then
        game:GetService("ReplicatedStorage").MainEvent:FireServer("LeaveCrew")
    else
        game:GetService("ReplicatedStorage").MainEvent:FireServer("LeaveCrew")
        wait(0.5)
        game:GetService("ReplicatedStorage").MainEvent:FireServer("JoinCrew",ID)
      end
  end
--//-----------------------------------------------------------------------------------------\\--
function DropMoney(Amount)
    game:GetService("ReplicatedStorage").MainEvent:FireServer("DropMoney",Amount)
end
--//------------------------------------------------------------------------------------------\\--
function GetNearest()
    local ClosestPlayer
    local Distance = math.huge
    local ClosestDistance = math.huge
      for _,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Character and OWNER.Character then
          if v ~= OWNER and v:FindFirstChild('DataFolder') and v:FindFirstChild('DataFolder'):FindFirstChild('Information') then
            if v:FindFirstChild('DataFolder'):FindFirstChild('Information'):FindFirstChild('Crew') then
              if v.Character:FindFirstChild('HumanoidRootPart') and v.Character:FindFirstChild("BodyEffects") and v.Character.BodyEffects:FindFirstChild("Dead") and v.Character.BodyEffects:FindFirstChild("Dead").Value == false then
                if v.DataFolder.Information.Crew.Value ~= OWNER.DataFolder.Information.Crew.Value or not v.DataFolder.Information:FindFirstChild('Crew') then
                  local Distance = (v.Character.HumanoidRootPart.Position - OWNER.Character.HumanoidRootPart.Position).Magnitude
                    if Distance < ClosestDistance then
                        ClosestDistance = Distance
                        ClosestPlayer = v
                          end
                        end
                      end
                  else
                    if v.Character:FindFirstChild('HumanoidRootPart') and v.Character:FindFirstChild("BodyEffects") and v.Character.BodyEffects:FindFirstChild("Dead") and v.Character.BodyEffects:FindFirstChild("Dead").Value == false then
                      local Distance = (v.Character.HumanoidRootPart.Position - OWNER.Character.HumanoidRootPart.Position).Magnitude
                        if Distance < ClosestDistance then
                          ClosestDistance = Distance
                          ClosestPlayer = v
                        end
                      end
                    end
                  end
                end
              end
    return ClosestPlayer
  end
--//------------------------------------------------------------------------------------------\\--
Buy = {
    Knife = function()
        if STAND.Character:FindFirstChildWhichIsA("Tool") then
            STAND.Character:FindFirstChildWhichIsA("Tool").Parent = STAND.Backpack
          end
            local a = Stand.Action
            local b = Stand.Target
            local function c()
                Stand = {
                Action = a,
                Target = b
               }
             end
            Stand = {
            Action = "",
            Target = ""
            }
            repeat
                rs.Stepped:Wait()
                STAND.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["[Knife] - $150"].Head.Position)
                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Knife] - $150"].ClickDetector)
              until STAND.Backpack:FindFirstChild("[Knife]")
              c()
              STAND.Backpack:FindFirstChild("[Knife]").Parent = STAND.Character
           end,

    Bat = function()
        if STAND.Character:FindFirstChildWhichIsA("Tool") then
            STAND.Character:FindFirstChildWhichIsA("Tool").Parent = STAND.Backpack
          end
            local a = Stand.Action
            local b = Stand.Target
            local function c()
                Stand = {
                Action = a,
                Target = b
               }
             end
            Stand = {
            Action = "",
            Target = ""
            }
            repeat
                rs.Stepped:Wait()
                STAND.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["[Bat] - $250"].Head.Position)
                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Bat] - $250"].ClickDetector)
              until STAND.Backpack:FindFirstChild("[Bat]")
              c()
              STAND.Backpack:FindFirstChild("[Bat]").Parent = STAND.Character
           end,

    StopSign = function()
        if STAND.Character:FindFirstChildWhichIsA("Tool") then
            STAND.Character:FindFirstChildWhichIsA("Tool").Parent = STAND.Backpack
          end
            local a = Stand.Action
            local b = Stand.Target
            local function c()
                Stand = {
                Action = a,
                Target = b
               }
             end
            Stand = {
            Action = "",
            Target = ""
            }
            repeat
                rs.Stepped:Wait()
                STAND.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["[StopSign] - $300"].Head.Position)
                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[StopSign] - $300"].ClickDetector)
              until STAND.Backpack:FindFirstChild("[StopSign]")
              c()
              STAND.Backpack:FindFirstChild("[StopSign]").Parent = STAND.Character
           end,

    Shovel = function()
        if STAND.Character:FindFirstChildWhichIsA("Tool") then
            STAND.Character:FindFirstChildWhichIsA("Tool").Parent = STAND.Backpack
          end
            local a = Stand.Action
            local b = Stand.Target
            local function c()
                Stand = {
                Action = a,
                Target = b
               }
             end
            Stand = {
            Action = "",
            Target = ""
            }
            repeat
                rs.Stepped:Wait()
                STAND.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["[Shovel] - $320"].Head.Position)
                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Shovel] - $320"].ClickDetector)
              until STAND.Backpack:FindFirstChild("[Shovel]")
              c()
              STAND.Backpack:FindFirstChild("[Shovel]").Parent = STAND.Character
           end,

    Pencil = function()
        if STAND.Character:FindFirstChildWhichIsA("Tool") then
            STAND.Character:FindFirstChildWhichIsA("Tool").Parent = STAND.Backpack
          end
            local a = Stand.Action
            local b = Stand.Target
            local function c()
                Stand = {
                Action = a,
                Target = b
               }
             end
            Stand = {
            Action = "",
            Target = ""
            }
            repeat
                rs.Stepped:Wait()
                STAND.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["[Pencil] - $175"].Head.Position)
                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Pencil] - $175"].ClickDetector)
              until STAND.Backpack:FindFirstChild("[Pencil]")
              c()
              STAND.Backpack:FindFirstChild("[Pencil]").Parent = STAND.Character
           end,

    Nunchucks = function()
        if STAND.Character:FindFirstChildWhichIsA("Tool") then
            STAND.Character:FindFirstChildWhichIsA("Tool").Parent = STAND.Backpack
          end
            local a = Stand.Action
            local b = Stand.Target
            local function c()
                Stand = {
                Action = a,
                Target = b
               }
             end
            Stand = {
            Action = "",
            Target = ""
            }
            repeat
                rs.Stepped:Wait()
                STAND.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["[Nunchucks] - $450"].Head.Position)
                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Nunchucks] - $450"].ClickDetector)
              until STAND.Backpack:FindFirstChild("[Nunchucks]")
              c()
              STAND.Backpack:FindFirstChild("[Nunchucks]").Parent = STAND.Character
           end,    

    SledgeHammer = function()
        if STAND.Character:FindFirstChildWhichIsA("Tool") then
            STAND.Character:FindFirstChildWhichIsA("Tool").Parent = STAND.Backpack
          end
            local a = Stand.Action
            local b = Stand.Target
            local function c()
                Stand = {
                Action = a,
                Target = b
               }
             end
            Stand = {
            Action = "",
            Target = ""
            }
            repeat
                rs.Stepped:Wait()
                STAND.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["[SledgeHammer] - $350"].Head.Position)
                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[SledgeHammer] - $350"].ClickDetector)
              until STAND.Backpack:FindFirstChild("[SledgeHammer]")
              c()
              STAND.Backpack:FindFirstChild("[SledgeHammer]").Parent = STAND.Character
           end,    

    Grenade = function()
        if STAND.Character:FindFirstChildWhichIsA("Tool") then
            STAND.Character:FindFirstChildWhichIsA("Tool").Parent = STAND.Backpack
          end
            local a = Stand.Action
            local b = Stand.Target
            local function c()
                Stand = {
                Action = a,
                Target = b
               }
             end
            Stand = {
            Action = "",
            Target = ""
            }
            repeat
                rs.Stepped:Wait()
                STAND.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["[Grenade] - $1250"].Head.Position)
                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Grenade] - $1250"].ClickDetector)
              until STAND.Backpack:FindFirstChild("[Grenade]")
              c()
              STAND.Backpack:FindFirstChild("[Grenade]").Parent = STAND.Character
           end,    

    Flashbang = function()
        if STAND.Character:FindFirstChildWhichIsA("Tool") then
            STAND.Character:FindFirstChildWhichIsA("Tool").Parent = STAND.Backpack
          end
            local a = Stand.Action
            local b = Stand.Target
            local function c()
                Stand = {
                Action = a,
                Target = b
               }
             end
            Stand = {
            Action = "",
            Target = ""
            }
            repeat
                rs.Stepped:Wait()
                STAND.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["[Flashbang] - $550"].Head.Position)
                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Flashbang] - $550"].ClickDetector)
              until STAND.Backpack:FindFirstChild("[Flashbang]")
              c()
              STAND.Backpack:FindFirstChild("[Flashbang]").Parent = STAND.Character
           end,    

    Boxing = function()
        if STAND.Character:FindFirstChildWhichIsA("Tool") then
            STAND.Character:FindFirstChildWhichIsA("Tool").Parent = STAND.Backpack
          end
            local a = Stand.Action
            local b = Stand.Target
            local function c()
                Stand = {
                Action = a,
                Target = b
               }
             end
            Stand = {
            Action = "",
            Target = ""
            }
            coroutine.wrap(function()
                x = false
                wait(1.5)
                x = true
            end)()
            repeat
              rs.Stepped:Wait()
              STAND.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["Boxing Moveset (Require: Max Box Stat) - $0"].Head.Position)
              fireclickdetector(game:GetService("Workspace").Ignored.Shop["Boxing Moveset (Require: Max Box Stat) - $0"].ClickDetector)
            until x == true
            c()
            x = false
            STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character
          end,

    Default = function()
        if STAND.Character:FindFirstChildWhichIsA("Tool") then
            STAND.Character:FindFirstChildWhichIsA("Tool").Parent = STAND.Backpack
          end
            local a = Stand.Action
            local b = Stand.Target
            local function c()
                Stand = {
                Action = a,
                Target = b
               }
             end
            Stand = {
            Action = "",
            Target = ""
            }
            coroutine.wrap(function()
                x = false
                wait(1.5)
                x = true
            end)()
            repeat
              rs.Stepped:Wait()
              STAND.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["[Default Moveset] - $0"].Head.Position)
              fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Default Moveset] - $0"].ClickDetector)
            until x == true
            c()
            x = false
            STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character
          end,
        }
--//------------------------------------------------------------------------------------------\\--
function Equip(Tool)
    if STAND.Character:FindFirstChildWhichIsA("Tool") then
        STAND.Character.Humanoid:UnequipTools()
    end
    STAND.Character.Humanoid:EquipTool(STAND.Backpack[Tool])
end
--//------------------------------------------------------------------------------------------\\--
function Unequip()
    STAND.Character.Humanoid:UnequipTools()
end
--//------------------------------------------------------------------------------------------\\--
coroutine.wrap(function()
    while Settings['Made By JoJo#2494'].AUTOPICKUPCASH == true do
        wait()
        for _,v in pairs(game:GetService('Workspace'):FindFirstChild('Ignored'):FindFirstChild('Drop'):GetChildren()) do
            if v:IsA('Part') then
                if (v.Position - STAND.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 12 then
                    wait(0.01);
                    fireclickdetector(v:FindFirstChildOfClass('ClickDetector'));
                end;
            end;
        end;
    end;
end)()
end
end
--/---------------------------------------------------------------------------------------------\--/ CreateAction goes below this :
CreateAction("Summoned", function() 
    STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(1,1.85,2.5)
end)    

CreateAction("Barrage", function()
    if STAND.Character.HumanoidRootPart then
        if OWNER.Character.HumanoidRootPart then
            STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,0.85,-4.85)
            if STAND.Character:FindFirstChild("Combat") then
                Hit(false)
            else
                Equip("Combat")
                Hit(false)
            end
        end
    end
end)

CreateAction("Aura", function() 
    wait()
    if OWNER.Character.Humanoid.FloorMaterial == Enum.Material.Air then 
        STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-20,0)
        Hit(false)
    elseif OWNER.Character.Humanoid.FloorMaterial ~= Enum.Material.Air then
        STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0 + math.random(-8.5,8.5),-10,0 + math.random(-8.5,8.5))
        Hit(false)
    else
        STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-25,0)
    end
end)   

CreateAction("aura1", function() 
Target = GetNearest()
Range = 25
local x = math.random(-5,5)
local b = (OWNER.Character.UpperTorso.Position - Target.Character.UpperTorso.Position).Magnitude
    if Target and Target.Character and Target.Character:FindFirstChild("UpperTorso") and b < Range and Target.Character:FindFirstChild("BodyEffects") and Target.Character.BodyEffects:FindFirstChild("Defense") and Target.Character.BodyEffects:FindFirstChild("K.O") and Target.Character.BodyEffects.Attacking.Value == false and Target.Character.BodyEffects["K.O"].Value == false then
        STAND.Character.HumanoidRootPart.CFrame = CFrame.new(Target.Character.UpperTorso.Position.X + x, Target.Character.UpperTorso.Position.Y + x, Target.Character.UpperTorso.Position.Z + x)
        Hit(true) -- if true will charge
    else
        STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(1,1.85,2.5)
    end
end)  

CreateAction("Save", function()
       Stand.Action = "" 
       repeat wait()
        if OWNER.Character.BodyEffects["K.O"].Value == false then
            STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.UpperTorso.CFrame
        elseif OWNER.Character.BodyEffects["K.O"].Value == true then 
            wait(0.5)
            STAND.Character.HumanoidRootPart.CFrame = CFrame.new(OWNER.Character.UpperTorso.Position.X , OWNER.Character.UpperTorso.Position.Y +0.5, OWNER.Character.UpperTorso.Position.Z )
            wait(0.5)
            if STAND.Character.BodyEffects["Grabbed"].Value == nil then
                wait(0.9)
                game:GetService("ReplicatedStorage").MainEvent:FireServer("Grabbing", true)
            end
        end
        until Stand.Action == "Summoned" or Target == nil or not Target.Character.BodyEffects:FindFirstChild("K.O") or not Target.Character.BodyEffects:FindFirstChild("Defense") or STAND.Character.BodyEffects["Grabbed"].Value ~= nil 
    STAND.Character.HumanoidRootPart.CFrame = CFrame.new(-205.789703, 160.413025, 1.48631835)
    wait(1)
    game:GetService("ReplicatedStorage").MainEvent:FireServer("Grabbing", false)
    wait(2)
    Stand.Action = "Summoned"
end)

CreateAction("Mimic", function() 
    local Block = OWNER.Character.BodyEffects:FindFirstChild('Block')
    if OWNER.Character.BodyEffects.Attacking.Value == true then
        STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-6)
        if STAND.Character:FindFirstChild('Combat') then
            STAND.Character:FindFirstChild('Combat'):Activate()
        else
            STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character
        end
    elseif Block then
        STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-6)
        if not STAND.Character.BodyEffects:FindFirstChild('Block') then
            game:GetService("ReplicatedStorage").MainEvent:FireServer("Block", true)
        end
    else
        if STAND.Character.BodyEffects:FindFirstChild('Block') then
            STAND.Character.BodyEffects:FindFirstChild('Block'):Destroy()
        end
        STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame * CFrame.new(1,1.85,2.5)
    end
end)
--/---------------------------------------------------------------------------------------------\--/ Create & CreateTargetAbility & CreateLoop goes below this :

Create("Mimic!", function() 
    Stand.Action = "Mimic"
end) 

Create("Save!", function ()
    Stand.Action = "Save"
end)

Create("Stab!", function()
    Stand.Action = "aura1"
end)

Create("Leave!", function() 
    game:Shutdown()
end)

Create("Barrage!", function()
    Stand.Action = "Barrage"
end)

Create('Aura!', function()
    Stand.Action = "Aura"
end)

Create('/e test', function()
    print"hi"
end)

Create("Summon!", function()
    pcall(function()
        game:GetService("RunService"):UnbindFromRenderStep("TARGETKILL")
		game:GetService("RunService"):UnbindFromRenderStep("GRAB")
        Stop()
    end)
    STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-0.7,1.45)
    wait(0.07)
    STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-0.7,1.45)
    wait(0.07)
    Stand.Action = "Summoned"
end)

Create("Vanish!", function()
    pcall(function()
        Stop()
    end)
    Stand.Action = "" 
    STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-0.7,1.45)
    wait(0.09)
    STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-100,0)
end)

Create("/e s", function()
    pcall(function()
        game:GetService("RunService"):UnbindFromRenderStep("TARGETKILL")
		game:GetService("RunService"):UnbindFromRenderStep("GRAB")
        Stop()
    end)
    STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-0.7,1.45)
    wait(0.05)
    STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-0.7,1.45)
    wait(0.05)
    Stand.Action = "Summoned"
end)

Create("/e v", function()
    pcall(function()
        Stop()
    end)
    Stand.Action = "" 
    STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-0.7,1.45)
    wait(0.075)
    STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-100,0)
end)

Create("Rejoin!", function()
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, STAND)
end)


CreateTargetAbility("Kill", function()
    local Target = Stand.Target
    if Target then
    Stand.Action = ""
    game:GetService("RunService"):BindToRenderStep("TARGETKILL", -1 , function()
    if Target and Target.Character and Target.Character:FindFirstChild("BodyEffects") and Target.Character.BodyEffects:FindFirstChild("K.O") then
        if Target.Character.BodyEffects["K.O"].Value == true then
			STAND.Character.HumanoidRootPart.CFrame = CFrame.new(Target.Character.UpperTorso.Position.X , Target.Character.UpperTorso.Position.Y + 1, Target.Character.UpperTorso.Position.Z )
			game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
        else
            STAND.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame*CFrame.new(0,-10,0)
                if STAND.Character:FindFirstChildWhichIsA("Tool") then
                    Hit(true)
                else
                    Equip("Combat")
                    Hit(true)
                end
             end
          end
  	  end)
	end
end)

CreateTargetAbility("Bring", function()
    local Target = Stand.Target
    if Target then
    Stand.Action = ""
    game:GetService("RunService"):BindToRenderStep("GRAB", -1 , function()
    if Target and Target.Character and Target.Character:FindFirstChild("BodyEffects") and Target.Character.BodyEffects:FindFirstChild("K.O") then
    if Target.Character.BodyEffects["K.O"].Value == true then
        STAND.Character.HumanoidRootPart.CFrame = CFrame.new(Target.Character.UpperTorso.Position.X , Target.Character.UpperTorso.Position.Y + 1, Target.Character.UpperTorso.Position.Z )
        if STAND.Character.BodyEffects["Grabbed"].Value == nil then
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"G",false,game)
        end
    end
    if Target.Character.BodyEffects["K.O"].Value == false then
        STAND.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame*CFrame.new(0,-6,0)
            if STAND.Character:FindFirstChildWhichIsA("Tool") then
                Hit(true)
            else
                Equip("Combat")
                Hit(true)
            end
        end
            if Target == nil or STAND.Character.BodyEffects["Grabbed"].Value ~= nil then
                game:GetService("RunService"):UnbindFromRenderStep("GRAB")
                Stand.Action = "Summoned"
            end
 	       end
		end)
	end
end)