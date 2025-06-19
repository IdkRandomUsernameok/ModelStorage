local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local InputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local rad = math.rad
local sin = math.sin
local random = math.random
local huge = math.huge
local Remotes = game.ReplicatedStorage:WaitForChild("Remotes")

local camera = workspace.CurrentCamera

local ClientFramework = loadstring(game:HttpGet("https://github.com/IdkRandomUsernameok/PublicAssets/raw/refs/heads/main/Modules/ClientFramework/ClientFramework.lua"))()

local function tick()
	return Workspace:GetServerTimeNow()
end

local module = {}

local player = Players.LocalPlayer
function module.Weld(p1,p2,c0,name)
	local weld = Instance.new("Weld")
	weld.Name = name or "Weld"
	weld.Part0 = p1
	weld.Part1 = p2
	if c0 then
		weld.C0 = c0
	end
	weld.Parent = p2
	return weld
end
function module.CheckCooldown(character, cooldown)
	if character:GetAttribute("NoCD") then
		return true
	end
	if character:GetAttribute(cooldown) and character:GetAttribute(cooldown.."Debounce") and (tick() - character:GetAttribute(cooldown.."Debounce")) > character:GetAttribute(cooldown) then
		print(character:GetAttribute(cooldown))
		return true
	elseif not character:GetAttribute(cooldown) then 
		return true
	end
end
function module.CreateSound(sound,parent)
	local newSound = sound:Clone()
	newSound.Parent = parent
	pcall(function()
		task.spawn(function()
			if newSound.PlayOnRemove then
				newSound:Destroy()
			else
				newSound:Play()
				newSound.Ended:Wait()
				newSound:Destroy()
			end
		end)
	end)
	return newSound
end
function module.shakeScreen(v)
	ClientFramework.Shake(v)
end

function module.Create(instance,name,parent)
	local instance = Instance.new(instance)
	instance.Name = name
	instance.Parent = parent
	
	return instance
end

function module.checkIfHit()
	local character = player.Character or player.CharacterAdded:Wait()
	if character:FindFirstChild("Hit") or character:FindFirstChild("Debounce") then
		return true
	else
		return false
	end
end
function module.positionDistanceLimit(position, d)
	local character = player.Character
	local rootPart = character.HumanoidRootPart
	if (position - rootPart.Position).magnitude > d then
		return (CFrame.new(rootPart.Position, position) * CFrame.new(0,0,-d)).Position
	else
		return position
	end
end
function module.GetParticles(m)
	local particleTable = {}
	for i,v in pairs(m:GetDescendants()) do
		if v:IsA("ParticleEmitter") then
			particleTable[v] = {
				Particle = v,
				Transparency = {},
				Size = {}
			}
			for i2 = 1, #particleTable[v]["Particle"].Transparency.Keypoints do
				particleTable[v]["Transparency"][i2] = {
					["Value"] = particleTable[v]["Particle"].Transparency.Keypoints[i2].Value,
					["Time"] = particleTable[v]["Particle"].Transparency.Keypoints[i2].Time
				}
			end
			for i2 = 1, #particleTable[v]["Particle"].Size.Keypoints do
				particleTable[v]["Size"][i2] = {
					["Value"] = particleTable[v]["Particle"].Size.Keypoints[i2].Value,
					["Time"] = particleTable[v]["Particle"].Size.Keypoints[i2].Time
				}
			end
			v.Size = NumberSequence.new(0)
			v.Transparency = NumberSequence.new(1)
		end
	end
	return particleTable
end
function module.GetParts(m)
	local partTable = {}
	local tab = m:GetDescendants()
	table.insert(tab, m)
	for i,v in pairs(tab) do
		if v:IsA("BasePart") then
			partTable[v] = {
				Part = v,
				Transparency = v.Transparency,
				Size = v.Size
			}
			v.Size = Vector3.new(0,0,0)
			v.Transparency = 1
		end
	end
	
	return partTable
