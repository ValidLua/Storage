getgenv().PoseSetting = {
    ['Poses'] = {
        ["Pose1"] = {Enabled = true, Key = "Q"},
        ["Pose2"] = {Enabled = true, Key = "X"},
		["Pose3"] = {Enabled = true, Key = "B"},
		["Pose4"] = {Enabled = true, Key = "J"},
		["Pose5"] = {Enabled = true, Key = "L"},
		["Pose6"] = {Enabled = true, Key = "T"},
		["Pose7"] = {Enabled = true, Key = "K"},
		["Pose8"] = {Enabled = true, Key = "M"},
    }
}

--// Pose Framework 1.0.0 \\--

if not game['Loaded'] or not game:GetService("Players").LocalPlayer then 
    game['Loaded']:Wait();
    game:WaitForChild(game:GetService('Players'));
    game:GetService('Players'):WaitForChild(game:GetService("Players").LocalPlayer.Name)
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
		if tostring(args[1]) == "DropMoney" or tostring(args[1]) == "TimerDecrease" or  tostring(args[1]) == "Grabbing" or tostring(args[1]) == "Block" or tostring(args[1]) == "Stomp" or tostring(args[1]) == "JoinCrew" or tostring(args[1]) == "PhoneCall" or tostring(args[1]) == "Boombox" or tostring(args[1]) == "BoomboxStop" or tostring(args[1]) == "EnterPromoCode" or tostring(args[1]) == "PurchaseSkinCrate" or tostring(args[1]) == "TimerMoney" or tostring(args[1]) == "Reload" or tostring(args[1]) == "UpdateMousePos" or tostring(args[1]) == "FireworkText" or tostring(args[1]) == "GunCombatToggle" or tostring(args[1]) == "LeaveCrew" or tostring(args[1]) == "AnimationPack" or tostring(args[1]) == "EquipWeaponSkins" or tostring(args[1]) == "REPORT_PLAYER" or tostring(args[1]) == "IS_MOBILE" or tostring(args[1]) == "GamePurchase" then
			else 
				return
			end 
		end
	return old(self, ...)
end)

Pos = false

if PoseSetting.Poses.Pose1.Enabled then
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

	game:GetService('UserInputService').InputBegan:Connect(function(v, i)
		if not i and v.UserInputType == Enum.UserInputType.Keyboard then
			if v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose1.Key] and Posing == false and Pos == false then
				Pos = true
				Posing = true;
				game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true;
				game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false);
			elseif v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose1.Key] and Posing == true then
				Pos = false
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

if PoseSetting.Poses.Pose2.Enabled then
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
	
	game:GetService('UserInputService').InputBegan:Connect(function(v, i)
		if not i and v.UserInputType == Enum.UserInputType.Keyboard then
			if v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose2.Key] and Posing == false and Pos == false then
				Pos = true
				Posing = true;
				game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true;
				game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false);
				Play(6603007929, true);
			elseif v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose2.Key] and Posing == true then
				Pos = false
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
					Pose.TimePosition = 4;
				end;
			end;
		end);
	end);
end

if PoseSetting.Poses.Pose3.Enabled then
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
	
	game:GetService('UserInputService').InputBegan:Connect(function(v, i)
		if not i and v.UserInputType == Enum.UserInputType.Keyboard then
			if v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose3.Key] and Posing == false and Pos == false then
				Pos = true
				Posing = true;
				game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true;
				game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false);
			elseif v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose3.Key] and Posing == true then
				Pos = false
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
					Pose.TimePosition = 1.5;
				end;
			end;
		end);
	end);
end

if PoseSetting.Poses.Pose4.Enabled then
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
	
	game:GetService('UserInputService').InputBegan:Connect(function(v, i)
		if not i and v.UserInputType == Enum.UserInputType.Keyboard then
			if v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose4.Key] and Posing == false and Pos == false then
				Pos = true
				Posing = true;
				game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true;
				game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false);
			elseif v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose4.Key] and Posing == true then
				Pos = false
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
					Pose.TimePosition = 8;
				end;
			end;
		end);
	end);
end

if PoseSetting.Poses.Pose5.Enabled then
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
	
	game:GetService('UserInputService').InputBegan:Connect(function(v, i)
		if not i and v.UserInputType == Enum.UserInputType.Keyboard then
			if v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose5.Key] and Posing == false and Pos == false then
				Pos = true
				Posing = true;
				game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true;
				game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false);
			elseif v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose5.Key] and Posing == true then
				Pos = false
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
					Pose.TimePosition = 4;
				end;
			end;
		end);
	end);
end

if PoseSetting.Poses.Pose6.Enabled then
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
	
	game:GetService('UserInputService').InputBegan:Connect(function(v, i)
		if not i and v.UserInputType == Enum.UserInputType.Keyboard then
			if v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose6.Key] and Posing == false and Pos == false then
				Pos = true
				Posing = true;
				game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true;
				game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false);
			elseif v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose6.Key] and Posing == true then
				Pos = false
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
					Pose.TimePosition = 7;
				end;
			end;
		end);
	end);
end

if PoseSetting.Poses.Pose7.Enabled then
	if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Animate'):FindFirstChild('idle'):FindFirstChild('Animation2') then
		game:GetService('Players').LocalPlayer.Character:FindFirstChild('Animate'):FindFirstChild('idle'):FindFirstChild('Animation2'):Destroy();
	end;
	
	local Posing = false;
	local Key = 0;
	
	local Fashionable = Instance.new('Animation', game:GetService('ReplicatedStorage'):FindFirstChild('ClientAnimations'));
	Fashionable.AnimationId = 'rbxassetid://5230598276';
	Fashionable.Name = 'Fashionable';
	
	local Pose = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Fashionable);
	Pose.Looped = true;
	Pose.Priority = Enum.AnimationPriority.Action;
	
	game:GetService('UserInputService').InputBegan:Connect(function(v, i)
		if not i and v.UserInputType == Enum.UserInputType.Keyboard then
			if v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose7.Key] and Posing == false and Pos == false then
				Pos = true
				Posing = true;
				game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true;
				game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false);
			elseif v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose7.Key] and Posing == true then
				Pos = false
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
					Pose.TimePosition = 0.42;
				end;
			end;
		end);
	end);
end

if PoseSetting.Poses.Pose8.Enabled then
	if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Animate'):FindFirstChild('idle'):FindFirstChild('Animation2') then
		game:GetService('Players').LocalPlayer.Character:FindFirstChild('Animate'):FindFirstChild('idle'):FindFirstChild('Animation2'):Destroy();
	end;
	
	local Posing = false;
	local Key = 0;
	
	local Fashionable = Instance.new('Animation', game:GetService('ReplicatedStorage'):FindFirstChild('ClientAnimations'));
	Fashionable.AnimationId = 'rbxassetid://5230598276';
	Fashionable.Name = 'Fashionable';
	
	local Pose = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Fashionable);
	Pose.Looped = true;
	Pose.Priority = Enum.AnimationPriority.Action;
	
	game:GetService('UserInputService').InputBegan:Connect(function(v, i)
		if not i and v.UserInputType == Enum.UserInputType.Keyboard then
			if v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose8.Key] and Posing == false and Pos == false then
				Pos = true
				Posing = true;
				game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true;
				game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false);
			elseif v.KeyCode == Enum.KeyCode[PoseSetting.Poses.Pose8.Key] and Posing == true then
				Pos = false
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
					Pose.TimePosition = 1.7;
				end;
			end;
		end);
	end);
end