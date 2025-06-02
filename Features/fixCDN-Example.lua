local FixCDN = loadstring(game:HttpGet("https://raw.githubusercontent.com/IdkRandomUsernameok/PublicAssets/refs/heads/main/Modules/FixCDN.lua"))()
local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMinisterq/Notification-Library/Main/Library.lua"))()

local function EnsureAssetDownloaded(filename, originalURL)
    local success, _ = pcall(readfile, filename)
    if success then return end

    NotificationLibrary:SendNotification("Warning", "Downloading required asset...", 3)

    local finalURL = FixCDN(originalURL)
    local assetData = game:HttpGet(finalURL)

    writefile(filename, assetData)

    NotificationLibrary:SendNotification("Success", "Asset downloaded successfully.", 3)
end


EnsureAssetDownloaded(
    "MUI.mp3",
    "https://cdn.discordapp.com/attachments/1048878667750703108/1378992293155045506/MUI.mp3"
)
