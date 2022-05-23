--[[
  Decompiled using Federal#9999's decompiler. Output might not be 100% accurate 
]]

AddEventHandler("playerSpawned", function()
  va = true
end)
if DELTAXC.AntiPlayerBlips then
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(2500)
      for fg = 1, #GetActivePlayers() do
        if 0 < 0 + 1 then
          TriggerServerEvent("DeltaAC:blips")
        end
      end
    end
  end)
end
if DELTAXC.AntiArmor then
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(2500)
      if GetPedArmour((GetPlayerPed(-1))) > DELTAXC.MaxArmor then
        TriggerServerEvent("DeltaAC:Armor", GetPedArmour((GetPlayerPed(-1))))
      end
    end
  end)
end
if DELTAXC.Screenshot then
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
      for fd, fe in ipairs(DELTAXC.ScreenshotKeys) do
        if IsControlJustReleased(0, va[fe]) then
          exports["screenshot-basic"]:requestScreenshotUpload(DELTAXC.screenshotstorage, "files[]", function(a)
            TriggerServerEvent("deltax:sendscreenshotdata", json.decode(a).attachments[1].proxy_url, va)
          end)
          Citizen.Wait(1500)
        end
      end
    end
  end)
end
if DELTAXC.AntiGodMode then
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(5000)
      SetEntityHealth(PlayerPedId(), GetEntityHealth((PlayerPedId())) - 2)
      Citizen.Wait((math.random(10, 150)))
      if not IsPlayerDead(PlayerId()) then
        if PlayerPedId() == PlayerPedId() and GetEntityHealth((PlayerPedId())) == GetEntityHealth((PlayerPedId())) and GetEntityHealth((PlayerPedId())) ~= 0 then
          TriggerServerEvent("DeltaAC:godmode")
        elseif GetEntityHealth((PlayerPedId())) == GetEntityHealth((PlayerPedId())) - 2 then
          SetEntityHealth(PlayerPedId(), GetEntityHealth((PlayerPedId())) + 2)
        end
      end
      if GetEntityHealth(PlayerPedId()) > 200 then
        TriggerServerEvent("DeltaAC:godmode")
      end
      if 200 > GetPedArmour(PlayerPedId()) then
        Wait(50)
        if GetPedArmour(PlayerPedId()) == 200 then
          TriggerServerEvent("DeltaAC:godmode")
        end
      end
    end
  end)
end
if DELTAXC.General then
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(1000)
      SetPedInfiniteAmmoClip(PlayerPedId(), false)
      SetPlayerInvincible(PlayerId(), false)
      SetEntityInvincible(PlayerPedId(), false)
      SetEntityCanBeDamaged(PlayerPedId(), true)
      ResetEntityAlpha(PlayerPedId())
    end
  end)
end
if DELTAXC.AntiResourceStopper then
  AddEventHandler("onClientResourceStop", function(a)
    if va then
      TriggerServerEvent("DeltaAC:stoppedressource", a)
    end
  end)
end
if DELTAXC.AntiResourceStarter then
  AddEventHandler("onClientResourceStart", function(a)
    if va then
      TriggerServerEvent("DeltaAC:startedressource", a)
    end
  end)
end
if DELTAXC.AntiSpectate then
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(2500)
      if NetworkIsInSpectatorMode() then
        TriggerServerEvent("DeltaAC:spectate")
      end
    end
  end)
end
if DELTAXC.AntiSuperjump then
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(800)
      if IsPedJumping(PlayerPedId()) then
        TriggerServerEvent("DeltaAC:superjump")
      end
    end
  end)
end
if DELTAXC.AntiRapePlayer then
  Citizen.CreateThread(function()
    while true do
      for fd in EnumeratePeds() do
        if IsEntityPlayingAnim(PlayerPedId(), "rcmpaparazzo_2", "shag_loop_poppy", true) then
          ClearPedTasks(PlayerPedId())
        end
        if IsEntityPlayingAnim(fd, "rcmpaparazzo_2", "shag_loop_a", true) then
          ClearPedTasks(fd)
          print(IsPedAPlayer(fd))
          if IsPedAPlayer(fd) == false then
            DeleteNetworkedEntity(fd)
            DeleteEntity(fd)
          end
        end
      end
      Wait(7000)
    end
  end)
