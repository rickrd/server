local looktypes = {
136, 137, 138, 139, 140, 141, 142, 147, 148, 149, 150, 155, 156, 157, 158, 252, 269, 270, 279, 288, 324, 329, 336, 366, 431, 433, 464, 466, 471, 513, 514, 542, 575, 578, 618, 620, 632, 635, 636, 664, 666, 683, 694, 696, 698, 724, 732, 745, 749, 759, 845, 852, 874, 128, 129, 130, 131, 132, 133, 134, 143, 144, 145, 146, 151, 152, 153, 154, 251, 268, 273, 278, 289, 325, 328, 335, 367, 430, 432, 463, 465, 472, 512, 516, 541, 574, 577, 610, 619, 633, 634, 637, 665, 667, 684, 695, 697, 699, 725, 733, 746, 750, 760, 846, 853, 873
	
}

function onSay(player, words, param)
if not player:getGroup():getAccess() then
		return true
	end

	local target
	if param == '' then
		target = player:getTarget()
		if not target then
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'Gives players the ability to wear all addons. Usage: /addons <player name>')
			return false
		end
	else
		target = Player(param)
	end

	if not target then
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'Player ' .. param .. ' is currently not online.')
		return false
	end

	

	for i = 1, #looktypes do
		target:addOutfitAddon(looktypes[i], 3)
	end

	player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 'All addons unlocked for ' .. target:getName() .. '.')
	target:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, '[Server] All addons unlocked.')
	return false
end
