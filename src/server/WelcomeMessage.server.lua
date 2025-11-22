-- Welcome message script
-- This runs on the server when a player joins

local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
    print(player.Name .. " has joined the game!")

    -- Wait a moment then send a welcome message
    wait(1)
    print("Welcome to MyFirstGame, " .. player.Name .. "!")
end)
