function onUse(player, item, fromPosition, target, toPosition, isHotkey)
if Game.getStorageValue(1216410) < 1 then
Game.setStorageValue(1216410, 1)
addEvent(Game.setStorageValue, 24 * 60 * 60 * 1000, 1216410, 0)
Game.createMonster('Yakchal', Position(32205, 31004, 14), false, true)
end
	return true
end