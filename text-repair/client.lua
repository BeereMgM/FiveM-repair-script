RegisterNetEvent('text:repair')
AddEventHandler('text:repair', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleEngineHealth(vehicle, 9999)
		SetVehiclePetrolTankHealth(vehicle, 9999)
		SetVehicleFixed(vehicle)
        notification("~g~Dein Fahrzeug wurde repariert!")
    else
        notification("~o~Du bist in keinem Fahrzeug, um es zu reparieren!")
    end
end)

function notification(msg)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(false, false)
end

