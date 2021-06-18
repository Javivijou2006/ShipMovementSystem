local console = {}

local RunService = game:GetService("RunService");
local debug = RunService:IsStudio();

function console.print(text)
    print(text)
end

function console.debug(text)
    if (debug) then
        warn("DEBUG || "..text)
    end
end


return console