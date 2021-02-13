--[[ This script was made by Solar & Serpent development team.
     This is a private script, do not send it to anyone.
     If you are caught sending it around, you will be blacklisted & won't be able to use the script.

     This script should bypass most or all sword-fighting related games.
     If the script gets patched, I will try my best to fix it.
--]]

local NotificationModule = {}
local Notifications = {}
local Objects = {}

local LocalPlayer = game.Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local function NewInstance(typeOf, props)
	local Object = Instance.new(typeOf)
	for k, v in pairs(props) do
		Object[k] = v
	end
	return Object
end

local function NotificationCallback(Text)
	if Text == "Dismiss" then
		print("Callback called.")
	end
end

local NotificationBindableFunction = Instance.new("BindableFunction")
NotificationBindableFunction.OnInvoke = NotificationCallback()

_G.NotificationConfiguration = {
	["Title"] = "Project Serpent",
	["Text"] = "",
	["Icon"] = "rbxassetid://6358577718",
	["Duration"] = "",
	["Callback"] = NotificationBindableFunction
}

game.StarterGui:SetCore("SendNotification", {
	["Title"] = _G.NotificationConfiguration["Title"],
	["Text"] = "Module loaded.",
	["Icon"] = _G.NotificationConfiguration["Icon"],
	["Duration"] = "5",
	["Callback"] = _G.NotificationConfiguration["Callback"]
})

wait(2)

game.StarterGui:SetCore("SendNotification", {
	["Title"] = _G.NotificationConfiguration["Title"],
	["Text"] = "Made by Solar & Serpent development team. <3",
	["Icon"] = _G.NotificationConfiguration["Icon"],
	["Button1"] = "Dismiss",
	["Duration"] = "5",
	["Callback"] = _G.NotificationConfiguration["Callback"]
})
