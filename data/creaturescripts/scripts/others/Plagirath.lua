function onKill(player, target)
	if not target:isMonster() or target:getName():lower() ~= "plagirath" then
		return true
	end

	target:say("COMPLETE JUST A PART OF FERUMBRAS ASCENDANT QUEST!!", TALKTYPE_MONSTER_SAY, false, player, Position(33170, 31502, 13))
    setPlayerStorageValue(cid, 51993, 1)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end
