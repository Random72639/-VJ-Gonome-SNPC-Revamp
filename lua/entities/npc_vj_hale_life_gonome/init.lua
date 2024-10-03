AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2017 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/1_rnds_gonomes/opfor/gonome.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 500
ENT.HullType = HULL_HUMAN
ENT.VJ_NPC_Class = {"CLASS_ZOMBIE"} -- NPCs with the same class with be allied to each other
ENT.HasDeathRagdoll = true -- If set to false, it will not spawn the regular ragdoll of the SNPC
ENT.HasDeathAnimation = true 
ENT.DeathAnimationChance = 2
ENT.DeathAnimationTime = 1.7
ENT.AnimTbl_Death = {"vjseq_dieforward","vjseq_diebackward","vjseq_diesimple","vjseq_dieheadshot_1","vjseq_dieheadshot_2"}
ENT.AnimTbl_IdleStand = {"ACT_IDLE","Victoryeat1","Idle1","Idle2"}
ENT.AnimTble_Run = {"ACT_RUN","ACT_RUN_2"}
ENT.AnimTble_Walk = {"ACT_WALK"}
ENT.MaxJumpLegalDistance = VJ_Set(1000,1500)
ENT.TimeUntilEnemyLost = 99999999999999999 
ENT.LastSeenEnemyTimeUntilReset = 100-- Time until it resets its enemy if its current enemy is not visible
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.InvestigateSoundDistance = 200 -- How far away can the SNPC hear sounds? | This number is timed by the calculated volume of the detectable sound.
ENT.Immune_AcidPoisonRadiation = true -- Immune to Acid, Poison and Radiation
ENT.GibOnDeathDamagesTable = {"UseDefault"} -- Damages that it gibs from | "UseDefault" = Uses default damage types | "All" = Gib from any damage
ENT.BloodColor = "Yellow" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.FootStepTimeRun = 0.3 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.8 -- Next foot step sound when it is walking
ENT.Immune_AcidPoisonRadiation = true -- Makes the SNPC not get damage from Acid, posion, radiation
ENT.HasBloodParticle = true -- Does it spawn a particle when damaged?
ENT.HasBloodDecal = true -- Does it spawn a decal when damaged?
ENT.HasBloodPool = true -- Does it have a blood pool?
ENT.Bleeds = true -- Does the SNPC bleed? (Blood decal, particle, etc.)
ENT.MeleeAttackBleedEnemy = true -- Should the enemy bleed when attacked by melee?
ENT.MeleeAttackBleedEnemyChance = 3 -- Chance that the enemy bleeds | 1 = always
ENT.MeleeAttackBleedEnemyDamage = 4.5 -- How much damage per repetition
ENT.MeleeAttackBleedEnemyTime = 1 -- How much time until the next repetition?
ENT.MeleeAttackBleedEnemyReps = 5 -- How many repetitions?
ENT.SlowPlayerOnMeleeAttack = true -- If true, then the player will slow down
ENT.SlowPlayerOnMeleeAttack_WalkSpeed = 100 -- Walking Speed when Slow Player is on
ENT.SlowPlayerOnMeleeAttack_RunSpeed = 100 -- Running Speed when Slow Player is on
ENT.SlowPlayerOnMeleeAttackTime = 5 -- How much time until player's Speed resets
ENT.HasMeleeAttackKnockBack = true -- If true, it will cause a knockback to its enemy
ENT.MeleeAttackKnockBack_Forward1 = 70 -- How far it will push you forward | First in math.random
ENT.MeleeAttackKnockBack_Forward2 = 90 -- How far it will push you forward | Second in math.random
ENT.MeleeAttackKnockBack_Up1 = 40 -- How far it will push you up | First in math.random
ENT.MeleeAttackKnockBack_Up2 = 60 -- How far it will push you up | Second in math.random
ENT.MeleeAttackKnockBack_Right1 = math.random(12,30) -- How far it will push you right | First in math.random
ENT.MeleeAttackKnockBack_Right2 = math.random(8,24) -- How far it will push you right | Second in math.random
ENT.HasWorldShakeOnMove = true -- Should the world shake when it's moving?
ENT.MeleeAttackWorldShakeOnMiss = true -- Should it shake the world when it misses during melee attack?
ENT.MeleeAttackWorldShakeOnMissAmplitude = 2 -- How much the screen will shake | From 1 to 16, 1 = really low 16 = really high
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.HasExtraMeleeAttackSounds = true -- Set to true to use the extra melee attack sounds
ENT.HasRangeAttack = true -- Should the SNPC have a range attack?
ENT.AnimTbl_RangeAttack = {"Attack3"} -- Range Attack Animations
ENT.RangeAttackEntityToSpawn = "obj_vj_gonome_spit" -- The entity that is spawned when range attacking
ENT.RangeDistance = 5000 -- This is how far away it can shoot
ENT.RangeToMeleeDistance = 800 -- How close does it have to be until it uses melee?
ENT.RangeUseAttachmentForPos = false -- Should the projectile spawn on a attachment?
ENT.RangeUseAttachmentForPosID = "0" -- The attachment used on the range attack if RangeUseAttachmentForPos is set to true
ENT.TimeUntilRangeAttackProjectileRelease = 1.7 -- How much time until the projectile code is ran?
ENT.NextRangeAttackTime = 5 -- How much time until it can use a range attack?
ENT.NextAnyAttackTime_Range = 5 -- How much time until it can use any attack again? | Counted in Seconds
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.PushProps = true -- Should it push props when trying to move?
ENT.ConstantlyFaceEnemy = true -- Should it face the enemy constantly?
ENT.ConstantlyFaceEnemy_IfAttacking = true -- Should it face the enemy when attacking?
ENT.ConstantlyFaceEnemy_Postures = "Standing" -- "Both" = Moving or standing | "Moving" = Only when moving | "Standing" = Only when standing
ENT.ConstantlyFaceEnemyDistance = 5000 -- How close does it have to be until it starts to face the enemy?
ENT.NoChaseAfterCertainRange = false -- Should the SNPC not be able to chase when it's between number x and y?
ENT.NoChaseAfterCertainRange_FarDistance = "UseRangeDistance" -- How far until it can chase again? | "UseRangeDistance" = Use the number provided by the range attack instead
ENT.NoChaseAfterCertainRange_CloseDistance = "UseRangeDistance" -- How near until it can chase again? | "UseRangeDistance" = Use the number provided by the range attack instead
ENT.NoChaseAfterCertainRange_Type = "OnlyRange" -- "Regular" = Default behavior | "OnlyRange" = Only does it if it's able to range attack
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.ConstantlyFaceEnemy = true -- Should it face the enemy constantly?
ENT.ConstantlyFaceEnemy_Postures = "Moving" -- "Both" = Moving or standing | "Moving" = Only when moving | "Standing" = Only when standing
ENT.ConstantlyFaceEnemyDistance = 500 -- How close does it have to be until it starts to face the enemy?
ENT.HasLeapAttack = false
ENT.LeapAttackDamage = 0
ENT.AnimTbl_LeapAttack = {"vjseq_jump1"} -- Melee Attack Animations
ENT.LeapDistance = 900 -- The distance of the leap, for example if it is set to 500, when the SNPC is 500 Unit away, it will jump
ENT.LeapToMeleeDistance = 800 -- How close does it have to be until it uses melee?
ENT.DisableLeapAttackAnimation = true -- if true, it will disable the animation code
ENT.CanEat = true 
---------------------------------------------------------------------------------------------------------------------------------------------
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 1 -- 1 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchChance = 3 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.AnimTbl_Flinch = {ACT_SMALL_FLINCH} -- If it uses normal based animation, use this
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.CallForHelp = true -- Does the SNPC call for help?
ENT.CallForHelpDistance = 4000 -- -- How far away the SNPC's call for help goes | Counted in World 
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
end

