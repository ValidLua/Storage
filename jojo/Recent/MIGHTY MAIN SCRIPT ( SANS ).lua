    --//------------------------------------------------------------------------------------------\\--
    getgenv().MAIN = {
        FPS = 90,
        TITAN = false,
        ANTIFLING = true,
        ['GODMODE'] = {
        GODV3 = true,
        FULL = true,
        }
    }
    --//------------------------------------------------------------------------------------------\\--
    if not game['Loaded'] or not game:GetService("Players").LocalPlayer then 
        game['Loaded']:Wait();
        game:WaitForChild(game:GetService('Players')); 
        game:GetService('Players'):WaitForChild(game:GetService("Players").LocalPlayer.Name)
    end 
    --//------------------------------------------------------------------------------------------\\--
    if tonumber(MAIN.FPS) then
        setfpscap(MAIN.FPS)
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
    if tostring(args[1]) == "DropMoney" or tostring(args[1]) == "TimerDecrease" or  tostring(args[1]) == "Grabbing" or tostring(args[1]) == "Block" or tostring(args[1]) == "Stomp" or tostring(args[1]) == "JoinCrew" or tostring(args[1]) == "PhoneCall" or tostring(args[1]) == "Boombox" or tostring(args[1]) == "BoomboxStop" or tostring(args[1]) == "EnterPromoCode" or tostring(args[1]) == "PurchaseSkinCrate" or tostring(args[1]) == "TimerMoney" or tostring(args[1]) == "Reload" or tostring(args[1]) == "UpdateMousePos" or tostring(args[1]) == "FireworkText" or tostring(args[1]) == "GunCombatToggle" or tostring(args[1]) == "LeaveCrew" or tostring(args[1]) == "AnimationPack" or tostring(args[1]) == "EquipWeaponSkins" or tostring(args[1]) == "REPORT_PLAYER" or tostring(args[1]) == "IS_MOBILE" or tostring(args[1]) == "GamePurchase" then
    else 
    print(tostring(args[1])) return
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
    local SpoofTable = {
        WalkSpeed = 16,
        JumpPower = 50}
    local __index
    __index = hookmetamethod(game, "__index", function(t, k)
        if (not checkcaller() and t:IsA("Humanoid") and (k == "WalkSpeed" or k == "JumpPower")) then
            return SpoofTable[k]
        end
        return __index(t, k)
    end)
    local __newindex
    __newindex = hookmetamethod(game, "__newindex", function(t, k, v)
        if (not checkcaller() and t:IsA("Humanoid") and (k == "WalkSpeed" or k == "JumpPower")) then
            SpoofTable[k] = v
            return
        end
            return __newindex(t, k, v)
    end)
    --//------------------------------------------------------------------------------------------\\--
        game:GetService("Players").PlayerAdded:Connect(function(Player)
            if Player:WaitForChild("Backpack"):FindFirstChild("AdminBan") then
                OWNER:Kick("Admin has joined the server.")
            end
        end)
    --//------------------------------------------------------------------------------------------\\--
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v and v:WaitForChild("Backpack"):FindFirstChild("AdminBan") then
                OWNER:Kick("Admin was in the server.")
            end
        end
    --//------------------------------------------------------------------------------------------\\--
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    --//------------------------------------------------------------------------------------------\\--
    OWNER = game:GetService("Players").LocalPlayer
    RS = game:GetService("RunService")
    TS = game:GetService("TweenService")
    ANIM = OWNER.Character:WaitForChild("Animate")
    --//------------------------------------------------------------------------------------------\\--
    OWNER.CameraMaxZoomDistance = math.huge
    --//------------------------------------------------------------------------------------------\\--
    coroutine.wrap(function()
    if MAIN["GODMODE"].GODV3 then
        game:GetService("StarterPlayer").StarterCharacterScripts["CheckingKOED                                                                   ."]:Destroy()
        for i,v in pairs(OWNER.Character:GetChildren()) do
            if v.ClassName == 'Script' then
            v:Destroy()
            end
        end
        end  
    end)()
    --//------------------------------------------------------------------------------------------\\--
    coroutine.wrap(function()
    if MAIN["GODMODE"].FULL then
        local newCharacter =  game.Workspace:WaitForChild(OWNER.Name)
        local spoofFolder = Instance.new('Folder');
        spoofFolder.Name = 'FULLY_LOADED_CHAR';
        spoofFolder.Parent = newCharacter;
        newCharacter:WaitForChild('RagdollConstraints'):Destroy();
        local spoofValue = Instance.new('BoolValue', newCharacter);
        spoofValue.Name = 'RagdollConstraints';         
        OWNER.Character.BodyEffects.Defense:Destroy()
        Defense = Instance.new("IntValue", OWNER.Character.BodyEffects)
        Defense.Name = "Defense"
        Defense.Value = 101
        OWNER.Character:WaitForChild('BodyEffects').Armor:Destroy()
        OWNER.Character:WaitForChild('BodyEffects')["BreakingParts"]:Destroy()
        local Clone1 = Instance.new("IntValue")
        local Clone2 = Instance.new("Folder")
        Clone1.Name = "Armor"
        Clone1.Value = 101
        Clone1.Parent = OWNER.Character.BodyEffects
        Clone2.Name = "BreakingParts"
        Clone2.Parent = OWNER.Character.BodyEffects
    else
        coroutine.wrap(function()
            OWNER.Character:WaitForChild("BodyEffects"):WaitForChild("Defense"):WaitForChild('CurrentTimeBlock'):Destroy()
        end)()
    RS.RenderStepped:connect(function()
    game:GetService("ReplicatedStorage").MainEvent:FireServer('Block', OWNER.Name)
        for i,v in pairs(OWNER.Character.Humanoid:GetPlayingAnimationTracks()) do
        if v.Name == 'Block' then
        v:Stop() 
        end
        end
    end)
    end
    end)()
    --//------------------------------------------------------------------------------------------\\--
    repeat
        RS.Stepped:Wait()
        OWNER.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].Head.Position)
        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].ClickDetector)
    until OWNER.Backpack:FindFirstChild("Mask")
    local MASK = OWNER.Backpack:FindFirstChild("Mask")
    MASK.Parent = OWNER.Character
    MASK:Activate()
    MASK.Parent = OWNER.Backpack
    OWNER.Character:WaitForChild('In-gameMask'):FindFirstChild('Handle'):Destroy()
    OWNER.Character:WaitForChild('In-gameMask'):WaitForChild(""):WaitForChild("Head").CanCollide = false
    MASK.Activated:Connect(function()
    pcall(function()
        repeat RS.Stepped:Wait() until OWNER.Character:FindFirstChild('In-gameMask') or OWNER.Backpack:FindFirstChild('In-gameMask')
            if MASK.Parent == OWNER.Character then
                OWNER.Character:WaitForChild('In-gameMask'):FindFirstChild('Handle'):Destroy()
                OWNER.Character:WaitForChild('In-gameMask'):WaitForChild("").Head.CanCollide = false
            end
        end)
    end)
    --//------------------------------------------------------------------------------------------\\--
    coroutine.wrap(function()
    RS.Stepped:Connect(function()
    OWNER.Character.Head.CanCollide = false
    OWNER.Character.UpperTorso.CanCollide = false        
    OWNER.Character.HumanoidRootPart.CanCollide = false
    OWNER.Character.LowerTorso.CanCollide = false
    end)
    end)()
    --//------------------------------------------------------------------------------------------\\--
    coroutine.wrap(function()
        local AppendName = function(plr)
        if plr and plr:IsA('Player') and plr.Character and plr.Character:FindFirstChildWhichIsA('Humanoid') then
        local CharAdded =  
        plr.CharacterAdded:Connect(function(Char)
        local CT = tick()
        repeat wait() until plr:HasAppearanceLoaded() and plr.Character and plr.Character:FindFirstChildWhichIsA('Humanoid') or CT - tick() > 5
        if CT - tick() > 5 then
        return end
        local Char = plr.Character
        local Hum = Char:FindFirstChildWhichIsA('Humanoid')
        if Hum.DisplayName ~= plr.Name and not Hum.DisplayName:find(plr.Name) then
        Hum.DisplayName = plr.Name
        Hum.DisplayDistanceType = "Viewer" 
        end
        end)
        local CT = tick()
        repeat wait() until plr:HasAppearanceLoaded() and plr.Character and plr.Character:FindFirstChildWhichIsA('Humanoid') or CT - tick() > 5
        if CT - tick() > 5 then
        return
        end
        local Char = plr.Character
        local Hum = Char:FindFirstChild('Humanoid') or Char:WaitForChild('Humanoid')
        if Char and Hum then
        if Hum.DisplayName ~= plr.Name and not Hum.DisplayName:find(plr.Name) then
        Hum.DisplayName = plr.Name
        Hum.DisplayDistanceType = "Viewer" 
        end
        end
        end
        end
        game:GetService('Players').PlayerAdded:Connect(function(plr) 
        AppendName(plr)
        end)
        while true do
        wait(10)
        local success, err = pcall(function()
        for _, v in next, game:GetService('Players'):GetPlayers() do
        coroutine.wrap(function()
        if v.Name ~= OWNER then
        AppendName(v)
        if v.Character:FindFirstChild("In-gameMask") and v ~= OWNER then
        v.Character["In-gameMask"]:Destroy()
        end
        AppendName(v)
        v.Character.Humanoid.DisplayDistanceType = "Viewer" 
        end
        end)()
        end
        end)
        end
    end)()
    --//------------------------------------------------------------------------------------------\\--
    if MAIN.ANTIFLING then
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
        if v ~= OWNER then
            PlayerAdded(v)
        end
        end
        Services.Players.PlayerAdded:Connect(PlayerAdded)
        local LastPosition = nil
        Services.RunService.Heartbeat:Connect(function()
        pcall(function()
            local PrimaryPart = OWNER.Character.PrimaryPart
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
    local OriginalKeyUpValue = 0
    function StopAudio()
        OWNER.Character.LowerTorso.BOOMBOXSOUND:Stop()
    end
    --//------------------------------------------------------------------------------------------\\--
    function stop(ID, Key)
        local cor = coroutine.wrap(function()
            wait(OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
            if OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
                StopAudio()
            end
        end)
        cor()
    end
    --//------------------------------------------------------------------------------------------\\--
    function Play(ID)
        if OWNER.Backpack:FindFirstChild("[Boombox]") then
            local Tool = nil
            OWNER.Backpack["[Boombox]"].Parent = OWNER.Character
            game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
            OWNER.Character["[Boombox]"].RequiresHandle = false
            if OWNER.Character["[Boombox]"]:FindFirstChild("Handle") then
            OWNER.Character["[Boombox]"].Handle:Destroy()
            end
            OWNER.Character["[Boombox]"].Parent = OWNER.Backpack
            OWNER.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
            if Tool ~= true then
                if Tool then
                    Tool.Parent = OWNER.Character
                end
            end
            OWNER.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
                local cor = coroutine.wrap(function()
                    repeat wait() until OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.0001
                    OriginalKeyUpValue = OriginalKeyUpValue+1
                    stop(ID, OriginalKeyUpValue)
                end)
            cor()
        end
    end
    --//------------------------------------------------------------------------------------------\\--
    if MAIN.TITAN then
    coroutine.wrap(function()
    repeat wait() until OWNER.Character:FindFirstChild("FULLY_LOADED_CHAR")
            local function rm()
            for i, v in pairs(OWNER.Character:GetDescendants()) do
                if v.Name == "OriginalPosition" then
                v:Destroy()
                elseif v.Name == "OriginalSize" then
                v:Destroy()
                elseif v.Name == "AvatarPartScaleType" then
                v:Destroy()
                end
            end
            end
            if OWNER.Character.Humanoid:FindFirstChild("BodyWidthScale") then
                rm()
                wait(0.6)
                OWNER.Character.Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
                wait(0.6)
            end
    end)()
    end
    --//------------------------------------------------------------------------------------------\\--
	coroutine.wrap(function()
			lp = game:GetService("Players").LocalPlayer
			gui = lp:WaitForChild("PlayerGui"):WaitForChild("MainScreenGui")
			bar = gui:WaitForChild("Bar")
			Bone = lp.Character:WaitForChild("BodyEffects"):WaitForChild("Defense")
			Energy = bar:WaitForChild("Energy")
			Energy.TextLabel.Text = "Bone Energy  "
			Energy.bar.BackgroundColor3 = Color3.new(0,0.45,1)
			Energy.Picture.Image.BackgroundColor3 = Color3.new(0,0.45,1)
			Energy.Picture.Image.ImageColor3 = Color3.new(0,0.45,1)
	end)()
    Mouse = OWNER:GetMouse()
    TweenService = game:GetService("TweenService")
 
    Mouse.KeyDown:connect(function()
    if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.T) then return end
    if not Mouse.Target then return end
    local pos = Mouse.Hit.p
    Play(6464006404)
    TweenService:Create(game:GetService("Lighting").ColorCorrection, TweenInfo.new(0.13), {Saturation = -1.25}):Play()
    coroutine.wrap(function()
		for i = 1, 35 do
			RS.Stepped:Wait()
			Bone.Value = Bone.Value - 1
		end
		repeat
			wait()
			Bone.Value = Bone.Value + 1
		until Bone.Value == 100 or Bone.Value > 100 
		Bone.Value = 100
	end)()
    OWNER.Character:MoveTo(pos + Vector3.new(0,3.13,0))
    wait(0.3)
    if sansmode == false then
        TweenService:Create(game:GetService("Lighting").ColorCorrection, TweenInfo.new(0.5), {Saturation = 0}):Play()
    end
    end)
    --//------------------------------------------------------------------------------------------\\--
	function AnimPlay(ID, SPEED)
		local animation = Instance.new('Animation', game:GetService("Workspace"))
		animation.AnimationId = 'rbxassetid://'..ID
		playing = OWNER.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
		playing:Play() 
            if tonumber(SPEED) then
                playing:AdjustSpeed(SPEED)
            else
                playing:AdjustSpeed(1)
            end
        animation:Destroy()
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
	function AnimStop(ID, SPEED)
		for i,v in pairs(OWNER.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
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
    function Chat(msg)
        local A_1 = msg
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
    end
    --//------------------------------------------------------------------------------------------\\--
    --/ DA HOOD ADMIN \--
    getgenv().MUTED = {}
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
    RS.RenderStepped:Connect(function()
    local notifiedRespectFiltering = false
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if (table.find(MUTED, v.Name)) then
            task.spawn(function()
            pcall(function()
            if v and v.Character and v.Character:FindFirstChild("LowerTorso"):FindFirstChild("BOOMBOXSOUND") then
                v.Character.LowerTorso.BOOMBOXSOUND.Playing = false
                end
            end)
        end)
        end
    end
    end)
    --//------------------------------------------------------------------------------------------\\--
    game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(msg)
        if msg.FromSpeaker == tostring(OWNER.Name) then
            local chat = msg.Message:lower()
            if string.find(chat,":mute") then    
                local Player = GetPlayer(msg.Message:match(":mute %s*(.+)"))
                table.insert(MUTED,Player.Name)
            elseif string.find(chat,":unmute") then    
                local Player = GetPlayer(msg.Message:match(":unmute %s*(.+)"))
            if table.find(MUTED, Player) then
                table.remove(Player)
            end	
            elseif string.find(chat,":kill") then    
                local Player = GetPlayer(msg.Message:match(":kill %s*(.+)"))
                Play(6755792451)
            elseif string.find(chat,":fling") then    
                local Player = GetPlayer(msg.Message:match(":fling %s*(.+)"))
                Play(3015952873)
            else 
				Play(5490408839)
            end
        end
    end)
    --//------------------------------------------------------------------------------------------\\--
    sansmode = false
    Speed = 1
    local UIS = game:GetService("UserInputService")
    RS:BindToRenderStep("Speed", -1, function()
		if sansmode == true then
			if UIS:IsKeyDown(Enum.KeyCode.W) then
				if game:GetService("UserInputService"):GetFocusedTextBox() then return end
				OWNER.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-Speed)
			end
			if UIS:IsKeyDown(Enum.KeyCode.A) then
				if game:GetService("UserInputService"):GetFocusedTextBox() then return end
				OWNER.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame * CFrame.new(-Speed,0,0)
			end
			if UIS:IsKeyDown(Enum.KeyCode.S) then
				if game:GetService("UserInputService"):GetFocusedTextBox() then return end
				OWNER.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,Speed)
			end
			if UIS:IsKeyDown(Enum.KeyCode.D) then
				if game:GetService("UserInputService"):GetFocusedTextBox() then return end
				OWNER.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame * CFrame.new(Speed,0,0)
			end
		end
	end)
    --//------------------------------------------------------------------------------------------\\--
    CreateKeybind("Q", function()
        if sansmode == false then
            AnimPlay(9527885267,1)
            TweenService:Create(game:GetService("Lighting").ColorCorrection, TweenInfo.new(2), {Saturation = -1.25}):Play()
            coroutine.wrap(function()
                for i = 1, 100 do
                    RS.Stepped:Wait()
                    Bone.Value = Bone.Value - 1
                end
                wait(0.1)
                repeat
                    RS.Stepped:Wait()
                    Bone.Value = Bone.Value + 1
                until Bone.Value == 100 or Bone.Value > 100 
                Bone.Value = 100
            end)()
            wait(1)
            Play(6833829503)
            wait(0.2)
            OWNER.PlayerGui.MainScreenGui.Bar.HP.Picture.Life.Visible = true
            OWNER.PlayerGui:WaitForChild("MainScreenGui"):WaitForChild("Bar"):WaitForChild("HP"):WaitForChild("Picture"):WaitForChild("Life").Visible = true
            wait(0.9)
            AnimStop(9527885267)
			sansmode = true
        else
            TweenService:Create(game:GetService("Lighting").ColorCorrection, TweenInfo.new(0.5), {Saturation = 0}):Play()
            wait(0.5)
            OWNER.PlayerGui.MainScreenGui.Bar.HP.Picture.Life.Visible = false
            OWNER.PlayerGui:WaitForChild("MainScreenGui"):WaitForChild("Bar"):WaitForChild("HP"):WaitForChild("Picture"):WaitForChild("Life").Visible = false
            sansmode = false
        end
    end)

    CreateKeybind("E", function()
        AnimPlay(2788838708,2)
        Play(5880986785)
    end)
    
    RS.RenderStepped:Connect(function()
    local notifiedRespectFiltering = false
		task.spawn(function()
			pcall(function()
				if OWNER and OWNER.Character and OWNER.Character:FindFirstChild("[Shotgun]") then		
					OWNER.Character["[Shotgun]"].Handle.ShootSound.Playing = false
				end
			end)
		end)
    end)
    
	coroutine.wrap(function()
	lp = game:GetService("Players").LocalPlayer
	rs = game:GetService("RunService")
	blaster = lp.Backpack:WaitForChild("[Shotgun]")
	blaster.GripPos = Vector3.new(1, -0.1, 2.4)
	blaster.TextureId = "rbxassetid://3536831972"
	blaster.Handle.ShootBBGUI:Destroy()
	blaster.Activated:Connect(function()
		coroutine.wrap(function()
			game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(0.2), {FieldOfView = 85}):Play()
			wait(0.15)
			game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(0.3), {FieldOfView = 70}):Play()
		end)()
		AnimPlay(2809419094,1.5)
		game:GetService("VirtualInputManager"):SendKeyEvent(true,"R",false,game)
		coroutine.wrap(function()
			wait(0.125)
			Play(8876214443)
			blaster.Parent = lp.Backpack
			rs.Stepped:Wait()
			blaster.Parent = lp.Character
		end)()
		coroutine.wrap(function()
			for i = 1, 30 do
				RS.Stepped:Wait()
				Bone.Value = Bone.Value - 1.25
			end
			repeat
				RS.Stepped:Wait()
				Bone.Value = Bone.Value + 1
			until Bone.Value == 100 or Bone.Value > 100 
			Bone.Value = 100
		end)()
	end)
	_G.InvisGun = true
	local ValidGuns = {}
	function AddGun(Name)
		table.insert(ValidGuns, "["..Name.."]")
	end
	AddGun("Shotgun")
	game.Players.LocalPlayer.Character.DescendantAdded:Connect(function(Desc)
		for i, v in pairs(ValidGuns) do
			if Desc.Name == v and _G.InvisGun == true then
				Desc:FindFirstChild('Default'):Destroy()
			end
		end
	end)
	coroutine.wrap(function()
		rs.RenderStepped:connect(function()
			for i,v in pairs(lp.Character.Humanoid:GetPlayingAnimationTracks()) do
				if v.Animation.AnimationId == 'rbxassetid://2877910736' or v.Animation.AnimationId == 'rbxassetid://2807049953' or v.Animation.AnimationId == 'rbxassetid://2809413000' then
					v:Stop() 
				end
			end
		end)
	end)()
	lp = game:GetService("Players").LocalPlayer
	rs = game:GetService("RunService")

	game:GetService("Workspace").Ignored.ChildAdded:Connect(function(child)
		if child.Name == "BULLET_RAYS" and OWNER.Character:FindFirstChild("[Shotgun]") then
			local mag = (lp.Character.HumanoidRootPart.Position - child.Position).Magnitude
			if mag < 3.3 then
				child:WaitForChild("PointLight"):Destroy()
				child:WaitForChild("GunBeam").Color = ColorSequence.new(Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
				child:WaitForChild("GunBeam").Brightness = 100
				child:WaitForChild("GunBeam").Width0 = 0.78
				child:WaitForChild("GunBeam").Width1 = 0.78
				child:WaitForChild("GunBeam").TextureLength = -0.1
			end
		end
	end)
	end)()