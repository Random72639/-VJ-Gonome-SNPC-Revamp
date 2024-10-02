AddCSLuaFile("shared.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2012-2021 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/spitball_small.mdl","models/spitball_medium.mdl","models/spitball_medium.mdl"} -- The models it should spawn with | Picks a random one from the table
ENT.DoesRadiusDamage = true -- Should it do a blast damage when it hits something?
ENT.RadiusDamageRadius = 70 -- How far the damage go? The farther away it's from its enemy, the less damage it will do | Counted in world units
ENT.RadiusDamage = 20 -- How much damage should it deal? Remember this is a radius damage, therefore it will do less damage the farther away the entity is from its enemy
ENT.RadiusDamageUseRealisticRadius = true -- Should the damage decrease the farther away the enemy is from the position that the projectile hit?
ENT.RadiusDamageType = DMG_ACID-- Damage type
ENT.DoesDirectDamage = true -- Should it do a direct damage when it hits something?
ENT.DirectDamage = 10 -- How much damage should it do when it hits something
ENT.DirectDamageType = DMG_ACID -- Damage type
ENT.DecalTbl_DeathDecals = {"VJ_AcidSlime1"}
ENT.SoundTbl_Idle = {"vj_acid/acid_idle1.wav"}
ENT.SoundTbl_OnCollide = {"physics/body/body_medium_break4.wav"}
ENT.SoundTbl_Startup = {"weapons/crossbow/bolt_fly4.wav"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
    ParticleEffectAttach("antlion_spit_trail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
    ParticleEffect("antlion_spit", self:GetPos(), Angle(0, 0, 0), nil)
	local SpitSound = VJ_PICK({"gonome/antlion_shoot2.wav","gonome/antlion_shoot1.wav","gonome/antlion_shoot3.wav",})
    VJ_EmitSound(self,SpitSound, 75, 100)
end

function ENT:CustomPhysicsObjectOnInitialize(phys)
	phys:Wake()
	phys:SetBuoyancyRatio(0)
	phys:EnableDrag(false)
	ParticleEffectAttach("antlion_spit_trail",PATTACH_ABSORIGIN_FOLLOW,self,0)
end

function ENT:DeathEffects(data,phys)
util.VJ_SphereDamage(self,self,self:GetPos(),340,10,DMG_NERVEGAS,true,true)
ParticleEffect("antlion_spit",data.HitPos,Angle(0,0,0),nil)
ParticleEffect("antlion_gib_01",data.HitPos,Angle(0,0,0),nil)
ParticleEffect("antlion_gib_02_floaters", data.HitPos, Angle(0,0,0), nil)
ParticleEffect("antlion_gib_01_juice", data.HitPos, Angle(0,0,0), nil)
end