ENT.ElectricGonome = false
ENT.ExtinguishAbility = false
ENT.PoisonGonome = false
function ENT:CustomOnPreInitialize()
    if not IsValid(self) then return end 
    self:SetCollisionBounds(Vector(-10, -10, 0), Vector(10, 10, 70))
    if GetConVarNumber("vj_can_gonomes_have_worldshake") == 1 then
        self.HasWorldShakeOnMove = false
    end
    if math.random(1,3) == 1 then
        self.ExtinguishAbility = true
        print("Extinguish self ability")
    end
	if self.PoisonGonome or self.IsExplosiveGonome then 
	self:ToxicFX()
	end
	if self.IsExplosiveGonome then 
		self.DisableMeleeAttackAnimation = true 
	end
	if self.ElectricGonome then 
		self.HasElectricDeathEffects = true 
		self:HandleEleFX()
		self.MeleeAttackDamageType = bit.bor(DMG_SHOCK,DMG_SLASH)
		self.RangeAttackEntityToSpawn = "obj_gonome_electric_bolt"
		self.SavedMaterials = {
			"models/uboa/aogonome/gonome_body",
			"models/uboa/aogonome/gonome_head",
			"models/uboa/aogonome/gonome_arms"
		}
		for i, material in ipairs(self.SavedMaterials) do
			self:SetSubMaterial(i - 1, material)
		end
	end 
end

function ENT:ToxicFX()
	for i = 1, 6 do
		ParticleEffectAttach("smoke_small_01b", PATTACH_POINT_FOLLOW, self, self:EntIndex())
	end
end


function ENT:CustomOnTakeDamage_BeforeDamage(dmginfo, hitgroup)
    local damageScale = 0.90
    dmginfo:ScaleDamage(damageScale)
    local sparkChance = 11
    if math.random(1, sparkChance) == 1 then
        local sparkSounds = {"ambient/energy/spark1.wav","ambient/energy/spark2.wav","ambient/energy/spark3.wav","ambient/energy/spark5.wav","ambient/energy/spark6.wav"}
        local soundLevel = 80
        local soundPitch = math.random(95, 100)
        VJ_EmitSound(self, sparkSounds, soundLevel, soundPitch)
        local particleOffset = Vector(math.Rand(-5, 5), math.Rand(-5, 5), 48)
        local particlePos = self:GetPos() + self:GetUp() * particleOffset.z + self:GetForward() * particleOffset.x + self:GetRight() * particleOffset.y
        ParticleEffect("electrical_arc_01_parent", particlePos, Angle(0, 0, 0), nil)
        local damageRadius = 200
        local damageAmount = math.random(1,10)
        local damageType = DMG_PLASMA
        util.VJ_SphereDamage(self, self, self:GetPos(), damageRadius, damageAmount, damageType, true, true)
    end
end


function ENT:HandleEleFX()
	if IsValid(self) and self.ElectricGonome then
    self:SetKeyValue("rendercolor", "140 188 234 255")
    self.GlowingBlueLight1 = ents.Create("light_dynamic")
    self.GlowingBlueLight1:SetKeyValue("brightness", tostring(math.Rand(0.8, 1.2))) 
    self.GlowingBlueLight1:SetKeyValue("distance", tostring(math.Rand(225, 275))) 
    self.GlowingBlueLight1:SetPos(self:GetPos()) 
    self.GlowingBlueLight1:SetLocalAngles(self:GetAngles())
    local lightColor1 = string.format("%d %d %d 255", math.random(0, 10), math.random(155, 170), math.random(245, 255)) 
    self.GlowingBlueLight1:Fire("Color", lightColor1)
    self.GlowingBlueLight1:SetParent(self)
    self.GlowingBlueLight1:Spawn()
    self.GlowingBlueLight1:Activate()
    self.GlowingBlueLight1:Fire("SetParentAttachment", self:EntIndex())
    self.GlowingBlueLight1:Fire("TurnOn", "", 0)
    self:DeleteOnRemove(self.GlowingBlueLight1)

    self.GlowingBlueLight2 = ents.Create("light_dynamic")
    self.GlowingBlueLight2:SetKeyValue("brightness", tostring(math.Rand(0.8, 1.2))) 
    self.GlowingBlueLight2:SetKeyValue("distance", tostring(math.Rand(225, 275))) 
    self.GlowingBlueLight2:SetPos(self:GetPos()) 
    self.GlowingBlueLight2:SetLocalAngles(self:GetAngles())
    local lightColor2 = string.format("%d %d %d 255", math.random(0, 10), math.random(155, 170), math.random(245, 255)) 
    self.GlowingBlueLight2:Fire("Color", lightColor2)
    self.GlowingBlueLight2:SetParent(self)
    self.GlowingBlueLight2:Spawn()
    self.GlowingBlueLight2:Activate()
    self.GlowingBlueLight2:Fire("SetParentAttachment", self:EntIndex())
    self.GlowingBlueLight2:Fire("TurnOn", "", 0)
    self:DeleteOnRemove(self.GlowingBlueLight2)
end
end

ENT.HasElectricDeathEffects = false 
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo, hitgroup, GetCorpse)
    if not IsValid(GetCorpse) then return end

	if self.SavedMaterials then
		self.SavedMaterials = {
			"models/uboa/aogonome/gonome_body",
			"models/uboa/aogonome/gonome_head",
			"models/uboa/aogonome/gonome_arms"
		}
		for i, material in ipairs(self.SavedMaterials) do
			self.Corpse:SetSubMaterial(i - 1, material)
		end
	end

    if not self.HasElectricDeathEffects  then return false end
    if math.random(1, 2) == 1 then
        local duration = math.random(3, 15)
        local interval = 0.2 
        local repetitions = duration / interval 
        timer.Create("ElectricityEffects" .. GetCorpse:EntIndex(), interval, repetitions, function()
            if not IsValid(GetCorpse) then return end

            local DeathSparkeffect2 = EffectData()
            DeathSparkeffect2:SetOrigin(GetCorpse:GetPos())
            DeathSparkeffect2:SetStart(GetCorpse:GetPos())
            DeathSparkeffect2:SetMagnitude(math.random(50, 90)) 
            DeathSparkeffect2:SetEntity(GetCorpse)

            local DeathSparkeffect1 = EffectData()
            DeathSparkeffect1:SetOrigin(GetCorpse:GetPos())
            DeathSparkeffect1:SetStart(GetCorpse:GetPos())
            DeathSparkeffect1:SetMagnitude(math.random(5,  15)) 
            DeathSparkeffect1:SetEntity(GetCorpse)

            local DeathSparkeffect = ents.Create("spark_shower")
            DeathSparkeffect:SetAngles(Angle(0, math.random(-180, 180), 0))
            DeathSparkeffect:SetPos(GetCorpse:GetPos())
            DeathSparkeffect:Spawn()
            DeathSparkeffect:Activate()

            util.Effect("teslaHitBoxes", DeathSparkeffect2)
            util.Effect("cball_explode", DeathSparkeffect2)
            util.Effect("ManhackSparks", DeathSparkeffect1)
            util.Effect("ElectricSpark", DeathSparkeffect1)
            util.Effect("StunstickImpact", DeathSparkeffect1)
            GetCorpse:EmitSound("ambient/energy/zap" .. math.random(1, 9) .. ".wav") 
        end)
    end
end

