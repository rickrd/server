local config = {
	['Tuesday'] = Position(33434, 31262, 11)
}

local spawnByDay = true

function onStartup()
	if spawnByDay then
		local creature = Game.createMonster('Obujos', config[os.date('%A')])
		if npc then
			creature:setMasterPos(config[os.date('%A')])
		end
	else
		local npc
		for _, position in pairs(config) do
			npc = Game.createMonster('Obujos', position)
			if creature then
				creature:setMasterPos(position)
			end
		end
	end

	return true
end


-- Should Jaul spawn as in real tibia?
local spawnByDay = true
local spawnDay = 'Tuesday'
local spawnPosition = Position(33434, 31262, 11)

function onStartup()
	if spawnByDay then
		if os.date('%A') == spawnDay then
			Game.createMonster('Obujos', spawnPosition, false, true)
		end
	else
		Game.createMonster('Obujos', spawnPosition, false, true)
	end

	return true
end
