ENT.Base 			= "npc_vj_hale_life_gonome"
ENT.Type 			= "ai"
ENT.PrintName 		= "Smod Gonome"
ENT.Author 			= "Random72638"
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Purpose 		= "Spawn it and fight with it!"
ENT.Instructions 	= "Click on the spawnicon to spawn it."
ENT.Category		= "Half-life"

if (CLIENT) then
local Name = "Smod Gonome"
local LangName = "npc_vj_hale_life_gonome_smod"
language.Add(LangName, Name)
killicon.Add(LangName,"HUD/killicons/default",Color(255,80,0,255))
language.Add("#"..LangName, Name)
killicon.Add("#"..LangName,"HUD/killicons/default",Color(255,80,0,255))
end