---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RangeAttackCode_GetShootPos(projectile)
    local enemy = self:GetEnemy()
    local tr = util.TraceLine({
        start = enemy:GetPos(),
        endpos = enemy:GetPos() + Vector(0, 0, 800),
        filter = enemy
    })
    local offset = VectorRand() * 40
    if tr.Hit then
        return self:CalculateProjectile("Curve", projectile:GetPos(), enemy:GetPos() + enemy:OBBCenter() + offset, 1525)
    end
    local distanceToEnemy = self:GetPos():Distance(enemy:GetPos())
    local rangeAdjustment = 0
    if distanceToEnemy <= 900 then
        rangeAdjustment = 1400  -- Straight shot for close range
    else
        rangeAdjustment = 1600  -- Longer shot for far range
    end
    return self:CalculateProjectile("Curve", projectile:GetPos(), enemy:GetPos() + offset, rangeAdjustment)
end

function ENT:CustomOnLeapAttackVelocityCode()
    if IsValid(self) then
        self:RemoveAllGestures()
        //self:SetGroundEntity(NULL)
        self:ForceMoveJump(self:CalculateProjectile("Curve", self:GetPos(), self:GetEnemy():GetPos(),math.random(self:GetEnemy():GetPos():Distance(self:GetPos()),900,1500)))
        return true
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.IsMedicSNPC = true 
ENT.AnimTbl_Medic_GiveHealth = {ACT_MELEE_ATTACK1}
ENT.Medic_TimeUntilHeal = 2
ENT.Medic_CheckDistance = 12000
ENT.Medic_HealthAmount = math.random(10,120)
ENT.Medic_HealDistance = math.random(50,100)
ENT.Medic_NextHealTime = VJ_Set(10, 15)
ENT.Medic_DisableAnimation = false
ENT.Medic_CanBeHealed = true 
ENT.Medic_SpawnPropOnHealModel = "models/weapons/w_bugbait.mdl" 
ENT.DisableFootStepSoundTimer = false

ENT.ChestParticleAtt = {"chest"}
function ENT:CustomOnMedic_BeforeHeal(ent)
    if not IsValid(self) then return false end
    local attID = self:LookupAttachment(self.ChestParticleAtt[1]) 
    local ExpulseSound = VJ_PICK({"weapons/bugbait/bugbait_squeeze3.wav","weapons/bugbait/bugbait_squeeze2.wav","weapons/bugbait/bugbait_squeeze1.wav"}) -- VJ.PICK({"weapons/bugbait/bugbait_squeeze3.wav","weapons/bugbait/bugbait_squeeze2.wav","weapons/bugbait/bugbait_squeeze1.wav"})
    VJ_EmitSound(self, ExpulseSound, 75, 100)
    if attID and attID > 0 then
        ParticleEffectAttach("antlion_gib_02_floaters", PATTACH_POINT_FOLLOW, self, attID)
        ParticleEffectAttach("blood_impact_red_01", PATTACH_POINT_FOLLOW, self, attID)
    else
        ParticleEffectAttach("antlion_gib_02_floaters", PATTACH_POINT_FOLLOW, self, self:EntIndex())
        ParticleEffectAttach("blood_impact_red_01", PATTACH_POINT_FOLLOW, self, self:EntIndex())
        if IsValid(ent) then
        ParticleEffectAttach("antlion_gib_02_floaters", PATTACH_POINT_FOLLOW, ent, ent:EntIndex())
        ParticleEffectAttach("blood_impact_red_01", PATTACH_POINT_FOLLOW, ent, ent:EntIndex())
        end
    end
    return true
end

function ENT:CustomOnMedic_OnHeal(ent)
    if not IsValid(self) then return false end 
    local attID = self:LookupAttachment(self.ChestParticleAtt[1]) 
    local ExpulseSound = VJ_PICK({"weapons/bugbait/bugbait_squeeze3.wav","weapons/bugbait/bugbait_squeeze2.wav","weapons/bugbait/bugbait_squeeze1.wav"}) -- VJ.PICK({"weapons/bugbait/bugbait_squeeze3.wav","weapons/bugbait/bugbait_squeeze2.wav","weapons/bugbait/bugbait_squeeze1.wav"})
    VJ_EmitSound(self, ExpulseSound, 75, 100)
    if attID and attID > 0 then
        ParticleEffectAttach("antlion_gib_02_floaters", PATTACH_POINT_FOLLOW, self, attID)
        ParticleEffectAttach("blood_impact_red_01", PATTACH_POINT_FOLLOW, self, attID)
    else
        ParticleEffectAttach("antlion_gib_02_floaters", PATTACH_POINT_FOLLOW, self, self:EntIndex())
        ParticleEffectAttach("blood_impact_red_01", PATTACH_POINT_FOLLOW, self, self:EntIndex())
        if IsValid(ent) then
        ParticleEffectAttach("antlion_gib_02_floaters", PATTACH_POINT_FOLLOW, ent, ent:EntIndex())
        ParticleEffectAttach("blood_impact_red_01", PATTACH_POINT_FOLLOW, ent, ent:EntIndex())
        end
    end
    return true
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDoKilledEnemy(ent, attacker, inflictor)
    if attacker == self && IsValid(self) then
        local healthBonus = math.random(50,125) 
        self:SetHealth(self:Health() + healthBonus)
        local bloodeffect = EffectData()
        bloodeffect:SetOrigin(ent:GetPos() + ent:OBBCenter())
        bloodeffect:SetColor(VJ_Color2Byte(Color(math.random(90,145), math.random(10,25), math.random(5,25))))
        bloodeffect:SetScale(math.random(40,100))
        util.Effect("VJ_Blood1", bloodeffect)
        local bloodspray = EffectData()
        bloodspray:SetOrigin(ent:GetPos() + ent:OBBCenter())
        bloodspray:SetScale(math.random(1,3))
        bloodspray:SetFlags(3)
        bloodspray:SetColor(0)
        util.Effect("bloodspray", bloodspray)
        util.Effect("bloodspray", bloodspray)
    end
    if GetConVarNumber("vj_can_gonomes_dance") == 0 then return false end
    self:VJ_ACT_PLAYACTIVITY("vjseq_sohappy", true, false, false)
end
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.IsExplosiveGonome = false 
function ENT:CustomOnMeleeAttack_BeforeStartTimer()
    if not IsValid(self) or not self.IsExplosiveGonome then return end
    self:VJ_ACT_PLAYACTIVITY("ACT_RANGE_ATTACK1", true, false, false)
    local explosionDelay = 1.5
    timer.Simple(explosionDelay, function()
        if not IsValid(self) then return end
        local dmgInfo = DamageInfo()
        dmgInfo:SetDamage(math.huge) 
        dmgInfo:SetDamageType(DMG_BLAST)
        dmgInfo:SetAttacker(self) 
        dmgInfo:SetInflictor(self) 
        dmgInfo:SetDamagePosition(self:GetPos())
        self:TakeDamageInfo(dmgInfo)
        self.HasDeathRagdoll = false
        self.HasGibOnDeath = true
        self.HasDeathAnimation = false
    end)
end

function ENT:CustomOnMeleeAttack_AfterChecks(v, isProp) 
if GetConVarNumber("vj_can_gonomes_screen_fx") == 1 then return false end 
if v:IsPlayer() then
local pitch = math.random(-100, 100)
local yaw = math.random(-100, 100)
v:ViewPunch(Angle(pitch, yaw, 5))
v:ScreenFade(SCREENFADE.IN,Color(64,0,0),10,0)
end
return false
end

