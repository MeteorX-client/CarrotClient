-- // *======*   Config   *======* \\ --
local HeadSize = 5
local Disabled = true 
-- // *======*   Config Keybind   *======* \\ --
local toggleGUIBind = Enum.KeyCode.G
local toggleHitboxBind = Enum.KeyCode.E

-- // *======*   Service   *======* \\ --
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
-- // *======*   GUI Setup   *======* \\ --
local ScreenGui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
ScreenGui.Name = "HitboxGUI"
ScreenGui.ResetOnSpawn = false
--[=====================================================]--
-- // *======*   Frame   *======* \\ --
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 200, 0, 170)
Frame.Position = UDim2.new(0.5, -160, 0.5, -115)
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BorderSizePixel = 0
Frame.Visible = true
Frame.Draggable = true
Frame.Active = true
--[=====================================================]--
-- // *======*   UIStroke   *======* \\ --
local UIStroke = Instance.new("UIStroke", Frame)
UIStroke.Color = Color3.fromRGB(0, 255, 255)
UIStroke.Thickness = 2
UIStroke.Transparency = 0.5
--[=====================================================]--
-- // *======*   Title   *======* \\ --
local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0.2, 0)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.Text = "Hitbox Changer"
Title.TextColor3 = Color3.fromRGB(0, 255, 255)
Title.Font = Enum.Font.Arcade
Title.TextSize = 18
Title.BackgroundTransparency = 1
--[=====================================================]--
-- // *======*   Status   *======* \\ --
local StatusLabel = Instance.new("TextLabel", Frame)
StatusLabel.Size = UDim2.new(0.9, 0, 0.15, 0)
StatusLabel.Position = UDim2.new(0.05, 0, 0.22, 0)
StatusLabel.Text = "Status: Disable"
StatusLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.TextSize = 14
StatusLabel.BackgroundTransparency = 1
--[=====================================================]--
-- // *======*   Toggle Button   *======* \\ --
local ToggleButton = Instance.new("TextButton", Frame)
ToggleButton.Size = UDim2.new(0.9, 0, 0.18, 0)
ToggleButton.Position = UDim2.new(0.05, 0, 0.39, 0)
ToggleButton.Text = "Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ"
ToggleButton.Font = Enum.Font.GothamBold
ToggleButton.TextSize = 16
ToggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.AutoButtonColor = true
--[=====================================================]--
-- // *======*   Close Button   *======* \\ --
local CloseButton = Instance.new("TextButton", Frame)
CloseButton.Size = UDim2.new(0, 15, 0, 15)
CloseButton.Position = UDim2.new(1, -20, 0, 5)
CloseButton.Text = "X"
CloseButton.Font = Enum.Font.Arcade
CloseButton.TextSize = 10
CloseButton.TextColor3 = Color3.fromRGB(255, 100, 100)
CloseButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
CloseButton.AutoButtonColor = true
--[=====================================================]--
-- // *======*   Hitbox Label   *======* \\ --
local SizeLabel = Instance.new("TextLabel", Frame)
SizeLabel.Size = UDim2.new(0.4, 0, 0.15, 0)
SizeLabel.Position = UDim2.new(0.1, 0, 0.61, 0)
SizeLabel.Text = "Size Hitbox (1-50)"
SizeLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
SizeLabel.Font = Enum.Font.Gotham
SizeLabel.TextSize = 14
SizeLabel.BackgroundTransparency = 1
-- // *======*   Hitbox Size Textbox   *======* \\ --
local SizeBox = Instance.new("TextBox", Frame)
SizeBox.Size = UDim2.new(0.35, 0, 0.14, 0)
SizeBox.Position = UDim2.new(0.6, 0, 0.61, 0)
SizeBox.Text = tostring(HeadSize)
SizeBox.TextColor3 = Color3.new(1, 1, 1)
SizeBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SizeBox.Font = Enum.Font.Code
SizeBox.TextSize = 14
SizeBox.ClearTextOnFocus = false
--[=====================================================]--
-- // *======*   Frame   *======* \\ --
local BindContainer = Instance.new("Frame", Frame)
BindContainer.Size = UDim2.new(0.9, 0, 0.23, 0)
BindContainer.Position = UDim2.new(0.05, 0, 0.78, 0)
BindContainer.BackgroundTransparency = 1
--[=====================================================]--
-- // *======*   GUI Keybind Label   *======* \\ --
local GUIBindLabel = Instance.new("TextLabel", BindContainer)
GUIBindLabel.Size = UDim2.new(0.6, 0, 0.4, 0)
GUIBindLabel.Text = "Toggle GUI:"
GUIBindLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
GUIBindLabel.Font = Enum.Font.Gotham
GUIBindLabel.TextSize = 13
GUIBindLabel.BackgroundTransparency = 1
-- // *======*   GUI Keybind Textbox   *======* \\ --
local GUIBindBox = Instance.new("TextBox", BindContainer)
GUIBindBox.Size = UDim2.new(0.35, 0, 0.4, 0)
GUIBindBox.Position = UDim2.new(0.65, 0, 0, 0)
GUIBindBox.Text = toggleGUIBind.Name
GUIBindBox.TextColor3 = Color3.new(1, 1, 1)
GUIBindBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
GUIBindBox.Font = Enum.Font.Code
GUIBindBox.TextSize = 13
GUIBindBox.ClearTextOnFocus = false
--[=====================================================]--
-- // *======*   Hitbox Keybind Label   *======* \\ --
local HitboxBindLabel = Instance.new("TextLabel", BindContainer)
HitboxBindLabel.Size = UDim2.new(0.6, 0, 0.4, 0)
HitboxBindLabel.Position = UDim2.new(0, 0, 0.5, 0)
HitboxBindLabel.Text = "Toggle Hitbox:"
HitboxBindLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
HitboxBindLabel.Font = Enum.Font.Gotham
HitboxBindLabel.TextSize = 13
HitboxBindLabel.BackgroundTransparency = 1
-- // *======*   Hitbox Keybind Textbox   *======* \\ --
local HitboxBindBox = Instance.new("TextBox", BindContainer)
HitboxBindBox.Size = UDim2.new(0.35, 0, 0.4, 0)
HitboxBindBox.Position = UDim2.new(0.65, 0, 0.5, 0)
HitboxBindBox.Text = toggleHitboxBind.Name
HitboxBindBox.TextColor3 = Color3.new(1, 1, 1)
HitboxBindBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
HitboxBindBox.Font = Enum.Font.Code
HitboxBindBox.TextSize = 13
HitboxBindBox.ClearTextOnFocus = false
--[=====================================================]--
-- // *======*   SCRIPT HITBOX CHANGER   *======* \\ --
--[=====================================================]--
-- // *======*   Function Rainbow   *======* \\ --
local function rainbow()
	return Color3.fromHSV((tick() % 5) / 5, 1, 1)