end
function module.getMousePos(mouse)
	local character = player.Character
	local rootPart = character.HumanoidRootPart
	
	local lockOn = player.Backpack.Main.LockOnScript.LockOn
	if lockOn.Value then
		return lockOn.Value.HumanoidRootPart.CFrame.p
	else
		return mouse.Hit.p
	end
end
function module.getGroundFromPosition(position)
	local ignoreList = {}		
	for i,v in pairs(workspace.Live:GetChildren()) do
		if v:FindFirstChild("Humanoid") then
			table.insert(ignoreList,v)
		end
	end
	
	local ray = Ray.new(position + Vector3.new(0,1,0),(Vector3.new(0,-10000000,0)))
	local hit,position = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList)
	return position
end
function module.checkRay(position, direction, unit)
	local ignoreList = {}		
	for i,v in pairs(workspace.Live:GetChildren()) do
		if v:FindFirstChild("Humanoid") then
			table.insert(ignoreList,v)
		end
	end
	
	local ray = Ray.new(position - direction.unit,(direction).unit * (unit + 1))
	local hit,position = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList)
	return hit
end
function module.changeSizeAndTransparency(particleTable, particle, loop, reverse)
	task.spawn(function()
		local a = 1
		local b = 1
		local typ = "Size"
		local count = loop
		if reverse then
			a = loop
			loop = 1
			b = -1
		end
		for i = a, loop, b do
			for eee = 1, 2 do
				if typ == "Size" then
					typ = "Transparency"
				else
					typ = "Size"
				end
				local keyPoints = {}
				for i2 = 1, #particleTable[particle][typ] do
					if typ == "Transparency" then
						local T = particleTable[particle][typ][i2]["Time"]
						local V = particleTable[particle][typ][i2]["Value"]
						table.insert(keyPoints, NumberSequenceKeypoint.new(T, 1-((1-V)/count)*i))
					else
						table.insert(keyPoints, NumberSequenceKeypoint.new(particleTable[particle][typ][i2]["Time"], (particleTable[particle][typ][i2]["Value"] * (i/count))))
					end
				end
				particle[typ] = NumberSequence.new(keyPoints)
			end
		wait(0.03) end
	end)
end
function module.getSpot(hit,orgiginalCFrame,Distance)
	local relCF = orgiginalCFrame
	local cf = orgiginalCFrame
	for i = 1,360 do
		orgiginalCFrame = cf * CFrame.Angles(0,math.rad(i),0)
		local ray = Ray.new(orgiginalCFrame.p-orgiginalCFrame.rightVector, (orgiginalCFrame.lookVector).unit * Distance)
		local part, position = workspace:FindPartOnRay(ray, hit, false, true)
		local ray2 = Ray.new(orgiginalCFrame.p+orgiginalCFrame.rightVector, (orgiginalCFrame.lookVector).unit * Distance)
		local part2, position2 = workspace:FindPartOnRay(ray2, hit, false, true)
		
		if not part and not part2 then 
			return orgiginalCFrame
		end
	end
	return relCF
end
function module.getLockedOnPlayer(character)
	if character:FindFirstChild("LockOnScript") and character:FindFirstChild("LockOnScript").LockOn.Value then
		return character:FindFirstChild("LockOnScript").LockOn.Value
	else
		return false
	end
end

function module.qwait()
	game:GetService("RunService").RenderStepped:Wait()
end

function module.Lerp(a, b, t)
	return a + (b - a) * t
