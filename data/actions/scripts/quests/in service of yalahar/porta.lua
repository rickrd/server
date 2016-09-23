function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(Storage.InServiceofYalahar.Questline) == 52 then
		player:teleportTo(Position(32778, 31206, 7))
		else
		player:teleportTo(Position(32782, 31206, 7))
	end
return true
end
