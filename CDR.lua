loadstring(game:HttpGet(("https://raw.githubusercontent.com/VanThanhIOS/OniiChanVanThanhIOS/refs/heads/main/uimain.txt")))()

       local Window = MakeWindow({
         Hub = {
         Title = "CDR RBLX | https://discord.gg/tXehAyHwp",
         Animation = "🇻🇳music chill time🇻🇳"
         },
        Key = {
        KeySystem = false,
        Title = "fe hub keySystem",
        Description = "",
        KeyLink = "idk bro",
        Keys = {"hub"},
        Notifi = {
        Notifications = false,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=76235174561169",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
       local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

pcall(function() setfpscap(120) end)

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "RainbowFPS"
screenGui.ResetOnSpawn = false
screenGui.DisplayOrder = 1000
screenGui.IgnoreGuiInset = false
screenGui.Parent = game:GetService("CoreGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 120, 0, 30)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundTransparency = 1
frame.Active = false
frame.Draggable = false
frame.Parent = screenGui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.Font = Enum.Font.FredokaOne
textLabel.TextScaled = false
textLabel.BackgroundTransparency = 1
textLabel.TextStrokeTransparency = 0.2
textLabel.Text = "FPS: 0"
textLabel.Parent = frame

task.spawn(function()
    local hue = 0
    while true do
        hue = (hue + 0.005) % 1
        textLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
        RunService.RenderStepped:Wait()
    end
end)

local frameCount = 0
local lastUpdate = tick()
RunService.RenderStepped:Connect(function()
    frameCount = frameCount + 1
    local now = tick()
    if now - lastUpdate >= 1 then
        local fps = math.floor(frameCount / (now - lastUpdate))
        textLabel.Text = "FPS: " .. tostring(fps)
        frameCount = 0
        lastUpdate = now
    end
end)
------ Tab
     local Tab0o = MakeTab({Name = "JJS test"})

------- BUTTON
    
    AddButton(Tab0o, {
     Name = "tbo hub",
    Callback = function()
	  getgenv().Settings = {
    TargetHealth = 20,          
    CharacterHeight = 8,        
    ResetStreak = true,         
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/cool5013/TBO/main/TBOscript"))()
  end
  })

    AddButton(Tab0o, {
     Name = "ain lock",
    Callback = function()
	  getgenv().Settings = {
    TargetHealth = 100,          
    CharacterHeight = 8,        
    ResetStreak = true,         
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/DiosDi/VexonHub/refs/heads/main/TrashCan-Farm"))()
  end
  })

   AddButton(Tab0o, {
     Name = "test",
    Callback = function()
	  getgenv().Settings = {
    TargetHealth = 100,          
    CharacterHeight = 8,        
    ResetStreak = true,         
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/DiosDi/VexonHub/refs/heads/main/TrashCan-Farm"))()
  end
  })

 local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://126433682497062"
sound.Volume = 1
sound.Looped = false
sound.Parent = workspace
sound.Pitch = 1
sound:Play()
while wait() do
wait(99999)
sound:Stop()
wait(9999999)
sound:Play()
end
