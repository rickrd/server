function onKill(player, target)
	if not target:isMonster() or target:getName():lower() ~= "razzagorn" then
		return true
	end

	target:say("COMPLETE JUST A PART OF FERUMBRAS ASCENDANT QUEST!", TALKTYPE_MONSTER_SAY, false, player, Position(33424, 32465, 14))
    setPlayerStorageValue(cid, 51996, 1)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end
