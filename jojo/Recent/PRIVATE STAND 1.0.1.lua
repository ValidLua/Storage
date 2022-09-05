getgenv().PRIVATESTAND = {
    ['MAIN'] = {
      ["ACCOUNTS"] = {OWNER = "K8U8X0XGFHWE", STAND = "KaitlynFrench52"}, --/ STAND = IS LOCALPLAYER, OWNER = IS OWNER OF STAND
      ["FPS"] = 60,
      ["FPSBOOST"] = true,
      ["REMOVEFACE"] = true,
      ["REMOVETRAILS"] = true,
      ['GODV3'] = false,
      ['TITAN']= {ENABLED = false, DEFAULT = false, TALL = false, WIDE = false},
      ['NOCLIP'] = {SYNAPSE = false, OFFSET = -3.05},
      ['RANGE'] = 50,
      ['ANTIFLING'] = true,
    }
}
--//------------------------------------------------------------------------------------------\\--
    wait(0.25)
    if not game['Loaded'] or not game:GetService("Players").LocalPlayer then
        game['Loaded']:Wait();
        game:WaitForChild(game:GetService("Players"));
        game:GetService("Players"):WaitForChild(game:GetService("Players").LocalPlayer.Name)
    end
--//------------------------------------------------------------------------------------------\\--
    if game:GetService("Players").LocalPlayer.Name == (PRIVATESTAND['MAIN']['ACCOUNTS'].STAND) then
        local OWNER = game:GetService("Players"):WaitForChild(PRIVATESTAND['MAIN']['ACCOUNTS'].OWNER)
        local STAND = game:GetService("Players"):WaitForChild(PRIVATESTAND['MAIN']['ACCOUNTS'].STAND)
        local RS = game:GetService("RunService")
--//------------------------------------------------------------------------------------------\\--
    if tonumber(PRIVATESTAND['MAIN']['FPS']) then
        setfpscap(PRIVATESTAND['MAIN']['FPS'])
        settings().Physics.PhysicsEnvironmentalThrottle = 1
        settings().Physics.AllowSleep = true
        settings().Rendering.QualityLevel = "Level01"
        UserSettings():GetService("UserGameSettings").MasterVolume = 0 
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    end
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
                if tostring(args[1]) == "DropMoney" or tostring(args[1]) == "TimerDecrease" or  tostring(args[1]) == "Grabbing" or tostring(args[1]) == "Block" or tostring(args[1]) == "Stomp" or tostring(args[1]) == "JoinCrew" or tostring(args[1]) == "PhoneCall" or tostring(args[1]) == "Boombox" or tostring(args[1]) == "BoomboxStop" or tostring(args[1]) == "EnterPromoCode" or tostring(args[1]) == "PurchaseSkinCrate" or tostring(args[1]) == "TimerMoney" or tostring(args[1]) == "Reload" or tostring(args[1]) == "UpdateMousePos" or tostring(args[1]) == "FireworkText" then
            else 
                return
            end 
            end
        return old(self, ...)
    end)
--//------------------------------------------------------------------------------------------\\--
    local g
    g = hookmetamethod(game, "__namecall", function(...)
    local f = {
        ...
    }
    local c = f[1]
    local a = getnamecallmethod()
    local _ = getcallingscript()
    if (a == "FireServer" and c == d and e(b, f[2])) then
        return
    end
        if (not checkcaller() and getfenv(2).crash) then
            hookfunction(getfenv(2).crash, function()
                end)
            end
        return g(...)
    end)
--//------------------------------------------------------------------------------------------\\--
    game:GetService("Players").PlayerAdded:Connect(function(Player)
        if Player:WaitForChild("Name") == PRIVATESTAND['MAIN']['ACCOUNTS'].OWNER then
            OWNER = Player
        end
        if Player:WaitForChild("Backpack"):FindFirstChild("AdminBan") then
            STAND:Kick("Admin has joined the server.")
        end
    end)
--//------------------------------------------------------------------------------------------\\--
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v and v:WaitForChild("Backpack"):FindFirstChild("AdminBan") then
            STAND:Kick("Admin was in the server.")
        end
    end
