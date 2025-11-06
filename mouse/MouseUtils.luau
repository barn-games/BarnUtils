--!strict

local UserInputService = game:GetService("UserInputService")

local MouseUtils = {}

--[=[
	returns the workspace raycast result from the mouse's current position
	
	Q: why this over mouse.Hit?
	A: because this gives you more filtering options by letting you pass raycastparams.
]=]
function MouseUtils.RaycastFromMouse(distance: number, raycastParams: RaycastParams?): RaycastResult
	local mouseLocation = UserInputService:GetMouseLocation()
	local ray = workspace.CurrentCamera:ViewportPointToRay(mouseLocation.X, mouseLocation.Y)
	local raycastResult = workspace:Raycast(ray.Origin, ray.Direction * distance, raycastParams)
	
	return raycastResult
end

return MouseUtils
