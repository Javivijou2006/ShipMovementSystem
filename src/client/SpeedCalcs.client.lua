local SpeedGui = script.Parent;
local Floater  = workspace:WaitForChild("Floater");

--Custom debug Library
local Console = require(game:GetService("ReplicatedStorage"):WaitForChild("Console"));

local i		   = 1	

--local MagnitudeFormula = (Part1Pos - Part2Pos).Magnitude

for i = 1,1,0 do
	
	local Pos1 = Floater.Position
	wait(1)
	local Pos2 = Floater.Position
	
	local StudsInSec = (Pos1 - Pos2).Magnitude
	
	
	
	SpeedGui.Text = math.round(StudsInSec);
	Console.debug("SPEED UPDATE --> "..math.round(StudsInSec))
	
end