---------------------------------------------------------------------------------------------------------------------------------------------
ENT.MinDmgCap = 8
ENT.HasMinDmgCapAbility = true
ENT.MinDmgCapTriggered = false
function ENT:CustomOnTakeDamage_BeforeDamage(dmginfo,hitgroup)
    local damage = dmginfo:GetDamage()
    if damage <= self.MinDmgCap and self.HasMinDmgCapAbility and math.random(1, 2) == 1 then
        dmginfo:SetDamage(0)
        self.MinDmgCapTriggered = true
        print("Minimum damage cap triggered.")
        timer.Simple(0.1, function()
            if IsValid(self) then 
                self.MinDmgCapTriggered = false
            end
        end)
    end
    local RandomDamageScaling = math.Rand(0.65, 1.0) 
    if not self.MinDmgCapTriggered then
        dmginfo:ScaleDamage(RandomDamageScaling)
        if dmginfo:IsBulletDamage() and 
           (hitgroup == HITGROUP_STOMACH or hitgroup == HITGROUP_RIGHTLEG or 
            hitgroup == HITGROUP_RIGHTARM or hitgroup == HITGROUP_LEFTLEG or 
            hitgroup == HITGROUP_LEFTARM or hitgroup == HITGROUP_CHEST or 
            hitgroup == HITGROUP_GUT or hitgroup == HITGROUP_GEAR) then
            dmginfo:ScaleDamage(0.85)
        end
    end
end

ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDistance = 50 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 100
function ENT:MultipleMeleeAttacks()
local randAttack = math.random(1,2)
if randAttack == 1 then
self.AnimTbl_MeleeAttack = {"Attack2"}
self.TimeUntilMeleeAttackDamage = 0.2
self.MeleeAttackDamage = 15
self.HasExtraMeleeAttackSounds = true
self.MeleeAttackExtraTimers = {0.8,0.8,0.8} 
self.MeleeAttackDamageType = DMG_SLASH
self.SoundTbl_MeleeAttack = {"gonome/gonome_melee1.wav","gonome/gonome_melee2.wav","gonome_pl_fallpain1","gonome/pl_burnpain"}
self.SoundTbl_MeleeAttackMiss = {"snpc/halflife2betaxenians/betazombie/claw_miss1.wav","snpc/halflife2betaxenians/betazombie/claw_miss2.wav","snpc/halflife2betaxenians/betazombie/zombie_swing.wav"}

elseif randAttack == 2 then
self.AnimTbl_MeleeAttack = {"Attack1"}
self.TimeUntilMeleeAttackDamage = 0.2
self.MeleeAttackDamage = 25
self.MeleeAttackExtraTimers = {0.8} 
self.HasExtraMeleeAttackSounds = true
self.SoundTbl_MeleeAttack = {"gonome/gonome_melee1.wav","gonome/gonome_melee2.wav","gonome_pl_fallpain1","gonome/pl_burnpain"}
self.SoundTbl_MeleeAttackMiss = {"snpc/halflife2betaxenians/betazombie/claw_miss1.wav","snpc/halflife2betaxenians/betazombie/claw_miss2.wav","snpc/halflife2betaxenians/betazombie/zombie_swing.wav"}
self.MeleeAttackDamageType = DMG_SLASH
end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnKilled(dmginfo, hitgroup)
    if math.random(1,2) == 1 and IsValid(self) then 
        ParticleEffect("antlion_gib_02_gas",self:GetPos() + self:GetUp()* 10,Angle(0,0,0),nil)
        ParticleEffect("antlion_gib_02_juice",self:GetPos() + self:GetUp()* 10,Angle(0,0,0),nil)
        ParticleEffect("antlion_gib_02_floaters",self:GetPos() + self:GetUp()* 10,Angle(0,0,0),nil)
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAlert(ent)
if self.VJ_IsBeingControlled or self.PlayingAttackAnimation then return false end 
if IsValid(self) && math.random(1,4) == 1 && !self:IsBusy() && !self.Flinching && ent:Visible(self) && !self.MeleeAttacking && !self.RangeAttacking then

            effects.BeamRingPoint(self:GetPos(), 0.3, 2, 100, 15, 0, Color(255, 255, 255), {material = "sprites/physbeama", framerate = 20})
            effects.BeamRingPoint(self:GetPos(), 0.3, 2, 300, 10, 0, Color(255, 255, 255), {material = "sprites/physbeama", framerate = 20})
            effects.BeamRingPoint(self:GetPos(), 0.3, 2, 500, 5, 0, Color(255, 255, 255), {material = "sprites/physbeama", framerate = 20})

            local effectData = EffectData()
            effectData:SetOrigin(self:GetPos())
            effectData:SetScale(400)
            ParticleEffectAttach("blood_impact_antlion_worker_01", PATTACH_POINT_FOLLOW, self, self:EntIndex())
            ParticleEffectAttach("antlion_spit_02", PATTACH_POINT_FOLLOW, self, self:EntIndex())
            ParticleEffectAttach("antlion_gib_02_floaters", PATTACH_POINT_FOLLOW, self, self:EntIndex())
            ParticleEffect("explosion_huge_d",self:GetPos() +self:GetForward()*1,Angle(0,0,0),nil)

            local ExpluseSound = VJ_PICK({"weapons/bugbait/bugbait_squeeze3.wav","weapons/bugbait/bugbait_squeeze2.wav","weapons/bugbait/bugbait_squeeze1.wav"})
            VJ_EmitSound(self,ExpluseSound,85,100)
            self:PlaySoundSystem("Alert")
            
            if math.random(1,3) == 1 then 
                VJ_EmitSound(self, {"call_for_help/order_smoke.wav"}, 100, math.random(100, 100))
            end

            local bloodeffect = EffectData()
            bloodeffect:SetOrigin(self:GetPos() + self:OBBCenter())
            bloodeffect:SetColor(VJ_Color2Byte(Color(130, 19, 10)))
            bloodeffect:SetScale(150)
            util.Effect("VJ_Blood1", bloodeffect)

            local bloodspray = EffectData()
            bloodspray:SetOrigin(self:GetPos() + self:OBBCenter())
            bloodspray:SetScale(5)
            bloodspray:SetFlags(3)
            bloodspray:SetColor(0)
            util.Effect("bloodspray", bloodspray)
            util.Effect("bloodspray", bloodspray)

            util.ScreenShake(self:GetPos(), 12, 7, 5, 1250) 

            if math.random(1,2) == 1 then
	timer.Simple(0.1,function() if IsValid(self) then self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH, true, false, false) end end)
       end
    end
end