end
if DELTAXC.AntiModMenuTexture then
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(7000)
      for fe, fg in pairs({
        {
          txd = "HydroMenu",
          txt = "HydroMenuHeader",
          name = "HydroMenu"
        },
        {
          txd = "John",
          txt = "John2",
          name = "SugarMenu"
        },
        {
          txd = "darkside",
          txt = "logo",
          name = "Darkside"
        },
        {
          txd = "ISMMENU",
          txt = "ISMMENUHeader",
          name = "ISMMENU"
        },
        {
          txd = "dopatest",
          txt = "duiTex",
          name = "Copypaste Menu"
        },
        {
          txd = "fm",
          txt = "menu_bg",
          name = "Fallout"
        },
        {
          txd = "wave",
          txt = "logo",
          name = "Wave"
        },
        {
          txd = "meow2",
          txt = "woof2",
          name = "Alokas66",
          x = 1000,
          y = 1000
        },
        {
          txd = "adb831a7fdd83d_Guest_d1e2a309ce7591dff86",
          txt = "adb831a7fdd83d_Guest_d1e2a309ce7591dff8Header6",
          name = "Guest Menu"
        },
        {
          txd = "hugev_gif_DSGUHSDGISDG",
          txt = "duiTex_DSIOGJSDG",
          name = "HugeV Menu"
        },
        {
          txd = "MM",
          txt = "menu_bg",
          name = "MetrixFallout"
        },
        {
          txd = "wm",
          txt = "wm2",
          name = "WM Menu"
        }
      }) do
        if fg.x and fg.y then
          if GetTextureResolution(fg.txd, fg.txt).x == fg.x and GetTextureResolution(fg.txd, fg.txt).y == fg.y then
            TriggerServerEvent("DeltaAC:modmneutexture", fg.name)
          end
        elseif GetTextureResolution(fg.txd, fg.txt).x ~= 4 then
          TriggerServerEvent("DeltaAC:modmneutexture", fg.name)
        end
      end
    end
  end)
end
if DELTAXC.PlayerProtection then
  SetEntityProofs(GetPlayerPed(-1), false, true, true, false, false, false, false, false)
end
if DELTAXC then
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(7000)
      do return end
      while true do
        for fk, fl in ipairs(DELTAXC.BLCommands) do
          if GetRegisteredCommands().name == fl then
            TriggerServerEvent("DeltaAC:blacklistcommand", fl)
          end
        end
      end
    end
  end)
end
if DELTAXC.AntiThermal then
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(2500)
      if GetUsingseethrough(true) then
        TriggerServerEvent("DeltaAC:thermal")
      end
    end
  end)
end
if DELTAXC.AntiNightVision then
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(2500)
      if GetUsingnightvision(true) then
        TriggerServerEvent("DeltaAC:night")
      end
    end
  end)
end
if DELTAXC.AntiNuiDevTools then
  RegisterNUICallback("nui", function()
    TriggerServerEvent("DeltaAC:nui")
  end)
end
if DELTAXC.AntiBlackListWeapon then
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(50)
      for fd, fe in ipairs(DELTAXC.BlackListWeapon) do
        if HasPedGotWeapon(PlayerPedId(), GetHashKey(fe), false) == 1 then
          RemoveAllPedWeapons(PlayerPedId(), true)
          TriggerServerEvent("DeltaAC:blacklistetweapoon", fe)
        end
      end
      Wait(4500)
    end
  end)
end
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1500)
    SetCanAttackFriendly(GetPlayerPed(-1), true, true)
    NetworkSetFriendlyFireOption(true)
  end
end)
function DeleteNetworkedEntity(a)
  while not NetworkHasControlOfEntity(a) and 0 < 50 and DoesEntityExist(a) do
    NetworkRequestControlOfEntity(a)
  end
  if DoesEntityExist(a) and NetworkHasControlOfEntity(a) then
    SetEntityAsMissionEntity(a, false, true)
    DeleteEntity(a)
  end
end
function EnumeratePeds()
  return va(FindFirstPed, FindNextPed, EndFindPed)