--//------------------------------------------------------------------------------------------\\--
    coroutine.wrap(function()
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
            if v.ClassName == "Part" or v.ClassName == "SpawnLocation" or v.ClassName == "WedgePart" or v.ClassName == "Terrain" or v.ClassName == "MeshPart" then
                v.BrickColor = BrickColor.new(155, 155, 155)
                v.Material = "Plastic"
            end
            if v.ClassName == "Decal" or v.ClassName == "Texture" then
                v:Destroy()
            end
        end
    pcall(function()
    for _, v in next, game:GetDescendants() do
      if v:IsA('Lighting') then
        v.GlobalShadows = false
        v.FogEnd = 1/0
        v.Brightness = 0
      elseif v:IsA('Model') then
        sethiddenproperty(v, 'LevelOfDetail', 1)
      elseif plr and v == plr then
        v.ReplicationFocus = nil
      elseif v:IsA('Decal') or v:IsA('Texture') or v:IsA('Beam') then
        v:Destroy()
      elseif v:IsA('Fire') or v:IsA('SpotLight') or v:IsA('Smoke') or v:IsA('Sparkles') then
        v.Enabled = false
      elseif v:IsA('SpecialMesh') then
        v.TextureId = ''
        v.MeshId = ''
      elseif v:IsA('ParticleEmitter') or v:IsA('Trail') then
        v.Lifetime = NumberRange.new(0)
      elseif v:IsA('BlurEffect') or v:IsA('SunRaysEffect') or v:IsA('ColorCorrectionEffect') or v:IsA('BloomEffect') or v:IsA('DepthOfFieldEffect')  then
        v.Enabled = false
      elseif v:IsA('BasePart') and not v:IsA('MeshPart') then
        v.Reflectance = 0
        v.Material = 'SmoothPlastic'
      elseif v:IsA('Pants') or v:IsA('Shirt') then
        v[v.ClassName..'Template'] = ''
      elseif v:IsA('ForceField') then
        v.Visible = false
      elseif v:IsA('ShirtGraphic') then
        v.Graphic = ''
      elseif v:IsA('MeshPart') then
        v.MeshId = ''
        v.TextureID = ''
        v.Reflectance = 0
        v.Material = 'SmoothPlastic'
      elseif v:IsA('CharacterMesh') then
        v.BaseTextureId = ''
        v.MeshId = ''
        v.OverlayTextureId = ''
      elseif v:IsA('Sound') then
        v:Destroy()
        LOADED = true
      end
    end 
--//------------------------------------------------------------------------------------------\\--
    local WorkspaceChildAdded;WorkspaceChildAdded = workspace.DescendantAdded:Connect(function(v)
        wait()
        if v:IsA('Model') then
            sethiddenproperty(v, 'LevelOfDetail', 1)
        elseif plr and v == plr then
            v.ReplicationFocus = nil
        elseif v:IsA('Decal') or v:IsA('Texture') or v:IsA('Beam') then
            v:Destroy()
        elseif v:IsA('Fire') or v:IsA('SpotLight') or v:IsA('Smoke') or v:IsA('Sparkles') then
            v.Enabled = false
        elseif v:IsA('SpecialMesh') then
            v.TextureId = ''
            v.MeshId = ''
        elseif v:IsA('ParticleEmitter') or v:IsA('Trail') then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA('BlurEffect') or v:IsA('SunRaysEffect') or v:IsA('ColorCorrectionEffect') or v:IsA('BloomEffect') or v:IsA('DepthOfFieldEffect')  then
            v:Destroy()
        elseif v:IsA('BasePart') and not v:IsA('MeshPart') then
            v.Reflectance = 0
            v.Material = 'SmoothPlastic'
        elseif v:IsA('Pants') or v:IsA('Shirt') then
            v[v.ClassName..'Template'] = ''
        elseif v:IsA('ForceField') then
            v.Visible = false
        elseif v:IsA('ShirtGraphic') then
            v.Graphic = ''
        elseif v:IsA('MeshPart') then
            v.MeshId = ''
            v.TextureID = ''
            v.Reflectance = 0
            v.Material = 'SmoothPlastic'
        elseif v:IsA('CharacterMesh') then
            v.BaseTextureId = ''
            v.MeshId = ''
            v.OverlayTextureId = ''
        elseif v:IsA('Sound') then
            v:Destroy()
        end
        end)
      end)
    end)()
--//------------------------------------------------------------------------------------------\\--
    local function Respawn()
    STAND.Character:WaitForChild("ForceField")
    STAND.Character:WaitForChild("Humanoid")
    STAND.Character:WaitForChild("Head")
    STAND.Character:WaitForChild("BodyEffects")
    if PRIVATESTAND["MAIN"]["GODV3"] then
      pcall(function()
        coroutine.wrap(function()
            STAND.Character:WaitForChild("CheckingKOED                                                                   ."):FindFirstChildWhichIsA("LocalScript").Disabled = true
        end)()
          for i,v in pairs(STAND.Character:GetChildren()) do
                if v.ClassName == 'Script' then
                    v:Destroy()
                end
            end
        end)
    end
--//------------------------------------------------------------------------------------------\\-
if PRIVATESTAND['MAIN'].TITAN.ENABLED then
	coroutine.wrap(function()
	repeat wait() until STAND.Backpack:FindFirstChild("Mask")
		coroutine.wrap(function()
			STAND.Character.BodyEffects:WaitForChild("Defense"):WaitForChild('CurrentTimeBlock'):Destroy()
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
			if PRIVATESTAND['MAIN'].TITAN.TALL and wide == false and default == false then
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
			if PRIVATESTAND['MAIN'].TITAN.WIDE and tall == false and default == false then
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
			if PRIVATESTAND['MAIN'].TITAN.DEFAULT and tall == false and wide == false then
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
    if PRIVATESTAND["MAIN"]["REMOVEFACE"] then 
        for i,f in pairs(STAND.Character.Head:GetChildren()) do
            if f:IsA("Decal") and f.Name == "face" then
                f:Destroy()
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
    STAND.Character:FindFirstChild("Animate").Disabled = true
    STAND.Character.Humanoid.AutoRotate = false
--//------------------------------------------------------------------------------------------\\--
    coroutine.wrap(function()
        if PRIVATESTAND["MAIN"]["REMOVETRAILS"] then
            STAND.Character.Humanoid:WaitForChild("TrailEffects"):Destroy()
        end
    end)()
--//------------------------------------------------------------------------------------------\\--
    repeat wait() STAND.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].Head.Position) fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].ClickDetector) until STAND.Backpack:FindFirstChild("Mask")
    Mask = STAND.Backpack:FindFirstChild("Mask")
    Combat = STAND.Backpack:WaitForChild("Combat")
    Mask.Parent = STAND.Character
    Mask:Activate()
    Mask.Parent = STAND.Backpack 
    Combat.Parent = STAND.Character 
    STAND.Character:WaitForChild('In-gameMask'):FindFirstChildWhichIsA("Model"):Destroy()
    STAND.Character:WaitForChild('In-gameMask'):FindFirstChild('Handle'):Destroy() 
