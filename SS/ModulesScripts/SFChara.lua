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
local script = player.Backpack:WaitForChild("Main"):WaitForChild("SFCharaMoves"):WaitForChild("ModuleScript")
local character = player.Character or player.CharacterAdded:Wait()
local rootPart, humanoid = character:WaitForChild("HumanoidRootPart"), character:WaitForChild("Humanoid")
local head, torso = character:WaitForChild("Head"), character:WaitForChild("Torso")
local leftArm, rightArm = character:WaitForChild("Left Arm"), character:WaitForChild("Right Arm")
local leftLeg, rightLeg = character:WaitForChild("Left Leg"), character:WaitForChild("Right Leg")
local animsFolder = script:WaitForChild("Animations")
game:GetService("ContentProvider"):PreloadAsync(animsFolder:GetDescendants())

local folder1 = animsFolder:WaitForChild("BladesCombat")
local folder2 = animsFolder:WaitForChild("Slash")

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
		
		local ray = Ray.new(rootPart.Position,(Vector3.new(0,-1,0)).unit * 10)
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

function module.Damage(tab)
	for i,v in pairs(workspace.Live:GetChildren()) do
		if v:FindFirstChild("HumanoidRootPart") and v ~= character then
			local victim = v
			
			local p1 = rootPart.Position + rootPart.CFrame.lookVector * 5
			local p2 = victim.HumanoidRootPart.Position
			
			if (p1 - p2).magnitude <= 6 then
				task.spawn(function()
					game.Lighting.Blur.Size = 16
					for i = 1,5 do
						game.Lighting.Blur.Size = game.Lighting.Blur.Size - 2
					wait(0.03) end
				end)
				
				game.ReplicatedStorage.Remotes.Damage:InvokeServer(_G.Pass, victim, tab)
			end
		end
	end
end

local slashTable = {
	["Light1"] = {
		["Direction"] = "Right",
		["Angle"] = -20,
		["Speed"] = 0.4,
		["Times"] = 25
	},
	["Light2"] = {
		["Direction"] = "Left",
		["Angle"] = 20,
		["Speed"] = 0.3,
		["Times"] = 20
	},
	["Light4"] = {
		["Direction"] = "Right",
		["Angle"] = -20,
		["Speed"] = .4,
		["Times"] = 20
	},
	["Light5"] = {
		["Direction"] = "Right",
		["Angle"] = -30,
		["Speed"] = .3,
		["Times"] = 20
	},
	["Light6"] = {
		["Direction"] = "Right",
		["Angle"] = 90,
		["Speed"] = .2,
		["Times"] = 20
	}
}
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

function loadAnimations(character)
	local rootPart = character:FindFirstChild("HumanoidRootPart") do if not character:FindFirstChild("HumanoidRootPart") then return end end
	if not module[character] then
		module[character] = {}
	end
	module[character].Anims = {
	}
	for i, v in script:WaitForChild("Animations").BladesCombat:GetChildren() do
		if v:IsA("Animation") then
			module[character].Anims[v.Name] = character.Humanoid.Animator:LoadAnimation(v)

		end
	end
end
loadAnimations(character)

local animIDs = {
	"rbxassetid://4333546395",
	"rbxassetid://4348265296",
	"rbxassetid://4348287123",
	"rbxassetid://4348301706",
	"rbxassetid://4348323561",
	"rbxassetid://4348788816"
}

function module.SwordCombat(typ)
	local humanoid = character.Humanoid
	local RAHHHH:Animation = animsFolder.BladesCombat:FindFirstChild(typ)
	print(RAHHHH)


	if not module[character].Anims then
		module[character].Anims = {}
	end
	if RAHHHH and table.find(animIDs, RAHHHH.AnimationId) then
		
		local combatAnim = module[character].Anims[RAHHHH.Name]
		if combatAnim.Length <= 0 then
			repeat task.wait() until combatAnim.Length > 0
		end
		combatAnim:Play(0.1)
		combatAnim:AdjustSpeed(1)
		if character:FindFirstChild("SecondLife") then
			combatAnim:AdjustSpeed(1.6)
		else
			combatAnim:AdjustSpeed(1.2)
		end
		game.ReplicatedStorage.Remotes.SwordHandler:FireServer({_G.Pass,"SliceEffect",true,"RealKnife"})
		for i, v in pairs(rootPart:GetChildren()) do
			if v.Name == "Client" then
				v:Destroy()
			end
		end
		local bp = Instance.new("BodyPosition")
		bp.Name = "Client"
		
		MainModule.CombatAnimation(combatAnim, character, bp, slashTable)
		local event = combatAnim.KeyframeReached:Connect(function(keyframe)
			if keyframe == "Slash" then
				if typ == "Light1" then
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.new(1,0,0)})
				elseif typ == "Light2" then
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing2, Color3.new(1,0,0)})
				elseif typ == "Light3" then
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.new(1,0,0)})
				elseif typ == "Light4" then
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.new(1,0,0)})
				elseif typ == "Light5" then
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing1, Color3.new(1,0,0)})
				elseif typ == "Light6" then
					game.ReplicatedStorage.Remotes.Events:FireServer({_G.Pass, "SlashEffect", animsFolder.Slash.Swing4, Color3.new(1,0,0)})
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

		local ray = Ray.new(rootPart.Position,(rootPart.CFrame.lookVector).unit * 10)
		local hit,position = workspace:FindPartOnRayWithWhitelist(ray,whitelist)

		
		if hit then
			bp.Position = position - rootPart.CFrame.lookVector * 1.5
		else
			bp.Position = rootPart.Position + rootPart.CFrame.lookVector * 10
		end
		repeat moveForward(bp, nil, whitelist) game:GetService("RunService").RenderStepped:Wait() until combatAnim.TimePosition > (combatAnim.Length - 0.2) or not combatAnim.isPlaying or MainModule.checkIfHit()
		game.ReplicatedStorage.Remotes.SwordHandler:FireServer({_G.Pass,"SliceEffect",false,"RealKnife"})
		if event then
			event:Disconnect(); event = nil;
		end
		bp:Destroy()
		bg:Destroy()
	end
end

return module