end
-- // *======*   GUI Rainbow   *======* \\ --
game:GetService("RunService").RenderStepped:Connect(function()
	UIStroke.Color = rainbow()
	Title.TextColor3 = rainbow()
end)
-- // *======*   Update Status Function   *======* \\ --
local function updateStatus()
    StatusLabel.Text = "Status: " .. (Disabled and "Disable" or "Enable")
    StatusLabel.TextColor3 = Disabled and Color3.fromRGB(255, 50, 50) or Color3.fromRGB(0, 255, 0)
    ToggleButton.Text = Disabled and "Disable" or "Enable"
    ToggleButton.BackgroundColor3 = Disabled and Color3.fromRGB(80, 0, 0) or Color3.fromRGB(0, 80, 0)
end
-- // *======*   Load updateStatus   *======* \\ --
updateStatus()
-- // *======*   Check Team   *======* \\ --
local function getTeamColor(player)
    if not player.Team then return Color3.fromRGB(0, 0, 255) end
    if player.Team.Name == "Outlaws" then
        return Color3.fromRGB(255, 0, 0)
    elseif player.Team.Name == "Cowboys" then
        return Color3.fromRGB(0, 0, 255)
    else
        return Color3.fromRGB(0, 0, 255)
    end
end
-- // *======*   Create Local   *======* \\ --
local originalProperties = {}
-- // *======*   Restore Original Function   *======* \\ --
local function restoreOriginal()
    for player, data in pairs(originalProperties) do
        local character = player.Character
        if character then
            local root = character:FindFirstChild("HumanoidRootPart")
            if root and root:IsA("BasePart") then
                root.Size = data.size
                root.Transparency = data.transparency
                root.BrickColor = data.brickColor
                root.Material = data.material
                root.CanCollide = data.canCollide
            end
        end
    end
    originalProperties = {}
end
-- // *======*   Toggle   *======* \\ --
ToggleButton.MouseButton1Click:Connect(function()
    Disabled = not Disabled
    if Disabled then
        restoreOriginal()
    else
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                local character = player.Character
                if character then
                    local rootPart = character:FindFirstChild("HumanoidRootPart")
                    if rootPart and rootPart:IsA("BasePart") then
                        originalProperties[player] = {
                            size = rootPart.Size,
                            transparency = rootPart.Transparency,
                            brickColor = rootPart.BrickColor,
                            material = rootPart.Material,
                            canCollide = rootPart.CanCollide
                        }
                    end
                end
            end
        end
    end
    updateStatus()
end)
-- // *======*   Close   *======* \\ --
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
    restoreOriginal()