--//------------------------------------------------------------------------------------------\\--
    function AnimPlay(ID, SPEED)
        local animation = Instance.new('Animation', game:GetService("Workspace"))
        animation.AnimationId = 'rbxassetid://'..ID
        playing = STAND.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
        playing:Play() 
            if tonumber(SPEED) then
                playing:AdjustSpeed(SPEED)
            else
                playing:AdjustSpeed(1)
            end
        animation:Destroy()
    end
    AnimPlay(3541114300,0.8)
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
--//------------------------------------------------------------------------------------------\\-- Animations :
    if not game:GetService("Workspace"):FindFirstChild("Gliding") then
        Glide = Instance.new('Animation', game:GetService("Workspace"))
        Glide.AnimationId = 'rbxassetid://3084858603'
        Glide.Name = 'Gliding'
        Glide2 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Glide)
    else
        Glide = game:GetService("Workspace").Gliding
        Glide2 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Glide)
    end 
--//------------------------------------------------------------------------------------------\\--
    if not game:GetService("Workspace"):FindFirstChild("barrage1") and not game:GetService("Workspace"):FindFirstChild("barrage2") and not game:GetService("Workspace"):FindFirstChild("barrage3") and not game:GetService("Workspace"):FindFirstChild("barrage4") then
        local barrage1 = Instance.new('Animation', game:GetService("Workspace"))
        barrage1.AnimationId = 'rbxassetid://8254787838'
        barrage1.Name = "barrage1"
        local barrage2 = Instance.new('Animation', game:GetService("Workspace"))
        barrage2.AnimationId = 'rbxassetid://8254789608'
        barrage2.Name = "barrage2"
        local barrage3 = Instance.new('Animation', game:GetService("Workspace"))
        barrage3.AnimationId = 'rbxassetid://8254792138'
        barrage3.Name = "barrage3"
        local barrage4 = Instance.new('Animation', game:GetService("Workspace"))
        barrage4.AnimationId = 'rbxassetid://8254794168'
        barrage4.Name = "barrage4"
        Barraging1 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(barrage1)
        Barraging2 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(barrage2)
        Barraging3 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(barrage3)
        Barraging4 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(barrage4)
    else
        local barrage1 = game:GetService("Workspace").barrage1
        local barrage2 = game:GetService("Workspace").barrage2
        local barrage3 = game:GetService("Workspace").barrage3
        local barrage4 = game:GetService("Workspace").barrage4
        Barraging1 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(barrage1)
        Barraging2 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(barrage2)
        Barraging3 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(barrage3)
        Barraging4 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(barrage4)
    end
--//------------------------------------------------------------------------------------------\\-- Poses :
    if not game:GetService("Workspace"):FindFirstChild("TopRock") then
        TopRock = Instance.new('Animation', game:GetService("Workspace"));
        TopRock.AnimationId = 'rbxassetid://3361276673';
        TopRock.Name = 'TopRock';
        Pose1 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(TopRock);
        Pose1.Looped = true;
        Pose1.Priority = Enum.AnimationPriority.Action;
    else
        TopRock = game:GetService("Workspace"):FindFirstChild("TopRock");
        Pose1 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(TopRock);
        Pose1.Looped = true;
        Pose1.Priority = Enum.AnimationPriority.Action;
    end
--//------------------------------------------------------------------------------------------\\--
    if not game:GetService("Workspace"):FindFirstChild("Beckon") then
        Beckon = Instance.new('Animation', game:GetService("Workspace"));
        Beckon.AnimationId = 'rbxassetid://5230598276';
        Beckon.Name = 'Beckon';
        Pose2 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Beckon);
        Pose2.Looped = true;
        Pose2.Priority = Enum.AnimationPriority.Action;
    else
        Beckon = game:GetService("Workspace"):FindFirstChild("Beckon");
        Pose2 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Beckon);
        Pose2.Looped = true;
        Pose2.Priority = Enum.AnimationPriority.Action;
    end
--//------------------------------------------------------------------------------------------\\--
    if not game:GetService("Workspace"):FindFirstChild("Godlike") then
        Godlike = Instance.new('Animation', game:GetService("Workspace"));
        Godlike.AnimationId = 'rbxassetid://3337994105';
        Godlike.Name = 'Godlike';
        Pose3 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Godlike);
        Pose3.Looped = true;
        Pose3.Priority = Enum.AnimationPriority.Action;
    else
        Godlike = game:GetService("Workspace"):FindFirstChild("Godlike");
        Pose3 = STAND.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Godlike);
        Pose3.Looped = true;
        Pose3.Priority = Enum.AnimationPriority.Action;
    end