end
function module.Damage(character, tab, range)
	if not range then
		range = 5
	end
	local victim
	local rootPart, humanoid = character:WaitForChild("HumanoidRootPart"), character:WaitForChild("Humanoid")
	for i,v in pairs(workspace.Live:GetChildren()) do
		if v:FindFirstChild("HumanoidRootPart") and v ~= character then
			local victim1 = v
			local p1 = rootPart.Position + rootPart.CFrame.lookVector * range
			local p2 = victim1.HumanoidRootPart.Position
			
			if (p1 - p2).magnitude <= range then
				task.spawn(function()
					if Lighting:FindFirstChildOfClass("BlurEffect") then
						Lighting:FindFirstChildOfClass("BlurEffect").Size = 16
						for i = 1,5 do
							Lighting:FindFirstChildOfClass("BlurEffect").Size -= 2
							wait(0.03) end
					end
					

				end)
				game.ReplicatedStorage.Remotes.Damage:InvokeServer(_G.Pass, v, tab.Name)
				
				victim = v
				
				break
			end
		end
	end
	if not victim then
		game.ReplicatedStorage.Remotes.Damage:InvokeServer(_G.Pass, nil, tab.Name)
	end
	return victim
end
local testIDs = {
	"rbxassetid://18624303328";
	"rbxassetid://18624305278";
	"rbxassetid://18624307705";
	"rbxassetid://18624309685";
	"rbxassetid://18624311741";
	"rbxassetid://18624313567";
	"rbxassetid://18623938612",
	"rbxassetid://18623940606",
	"rbxassetid://18623943402",
	"rbxassetid://18623945303",
	"rbxassetid://18623955533",
	"rbxassetid://18623957991",
	"rbxassetid://18623960093",
	"rbxassetid://18623963141",
	"rbxassetid://18623965062",
	"rbxassetid://18623967305",
	"rbxassetid://18623969292",
	"rbxassetid://18623971397",
	"rbxassetid://18623977136",
	"rbxassetid://18623981199",
	"rbxassetid://18623991698",
	"rbxassetid://18623995684",
	"rbxassetid://18624012890",
	"rbxassetid://18624015448",
	"rbxassetid://18624017135",
	"rbxassetid://18624019213",
	"rbxassetid://18624021162",
	"rbxassetid://18624025100",
	"rbxassetid://18624028251",
	"rbxassetid://18624030654",
}

