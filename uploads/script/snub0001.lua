local name = "snub hook"
local author = "udkpg"
local editor = "psvks"
local versions = "snub-0001a-unstable"
local debug;
local userId = ""

local apiDebugMode = false
local snubDesc = "SNUB HOOK \n--------------------------\n This is not the official snub hook. This was modified by"..editor.." \n\nData: \nName of script started: "..name.." \nAuthor: "..author.." \nEditor: "..editor.." \nVersion of modified snub hook: "..versions
local snubVessf = Instance.new("StringValue")
local bnt = false
local errorCodes = {"000000x1", "000000x2", "000000x3", "000233xc20_2"}
local console = loadstring(game:HttpGetAsync("https://psvks.github.io/psvks/uploads/script/snubconsole/console.lua"))() -- F4 to open.
local notifys = loadstring(game:HttpGetAsync("https://psvks.github.io/psvks/uploads/script/snubnotify/not.lua"))() -- Can be a rich text.
-- notifys:CreateNotify("Description", "Duration")

notifys:CreateNotify("Functions are deprecated. You may update to the latest version and upgrade your accions in the code to prevent errors.")


snubVessf.Value = versions

function getMath(mathObject, num1, num2)
    if mathObject.ClassName == "NumberValue" then
        mathObject.value = math.ramdom(num1, num2)	
    elseif mathObject.ClassName then
        console:CreateErr("Could not get string from math. Please make sure its a number value?", "emr_2983x821")
    end
end

function startSnubHook(stringName)
    bnt = true
    name = stringName
    print(snubDesc)
end

function getUserId()
    userId = game.Players.LocalPlayer.UserId
    console:CreateWarn("Got id from local Player")
end


function client()
    if bnt == true then
        local fold = Instance.new("Folder")
        fold.Name = "Client_SNUB"
        fold.Parent = game.Workspace

        for i, child in ipairs(game.Workspace:GetChildren()) do
            if child.ClassName == "Folder" then
                console:CreatePrint("Found some folders in workspace.")
                console:CreateWarn("Checking inside the folders. Please wait")
                if child.Name == "Client_SNUB" then
                    console:CreatePrint("FoldersClassname has became idle.")
                    console:CreatePrint("Found the folder. Inserting some objects to it.")
                    -- local inser = Instance.new("StringValue", game.Workspace.fold)
                    console:CreatePrint("OK, succes to create a string value in `fold` or `Client_SNUB` ")
                end
            end
        end

    else
        notifys:CreateNotify("Maybe you didn't declared `startSnubHook(<string>)` please check the docs for more info. Thanks.", "12")
    end
end



function fire_client()
    for i, child in ipairs(game.Workspace:GetChildren()) do
        if child.Name == "Client_SNUB" then
            -- inser.Value = "client.Executable"
        else
            notifys:CreateNotify("Maybe you didn't declared `startSnubHook(<string>)` please check the docs for more info. Thanks.", "12")
        end
    end
end

function getVersion(type, textlabel)
    if type == "print" then
        print(versions)
    elseif type == "textLabel" or "textlabel" or "text" then
        textlabel.Text = versions
    end
end

function debugMode(type)
                                        if debugMode == "check" then
                                            if apiDebugMode == true then
                                                console:CreateWarn("Is enabled")
                                                notifys:CreateNotify("Debug mode enabled", "12")
                                            else
                                                console:CreateWarn("Is disabled")
                                                notifys:CreateNotify("Debug mode disabled", "12")
                                            end
                                        elseif debugMode == "enable" or "diasble" then
                                            if debugMode == "enable" then
                                                apiDebugMode = true
                                                notifys:CreateNotify("debug mode was set to enabled", "12")

                                            else if debugMode == "disable" then
                                                apiDebugMode = true
                                                notifys:CreateNotify("debug mode was set to disabled", "12")
                                            end
                                        end
            end
end


