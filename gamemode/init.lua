AddCSLuaFile( "cl_init.lua" ) --Tell the server that the client needs to download cl_init.lua
AddCSLuaFile( "shared.lua" ) --Tell the server that the client needs to download shared.lua

include( 'shared.lua' ) --Tell the server to load shared.lua

function GM:PlayerSpawn(ply)
  player_manager.SetPlayerClass(ply , "player_custom")
  player_manager.OnPlayerSpawn(ply)
  player_manager.RunClass(ply, "Spawn")
  ply:SetupHands()
  hook.Call("PlayerLoadout", GAMEMODE, ply)
  hook.Call("PlayerSetModel", GAMEMODE, ply)


end
