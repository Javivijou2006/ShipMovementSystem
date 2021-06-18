
local floater      = workspace:WaitForChild("Floater");
local SeatInstance = floater:WaitForChild("Seat");
local Forces       = floater:WaitForChild("MainMotorForce");
local Players      = game:GetService("Players");
local LocalPlayer  = Players.LocalPlayer;
local Gui		   = LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("ScreenGui"):WaitForChild("Main");


function OnSeated()
	
	print("hehe")

	if (SeatInstance.Occupant == nil) then
		print("Seat occupant is nil")
		Gui.Visible = false;
	else
		print("seat occupant is somebody")
		Gui.Visible = true;
	end
	
	

end



SeatInstance:GetPropertyChangedSignal("Occupant"):Connect(OnSeated)