--//------------------------------------------------------------------------------------------\\-- 
    function Looking()
      RS:UnbindFromRenderStep("Looking")
        RS:BindToRenderStep("Looking", -1 , function() -- we copy the stand owner rotation
            local direction = OWNER.Character.HumanoidRootPart.Position + OWNER.Character.HumanoidRootPart.CFrame.LookVector * OWNER.Character.HumanoidRootPart.Position.Magnitude
            STAND.Character.HumanoidRootPart.CFrame = CFrame.lookAt(STAND.Character.HumanoidRootPart.Position, direction)
        end)
    end
    Looking()
--//------------------------------------------------------------------------------------------\\-- Variables :
    Summoned = false
    Barrage = false
    Barrage1 = false
    Posing1 = false
    Posing2 = false
    Posing3 = false
--//------------------------------------------------------------------------------------------\\--
    end --/ The end of the Respawn function.
--//------------------------------------------------------------------------------------------\\--
    coroutine.wrap(function()
        repeat wait() until LOADED == true and STAND.Character.BodyEffects["K.O"].Value == false
        for i,v in pairs(STAND.Character:GetChildren()) do if v:IsA("BasePart") then v:Destroy() end end
        Respawn()
    end)()
--//------------------------------------------------------------------------------------------\\--
    STAND.CharacterAdded:connect(function()
		Respawn()
	end)
--//------------------------------------------------------------------------------------------\\--
    if PRIVATESTAND["MAIN"]["ANTIFLING"] then
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
        end)();
    end
--//------------------------------------------------------------------------------------------\\--
    STAND.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
--//------------------------------------------------------------------------------------------\\--
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LegoHacker1337/legohacks/main/PhysicsServiceOnClient.lua"))()
    setfflag("HumanoidParallelRemoveNoPhysics", "False")
    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
        RS:BindToRenderStep("", Enum.RenderPriority.Camera.Value, function()
            STAND.Character:WaitForChild("Humanoid"):ChangeState(11)
            RS.RenderStepped:Wait()
        end)
    NOCLIP = Instance.new('Part', game:GetService("Workspace"))
    NOCLIP.Name = "NOCLIP"
    NOCLIP.Size = Vector3.new(6,0.1,6)
    NOCLIP.Anchored = true
    NOCLIP.Transparency = 1
    local y = (PRIVATESTAND["MAIN"]["NOCLIP"].OFFSET)
    RS.Stepped:Connect(function()
        pcall(function()
            STAND.Character.Head.CanCollide = false
            STAND.Character.UpperTorso.CanCollide = false          
            STAND.Character.HumanoidRootPart.CanCollide = false
            STAND.Character.LowerTorso.CanCollide = false
            game:GetService("ReplicatedStorage").MainEvent:FireServer('Block', STAND.Name)
            NOCLIP.CFrame = STAND.Character.HumanoidRootPart.CFrame + Vector3.new(0,y,0)
        end)
    end)     
--//------------------------------------------------------------------------------------------\\--
    RS.RenderStepped:connect(function()
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
    for i,v in pairs(STAND.Character:GetDescendants()) do
        if v:IsA("BasePart") then
            v.ChildAdded:Connect(function(child)
                if child:IsA("Decal") then
                    RS.Stepped:Wait()
                    child:Destroy()
                end
            end)
        end
    end
--//------------------------------------------------------------------------------------------\\--
    coroutine.wrap(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            for i,v in next, game:GetService('Players'):GetPlayers() do 
                if v ~= game.Players.LocalPlayer then  
                    pcall(function() 
                        v.Character.Head.Size = Vector3.new(100, 100, 100, 100) 
                        v.Character.Head.Transparency=1
                        v.Character.Head.Color = Color3.fromHSV(i,3,5,2) 
                        v.Character.Head.Massless = true
                    end)
                end
            end
            wait()
        end)
    end)();
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
--//------------------------------------------------------------------------------------------\\--
    local function GetPlayer(String)
      String = String or 'N/A'
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name:lower():match('^'..String:lower()) then
              return v
            end
        end
     return false
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
                        if v.Character:FindFirstChild('HumanoidRootPart') and v.Character:FindFirstChild("BodyEffects") and v.Character.BodyEffects:FindFirstChild("Dead") and v.Character.BodyEffects:FindFirstChild("Dead").Value == false  then
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
    function Hit(Charge)
    local x = STAND.Character:FindFirstChildWhichIsA("Tool")
    wait(0.25)
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
--//-----------------------------------------------------------------------------------------\\--
    function GetNearest()
        local ClosestPlayer
        local Distance = math.huge
        local ClosestDistance = math.huge
            for _,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character and OWNER.Character then
                    if v.Name ~= OWNER.Name and v.Name ~= STAND.Name and v:FindFirstChild('DataFolder') and v:FindFirstChild('DataFolder'):FindFirstChild('Information') then
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
--//-----------------------------------------------------------------------------------------\\--
    local function Moved()
      pcall(function()
        if OWNER.Character.Humanoid.MoveDirection.magnitude > 0 and Barrage == false then
            if not Glide2 then return end
                if Glide2.IsPlaying == true then
                    return 
                end
                Glide2:Play(0.3)
            else
                wait(0.2)
                Glide2:Stop(0.28)
            end     
        end)
    end
    OWNER.Character.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(Moved)
