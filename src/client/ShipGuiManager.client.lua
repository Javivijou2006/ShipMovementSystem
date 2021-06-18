-- Open source by NebularScript#8439
-- Under MIT license

--Custom debug Library
local Console = require(game:GetService("ReplicatedStorage"):WaitForChild("Console"));

--[[ Variables setup ]]

--Gui
local Parent        = script.Parent;
local SpeedText     = Parent:WaitForChild("Speed");
local PowerUpButt   = Parent:WaitForChild("PowerUp");
local PowerDownButt = Parent:WaitForChild("PowerDown");
local PowerText     = Parent:WaitForChild("Power");

--Ship members
local Floater = workspace:WaitForChild("Floater");
local Force   = Floater:WaitForChild("MainMotorForce");


--[[ Initialize ]]

Force.Location = Vector3.new(0,0,0)
PowerText.Text = 0;


--[[ Functions ]]


PowerUpButt.MouseButton1Click:Connect(function()

    local NewPower = tonumber(PowerText.Text) + 15;
    local ForceZ   = Force.Force.Z;
    
    if (NewPower >= 101) then
        NewPower = 100

    elseif (NewPower == 25) then
        Force.Force = Vector3.new(0,0,12000.5)
        PowerText.Text = 25;

    elseif (NewPower == -25) then
        Force.Force = Vector3.new(0,0,-12000.5);
        PowerText.Text = -25;

    elseif (NewPower == 0) then
        Force.Force = Vector3.new(0,0,0);
        PowerText.Text = 0;

    else
        Force.Force = Vector3.new(0,0, ForceZ + 24000.3 )
        PowerText.Text = NewPower;
    end

    Console.debug("NEW POWER --> "..NewPower.." & FORCE --> "..Force.Force.Z)

end)

PowerDownButt.MouseButton1Click:Connect(function()

    local NewPower = tonumber(PowerText.Text) - 15;
    local ForceZ   = Force.Force.Z;

    if (NewPower <= -101) then
        NewPower = -100

    elseif (NewPower == 25) then
        Force.Force = Vector3.new(0,0,12000.5)
        PowerText.Text = 25;

    elseif (NewPower == -25) then
        Force.Force = Vector3.new(0,0,-12000.5);
        PowerText.Text = -25;

    elseif (NewPower == 0) then
        Force.Force = Vector3.new(0,0,0);
        PowerText.Text = 0;

    else
        Force.Force = Vector3.new(0,0, ForceZ - 24000.3 )
        PowerText.Text = NewPower;
    end
    

    Console.debug("NEW Power --> "..NewPower.." & Force --> "..Force.Force.Z)
end)