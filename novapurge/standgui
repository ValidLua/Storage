-- By JoJo#2494
-- Script Name: Nova Stand Gui
-- https://discord.io/legacyx
-- https://discord.gg/jojow

local UILibrary =
    loadstring(
    game:HttpGet("https://raw.githubusercontent.com/boop71/cappuccino/main/ui%20libraries/other/twinklib/module.lua")
)()

function Chat(NovaPurge)
    game.Players:Chat(NovaPurge)
end

assert(getrawmetatable)
gmt = getrawmetatable(game)
setreadonly(gmt, false)
old = gmt.__namecall
gmt.__namecall =
	newcclosure(
		function(self, ...)
		local args = {...}
		if tostring(args[1]) == "BreathingHAMON" then
			return
		elseif tostring(args[1]) == "TeleportDetect" then
			return
		elseif tostring(args[1]) == "CHECKER_1" then
			return
		elseif tostring(args[1]) == "CHECKER" then
			return
		elseif tostring(args[1]) == "GUI_CHECK" then
			return
		elseif tostring(args[1]) == "OneMoreTime" then
			return
		elseif tostring(args[1]) == "checkingSPEED" then
			return
		elseif tostring(args[1]) == "BANREMOTE" then
			return
		elseif tostring(args[1]) == "PERMAIDBAN" then
			return
		elseif tostring(args[1]) == "KICKREMOTE" then
			return
		elseif tostring(args[1]) == "BR_KICKPC" then
			return end

    return old(self, ...)
end)
--// [Creating Gui]
local MainUI = UILibrary.Load("Nova Gui Stand")
--// [Tabs]
local FirstPage = MainUI.AddPage("Home!")
local SecondPage = MainUI.AddPage("Local Player!")
local ThirdPage = MainUI.AddPage("Commands!")

local SummonNStop =
    FirstPage.AddToggle(
    "Summon / Stop!",
    false,
    function(bool)
		if bool then
            Chat('Summon!')
        else
            Chat('Stop!')
        end
    end
)

local Playing =
    FirstPage.AddToggle(
    "Play Song! / Stop Song!",
    false,
    function(bool)
		if bool then
            Chat('Song!')
        else
            Chat('/e stopaudio')
        end
    end
)

local Drop =
    FirstPage.AddButton(
    "Stop Audio!",
    function()
        Chat('/e stopaudio')
    end
)

local Combat =
    FirstPage.AddLabel(
    "Combat!",
    function()
    end
)

local b =
    FirstPage.AddLabel(
    "/e b [plr] - brings a player",
    function()
    end
)

local t =
    FirstPage.AddLabel(
    "/e t [plr] - targets a player",
    function()
    end
)

local tt =
    FirstPage.AddLabel(
    "/e t2 [plr] - loop kills the player",
    function()
    end
)

local Drop =
    FirstPage.AddButton(
    "Drop!",
    function()
        Chat('Drop!')
    end
)

local Sky =
    FirstPage.AddButton(
    "Sky!",
    function()
        Chat('Sky!')
    end
)

local Void =
    FirstPage.AddButton(
    "Void!",
    function()
        Chat('Void!')
    end
)

local Jail =
    FirstPage.AddButton(
    "Jail!",
    function()
        Chat('Jail!')
    end
)

local AttackUnAttack =
    FirstPage.AddToggle(
    "Attack! / Unattack!",
    false,
    function(bool)
        if bool then
            Chat('Attack!')
        else
            Chat('Unattack!')
        end
    end
)

local MimicUnMimic =
    FirstPage.AddToggle(
    "Mimic! / Unmimic!",
    false,
    function(bool)
        if bool then
            Chat('Mimic!')
        else
            Chat('Unmimic!')
        end
    end
)

local auranoaura =
    FirstPage.AddToggle(
    "Aura! / Noaura!!",
    false,
    function(bool)
        if bool then
            Chat('Aura!')
        else
            Chat('Noaura!')
        end
    end
)