end
RegisterNetEvent("ZRQA3nmMqUBOIiKwH4I5:clearpeds")
AddEventHandler("ZRQA3nmMqUBOIiKwH4I5:clearpeds", function()
  for fe, fg in ipairs((GetGamePool("CPed"))) do
    if not IsPedAPlayer(fg) then
      RemoveAllPedWeapons(fg, true)
      if NetworkGetEntityIsNetworked(fg) then
        DeleteNetworkedEntity(fg)
      else
        DeleteEntity(fg)
      end
    end
  end
end)
RegisterNetEvent("ZRQA3nmMqUBOIiKwH4I5:clearvehicles")
AddEventHandler("ZRQA3nmMqUBOIiKwH4I5:clearvehicles", function(a)
  print("trrigger")
  if a == nil then
    for fg, fh in ipairs((GetGamePool("CVehicle"))) do
      if not IsPedAPlayer(GetPedInVehicleSeat(fh, -1)) then
        if NetworkGetEntityIsNetworked(fh) then
          DeleteNetworkedEntity(fh)
        else
          SetVehicleHasBeenOwnedByPlayer(fh, false)
          SetEntityAsMissionEntity(fh, true, true)
          DeleteEntity(fh)
        end
      end
    end
  else
    for fg, fh in ipairs((GetGamePool("CVehicle"))) do
      if NetworkGetEntityOwner(fh) ~= nil then
        print("ned nil")
        if GetPlayerServerId((NetworkGetEntityOwner(fh))) == a then
          print("found")
          if NetworkGetEntityIsNetworked(fh) then
            DeleteNetworkedEntity(fh)
            DeleteEntity(fh)
            DeleteGivenVehicle(fh)
            print("deleted")
          else
            SetVehicleHasBeenOwnedByPlayer(fh, false)
            SetEntityAsMissionEntity(fh, true, true)
            print("delted")
            DeleteEntity(fh)
          end
        end
      end
    end
  end
end)
RegisterNetEvent("AC:cleanareavehy")
RegisterNetEvent("AC:cleanareapedsy")
RegisterNetEvent("AC:cleanareaentityy")
RegisterNetEvent("AC:openmenuy")
RegisterNetEvent("AC:adminmenuenabley")
RegisterNetEvent("AC:invalid")
TriggerServerEvent("AC:adminmenuenable")
AddEventHandler("AC:adminmenuenabley", function()
  va = false
  vb = false
  vc = false
  vd = false
  ve = false
end)
AddEventHandler("AC:invalid", function()
  ForceSocialClubUpdate()
end)
function TSE(a, b, c, d, e, g, h, j, k, l)
  TriggerServerEvent(a, b, c, d, e, g, h, j, k, l)
end
function KeyboardInput(a, b, c)
  AddTextEntry("FMMC_KEY_TIP1", a .. ":")
  DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", b, "", "", "", c)
  blockinput = true
  while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
    Citizen.Wait(0)
  end
  if UpdateOnscreenKeyboard() ~= 2 then
    AddTextEntry("FMMC_KEY_TIP1", "")
    Citizen.Wait(500)
    blockinput = false
    return (GetOnscreenKeyboardResult())
  else
    AddTextEntry("FMMC_KEY_TIP1", "")
    Citizen.Wait(500)
    blockinput = false
    return nil
  end
end
function DrawText3D(a, b, c, d, e, g, h)
  SetDrawOrigin(a, b, c, 0)
  SetTextFont(2)
  SetTextProportional(0)
  SetTextScale(0, 0.2)
  SetTextColour(e, g, h, 255)
  SetTextDropshadow(0, 0, 0, 0, 255)
  SetTextEdge(2, 0, 0, 0, 150)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  SetTextCentre(1)
  AddTextComponentString(d)
  DrawText(0, 0)
  ClearDrawOrigin()
end
function math.round(a, b)
  return tonumber(string.format("%." .. (b or 0) .. "f", a))
end
function RequestModelSync(a)
  RequestModel((GetHashKey(a)))
  while not HasModelLoaded((GetHashKey(a))) do
    RequestModel((GetHashKey(a)))
    Citizen.Wait(0)
  end
end
function stringsplit(a, b)
  if b == nil then
    b = "%s"
  end
  i = 1
  for fh in string.gmatch(a, "([^" .. b .. "]+)") do
    i = i + 1
  end
  return {
    [i] = fh
  }
end
function SpectatePlayer(a)
  va = not va
  if va then
    RequestCollisionAtCoord(table.unpack(GetEntityCoords(GetPlayerPed(a), false)))
    NetworkSetInSpectatorMode(true, (GetPlayerPed(a)))
    vb("Spectating " .. GetPlayerName(a), false)
  else
    RequestCollisionAtCoord(table.unpack(GetEntityCoords(GetPlayerPed(a), false)))
    NetworkSetInSpectatorMode(false, (GetPlayerPed(a)))
    vb("Stopped Spectating " .. GetPlayerName(a), false)
  end
