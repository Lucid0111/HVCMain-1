-- [[

-- NOT USED REFER TO SV_CALLMENU

-- local config = module("cfg/base")

-- MySQL = module("hvc_mysql", "MySQL")
-- MySQL.debug = config.debug

-- MySQL.createCommand("HVC/set_adminlastposition",[[
--   INSERT INTO hvc_admin_data (user_id, last_location)
--   VALUES( @user_id, @location )
--   ON DUPLICATE KEY UPDATE `last_location` = @location
--   ]])


-- MySQL.createCommand("HVC/get_adminlastposition", "SELECT last_location FROM hvc_admin_data WHERE user_id = @user_id")
-- MySQL.createCommand("HVC/get_admintickets", "SELECT Tickets FROM HVC_admintickets WHERE UserID = @user_id")
-- ticketid = 1

-- tickets = {}
-- [[
-- RegisterServerEvent("calladmin")
-- AddEventHandler("calladmin", function(cooldown)
--   print("Call admin fired")
--   if cooldown == true then 
--     HVCclient.notify(source,{"~r~Please wait 60 seconds before calling admin again."})
--     return
--   end
--     local user_id = HVC.getUserId(source)
--     if user_id ~= nil then
--       if cooldown == false then
--         HVC.prompt(source,"Describe your problem:","",function(player,desc) 
--           local currentTicketId = ticketid
--           tickets[ticketid] = {answered = false, requestedid = source}
--           ticketid = ticketid + 1

--           desc = desc or ""
--           if desc ~= nil and desc ~= "" then
--           local answered = false
--           local players = {}
--           for k,v in pairs(HVC.rusers) do
--             local player = HVC.getUserSource(tonumber(k))
--             check user
--             if HVC.hasPermission(k,"admin.tickets") and player ~= nil then
--               table.insert(players,player)
--             end
--           end
--               send notify and alert to all listening players
--               print("STAGING FIXXXX!")
--               for a,v in pairs(players) do
--                 print("--------------")
--                 print(json.encode(players))
--                 print(v)
--                 print("HIII")
--                 Admin ticket (user_id = "..user_id..") take/TP to ?
--                 	HVC.request(target,GetPlayerName(player).." wants to sell: " ..name.. " Price: $"..amount, 10, function(target,ok)
--                 HVC.request(v,"Admin ticket (user_id = "..user_id..") take/TP to "..desc, 300, function(v,ok)
--                   print(1)
--                   print("Sent request to : " .. a)
--                   print("Sent!!!!")
--                   if ok then -- take the call
--                     print(v)
--                     local admin2 = HVC.getUserSource(v)
--                     if  tickets[currentTicketId].requestedid == admin2 then 
--                      HVCclient.notify(a,{"~r~You can't take your own tickets silly."})
--                      return
--                     end
--                     if not tickets[currentTicketId].answered then
--                       answer the call
--                       local admin = HVC.getUserSource(tonumber(v))
--                       local admin_id = HVC.getUserId(admin)
--                   print(admin)
--                 TriggerClientEvent("HVC:STAFF11", admin)
--                       print(3)
--                       HVC.giveBankMoney(admin_id,5000)
--                       HVCclient.notify(admin,{"~g~Here have £5000 for being a star! Keep the tickets up :)"})
--                       MySQL.query("HVC/get_admintickets", {user_id = admin_id}, function(rows)
                      
--                         if #rows > 0 then
--                           print("------------")
--                           print(rows[1])
--                       local posz = rows[1].Tickets
--                       local total = tonumber(posz) + 1
--                       MySQL.query("HVC/set_admintickets", {user_id = admin_id, Name = GetPlayerName(admin), Tickets = tonumber(total)}, function() end)
--                       print("Tickets ", posz)
--                         else  
--                           print("Add")
--                           MySQL.query("HVC/set_admintickets", {user_id = admin_id, Name = GetPlayerName(admin), Tickets = 1}, function() end)
--                         end 
--                       end)
--                       tickets[currentTicketId].answered = true
--                       HVCclient.notify(tickets[currentTicketId].requestedid,{"~g~An admin took your ticket."})
--                       HVCclient.getPosition(tickets[currentTicketId].requestedid, {}, function(x,y,z)
--                         HVCclient.getPosition(v, {}, function(x2,y2,z2) 
--                           local location = tostring(x2)..','..tostring(y2)..','..tostring(z2)
--                           MySQL.query("HVC/set_adminlastposition", {user_id = v, location = location}, function() end)
--                           HVCclient.teleport(v,{x,y,z})
--                         end)
--                       end)
--                     else
--                       HVCclient.notify(v,{"Ticket already taken."})
--                     end
--                   end
--                 end)
--               end
      
--           else
--             HVCclient.notify(source,{"Empty Admin Call."})
--           end
--         end)
--       else
--         HVCclient.notify(source,{"~r~Please wait 60 seconds."})
--       end
--     end
-- end)
-- ]]
-- RegisterServerEvent("calladmin")
-- AddEventHandler("calladmin", function(cooldown)
--   print("Call admin fired")
--   if cooldown == true then 
--     HVCclient.notify(source,{"~r~Please wait 60 seconds before calling admin again."})
--     return
--   end
-- local user_id = HVC.getUserId(source)
-- if user_id ~= nil then
--   HVC.prompt(source,"Describe your problem:","",function(player,desc) 
--     desc = desc or ""
--     if desc ~= nil and desc ~= "" then
--     local answered = false
--     local players = {}
--     for k,v in pairs(HVC.rusers) do
--       local player = HVC.getUserSource(tonumber(k))
--       check user
--       if HVC.hasPermission(k,"admin.tickets") and player ~= nil then
--         table.insert(players,player)
--       end
--     end

--     send notify and alert to all listening players
--     for k,v in pairs(players) do
--       HVC.request(v,"Admin Ticket | User ID: "..user_id.." | Reason: "..desc, 300, function(v,ok)
--         if ok then -- take the call
--           if not answered then
--             local admin_userid = HVC.getUserId(v)
--             print(admin_userid)
--             --- REGISTER
            
-- if v == player then 
--   return   HVCclient.notify(v,{"~r~You can't take your own ticket silly!"}) 
-- end

-- HVCclient.getPosition(v, {}, function(x,y,z)
--     local location = tostring(x)..','..tostring(y)..','..tostring(z)
--     MySQL.query("HVC/set_adminlastposition", {user_id = v, location = location}, function() end)
-- end)

--             MySQL.query("HVC/get_admintickets", {user_id = admin_userid}, function(rows)
                      
--               if #rows > 0 then
--                 print("------------")
--                 print(rows[1])
--             local posz = rows[1].Tickets
--             local total = tonumber(posz) + 1
--             MySQL.query("HVC/set_admintickets", {user_id = admin_userid, Name = GetPlayerName(v), Tickets = tonumber(total)}, function() end)
--             print("Tickets ", posz)
--               else  
--                 print("Add")
--                 MySQL.query("HVC/set_admintickets", {user_id = admin_userid, Name = GetPlayerName(v), Tickets = 1}, function() end)
--               end 
--             end)


--             ---- REGISTER
--             HVC.giveBankMoney(admin_userid,5000)
--             HVCclient.notify(v,{"~g~Here have £5000 for being a star! Keep the tickets up :)"})
--             HVCclient.notify(player,{"An admin took your ticket."})
--             HVCclient.getPosition(player, {}, function(x,y,z)
--               HVCclient.teleport(v,{x,y,z})
--             end)
--             answered = true
--           else
--             HVCclient.notify(v,{"Ticket already taken."})
--           end
--         end
--       end)
--     end
--     else
--       HVCclient.notify(player,{"Empty Admin Call."})
--     end
--   end)
-- end
-- end)

-- RegisterServerEvent("HVC:return")
-- AddEventHandler("HVC:return", function()
--   local user_id = source
--   MySQL.query("HVC/get_adminlastposition", {user_id = user_id}, function(rows) 
--       local t = {}

--      for i in rows[1].last_location:gmatch("([^,%s]+)") do  
--           t[#t + 1] = i
--       end 

--       local x = t[1]
--       local y = t[2]
--       local z = t[3]
      
--       HVCclient.teleport(user_id,{x,y,z})
--     end)
-- end)