--//-----------------------------------------------------------------------------------------\\-- Poses :
    local function pose1()
        if Posing1 == true then
            RS:UnbindFromRenderStep("POSING")
            Posing1 = false
            Pose1:Stop(0.25)
        else
            Posing1 = true
            RS:BindToRenderStep("POSING", -1 , function()
                pcall(function()
                    if Posing1 == true then
                        if not Pose1.IsPlaying then
                            Pose1:Play();
                            Pose1:AdjustSpeed(0);
                            Pose1.TimePosition = 0.42;
                        end
                    end
                end)
            end)
        end
    end
--//------------------------------------------------------------------------------------------\\--
    local function pose2()
        if Posing2 == true then
            RS:UnbindFromRenderStep("POSING")
            Posing2 = false
            Pose2:Stop(0.25)
        else
            Posing2 = true
            RS:BindToRenderStep("POSING", -1 , function()
                pcall(function()
                    if Posing2 == true then
                        if not Pose2.IsPlaying then
                            Pose2:Play();
                            Pose2:AdjustSpeed(0);
                            Pose2.TimePosition = 1.7;
                        end
                    end
                end)
            end)
        end
    end
--//------------------------------------------------------------------------------------------\\--
    local function pose3()
        if Posing3 == true then
            RS:UnbindFromRenderStep("POSING")
            Posing3 = false
            Pose3:Stop(0.25)
        else
            Posing3 = true
            RS:BindToRenderStep("POSING", -1 , function()
                pcall(function()
                    if Posing3 == true then
                        if not Pose3.IsPlaying then
                            Pose3:Play();
                            Pose3:AdjustSpeed(0);
                            Pose3.TimePosition = 0.85;
                        end
                    end
                end)
            end)
        end
    end
--//------------------------------------------------------------------------------------------\\-- Ability Functions :
    local function Summon() -- OKAY SO BASICALLY  THIS IS LIKE THE THING THAT MAKES THE STAND ( GHOST ) FOLLOW ME
        Summoned = true
        local BP = Instance.new("BodyPosition")
        BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        BP.P = 2500
        BP.D = 300
        BP.Parent = STAND.Character.HumanoidRootPart
        BP.Position = STAND.Character.HumanoidRootPart.Position
            RS:BindToRenderStep("Summon", -1 , function()
                BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(1,1.85,2.5).Position
                local mag = (STAND.Character.HumanoidRootPart.Position - OWNER.Character.HumanoidRootPart.Position).magnitude
                if mag > 40 then
                    STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(1,1.85,2.5)
                end
            end)
        wait(0.5)
        BP.D = 252
    end
--//------------------------------------------------------------------------------------------\\--
    local function Desummon()
        Summoned = false
        RS:UnbindFromRenderStep("Summon")
        STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
        local BP = Instance.new("BodyPosition")
        BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        BP.P = 2500
        BP.D = 300
        BP.Parent = STAND.Character.HumanoidRootPart
        coroutine.wrap(function()
            if (STAND.Character.HumanoidRootPart.Position - OWNER.Character.HumanoidRootPart.Position).Magnitude < 3.3 then
                BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(-0.3,-1,1.6).Position
                repeat game["RunService"].Stepped:Wait() until (STAND.Character.HumanoidRootPart.Position - OWNER.Character.HumanoidRootPart.Position).Magnitude < 1.82 or not STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition") or (STAND.Character.HumanoidRootPart.Position - OWNER.Character.HumanoidRootPart.Position).Magnitude > 3.3
                if STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition") then
                    STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
                end
                STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,100)
                STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-100,0)
            else
                BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(-0,-1.5,0).Position
                wait(0.225)
                if STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition") then
                    STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
                end
                STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,100)
                STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-100,0)
            end
            print"debug: desummon"
        end)()
    end
--//------------------------------------------------------------------------------------------\\--
    local function Ora()
        Barrage = true
        RS:UnbindFromRenderStep("Summon")
        STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
        BP = Instance.new("BodyPosition")
        BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        BP.P = 5000
        BP.D = 250
        BP.Parent = STAND.Character.HumanoidRootPart
        BP.Position = STAND.Character.HumanoidRootPart.Position
        AnimPlay(4600078411,0)
        coroutine.wrap(function()
            while true do
                Barraging2:Play()
                Barraging2:Play()
                Barraging2:AdjustSpeed(8.15)
                wait(0.018)
                Barraging1:Play()
                Barraging1:Play()
                Barraging1:AdjustSpeed(8.15)
                wait(0.018)
                Barraging4:Play()
                Barraging4:Play()
                Barraging4:AdjustSpeed(8.15)
                wait(0.018)
                Barraging3:Play()
                Barraging3:Play()
                Barraging3:AdjustSpeed(8.15)
                wait(0.018)
                if Barrage == false then
                    break 
                end
            end
        end)()
        RS:BindToRenderStep("Ora", 250 , function()
            BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,0.85,-4.85).Position
            Hit(false)
            if STAND.Character.BodyEffects["K.O"].Value == true then
                Barrage = false
                RS:UnbindFromRenderStep("Ora")
                AnimStop(4600078411)
                AnimPlay(3541114300)
                STAND.Character.HumanoidRootPart:FindFirstChild("BodyPosition"):Destroy()
                Summon()
            end
        end)
    end
