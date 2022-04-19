if not game:IsLoaded() then game.Loaded:Wait() end

syn.queue_on_teleport([[
	loadstring(game:HttpGet("https://raw.githubusercontent.com/synolope/sonic-server-hop/main/script.lua",true))()
]])

wait(2)

for _,obj in pairs(workspace.Map.Objects:GetChildren()) do
	if obj.ClassName == "Model" then
		coroutine.wrap(function()
			local ohString1 = obj.Name

			game:GetService("ReplicatedStorage").Knit.Services.WorldCurrencyService.RE.PickupCurrency:FireServer(ohString1)
		end)()
	end
end

wait(2)

while true do
	local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/9049840490/servers/Public?sortOrder=Asc&limit=100"))
for i,v in pairs(Servers.data) do
  if v.playing ~= v.maxPlayers then
      game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
  end
end
wait(1)
end