for _,obj in pairs(workspace.Map.Objects:GetChildren()) do
	if obj.ClassName == "Model" then
		coroutine.wrap(function()
			local ohString1 = obj.Name

			game:GetService("ReplicatedStorage").Knit.Services.WorldCurrencyService.RE.PickupCurrency:FireServer(ohString1)
		end)()
	end
end