--//------------------------------------------------------------------------------------------\\--
    local function Heavy()    
        if side == true then
            a = false
            STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-100,0)
            Hit(true)
            repeat RS.Stepped:Wait()
                for i,v in pairs(STAND.Character.Humanoid:GetPlayingAnimationTracks()) do
                    if v.Animation.AnimationId == 'rbxassetid://2788289281' then
                        a = true
                    end
                end
            until a == true
            wait(0.9)
            STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(-0.2,-1,2.05)
            local BP = Instance.new("BodyPosition")
            BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            BP.P = 11250
            BP.D = 300
            BP.Parent = STAND.Character.HumanoidRootPart
            BP.Position = STAND.Character.HumanoidRootPart.Position
            BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(1.25,2,3.25).Position
            wait()
            BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(2,1.45,0).Position
            wait()
            BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0.25,0.75,-4).Position
            wait(0.31)
            STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
            STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,100)
            RS.Stepped:Wait()
            STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-100,0)
            side = false
        else 
            a = false
            STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-100,0)
            Hit(true)
            repeat RS.Stepped:Wait()
                for i,v in pairs(STAND.Character.Humanoid:GetPlayingAnimationTracks()) do
                    if v.Animation.AnimationId == 'rbxassetid://2788289281' then
                        a = true
                    end
                end
            until a == true ame.new(0.2,-1,2.05)
            local BP = Instance.new("BodyPosition")
            BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            BP.P = 11250
            BP.D = 300
            BP.Parent = STAND.Character.HumanoidRootPart
            BP.Position = STAND.Character.HumanoidRootPart.Position
            BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(-1.25,2,3.25).Position
            wait()
            BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(-2,1.45,0).Position
            wait()
            BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(-0.25,0.75,-4).Position
            wait(0.31)
            STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
            STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,100)
            RS.Stepped:Wait()
            STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-100,0)
            side = true
        end
    end
--//------------------------------------------------------------------------------------------\\--
    local function Heavy1()
        STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-100,0)
        Hit(true)
        wait(0.975)
        STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(-0.2,-1,2.05)
        AnimPlay(3354696735,1.5)
            for i,v in pairs(STAND.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v.Animation.AnimationId == 'rbxassetid://278829207' then
                    v:Stop()
                end
            end
        local BP = Instance.new("BodyPosition")
        BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        BP.P = 10000
        BP.D = 300
        BP.Parent = STAND.Character.HumanoidRootPart
        BP.Position = STAND.Character.HumanoidRootPart.Position
        BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(1.25,2,3.25).Position
        wait(0.04)
        BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(2,1.45,0).Position
        wait(0.02)
        BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0.25,0.75,-4).Position
        wait(0.25)
        STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
        Summon()
        AnimStop(3354696735,0.3)
    end
--//------------------------------------------------------------------------------------------\\-- Ability Commands :
    OWNER.Chatted:Connect(function(chat)
        if (string.lower(chat) == "/e q") then 
            if Barrage == true then
                Barrage = false
                RS:UnbindFromRenderStep("Ora")
                AnimStop(4600078411)
                AnimPlay(3541114300,0.8)
                STAND.Character.HumanoidRootPart:FindFirstChild("BodyPosition"):Destroy()
                Summon()
                print"debug: barrage summon"
            elseif Barrage1 == true then
                RS:UnbindFromRenderStep("KILL")
                Barrage1 = false
                Summon()
                print"debug: target barrage summon"
            else
                STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(-0.2,-0.9,1.65)
                Summon()
                print"debug: summon"
            end
--//------------------------------------------------------------------------------------------\\--
        elseif (string.lower(chat) == "/e q1") then 
            STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-100,0)
            RS.Stepped:Wait()
            STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0.4,-1,3)
            local BP = Instance.new("BodyPosition")
            BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            BP.P = 2500
            BP.D = 275
            BP.Parent = STAND.Character.HumanoidRootPart
            BP.Position = STAND.Character.HumanoidRootPart.Position
            RS:BindToRenderStep("Summon", -1 , function()
                BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(1.4,1.85,1.7).Position
            end)
            pose1()
            wait(1.5)
            pose1()
            RS:UnbindFromRenderStep("Summon")
            STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
            Summon()
--//------------------------------------------------------------------------------------------\\--
        elseif (string.lower(chat) == "star platinum!") then 
            pose3(1)
            STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-1.4,1.65)
            RS.Stepped:Wait()
            local BP = Instance.new("BodyPosition")
            BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            BP.P = 300
            BP.D = 100
            BP.Parent = STAND.Character.HumanoidRootPart
            BP.Position = STAND.Character.HumanoidRootPart.Position
            RS:BindToRenderStep("Summon", -1 , function()
                BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,2,3).Position
            end)
            wait(1)
            RS:UnbindFromRenderStep("Summon")
            STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
            pose3()
            Summon()
--//------------------------------------------------------------------------------------------\\--
        elseif (string.lower(chat) == "/e w") then 
            Desummon()
