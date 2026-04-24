loadstring(game:HttpGet(("https://raw.githubusercontent.com/VanThanhIOS/OniiChanVanThanhIOS/refs/heads/main/uimain.txt")))()

       local Window = MakeWindow({
         Hub = {
         Title = "CDR RBLX | https://discord.gg/tXehAyHwp",
         Animation = "CDR RBLX"
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
       Image = "http://www.roblox.com/asset/?id=114259856900004",
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
screenGui.IgnoreGuiInset = true
screenGui.Parent = game:GetService("CoreGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 120, 0, 30)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundTransparency = 1
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.Font = Enum.Font.FredokaOne
textLabel.TextScaled = true
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
     local Tab0o = MakeTab({Name = "TSB AUTO Farm fix"})

------- BUTTON
    
    AddButton(Tab0o, {
     Name = "TSB auto fram kill 20%",
    Callback = function()
	  getgenv().Settings = {
    TargetHealth = 20,          
    CharacterHeight = 8,        
    ResetStreak = true,         
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/DiosDi/VexonHub/refs/heads/main/TrashCan-Farm"))()
  end
  })

    AddButton(Tab0o, {
     Name = "TSB auto fram kill 100% HP The advice is not to use auto farm kill 100% because it takes too long. ",
    Callback = function()
	  getgenv().Settings = {
    TargetHealth = 100,          
    CharacterHeight = 8,        
    ResetStreak = true,         
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/DiosDi/VexonHub/refs/heads/main/TrashCan-Farm"))()
  end
  })