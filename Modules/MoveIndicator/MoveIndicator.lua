
--!strict
-- // Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

-- // Imports
local ClientFramework = loadstring(game:HttpGet("https://github.com/IdkRandomUsernameok/PublicAssets/raw/refs/heads/main/Modules/MoveIndicator/SharedFramework.lua"))()
local Rainbow = loadstring(game:HttpGet("https://github.com/IdkRandomUsernameok/PublicAssets/raw/refs/heads/main/Modules/MoveIndicator/Rainbow.lua"))()
local Data = loadstring(game:HttpGet("https://github.com/IdkRandomUsernameok/PublicAssets/raw/refs/heads/main/Modules/MoveIndicator/Data.lua"))()
local Types = loadstring(game:HttpGet("https://github.com/IdkRandomUsernameok/PublicAssets/raw/refs/heads/main/Modules/MoveIndicator/Types.lua"))()

-- // Variables
local LocalPlayer = Players.LocalPlayer

local Resources = ReplicatedStorage.Resources
local Guis = Resources.Guis.MoveIndicator

-- // Functions
local function ChangeText(Label: TextLabel, Text: string)
	local SecondLabel = Label:FindFirstChildOfClass("TextLabel")
	if SecondLabel then
		SecondLabel.Text = Text
	end

	Label.Text = Text
end

-- // Exports
local MoveIndicator = {}
MoveIndicator.__index = {}

type Page = {Page: typeof(Guis.Page), List: {typeof(Guis.Template)}}
type Data = {MoveUi: typeof(Guis.Ui), Data: Types.TypeData, Pages: {Page}, Page: number, Connection: RBXScriptConnection?}
type MoveIndicator = typeof( setmetatable({}:: Data, {}:: typeof(MoveIndicator)) )

function MoveIndicator.New(Type: string): MoveIndicator
	local PlayerGui = LocalPlayer:WaitForChild("PlayerGui", 5)
	if not PlayerGui then
		error("No PlayerGui found!")
	end

	local TypeData = Data[Type]
	if not TypeData then
		error("This type lacks move indicator data")
	end

	local MoveUi = Guis.Ui:Clone()
	if game:GetService("UserInputService").TouchEnabled then
		local frame = MoveUi:FindFirstChildWhichIsA("Frame")
		frame.Size = UDim2.new(0.445,0,0.358,0)
		frame.Position = UDim2.new(1,-55,1,0)
	end
	local Pages: {Page} = {}
	for Index, Mode in TypeData.Modes do
		local Page = Guis.Page:Clone()
		Page.Name = "Page" .. Index
		Page.Visible = Index == 1

		local IndicatorList = {}
		for MoveIndex = 1, Mode.Amount do
			local IndicatorHolder = Instance.new("Frame")
			IndicatorHolder.Size = UDim2.fromScale(0.17, 0.4)
			IndicatorHolder.BackgroundTransparency = 1
			IndicatorHolder.Name = "Move" .. MoveIndex

			local Indicator = Guis.Template:Clone()
			Indicator.Name = "Move" .. MoveIndex
			--zeusfind/setModeInfo
			Indicator:SetAttribute("Mode", Mode.Name)
			Indicator:SetAttribute("Index", MoveIndex)
			if Mode.Color == "Rainbow" then
				Indicator.UIStroke.UIGradient.Color = Rainbow()
				Indicator:SetAttribute("Rainbow", true)
			elseif typeof(Mode.Color) == "Color3" then
				Indicator.UIStroke.Color = Mode.Color
			end

			if Mode.Locked and table.find(Mode.Locked, MoveIndex) then
				local LockFrame = Instance.new("Frame")
				LockFrame.ZIndex = 5
				LockFrame.BorderSizePixel = 0
				LockFrame.BackgroundTransparency = 0.25
				LockFrame.BackgroundColor3 = Color3.new()
				LockFrame.Name = "Lock"
				LockFrame.Size = UDim2.fromScale(1, 1)
				LockFrame.Parent = Indicator

				Indicator:SetAttribute("Locked", true)
			end

			ChangeText(Indicator.MoveNumber, tostring(MoveIndex))
			Indicator.Parent = IndicatorHolder
			IndicatorHolder.Parent = Page

			table.insert(IndicatorList, Indicator)
		end

		Page:SetAttribute("Index", Index)
		Page:SetAttribute("Rainbow", Mode.Color == "Rainbow")
		Page.Parent = MoveUi.MainFrame.Pages
		table.insert(Pages, {
			Page = Page,
			List = IndicatorList
		})
	end

	local Object = {
		MoveUi = MoveUi,
		Data = TypeData,
		Pages = Pages,
		Page = 0
	}

	setmetatable(Object, MoveIndicator)
	Object.Connection = RunService.PreRender:Connect(function()
		Object:Update()
	end)

	Object:SwitchPage(1)
	MoveUi.Parent = PlayerGui

	local Character = LocalPlayer.Character
	if Character then
		Character.AncestryChanged:Once(function()
			Object:Destroy()
		end)
	end

	for _, Page in Pages do
		for _, Indicator in Page.List do
			Indicator.Rotation = -5
			ClientFramework.Tween(Indicator, 1, "Sine", "InOut", {Rotation = 5}, -1, true)
		end
	end

	return Object
end

