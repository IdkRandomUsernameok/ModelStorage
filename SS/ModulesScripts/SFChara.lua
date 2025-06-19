game:GetService("Workspace")
local v1 = game:GetService("Players")
game:GetService("Lighting")
game:GetService("ReplicatedFirst")
local u2 = game:GetService("ReplicatedStorage")
game:GetService("UserInputService")
game:GetService("RunService")
local _ = u2.Resources
local _ = u2.Remotes
local _ = math.rad
local _ = math.sin
local _ = math.random
local u3 = require(u2.ClientModules.MainModule)
local v4 = {}
local u5 = v1.LocalPlayer
local u6 = u5.Character or u5.CharacterAdded:Wait()
local u7 = u6:WaitForChild("HumanoidRootPart")
u6:WaitForChild("Humanoid")
u6:WaitForChild("Head")
u6:WaitForChild("Torso")
u6:WaitForChild("Left Arm")
u6:WaitForChild("Right Arm")
u6:WaitForChild("Left Leg")
u6:WaitForChild("Right Leg")
local function u10() --[[Anonymous function at line 25]]
    local v8 = {}
    for _, v9 in pairs(workspace.Live:GetChildren()) do
        table.insert(v8, v9)
    end
    return v8
end
function v4.HoverEffect() --[[Anonymous function at line 33]]
    --[[
    Upvalues:
        [1] = u10
        [2] = u7
    --]]
    task.spawn(function() --[[Anonymous function at line 34]]
        --[[
        Upvalues:
            [1] = u10
            [2] = u7
        --]]
        local v11 = u10()
        local v12 = Ray.new(u7.Position, (Vector3.new(0, -1, 0)).unit * 10)
        local _, _ = workspace:FindPartOnRayWithIgnoreList(v12, v11)
    end)
end
function v4.HoverForwardEffect() --[[Anonymous function at line 46]]
    --[[
    Upvalues:
        [1] = u10
        [2] = u7
    --]]
    task.spawn(function() --[[Anonymous function at line 47]]
        --[[
        Upvalues:
            [1] = u10
            [2] = u7
        --]]
        local v13 = u10()
        local v14 = Ray.new(u7.Position, (Vector3.new(0, -1, 0)).unit * 10)
        local _, _ = workspace:FindPartOnRayWithIgnoreList(v14, v13)
    end)
end
function v4.Damage(p15) --[[Anonymous function at line 59]]
    --[[
    Upvalues:
        [1] = u6
        [2] = u7
    --]]
    for _, v16 in pairs(workspace.Live:GetChildren()) do
        if v16:FindFirstChild("HumanoidRootPart") and (v16 ~= u6 and (u7.Position + u7.CFrame.lookVector * 5 - v16.HumanoidRootPart.Position).magnitude <= 6) then
            task.spawn(function() --[[Anonymous function at line 68]]
                game.Lighting.Blur.Size = 16
                for _ = 1, 5 do
                    game.Lighting.Blur.Size = game.Lighting.Blur.Size - 2
                    wait(0.03)
                end
            end)
            game.ReplicatedStorage.Remotes.Damage:InvokeServer(_G.Pass, v16, p15)
        end
    end
end
local u17 = {
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
        ["Speed"] = 0.4,
        ["Times"] = 20
    },
    ["Light5"] = {
        ["Direction"] = "Right",
        ["Angle"] = -30,
        ["Speed"] = 0.3,
        ["Times"] = 20
    },
    ["Light6"] = {
        ["Direction"] = "Right",
        ["Angle"] = 90,
        ["Speed"] = 0.2,
        ["Times"] = 20
    }
}
function moveForward(p18, p19, p20)
    --[[
    Upvalues:
        [1] = u7
    --]]
    if p19 then
        local v21 = Ray.new(u7.Position, p19)
        local v22, v23 = workspace:FindPartOnRayWithWhitelist(v21, p20)
        if v22 then
            p18.Position = v23 - u7.CFrame.lookVector * 1 + Vector3.new(0, 1, 0)
            return
        end
    else
        local v24 = Ray.new(u7.Position, u7.CFrame.lookVector.unit * 10)
        local v25, v26 = workspace:FindPartOnRayWithWhitelist(v24, p20)
        if v25 then
            p18.Position = v26 - u7.CFrame.lookVector * 1
        end
    end
