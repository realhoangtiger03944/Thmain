  _G.Color = Color3.new(255, 255, 0)

local KeyGui = Instance.new("ScreenGui")
local FrameUI = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local Get = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local OK = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Name = Instance.new("TextLabel")

do
	local uikey = game.CoreGui:FindFirstChild("CoreGui")
	if uikey then
		uikey:Destroy()
	end
end

KeyGui.Name = "KeyGui"
KeyGui.Parent = game:GetService("CoreGui")


FrameUI.Name = "FrameUI"
FrameUI.Parent = KeyGui
FrameUI.AnchorPoint = Vector2.new(0.5, 0.5)
FrameUI.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
FrameUI.Position = UDim2.new(0.5, 0, 0.5, 0)
FrameUI.Size = UDim2.new(0, 487, 0, 231)

UICorner.Parent = FrameUI

Frame.Parent = FrameUI
Frame.BackgroundColor3 = _G.Color
Frame.BorderColor3 = _G.Color
Frame.Position = UDim2.new(0.32608214, 0, 0.161935255, 0)
Frame.Size = UDim2.new(0, 0, 0, 193)

TextBox.Parent = FrameUI
TextBox.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
TextBox.Position = UDim2.new(0.391626865, 0, 0.234621912, 0)
TextBox.Size = UDim2.new(0, 272, 0, 71)
TextBox.Font = Enum.Font.FredokaOne
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 35.000
TextBox.TextStrokeColor3 = Color3.fromRGB(62, 62, 62)
TextBox.TextStrokeTransparency = 0.000
TextBox.TextWrapped = true

UICorner_2.Parent = TextBox

ImageLabel.Parent = FrameUI
ImageLabel.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
ImageLabel.Position = UDim2.new(0.0271223877, 0, 0.294190109, 0)
ImageLabel.Size = UDim2.new(0, 127, 0, 131)
ImageLabel.Image = "rbxassetid://12856956801"

UICorner_3.CornerRadius = UDim.new(0, 50)
UICorner_3.Parent = ImageLabel

Frame_2.Parent = FrameUI
Frame_2.BackgroundColor3 = _G.Color
Frame_2.BorderColor3 = _G.Color
Frame_2.Position = UDim2.new(0, 0, 0.161935255, 0)
Frame_2.Size = UDim2.new(0, 487, 0, 0)

Get.Name = "Get"
Get.Parent = FrameUI
Get.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Get.Position = UDim2.new(0.687019169, 0, 0.662575662, 0)
Get.Size = UDim2.new(0, 144, 0, 32)
Get.Font = Enum.Font.FredokaOne
Get.Text = "Getkey"
Get.TextColor3 = Color3.fromRGB(186, 186, 186)
Get.TextScaled = true
Get.TextSize = 14.000
Get.TextStrokeTransparency = 0.000
Get.TextWrapped = true

UICorner_4.Parent = Get

OK.Name = "OK"
OK.Parent = FrameUI
OK.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
OK.Position = UDim2.new(0.339162797, 0, 0.665093124, 0)
OK.Size = UDim2.new(0, 144, 0, 32)
OK.Font = Enum.Font.FredokaOne
OK.Text = "OK"
OK.TextColor3 = Color3.fromRGB(186, 186, 186)
OK.TextScaled = true
OK.TextSize = 14.000
OK.TextStrokeTransparency = 0.000
OK.TextWrapped = true

UICorner_5.Parent = OK

Name.Name = "Name"
Name.Parent = FrameUI
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.Position = UDim2.new(0, 0, -0.00332635082, 0)
Name.Size = UDim2.new(0, 487, 0, 32)
Name.Font = Enum.Font.FredokaOne
Name.Text = "HTG Hub"
Name.TextColor3 = _G.Color
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextStrokeTransparency = 0.000
Name.TextWrapped = true

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 3.6
UIStroke.Name = ""
UIStroke.Parent = TextBox
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.LineJoinMode = Enum.LineJoinMode.Round
UIStroke.Color = _G.Color
UIStroke.Transparency = 0

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Thickness = 3.6
UIStroke2.Name = ""
UIStroke2.Parent = FrameUI
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.LineJoinMode = Enum.LineJoinMode.Round
UIStroke2.Color = _G.Color
UIStroke2.Transparency = 0

TextBox.FocusLost:Connect(function()
	_G.Key = TextBox.Text
end)

OK.MouseButton1Click:Connect(function()
	Checkkey(_G.Key)
end)

Get.MouseButton1Click:Connect(function()
	setclipboard("https://zKuzy.link/Get-key") --YouWap
end)

local request = http_request or request or HttpPost or syn.request
local UIKeySysem = game:GetService("CoreGui"):FindFirstChild("KeyGui") 

function Checkkey(Text)
	local register_key = Text
	local Server = request({
		Url = "https://190.22.55.1/Key.php?Key="..register_key,
		Method = "GET"
	}).Body
	if string.find(Server,"WHITELIST !") then
		TextBox.TextColor3 = Color3.fromRGB( 0, 255, 0)
		wait(0.4)
		UIKeySysem:Destroy()
		print("Wait")
	elseif Text == "" then
		wait()
	else
		TextBox.Text = "คีย์ผิดโปรดหาคีย์ใหม่"
		TextBox.TextColor3 = Color3.fromRGB( 255, 0, 0)
		wait(1)
		TextBox.Text = "Please enter key"
		TextBox.TextColor3 = Color3.fromRGB(255,255,255)
	end
end 

repeat task.wait() until not game:GetService("CoreGui"):FindFirstChild("KeyGui") 

--Add Scritp

print("2222")