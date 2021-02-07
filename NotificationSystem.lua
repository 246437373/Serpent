local NotificationModule = {}

local function NotificationCallback(Text)
	if Text == "Dismiss" then
		print("Callback called.")
	end
end

local NotificationBindableFunction = Instance.new("BindableFunction")
NotificationBindableFunction.OnInvoke = NotificationCallback()

game.StarterGui:SetCore("SendNotification", {
	["Title"] = "Project Serpent",
	["Text"] = "Module loaded.",
	["Icon"] = "rbxassetid://6358577718",
	["Duration"] = "1",
	["Callback"] = NotificationBindableFunction
})

wait(2)

game.StarterGui:SetCore("SendNotification", {
	["Title"] = "Project Serpent",
	["Text"] = "Made by Solar & Serpent development team. <3",
	["Icon"] = "rbxassetid://6358577718",
	["Button1"] = "Dismiss",
	["Duration"] = "5",
	["Callback"] = NotificationBindableFunction
})
