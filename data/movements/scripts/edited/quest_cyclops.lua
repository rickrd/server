function onStepIn(cid, item, position, fromPosition, toPosition)
local tileConfig = {
    kickPos = fromPosition, kickEffect = CONST_ME_POFF,
    kickMsg = "Você precisa ser um jogador premium para acessar esta área.",
    enterEffect = 10,
}
recompensa = 8821


if getPlayerStorageValue(cid, item.aid) == -1 then
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'You have found a ' .. getItemNameById(recompensa) .. '.')
	doPlayerAddItem(cid, recompensa ,1)
	setPlayerStorageValue(cid, item.aid, 1)
    end

  return true
end