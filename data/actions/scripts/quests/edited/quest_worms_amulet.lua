function onUse(cid, item, frompos, item2, topos)
  	if item.aid == 45002 then
		local itemWeight = getItemWeightById(item.uid, 1)
		local playerCap = getPlayerFreeCap(cid)
		if getPlayerStorageValue(cid, item.uid) == -1 then
			if playerCap >= itemWeight then
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, 'You have found a ' .. getItemNameById(20127) .. '.')
				doPlayerAddItem(cid, 20127 ,1)
				setPlayerStorageValue(cid, item.uid, 1)
			else
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, 'You have found a ' .. getItemNameById(20127) .. ' weighing ' .. itemWeight .. ' oz it\'s too heavy.')
			end
		else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "It is empty.")
		end
	else
		return false
	end

	return true
end