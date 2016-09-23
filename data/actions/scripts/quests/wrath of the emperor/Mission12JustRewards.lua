function onUse(cid, item, fromPosition, itemEx)
	local player = Player(cid)
	if not player then
		return true
	end
	local daysvalue = 2 * 24 * 60 * 60
        time = os.time() + daysvalue
	if player:getStorageValue(77777) <= 0 then
		player:setStorageValue(45598, time)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Congratulations, you got your reward.')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You already got your reward.')
	end
	if player:getStorageValue(77778) <= 0 then
		player:addOutfitAddon(366, 2)	
		player:addOutfitAddon(366, 1)
		player:addOutfitAddon(367, 2)
		player:addOutfitAddon(367, 1)
		player:setStorageValue(777779, 1)
		player:setStorageValue(777780, 1)
        end
	return true
end