function ENT:CustomOnCallForHelp()
if self.VJ_IsBeingControlled or self.IsCrawler or self.IsCrippled or self.IsStrafing or self.PlayingAttackAnimation then return false end 
if IsValid(self) && math.random(1,2) == 1 && !self:IsBusy() && !self.Flinching && !self.MeleeAttacking && !self.RangeAttacking then

            effects.BeamRingPoint(self:GetPos(), 0.3, 2, 100, 15, 0, Color(255, 255, 255), {material = "sprites/physbeama", framerate = 20})
            effects.BeamRingPoint(self:GetPos(), 0.3, 2, 300, 10, 0, Color(255, 255, 255), {material = "sprites/physbeama", framerate = 20})
            effects.BeamRingPoint(self:GetPos(), 0.3, 2, 500, 5, 0, Color(255, 255, 255), {material = "sprites/physbeama", framerate = 20})

            local effectData = EffectData()
            effectData:SetOrigin(self:GetPos())
            effectData:SetScale(400)
            ParticleEffectAttach("blood_impact_antlion_worker_01", PATTACH_POINT_FOLLOW, self, self:EntIndex())
            ParticleEffectAttach("antlion_spit_02", PATTACH_POINT_FOLLOW, self, self:EntIndex())
            ParticleEffectAttach("antlion_gib_02_floaters", PATTACH_POINT_FOLLOW, self, self:EntIndex())

            local ExpluseSound = VJ_PICK({"weapons/bugbait/bugbait_squeeze3.wav","weapons/bugbait/bugbait_squeeze2.wav","weapons/bugbait/bugbait_squeeze1.wav"})
            --local ExpluseSound = VJ.PICK({"weapons/bugbait/bugbait_squeeze3.wav","weapons/bugbait/bugbait_squeeze2.wav","weapons/bugbait/bugbait_squeeze1.wav"})
            VJ_EmitSound(self,ExpluseSound,85,100)
			self:PlaySoundSystem("Alert")

            if math.random(1,3) == 1 then 
            VJ_EmitSound(self, {"call_for_help/order_smoke.wav"}, 100, math.random(100, 100))
            end

            self.CallForHelpDistance = 500000000000

            local bloodeffect = EffectData()
            bloodeffect:SetOrigin(self:GetPos() + self:OBBCenter())
            bloodeffect:SetColor(VJ_Color2Byte(Color(130, 19, 10)))
            bloodeffect:SetScale(150)
            util.Effect("VJ_Blood1", bloodeffect)

            local bloodspray = EffectData()
            bloodspray:SetOrigin(self:GetPos() + self:OBBCenter())
            bloodspray:SetScale(5)
            bloodspray:SetFlags(3)
            bloodspray:SetColor(0)
            util.Effect("bloodspray", bloodspray)
            util.Effect("bloodspray", bloodspray)

            util.ScreenShake(self:GetPos(), 12, 7, 5, 1250) 

            if math.random(1,2) == 1 then
	timer.Simple(0.0,function() if IsValid(self) then self:VJ_ACT_PLAYACTIVITY(ACT_SMALL_FLINCH, true, false, false) end end)
       end
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.CanThrowHC = false 
ENT.NextHCThrowT = 0
ENT.HCThrown = false
ENT.Headcrab1 = nil

function ENT:ThrowHeadcrab()
    if not IsValid(self:GetEnemy()) or not self.CanThrowHC then return end
    if CurTime() <= self.NextHCThrowT then return end
    if not self:IsOnGround() or self:GetPos():Distance(self:GetEnemy():GetPos()) >= 699 then return end
    if IsValid(self.Headcrab1) or self.HCThrown then return end

    self.HCThrown = true
    local ene = self:GetEnemy()

    self:VJ_ACT_PLAYACTIVITY("Attack1", true, 0.8, false)
    VJ_CreateSound(self, "ez2_gonome/slime_zombie_emerge.wav", 100, 100)
    VJ_CreateSound(self, "ez2_gonome/beast_berserk.wav", 100, 100)

    timer.Simple(0.5, function()
        if not IsValid(self) or not IsValid(ene) then return end
        
        local headcrabPos = self:GetPos() + self:GetForward() * math.random(75,250) + self:GetUp() * math.random(2,9)
        local headcrabAng = self:GetAngles() + Angle(0, math.random(0, 360), 0)
        
        local Headcrab1 = ents.Create("npc_vj_thrown_poison_headcrab")
        if not IsValid(Headcrab1) then return end
        
        Headcrab1:SetPos(headcrabPos)
        Headcrab1:SetAngles(headcrabAng)
        Headcrab1:Spawn()
        Headcrab1:SetNoDraw(true)
        Headcrab1.ThrownSpawn = true
        
        local throwDirection = (IsValid(ene) and (ene:GetPos() + ene:OBBCenter() - self:GetPos()):GetNormalized() or self:GetForward())
        local throwVelocity = throwDirection * math.random(400,740) + self:GetUp() * math.random(100,250)
        Headcrab1:SetVelocity(throwVelocity)
        
        Headcrab1:VJ_DoSetEnemy(ene, true)

        if IsValid(self:GetCreator()) then
            undo.Create(self:GetName())
            undo.AddEntity(Headcrab1)
            undo.SetPlayer(self:GetCreator())
            undo.Finish()
        end
        
        timer.Simple(0.3, function()
            if IsValid(Headcrab1) then
                Headcrab1:SetNoDraw(false)
            end
        end)

        self.Headcrab1 = Headcrab1
        self.HCThrown = false
        self.NextHCThrowT = CurTime() + math.random(10, 25) 
    end)
end


ENT.NextFireCheckT = 0
function ENT:CheckFireStatus()
    if not IsValid(self) or self.Dead or self:IsBusy() or not self.ExtinguishAbility then
        return
    end
    if self.NextFireCheckT < CurTime() then
        if self:IsOnFire() then
            self:ExtinguishFire()
            self:PlaySoundSystem("Pain")
        end
        self.NextFireCheckT = CurTime() + math.random(5,10) 
    end
end

function ENT:ExtinguishFire()
    self:StopMoving()
    self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH, true, false, false)
    timer.Simple(math.Rand(0.7,1.2), function()
        if IsValid(self) then
            self:Extinguish()
        end
    end)
end

function ENT:CustomOnThink_AIEnabled()
    if IsValid(self) then
        self:ThrowHeadcrab()
        self:BreakDoorDown()
        self:CheckFireStatus()
        self:IdleElefX()
        self:AllowedToEatGibs()
    end

    if self.VJ_IsBeingControlled then
        self:CustomOnPlyJump()  
    end
end

ENT.AllowedToEatGibs = true 
function ENT:AllowedToEatGibs()
    if not IsValid(self) or self:IsOnFire() or self.MovementType == VJ_MOVETYPE_STATIONARY or self.Medic_Status or self.Flinching or self.IsFollowing or self:GetState() == VJ_STATE_ONLY_ANIMATION or self:IsBusy() or self.Alerted or not self.AllowedToEatGibs then 
        return 
    end

    local maxHealth = self:GetMaxHealth()
    local currentHealth = self:Health()
    local healAmountMin, healAmountMax = 25, 70
    local distThresholdMin, distThresholdMax = 20, 250
    local searchRadius = 1550
    local healAmount = math.random(healAmountMin, healAmountMax)
    local nearbyGibs = ents.FindInSphere(self:GetPos(), searchRadius)

    for _, gib in ipairs(nearbyGibs) do
        if not IsValid(gib) or not gib:GetClass():find("obj_vj_gib") then
            continue
        end
        local dist = self:GetPos():Distance(gib:GetPos())
        if (currentHealth / maxHealth) < 0.99 and not IsValid(self:GetEnemy()) and not self:IsBusy() and dist < distThresholdMax then
            if dist > distThresholdMin then
                self:SetLastPosition(gib:GetPos())
                self:VJ_TASK_GOTO_LASTPOS("TASK_WALK_PATH")
                return
            end
            if dist <= distThresholdMin then
                self:VJ_ACT_PLAYACTIVITY(ACT_MELEE_ATTACK1, true, false, false)
                VJ_EmitSound(self, "wrhf/gibs/fullbodygib-2.wav")
                self:SetHealth(math.Clamp(currentHealth + healAmount, 0, maxHealth))
                local effectData = EffectData()
                effectData:SetOrigin(gib:GetPos() + gib:OBBCenter())
                effectData:SetColor(VJ_Color2Byte(Color(130, 19, 10)))
                effectData:SetScale(math.random(25,75))
                util.Effect("VJ_Blood1", effectData)

                effectData:SetScale(2)
                effectData:SetFlags(3)
                effectData:SetColor(0)
                util.Effect("bloodspray", effectData)
                gib:Remove()
            end
        end
    end
end

