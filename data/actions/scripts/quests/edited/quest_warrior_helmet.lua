function onUse (cid,item,frompos,item2,topos)
        UID_DO_BAU = 15001
        STORAGE_VALUE = 45001
        ID_ITEM = 2475
		LevelQuest = 20
        pos = {x = 1180, y =1164, z =6}
 
        if getPlayerLevel(cid) >= LevelQuest then
          if item.uid == UID_DO_BAU then
            queststatus = getPlayerStorageValue(cid,STORAGE_VALUE)
            if queststatus ~= 1 then
              doPlayerSendTextMessage(cid,22,"congratulations, you have found a Warrior Helmet.") 
              doPlayerAddItem(cid,ID_ITEM,1)
              setPlayerStorageValue(cid,STORAGE_VALUE,1)
              doTeleportThing(cid, pos)
              doSendMagicEffect(pos, CONST_ME_TELEPORT)
            else
              doPlayerSendTextMessage(cid,22,"You already did this quest.")
              doTeleportThing(cid, pos)
              doSendMagicEffect(pos, CONST_ME_TELEPORT)
            end
        end
        else
          doPlayerSendCancel(cid,'Only players with level '..LevelQuest..'+ can open this chest.')
        end
  return 1
end