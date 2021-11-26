local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('gunshop:server:linus')
AddEventHandler('gunshop:server:linus', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local amount = 1
	if Player.Functions.AddItem("licensepistol", amount) then
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["licensepistol"], 'add')
	TriggerClientEvent('QBCore:Notify', src, 'You got a ' .. amount ..' pistol license', 'success')    
	end
end)