end
function v4.SwordCombat(u27) --[[Anonymous function at line 129]]
    --[[
    Upvalues:
        [1] = u6
        [2] = u7
        [3] = u3
        [4] = u17
        [5] = u5
        [6] = u2
    --]]
    local v28 = u6.Humanoid
    if script.Animations.BladesCombat:FindFirstChild(u27) then
        local v29 = v28:FindFirstChildOfClass("Animator"):LoadAnimation(script.Animations.BladesCombat[u27])
        if v29.Length <= 0 then
            repeat
                game:GetService("RunService").RenderStepped:Wait()
            until v29.Length > 0
        end
        v29:Play(0.1)
        v29:AdjustSpeed(1)
        if u6:FindFirstChild("SecondLife") then
            v29:AdjustSpeed(1.6)
        else
            v29:AdjustSpeed(1.2)
        end
        game.ReplicatedStorage.Remotes.SwordHandler:FireServer({
            _G.Pass,
            "SliceEffect",
            true,
            "RealKnife"
        })
        for _, v30 in pairs(u7:GetChildren()) do
            if v30.Name == "Client" then
                v30:Destroy()
            end
        end
        local v31 = Instance.new("BodyPosition")
        v31.Name = "Client"
        u3.CombatAnimation(v29, u6, v31, u17)
        v29.KeyframeReached:Connect(function(p32) --[[Anonymous function at line 155]]
            --[[
            Upvalues:
                [1] = u27
            --]]
            if p32 == "Slash" then
                if u27 == "Light1" then
                    game.ReplicatedStorage.Remotes.Events:FireServer({
                        _G.Pass,
                        "SlashEffect",
                        script.Animations.Slash.Swing1,
                        Color3.new(1, 0, 0)
                    })
                    return
                end
                if u27 == "Light2" then
                    game.ReplicatedStorage.Remotes.Events:FireServer({
                        _G.Pass,
                        "SlashEffect",
                        script.Animations.Slash.Swing2,
                        Color3.new(1, 0, 0)
                    })
                    return
                end
                if u27 == "Light3" then
                    game.ReplicatedStorage.Remotes.Events:FireServer({
                        _G.Pass,
                        "SlashEffect",
                        script.Animations.Slash.Swing1,
                        Color3.new(1, 0, 0)
                    })
                    return
                end
                if u27 == "Light4" then
                    game.ReplicatedStorage.Remotes.Events:FireServer({
                        _G.Pass,
                        "SlashEffect",
                        script.Animations.Slash.Swing1,
                        Color3.new(1, 0, 0)
                    })
                    return
                end
                if u27 == "Light5" then
                    game.ReplicatedStorage.Remotes.Events:FireServer({
                        _G.Pass,
                        "SlashEffect",
                        script.Animations.Slash.Swing1,
                        Color3.new(1, 0, 0)
                    })
                    return
                end
                if u27 == "Light6" then
                    game.ReplicatedStorage.Remotes.Events:FireServer({
                        _G.Pass,
                        "SlashEffect",
                        script.Animations.Slash.Swing4,
                        Color3.new(1, 0, 0)
                    })
                end
            end
        end)
        local v33 = u5.Backpack.Main.LockOnScript.LockOn
        if v33.Value then
            local v34 = u7
            local v35 = CFrame.new
            local v36 = u7.Position
            local v37 = v33.Value.HumanoidRootPart.Position.X
            local v38 = u7.Position.Y
            local v39 = v33.Value.HumanoidRootPart.Position.Z
            v34.CFrame = v35(v36, (Vector3.new(v37, v38, v39)))
        end
        local v40 = Ray.new(u7.CFrame.p, (Vector3.new(0, -1, 0)).unit * 4)
        local v41, v42 = game:GetService("Workspace"):FindPartOnRay(v40, u6)
        if v41 then
            u2.Remotes.Effects:FireServer({
                _G.Pass,
                "Particle",
                "SmallForwardSmokeParticle",
                CFrame.new(v42, v42 + u7.CFrame.lookVector * 10) * CFrame.Angles(1.5707963267948966, 1.5707963267948966, 0),
                0.1
            })
        end
        if u27:match("Light") or u27:match("Heavy") then
            v31.MaxForce = Vector3.new(100000, 0, 100000)
        else
            v31.MaxForce = Vector3.new(100000, 100000, 100000)
        end
        v31.P = 30000
        v31.Parent = u7
        local v43 = Instance.new("BodyGyro")
        v43.Name = "Client"
        v43.MaxTorque = Vector3.new(10000, 10000, 10000)
        v43.CFrame = u7.CFrame
        v43.Parent = u7
        local u44 = {}
        pcall(function() --[[Anonymous function at line 200]]
            --[[
            Upvalues:
                [1] = u5
                [2] = u44
            --]]
            for _, v45 in pairs(workspace.Live:GetChildren()) do
                if v45:FindFirstChild("HumanoidRootPart") and (v45.Name ~= u5.Name and (v45:FindFirstChild("Torso") and v45:FindFirstChild("Head"))) then
                    local v46 = u44
                    local v47 = v45.HumanoidRootPart
                    table.insert(v46, v47)
                    local v48 = u44
                    local v49 = v45.Torso
                    table.insert(v48, v49)
                    local v50 = u44
                    local v51 = v45.Head
                    table.insert(v50, v51)
                    local v52 = u44
                    local v53 = v45["Left Arm"]
                    table.insert(v52, v53)
                    local v54 = u44
                    local v55 = v45["Right Arm"]
                    table.insert(v54, v55)
                    local v56 = u44
                    local v57 = v45["Right Leg"]
                    table.insert(v56, v57)
                    local v58 = u44
                    local v59 = v45["Left Leg"]
                    table.insert(v58, v59)
                end
            end
        end)
        local v60 = Ray.new(u7.Position, u7.CFrame.lookVector.unit * 10)
        local v61, v62 = workspace:FindPartOnRayWithWhitelist(v60, u44)
        if v61 then
            v31.Position = v62 - u7.CFrame.lookVector * 1.5
        else
            v31.Position = u7.Position + u7.CFrame.lookVector * 10
        end
        repeat
            moveForward(v31, nil, u44)
            game:GetService("RunService").RenderStepped:Wait()
        until v29.TimePosition > v29.Length - 0.2 or (not v29.isPlaying or u3.checkIfHit())
        game.ReplicatedStorage.Remotes.SwordHandler:FireServer({
            _G.Pass,
            "SliceEffect",
            false,
            "RealKnife"
        })
        v31:Destroy()
        v43:Destroy()
    end
end
return v4
