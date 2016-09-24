function onSay(cid, words, param)
r = getCreatureOutfit(cid)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, '<look type="'..r.lookType..'" head="'..r.lookHead..'" body="'..r.lookBody..'" legs="'..r.lookLegs..'" feet="'..r.lookFeet..'" addons="'..r.lookAddons..'" mount="'..r.lookMount..'"/>')
return true
end