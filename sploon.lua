


local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title = "Sploon 1.0.0",
    SubTitle = "by higuysIownslapbattles",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})


Fluent:Notify({
        Title = "Loaded !!!!!!!",
        Content = "This is sploon script has loaded!!!!",
        SubContent = "", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
})

-- Fluent provides Lucide Icons, they are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" })
}

Tabs.Main:AddButton({
    Title = "Insta inkject or squishjet (even without having it)", 
    Description = "Instantly kills the whole other team",
    Callback = function()
-- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

local ohString1 = "Slushjet"
local ohVector32 = Vector3.new(-0.04919556900858879, -0.13131889700889587, 0.9901187419891357)

game.Players.LocalPlayer.Character.Scripts.Normal.SpecialUse.RemoteEvent:FireServer(ohString1, ohVector32)
    end 
})

Tabs.Main:AddButton({
    Title = "Insta kill other team", 
    Description = "Instantly kills the whole other team",
    Callback = function()
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Team ~= game.Players.LocalPlayer.Team then
                -- Target players who are not on the same team
                local ohInstance1 = v
                local ohNumber2 = 200
                local ohString3 = "Soakshot"
    
                game.Players.LocalPlayer.Character.Events.Damage:FireServer(ohInstance1, ohNumber2, ohString3)
            end
        end
    end 
})

local Constantinstakill = Tabs.Main:AddToggle("constantkill",
{
    Title = "Constantly insta kill",
    Description = "Constantly kills the whole other team",
    Default = false,
    Callback = function(state)
    getgenv().instakillol = state
    while getgenv().instakillol == true do
    task.wait(0.1)
    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Team ~= game.Players.LocalPlayer.Team then
            -- Target players who are not on the same team
            local ohInstance1 = v
            local ohNumber2 = 200
            local ohString3 = "Soakshot"

            game.Players.LocalPlayer.Character.Events.Damage:FireServer(ohInstance1, ohNumber2, ohString3)
        end
    end
end
end
})


local autoexplosion = Tabs.Main:AddToggle("explsionhaha",
{
    Title = "spam explosion on teams (must be in inkjet)",
    Description = "Constantly refills slush",
    Default = false,
    Callback = function(state)
        getgenv().autoexplosion = state
        while getgenv().autoexplosion == true do task.wait()
            for i, v in pairs (workspace:GetChildren()) do
                if v:IsA("Model") and v.HumanoidRootPart then
                    local ohVector31 = v.HumanoidRootPart.CFrame.Position

                    game.Players.LocalPlayer.Character.Slushjet.Scripts.Explosion:FireServer(ohVector31)
                end
        end
        end
    end
})

local autoslush = Tabs.Main:AddToggle("autoslushha",
{
    Title = "Auto refill slush",
    Description = "Constantly refills slush",
    Default = false,
    Callback = function(state)
        getgenv().autorefill = state
        while getgenv().autorefill == true do task.wait()
            game.Players.LocalPlayer.Character.Values.Number.Slush.Value = 100
        end
    end
})

local spamadheasionbomb = Tabs.Main:AddToggle("spambomb",
{
    Title = "Spam bomb",
    Description = "spam a bomb",
    Default = false,
    Callback = function(state)
        getgenv().spambomblol = state
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
while getgenv().spambomblol == true do task.wait(0.000001)
    local ohNumber1 = 100.16666666666667
    local ohNumber2 = 100.83333333333333
    local ohString3 = "Slush Bomb"
    local ohVector34 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position
    local ohVector35 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position
    local ohVector36 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position
    local ohVector37 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position
    local ohNumber8 = 1
    
    game.Players.LocalPlayer.Character.Scripts.Normal.SubThrow.Throw:FireServer(ohNumber1, ohNumber2, ohString3, ohVector34, ohVector35, ohVector36, ohVector37, ohNumber8)
    end

    end
})
