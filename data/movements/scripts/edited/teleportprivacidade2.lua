function onStepIn(cid, item, position, fromPosition, toPosition)
local tileConfig = {
    teleport = {x = 1076, y = 1157, z = 6}, -- Posição do teleport.
    kickPos = fromPosition, kickEffect = CONST_ME_POFF,
    kickMsg = "Você precisa ser um jogador premium para acessar esta área.",
    enterEffect = 10,
}
if isPremium(cid) then
  doTeleportThing(cid, tileConfig.teleport)
  doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Voce nao tem permissao!")
  
    else
      doTeleportThing(cid, tileConfig.kickPos)
      doSendMagicEffect(tileConfig.kickPos, tileConfig.kickEffect)
      doPlayerSendCancel(cid, tileConfig.kickMsg)
    end
  return true
end