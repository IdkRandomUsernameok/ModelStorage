local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local InputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Resources = ReplicatedStorage.Resources
local Remotes = ReplicatedStorage.Remotes
local rad = math.rad
local sin = math.sin
local random = math.random
local huge = math.huge
local MainModule = loadstring(game:HttpGet("https://github.com/IdkRandomUsernameok/PublicAssets/raw/refs/heads/main/SS/ClientModules/MainModule.lua"))()

local module = {}

local player = Players.LocalPlayer
local script = player.Backpack:WaitForChild("Main"):WaitForChild("FriskMoves"):WaitForChild("ModuleScript")
local character = player.Character or player.CharacterAdded:Wait()
local rootPart, humanoid = character:WaitForChild("HumanoidRootPart"), character:WaitForChild("Humanoid")
local head, torso = character:WaitForChild("Head"), character:WaitForChild("Torso")
local leftArm, rightArm = character:WaitForChild("Left Arm"), character:WaitForChild("Right Arm")
local leftLeg, rightLeg = character:WaitForChild("Left Leg"), character:WaitForChild("Right Leg")
local animsFolder = script:WaitForChild("Animations")
game:GetService("ContentProvider"):PreloadAsync(animsFolder:GetDescendants())

local function getPlayerModels()
	local tab = {}

	for _,v in pairs(workspace.Live:GetChildren()) do
		table.insert(tab, v)
	end
	return tab
end
function module.HoverEffect()
	task.spawn(function()
		local ignoreList = getPlayerModels()
		
		local ray = Ray.new(torso.Position,(Vector3.new(0,-1,0)).unit * 10)
		local hit,position = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList)
		
		if hit then
			--game.ReplicatedStorage.Remotes.Effects:FireServer({_G.Pass,"Particle","SmallSmokeParticle",CFrame.new(position,position + rootPart.CFrame.lookVector * 10) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0)),0.15})
		end
	end)
end
function module.HoverForwardEffect()
	task.spawn(function()
		local ignoreList = getPlayerModels()
		
		local ray = Ray.new(rootPart.Position,(Vector3.new(0,-1,0)).unit * 10)
		local hit,position = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList)
		
		if hit then
			--game.ReplicatedStorage.Remotes.Effects:FireServer({_G.Pass,"Particle","SmallForwardSmokeParticle",CFrame.new(position,position + rootPart.CFrame.lookVector * 10) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0)),0.15})
		end
	end)
end
function moveForward(bp, lookvector, whitelist)
	if lookvector then
		local ray = Ray.new(rootPart.Position,(lookvector))
		local hit,position = workspace:FindPartOnRayWithWhitelist(ray,whitelist)
		if hit then
			bp.Position = position - rootPart.CFrame.lookVector * 1 + Vector3.new(0,1,0)
		end
	else
		local ray = Ray.new(rootPart.Position,(rootPart.CFrame.lookVector).unit * 10)
		local hit,position = workspace:FindPartOnRayWithWhitelist(ray,whitelist)

		if hit then
			bp.Position = position - rootPart.CFrame.lookVector * 1
		end
	end
end

function spawnWeeapon(activate, hand)
	task.spawn(function()
		if activate then
			MainModule.Create("StringValue", "UsingBone", character)
			if character.BettyFinalKnife.Knife.Transparency ~= 0 then
				Remotes.BettyMoves:InvokeServer({_G.Pass, "SpawnKnife", true})
			end
		elseif not activate and character:FindFirstChild("UsingBone") then
			if character:FindFirstChild("UsingBone") then character:FindFirstChild("UsingBone"):Destroy() end
			for i = 1, 5 do
				if character:FindFirstChild("UsingBone") then
					break
				end
				wait(0.1)
			end
			if not character:FindFirstChild("UsingBone") then
				character.BettyFinalKnife.Knife.Transparency = 0.1
				Remotes.BettyMoves:InvokeServer({_G.Pass, "SpawnKnife", false})
			end
		end
	end)
