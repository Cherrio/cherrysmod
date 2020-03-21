DeriveGamemode("sandbox")

GM.Name            = "Cherry's Mod"
GM.Author        = "Cherry :D"
GM.Email        = "NO LOL"
GM.Website        = "www.frostburnt.com"
GM.TeamBased    = false

DEFINE_BASECLASS( "player_default" )

 local PLAYER = {}

 --
 -- See gamemodes/base/player_class/player_default.lua for all overridable variables
 --
 PLAYER.WalkSpeed = 200
 PLAYER.RunSpeed  = 275

 function PLAYER:Loadout()
 	self.Player:Give( "weapon_physcannon" )
  self.Player:Give( "weapon_physgun" )
  self.Player:Give( "gmod_tool" )
  self.Player:Give( "gmod_camera" )

 end

 function PLAYER:SetModel()
  self.Player:SetModel("models/player/charple.mdl")
  self:GetHandsModel()
 end

 function PLAYER:GetHandsModel()
  local playermodel = player_manager.TranslateToPlayerModelName( self.Player:GetModel() )
	return player_manager.TranslatePlayerHands( playermodel )

 end

 player_manager.RegisterClass( "player_custom", PLAYER, "player_default" )
