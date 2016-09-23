local bosses = {
	['tarbaz'] = {status = 1, storage = 51991},
	['shulgrax'] = {status = 1, storage = 51992},
	['plagirath'] = {status = 1, storage = 51993},
	['zamulosh'] = {status = 1, storage = 51994},
	['mazoran'] = {status = 1, storage = 51995},
	['razzagorn'] = {status = 1, storage = 51996},
	['ragiaz'] = {status = 1, storage = 51997},
	['ascending ferumbras'] = {status = 1, storage = 51998},
}

function onKill(creature, target)
	local targetMonster = target:getMonster()
	if not targetMonster then
		return true
	end

	local bossConfig = bosses[targetMonster:getName():lower()]
	if not bossConfig then
		return true
	end

	for pid, _ in pairs(targetMonster:getDamageMap()) do
		local attackerPlayer = Player(pid)
		local position = targetMonster:getPosition()
		if attackerPlayer then
			if attackerPlayer:getStorageValue(bossConfig.storage) < bossConfig.status then
				attackerPlayer:setStorageValue(bossConfig.storage, bossConfig.status)
				target:say("COMPLETE JUST A PART OF FERUMBRAS ASCENDANT QUEST!", TALKTYPE_MONSTER_SAY, false, player, Position(position))
			end

			attackerPlayer:setStorageValue(bossConfig.storage, 1)
			target:say("COMPLETE JUST A PART OF FERUMBRAS ASCENDANT QUEST!", TALKTYPE_MONSTER_SAY, false, player, Position(position))
			
		end
	end
end