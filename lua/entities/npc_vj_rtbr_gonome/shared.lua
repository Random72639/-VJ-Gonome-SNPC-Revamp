ENT.Base 			= "npc_vj_ez2_gonome"
ENT.Type 			= "ai"
ENT.PrintName 		= "RTBR Gonome"
ENT.Author 			= "Random72638"
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Purpose 		= "Spawn it and fight with it!"
ENT.Instructions 	= "Click on the spawnicon to spawn it."
ENT.Category		= "Half-life"

if (CLIENT) then
local Name = "RTBR Gonome"
local LangName = "npc_vj_rtbr_gonome"
language.Add(LangName, Name)
killicon.Add(LangName,"HUD/killicons/default",Color(255,80,0,255))
language.Add("#"..LangName, Name)
killicon.Add("#"..LangName,"HUD/killicons/default",Color(255,80,0,255))
end