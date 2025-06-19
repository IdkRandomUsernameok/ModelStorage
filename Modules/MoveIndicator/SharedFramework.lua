--!strict
-- // Services
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

-- // Variables
local RNG = Random.new()
local RaycastParameters = RaycastParams.new()
RaycastParameters.FilterDescendantsInstances = {workspace.Live}

-- // Exports
local SharedFramework = {}

function SharedFramework.GetGroundPosition(Position: Vector3): Vector3
	local RaycastResult = workspace:Raycast(Position + Vector3.yAxis, -Vector3.yAxis * 1000, RaycastParameters)
	if not RaycastResult then
		return Position
	end

	return RaycastResult.Position
end

function SharedFramework.GenerateGUID(...: any)
	return string.gsub(HttpService:GenerateGUID(...), "%W+", "")
end

function SharedFramework.IsStunned(Character: Model): boolean
	local Humanoid = Character:FindFirstChildOfClass("Humanoid")
	if not Humanoid or Humanoid.Health <= 0 then
		return true
	end

	local Hit: number? = Character:GetAttribute("Hit")
	return not Hit or Hit > 0
end

function SharedFramework.CreateLogger()
	local ScriptName do
		local Source = debug.info(2, "s")
		local Split = string.split(Source, ".")
		ScriptName = string.upper(Split[#Split])
	end

	local Prefixes = {
		`[INFO/{ScriptName}]`,
		`[WARN/{ScriptName}]`,
		`[ERROR/{ScriptName}]`
	}

	return function(Severity: number, Message: string, ...: any?)
		local RealMessage = if select("#", ...) ~= 0
			then string.format(Message, ...)
			else Message

		if Severity > 1 then
			warn(Prefixes[Severity], RealMessage)
		else
			print(Prefixes[Severity], RealMessage)
		end
	end
end

function SharedFramework.SetChildProperty(Object: Instance, ChildName: string, Property: string, Value: any?)
	local Child: any = Object:FindFirstChild(ChildName)
	if not Child then
		return
	end

	Child[Property] = Value
end

function SharedFramework.RNG(Minimum: number, Maximum: number)
	return RNG:NextNumber(Minimum, Maximum)
end

function SharedFramework.LimitDistance(Position: Vector3, Goal: Vector3, MaximumMagnitude: number)
	local Direction = Goal - Position
	if Direction.Magnitude <= MaximumMagnitude then
		return Goal
	end

	return Position + Direction.Unit * MaximumMagnitude
end

function SharedFramework.LoadModules(Parent: Instance): {[string]: any}
	local ModuleList = {}
	for _, Module: ModuleScript in SharedFramework.GetObjects(Parent:GetChildren(), "ModuleScript") do
		local Success, Content = SharedFramework.SafeCall(require, Module)
		if not Success then
			continue
		end

		ModuleList[Module.Name] = Content
	end

	return ModuleList
end

function SharedFramework.GetSpot(BaseCFrame: CFrame, DeltaDegree: number, Distance: number): Vector3
	local RaycastParameters = RaycastParams.new()
	RaycastParameters.FilterDescendantsInstances = {workspace.Live}

	local Position = BaseCFrame.Position
	for Degree = 0, 180, DeltaDegree do
		local Rotation = BaseCFrame * CFrame.Angles(0, math.rad(Degree), 0)
		local Cast1 = workspace:Raycast(Position - Rotation.LookVector, Rotation.LookVector * (Distance + 1), RaycastParameters)
		if Cast1 then
			return Cast1.Position
		end

		local Cast2 = workspace:Raycast(Position + Rotation.LookVector, -Rotation.LookVector * (Distance + 1), RaycastParameters)
		if Cast2 then
			return Cast2.Position
		end
	end

	return Position - BaseCFrame.LookVector * Distance
end

function SharedFramework.Lerp(Origin: number, Goal: number, Alpha: number)
	return Origin + (Goal - Origin) * Alpha
end

function SharedFramework.Tween(Object: Instance, Time: number, Style: string?, Direction: string?, Properties: {[string]: any}, ...: any): Tween
	local TweenInfoObject = TweenInfo.new(Time, Enum.EasingStyle[Style or "Linear"], Enum.EasingDirection[Direction or "In"], ...)
	local Tween = TweenService:Create(Object, TweenInfoObject, Properties)
	Tween:Play()

	return Tween
end

function SharedFramework.Disconnect(...: RBXScriptConnection | {RBXScriptConnection})
	for _, Object in {...} do
		if typeof(Object) == "RBXScriptConnection" then
			Object:Disconnect()
			continue
		end

		for _, Connection in Object do
			Connection:Disconnect()
		end
	end
end

function SharedFramework.ResumeThread(Thread: thread, ...: any)
	if coroutine.status(Thread) ~= "suspended" then
		return
	end

	task.spawn(Thread, ...)
end

function SharedFramework.LoadAnimation(Target: Model, Animation: Animation): AnimationTrack?
	local AnimatorHolder = Target:FindFirstChildOfClass("Humanoid") or Target:FindFirstChildOfClass("AnimationController")
	if not AnimatorHolder then
		return
	end

	local Animator = AnimatorHolder:FindFirstChildOfClass("Animator")
	if not Animator then
		return
	end

	local Success, AnimationTrack = pcall(Animator.LoadAnimation, Animator, Animation)
	if not Success then
		return
	end

	return AnimationTrack
end

function SharedFramework.PlayAnimation(Target: Model, Animation: Animation, ...: any): AnimationTrack?
	local AnimationTrack = SharedFramework.LoadAnimation(Target, Animation)
	if not AnimationTrack then
		return
	end

	AnimationTrack:Play(...)
	return AnimationTrack
end

function SharedFramework.LoadAppearance(Character: Model, AppearanceId: number)
	local Humanoid = Character:FindFirstChildOfClass("Humanoid")
	if not Humanoid then
		return
	end

	local Success, HumanoidDescription = pcall(Players.GetHumanoidDescriptionFromUserId, Players, AppearanceId)
	if not Success then
		return
	end

	HumanoidDescription.Head = 0
	HumanoidDescription.Torso = 0
	HumanoidDescription.RightArm = 0
	HumanoidDescription.LeftArm = 0
	HumanoidDescription.RightLeg = 0
	HumanoidDescription.LeftLeg = 0

	pcall(Humanoid.ApplyDescription, Humanoid, HumanoidDescription)
end

function SharedFramework.WaitForEvents(...: RBXScriptSignal)
	local Thread = coroutine.running()
	local Connections = {}

	local function Resume(...: any)
		SharedFramework.Disconnect(Connections)
		SharedFramework.ResumeThread(Thread, ...)
	end

	for _, Signal in {...} do
		table.insert(Connections, Signal:Once(Resume))
	end

	return coroutine.yield()
end

function SharedFramework.WaitForAttribute(Object: Instance, Name: string): any?
	local Value = Object:GetAttribute(Name)
	while Value == nil do
		SharedFramework.WaitForEvents(Object:GetAttributeChangedSignal(Name), Object.AncestryChanged)
		if not Object.Parent then
			return
		end

		Value = Object:GetAttribute(Name)
	end

	return Value
end

function SharedFramework.GetObjectFromPath(Path: string, RelativeTo: Instance?): Instance?
	local Object = RelativeTo or game
	for _, Name in string.split(Path, "/") do
		local NextObject = Object:FindFirstChild(Name)
		if not NextObject then
			return
		end

		Object = NextObject
	end

	return Object
end

function SharedFramework.SafeCall<T>(Function: (...any) -> ...T?, ...: any): (boolean, ...T?)
	return xpcall(Function, function(ErrorMessage: string)
		local ScriptName do
			local Source = debug.info(3, "s")
			local Split = string.split(Source, ".")
			ScriptName = string.upper(Split[#Split])
		end

		warn(`[ERROR/{ScriptName}] Encountered exception while executing function "{debug.info(Function, "n")}":`,
			debug.traceback(ErrorMessage)
		)
	end, ...)
end

function SharedFramework.GetObjects(ObjectList: {Instance}, ClassName: string, Name: string?): {any}
	local Objects = {}
	for _, Object in ObjectList do
		if (Name and Object.Name ~= Name) or not Object:IsA(ClassName) then
			continue
		end

		table.insert(Objects, Object)
	end

	return Objects
end

function SharedFramework.ToggleEffects(Ancestor: Instance, Enabled: boolean?, Name: string?, Duration: number?)
	local Effects = {}
	for _, Descendant: any in Ancestor:GetDescendants() do
		if not Descendant:IsA("ParticleEmitter") and not Descendant:IsA("Beam") and not Descendant:IsA("Trail") 
			or Name and Descendant.Name ~= Name 
		then
			continue
		end

		Descendant.Enabled = Enabled == true
		table.insert(Effects, Descendant)
	end

	if not Enabled or not Duration then
		return
	end

	task.wait(Duration)

	for _, Descendant in Effects do
		Descendant.Enabled = false
	end
end

function SharedFramework.Weld(Part0: BasePart, Part1: BasePart, C0: CFrame?, C1: CFrame?)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part0
	Weld.Part1 = Part1
	if C0 then
		Weld.C0 = C0
	end
	
	if C1 then
		Weld.C1 = C1
	end

	Weld.Parent = Part1
	return Weld
end

function SharedFramework.WrapFunction(Function: (...any) -> ...any, ...)
	local Arguments = {...}
	return function()
		return Function(unpack(Arguments))
	end
end

function SharedFramework.AddAttribute(Object: Instance, Name: string, Duration: number?, RemoveIfZero: boolean?)
	local Value = Object:GetAttribute(Name) or 0
	Value += 1

	Object:SetAttribute(Name, Value)

	if Duration then
		task.delay(Duration, SharedFramework.RemoveAttribute, Object, Name, RemoveIfZero)
	end
end

function SharedFramework.RemoveAttribute(Object: Instance, Name: string, RemoveIfZero: boolean?)
	local Value = Object:GetAttribute(Name) or 1
	Value -= 1

	if RemoveIfZero and Value <= 0 then
		Object:SetAttribute(Name)
		return
	end

	Object:SetAttribute(Name, Value)
end

function SharedFramework.Create(ClassName: string, Name: string?, Parent: Instance?,
	Properties: { [string] : any }?, Attributes: { [string]: any }?, Duration: number?
): any
	local Object = Instance.new(ClassName)
	if Name then
		Object.Name = Name
	end

	if Properties then
		for Property, Value in Properties do
			Object[Property] = Value
		end
	end

	if Attributes then
		for Attribute, Value in Attributes do
			Object:SetAttribute(Attribute, Value)
		end
	end

	if Parent then
		Object.Parent = Parent
	end

	if Duration then
		task.delay(Duration, Object.Destroy, Object)
	end

	return Object
end

return SharedFramework
