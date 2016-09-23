-- ### CONFIG ###
-- message send to player by script "type" (types you can check in "global.lua")
SHOP_MSG_TYPE = 18
-- time (in seconds) between connections to SQL database by shop script
SQL_interval = 30
-- ### END OF CONFIG ###
function onThink(interval, lastExecution)
    local result_plr = db.storeQuery("SELECT * FROM z_ots_comunication")
    if(result_plr ~= false) then
        repeat
            local id = tonumber(result.getDataInt(result_plr, "id"))
            local action = tostring(result.getDataString(result_plr, "action"))
            local delete = tonumber(result.getDataInt(result_plr, "delete_it"))
            local cid = getPlayerByName(tostring(result.getDataString(result_plr, "name")))
            if(cid) then
                local itemtogive_id = tonumber(result.getDataInt(result_plr, "param1"))
                local itemtogive_count = tonumber(result.getDataInt(result_plr, "param2"))
                local container_id = tonumber(result.getDataInt(result_plr, "param3"))
                local container_count = tonumber(result.getDataInt(result_plr, "param4"))
                local add_item_type = tostring(result.getDataString(result_plr, "param5"))
                local add_item_name = tostring(result.getDataString(result_plr, "param6"))
				local adddonn = tostring(result.getDataString(result_plr, "param7"))
                local received_item = 0
                local full_weight = 0
				
				-- Script para addons e montaria full pelo Gesior -- 
				if(add_item_type == 'mount') then
				local player = Player(cid)
				if (getPlayerStorageValue(cid,1) == -1) then
				player:addMount(itemtogive_id)				
				doSendMagicEffect(getCreaturePosition(cid), CONST_ME_HOLYDAMAGE)
				doPlayerSendTextMessage(cid, SHOP_MSG_TYPE, 'You received '.. add_item_name ..' from the shop.')
				db.query("DELETE FROM `z_ots_comunication` WHERE `id` = " .. id .. ";")
                db.query("UPDATE `z_shop_history_item` SET `trans_state`='realized', `trans_real`=" .. os.time() .. " WHERE id = " .. id .. ";")
				else
				doPlayerSendTextMessage(cid,25,"You Already have this Mount.")
				end
				return TRUE
				
				end				
				-- fim do script --
				-- Script para addons e montaria full pelo Gesior -- 
				if(add_item_type == 'addons') then
				local player = Player(cid)
				if (getPlayerStorageValue(cid,adddonn) == -1) then
				
				
				local outfits =
    {
        --[outfit] = {id_female, id_male}
        ["1"] = {136, 128},
        ["2"] = {137, 129},
        ["3"] = {138, 130},
        ["4"] = {139, 131},
        ["5"] = {140, 132},
        ["6"] = {141, 133},
        ["7"] = {142, 134},
        ["8"] = {147, 143},
        ["9"] = {148, 144},
        ["10"] = {149, 145},
        ["11"] = {150, 146},
        ["12"] = {155, 151},
        ["13"] = {156, 152},
        ["14"] = {157, 153},
        ["15"] = {158, 154},
        ["16"] = {252, 251},
        ["17"] = {269, 268},
        ["18"] = {270, 273},
        ["19"] = {279, 278},
        ["20"] = {288, 289},
        ["21"] = {324, 325},
        ["22"] = {336, 335},
        ["23"] = {366, 367},
        ["24"] = {431, 430},
        ["25"] = {433, 432},
        ["26"] = {464, 463},
        ["27"] = {466, 465},
        ["28"] = {471, 472},
        ["29"] = {513, 512},
        ["30"] = {514, 516},
        ["31"] = {542, 541},
        ["32"] = {575, 574},
        ["33"] = {578, 577},
        ["34"] = {618, 610},
        ["35"] = {632, 633},
        ["36"] = {635, 634},
        ["37"] = {637, 636},
        ["38"] = {664, 665},
        ["39"] = {667, 666},
        ["40"] = {683, 684},
        ["41"] = {694, 695},
        ["42"] = {696, 697},
        ["43"] = {698, 699},
        ["44"] = {724, 725},
        ["45"] = {732, 733},
        ["46"] = {745, 746},
        ["47"] = {749, 750},
        ["48"] = {759, 760},
        ["49"] = {845, 846},
        ["50"] = {852, 853},
        ["51"] = {874, 873}
    }
           
    local param = string.lower(itemtogive_id)
	
            if (not player:hasOutfit(outfits[param][1], 3) or not player:hasOutfit(outfits[param][1], 2)) then
                player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
                player:removeItem(addondoll_id, 1)
                player:addOutfitAddon(outfits[param][1], 3)
                player:addOutfitAddon(outfits[param][2], 3)
                player:sendTextMessage(MESSAGE_INFO_DESCR, "Seu Addon full foi adicionado!")
            else
                player:sendTextMessage(MESSAGE_INFO_DESCR, "ja tem esse addon!")
            end
    
		
		
		
		
		
				doPlayerSendTextMessage(cid, SHOP_MSG_TYPE, 'You received '.. add_item_name ..' from The fullprojectibia Shop.')
				db.query("DELETE FROM `z_ots_comunication` WHERE `id` = " .. id .. ";")
                db.query("UPDATE `z_shop_history_item` SET `trans_state`='realized', `trans_real`=" .. os.time() .. " WHERE id = " .. id .. ";")
				else
				doPlayerSendTextMessage(cid,25,"You Already have this Outfit.")
				end
				return TRUE
				end				

				
				
				
                if(add_item_type == 'container') then
                    container_weight = getItemWeight(container_id, 1)
                    if(isItemRune(itemtogive_id)) then
                        items_weight = container_count * getItemWeight(itemtogive_id, 1)
                    else
                        items_weight = container_count * getItemWeight(itemtogive_id, itemtogive_count)
                    end
                    full_weight = items_weight + container_weight
                else
                    full_weight = getItemWeight(itemtogive_id, itemtogive_count)
                    if(isItemRune(itemtogive_id)) then
                        full_weight = getItemWeight(itemtogive_id, 1)
                    else
                        full_weight = getItemWeight(itemtogive_id, itemtogive_count)
                    end
                end
                local free_cap = getPlayerFreeCap(cid)
                if(full_weight <= free_cap) then
                    if(add_item_type == 'container') then
                        local new_container = doCreateItemEx(container_id, 1)
                        local iter = 0
                        while(iter ~= container_count) do
                            doAddContainerItem(new_container, itemtogive_id, itemtogive_count)
                            iter = iter + 1
                        end
                        received_item = doPlayerAddItemEx(cid, new_container)
                    else
                        local new_item = doCreateItemEx(itemtogive_id, itemtogive_count)
                        received_item = doPlayerAddItemEx(cid, new_item)
		
                    end
                    if(type(received_item) == "number" and received_item == RETURNVALUE_NOERROR) then
                        doPlayerSendTextMessage(cid, SHOP_MSG_TYPE, 'You received '.. add_item_name ..' from The fullprojectibia Shop.')
                        db.query("DELETE FROM `z_ots_comunication` WHERE `id` = " .. id .. ";")
                        db.query("UPDATE `z_shop_history_item` SET `trans_state`='realized', `trans_real`=" .. os.time() .. " WHERE id = " .. id .. ";")
                    else
                        doPlayerSendTextMessage(cid, SHOP_MSG_TYPE, ' '.. add_item_name ..' from Th3 Insanity is waiting for you. Please make place for this item in your backpack/hands and wait about '.. SQL_interval ..' seconds to get it.')
                    end
                else
                    doPlayerSendTextMessage(cid, SHOP_MSG_TYPE, ' '.. add_item_name ..' Th3 Insanity is waiting for you. It weight is '.. full_weight ..' oz., you have only '.. free_cap ..' oz. free capacity. Put some items in depot and wait about '.. SQL_interval ..' seconds to get it.')
                end
            end
        until not result.next(result_plr)
        result.free(result_plr)
    end
    return true
end