function module.CombatAnimation(combatAnim:AnimationTrack, character:Model, bp, slashDir, key)
	local humanoid = character.Humanoid
	local rootPart = character.HumanoidRootPart
	
	local event = combatAnim.KeyframeReached:Connect(function(keyframe)
		if keyframe == "Slash" then
			if slashDir[combatAnim.Name] then
				game.ReplicatedStorage.Remotes.SwordHandler:FireServer({_G.Pass,"SlashEffect", rootPart.CFrame + rootPart.CFrame.lookVector * 2, slashDir[combatAnim.Name]["Angle"], slashDir[combatAnim.Name]["Direction"], slashDir[combatAnim.Name]["Speed"], slashDir[combatAnim.Name]["Times"], slashDir[combatAnim.Name]["Size"], slashDir[combatAnim.Name]["Color"]})
			end
		end
		if keyframe == "1" then
			character.Head:FindFirstChild("Swing2"):Play()
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				 module.shakeScreen("Bump")
			end
		elseif keyframe == "2" then
			character.Head:FindFirstChild("Swing2"):Play()
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("Bump")
			end
		elseif keyframe == "3" then
			character.Head:FindFirstChild("Swing2"):Play()
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("SmallExplosion")
			end
		elseif keyframe == "4" then
			character.Head:FindFirstChild("Swing2"):Play()
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("Explosion")
			end
		elseif keyframe == "5" then
			character.Head:FindFirstChild("Swing2"):Play()
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("Explosion")
			end
		elseif keyframe == "6" then
			character.Head:FindFirstChild("Swing2"):Play()
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("Explosion")
			end
		elseif keyframe == "7" then
			character.Head:FindFirstChild("Swing2"):Play()
			
			task.spawn(function()
				game.ReplicatedStorage.Remotes.Functions:InvokeServer({_G.Pass,"PlaySound",game.ReplicatedStorage.Sounds.Knife_Slash,character.Head})
			end)
			
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("Bump")
			end
		elseif keyframe == "8" then
			character.Head:FindFirstChild("Swing2"):Play()
			
			task.spawn(function()
				game.ReplicatedStorage.Remotes.Functions:InvokeServer({_G.Pass,"PlaySound",game.ReplicatedStorage.Sounds.Knife_Slash,character.Head})
			end)
			
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("Explosion")
			end
		elseif keyframe == "9" then
			character.Head:FindFirstChild("Swing2"):Play()
			
			task.spawn(function()
				game.ReplicatedStorage.Remotes.Functions:InvokeServer({_G.Pass,"PlaySound",game.ReplicatedStorage.Sounds.Knife_Slash,character.Head})
			end)
			
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("Explosion")
			end
		elseif keyframe == "10" then
			character.Head:FindFirstChild("Swing2"):Play()
			
			
			combatAnim:AdjustSpeed(0)
			local victim = module.Damage(character, combatAnim)
			if victim then
				bp.Position = bp.Position + Vector3.new(0,25,0)
				bp.P = 10000
				module.shakeScreen("Explosion")
			end
			combatAnim:AdjustSpeed(1)
		elseif keyframe == "11" then
			character.Head:FindFirstChild("Swing2"):Play()
			
			
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("Bump")
			end
		elseif keyframe == "12" then
			character.Head:FindFirstChild("Swing2"):Play()
			
			
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("Explosion")
			end
		elseif keyframe == "13" then
			character.Head:FindFirstChild("Spear"):Play()
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("Bump")
			end
		elseif keyframe == "14" then
			character.Head:FindFirstChild("ChaosSaberSlice"):Play()
			
			
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("Bump")
			end
		elseif keyframe == "15" then
			character.Head:FindFirstChild("ChaosSaberSlice"):Play()
			
			combatAnim:AdjustSpeed(0.2)
			local victim = module.Damage(character, combatAnim)
			combatAnim:AdjustSpeed(1)
			if victim then
				module.shakeScreen("Explosion")
			end
		elseif keyframe == "16" then
			
			task.spawn(function()
				game.ReplicatedStorage.Remotes.Functions:InvokeServer({_G.Pass,"PlaySound",game.ReplicatedStorage.Sounds.KnifeSwing2,character.Head})
			end)
			
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("Bump")
			end
		elseif keyframe == "17" then
			
			task.spawn(function()
				game.ReplicatedStorage.Remotes.Functions:InvokeServer({_G.Pass,"PlaySound",game.ReplicatedStorage.Sounds.KnifeSwing2,character.Head})
			end)
			
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("Explosion")
			end
		elseif keyframe == "18" then
			combatAnim:AdjustSpeed(0.4)
			character.Head:FindFirstChild("Swing2"):Play()
			
			
			local victim = module.Damage(character, combatAnim)
			if victim then
				module.shakeScreen("Explosion")
			end
			combatAnim:AdjustSpeed(0.9)
		elseif keyframe == "19" then
			character.Head:FindFirstChild("Swing2"):Play()
			task.spawn(function()
				game.ReplicatedStorage.Remotes.Functions:InvokeServer({_G.Pass,"PlaySound",game.ReplicatedStorage.Sounds.KnifeSwing2,character.Head})
			end)
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("SmallExplosion")
			end
		elseif keyframe == "20" then
			task.spawn(function()
				game.ReplicatedStorage.Remotes.Functions:InvokeServer({_G.Pass,"PlaySound",game.ReplicatedStorage.Sounds.KnifeSwing2,character.Head})
			end)
			
			local victim = module.Damage(character, combatAnim)
			
			if victim then
				module.shakeScreen("BigExplosion")
			end
		elseif keyframe == "21" then
			task.spawn(function()
				game.ReplicatedStorage.Remotes.Functions:InvokeServer({_G.Pass,"PlaySound",game.ReplicatedStorage.Sounds.KnifeSwing2,character.Head})
			end)

			local victim = module.Damage(character, combatAnim)

			if victim then
				module.shakeScreen("Bump")
			end
		elseif keyframe == "BettyGrab" then
			combatAnim:AdjustSpeed(0.1)
			_G.RootPartFollow = false
			game.ReplicatedStorage.Remotes.BettyMoves:InvokeServer({_G.Pass, "CombatGrab"})
			combatAnim:AdjustSpeed(0.5)
			_G.RootPartFollow = true
		end
	end)
	
	local d 
	d = character.AncestryChanged:Connect(function()
		if event then
			event:Disconnect(); event = nil; 
		end
		if d then
			d:Disconnect(); d = nil;
		end
	
	end)
	
	if table.find(testIDs, combatAnim.Animation.AnimationId) then
		task.delay(combatAnim.Length, function()
			if event then
				event:Disconnect(); event = nil;
			end
			if d then
				d:Disconnect(); d = nil;
			end
		end)
	end
	