function getCoord()
    local PlayersService = game:GetService("Players")
    PlayersService.PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function(character)
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
            console:CreatePrint(tostring(humanoidRootPart))
        end)
    end)
end


function gwait(delay_of_script_require)
if delay_of_script_require == nil then
    notifys:CreateNotify("Error: Could not execute gwait() function, Please set some number to it.", "5")
else
    task.wait(delay_of_script_require)
end
end


function assembly(type, authors)
    if type == "plugin" then
        warn("type: ASSEMBLY plguin = x64")
        warn("SNUB F \n\n------------------------------ \nA plugin has initializated with the license MIT. \nAuthor of the plugin: "..authors)
    elseif type == "script" then
        warn("type: ASSEMBLY script = x32 and x64 running with VM")
        warn("SNUB F \n\n\n---------------------------------- \nA script with the license MIT has initializated with VM \nAuthor of the script"..authors)
    else
        console:CreateErr("Deployed notifyErr(), SNUB was not able to identify a string.")
        notifys:CreateNotify("Inside of `type` we could not find a identified string. Maybe you should check the docs", "4")
    end
end




function discordWebHookSend(urlString, mess, color, title)
    local webhookcheck =
    is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
    secure_load and "Sentinel" or
    KRNL_LOADED and "Krnl" or
    SONA_LOADED and "Sona" or
    "We could not found the exploit he is using."

    local url = urlString
    local data = {
    ["content"] = " message(no embed)- you can take out embed if by deleting the bottom stuff(where it says EMBEDS)",
    ["embeds"] = {
        {
            ["title"] = title,
            ["description"] = mess,
            ["type"] = "rich",
            ["color"] = tonumber(color), -- print("needs to be hexadecimal color number.")
            ["image"] = {
                ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                    tostring(game:GetService("Players").LocalPlayer.Name)
            }
        }
    }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
    ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)

    console:CreatePrint("discordWebHookSend() was requested, Sending some info to the webhook.")
end


function gameOptimization(type, fpsSetCap)
    if type == "fpsSetCap" then
        if fpsSetCap == nil then
            console:CreateErr("Err to load gameIo() string is nil?", "xmf_29833x22")
            notifys:CreateNotify("Err to load gameOptimiation() make sure fpsSetCap is not nil")
        else
            setfpscap(fpsSetCap)
        end
    elseif type == "teextureRem" then
        for i,v in pairs(workspace:GetDescendants()) do
            if v:IsA("Texture") then
               v:Destroy()
            end
        end
    elseif type == "both" then
        for i,v in pairs(workspace:GetDescendants()) do
            if v:IsA("Texture") then
               v:Destroy()
            end
        end
        if fpsSetCap == nil then
            console:CreateErr("Err to load gameIo() string is nil?", "xmf_29833x22")
            notifys:CreateNotify("Err to load gameOptimiation() make sure fpsSetCap is not nil")
        else
            setfpscap(fpsSetCap)
        end
    end
end

function blacklist(table)
    getUserId()
    if userId == table then
        game.Players.LocalPlayer:Kick("SNUB F: You are blacklisted.")
    end
end

function setWalkspeed(speed)
    if speed then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
        console:CreatePrint("Set walkspeed to ", speed)
    elseif speed == nil then
        console:CreateErr("String of setWalkspeed() is nil. Did you put a string?", "nilStringErr")
    end

end

function setJumppower(speed)
    if speed then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = speed
        console:CreatePrint("Set jumppower to ", speed)
    elseif speed == nil then
        console:CreateErr("String of setJumppower() is nil. Did you put a string?", "nilStringErr")
    end
end


function snLoad(urlString)
    if urlString then
        loadstring(game:HttpGet(urlString))()
        console:CreatePrint("Loaded a url from snLoad()")
    elseif urlString == nil then
        console:CreateErr("String of snLoad() is nil. Did you put a string?", "nilStringErr")
    end
end
