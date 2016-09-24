function onStepIn(cid, item, position, fromPosition, toPosition)
local tileConfig = {
    teleport = {x = 1080, y = 1164, z = 6}, -- Posição do teleport.
    kickPos = fromPosition, kickEffect = CONST_ME_POFF,
    kickMsg = "Você precisa ser um jogador premium para acessar esta área.",
    enterEffect = 10,
}
if isPremium(cid) then
  doTeleportThing(cid, tileConfig.teleport)
  doSendMagicEffect(tileConfig.teleport, tileConfig.enterEffect)
  doSendAnimatedText({x = 1085, y = 1164, z = 6}, "Hunting Teleports", 18)
  doSendAnimatedText({x = 1080, y = 1169, z = 6}, "NPCs", 18)
  doSendAnimatedText({x = 1075, y = 1164, z = 6}, "Training Center", 18)
    else
      doTeleportThing(cid, tileConfig.kickPos)
      doSendMagicEffect(tileConfig.kickPos, tileConfig.kickEffect)
      doPlayerSendCancel(cid, tileConfig.kickMsg)
    end
  return true
end