end
function RequestControl(a)
  NetworkRequestControlOfEntity(a)
  while not NetworkHasControlOfEntity(a) do
    Citizen.Wait(100)
    if 0 + 100 > 5000 then
      va("Hung for 5 seconds, killing to prevent issues...", true)
    end
  end
end
function getEntity(a)
  return GetEntityPlayerIsFreeAimingAt(a, Citizen.ReturnResultAnyway())
end
function GetInputMode()
  return "MouseAndKeyboard" or "GamePad"
end
function DrawSpecialText(a, b)
  SetTextEntry_2("STRING")
  AddTextComponentString(a)
  DrawSubtitleTimed(b, 1)
end
function EnumeratePeds()
  return va(FindFirstPed, FindNextPed, EndFindPed)
end
function EnumerateVehicles()
  return va(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
function EnumerateObjects()
  return va(FindFirstObject, FindNextObject, EndFindObject)
end
function RotationToDirection(a)
  return vector3(-math.sin(a.z * 0.0174532924) * math.abs(math.cos(a.x * 0.0174532924)), math.cos(a.z * 0.0174532924) * math.abs(math.cos(a.x * 0.0174532924)), math.sin(a.x * 0.0174532924))
end
function OscillateEntity(a, b, c, d, e)
  if a ~= 0 and a ~= nil then
    ApplyForceToEntity(a, 3, (c - b) * (d * d) - 2 * d * e * GetEntityVelocity(a).x, (c - b) * (d * d) - 2 * d * e * GetEntityVelocity(a).y, (c - b) * (d * d) - 2 * d * e * GetEntityVelocity(a).z + 0.1, 0, 0, 0, false, false, true, true, false, true)
  end
end
Citizen.CreateThread(function()
  while va do
    Citizen.Wait(0)
    if vb then
      for fd = 1, 128 do
        if NetworkIsPlayerActive(fd) then
          if vd then
            print("do")
            distance = math.floor(GetDistanceBetweenCoords(table.unpack(GetEntityCoords(PlayerPedId(-1)))))
            if NetworkIsPlayerTalking(fd) then
              DrawText3D(GetPedBoneCoords(GetPlayerPed(fd), 31086, 0, 0, 0).x, GetPedBoneCoords(GetPlayerPed(fd), 31086, 0, 0, 0).y, GetPedBoneCoords(GetPlayerPed(fd), 31086, 0, 0, 0).z + 0.3, "[" .. GetPlayerServerId(fd) .. "] " .. GetPlayerName(fd), vc(1).r, vc(1).g, vc(1).b)
            else
              DrawText3D(GetPedBoneCoords(GetPlayerPed(fd), 31086, 0, 0, 0).x, GetPedBoneCoords(GetPlayerPed(fd), 31086, 0, 0, 0).y, GetPedBoneCoords(GetPlayerPed(fd), 31086, 0, 0, 0).z + 0.3, "[" .. GetPlayerServerId(fd) .. "] " .. GetPlayerName(fd), 255, 255, 255, 0.25)
            end
          end
          if espinfo and vb then
            DrawText3D(table.unpack(GetEntityCoords((GetPlayerPed(fd)))))
          end
          print(espbox)
          if espbox and vb then
            LineOneBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), -0.3, -0.3, -0.9)
            LineOneEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), 0.3, -0.3, -0.9)
            LineTwoBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), 0.3, -0.3, -0.9)
            LineTwoEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), 0.3, 0.3, -0.9)
            LineThreeBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), 0.3, 0.3, -0.9)
            LineThreeEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), -0.3, 0.3, -0.9)
            LineFourBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), -0.3, -0.3, -0.9)
            TLineOneBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), -0.3, -0.3, 0.8)
            TLineOneEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), 0.3, -0.3, 0.8)
            TLineTwoBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), 0.3, -0.3, 0.8)
            TLineTwoEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), 0.3, 0.3, 0.8)
            TLineThreeBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), 0.3, 0.3, 0.8)
            TLineThreeEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), -0.3, 0.3, 0.8)
            TLineFourBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), -0.3, -0.3, 0.8)
            ConnectorOneBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), -0.3, 0.3, 0.8)
            ConnectorOneEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), -0.3, 0.3, -0.9)
            ConnectorTwoBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), 0.3, 0.3, 0.8)
            ConnectorTwoEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), 0.3, 0.3, -0.9)
            ConnectorThreeBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), -0.3, -0.3, 0.8)
            ConnectorThreeEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), -0.3, -0.3, -0.9)
            ConnectorFourBegin = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), 0.3, -0.3, 0.8)
            ConnectorFourEnd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(fd), 0.3, -0.3, -0.9)
            DrawLine(LineOneBegin.x, LineOneBegin.y, LineOneBegin.z, LineOneEnd.x, LineOneEnd.y, LineOneEnd.z, vc(1).r, vc(1).g, vc(1).b, 255)
            DrawLine(LineTwoBegin.x, LineTwoBegin.y, LineTwoBegin.z, LineTwoEnd.x, LineTwoEnd.y, LineTwoEnd.z, vc(1).r, vc(1).g, vc(1).b, 255)
            DrawLine(LineThreeBegin.x, LineThreeBegin.y, LineThreeBegin.z, LineThreeEnd.x, LineThreeEnd.y, LineThreeEnd.z, vc(1).r, vc(1).g, vc(1).b, 255)
            DrawLine(LineThreeEnd.x, LineThreeEnd.y, LineThreeEnd.z, LineFourBegin.x, LineFourBegin.y, LineFourBegin.z, vc(1).r, vc(1).g, vc(1).b, 255)
            DrawLine(TLineOneBegin.x, TLineOneBegin.y, TLineOneBegin.z, TLineOneEnd.x, TLineOneEnd.y, TLineOneEnd.z, vc(1).r, vc(1).g, vc(1).b, 255)
            DrawLine(TLineTwoBegin.x, TLineTwoBegin.y, TLineTwoBegin.z, TLineTwoEnd.x, TLineTwoEnd.y, TLineTwoEnd.z, vc(1).r, vc(1).g, vc(1).b, 255)
            DrawLine(TLineThreeBegin.x, TLineThreeBegin.y, TLineThreeBegin.z, TLineThreeEnd.x, TLineThreeEnd.y, TLineThreeEnd.z, vc(1).r, vc(1).g, vc(1).b, 255)
            DrawLine(TLineThreeEnd.x, TLineThreeEnd.y, TLineThreeEnd.z, TLineFourBegin.x, TLineFourBegin.y, TLineFourBegin.z, vc(1).r, vc(1).g, vc(1).b, 255)
            DrawLine(ConnectorOneBegin.x, ConnectorOneBegin.y, ConnectorOneBegin.z, ConnectorOneEnd.x, ConnectorOneEnd.y, ConnectorOneEnd.z, vc(1).r, vc(1).g, vc(1).b, 255)
            DrawLine(ConnectorTwoBegin.x, ConnectorTwoBegin.y, ConnectorTwoBegin.z, ConnectorTwoEnd.x, ConnectorTwoEnd.y, ConnectorTwoEnd.z, vc(1).r, vc(1).g, vc(1).b, 255)
            DrawLine(ConnectorThreeBegin.x, ConnectorThreeBegin.y, ConnectorThreeBegin.z, ConnectorThreeEnd.x, ConnectorThreeEnd.y, ConnectorThreeEnd.z, vc(1).r, vc(1).g, vc(1).b, 255)
            DrawLine(ConnectorFourBegin.x, ConnectorFourBegin.y, ConnectorFourBegin.z, ConnectorFourEnd.x, ConnectorFourEnd.y, ConnectorFourEnd.z, vc(1).r, vc(1).g, vc(1).b, 255)
            if esplines and vb then
              DrawLine(table.unpack(GetEntityCoords(PlayerPedId(-1))))
            end
          end
        end
      end
    end
    if showCoords then
      x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
      roundx = tonumber(string.format("%.2f", x))
      roundy = tonumber(string.format("%.2f", y))
      roundz = tonumber(string.format("%.2f", z))
      ve("~r~X:~s~ " .. roundx, 0.05, 0)
      ve("~r~Y:~s~ " .. roundy, 0.11, 0)
      ve("~r~Z:~s~ " .. roundz, 0.17, 0)
    end
    if Noclip then
      FreezeEntityPosition(PlayerPedId(-1), true)
      SetEntityInvincible(PlayerPedId(-1), true)
      DisableControlAction(0, 32, true)
      DisableControlAction(0, 268, true)
      DisableControlAction(0, 31, true)
      DisableControlAction(0, 269, true)
      DisableControlAction(0, 33, true)
      DisableControlAction(0, 266, true)
      DisableControlAction(0, 34, true)
      DisableControlAction(0, 30, true)
      DisableControlAction(0, 267, true)
      DisableControlAction(0, 35, true)
      DisableControlAction(0, 44, true)
      DisableControlAction(0, 20, true)
      if GetInputMode() == "MouseAndKeyboard" then
        if IsDisabledControlPressed(0, 32) then
        end
        if IsDisabledControlPressed(0, 33) then
        end
        if IsDisabledControlPressed(0, 34) then
          SetEntityHeading(PlayerPedId(-1), GetEntityHeading(PlayerPedId(-1)) + 3)
        end
        if IsDisabledControlPressed(0, 35) then
          SetEntityHeading(PlayerPedId(-1), GetEntityHeading(PlayerPedId(-1)) - 3)
        end
        if IsDisabledControlPressed(0, 44) then
        end
        if IsDisabledControlPressed(0, 20) then
        end
      end
      SetEntityVelocity(GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1), 0, 0, 0)
      SetEntityRotation(GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1), 0, 0, 0, 0, false)
      SetEntityHeading(GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1), (GetEntityHeading(GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1))))
      SetEntityCollision(GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1), false, false)
      SetEntityCoordsNoOffset(GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1), GetOffsetFromEntityInWorldCoords(GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1), 0, -0.5 * (2 + 0.3), -0.21 * (2 + 0.3)).x, GetOffsetFromEntityInWorldCoords(GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1), 0, -0.5 * (2 + 0.3), -0.21 * (2 + 0.3)).y, GetOffsetFromEntityInWorldCoords(GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1), 0, -0.5 * (2 + 0.3), -0.21 * (2 + 0.3)).z, true, true, true)
      FreezeEntityPosition(GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1), false)
      SetEntityInvincible(GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1), false)
      SetEntityCollision(GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1), true, true)
    end
  end
