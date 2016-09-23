function onKill(player, target)
	if not target:isMonster() or target:getName():lower() ~= "shulgrax" then
		return true
	end

	target:say("COMPLETE JUST A PART OF FERUMBRAS ASCENDANT QUEST!", TALKTYPE_MONSTER_SAY, false, player, Position(33485, 32786, 13))
    setPlayerStorageValue(cid, 51992, 1)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end
