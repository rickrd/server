function onKill(player, target)
	if not target:isMonster() or target:getName():lower() ~= "mazoran" then
		return true
	end

	target:say("COMPLETE JUST A PART OF FERUMBRAS ASCENDANT QUEST!", TALKTYPE_MONSTER_SAY, false, player, Position(33586, 32688, 14))
    setPlayerStorageValue(cid, 51995, 1)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end
