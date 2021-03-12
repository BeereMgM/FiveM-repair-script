AddEventHandler('chatMessage', function(source, n, msg)
	local msg = string.lower(msg)
	if msg == "/repair" then
		CancelEvent()
		TriggerClientEvent('text:repair', source)
	end
end)
