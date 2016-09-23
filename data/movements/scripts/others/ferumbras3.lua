function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	if player:getStorageValue(51993) >= 1 then
	else
		player:teleportTo(fromPosition)
	end
	return true
end