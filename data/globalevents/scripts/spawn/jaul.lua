
-- Should Jaul spawn as in real tibia?
local spawnByDay = true
local spawnDay = 'Wednesday'
local spawnPosition = Position(33541, 31266, 11)

function onStartup()
	if spawnByDay then
		if os.date('%A') == spawnDay then
			Game.createMonster('Jaul', spawnPosition, false, true)
		end
	else
		Game.createMonster('Jaul', spawnPosition, false, true)
	end

	return true
end