end)
-- // *======*   Size Hitbox   *======* \\ --
SizeBox.FocusLost:Connect(function(enterPressed)
    if not enterPressed then return end
    local val = tonumber(SizeBox.Text)
    if val and val >= 1 and val <= 50 then
        HeadSize = val
        SizeBox.Text = tostring(val)
        if not Disabled then
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer then
                    local character = player.Character
                    if character then
                        local rootPart = character:FindFirstChild("HumanoidRootPart")
                        if rootPart and rootPart:IsA("BasePart") then
                            pcall(function()
                                rootPart.Size = Vector3.new(HeadSize, HeadSize, HeadSize)
                                rootPart.Transparency = 0.7
                                rootPart.BrickColor = BrickColor.new("Medium stone grey")
                                rootPart.Material = "Neon"
                                rootPart.CanCollide = false
                            end)
                        end
                    end
                end
            end
        end
    else
        SizeBox.Text = tostring(HeadSize)
    end
end)
-- // *======*   GUI Keybind   *======* \\ --
GUIBindBox.FocusLost:Connect(function(enterPressed)
    if not enterPressed then return end
    local key = GUIBindBox.Text:upper()
    local keyCode = Enum.KeyCode[key]
    if keyCode then
        toggleGUIBind = keyCode
        GUIBindBox.Text = key
    else
        GUIBindBox.Text = toggleGUIBind.Name
    end
end)
-- // *======*   Hitbox Keybind   *======* \\ --
HitboxBindBox.FocusLost:Connect(function(enterPressed)
    if not enterPressed then return end
    local key = HitboxBindBox.Text:upper()
    local keyCode = Enum.KeyCode[key]
    if keyCode then
        toggleHitboxBind = keyCode
        HitboxBindBox.Text = key
    else
        HitboxBindBox.Text = toggleHitboxBind.Name
    end
end)
UserInputService.InputBegan:Connect(function(input, processed)
    if processed then return end
    if input.KeyCode == toggleGUIBind then
        Frame.Visible = not Frame.Visible
    end
    if input.KeyCode == toggleHitboxBind then
        Disabled = not Disabled
        if Disabled then
            restoreOriginal()
        else
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer then
                    local character = player.Character
                    if character then
                        local rootPart = character:FindFirstChild("HumanoidRootPart")
                        if rootPart and rootPart:IsA("BasePart") then
                            originalProperties[player] = {
                                size = rootPart.Size,
                                transparency = rootPart.Transparency,
                                brickColor = rootPart.BrickColor,
                                material = rootPart.Material,
                                canCollide = rootPart.CanCollide
                            }
                            pcall(function()
                                rootPart.Size = Vector3.new(HeadSize, HeadSize, HeadSize)
                                rootPart.Transparency = 0.7
                                rootPart.BrickColor = BrickColor.new("Medium stone grey")
                                rootPart.Material = "Neon"
                                rootPart.CanCollide = false
                            end)
                        end
                    end
                end
            end
        end
        updateStatus()
    end
end)
-- // *======*   Check Team and Load   *======* \\ --
game:GetService("RunService").Heartbeat:Connect(function()
    if Disabled then return end
    for _, player in ipairs(Players:GetPlayers()) do
        if player == LocalPlayer then continue end
        local character = player.Character
        if not character then continue end
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if not humanoid or humanoid.Health <= 0 then continue end
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        if not rootPart or not rootPart:IsA("BasePart") then continue end
        if not originalProperties[player] then
            originalProperties[player] = {
                size = rootPart.Size,
                transparency = rootPart.Transparency,
                brickColor = rootPart.BrickColor,
                material = rootPart.Material,
                canCollide = rootPart.CanCollide
            }
        end
        local teamColor = getTeamColor(player)
        pcall(function()
            rootPart.Size = Vector3.new(HeadSize, HeadSize, HeadSize)
            rootPart.Transparency = 0.7
            rootPart.BrickColor = BrickColor.new("Medium stone grey")
            rootPart.Material = "Neon"
            rootPart.CanCollide = false
        end)
    end
end)

-- // *======*   Check Disable   *======* \\ --
LocalPlayer.CharacterAdded:Connect(function()
    if Disabled then return end
    wait(0.5)
    restoreOriginal()
end)
-- // *======*   Close Function   *======* \\ --
game:BindToClose(function()
    Disabled = true
    restoreOriginal()
end)
