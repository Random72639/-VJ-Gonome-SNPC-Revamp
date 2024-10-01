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
ENT.DecalTbl_DeathDecals = {"VJ_Blood_Red"}
ENT.SoundTbl_Idle = {"vj_acid/acid_idle1.wav"}
ENT.SoundTbl_OnCollide = {"physics/body/body_medium_break4.wav"}
ENT.VJ_IsPickupableDanger = true

---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	sound.EmitHint(SOUND_DANGER, self:GetPos() +self:GetVelocity(), self.RadiusDamageRadius, 1, self)
    if not self.BloodEffectAttached then
        ParticleEffectAttach("blood_impact_red_01", PATTACH_ABSORIGIN_FOLLOW, self, 0)
        self.BloodEffectAttached = true
    end
end

function ENT:CustomOnInitialize()
    self:SetKeyValue("rendercolor", "math.random(140,255) 0 0 255")
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

function ENT:DeathEffects(data, phys)
    local pos = self:GetPos()
    util.VJ_SphereDamage(self, self, pos, math.random(150,350), math.random(5,15), DMG_NERVEGAS, true, true)
    ParticleEffect("antliongib", pos, Angle(0, 0, 0), nil)
    local bloodeffect = EffectData()
    bloodeffect:SetOrigin(pos + self:OBBCenter())
    bloodeffect:SetColor(VJ_Color2Byte(Color(math.random(90, 155), math.random(15, 35), math.random(5, 25))))
    bloodeffect:SetScale(100)
    util.Effect("VJ_Blood1", bloodeffect)
    local bloodspray = EffectData()
    bloodspray:SetOrigin(pos + self:OBBCenter())
    bloodspray:SetScale(math.random(5, 10))
    bloodspray:SetFlags(3)
    bloodspray:SetColor(0)
    util.Effect("bloodspray", bloodspray)
    util.Effect("bloodspray", bloodspray) 
    for i = 1, 3 do
        local smallSplat = EffectData()
        smallSplat:SetOrigin(pos + VectorRand() * 15)
        smallSplat:SetScale(math.random(2, 4))
        util.Effect("bloodspray", smallSplat)
    end
    VJ_EmitSound(self, "ambient/levels/canals/toxic_slime_sizzle2.wav", 85, 100)
end
