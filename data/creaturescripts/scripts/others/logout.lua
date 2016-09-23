function onLogout(player)
	local playerId = player:getId()
	db.query("DELETE FROM `players_online` WHERE `player_id` = " .. playerId .. ";")
	if nextUseStaminaTime[playerId] ~= nil then
		nextUseStaminaTime[playerId] = nil
	end
	return true
end
