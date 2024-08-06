local HttpService = game:GetService("HttpService")
local ConfigLib = {}

function ConfigLib.new(configuration)
    local exists = false
    local lpath;
    local Cfg;
    
    configuration.Name = configuration.Name or "DefaultConfig"
    configuration.Path = configuration.Path or "/"
    configuration.Keys = configuration.Keys or {}
    
    local files = listfiles(Path)
    for _, file in ipairs(files) do
        if file == configuration.Path..'\\'..configuration.Name..'.json' then
            exists = true
            lpath = configuration.Path..'\\'..configuration.Name..'.json'
        end
    end
    
    if exists then
        local fileLoaded = readfile(lpath)
        if fileLoaded then
            Cfg = HttpService:JSONDecode(fileLoaded)
        end
    else
        local JSONToWrite = HttpService:JSONEncode(configuration.Keys)
        writefile(lpath, JSONToWrite)
        Cfg = configuration.Keys
    end
end

return ConfigLib