end)
Citizen.CreateThread(function()
  FreezeEntityPosition(entity, false)
  va.CreateMenu(vb, vc)
  va.CreateSubMenu(vd, vb, ve)
  va.CreateSubMenu(vg, vb, ve)
  va.CreateSubMenu(vh, vb, ve)
  va.CreateSubMenu(vj, vb, ve)
  va.CreateSubMenu(vk, vb, ve)
  va.CreateSubMenu(vl, vk, ve)
  va.CreateSubMenu(vm, vd, ve)
  while vo do
    if va.IsMenuOpened(vb) then
      if va.MenuButton("~h~~p~#~s~ Admin Menu", vd) then
      elseif va.MenuButton("~h~~p~#~s~ Online Players", vk) then
      elseif va.MenuButton("~h~~p~#~s~ Teleport Menu", vg) then
      elseif va.MenuButton("~h~~p~#~s~ Vehicle Menu", vj) then
      elseif va.MenuButton("~h~~p~#~s~ Server Options", vh) then
      else
      end
      repeat
      until va.MenuButton("~p~# ~berrrr Community", vp)
      va.Display()
    elseif va.IsMenuOpened(vd) then
      if va.MenuButton("~h~~p~#~s~ ESP Menu", vm) then
      elseif va.Button("~h~~r~Suicide") then
        SetEntityHealth(PlayerPedId(-1), 0)
      elseif va.Button("~h~~b~Give Armour") then
        SetPedArmour(PlayerPedId(-1), 200)
      else
      end
      repeat
      until va.CheckBox("~h~Noclip", Noclip, function(a)
        Noclip = a
      end)
      va.Display()
    elseif va.IsMenuOpened(vk) then
      for fr = 1, #GetActivePlayers() do
        if va.MenuButton("ID: ~y~[" .. GetPlayerServerId(GetActivePlayers()[fr]) .. "] ~s~" .. GetPlayerName(GetActivePlayers()[fr]) .. " " .. ("~r~DEAD" or "~g~ALIVE"), "PlayerOptionsMenu") then
        end
      end
      va.Display()
    elseif va.IsMenuOpened(vl) then
      va.SetSubTitle(vl, "Player Options [" .. GetPlayerName(GetActivePlayers()[fr]) .. "]")
      if va.Button("~h~Spectate", vn and "~g~[SPECTATING]") then
        SpectatePlayer(GetActivePlayers()[fr])
      elseif va.Button("~h~Teleport To") then
        SetEntityCoords(GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1), GetEntityCoords(GetPlayerPed(GetActivePlayers()[fr])), 0, 0, 0, false)
      elseif va.Button("~h~Teleport To Me") then
        SetEntityCoords(GetPlayerPed(GetActivePlayers()[fr]), GetEntityCoords(GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1)), 0, 0, 0, false)
      elseif va.Button("~r~Ban") then
        TriggerServerEvent("Delta-X:BanPlayer", (GetPlayerServerId((NetworkGetPlayerIndexFromPed(GetPlayerPed(GetActivePlayers()[fr]))))))
      end
      va.Display()
    elseif IsDisabledControlPressed(0, 121) then
      if isAdmin == true then
        TSE("AC:openmenu")
        va.Display()
      elseif va.IsMenuOpened(vg) then
        if va.Button("~h~Teleport to ~g~waypoint") then
          vr()
        else
        end
        repeat
        until va.CheckBox("~h~Show ~g~Coords", showCoords, function(a)
          showCoords = a
        end)
        va.Display()
      elseif va.IsMenuOpened(vj) then
        if va.Button("~h~~r~Delete ~s~Vehicle") then
          if GetVehiclePedIsIn(PlayerPedId(), 0) ~= 0 then
            DeleteGivenVehicle(GetVehiclePedIsIn(PlayerPedId(), 0), 10)
          end
        elseif va.Button("~h~~g~Repair ~s~Vehicle") then
          vs()
        end
      end
      va.Display()
    elseif va.IsMenuOpened(vh) then
      if va.Button("Clean Area", "~g~Vehicles") then
        TSE("AC:cleanareaveh")
      elseif va.Button("Clean Area", "~r~Peds") then
        TSE("AC:cleanareapeds")
      elseif va.Button("Clean Area", "~y~Entity") then
        TSE("AC:cleanareaentity")
      end
      va.Display()
    elseif va.IsMenuOpened(vp) then
      repeat
      until va.Button("~h~discord.gg/JhJ2T7R")
      va.Display()
    elseif va.IsMenuOpened(vm) then
      if va.CheckBox("~h~~r~ESP ~s~MasterSwitch", vt, function(a)
        va = a
      end) then
      elseif va.CheckBox("~h~~r~ESP ~s~Name", vu, function(a)
        va = a
      end) then
      elseif va.CheckBox("~h~~r~ESP ~s~Box", espbox, function(a)
        espbox = a
      end) then
      elseif va.CheckBox("~h~~r~ESP ~s~Info", espinfo, function(a)
        espinfo = a
      end) then
      else
      end
      repeat
      until va.CheckBox("~h~~r~ESP ~s~Lines", esplines, function(a)
        esplines = a
      end)
      va.Display()
    end
    Citizen.Wait(0)
  end