function ENT:IdleElefX()
    if math.random(1, 6) == 2 and IsValid(self) and self.ElectricGonome then
        local effectPosOffset = Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(40, 50)) 
        local effectPos = self:GetPos() + effectPosOffset
        local IdleElectricityEffects = EffectData()
        IdleElectricityEffects:SetEntity(self)
        IdleElectricityEffects:SetOrigin(effectPos)
        util.Effect("teslaHitBoxes", IdleElectricityEffects)
        local sparkSounds = {"ambient/energy/spark1.wav","ambient/energy/spark2.wav","ambient/energy/spark3.wav","ambient/energy/spark5.wav","ambient/energy/spark6.wav"}
        local soundVolume = math.random(75, 85) 
        local soundPitch = math.random(95, 105) 
        VJ_EmitSound(self, sparkSounds, soundVolume, soundPitch)
		//VJ.EmitSound(self, sparkSounds, soundVolume, soundPitch)
    end
end

---------------------------------------------------------------------------------------------------------------------------------------------
ENT.NextZomBreakDoorT = 0
function ENT:BreakDoorDown()
    if not IsValid(self) or not self.Alerted or not IsValid(self:GetEnemy()) or self.Flinching or not GetConVar("vj_can_gonomes_break_doors"):GetBool() then
        return
    end

    if VJ_AnimationExists(self, ACT_MELEE_ATTACK1) and CurTime() > self.NextZomBreakDoorT then
        if not IsValid(self.BreakDoor) then
            for _, v in pairs(ents.FindInSphere(self:GetPos(), 70)) do
                if v:GetClass() == "func_door_rotating" and v:Visible(self) then
                    self.BreakDoor = v
                elseif v:GetClass() == "prop_door_rotating" and v:Visible(self) then 
                    local anim = string.lower(v:GetSequenceName(v:GetSequence()))
                    if string.find(anim, "idle") or string.find(anim, "open") then
                        self.BreakDoor = v
                        break
                    end
                end
            end
        else
            if self.PlayingAttackAnimation or not self.BreakDoor:Visible(self) then
                self.BreakDoor = NULL
                return
            end

            if self:GetActivity() ~= ACT_MELEE_ATTACK1 then
                local ang = self:GetAngles()
                self:SetAngles(Angle(ang.x, (self.BreakDoor:GetPos() - self:GetPos()):Angle().y, ang.z))
                self:VJ_ACT_PLAYACTIVITY("ACT_MELEE_ATTACK1", true, false, false)
                VJ_EmitSound(self, self.SoundTbl_CombatIdle, 70, 100)
                -- VJ.EmitSound(self, self.SoundTbl_CombatIdle, 70, 100)
            end

            local door = self.BreakDoor
            local DoorBustSound = VJ_PICK({"wrhf/doorbust1", "wrhf/doorbust2"})
            -- local DoorBustSound = VJ.PICK({"wrhf/doorbust1", "wrhf/doorbust2"})
            self.NextZomBreakDoorT = CurTime() + math.random(1, 3)

            if IsValid(self.BreakDoor) and door:GetClass() == "prop_door_rotating" then
                VJ_CreateSound(self, self.SoundTbl_BeforeMeleeAttack, self.BeforeMeleeAttackSoundLevel, self:VJ_DecideSoundPitch(self.BeforeMeleeAttackSoundPitch.a, self.BeforeMeleeAttackSoundPitch.b))
                VJ_EmitSound(self, DoorBustSound..".wav", 75, 100) 
                VJ_EmitSound(self, self.SoundTbl_CombatIdle, 70, 100)
                door:EmitSound("physics/wood/wood_furniture_break" .. math.random(1, 4) .. ".wav", 70, 100)
                ParticleEffect("strider_impale_ground", door:GetPos(), self:GetAngles(), self)
                ParticleEffect("door_pound_core", door:GetPos(), self:GetAngles(), self)
                ParticleEffect("door_explosion_smoke", door:GetPos(), self:GetAngles(), self)
                ParticleEffect("door_explosion_chunks", door:GetPos(), self:GetAngles(), self)  
                ParticleEffect("advisor_plat_break", door:GetPos(), self:GetAngles(), self)
                door:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
                door:SetSolid(SOLID_NONE)
                self.BrokenDoorProp = ents.Create("prop_physics")
                self.BrokenDoorProp:SetModel(door:GetModel())
                self.BrokenDoorProp:SetPos(door:GetPos())
                self.BrokenDoorProp:SetAngles(door:GetAngles())
                self.BrokenDoorProp:Spawn()
                self.BrokenDoorProp:Activate()
                self.BrokenDoorProp:SetSkin(door:GetSkin())
                self.BrokenDoorProp:GetPhysicsObject():ApplyForceCenter(self:GetForward() * 25000)
                door:Remove()

                timer.Simple(math.Rand(1.7, 2.2), function()
                    if IsValid(self) and not self:IsMoving() then
                        self:PlaySoundSystem("Pain")
                        self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH, true, false, false)
                    end
                end)
            end
        end
    end

    if not IsValid(self.BreakDoor) then
        self:SetState()  
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:RetreatFromEnemy()
    local runDecision = math.random(1, 4)
    self:StopAttacks()
    VJ_EmitSound(self, self.SoundTbl_FleeToCover, 75, 100)

    if runDecision == 1 then
        self:VJ_TASK_COVER_FROM_ORIGIN("TASK_RUN_PATH", function(x)
            x.HasRangeAttack = true
            x.DisableChasingEnemy = false
            x.ConstantlyFaceEnemyVisible = true
            x.HasMeleeAttack = true
        end)
    elseif runDecision == 2 then 
        print("Decision 2")
        self:VJ_TASK_COVER_FROM_ORIGIN("TASK_RUN_PATH", function(x)
            x.HasRangeAttack = true
            x.DisableChasingEnemy = false
            x.ConstantlyFaceEnemyVisible = true
            x.HasMeleeAttack = true
        end)
    end
end

function ENT:CustomOnLeapAttack_AfterChecks(hitEnt)
    local RetreatDelay = math.Rand(5, 12)
    timer.Simple(RetreatDelay, function()
        if IsValid(self) then
            self:RetreatFromEnemy()
        end
    end)
end

function ENT:CustomOnLeapAttack_Miss()
    local retreatDelay = math.Rand(5, 12) 
    timer.Simple(retreatDelay, function()
        if IsValid(self) then
            self:RetreatFromEnemy()
        end
    end)
end

function ENT:CustomOnRangeAttack_AfterStartTimer(seed) 
    local retreatDelay = math.Rand(4, 7) 
    timer.Simple(retreatDelay, function()
        if IsValid(self) then
            self:RetreatFromEnemy()
        end
    end)
end