end
function module.BurstScreen(player,Gui,Color,howlong,w)
	task.spawn(function()
		local gui = player.Character.Resources.Guis.BurstScreen:Clone()
		gui[Gui].BackgroundTransparency = 0
		if Color then
			gui[Gui].BackgroundColor3 = Color
		end
		gui.Parent = player.PlayerGui
		if w then
			wait(w)
		end
		if not howlong then howlong = 10 end
		for i = 1,howlong do
			gui[Gui].BackgroundTransparency = gui[Gui].BackgroundTransparency + 1/howlong
		wait()end
		gui:Destroy()
	end)
end

function module.AddKeyframes(animation, parent)
	local character = parent.Parent
	local rootPart, humanoid = character:WaitForChild("HumanoidRootPart"), character:WaitForChild("Humanoid")
	animation.KeyframeReached:Connect(function(keyframe)
		if keyframe == "Pause" then
			animation:AdjustSpeed(0)
		elseif keyframe == "Step" then
			if humanoid.FloorMaterial == Enum.Material.Grass then
				character.Head["walking_step_grass"]:Play()
			elseif humanoid.FloorMaterial == Enum.Material.Sand or humanoid.FloorMaterial == Enum.Material.Snow or humanoid.FloorMaterial == Enum.Material.Mud then
				character.Head["walking_step_sand"]:Play()
			elseif humanoid.FloorMaterial == Enum.Material.Wood or humanoid.FloorMaterial == Enum.Material.WoodPlanks then
				character.Head["walking_step_wood"]:Play()
			elseif humanoid.FloorMaterial == Enum.Material.Concrete or humanoid.FloorMaterial == Enum.Material.Ground or humanoid.FloorMaterial == Enum.Material.Asphalt or humanoid.FloorMaterial == Enum.Material.Cobblestone or humanoid.FloorMaterial == Enum.Material.SmoothPlastic or humanoid.FloorMaterial == Enum.Material.Plastic or humanoid.FloorMaterial == Enum.Material.Slate then
				character.Head["walking_step_stone"]:Play()
			end
		elseif keyframe == "RepeatEnd" then
			local timePosition = animation:GetTimeOfKeyframe("RepeatStart")
			animation.TimePosition = timePosition
		end
	end)
end

function module.BlurEffect(blur,t)
	task.spawn(function()
		local blurObject = game.Lighting:FindFirstChild("Blur") or Instance.new("BlurEffect", game.Lighting)
		blurObject.Size = blur
		for i = 1,t do
			blurObject.Size = blurObject.Size - blur/t
		wait(0.03) end
	end)
end

function module.CreateTween(part, info, goal, play) --[Info]: length, style, direction, repeatTimes, willRepeat, waitTime
    local Goal = goal
    local TwInfo = TweenInfo.new(unpack(info))
    local Tween = game:GetService("TweenService"):Create(part, TwInfo, Goal)
    if play then Tween:Play() end
    return Tween
end

function module.GetPlayerParts(character)
	local tab = {}
	for i, v in pairs(character:GetDescendants()) do
		if v:IsA("BasePart") then
			table.insert(tab,v)
		end
	end
	return tab
end

