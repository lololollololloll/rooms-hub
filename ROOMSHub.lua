local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()

Rayfield:Notify({
   Title = "Welcome to ROOMS Hub",
   Content = "Version 1.0, made by lol",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})






Rayfield:Notify({
   Title = "Loading ROOMS Hub",
   Content = "Please wait....",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})




local Window = Rayfield:CreateWindow({
   Name = "ROOMS HUB",
   LoadingTitle = "ROOMS HUB v1.0",
   LoadingSubtitle = "by lol",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "ROOMS HUB"
   },
   Discord = {
      Enabled = true,
      Invite = "qCDfjVRFnN", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "ROOMS HUB",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/qCDfjVRFnN)",
      FileName = "ROOMSKEY",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "randomCharacters696969545821331a"
   }
})



local Tab = Window:CreateTab("ENTITY NOTIFIER", 11533545133)

local Section = Tab:CreateSection("ENTITY NOTIFIER")

local Button = Tab:CreateButton({
   Name = "A-60 AND A-120 NOTIFIER (CREDITS TO LOLCAT)",
   Callback = function()
   workspace.ChildAdded:Connect(function(Obj)
    if Obj.Name:sub(1, 1) == "A" and Obj.Name ~= "AmbushMoving" then
        game.StarterGui:SetCore("SendNotification", {
            Title = Obj.Name .. " Spawned ??????",
            Text = "Find a hiding spot",
            Duration = 5
        })
    end
end)
workspace.ChildRemoved:Connect(function(Obj)
    if Obj.Name:sub(1, 1) == "A" and Obj.Name ~= "AmbushMoving" then
        game.StarterGui:SetCore("SendNotification", {
            Title = Obj.Name .. " Despawned ???",
            Text = "You can go out now",
            Duration = 5
        })
    end
end)
   end,
})

--A90 REMOVER
--A90 REMOVER
--A90 REMOVER
--A90 REMOVER

local Button = Tab:CreateButton({
   Name = "DISABLE A-90",
   Callback = function()
   local Plr = game.Players.LocalPlayer
local ModuleScripts = {
   MainGame = Plr.PlayerGui.MainUI.Initiator.Main_Game,
}


ModuleScripts.MainGame.RemoteListener.Modules["A90"].Name = "Baller"
   end,
})

local toolstab = Window:CreateTab("TOOLS", 12342109094)



local Button = toolstab:CreateButton({
   Name = "SKHAKELIGHT AUTO RECHARGE",
   Callback = function()
   local repeatTime = 5
	
 local player = game:GetService("Players").LocalPlayer
while wait() do
	wait(repeatTime)
	if player.Backpack:FindFirstChild("Shakelight") then
	player.Backpack.Shakelight.Remote:FireServer()
	wait(0.1)
	player.Backpack.Shakelight.Remote:FireServer()
	wait(0.1)
	player.Backpack.Shakelight.Remote:FireServer()
	wait(0.1)
	player.Backpack.Shakelight.Remote:FireServer()
	wait(0.1)
	player.Backpack.Shakelight.Remote:FireServer()
	elseif player.Character:FindFirstChild("Shakelight") then
	player.Backpack.Shakelight.Remote:FireServer()
	wait(0.1)
	player.Backpack.Shakelight.Remote:FireServer()
	wait(0.1)
	player.Backpack.Shakelight.Remote:FireServer()
	wait(0.1)
	player.Backpack.Shakelight.Remote:FireServer()
	wait(0.1)
	player.Backpack.Shakelight.Remote:FireServer()
	
	
end
end
   end,
})



local misc = Window:CreateTab("MISC", 12342114041)


local Button = misc:CreateButton({
   Name = "DISABLE ANTICHEAT",
   Callback = function()
   game.Players.LocalPlayer.Character.Collision:Destroy()
task.wait(0.1)
local RealHumanoid = game.Players.LocalPlayer.Character.Humanoid
 local HumanoidBypass = game.Players.LocalPlayer.Character.Humanoid:Clone()
HumanoidBypass.Parent = game.Players.LocalPlayer.Character
RealHumanoid:Destroy()
   end,
})

local Button = misc:CreateButton({
   Name = "[NOT WORKING] Join Rooms",
   Callback = function()

   end,
})

local Button = misc:CreateButton({
   Name = "Destroy UI",
   Callback = function()
	Rayfield:Destroy()
   end,
})