function ENT:CustomOnRangeAttack_BeforeStartTimer(seed)
    if not IsValid(self) then return false end
    local ParticleDelay = math.Rand(1, 1.3)
    timer.Simple(ParticleDelay, function()
        if IsValid(self) then
            ParticleEffectAttach("antlion_spit_02", PATTACH_POINT_FOLLOW, self, self:EntIndex())
            ParticleEffectAttach("antlion_gib_02_floaters", PATTACH_POINT_FOLLOW, self, self:EntIndex())
            local attachmentID = self:LookupAttachment("hand_right")
            if attachmentID == 0 then
                attachmentID = self:LookupAttachment("0") 
            end

            if attachmentID > 0 then
                ParticleEffectAttach("vomit_barnacle", PATTACH_POINT_FOLLOW, self, attachmentID)
            end
        end
    end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPlyJump()
	if self.VJ_IsBeingControlled then
	if self.VJ_TheController:KeyDown(IN_JUMP) then
	if self:IsOnGround() then
	self:SetVelocity(self:GetUp()*300 + self:GetForward()*500)
	self:VJ_ACT_PLAYACTIVITY("Jump1",true,1,false)
end	
end				
end
end	
	
function ENT:Controller_IntMsg(ply) 
	ply:ChatPrint("JUMP = Press Space Bar")
end
	
function ENT:CustomOnThink()
end
---------------------------------------------------------------------------------------------------------------------------------------------
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_Breath = {"npc/zombie_poison/pz_breathe_loop1.wav","npc/zombie_poison/pz_breathe_loop2.wav"}
ENT.SoundTbl_BeforeMeleeAttack = {"npc/zombie/zo_attack1.wav","npc/zombie/zo_attack2.wav","snpc/halflife2betaxenians/betazombie/zo_attack1.wav","snpc/halflife2betaxenians/betazombie/zo_attack2.wav"}
ENT.SoundTbl_FootStep = {"gonome/gonome_step1.wav","gonome/gonome_step2.wav","gonome/gonome_step3.wav","gonome/gonome_step4.wav","gonome/gonome_run.wav"}
ENT.SoundTbl_Idle = {"npc/zombie/zombie_voice_idle1.wav","npc/zombie/zombie_voice_idle2.wav","npc/zombie/zombie_voice_idle3.wav","npc/zombie/zombie_voice_idle4.wav","npc/zombie/zombie_voice_idle5.wav","npc/zombie/zombie_voice_idle6.wav","npc/zombie/zombie_voice_idle7.wav","npc/zombie/zombie_voice_idle8.wav","npc/zombie/zombie_voice_idle9.wav","npc/zombie/zombie_voice_idle10.wav","npc/zombie/zombie_voice_idle11.wav","npc/zombie/zombie_voice_idle12.wav","npc/zombie/zombie_voice_idle13.wav","npc/zombie/zombie_voice_idle14.wav","gonome/gonome_idle1.wav","gonome/gonome_idle2.wav","gonome/gonome_idle3.wav"}
ENT.SoundTbl_MeleeAttack = {"gonome/gonome_melee1.wav","gonome/gonome_melee2.wav","gonome_pl_fallpain1","gonome/pl_burnpain"}
ENT.SoundTbl_MeleeAttackMiss = {"npc/zombie/claw_miss1.wav","npc/zombie/claw_miss2.wav"}
ENT.SoundTbl_MeleeAttackExtra = {"npc/zombie/claw_strike1.wav","npc/zombie/claw_strike2.wav","npc/zombie/claw_strike3.wav"}
ENT.SoundTbl_Pain = {"npc/zombie/zombie_pain1.wav","npc/zombie/zombie_pain2.wav","npc/zombie/zombie_pain3.wav","npc/zombie/zombie_pain4.wav","npc/zombie/zombie_pain5.wav","npc/zombie/zombie_pain6.wav","gonome/gonome_pain1.wav","gonome/gonome_pain2.wav","gonome/gonome_pain3.wav","gonome/gonome_pain4.wav"}
ENT.SoundTbl_Death = {"gonome/gonome_death2.wav","gonome/gonome_death3.wav","gonome/gonome_death4.wav"}
ENT.SoundTbl_BeforeRangeAttack = {"physics/body/body_medium_break2.wav"}
ENT.SoundTbl_Alert = {"npc/zombie/zombie_alert1.wav","npc/zombie/zombie_alert2.wav","npc/zombie/zombie_alert3.wav"}
---------------------------------------------------------------------------------------------------------------------------------------------

ENT.GibRNG = true
function ENT:SetUpGibesOnDeath(dmginfo, hitgroup)
    if self.GibRNG == false then
        self:PerformGibbing()
        return
    end

    if GetConVarNumber("vj_can_gonomes_be_gibbed") == 0 then return false end
    local GibChance = math.random(1, 3)
    if GibChance == 1 then
        self:PerformGibbing()
    end
end

function ENT:PerformGibbing()

    print("We gib")

    ParticleEffect("antliongib", self:GetPos(), Angle(0, 0, 0), nil)
    ParticleEffect("antliongib", self:GetPos(), Angle(0, 0, 0), nil)
    self.HasDeathRagdoll = false
    self.HasDeathSounds = false
    self.HasPainSounds = false
    self.HasDeathAnimation = false
    self.HasBeenGibbedOnDeath = true

    local bloodeffect = EffectData()
    bloodeffect:SetOrigin(self:GetPos() + self:OBBCenter())
    bloodeffect:SetColor(VJ_Color2Byte(Color(math.random(210, 255), math.random(205, 245), math.random(27, 42))))
    bloodeffect:SetScale(math.random(120, 185))
    util.Effect("VJ_Blood1", bloodeffect)
    local bloodspray = EffectData()
    bloodspray:SetOrigin(self:GetPos() + self:OBBCenter())
    bloodspray:SetScale(math.random(7, 12))
    bloodspray:SetFlags(3)
    bloodspray:SetColor(0)
    util.Effect("bloodspray", bloodspray)
    util.Effect("bloodspray", bloodspray)

    util.ScreenShake(self:GetPos(), 20, 8, 1.5, 1500)
    util.VJ_SphereDamage(self, self, self:GetPos(), math.random(150, 400), math.random(10, 20), DMG_NERVEGAS, true, true)
    local GibSounds = {"gib/fullbodygib-1.wav", "gib/fullbodygib-2.wav", "gib/fullbodygib-3.wav"}
    local SelectedGibSound = VJ_PICK(GibSounds)
    self:EmitSound(SelectedGibSound, 75, 100)
    local gibs = {
        "models/gibs/humans/heart_gib.mdl",
        "models/gibs/humans/liver_gib.mdl",
        "models/gibs/humans/lung_gib.mdl",
        "models/gibs/humans/liver_gib.mdl",
        "models/gibs/humans/lung_gib.mdl",
        "models/gibs/humans/eye_gib.mdl",
        "models/gibs/hgibs.mdl",
        "models/gibs/hgibs_rib.mdl",
        "models/gibs/hgibs_rib.mdl",
        "models/gibs/hgibs_rib.mdl",
        "models/gibs/hgibs_rib.mdl",
        "models/gibs/hgibs_rib.mdl",
        "models/gibs/hgibs_scapula.mdl",
        "models/gibs/hgibs_spine.mdl",
        "models/gibs/xenians/mgib_01.mdl",
        "models/gibs/xenians/mgib_01.mdl",
        "models/gibs/xenians/mgib_01.mdl",
        "models/gibs/xenians/mgib_01.mdl",
        "models/gibs/xenians/mgib_01.mdl",
        "models/gibs/xenians/mgib_01.mdl",
        "models/gibs/xenians/mgib_01.mdl",
        "models/gibs/xenians/mgib_01.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/sgib_03.mdl",
        "models/gibs/xenians/mgib_05.mdl",
        "models/gibs/xenians/mgib_05.mdl",
        "models/gibs/xenians/mgib_05.mdl",
        "models/gibs/xenians/mgib_05.mdl",
        "models/gibs/xenians/mgib_05.mdl",
        "models/gibs/xenians/mgib_05.mdl",
        "models/gibs/xenians/mgib_05.mdl",
        "models/gibs/xenians/mgib_05.mdl",
        "models/gibs/xenians/mgib_05.mdl",
        "models/gibs/xenians/mgib_05.mdl",
        "models/gibs/xenians/mgib_05.mdl",
        "models/gibs/xenians/mgib_04.mdl",
        "models/gibs/xenians/mgib_04.mdl",
        "models/gibs/xenians/mgib_04.mdl",
        "models/gibs/xenians/mgib_04.mdl",
        "models/gibs/xenians/mgib_04.mdl",
        "models/gibs/xenians/mgib_04.mdl",
        "models/gibs/xenians/mgib_04.mdl",
        "models/gibs/xenians/mgib_04.mdl",
        "models/gibs/xenians/mgib_04.mdl",
        "models/gibs/xenians/mgib_04.mdl",
        "models/gibs/xenians/mgib_04.mdl",
        "models/gibs/xenians/mgib_04.mdl",
        "models/gibs/xenians/mgib_04.mdl",
        "models/gibs/xenians/mgib_04.mdl",
        "models/gibs/xenians/mgib_04.mdl",
        "models/gibs/xenians/mgib_02.mdl",
        "models/gibs/xenians/mgib_02.mdl",
        "models/gibs/xenians/mgib_02.mdl",
    }

    for _, gibModel in ipairs(gibs) do
        self:CreateGibEntity("obj_vj_gib", gibModel, {Pos = self:GetPos() + self:OBBCenter()})
    end
end

---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnEat(status, statusInfo)
    if status == "CheckFood" then
        return true 
    elseif status == "BeginEating" then
        VJ_EmitSound(self, "barnacle/bcl_chew2.wav", 65)
        self:SetIdleAnimation({"victoryeat1"}, true, false, false)
        return self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH, true, false)
    elseif status == "Eat" then
        local randomNum = math.random(1, 15)
        if randomNum <= 3 then
            local gibType = "UseHuman_Small"
            if randomNum == 3 then
                gibType = "UseHuman_Big"
            end
            local food = self.EatingData.Ent
            local gibPos = food:GetPos() + food:OBBCenter() + Vector(0, 0, 10) 
            self:CreateGibEntity("obj_vj_gib", gibType, { Pos = gibPos })
            VJ_EmitSound(self, "wrhf/gibs/fullbodygib-3.wav", 100, 100)
        end

        VJ_EmitSound(self, "barnacle/barnacle_crunch3.wav", 65, 100)
        VJ_EmitSound(self, "barnacle/barnacle_crunch2.wav", 55, 100)

        local food = self.EatingData.Ent
        local damage = math.random(65,95)
        local foodHP = food:Health() 
        local newHealth = self:Health() + math.min(damage, foodHP)
        self:SetHealth(newHealth)

        /*if foodHP <= 0 then
            food:Remove() 
        end*/

        local bloodData = food.BloodData
        if bloodData then
            local bloodPos = food:GetPos() + food:OBBCenter()
            local bloodParticle = "blood_zombie_split_spray"
            if bloodParticle then
                ParticleEffect(bloodParticle, bloodPos, self:GetAngles())
            end
        end

        local vomitParticle = "vomit_barnacle_b"
        if vomitParticle then
            if self:LookupAttachment("0") then
                ParticleEffectAttach(vomitParticle, PATTACH_POINT_FOLLOW, self, self:LookupAttachment("0"))
            end
            if self:LookupAttachment("0") then
                ParticleEffectAttach(vomitParticle, PATTACH_POINT_FOLLOW, self, self:LookupAttachment("0"))
            end
        end

        return 2 
    elseif status == "StopEating" then
        if statusInfo ~= "Dead" and self.EatingData.AnimStatus ~= "None" then
            return self:VJ_ACT_PLAYACTIVITY(ACT_BIG_FLINCH, true, false)
        end
    end
    return 0