local Hide =
    FirstPage.AddButton(
    "Hide!",
    function()
        Chat('Hide!')
    end
)

local Requiem =
    FirstPage.AddButton(
    "Requiem!",
    function()
        Chat('Requiem!')
    end
)

local Power =
    FirstPage.AddButton(
    "Power!",
    function()
        Chat('Power!')
    end
)

local Ora =
    FirstPage.AddButton(
    "Ora!",
    function()
        Chat('Ora!')
    end
)

local Save =
    FirstPage.AddButton(
    "Save!",
    function()
        Chat('Save!')
    end
)

local HeavyLight =
    FirstPage.AddToggle(
    "Heavy! / Light!",
    false,
    function(bool)
        if bool then
            Chat('Heavy!')
        else
            Chat('Light!')
        end
    end
)

local BarrageNobarrage =
    FirstPage.AddToggle(
    "Barrage! / Nobarrage!",
    false,
    function(bool)
        if bool then
            Chat('Barrage!')
        else
            Chat('Nobarrage!')
        end
    end
)

local Misc =
    FirstPage.AddLabel(
    "Misc!",
    function()
    end
)

local VanishAppear =
    FirstPage.AddToggle(
    "Vanish / Appear!",
    false,
    function(bool)
        if bool then
            Chat('Vanish!')
        else
            Chat('Appear!')
        end
    end
)

local Leave =
    FirstPage.AddButton(
    "Leave!",
    function()
        Chat('Leave!')
    end
)

local Rejoin =
    FirstPage.AddButton(
    "Rejoin!",
    function()
        Chat('Rejoin!')
    end
)

local Synapse =
    FirstPage.AddButton(
    "Synapse! [MUST HAVE SYNAPSE]",
    function()
        Chat('Synapse!')
    end
)

local Bind =
    FirstPage.AddToggle(
    "Bind! / Unbind!",
    false,
    function(bool)
        if bool then
            Chat('Bind!')
        else
            Chat('Unbind!')
        end
    end
)

local Reset =
    FirstPage.AddButton(
    "Reset!",
    function()
        Chat('Reset!')
    end
)

local Evolve =
    FirstPage.AddButton(
    "Evolve!",
    function()
        Chat('Evolve!')
    end
)

local DropCash =
    FirstPage.AddButton(
    "DropCash!",
    function()
        Chat('DropCash!')
    end
)

local Noface =
    FirstPage.AddButton(
    "No Face!",
    function()
        Chat('/e noface')
    end
)
local CrewUncrew =
    FirstPage.AddToggle(
    "Crew! / Uncrew!",
    false,
    function(bool)
        if bool then
            Chat('Crew!')
        else
            Chat('Uncrew!')
        end
    end
)

local Teleports =
    FirstPage.AddLabel(
    "Teleports!",
    function()
    end
)

local ToBank =
    FirstPage.AddButton(
    "To Bank!",
    function()
        Chat('To Bank!')
    end
)

local ToBase =
    FirstPage.AddButton(
    "To Base!",
    function()
        Chat('To Base!')
    end
)

local ToShop =
    FirstPage.AddButton(
    "To Shop!",
    function()
        Chat('To Shop1!')
    end
)

local ToShopp =
    FirstPage.AddButton(
    "To Shop2!",
    function()
        Chat('To Shop2!')
    end
)

local ToClub =
    FirstPage.AddButton(
    "To Club!",
    function()
        Chat('To Club!')
    end
)

local ToSchool =
    FirstPage.AddButton(
    "To School!",
    function()
        Chat('To School!')
    end
)

local ToPark =
    FirstPage.AddButton(
    "To Park!",
    function()
        Chat('To Park!')
    end
)

local ToUfo =
    FirstPage.AddButton(
    "To Ufo!",
    function()
        Chat('To Ufo!')
    end
)


