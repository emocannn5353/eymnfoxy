-- ==========================================
-- [ eymnfox Hub - Key Authentication UI ]
-- Tema: Gece Siyahı & Neon Mavi
-- ==========================================

local player = game.Players.LocalPlayer
local guiName = "eymnfoxKeySystem"

if player.PlayerGui:FindFirstChild(guiName) then
    player.PlayerGui[guiName]:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = guiName
ScreenGui.Parent = player.PlayerGui
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 400, 0, 250)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -125)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local FrameCorner = Instance.new("UICorner")
FrameCorner.CornerRadius = UDim.new(0, 12)
FrameCorner.Parent = MainFrame

local FrameStroke = Instance.new("UIStroke")
FrameStroke.Color = Color3.fromRGB(0, 120, 255)
FrameStroke.Thickness = 2
FrameStroke.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "eymnfox Hub | Key System"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20
Title.Font = Enum.Font.GothamBold
Title.Parent = MainFrame

local TitleLine = Instance.new("Frame")
TitleLine.Size = UDim2.new(0.9, 0, 0, 1)
TitleLine.Position = UDim2.new(0.05, 0, 0, 40)
TitleLine.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
TitleLine.BorderSizePixel = 0
TitleLine.Parent = MainFrame

local KeyInput = Instance.new("TextBox")
KeyInput.Size = UDim2.new(0.8, 0, 0, 40)
KeyInput.Position = UDim2.new(0.1, 0, 0.4, 0)
KeyInput.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
KeyInput.Text = ""
KeyInput.PlaceholderText = "Buraya Key'i Girin..."
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
KeyInput.Font = Enum.Font.Gotham
KeyInput.TextSize = 14
KeyInput.Parent = MainFrame

local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, 8)
InputCorner.Parent = KeyInput

local GetKeyBtn = Instance.new("TextButton")
GetKeyBtn.Size = UDim2.new(0.35, 0, 0, 35)
GetKeyBtn.Position = UDim2.new(0.1, 0, 0.7, 0)
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
GetKeyBtn.Text = "Get Key"
GetKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKeyBtn.Font = Enum.Font.GothamSemibold
GetKeyBtn.TextSize = 14
GetKeyBtn.Parent = MainFrame

local GetKeyCorner = Instance.new("UICorner")
GetKeyCorner.CornerRadius = UDim.new(0, 8)
GetKeyCorner.Parent = GetKeyBtn

local VerifyBtn = Instance.new("TextButton")
VerifyBtn.Size = UDim2.new(0.35, 0, 0, 35)
VerifyBtn.Position = UDim2.new(0.55, 0, 0.7, 0)
VerifyBtn.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
VerifyBtn.Text = "Verify"
VerifyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
VerifyBtn.Font = Enum.Font.GothamSemibold
VerifyBtn.TextSize = 14
VerifyBtn.Parent = MainFrame

local VerifyCorner = Instance.new("UICorner")
VerifyCorner.CornerRadius = UDim.new(0, 8)
VerifyCorner.Parent = VerifyBtn

GetKeyBtn.MouseButton1Click:Connect(function()
    setclipboard("https://linkvertise.com/senin-reklam-linkin") -- Buraya kendi Linkvertise linkini koy!
    KeyInput.Text = "Link kopyalandı!"
end)

VerifyBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == "EYMNFOX-PREMIUM-2026" then
        KeyInput.Text = "Doğrulandı! Hub Yükleniyor..."
        wait(1)
        MainFrame:Destroy()
        -- Buraya asıl scriptin linkini koymalısın:
        -- loadstring(game:HttpGet("https://raw.githubusercontent.com/emocannn5353/eymnfox/main/main.lua"))()
    else
        KeyInput.Text = "Geçersiz Key!"
        wait(1)
        KeyInput.Text = ""
    end
end)
