function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	if player:getStorageValue(Storage.TheNewFrontier.TomeofKnowledge) >= 7 then		
		player:teleportTo(Position(33198, 31346, 6))		
	else
		player:teleportTo(Position(33145, 31248, 6))
		player:say("You need to delivery more tomes to Cael.", TALKTYPE_MONSTER_SAY)
	end
	return true
end