function MoveIndicator.__index.Update(self: MoveIndicator)
	local Color = Rainbow()
	local Page = self.Pages[self.Page]
	if Page.Page:GetAttribute("Rainbow") then
		local MainFrame = self.MoveUi:FindFirstChild("MainFrame")
		local ModeName = MainFrame and MainFrame:FindFirstChild("ModeName")
		local TextLabel = ModeName and ModeName:FindFirstChild("TextLabel")
		local Gradient = TextLabel and TextLabel:FindFirstChild("UIGradient")
		if Gradient then
			Gradient.Color = Color
		end
	end

	for _, Indicator in Page.List do
		if Indicator:GetAttribute("Rainbow") then
			local UIStroke = Indicator:FindFirstChild("UIStroke")
			local OutlineGradient = UIStroke and UIStroke:FindFirstChild("UIGradient")
			if OutlineGradient then
				OutlineGradient.Color = Color
			end
		end

		local Time = Indicator:GetAttribute("Time")
		local CooldownStart = Indicator:GetAttribute("LastCooldown")
		if not Time or not CooldownStart then
			continue
		end

		local TimeLeft = math.max(Time - (tick() - CooldownStart), 0)
		local Timer = Indicator:FindFirstChild("Timer")
		if Timer then
			Timer.Text = string.format("%.1f", TimeLeft)
		end
	end
end

function MoveIndicator.__index.SetCooldown(self: MoveIndicator, PageNumber: number, MoveNumber: number, Time: number?)
	local Indicator = self.Pages[PageNumber].List[MoveNumber]
	local TimeNow = tick()
	Indicator:SetAttribute("Time", Time)
	Indicator:SetAttribute("LastCooldown", TimeNow)

	local CooldownFrame = Indicator.Cooldown
	local Flash = Indicator.Flash
	local Timer = Indicator.Timer
	if not Indicator:GetAttribute("OnCooldown") then
		Flash.BackgroundColor3 = Color3.new()
		Flash.BackgroundTransparency = 1
		Flash.Visible = true

		CooldownFrame.Size = UDim2.fromScale(1, 1)
		CooldownFrame.BackgroundTransparency = 1
		CooldownFrame.Visible = true

		ClientFramework.Tween(CooldownFrame, 0.1, "Sine", "InOut", {BackgroundTransparency = 0.5})
		ClientFramework.Tween(Flash, 0.1, "Sine", "InOut", {BackgroundTransparency = 0.35})
		Indicator:SetAttribute("OnCooldown", true)
	end

	if Time then
		Timer.Visible = true

		CooldownFrame.Size = UDim2.fromScale(1, 1)
		ClientFramework.Tween(CooldownFrame, Time, "Linear", "In", {Size = UDim2.fromScale(1, 0)}).Completed:Once(function()
			if Indicator:GetAttribute("LastCooldown") ~= TimeNow then
				return
			end

			Indicator:SetAttribute("OnCooldown")
			CooldownFrame.Visible = false

			Flash.BackgroundColor3 = Color3.new(1, 1, 1)
			Flash.BackgroundTransparency = 0

			Timer.Visible = false
			ClientFramework.Tween(Flash, 0.25, "Sine", "InOut", {BackgroundTransparency = 1}).Completed:Wait()
		end)
	end
end

function MoveIndicator.__index.SwitchPage(self: MoveIndicator, PageNumber: number)
	if self.Page == PageNumber then
		return
	end

	local MoveUi = self.MoveUi
	local MainFrame = MoveUi.MainFrame
	local ModeLabel = MainFrame.ModeName

	local ModeData = self.Data.Modes[PageNumber]
	ChangeText(ModeLabel, ModeData.Name)
	ModeLabel.TextLabel.TextColor3 = if typeof(ModeData.Color) == "Color3" then ModeData.Color else Color3.new(1, 1, 1)
	ModeLabel.TextLabel.UIGradient.Color = if typeof(ModeData.Color) == "Color3" then ColorSequence.new(Color3.new(1, 1, 1)) else Rainbow()
	ModeLabel.TextColor3 = ModeData.OutlineColor or Color3.new(0, 0, 0)
	ModeLabel.TextLabel.TextStrokeColor3 = ModeData.OutlineColor or Color3.new(0, 0, 0)

	self.Page = PageNumber
	for _, Page: Frame in MainFrame.Pages:GetChildren() do
		Page.Visible = Page:GetAttribute("Index") == PageNumber
	end
end

function MoveIndicator.__index.SetTipVisibility(self: MoveIndicator, IsVisible: boolean)
	local MainFrame = self.MoveUi.MainFrame
	local ModeName = MainFrame.ModeName
	local Help = MainFrame.Help
	if Help then
		if Help.Visible ~= (IsVisible == true) then
			local Size = ModeName.Size.Y.Scale
			ModeName.Position += UDim2.fromScale(0, (if IsVisible then -Size else Size) / 2)
		end

		Help.Visible = IsVisible == true
	end
end

function MoveIndicator.__index.UnlockAllMoves(self: MoveIndicator)
	for _, Page in self.Pages do
		for _, Indicator in Page.List do
			if not Indicator:GetAttribute("Locked") then
				continue
			end

			local Lock = Indicator:FindFirstChild("Lock")
			if Lock then
				Lock:Destroy()
			end
		end
	end
end

--function MoveIndicator.__index.UnlockMoves(self:MoveIndicator, PageNumber: number, MoveNumbers:{})
--	for _, Page in self.Pages do
--		for _, Indicator in Page.List do
--			if table.find(MoveNumbers, )
--		end
--	end
--end

function MoveIndicator.__index.Destroy(self: MoveIndicator)
	if self.Connection then
		self.Connection:Disconnect()
		self.Connection = nil
	end

	self.MoveUi:Destroy()
end

return MoveIndicator