end)
function DeleteGivenVehicle(a, b)
  SetEntityAsMissionEntity(a, true, true)
  DeleteVehicle(a)
  while true do
    if DoesEntityExist(a) and DoesEntityExist(a) and b > 0 then
      DeleteVehicle(a)
      ImpoundVehicle(a)
      repeat
      until not DoesEntityExist(a)
      Citizen.Wait(500)
      if not DoesEntityExist(a) or 0 + 1 == b - 1 then
      end
    else
    end
  end
end
AddEventHandler("AC:cleanareavehy", function()
  for fd in EnumerateVehicles() do
    SetEntityAsMissionEntity(GetVehiclePedIsIn(fd, true), 1, 1)
    DeleteEntity(GetVehiclePedIsIn(fd, true))
    SetEntityAsMissionEntity(fd, 1, 1)
    DeleteEntity(fd)
  end
end)
AddEventHandler("AC:cleanareapedsy", function()
  PedStatus = 0
  for fd in EnumeratePeds() do
    PedStatus = PedStatus + 1
    if not IsPedAPlayer(fd) then
      RemoveAllPedWeapons(fd, true)
      DeleteEntity(fd)
    end
  end
end)
AddEventHandler("AC:cleanareaentityy", function()
  objst = 0
  for fd in EnumerateObjects() do
    objst = objst + 1
    DeleteEntity(fd)
  end
end)
AddEventHandler("AC:openmenuy", function()
  va.OpenMenu(vb)
end)
RegisterNetEvent("sendAcePermissionToClient")
AddEventHandler("sendAcePermissionToClient", function(a)
  print(a)
  isAdmin = a
end)