end
local weaponDamage = {
	["Stick"] = 2,
	["ToyKnife"] = 2.3,
	["ToughGloves"] = 2.5,
	["BalletShoes"] = 3.5,
	["TornNotebook"] = 2.5,
	["BurntPan"] = 4,
	["EmptyGun"] = 4.2,
	["WornDagger"] = 4.4,
	["RelKnife"] = 4.6,
}
local weaponSound = {
	["Stick"] = ReplicatedStorage.Sounds.Punch,
	["ToyKnife"] = ReplicatedStorage.Sounds.KnifeHit,
	["ToughGloves"] = game.ReplicatedStorage.Sounds.Kick,
	["BalletShoes"] = game.ReplicatedStorage.Sounds.Kick,
	["TornNotebook"] = game.ReplicatedStorage.Sounds.Punch,
	["BurntPan"] = {ReplicatedStorage.Sounds.Kick, ReplicatedStorage.Sounds.ShieldBlock},
	["EmptyGun"] = game.ReplicatedStorage.Sounds.Punch,
	["WornDagger"] = ReplicatedStorage.Sounds.KnifeHit,
	["RelKnife"] = ReplicatedStorage.Sounds.KnifeHit,
}
local weaponEffect = {
	["ToyKnife"] = "KnifeHitEffect",
	["WornDagger"] = "KnifeHitEffect",
	["RelKnife"] = "KnifeHitEffect",
}
function module.Combat(typ, weapon)
	local humanoid = character.Humanoid
	local folder = animsFolder.BasicCombat
	if weapon ~= "" and animsFolder:FindFirstChild(weapon.."Combat") then
		folder = animsFolder:FindFirstChild(weapon.."Combat")
	end
	if folder:FindFirstChild(typ) then
		local combatAnim = humanoid:FindFirstChildOfClass("Animator"):LoadAnimation(folder[typ])
		if combatAnim.Length <= 0 then
			repeat game:GetService("RunService").RenderStepped:Wait() until combatAnim.Length > 0
		end
		combatAnim:Play(0.1)
		combatAnim:AdjustSpeed(1.1)
		for i, v in pairs(rootPart:GetChildren()) do
			if v.Name == "Client" then
				v:Destroy()
			end
		end
		local bp = Instance.new("BodyPosition")
		bp.Name = "Client"
		
		function moveForward(bp)
			local ray = Ray.new(rootPart.Position,(rootPart.CFrame.lookVector).unit * 6)
			local hit,position = workspace:FindPartOnRay(ray,character)
			if hit then
				bp.Position = position - rootPart.CFrame.lookVector * 1.5
			end
		end
		local damage = 1
		local sound = game.ReplicatedStorage.Sounds.Punch
		local effect = "LightHitEffect"
		local effect2 = "HeavyHitEffect"
		if weapon ~= "" then
			damage = weaponDamage[weapon]
			sound = weaponSound[weapon]
			if weaponEffect[weapon] then
				effect = weaponEffect[weapon]
			end
		end
		task.spawn(function()
			if folder == animsFolder.StickCombat then
				if typ == "Light1" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-30))})
				elseif typ == "Light2" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(30))})
				elseif typ == "Light3" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-10))})
				elseif typ == "Light4" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(15))})
				elseif typ == "Light5" then
					wait(0.15)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-30))})
				end
			elseif folder == animsFolder.ToyKnifeCombat or folder == animsFolder.WornDaggerCombat or folder == animsFolder.RelKnifeCombat then
				if typ == "Light1" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 0, 0), CFrame.Angles(0,0, math.rad(-30))})
				elseif typ == "Light2" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 0, 0), CFrame.Angles(0,0, math.rad(10))})
				elseif typ == "Light3" then
					wait(0.1)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 0, 0), CFrame.Angles(0,0, math.rad(-5))})
					wait(0.25)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 0, 0), CFrame.Angles(0,0, math.rad(-5))})
				elseif typ == "Light4" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 0, 0), CFrame.Angles(0,0, math.rad(-40))})
				end
			elseif folder == animsFolder.ToughGlovesCombat then
				if typ == "Light1" then
					wait(0.05)
					--game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-30))})
				elseif typ == "Light2" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(30))})
				elseif typ == "Light3" then
					wait(0.05)
					--game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-10))})
				elseif typ == "Light4" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-25))})
				elseif typ == "Light5" then
					wait(0.15)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-30))})
				end
			elseif folder == animsFolder.BalletShoesCombat then
				if typ == "Light1" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-30))})
				elseif typ == "Light2" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(30))})
				elseif typ == "Light3" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-10))})
				elseif typ == "Light4" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-25))})
				elseif typ == "Light5" then
					wait(0.15)
					--game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-30))})
				end
			elseif folder == animsFolder.TornNotebookCombat then
				if typ == "Light1" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(30))})
				elseif typ == "Light2" then
					wait(0.05)
					--game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(30))})
				elseif typ == "Light3" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(10))})
				elseif typ == "Light4" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-25))})
				elseif typ == "Light5" then
					wait(0.15)
					--game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-30))})
				end
			elseif folder == animsFolder.BurntPanCombat then
				if typ == "Light1" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-14))})
				elseif typ == "Light2" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(0))})
				elseif typ == "Light3" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-34))})
				elseif typ == "Light4" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-13))})
				elseif typ == "Light5" then
					wait(0.15)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-90))})
				end
			elseif folder == animsFolder.EmptyGunCombat then
				if typ == "Light1" then
					wait(0.05)
					--game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-14))})
				elseif typ == "Light2" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(0))})
				elseif typ == "Light3" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-34))})
				elseif typ == "Light4" then
					wait(0.05)
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-13))})
				elseif typ == "Light5" then
					wait(0.15)
					--game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.fromRGB(255, 255, 255), CFrame.Angles(0,0, math.rad(-90))})
				end
			end
		end)
		
		local whitelist = {}
		pcall(function()
			for i,v in pairs(workspace.Live:GetChildren()) do
				if v:FindFirstChild("HumanoidRootPart") and v.Name ~= player.Name and v:FindFirstChild("Torso") and v:FindFirstChild("Head") then
					table.insert(whitelist,v.HumanoidRootPart)
					table.insert(whitelist,v.Torso)
					table.insert(whitelist,v.Head)
					table.insert(whitelist,v["Left Arm"])
					table.insert(whitelist,v["Right Arm"])
					table.insert(whitelist,v["Right Leg"])
					table.insert(whitelist,v["Left Leg"])
				end
			end
		end)
		
		combatAnim.KeyframeReached:Connect(function(keyframe)
			if keyframe == "1" then
				character.Head:FindFirstChild("Swing2"):Play()
				local victim = MainModule.Damage(character, combatAnim)
				
				if victim then
					 MainModule.shakeScreen("Bump")
				end
			elseif keyframe == "2" then
				character.Head:FindFirstChild("Swing2"):Play()
				combatAnim:AdjustSpeed(0.2)
				local victim = MainModule.Damage(character, combatAnim)
				combatAnim:AdjustSpeed(1)
				if victim then
					MainModule.shakeScreen("Explosion")
				end
			elseif keyframe == "3" then
				character.Head:FindFirstChild("Swing2"):Play()
				local victim = MainModule.Damage(character, combatAnim)
				
				if victim then
					 MainModule.shakeScreen("Bump")
				end
			elseif keyframe == "4" then
				task.spawn(function()
					game.ReplicatedStorage.Remotes.FriskMoves:InvokeServer({_G.Pass,"FireGun",character.EmptyGun.Main.CFrame - Vector3.new(0,.2,0)})
				end)
				local victim = MainModule.Damage(character, combatAnim)
				if victim then
					 MainModule.shakeScreen("Bump")
				end
			elseif keyframe == "5" then
				task.spawn(function()
					game.ReplicatedStorage.Remotes.FriskMoves:InvokeServer({_G.Pass,"FireGun",character.EmptyGun.Main.CFrame - Vector3.new(0,.2,0)})
				end)
				local victim = MainModule.Damage(character, combatAnim)
				if victim then
					MainModule.shakeScreen("Explosion")
				end
			end
		end)
		local lockOn = player.Backpack.Main.LockOnScript.LockOn
		
		if lockOn.Value then
			rootPart.CFrame = CFrame.new(rootPart.Position,Vector3.new(lockOn.Value.HumanoidRootPart.Position.X,rootPart.Position.Y,lockOn.Value.HumanoidRootPart.Position.Z))
		end
		
		local newRay = Ray.new(rootPart.CFrame.p, Vector3.new(0,-1,0).unit * 4)
		local Hit,Position = game:GetService("Workspace"):FindPartOnRay(newRay, character)
		if Hit then
			ReplicatedStorage.Remotes.Effects:FireServer({_G.Pass, "Particle", "SmallForwardSmokeParticle", CFrame.new(Position, Position + rootPart.CFrame.lookVector * 10) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0)), 0.1})
		end
		
		if typ:match("Light") or typ:match("Heavy") then
			bp.MaxForce = Vector3.new(100000,0,100000)
		else
			bp.MaxForce = Vector3.new(100000,100000,100000)
		end
		bp.P = 30000
		bp.Parent = rootPart
		
		local bg = Instance.new("BodyGyro")
		bg.Name = "Client"
		bg.MaxTorque = Vector3.new(10000,10000,10000)
		bg.CFrame = rootPart.CFrame
		bg.Parent = rootPart

		local ray = Ray.new(rootPart.Position,(rootPart.CFrame.lookVector).unit * 10)
		local hit,position = workspace:FindPartOnRayWithWhitelist(ray,whitelist)

		if hit then
			bp.Position = position - rootPart.CFrame.lookVector * 1.5
		else
			bp.Position = rootPart.Position + rootPart.CFrame.lookVector * 10
		end
		
		repeat moveForward(bp, nil, whitelist) game:GetService("RunService").RenderStepped:Wait() until combatAnim.TimePosition > (combatAnim.Length - 0.16) or not combatAnim.isPlaying or MainModule.checkIfHit()
		
		combatAnim:AdjustSpeed(0.8)
		
		game.Debris:AddItem(bp, 0.5)
		bg:Destroy()
	end
end

return module
