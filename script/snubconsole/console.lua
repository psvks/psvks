


config = {
    mainFrame = false,
    defaultMes = "SNUB F Was loaded correctly",
    keyOpening = "F4"
}

local open = false


local snub = Instance.new("ScreenGui")
local snubf_frame = Instance.new("Frame")
local sffss = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")

local date = ""

snub.Name = "snub"
snub.Parent = game.CoreGui
snub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

snubf_frame.Name = "snubf_frame"
snubf_frame.Parent = snub
snubf_frame.BackgroundColor3 = Color3.fromRGB(17, 100, 255)
snubf_frame.BackgroundTransparency = 0.850
snubf_frame.Position = UDim2.new(0, 0, 0.631165147, 0)
snubf_frame.Size = UDim2.new(0, 1295, 0, 292)
snubf_frame.Visible = config[1]

sffss.Name = "sffss"
sffss.Parent = snubf_frame
sffss.Active = true
sffss.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sffss.BackgroundTransparency = 1.000
sffss.Size = UDim2.new(0, 1295, 0, 292)
sffss.CanvasSize = UDim2.new(0, 0, 100, 2)
sffss.ScrollBarThickness = 6

UIListLayout.Parent = sffss
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder


local Keybind = config.keyOpening

game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
   if inputObject.KeyCode == Enum.KeyCode[Keybind] then
       if open == true then
            snubf_frame.Visible = false
            open = false
            config.mainFrame = false
       else
            snubf_frame.Visible = true
            open = true
            config.mainFrame = true
       end
   end
end)


function getDate()
    date = os.time()
end



local core = {}
function core:CreatePrint(mess: string)
    getDate()
    local info = Instance.new("Frame")
    local infos_sffss = Instance.new("TextLabel")
    local descionfo = Instance.new("TextLabel")

    info.Name = "info"
    info.Parent = sffss
    info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    info.BackgroundTransparency = 0.650
    info.Size = UDim2.new(0, 1295, 0, 34)
    
    infos_sffss.Name = "infos_sffss"
    infos_sffss.Parent = info
    infos_sffss.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    infos_sffss.BackgroundTransparency = 1.000
    infos_sffss.Position = UDim2.new(0, 0, 0.205882356, 0)
    infos_sffss.Size = UDim2.new(0, 158, 0, 19)
    infos_sffss.Font = Enum.Font.Unknown
    infos_sffss.Text = date.." | INFO:"
    infos_sffss.TextColor3 = Color3.fromRGB(0, 0, 0)
    infos_sffss.TextSize = 14.000
    infos_sffss.TextWrapped = true
    infos_sffss.TextXAlignment = Enum.TextXAlignment.Right
    
    descionfo.Name = "descionfo"
    descionfo.Parent = info
    descionfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    descionfo.BackgroundTransparency = 1.000
    descionfo.Position = UDim2.new(0.128957525, 0, 0, 0)
    descionfo.Size = UDim2.new(0, 1128, 0, 34)
    descionfo.Font = Enum.Font.Ubuntu
    descionfo.Text = mess
    descionfo.TextColor3 = Color3.fromRGB(0, 0, 0)
    descionfo.TextSize = 14.000
    descionfo.TextWrapped = true
    descionfo.TextXAlignment = Enum.TextXAlignment.Left
    descionfo.TextYAlignment = Enum.TextYAlignment.Top
end



function core:CreateWarn(mess: string)
    getDate()
    local infos_sffss_3 = Instance.new("TextLabel")
    local descionfo_3 = Instance.new("TextLabel")
    local warns = Instance.new("Frame")


    warns.Name = "warns"
    warns.Parent = sffss
    warns.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    warns.BackgroundTransparency = 0.650
    warns.Size = UDim2.new(0, 1295, 0, 34)
    
    infos_sffss_3.Name = "infos_sffss"
    infos_sffss_3.Parent = warns
    infos_sffss_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    infos_sffss_3.BackgroundTransparency = 1.000
    infos_sffss_3.Position = UDim2.new(0, 0, 0.205882356, 0)
    infos_sffss_3.Size = UDim2.new(0, 158, 0, 19)
    infos_sffss_3.Font = Enum.Font.Unknown
    infos_sffss_3.Text = date.." | WARN:"
    infos_sffss_3.TextColor3 = Color3.fromRGB(255, 213, 0)
    infos_sffss_3.TextSize = 14.000
    infos_sffss_3.TextWrapped = true
    infos_sffss_3.TextXAlignment = Enum.TextXAlignment.Right
    
    descionfo_3.Name = "descionfo"
    descionfo_3.Parent = warns
    descionfo_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    descionfo_3.BackgroundTransparency = 1.000
    descionfo_3.Position = UDim2.new(0.128957525, 0, 0, 0)
    descionfo_3.Size = UDim2.new(0, 1128, 0, 34)
    descionfo_3.Font = Enum.Font.Ubuntu
    descionfo_3.Text = mess
    descionfo_3.TextColor3 = Color3.fromRGB(0, 0, 0)
    descionfo_3.TextSize = 14.000
    descionfo_3.TextWrapped = true
    descionfo_3.TextXAlignment = Enum.TextXAlignment.Left
    descionfo_3.TextYAlignment = Enum.TextYAlignment.Top
end



function core:CreateErr(mess: string)
    getDate()
    local errors = Instance.new("Frame")
    local infos_sffss_2 = Instance.new("TextLabel")
    local descionfo_2 = Instance.new("TextLabel")


    errors.Name = "errors"
    errors.Parent = sffss
    errors.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    errors.BackgroundTransparency = 0.650
    errors.Size = UDim2.new(0, 1295, 0, 34)

    infos_sffss_2.Name = "infos_sffss"
    infos_sffss_2.Parent = errors
    infos_sffss_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    infos_sffss_2.BackgroundTransparency = 1.000
    infos_sffss_2.Position = UDim2.new(0, 0, 0.205882356, 0)
    infos_sffss_2.Size = UDim2.new(0, 158, 0, 19)
    infos_sffss_2.Font = Enum.Font.Unknown
    infos_sffss_2.Text = date.." | ERROR:"
    infos_sffss_2.TextColor3 = Color3.fromRGB(255, 0, 0)
    infos_sffss_2.TextSize = 14.000
    infos_sffss_2.TextWrapped = true
    infos_sffss_2.TextXAlignment = Enum.TextXAlignment.Right

    descionfo_2.Name = "descionfo"
    descionfo_2.Parent = errors
    descionfo_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    descionfo_2.BackgroundTransparency = 1.000
    descionfo_2.Position = UDim2.new(0.128957525, 0, 0, 0)
    descionfo_2.Size = UDim2.new(0, 1128, 0, 34)
    descionfo_2.Font = Enum.Font.Ubuntu
    descionfo_2.Text = "ERR, error string with function getMath() string can't be nil"
    descionfo_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    descionfo_2.TextSize = 14.000
    descionfo_2.TextWrapped = true
    descionfo_2.TextXAlignment = Enum.TextXAlignment.Left
    descionfo_2.TextYAlignment = Enum.TextYAlignment.Top
end



return core