function module.DisableEffects(part,effect)
	for i,v in pairs(part:GetChildren()) do
		if v.Name == effect then
			v.Enabled = false
		end
	end
end

function module.CheckTable(tab,object)
	for i,v in pairs(tab) do
		if v == object then
			return true
		end
	end
	return false
end

function module.getNearByHumanoids(size)
	local character = player.Character or player.CharacterAdded:Wait()
	local rootPart = character.HumanoidRootPart
	local victim
	
	for i,v in pairs(workspace.Live:GetChildren()) do
		local victimHRP = v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Torso")
		if victimHRP and v ~= character then
			local foundPlayer = v
			
			local p1 = rootPart.Position + rootPart.CFrame.lookVector * size
			local p2 = victimHRP.Position
			
			if (p1 - p2).magnitude <= size then
				victim = v
			end
		end
	end
	return victim
end

function module.combatDamage(...)
	local character = player.Character or player.CharacterAdded:Wait()
	local rootPart = character.HumanoidRootPart
	local victim
	
	for i,v in pairs(workspace.Live:GetChildren()) do
		if v:FindFirstChild("HumanoidRootPart") and v ~= character then
			local foundPlayer = v
			
			local p1 = rootPart.Position + rootPart.CFrame.lookVector * 5
			local p2 = foundPlayer.HumanoidRootPart.Position
			
			if (p1 - p2).magnitude <= 6 then
				victim = foundPlayer
				
				if not Remotes.Damage:InvokeServer(victim, ...) then
					return nil
				end
			end
		end
	end
	return victim
end
function module.RotatePart(part)
	local functions = {}
	
	function functions:Play(angle, fadeIn, fadeOut)
		task.spawn(function()
			functions:Stop()
			
			module.Create("StringValue", "PlayingRotation", part)
			
			local x, y, z = unpack(angle)
			local originalX, originalY, originalZ = x, y, z
			
			if fadeIn then
				task.spawn(function()
					local t = fadeIn/0.03
					x,y,z = 0,0,0
					for i = 1, t do
						x = x + originalX/t
						y = y + originalY/t
						z = z + originalZ/t
					wait(0.03) end
				end)
			end
			
			local success = true
			while success and part:FindFirstChild("PlayingRotation") do
				success = pcall(function()
					if part.Parent:FindFirstChild(part.Name) then
						part.CFrame = part.CFrame * CFrame.Angles(x, y, z)
					end
				end)
				wait(0.03) 
			end
			if fadeOut and success then
				local fadingOut = true
				task.spawn(function()
					local t = fadeOut/0.03
					x,y,z = originalX,originalY,originalZ
					for i = 1, t do
						x = x - originalX/t
						y = y - originalY/t
						z = z - originalZ/t
						success = pcall(function()
							if part.Parent:FindFirstChild(part.Name) then
								part.CFrame = part.CFrame * CFrame.Angles(x, y, z)
							end
						end)
						if not success then break end
					wait(0.03) end
					fadingOut = false
				end)
			end
		end)
	end
	function functions:Stop()
		if part:FindFirstChild("PlayingRotation") then
			part:FindFirstChild("PlayingRotation"):Destroy()
		end
	end
	return functions
end
function module.CreateBodyMover(...)
	local mover, parent, force, value, debris = unpack(...)
	for i, v in pairs(parent:GetChildren()) do
		if v:IsA(mover) then
			v:Destroy()
		end
	end
	local bm = Instance.new(mover)
	bm.Name = "Client"
	if mover == "BodyPosition" then
		bm.MaxForce = force
		bm.Position = value
		bm.Parent = parent
	elseif mover == "BodyGyro" then
		bm.MaxTorque = force
		bm.CFrame = value
		bm.Parent = parent
	elseif mover == "BodyVelocity" then
		bm.MaxForce = force
		bm.Velocity = value
		bm.Parent = parent
	end
	if debris then
		game.Debris:AddItem(bm, debris)
	end
	return bm
end


return module
