function onKill(player, target)
	if not target:isMonster() or target:getName():lower() ~= "zamulosh" then
		return true
	end

	target:say("COMPLETE JUST A PART OF FERUMBRAS ASCENDANT QUEST!", TALKTYPE_MONSTER_SAY, false, player, Position(33644, 32758, 11))
    setPlayerStorageValue(cid, 51994, 1)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end
