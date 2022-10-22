

local main = Instance.new("ScreenGui")
local sffss = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")



main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

sffss.Name = "sffss"
sffss.Parent = main
sffss.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sffss.BackgroundTransparency = 1.000
sffss.Position = UDim2.new(0.721235514, 0, 0.0123456791, 0)
sffss.Size = UDim2.new(0, 355, 0, 794)

UIListLayout.Parent = sffss
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout.Padding = UDim.new(0, 5)


local notifCore = {}


function notifCore:CreateNotify(mess, duration) -- can be rich text.
    local notify = Instance.new("Frame")
    local tile = Instance.new("TextLabel")
    local desc = Instance.new("TextLabel")
    local audio = Instance.new("Sound", game.Workspace)


    notify.Name = "notify"
    notify.Parent = sffss
    notify.BackgroundColor3 = Color3.fromRGB(20, 141, 255)
    notify.BackgroundTransparency = 0.650
    notify.Position = UDim2.new(0, 0, 0.874055445, 0)
    notify.Size = UDim2.new(0, 355, 0, 100)

    tile.Name = "tile"
    tile.Parent = notify
    tile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tile.BackgroundTransparency = 1.000
    tile.Position = UDim2.new(0.0169014093, 0, 0.0599999987, 0)
    tile.Size = UDim2.new(0, 290, 0, 12)
    tile.Font = Enum.Font.SourceSans
    tile.Text = "SNUB F System"
    tile.TextColor3 = Color3.fromRGB(0, 0, 0)
    tile.TextSize = 19.000
    tile.TextXAlignment = Enum.TextXAlignment.Left

    desc.Name = "desc"
    desc.Parent = notify
    desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    desc.BackgroundTransparency = 1.000
    desc.BorderColor3 = Color3.fromRGB(53, 49, 0)
    desc.Position = UDim2.new(0.0169014093, 0, 0.180000007, 0)
    desc.Size = UDim2.new(0, 342, 0, 76)
    desc.Font = Enum.Font.SourceSans
    desc.TextColor3 = Color3.fromRGB(255, 179, 0)
    desc.TextSize = 17.000
    desc.TextXAlignment = Enum.TextXAlignment.Left
    desc.TextYAlignment = Enum.TextYAlignment.Top

    desc.Text = mess
    audio.SoundId = "http://www.roblox.com/asset/?id=1116768946"
    audio.Volume = 0.5
    audio:Play()
    wait(duration)
    notify:Destroy()
end

return notifCore