local ToCasino =
    FirstPage.AddButton(
    "To Casino!",
    function()
        Chat('To Casino!')
    end
)

local StandPos =
    FirstPage.AddLabel(
    "Stand Positions!",
    function()
    end
)

local Left =
    FirstPage.AddButton(
    "Left!",
    function()
        Chat('Left!')
    end
)

local Right =
    FirstPage.AddButton(
    "Right!",
    function()
		Chat('Right!')
    end
)

local Back =
    FirstPage.AddButton(
    "Back!",
    function()
        Chat('Back!')
    end
)

local Credit  =
    FirstPage.AddLabel(
    "Owner : JoJo#2494",
    function()
    end
)

local Credit  =
    FirstPage.AddLabel(
    "discord.gg/jojoW",
    function()
    end
)
--// [Second Page / Local Player]

local LocalPlayer =
    SecondPage.AddLabel(
    "Local Player!",
    function()
    end
)

local Jojopose =
    SecondPage.AddButton(
    "JoJo Pose!",
    function()
	repeat
		game:GetService('RunService').RenderStepped:Wait();
	until game:GetService('Players').LocalPlayer.Character:FindFirstChild('FULLY_LOADED_CHAR');
	if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Animate'):FindFirstChild('idle'):FindFirstChild('Animation2') then
		game:GetService('Players').LocalPlayer.Character:FindFirstChild('Animate'):FindFirstChild('idle'):FindFirstChild('Animation2'):Destroy();
	end;

	local Posing = false;
	local Key = 0;

	local Fashionable = Instance.new('Animation', game:GetService('ReplicatedStorage'):FindFirstChild('ClientAnimations'));
	Fashionable.AnimationId = 'rbxassetid://3333331310';
	Fashionable.Name = 'Fashionable';

	local Pose = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Fashionable);
	Pose.Looped = true;
	Pose.Priority = Enum.AnimationPriority.Action;

	function Play(i, v)
		if game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack'):FindFirstChild('[Boombox]') then
			local Tool = nil;
			if game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool') and w == true then
				Tool = game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool')
				game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Parent = game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack');
			end;
			game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack'):FindFirstChild('[Boombox]').Parent = game:GetService('Players').LocalPlayer.Character;
			game:GetService('ReplicatedStorage'):FindFirstChild('MainEvent'):FireServer('Boombox', i);
			game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]').RequiresHandle = false;
			if game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]'):FindFirstChild('Handle') then
				game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]'):FindFirstChild('Handle'):Destroy();
			end
			game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]').Parent = game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack')
			if game:GetService('Players').LocalPlayer:FindFirstChildOfClass('PlayerGui'):FindFirstChild('MainScreenGui'):FindFirstChild('BoomboxFrame') then
				game:GetService('Players').LocalPlayer:FindFirstChildOfClass('PlayerGui'):FindFirstChild('MainScreenGui'):FindFirstChild('BoomboxFrame').Visible = false;
			end;
			if Tool ~= true then
				if Tool then
					Tool.Parent = game:GetService('Players').LocalPlayer.Character
				end;
			end;
		end;
	end;

	game:GetService('UserInputService').InputBegan:Connect(function(v, i)
		if not i and v.UserInputType == Enum.UserInputType.Keyboard then
			if v.KeyCode == Enum.KeyCode.Q and Posing == false then
				Posing = true;
				game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true;
				game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false);
				Play(6552805469, true);
			elseif v.KeyCode == Enum.KeyCode.Q and Posing == true then
				game:GetService('ReplicatedStorage'):FindFirstChild('MainEvent'):FireServer('BoomboxStop');
				Posing = false;
				Pose:Stop();
				game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = false;
				game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true);
			end;
		end;
	end);

	game:GetService('Players').LocalPlayer.CharacterAdded:Connect(function()
		repeat
			game:GetService('RunService').Heartbeat:Wait();
		until game:GetService('Players').LocalPlayer.Character:FindFirstChild('FULLY_LOADED_CHAR');
		if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Animate'):FindFirstChild('idle'):FindFirstChild('Animation2') then
			game:GetService('Players').LocalPlayer.Character:FindFirstChild('Animate'):FindFirstChild('idle'):FindFirstChild('Animation2'):Destroy();
		end;
		Pose = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Fashionable);
		Pose.Looped = true;
		Pose.Priority = Enum.AnimationPriority.Action;
	end);

	game:GetService('RunService').RenderStepped:Connect(function()
		pcall(function()
			if Posing == true then
				if not Pose.IsPlaying then
					Pose:Play();
					Pose:AdjustSpeed(0);
					Pose.TimePosition = 6;
				end;
			end;
		end);
	end);
    end
)

