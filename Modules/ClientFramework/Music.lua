--!strict
-- // Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SoundService = game:GetService("SoundService")

-- // Imports
local ClientFramework = loadstring(game:HttpGet("https://github.com/IdkRandomUsernameok/PublicAssets/raw/refs/heads/main/Modules/ClientFramework/ClientFramework.lua"))()

-- // Variables
local Logger = ClientFramework.CreateLogger()
local CancelEvent = Instance.new("BindableEvent")

local Resources = ReplicatedStorage.Resources

local Theme = Instance.new("Sound") do
	Theme.Name = "Theme"
	Theme.Parent = SoundService
end

-- // Exports
local Music = {
	Muted = false,
	Theme = Theme
}

function Music.Stop()
	CancelEvent:Fire(true)
end

function Music.Pitch(Pitch: number)
	Theme.PlaybackSpeed = Pitch
end

function Music.Play(Playlist: Folder)
	if Theme.IsPlaying then
		CancelEvent:Fire(true)
	end

	local SongList = {}
	for Index = 1, #Playlist:GetChildren() do
		local Song = Playlist:FindFirstChild(Index .. "Song")
		if not Song or not Song:IsA("Sound") then
			Logger(3, "Unable to load playlist %q, invalid naming scheme/instance class", Playlist.Name)
			return
		end

		table.insert(SongList, Song)
	end

	local ContinueLoop = true
	while ContinueLoop do
		for _, Song in SongList do
			Theme.SoundId = Song.SoundId
			Theme.PlaybackSpeed = Song.PlaybackSpeed
			Theme.TimePosition = Song.TimePosition
			
			if Song.PlaybackRegion then
				Theme.PlaybackRegionsEnabled = true;
				Theme.PlaybackRegion = Song.PlaybackRegion
				Theme.LoopRegion = Song.LoopRegion
				Theme.Looped = true
			end
			
			Theme.Volume = 0

			Theme:SetAttribute("Volume", Song.Volume)
			Theme:Play()

			if not Music.Muted then
				ClientFramework.Tween(Theme, 0.5, "Sine", "InOut", {Volume = Song.Volume})
			end
			
			if ClientFramework.WaitForEvents(Theme.Ended, CancelEvent.Event) == true then
				Theme:Stop()

				ContinueLoop = false
				break
			end
		end
	end
end

return Music