--//------------------------------------------------------------------------------------------\\--
        elseif (string.lower(chat) == "ora!") then    
            if Barrage == false then
                AnimStop(3541114300)
                Ora()
            else
                local success,err = pcall(function()
                local x = GetNearest()
                wait()
                if x and x.Character and x.Character:FindFirstChild("LowerTorso") and x.Character:FindFirstChild("BodyEffects") and x.Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O") and x.Character:FindFirstChild("BodyEffects"):FindFirstChild("Dead") then
                    Stomping = true
                    coroutine.wrap(function()
                        while true do
                            Barraging2:Play()
                            Barraging2:Play()
                            Barraging2:AdjustSpeed(8.15)
                            wait(0.018)
                            Barraging1:Play()
                            Barraging1:Play()
                            Barraging1:AdjustSpeed(8.15)
                            wait(0.018)
                            Barraging4:Play()
                            Barraging4:Play()
                            Barraging4:AdjustSpeed(8.15)
                            wait(0.018)
                            Barraging3:Play()
                            Barraging3:Play()
                            Barraging3:AdjustSpeed(8.15)
                            wait(0.018)
                            if Stomping == false then
                                break 
                            end
                        end
                    end)()
                    RS:UnbindFromRenderStep("Ora")
                    AnimStop(4600078411)
                    AnimPlay(3541114300,0.8)
                    BP.Position = x.Character.Head.Position
                    RS:UnbindFromRenderStep("Looking")
                    RS:BindToRenderStep("Looking", -1 , function()
                        STAND.Character.HumanoidRootPart.CFrame = CFrame.lookAt(STAND.Character.HumanoidRootPart.Position, Vector3.new(x.Character.Head.Position.X, STAND.Character.HumanoidRootPart.Position.Y, x.Character.Head.Position.Z))
                    end)
                    repeat wait()
                        Glide2:Play()
                        BP.Position = x.Character.LowerTorso.Position
                        game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
                    until not x or not x.Character or x == nil or x.Character.Parent == nil or not x.Character:FindFirstChild("LowerTorso") or not x.Character:FindFirstChild("BodyEffects") or not x.Character.BodyEffects:FindFirstChild("Dead") or not x.Character.BodyEffects:FindFirstChild("K.O") or x.Character.BodyEffects["K.O"].Value == false or x.Character.BodyEffects["Dead"].Value == true
                        Looking()
                        Glide2:Stop()
                        Stomping = false
                        STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
                        Summon()
                        if err then
                            Looking()
                            Glide2:Stop()
                            Stomping = false
                            STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
                            Summon()
                        end
                    end
                end)
            end
--//------------------------------------------------------------------------------------------\\--
    elseif (string.lower(chat) == "/e r") then    
        Heavy()
--//------------------------------------------------------------------------------------------\\--
    elseif (string.lower(chat) == "/e rr") then    
        Heavy1()
--//------------------------------------------------------------------------------------------\\--
    elseif string.find(chat,"/e r") then    
        local Target = GetPlayer(chat:match("/e r %s*(.+)"))
            if Target and Target.Character and Target.Character:FindFirstChild("UpperTorso") and Target.Character:FindFirstChild("BodyEffects") then 
                local mag = (OWNER.Character.UpperTorso.Position - Target.Character.UpperTorso.Position).Magnitude
                a = false
                STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-100,0)
                RS:UnbindFromRenderStep("Looking")
                Hit(true)
                repeat RS.Stepped:Wait()
                    for i,v in pairs(STAND.Character.Humanoid:GetPlayingAnimationTracks()) do
                        if v.Animation.AnimationId == 'rbxassetid://2788309317' or v.Animation.AnimationId == 'rbxassetid://2788309982' then
                            a = true
                        end
                    end
                until a == true
                if mag < 15 then
                    wait(0.93)
                elseif mag > 15 and mag < 50 then
                    wait(0.83)
                elseif mag > 50 and mag < 100 then
                    wait(0.73)
                elseif mag > 100 then
                    wait(0.67)
                end
                coroutine.wrap(function()
                    a = false
                    wait(1)
                    a = true
                end)()
                local BP = Instance.new("BodyPosition")
                BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
                BP.P = 10000
                BP.D = 300
                BP.Parent = STAND.Character.HumanoidRootPart
                BP.Position = STAND.Character.HumanoidRootPart.Position
                BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-1).Position
                wait()
                repeat wait()
                    Glide2:Play()
                    BP.Position = Target.Character.HumanoidRootPart.CFrame.Position
                until Target.Character.BodyEffects["K.O"].Value == true or a == true   
                BP:Destroy()
                STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(0,-100,0)
                Glide2:Stop()
                Looking()
            end
