--!strict
-- // Services
local RunService = game:GetService("RunService")

-- // Variables
local Colors = {
	ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)),
	ColorSequenceKeypoint.new(0.2, Color3.new(0.968627, 0, 1)),
	ColorSequenceKeypoint.new(0.4, Color3.new(0.0666667, 0, 1)),
	ColorSequenceKeypoint.new(0.6, Color3.new(0, 1, 0.968627)),
	ColorSequenceKeypoint.new(0.8, Color3.new(0.0509804, 1, 0)),
	ColorSequenceKeypoint.new(1, Color3.new(1, 0.933333, 0))
}

local CurrentColorData = table.clone(Colors)
local Sequence: ColorSequence

-- // Functions
local function AreColorsEqual(Color1: Color3, Color2: Color3, Difference: number?)
	local Difference = Difference or 0.3
	return math.abs(Color1.R - Color2.R) <= Difference and math.abs(Color1.G - Color2.G) <= Difference
		and math.abs(Color1.B - Color2.B) <= Difference
end

local function OnUpdate(DeltaTime: number)
	for Index, Keypoint in CurrentColorData do
		local NextKeypoint = Colors[Index + 1] or Colors[1]
		if AreColorsEqual(Keypoint.Value, NextKeypoint.Value) then
			for Index, Keypoint in table.clone(Colors) do
				if Colors[Index + 1] then
					Colors[Index + 1] = Keypoint
				else
					Colors[1] = Keypoint
				end
			end
		end
		
		local Lerp = Keypoint.Value:Lerp(NextKeypoint.Value, DeltaTime * 3)
		local Color = Color3.new(math.clamp(Lerp.R, 0, 1), math.clamp(Lerp.G, 0, 1), math.clamp(Lerp.B, 0, 1))
		CurrentColorData[Index] = ColorSequenceKeypoint.new(Keypoint.Time, Color)
	end
	
	Sequence = ColorSequence.new(CurrentColorData)
end

-- // Initialization
RunService.PreRender:Connect(OnUpdate)

-- // Exports
local function GetColor()
	return Sequence or ColorSequence.new(Colors)
end

return GetColor