end
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.FootStepPitch1 = 75
ENT.FootStepPitch2 = 100
ENT.BreathSoundPitch1 = 75
ENT.BreathSoundPitch2 = 100
ENT.IdleSoundPitch1 = "UseGeneralPitch"
ENT.IdleSoundPitch2 = "UseGeneralPitch"
ENT.CombatIdleSoundPitch1 = "UseGeneralPitch"
ENT.CombatIdleSoundPitch2 = "UseGeneralPitch"
ENT.OnReceiveOrderSoundPitch1 = "UseGeneralPitch"
ENT.OnReceiveOrderSoundPitch2 = "UseGeneralPitch"
ENT.FollowPlayerPitch1 = "UseGeneralPitch"
ENT.FollowPlayerPitch2 = "UseGeneralPitch"
ENT.UnFollowPlayerPitch1 = "UseGeneralPitch"
ENT.UnFollowPlayerPitch2 = "UseGeneralPitch"
ENT.BeforeHealSoundPitch1 = "UseGeneralPitch"
ENT.BeforeHealSoundPitch2 = "UseGeneralPitch"
ENT.AfterHealSoundPitch1 = 100
ENT.AfterHealSoundPitch2 = 100
ENT.OnPlayerSightSoundPitch1 = "UseGeneralPitch"
ENT.OnPlayerSightSoundPitch2 = "UseGeneralPitch"
ENT.AlertSoundPitch1 = "UseGeneralPitch"
ENT.AlertSoundPitch2 = "UseGeneralPitch"
ENT.CallForHelpSoundPitch1 = "UseGeneralPitch"
ENT.CallForHelpSoundPitch2 = "UseGeneralPitch"
ENT.BecomeEnemyToPlayerPitch1 = "UseGeneralPitch"
ENT.BecomeEnemyToPlayerPitch2 = "UseGeneralPitch"
ENT.BeforeMeleeAttackSoundPitch1 = "UseGeneralPitch"
ENT.BeforeMeleeAttackSoundPitch2 = "UseGeneralPitch"
ENT.MeleeAttackSoundPitch1 = "UseGeneralPitch"
ENT.MeleeAttackSoundPitch2 = "UseGeneralPitch"
ENT.ExtraMeleeSoundPitch1 = 100
ENT.ExtraMeleeSoundPitch2 = 100
ENT.MeleeAttackMissSoundPitch1 = 100
ENT.MeleeAttackMissSoundPitch2 = 100
ENT.BeforeRangeAttackPitch1 = "UseGeneralPitch"
ENT.BeforeRangeAttackPitch2 = "UseGeneralPitch"
ENT.RangeAttackPitch1 = "UseGeneralPitch"
ENT.RangeAttackPitch2 = "UseGeneralPitch"
ENT.BeforeLeapAttackSoundPitch1 = "UseGeneralPitch"
ENT.BeforeLeapAttackSoundPitch2 = "UseGeneralPitch"
ENT.LeapAttackJumpSoundPitch1 = "UseGeneralPitch"
ENT.LeapAttackJumpSoundPitch2 = "UseGeneralPitch"
ENT.LeapAttackDamageSoundPitch1 = "UseGeneralPitch"
ENT.LeapAttackDamageSoundPitch2 = "UseGeneralPitch"
ENT.LeapAttackDamageMissSoundPitch1 = "UseGeneralPitch"
ENT.LeapAttackDamageMissSoundPitch2 = "UseGeneralPitch"
ENT.OnKilledEnemySoundPitch1 = "UseGeneralPitch"
ENT.OnKilledEnemySoundPitch2 = "UseGeneralPitch"
ENT.PainSoundPitch1 = "UseGeneralPitch"
ENT.PainSoundPitch2 = "UseGeneralPitch"
ENT.ImpactSoundPitch1 = 100
ENT.ImpactSoundPitch2 = 100
ENT.DamageByPlayerPitch1 = "UseGeneralPitch"
ENT.DamageByPlayerPitch2 = "UseGeneralPitch"
ENT.DeathSoundPitch1 = "UseGeneralPitch"
ENT.DeathSoundPitch2 = "UseGeneralPitch"

/*-----------------------------------------------
	*** Copyright (c) 2012-2017 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/