--//------------------------------------------------------------------------------------------\\--
    elseif string.find(chat,"Ora!") then    
        local Target = GetPlayer(chat:match("Ora! %s*(.+)"))
            if Target and Target.Character and Target.Character:FindFirstChild("BodyEffects") then 
                RS:UnbindFromRenderStep("Summon")
                STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
                Barrage1 = true
                w = false
                RS:BindToRenderStep("KILL", 1000 , function()
                    if not Target or Target.Parent == nil or not Target.Character:FindFirstChild("BodyEffects") or not Target.Character.BodyEffects:FindFirstChild("K.O") or not Target.Character.BodyEffects:FindFirstChild("Defense") or not Target.Character.BodyEffects:FindFirstChild("Attacking") or not Target.Character.BodyEffects:FindFirstChild("Dead") or not Target.Character.BodyEffects:FindFirstChild("Attacking") or not Target.Character.BodyEffects:FindFirstChild("BreakingParts") then
                        coroutine.wrap(function()
                            RS:UnbindFromRenderStep("KILL")
                            RS.Stepped:wait()
                            Barrage1 = false
                            Summon()
                            print"debug: target barrage summon"
                        end)()
                    end
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do  
                    if v and v.Character and v.Character:FindFirstChild("UpperTorso") and v.Character:FindFirstChild("BodyEffects") and v.Character.BodyEffects:FindFirstChild("Attacking") and v.Character.BodyEffects.Attacking.Value == true and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.FloorMaterial == Enum.Material.Air and v.Name ~= STAND.Name and v.Name ~= OWNER.Name and v.Name ~= Target.Name and (STAND.Character.UpperTorso.Position - v.Character.UpperTorso.Position).Magnitude < 125 then
                        w = true
                        coroutine.wrap(function()
                            wait(1.4)
                            w = false    
                        end)()
                    end
                end
                dist = 7.5
                increase = 8
                local H = Target.Character:WaitForChild("Humanoid")
                if H.MoveDirection.X < 0 then
                    xchange = -increase
                elseif H.MoveDirection.X > 0  then
                    xchange = increase
                else
                    xchange = 0
                end
                if H.MoveDirection.Z < 0 then
                    zchange = -increase
                elseif H.MoveDirection.Z > 0 then
                    zchange = increase
                else
                    zchange = 0   
                end    
                if w == true or Target.Character.BodyEffects["Attacking"].Value == true then
                        STAND.Character.HumanoidRootPart.CFrame = CFrame.new(Target.Character.UpperTorso.Position.X + math.random(-dist,dist) + xchange, Target.Character.UpperTorso.Position.Y + math.random(-7,7), Target.Character.UpperTorso.Position.Z + math.random(-dist,dist) + zchange)
                elseif w == false and Target.Character.BodyEffects["Attacking"].Value ~= true and Target.Character.BodyEffects:FindFirstChild("K.O").Value ~= true then
                    STAND.Character.HumanoidRootPart.CFrame = CFrame.new(Target.Character.UpperTorso.Position.X + math.random(-dist,dist) + xchange, Target.Character.UpperTorso.Position.Y + math.random(-7,7), Target.Character.UpperTorso.Position.Z + math.random(-dist,dist) + zchange)
                    Hit(false)
                elseif Target.Character.BodyEffects["K.O"].Value == true and Target.Character.BodyEffects["Dead"].Value == false then 
                    STAND.Character.HumanoidRootPart.CFrame = CFrame.new(Target.Character.UpperTorso.Position.X , Target.Character.UpperTorso.Position.Y + 1, Target.Character.UpperTorso.Position.Z )
                    game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
                else
                    STAND.Character.HumanoidRootPart.CFrame = CFrame.new(Target.Character.UpperTorso.Position.X, Target.Character.UpperTorso.Position.Y - 10, Target.Character.UpperTorso.Position.Z)
                end
            end)
        end
--//------------------------------------------------------------------------------------------\\--
    elseif (string.lower(chat) == "rejoin!") then    
        wait()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, STAND)
    elseif (string.lower(chat) == "reset!") then    
        for i,v in pairs(STAND.Character:GetChildren()) do
            if v:IsA("BasePart") then
                v:Destroy()
            end
        end
--//------------------------------------------------------------------------------------------\\--
    elseif (string.lower(chat) == "/e pose1") then   
        if Posing1 == false then
            STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
            RS:UnbindFromRenderStep("Summon")
            local BP = Instance.new("BodyPosition")
            BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            BP.P = 2500
            BP.D = 275
            BP.Parent = STAND.Character.HumanoidRootPart
            BP.Position = STAND.Character.HumanoidRootPart.Position
            RS:BindToRenderStep("Summon", -1 , function()
                BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(1.4,1.85,1.7).Position
            end)
            wait(0.05)
            pose1()
        else
            RS:UnbindFromRenderStep("Summon")
            STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
            pose1()
            wait()
            Summon()
        end
--//------------------------------------------------------------------------------------------\\--
    elseif (string.lower(chat) == "/e pose2") then   
        if Posing2 == false then
            STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
            RS:UnbindFromRenderStep("Summon")
            local BP = Instance.new("BodyPosition")
            BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            BP.P = 2500
            BP.D = 275
            BP.Parent = STAND.Character.HumanoidRootPart
            BP.Position = STAND.Character.HumanoidRootPart.Position
            RS:BindToRenderStep("Summon", -1 , function()
                BP.Position = OWNER.Character.HumanoidRootPart.CFrame*CFrame.new(1.38,1.8,1.5).Position
            end)
            wait(0.05)
            pose2()
        else
            RS:UnbindFromRenderStep("Summon")
            STAND.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
            pose2()
            wait()
            Summon()
        end
--//------------------------------------------------------------------------------------------\\--
end
end)
end --// The end of the script.