local Jojoanimation =
    SecondPage.AddButton(
    "JoJo Animation!",
    function()
		Animate = game:GetService("Players").LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
    end
)

local StandJump =
    SecondPage.AddButton(
    "Stand Jump! & Time erase!",
    function()
        if not game["Loaded"] or not game:GetService("Players")["LocalPlayer"] then
            game["Loaded"]:Wait()
            game:WaitForChild(game:GetService("Players"))
            game:GetService("Players"):WaitForChild(game:GetService("Players").LocalPlayer.Name)
            repeat
                game:GetService("RunService").RenderStepped:Wait()
            until game:GetService("Players").LocalPlayer.Character
        end
        if game.PlaceId == 2788229376 then
        local  MyStand = "DxskTilIDawn"
        local SuperJumpEnabled = false
        
        getgenv().Toggled = false
        local UIS = game:GetService("UserInputService")
        UIS.InputBegan:connect(function(input,gameProcessed)
            if input.UserInputType == Enum.UserInputType.Keyboard then
                if input.KeyCode == Enum.KeyCode.H then
                    if UIS:GetFocusedTextBox() == nil then
                        if getgenv().Toggled == false then
                            getgenv().Toggled = true
                        else
                            getgenv().Toggled = true
                        end;end;end;end;end)
        
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local Cookies = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Roll)
        local OriginalKeyUpValue = 0
        local Anim = Instance.new("Animation" )
        Anim.AnimationId = "rbxassetid://2788290270"
        local Hover = Instance.new("Animation", game.Workspace)
        Hover.Name = "Hover"
        Hover.AnimationId = "rbxassetid://698251653"
        local LeftPunch = Instance.new("Animation",  game.ReplicatedStorage.ClientAnimations)LeftPunch.Name = "LeftPunch"
        LeftPunch.AnimationId = "rbxassetid://2788308661"
        local LeftAnim = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.LeftPunch)
        local CoreUI = Instance.new("ScreenGui")
        local Humanoid = game.Players.LocalPlayer.Character.Humanoid
        CoreUI.Parent = game.CoreGui
        local SaveLocation = nil
        local RigWalk = nil
        local RigIdle = nil
        local InTimeErase = false
        
        local Pointing = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        Pointing.AnimationId = "rbxassetid://507770453"
        
        local UNMASKKK = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        UNMASKKK.Name = "Unmask"
        UNMASKKK.AnimationId = "rbxassetid://3380629232"
        
        local MASKKK = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        MASKKK.Name = "Mask"
        MASKKK.AnimationId = "rbxassetid://3380627692"
        
        local Poter = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(Pointing)
        Poter.Looped = true
        Poter.Priority = Enum.AnimationPriority.Action
        
        local WalkAnimation = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        WalkAnimation.AnimationId = "rbxassetid://2510198475"
        
        local Idle = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        Idle.AnimationId = "rbxassetid://507766388"
        
        local OldChar = LocalPlayer.Character
        local MaskAnim = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Mask)
        local UnmaskAnim = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Unmask)
        
        function FoV()
            local fov = coroutine.wrap(function()
                local Camera = workspace.Camera
                for i = 1, 20 do
                    game.TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = 8*i}):Play()
                    wait(0.01)
                end
                for i = 1, 20 do
                    game.TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = 160-i*4.5}):Play()
                    wait(0.01)
                end
            end)
            fov()
        end
        
        local WalkSpeed = false
        
        local function rm()
            for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v.Name == "OriginalPosition" then
                    v:Destroy()
                elseif v.Name == "OriginalSize" then
                    v:Destroy()
                elseif v.Name == "AvatarPartScaleType" then
                    v:Destroy()
                end
            end
        end
        
        
        function Lighting()
            if game.Lighting:FindFirstChild("ERASE") == nil then
                local sound5 = Instance.new("Sound", CoreUI)
                sound5.Volume = 0.1
                sound5.Name = "ERASE"
                sound5.Looped = true
                sound5.SoundId = "rbxassetid://3167092959"
                sound5:Play()
        
                game.Lighting.Sky.Parent = workspace
                game:GetObjects("rbxassetid://6546113226")[1].Parent=game.Lighting
        
            else
                workspace.Sky.Parent = game.Lighting
                CoreUI:FindFirstChild("ERASE"):Destroy()
                game.Lighting:FindFirstChild("ERASE"):Destroy()
            end
        end
        
        function TimeEraseUI()
            local sound5 = Instance.new("Sound", CoreUI)
            sound5.Volume = 0.1
            sound5.SoundId = "rbxassetid://6546128175"
            sound5:Play()
        
            local Image = Instance.new("ImageLabel", CoreUI)
            Image.Image = "http://www.roblox.com/asset/?id=6546043746"
            Image.BackgroundTransparency = 1
            Image.AnchorPoint = Vector2.new(0.5, 0.5)
            Image.Size = UDim2.fromScale(1, 1)
            Image.Position = UDim2.fromScale(-0.5, 0.5)
            delay(0, function()
                for i = 0, 1, 0.1 do
                    Image.Position = UDim2.fromScale(-Image.Position.X.Scale+i, 0.5)
                    Image.ImageTransparency = Image.ImageTransparency+i
                    wait(.01)
                end
                Image:Destroy()
                sound5:Destroy()
            end)
        end
        
        
        function ModelCharacter()
            if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") == nil then
                local MODEL = Instance.new("Model", workspace)
                MODEL.Name = LocalPlayer.Name.."StringKOD"
        
                OldChar.Humanoid:UnequipTools()
        
                for i, v in pairs(OldChar:GetChildren()) do 
                    if (v:IsA("BasePart")  or v:IsA("MeshPart")) and v.Parent:FindFirstChildOfClass("Humanoid") and v.Name ~= "HumanoidRootPart" then
                        local Part = v:Clone()
                        Part.Parent = MODEL
                        Part.Name = v.Name
                        Part.Material = Enum.Material.ForceField
                        Part.CFrame = v.CFrame
                        Part.Transparency = 0.5 
                        Part.BrickColor = BrickColor.Red()
                        Part.CanCollide = false
                        Part.Anchored = true
                        for i, v  in pairs(Part:GetChildren()) do 
                            if v.ClassName ~= "SpecialMesh" then
                                v:Destroy()
                            end
                        end
                    end
                end
                local NewCharacter = game:GetObjects("rbxassetid://6547055500")[1]
                NewCharacter.Parent = MODEL
                NewCharacter.Name = "Idaro"
        
                workspace.Camera.CameraSubject = NewCharacter.Humanoid
                SaveLocation = OldChar.HumanoidRootPart.CFrame
                InTimeErase = true
                NewCharacter.HumanoidRootPart.CFrame = SaveLocation
        
                RigIdle = NewCharacter:WaitForChild("Humanoid"):LoadAnimation(Idle)
                RigIdle.Looped = true
                RigIdle.Priority = Enum.AnimationPriority.Action
                RigWalk = NewCharacter:WaitForChild("Humanoid"):LoadAnimation(WalkAnimation)
                RigWalk.Looped = true
                RigWalk.Priority = Enum.AnimationPriority.Action
                WalkSpeed = true
                RigIdle:Play()
            else
                InTimeErase = false
                WalkSpeed = false
                workspace.Camera.CameraSubject =  OldChar.Humanoid
                OldChar.HumanoidRootPart.CFrame =  workspace:FindFirstChild(LocalPlayer.Name.."StringKOD").Idaro.HumanoidRootPart.CFrame
                workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):Destroy()
            end
        end
        
        function Slide()
            local XD = OldChar.Humanoid:LoadAnimation(Anim)
            XD:Play()
            XD.TimePosition = 0.15
            XD.Looped = false
            XD:AdjustSpeed(1.1)
        end
        
        function AddVelocity(Vel, Char)
            Char.HumanoidRootPart.Velocity = Char.HumanoidRootPart.Velocity+Vel
        end
        
        local IsJump = false
        
        function Jumping()
            if IsJump == false then
                return false
            else
                return true
            end
        end
        
        local Mouse = LocalPlayer:GetMouse()
        
        local MoveDirection = Vector3.new(0,0,0)
        local WSpped = 0 
        local LeftSpeed = 0
        local UpSpeed = 0
        
        function IdleRigXD()
            if RigIdle and RigWalk.IsPlaying and WSpped == 0 and LeftSpeed == 0 and UpSpeed == 0 then
                RigIdle:Play()
                RigWalk:Stop()
            end
        end
        
        function WalkRigXD()
            if RigWalk and RigIdle.IsPlaying then
                RigIdle:Stop()
                RigWalk:Play()
            end
        end
        
        Mouse.KeyDown:Connect(function(KeyDownXD)
            if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") then
                if KeyDownXD == "w" then
                    WSpped = -1
                    WalkRigXD()
                elseif KeyDownXD == "a" then
                    LeftSpeed = -1
                    WalkRigXD()
                elseif KeyDownXD == "d" then
                    LeftSpeed = 1
                    WalkRigXD()
                elseif KeyDownXD == "s" then
                    WSpped = 1
                    WalkRigXD()
                end
            end
        end)
        
        Mouse.KeyUp:Connect(function(KeyDownXD)
            if KeyDownXD == "w" then
                WSpped = 0
                IdleRigXD()
            elseif KeyDownXD == "a" then
                LeftSpeed = 0
                IdleRigXD()
            elseif KeyDownXD == "d" then
                LeftSpeed = -0
                IdleRigXD()
            elseif KeyDownXD == "s" then
                WSpped = 0
                IdleRigXD()
            end
        end)
        
        local CD = false
        local uis = game:GetService("UserInputService")
        
        uis.InputBegan:Connect(function(i, XD)
            if i.KeyCode == Enum.KeyCode.H and XD == false then
                if SuperJumpEnabled == false then
                    SuperJumpEnabled = true
                elseif SuperJumpEnabled == true then
                    SuperJumpEnabled = false
                end
            end
        end)
        
        uis.InputBegan:Connect(function(i, XD)
            if i.KeyCode == Enum.KeyCode.Space and XD == false then
                if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") == nil then
                    if Jumping() == true and not Poter.IsPlaying then
                        AddVelocity(OldChar.HumanoidRootPart.CFrame.LookVector*150, OldChar)
                        IsJump = false
                        Cookies:Stop()
                        CD = true
                        play(6543434995, true, true)
                        Slide()
                        repeat wait() until workspace:FindPartOnRayWithWhitelist(Ray.new(OldChar.HumanoidRootPart.Position, Vector3.new(0, -4 * OldChar.HumanoidRootPart.Size.y, 0)), { workspace.MAP })
                        CD = false
                    end
                else
                    workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):FindFirstChild("Idaro").Humanoid:ChangeState(3)
                end
            end
        end)
        
        function StopAudio()
            OldChar.LowerTorso.BOOMBOXSOUND:Stop()
        end
        
        function stop(ID, Key)
            local cor = coroutine.wrap(function()
                wait(OldChar.LowerTorso.BOOMBOXSOUND.TimeLength-0)
                if OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
                    StopAudio()
                end
            end)
            cor()
        end
        
        
        function play(ID, STOP, LMAO)
            if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
                local Tool = nil
                if OldChar:FindFirstChildOfClass("Tool") and LMAO == true then
                    Tool = OldChar:FindFirstChildOfClass("Tool")
                    OldChar:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
                end
                LocalPlayer.Backpack["[Boombox]"].Parent =
                    OldChar
                game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
                OldChar["[Boombox]"].RequiresHandle = false
                if OldChar["[Boombox]"]:FindFirstChild("Handle") then
                    OldChar["[Boombox]"].Handle:Destroy()
                end
                OldChar["[Boombox]"].Parent =
                    LocalPlayer.Backpack
                LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
                if Tool ~= true then
                    if Tool then
                        Tool.Parent = OldChar
                    end
                end
                if STOP == true then
                    OldChar.LowerTorso:WaitForChild("BOOMBOXSOUND")
                    local cor = coroutine.wrap(function()
                        repeat wait() until OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OldChar.LowerTorso.BOOMBOXSOUND.TimeLength > 0
                        OriginalKeyUpValue = OriginalKeyUpValue+1
                        stop(ID, OriginalKeyUpValue)
                    end)
                    cor()
                end
            end
        end
        
        local bro = false
        local TimeErase, CanCel = "Time erase!", "Time erase!"
        local XD = false
        LocalPlayer.Chatted:Connect(function(MSG)
            if MSG:sub(1, 11) == TimeErase and XD == false and not Poter.IsPlaying then
                XDDDD(XD)
            elseif MSG == CanCel and XD == true and not Poter.IsPlaying then
                XDDDD(XD)
            end
        end)
        
        function XDDDD(XDR)
            if XDR == false then
                XD = true
                play(6546133414, true, true)
                wait(2)
                TimeEraseUI()
                FoV()
                Lighting()
                ModelCharacter()
            else
                XD = false
                InTimeErase = false
                wait(0.1)
                play(6543435253, true, true)
                TimeEraseUI()
                ModelCharacter()
                Lighting()
                FoV()
        end
        end
        
        function Jump(...)
            (...).Jumping:Connect(function()
                if SuperJumpEnabled == true then
                if CD == false and not Poter.IsPlaying then
                    CD = true
                    delay(1, function()
                        CD = false
                    end)
                    Cookies:Play(0, 1, 1.4)
                    AddVelocity(OldChar.HumanoidRootPart.CFrame.UpVector*120, OldChar)
                    play(6543436906, true, true)
                    delay(0, function()
                        IsJump = true
                        wait(1) 
                        if IsJump == true then
                            IsJump = false
                        end
                    end)
                    end
                end
            end)
        end
        
        
        Jump(OldChar.Humanoid)
        
        LocalPlayer.CharacterAdded:Connect(function(Character)
            wait(1)
            if Character.Name == LocalPlayer.Name then
                Jump(Character.Humanoid)
                Poter = Character:WaitForChild("Humanoid"):LoadAnimation(Pointing)
                Poter.Looped = true
                Poter.Priority = Enum.AnimationPriority.Action
        
                Cookies = Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Roll)
                OldChar = Character
            end
        end)
        
        game["Run Service"].Heartbeat:Connect(function()
            if InTimeErase then
                for i, v in pairs(OldChar:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CFrame = CFrame.new(math.random(200, 500), math.random(200, 500), math.random(200, 500))
                        v.Velocity = Vector3.new(0,0,0)
                    end
                end
        
                if OldChar:FindFirstChild("Combat") and XD == true then
                    XD = false
                    XDDDD(true)
                end
        
                if WalkSpeed == true then
                    MoveDirection = Vector3.new(LeftSpeed, UpSpeed, WSpped)
                    workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):FindFirstChild("Idaro").Humanoid:Move(MoveDirection, true)
                end
            else
                if OldChar:FindFirstChild("[Flashlight]") then
                    if workspace.Players:FindFirstChild(MyStand) then
                        if not Poter.IsPlaying then
                            Poter:Play()
                            Poter:AdjustSpeed(0)
                            Poter.TimePosition = 1.2
                        end
                        local lol = workspace.Players:FindFirstChild(MyStand).HumanoidRootPart.CFrame * CFrame.new(0, 0.5, 1.25)
                        OldChar.HumanoidRootPart.CFrame = lol
                    end
                else
                    if Poter.IsPlaying then
                        Poter:Stop()
                    end
                end
            end
        end)
        end        
    end
)

