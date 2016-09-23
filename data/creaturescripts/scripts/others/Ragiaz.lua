function onKill(player, target)
	if not target:isMonster() or target:getName():lower() ~= "ragiaz" then
		return true
	end

	target:say("COMPLETE JUST A PART OF FERUMBRAS ASCENDANT QUEST!", TALKTYPE_MONSTER_SAY, false, player, Position(33483, 32334, 13))
    setPlayerStorageValue(cid, 51997, 1)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end
