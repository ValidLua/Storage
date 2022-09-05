getgenv().Settings = {
    ['TIMESTOP Made By JoJo#2494'] = {
       STAND = {ENABLED = false, STAND = ""}, --/ If enabled and you set your stand account username it'll not be affected by timestop. (CANNOT CHANGE BY RE-EXECUTING)
       MODE = {JOTARO = true, DIO = false},  --/ (Keep 1 as true)
       TIME = 5, --/ The amount of seconds that the timestop lasts.
       TSKEYBIND = "T", --/ The keybind of the timestop.
      }
  }
  --//------------------------------------------------------------------------------------------\\--
	if getgenv().TIMESTOPEXECUTED == true then
	return
	else
		getgenv().TIMESTOPEXECUTED = true
	end
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
            if tostring(args[1]) == "DropMoney" or tostring(args[1]) == "TimerDecrease" or  tostring(args[1]) == "Grabbing" or tostring(args[1]) == "Block" or tostring(args[1]) == "Stomp" or tostring(args[1]) == "JoinCrew" or tostring(args[1]) == "PhoneCall" or tostring(args[1]) == "Boombox" or tostring(args[1]) == "BoomboxStop" or tostring(args[1]) == "EnterPromoCode" or tostring(args[1]) == "PurchaseSkinCrate" or tostring(args[1]) == "TimerMoney" or tostring(args[1]) == "Reload" or tostring(args[1]) == "UpdateMousePos" or tostring(args[1]) == "LeaveCrew" then
             else 
              return
             end 
            end
          return old(self, ...)
        end)
  --//------------------------------------------------------------------------------------------\\--
    if Settings['TIMESTOP Made By JoJo#2494'].STAND.ENABLED then
        STAND = game:GetService("Players"):FindFirstChild(Settings['TIMESTOP Made By JoJo#2494'].STAND.STAND)
    else
        STAND = game:GetService("Players").LocalPlayer
    end
    OWNER = game:GetService("Players").LocalPlayer
    TweenService = game:GetService("TweenService")
    rs = game:GetService("RunService")
  --//------------------------------------------------------------------------------------------\\--
    local OriginalKeyUpValue = 0
    function StopAudio()
        OWNER.Character.LowerTorso.BOOMBOXSOUND:Stop()
    end
  --//------------------------------------------------------------------------------------------\\--
    function Stop(ID, Key)
      local cor = coroutine.wrap(function()
      wait(OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
        if OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
          StopAudio()
        end
      end)
    cor()
    end
  --//------------------------------------------------------------------------------------------\\--
    function Play(ID, STOP)
        if OWNER.Backpack:FindFirstChild("[Boombox]") then
            local Tool = nil
            OWNER.Backpack["[Boombox]"].Parent = OWNER.Character
            game:GetService("ReplicatedStorage").MainEvent:FireServer("Boombox", ID)
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
            if STOP == true then
                OWNER.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
                local cor = coroutine.wrap(function()
                    repeat wait() until OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.0001
                    OriginalKeyUpValue = OriginalKeyUpValue+1
                    Stop(ID, OriginalKeyUpValue)
                end)
                cor()
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
  game:GetService("UserInputService").InputBegan:Connect(function(Key)
    if Key.KeyCode == Enum.KeyCode[Settings['TIMESTOP Made By JoJo#2494'].TSKEYBIND] then
     if _G.TimeStopped or game:GetService("UserInputService"):GetFocusedTextBox() then return end
      pcall(function()
      _G.TimeStopped = true
    if Settings['TIMESTOP Made By JoJo#2494'].MODE.JOTARO then 
      Chat("Star Platinum! ZA WARUDO") 
      Play(6177218030,true)
    else  
      Play(7514417921,true)
      Chat("ZA WARUDO!")
    end
    repeat rs.Stepped:Wait() until OWNER.Character.LowerTorso.BOOMBOXSOUND:GetPropertyChangedSignal("SoundId"):Connect(function() end)
  --//------------------------------------------------------------------------------------------\\--
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    if v.Name ~= OWNER.Name and v.Name ~= STAND.Name then
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/mute " .. v.Name, "all")
    end
    end
  --//------------------------------------------------------------------------------------------\\--
    if Settings['TIMESTOP Made By JoJo#2494'].MODE.JOTARO then 
      wait(2.23)
      Play(1732714285,true)
    else
      wait(2)
    end
    game:GetService("Lighting").Sky.CelestialBodiesShown = false
    game:GetService("Lighting").SunRays.Enabled = false
  --//------------------------------------------------------------------------------------------\\--
    rs:BindToRenderStep("STOPTIME", -1000 , function()
        local notifiedRespectFiltering = false
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Name ~= OWNER.Name and v.Name ~= STAND.Name then
                    task.spawn(function()
                        pcall(function()
                            if v.Character:FindFirstChild("LowerTorso"):FindFirstChild("BOOMBOXSOUND") and v.Character.LowerTorso.BOOMBOXSOUND.Playing == true then
                                v.Character.LowerTorso.BOOMBOXSOUND.Playing = false
                            end
                            if v.Character:FindFirstChildWhichIsA("Tool") and v.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Handle") then
                              if v.Character:FindFirstChildWhichIsA("Tool"):FindFirstChildWhichIsA("MeshPart") then
                                  v.Character:FindFirstChildWhichIsA("Tool"):FindFirstChildWhichIsA("MeshPart").Transparency = 1
                              end
                                for i,b in pairs(v.Character:FindFirstChildWhichIsA("Tool").Handle:GetChildren()) do
                                    if b:IsA("Sound") then
                                       b.Playing = false
                                    end
                                for i,c in pairs(v.Character.HumanoidRootPart:GetChildren()) do
                                    if c:IsA("Sound") then
                                       c.Playing = false
                                    end
                                end
                            end
                        end
                    end)
                end)
            end
        end
    end)
  --//------------------------------------------------------------------------------------------\\--
    rs:BindToRenderStep("STOPTIME1", -1000 , function()
      for i,v in pairs(game:GetService("Workspace").Ignored:GetChildren()) do
        if v:IsA("BasePart") and v.Name == "BULLET_RAYS" or v.Name == "Launcher" or v.Name == "exprosion" then
          v:Destroy()
        end
      end
      for i,v in pairs(game:GetService("Workspace").Ignored.Drop:GetChildren()) do
        if v:IsA("BasePart") then
          v.Anchored = true
         end
        end
    end)
  --//------------------------------------------------------------------------------------------\\--
    rs:BindToRenderStep("STOPTIME2", 1000 , function()
      for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v and v.Character and v.Character:FindFirstChild("Humanoid") then
          v.Character.Humanoid.HealthDisplayType = "AlwaysOff"
        end
       if v and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
        for i,b in pairs(v.Character:GetChildren()) do
          if b:IsA("MeshPart") and v.Name ~= OWNER.Name and v.Name ~= STAND.Name then
            b.Anchored = true
          end
         end
        end
      end
     end)
    TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.5), {FieldOfView = 80}):Play()
    TweenService:Create(game:GetService("Lighting").ColorCorrection, TweenInfo.new(0.8), {Saturation = -2}):Play()
    local blur = Instance.new("BlurEffect", game:GetService("Lighting"))
    TweenService:Create(blur, TweenInfo.new(2), {Size = 4}):Play()
    wait(0.5)
    TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.55), {FieldOfView = 40}):Play()
    wait(0.2)
    TweenService:Create(game:GetService("Lighting").ColorCorrection, TweenInfo.new(0.3), {Saturation = -1}):Play()
    TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.5), {FieldOfView = 70}):Play()
    game:GetService("Lighting").ColorCorrection.TintColor = Color3.fromRGB(250,250,250)
    TweenService:Create(blur, TweenInfo.new(0.8), {Size = 0}):Play()
    wait(Settings['TIMESTOP Made By JoJo#2494'].TIME)
    _G.TimeStopped = false
  --//------------------------------------------------------------------------------------------\\--
    rs:UnbindFromRenderStep("STOPTIME")
    rs:UnbindFromRenderStep("STOPTIME1")
    rs:UnbindFromRenderStep("STOPTIME2")
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
       if v and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
        for i,b in pairs(v.Character:GetChildren()) do
          if b:IsA("MeshPart") and v.Name ~= OWNER.Name and v.Name ~= STAND.Name then
            b.Anchored = false
          end
        end
      end
    end
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v and v.Character and v.Character:FindFirstChildWhichIsA("Tool") and v.Character:FindFirstChildWhichIsA("Tool"):FindFirstChildWhichIsA("MeshPart") then
            v.Character:FindFirstChildWhichIsA("Tool"):FindFirstChildWhichIsA("MeshPart").Transparency = 0
        end
        for i,b in pairs(v.Backpack:GetDescendants()) do
          if b:FindFirstChildWhichIsA("MeshPart") and b:FindFirstChildWhichIsA("MeshPart").Transparency == 1 then
               b:FindFirstChildWhichIsA("MeshPart").Transparency = 0
            end
        end
    end
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v and v.Character and v.Character:FindFirstChild("Humanoid") then
            v.Character.Humanoid.HealthDisplayType = "DisplayWhenDamaged"
        end
        if v.Name ~= OWNER.Name and v.Name ~= STAND.Name then
          game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/unmute " .. v.Name, "all")
        end
    end
    for i,v in pairs(game:GetService("Workspace").Ignored.Drop:GetChildren()) do
        if v:IsA("BasePart") then
         v.Anchored = false
        end
    end
    TweenService:Create(game:GetService("Lighting").ColorCorrection, TweenInfo.new(0.8), {Saturation = 0}):Play()
    if Settings['TIMESTOP Made By JoJo#2494'].MODE.JOTARO then 
      Chat("Time will flow again..")
      Play(2554016882,true)
    end
    repeat rs.Stepped:Wait() until OWNER.Character.LowerTorso.BOOMBOXSOUND:GetPropertyChangedSignal("SoundId"):Connect(function() end)
    game:GetService("Lighting").Sky.CelestialBodiesShown = true
    game:GetService("Lighting").SunRays.Enabled = true
    _G.TimeStopped = false
      end)
    end
    end)
  --//------------------------------------------------------------------------------------------\\--