local TimeErase =
    SecondPage.AddButton(
    "Time erase! v2 [Soon]",
    function()
    end
)

--// [Third Page / Commands]
--// Im not fucking changing the variables name for the amount of commands this script has most useless cmds i ever seen jeez
local cmds =
    ThirdPage.AddLabel(
    "Summon! - Start The Stand",
    function()
    end
)

local cmds =
    ThirdPage.AddLabel(
    "Stop! - Stops The Stand",
    function()
    end
)

local cmds =
    ThirdPage.AddLabel(
    "Stop Audio! - Stops The Audio",
    function()
    end
)

local cmds =
    ThirdPage.AddLabel(
    "Drop! - Drop Stand Must Be Carrying Some1",
    function()
    end
)

local cmds =
    ThirdPage.AddLabel(
    "Sky! - Sky Stand Must Be Carrying Some1 ",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Void! - Void Stand Must Be Carrying Some1",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Jail! - Jail Stand Must Be Carrying Some1",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "/e b [plr] - brings a player",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "/e t [plr] - targets a player",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Mimic! - Copies Your Actions [Block / Punch] ",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Aura - Kills Everyone Around You Silently",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Noaura! - Stop Aura",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Hide! - Hides The Stand Name",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Requiem! - Gives Stand Godmode",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Power! - Gives Stand Reach ",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Ora! - Kills The Player in Front Of You ",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Save! - Saves You From Getting Stomped",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Heavy! - Super Punches",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Light! - Spam Punches",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Barrage! - Kills Everyone Around You",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Nobarrage! - Stop Barrage",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Untarget! - Stop Target",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Vanish! - Stand Disappear",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Appear! - Stand Appear",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Leave! - Stand Leave The Game",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Bind! - Gives Stand Anti Stomp",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Unbind! - Anti Stomp Off",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Reset! - Reset The Stand",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Evolve! - Making The Stand Super Huge",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Drop! - Drops 7k",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Crew! - Join Your Crew",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Crew! - Leave your Crew",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "To Bank! - Tp You To Bank",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "To Shop1! - Tp You To Gun Store 1",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "To shop2! - Tp You To Gun Store 2",
    function()
    end
)

local cmds =
    ThirdPage.AddLabel(
    "To Club! - Tp You To Club",
    function()
    end
)

local cmds =
    ThirdPage.AddLabel(
    "To School! - Tp You To School",
    function()
    end
)

local cmds =
    ThirdPage.AddLabel(
    "To Casino! - Tp You To Casino",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "To Ufo! - Tp You To Ufo",
    function()
    end
)

local cmds =
    ThirdPage.AddLabel(
    "To Park! - Tp You To Park",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Song! - Custom Song",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Left! - Stand Position",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Right! - Stand Position",
    function()
    end
)
local cmds =
    ThirdPage.AddLabel(
    "Back! - Stand Position",
    function()
    end
)
