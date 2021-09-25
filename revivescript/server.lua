
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterCommand("revive", function(source, args, rawCommand)	-- /revive [ID]
	if source ~= 0 then
		local xPlayer = ESX.GetPlayerFromId(source)
		if havePermission(xPlayer) then
			if args[1] and tonumber(args[1]) then
				local targetId = tonumber(args[1])
      			local xTarget = ESX.GetPlayerFromId(targetId)
      			if xTarget then
					TriggerClientEvent("esx_ambulancejob:revive", xTarget.source)
        			TriggerClientEvent("chatMessage", xPlayer.source, _U('reviveplayer', targetId))
					TriggerClientEvent('chatMessage', xTarget.source, _U('reviveplayer'))
      			else
        			TriggerClientEvent("chatMessage", xPlayer.source, _U('not_online', 'revive'))
      			end
    		else
      			TriggerClientEvent("chatMessage", xPlayer.source, _U('invalid_input', 'revive'))
    		end
  		end
	end
end, false)

