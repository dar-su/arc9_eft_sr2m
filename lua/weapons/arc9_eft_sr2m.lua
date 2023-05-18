AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_smg")
-- SWEP.SubCategory = "_Not for your eyesss"
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_veresk")
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_smg")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = ARC9:GetPhrase("eft_trivia_manuf_tsniitochmash"),
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = ARC9:GetPhrase("eft_trivia_calibr_9x21"),
    [ARC9:GetPhrase("eft_trivia_act") .. "3"] = ARC9:GetPhrase("eft_trivia_act_gas"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_ru"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "2004"
}

SWEP.Description = [[SR-2M "Veresk" is a compact submachine gun designed for a powerful 9x21mm armor-piercing cartridge by order of the FSB and the FSO of the Russian Federation. This submachine gun is part of a high-performance rifle complex designed for special forces. Equipped with a folding foregrip. Developed by TsNIItochmash.]]


-- SWEP.StandardPresets = {}

SWEP.BarrelLength = 17
SWEP.Slot = 2
SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_sr2m.mdl"
SWEP.ViewModelFOVBase = 65
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "00000000000000"


------------------------- [[[           STATS            ]]] -------------------------

--          Damage

SWEP.DamageMax = 49 * 0.5
SWEP.DamageMin = 42.45 * 0.5
SWEP.PhysBulletMuzzleVelocity = 413 /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254 * 1

SWEP.Penetration =      18 *2.54/100/0.0254
SWEP.PenetrationDelta = 44/100
SWEP.ArmorPiercing =    44/100
SWEP.RicochetChance =   20/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    65 * 0.5     },

    {   100 /0.0254 * 1, 
    57.8 * 0.5     },

    {   200 /0.0254 * 1, 
    54.4 * 0.5     },

    {   300 /0.0254 * 1, 
    52 * 0.5     },

    {   400 /0.0254 * 1, 
    50 * 0.5     },

    {   500 /0.0254 * 1, 
    48.44 * 0.5     },

    {   600 /0.0254 * 1, 
    47 * 0.5     },

    {   700 /0.0254 * 1, 
    45.7 * 0.5     },

    {   800 /0.0254 * 1, 
    44.5 * 0.5     },

    {   900 /0.0254 * 1, 
    43.4 * 0.5     },

    {   1000 /0.0254 * 1, 
    42.45 * 0.5     },
}


--          Spread
SWEP.Spread = 0.344 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.03
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015


--          Recoil

SWEP.Recoil = 0.1

SWEP.RecoilMultHipFire = 1.1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilAutoControlMultHipFire = 0.5

SWEP.RecoilUp = 5
SWEP.RecoilSide = 0.7
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.61

SWEP.ViewRecoil = false 
-- SWEP.ViewRecoil = false 
SWEP.ViewRecoilUpMult = 3
SWEP.ViewRecoilUpMultMultHipFire = 2
SWEP.ViewRecoilSideMult = -4
SWEP.ViewRecoilSideMultMultHipFire = -2

SWEP.RecoilDissipationRate = 11
SWEP.RecoilAutoControl = 10
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.15

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoil = 0.2
SWEP.VisualRecoilMultHipFire = 0.1
SWEP.VisualRecoilMultSights = 0.1
SWEP.VisualRecoilMultCrouch = 0.5

SWEP.VisualRecoilCenter = Vector(2, 17, 2)
SWEP.VisualRecoilUp = 200*0.85
SWEP.VisualRecoilSide = 10 
SWEP.VisualRecoilRoll = 33 -- Roll tilt

SWEP.VisualRecoilPunch = 60 -- How far back visual recoil moves the gun
SWEP.VisualRecoilPunchSights = -450 -- How far back visual recoil moves the gun


SWEP.VisualRecoilSpringPunchDamping = 16
SWEP.VisualRecoilDampingConst = 350
SWEP.VisualRecoilSpringMagnitude = 2 / 1.67
SWEP.VisualRecoilPositionBumpUp = -0.05 
SWEP.VisualRecoilPositionBumpUpRTScope = -0.005
SWEP.VisualRecoilPositionBumpUpHipFire = -0.01


SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
    if recamount > 2 then
        recamount = math.Clamp((recamount - 2) / 20, 0, 1)
        return springconstant * math.max(1, 10 * recamount), VisualRecoilSpringMagnitude * 0.65, PUNCH_DAMPING * 0.6
    elseif recamount == 1 then
        return springconstant * 1.25, VisualRecoilSpringMagnitude * 0.75, PUNCH_DAMPING * 1
    end

    return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
end


SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 2 then
        recamount = 1.25 - math.Clamp((recamount - 2) / 5, 0, 1)
        
        local fakerandom = (((69+recamount%5*CurTime()%3)*2420)%4) * (1-recamount) * 0.5
        
        return up * recamount + fakerandom, side * 10, roll, punch * 0.5
    elseif recamount == 1 then
        return up * 1.5, side * 16, roll, punch
    end

    return up, side, roll, punch
end


SWEP.RecoilKick = 0
SWEP.RecoilKickDamping = 10



--          Heating

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = false 
SWEP.MalfunctionMeanShotsToFail = 583*1.5
SWEP.MalfunctionMeanShotsToFailMultHot = -0.2
SWEP.Overheat = true
SWEP.HeatCapacity = 240
SWEP.HeatDissipation = 2.5
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false


--          Firemodes

SWEP.RPM = 950
-- SWEP.Firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, PoseParam = 1 }
}

--          Speed

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.5
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1


--          Other

SWEP.FreeAimRadius = 2
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1
SWEP.SwayMove = 0.5
SWEP.SwayMidAir = 10
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.25
SWEP.HoldBreathTime = 40
SWEP.RestoreBreathTime = 30
SWEP.BreathInSound = false 
SWEP.BreathOutSound = false
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.ogg"

--          Generic stats

SWEP.Ammo = "smg1"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 1 -- actual chamber (no mag)
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 4
SWEP.ReloadInSights = true
SWEP.DropMagazineSounds = {}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.74
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 180, 0)
SWEP.DropMagazineVelocity = Vector(15, 30, 30)
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.28, -7, 1.3),
    Ang = Angle(0, -0.01, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4, -0.27)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, 10, -45)
SWEP.SprintPos = Vector(4, -5, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15.5, 25, 6)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(15.5, -4.28, -5.23)


--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-13, 5.4, -6),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 0.8
SWEP.CamQCA_Mult_ADS = 0.05

SWEP.MuzzleParticle = "muzzleflash_smg"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x21.mdl"
SWEP.ShellScale = 1
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)


SWEP.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
    [5] = "patron_in_mag3",
}

------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/sr2m/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05

SWEP.ShootSound = { path .. "fire_new/sr2m_outdoor_close_loop1.ogg", path .. "fire_new/sr2m_outdoor_close_loop2.ogg", path .. "fire_new/sr2m_outdoor_close_loop3.ogg", path .. "fire_new/sr2m_outdoor_close_loop4.ogg" }
SWEP.LayerSound = path .. "fire_new/sr2m_outdoor_close_loop_tail.ogg"

SWEP.ShootSoundSilenced = { path .. "fire_new/sr2m_outdoor_close_loop_silenced1.ogg", path .. "fire_new/sr2m_outdoor_close_loop_silenced2.ogg", path .. "fire_new/sr2m_outdoor_close_loop_silenced3.ogg", path .. "fire_new/sr2m_outdoor_close_loop_silenced4.ogg" }
SWEP.LayerSoundSilenced = path .. "fire_new/sr2m_outdoor_close_loop_tail.ogg"

SWEP.ShootSoundIndoor = { path .. "fire_new/sr2m_indoor_close_loop1.ogg", path .. "fire_new/sr2m_indoor_close_loop2.ogg", path .. "fire_new/sr2m_indoor_close_loop3.ogg", path .. "fire_new/sr2m_indoor_close_loop4.ogg" }
SWEP.LayerSoundIndoor = path .. "fire_new/sr2m_indoor_close_loop_tail.ogg"

SWEP.ShootSoundSilencedIndoor = { path .. "fire_new/sr2m_indoor_close_loop_silenced1.ogg", path .. "fire_new/sr2m_indoor_close_loop_silenced2.ogg", path .. "fire_new/sr2m_indoor_close_loop_silenced3.ogg", path .. "fire_new/sr2m_indoor_close_loop_silenced4.ogg" }
SWEP.LayerSoundSilencedIndoor = path .. "fire_new/sr2m_indoor_close_loop_silenced_tail.ogg"

SWEP.DistantShootSound = { path .. "fire_new/sr2m_outdoor_distant_loop1.ogg", path .. "fire_new/sr2m_outdoor_distant_loop2.ogg", path .. "fire_new/sr2m_outdoor_distant_loop3.ogg", path .. "fire_new/sr2m_outdoor_distant_loop4.ogg" }
SWEP.DistantShootSoundSilenced = { path .. "fire_new/sr2m_outdoor_distant_loop_silenced1.ogg", path .. "fire_new/sr2m_outdoor_distant_loop_silenced2.ogg", path .. "fire_new/sr2m_outdoor_distant_loop_silenced3.ogg", path .. "fire_new/sr2m_outdoor_distant_loop_silenced4.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "fire_new/sr2m_indoor_distant_loop1.ogg", path .. "fire_new/sr2m_indoor_distant_loop2.ogg", path .. "fire_new/sr2m_indoor_distant_loop3.ogg", path .. "fire_new/sr2m_indoor_distant_loop4.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "fire_new/sr2m_indoor_distant_loop_silenced1.ogg", path .. "fire_new/sr2m_indoor_distant_loop_silenced2.ogg", path .. "fire_new/sr2m_indoor_distant_loop_silenced3.ogg", path .. "fire_new/sr2m_indoor_distant_loop_silenced4.ogg" }


SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = "arc9_eft_shared/weap_in.ogg"
SWEP.ExitSightsSound = "arc9_eft_shared/weap_handoff.ogg"


SWEP.SuppressEmptySuffix = true 

------------------------- [[[           Hooks & functions            ]]] -------------------------



------------------------- [[[           Animations            ]]] -------------------------

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3"
    },
}


SWEP.Hook_TranslateAnimation = function(swep, anim)
        local elements = swep:GetElements()
    
        local ending = ""
    
        -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
        -- local rand = 0
        local nomag = false
    
        if elements["eft_sr2m_mag_20"] then ending = 0
        elseif elements["eft_sr2m_mag_30"] then ending = 1
        else nomag = true end
    
        local empty = swep:Clip1() == 0 and !nomag
        
        -- 0 looking
        -- 1 slide check  (!empty)
        -- 2 mag checking  (!nomag)
        
        if anim == "inspect" or anim == "inspect_empty" then
            swep.EFTInspectnum = swep.EFTInspectnum or 0
            if IsFirstTimePredicted() then
                swep.EFTInspectnum = swep.EFTInspectnum + 1
            end
            local rand = swep.EFTInspectnum
            if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
            if empty and rand == 0 then swep.EFTInspectnum = 1 rand = 1 end
            rand = 2
            if rand == 2 and !nomag then -- mag
                ending = "_mag_" .. ending
                
                if ARC9EFTBASE and SERVER then
                    net.Start("arc9eftmagcheck")
                    net.WriteBool(false) -- accurate or not based on mag type
                    net.WriteUInt(math.min(swep:Clip1(), swep:GetMaxClip1()), 9)
                    net.WriteUInt(swep:GetMaxClip1(), 9)
                    net.Send(swep:GetOwner())
                end
            else
                if nomag and rand == 2 then 
                    if swep:Clip1() == 1 then return "trick" else rand = 0 end end
                ending = rand
            end
            
            return anim .. ending
        elseif anim == "reload" then
            return anim .. (empty and "_empty" or "") .. ending
        end
    
        if anim == "fix" then
            local rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
            
            -- swep.EFTInspectnum = swep.EFTInspectnum or 0
            -- if IsFirstTimePredicted() then
            --     swep.EFTInspectnum = swep.EFTInspectnum + 1
            -- end
            -- local rand = swep.EFTInspectnum
            -- if rand == 5 then swep.EFTInspectnum = 1 rand = 1 end

            if SERVER and ARC9EFTBASE then
                net.Start("arc9eftjam")
                net.WriteUInt(rand, 3)
                net.Send(swep:GetOwner())
            end
    
            return "jam" .. rand
        end
        
        -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
        return anim
    end
    
    local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
    local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
    local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}
    
    local rst_magcheck = {
        { s =  path .. "sr2m_hand_out.ogg", t = 0.1 },
        { s =  path .. "kedr_magrelease_button.wav", t = 0.37 },
        { s =  path .. "sr2m_mag_out.ogg", t = 0.46 },
        { s =  path .. "sr2m_flip_01.ogg", t = 1.86 },
        { s =  path .. "sr2m_mag_in_rattle.ogg", t = 2.03 },
        { s =  path .. "sr2m_mag_in.ogg", t = 2.36 },
        { s =  path .. "sr2m_flip_02.ogg", t = 2.92 },
        { s =  path .. "sr2m_hand_02.ogg", t = 3.04 },
    }
    local rik_magcheck = {
        { t = 0, lhik = 1 },
        { t = 0.15, lhik = 0 },
        { t = 0.85, lhik = 0 },
        { t = 1, lhik = 1 },
    }
    local rik_look = {
        { t = 0, lhik = 1 },
        { t = 0.1, lhik = 0 },
        { t = 0.8, lhik = 0 },
        { t = 1, lhik = 1 },
    }
    local rik_def = {
        { t = 0, lhik = 1 },
        { t = 0.15, lhik = 0 },
        { t = 0.85, lhik = 0 },
        { t = 1, lhik = 1 },
    }
    local rik_empty = {
        { t = 0, lhik = 1 },
        { t = 0.12, lhik = 0 },
        { t = 0.62, lhik = 0 },
        { t = 0.72, lhik = 1 },
        { t = 1, lhik = 1 },
    }
    local rik_ready = {
        { t = 0, lhik = 1 },
        { t = 0.001, lhik = 0 },
        { t = 0.7, lhik = 0 },
        { t = 0.92, lhik = 1 },
        { t = 1, lhik = 1 },
    }

    SWEP.Animations = {
        ["idle"] = {
            Source = "idle",
            RareSource = {"tooidle0", "tooidle1", "tooidle2"},
            RareSourceChance = 0.0001,
            Time = 1000, -- reset when done soundstables!!!!!!!!
        },
    
        ["ready"] = {
            Source = {"ready0", "ready1", "ready2"},
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
                { s = path .. "mp7_glip_on.ogg", t = 0.45 },
                { s = path .. "sr2m_hand_out.ogg", t = 0.69 },
                { s = path .. "sr2m_flip_01.ogg", t = 0.74 },
                { s = path .. "sr2m_slider_out.ogg", t = 1.08 },
                { s = path .. "sr2m_slider_in.ogg", t = 1.24 },
                { s = path .. "sr2m_flip_02.ogg", t = 1.49 },
                { s = path .. "sr2m_hand_02.ogg", t = 1.74 },
            },
            IKTimeLine = rik_ready,
        },
    

        ["draw"] = {
            Source = "draw",
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
                { s = path .. "mp7_glip_on.ogg", t = 0.46 },
                { s = path .. "sr2m_hand_01.ogg", t = 0.79 },
            }
        },

        ["holster"] = {
            Source = "holster",
            EventTable = {
                { s = path .. "sr2m_hand_out.ogg", t = 0.06 },
                { s = path .. "mp7_glip_off.ogg", t = 0.29 },
                { s =  "arc9_eft_shared/weap_out.ogg", t = 0.61 },
            }
        },
    
        ["fire"] = {
            Source = "fire",
            EventTable = { { s = path .. "kedr_trigger_hammer.wav", t = 0 } }
        },

        ["dryfire"] = {
            Source = "fire_dry",
            EventTable = { { s = path .. "kedr_trigger_empty.wav", t = 0 } }
        },

        ["reload"] = {
            Source = "reload_single",
            MinProgress = 0.85,
            FireASAP = true,
            EventTable = {
                { s = path .. "sr2m_hand_out.ogg", t = 0.05 },
                { s = path .. "sr2m_slider_out.ogg", t = 0.46 },
                { s = path .. "sr2m_flip_01.ogg", t = 0.82 },
                { s = path .. "sr2m_hand_out.ogg", t = 0.85 },
                { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 1.17},
                { s = path .. "ak_jam_feedfault_roundaftercharge.ogg", t = 1.84 },
                { s = path .. "sr2m_hand_02.ogg", t = 2.57 },
                { s = path .. "sr2m_slider_in.ogg", t = 2.81 },
                { s = path .. "sr2m_hand_01.ogg", t = 2.81 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.07, lhik = 0 },
                { t = 0.93, lhik = 0 },
                { t = 1, lhik = 1 },
            }
        },
    
        ["reload0"] = {
            Source = "reload0",
            MinProgress = 0.85,
            FireASAP = true,
            EventTable = {
                { s =  path .. "sr2m_hand_out.ogg", t = 0.04 },
                { s =  path .. "kedr_magrelease_button.wav", t = 0.27 },
                { s =  path .. "sr2m_mag_out.ogg", t = 0.29 },
                { s = pouchin, t = 0.91 },
                { s =  path .. "sr2m_flip_02.ogg", t = 0.96 },
                { s = pouchout, t = 1.46 },
                { s =  path .. "sr2m_flip_01.ogg", t = 1.68 },
                { s =  path .. "sr2m_mag_in_rattle.ogg", t = 1.94 },
                { s =  path .. "sr2m_mag_in.ogg", t = 2.25 },
                { s =  path .. "sr2m_hand_02.ogg", t = 2.92 },
                {hide = 0, t = 0},
                {hide = 1, t = 0.9},
                {hide = 0, t = 1.5}
            },
            IKTimeLine = rik_def
        },
        ["reload1"] = {
            Source = "reload1",
            MinProgress = 0.85,
            FireASAP = true,
            EventTable = {
                { s =  path .. "sr2m_hand_out.ogg", t = 0.04 },
                { s =  path .. "kedr_magrelease_button.wav", t = 0.27 },
                { s =  path .. "sr2m_mag_out.ogg", t = 0.29 },
                { s = pouchin, t = 0.91+0.05 },
                { s =  path .. "sr2m_flip_02.ogg", t = 0.96+0.05 },
                { s = pouchout, t = 1.46+0.1 },
                { s =  path .. "sr2m_flip_01.ogg", t = 1.68+0.1 },
                { s =  path .. "sr2m_mag_in_rattle.ogg", t = 1.94+0.1 },
                { s =  path .. "sr2m_mag_in.ogg", t = 2.35+0.0 },
                { s =  path .. "sr2m_hand_02.ogg", t = 2.92+0.1 },
                {hide = 0, t = 0},
                {hide = 1, t = 0.9},
                {hide = 0, t = 1.5+0.1}
            },
            IKTimeLine = rik_def
        },
    
        ["reload_empty0"] = {
            Source = {"reload_empty0_0", "reload_empty0_1"}, 
            MinProgress = 0.85,
            FireASAP = true,
            EventTable = {
                { s =  path .. "sr2m_hand_out.ogg", t = 0.06 },
                { s =  path .. "sr2m_flip_02.ogg", t = 0.07 },
                { s =  path .. "sr2m_flip_01.ogg", t = 0.3 },
                { s =  path .. "kedr_magrelease_button.wav", t = 0.32 },
                { s =  path .. "sr2m_mag_out.ogg", t = 0.36 },
                { s =  path .. "sr2m_flip_02.ogg", t = 0.67 },
                { s = pouchout, t = 0.64 },
                { s = randspin, t = 1.12 },
                { s =  path .. "sr2m_mag_in_rattle.ogg", t = 1.34 },
                { s =  path .. "sr2m_mag_in.ogg", t = 1.62 },
                { s =  path .. "sr2m_flip_01.ogg", t = 2.22 },
                { s = path .. "sr2m_slider_out.ogg", t = 2.56 },
                { s = path .. "sr2m_slider_in.ogg", t = 2.75 },
                { s =  path .. "sr2m_flip_02.ogg", t = 3.11 },
                { s =  path .. "sr2m_hand_02.ogg", t = 3.31 },
                {hide = 0, t = 0},
                {hide = 1, t = 0.74},
                {hide = 0, t = 0.93}
            },
            IKTimeLine = rik_empty
        },
        ["reload_empty1"] = {
            Source = {"reload_empty1_0", "reload_empty1_1"}, 
            MinProgress = 0.85,
            FireASAP = true,
            EventTable = {
                { s =  path .. "sr2m_hand_out.ogg", t = 0.06 },
                { s =  path .. "sr2m_flip_02.ogg", t = 0.07 },
                { s =  path .. "sr2m_flip_01.ogg", t = 0.3 },
                { s =  path .. "kedr_magrelease_button.wav", t = 0.32 },
                { s =  path .. "sr2m_mag_out.ogg", t = 0.36 },
                { s =  path .. "sr2m_flip_02.ogg", t = 0.67 },
                { s = pouchout, t = 0.64 },
                { s = randspin, t = 1.12+0.04 },
                { s =  path .. "sr2m_mag_in_rattle.ogg", t = 1.34+0.04 },
                { s =  path .. "sr2m_mag_in.ogg", t = 1.72+0.04 },
                { s =  path .. "sr2m_flip_01.ogg", t = 2.22+0.04 },
                { s = path .. "sr2m_slider_out.ogg", t = 2.56+0.04 },
                { s = path .. "sr2m_slider_in.ogg", t = 2.75+0.04 },
                { s =  path .. "sr2m_flip_02.ogg", t = 3.11+0.04 },
                { s =  path .. "sr2m_hand_02.ogg", t = 3.31+0.04 },
                {hide = 0, t = 0},
                {hide = 1, t = 0.74},
                {hide = 0, t = 0.9}
            },
            IKTimeLine = rik_empty
        },
    
        ["toggle"] = {
            Source = "mod_switch",
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
        ["switchsights"] = {
            Source = "mod_switch",
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
    
    
    
        
        ["jam1"] = {
            Source = "jam_shell",
            EventTable = {
                { s = path .. "sr2m_flip_01.ogg", t = 0.05 },
                { s = path .. "sr2m_flip_02.ogg", t = 0.87 },
                { s = path .. "sr2m_hand_out.ogg", t = 1.12 },

                { s = path .. "ak_jam_shell_grab.ogg", t = 1.71 },
                { s = path .. "ak_jam_shell_remove.ogg", t = 1.73 },
                { s = path .. "sr2m_hand_02.ogg", t = 2.16 },
                { s = path .. "sr2m_flip_01.ogg", t = 2.22 },
            },
            -- EjectAt = 1.97
        },        
        
        ["jam3"] = {
            Source = "jam_hard",
            EventTable = {
                { s = path .. "sr2m_flip_01.ogg", t = 0.05 },
                { s = path .. "sr2m_flip_02.ogg", t = 0.87 },
                { s = path .. "sr2m_hand_out.ogg", t = 1.12 },

                { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 1.64 },
                { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 2.07 },
                { s = path .. "sr2m_hand_01.ogg", t = 2.28 },
                { s = path .. "ak_jam_stuckbolt_in3.ogg", t = 2.71 },
                { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 3.06 },
                { s = path .. "sr2m_flip_01.ogg", t = 3.46 },
                { s = path .. "sr2m_flip_02.ogg", t = 4.04 },
                { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 4.42 },
                { s = path .. "sr2m_slider_out.ogg", t = 4.88 },
                { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 4.97 },
                { s = path .. "sr2m_slider_in.ogg", t = 5.09 },
                { s = path .. "sr2m_hand_02.ogg", t = 5.42 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.2, lhik = 1 },
                { t = 0.3, lhik = 0 },
                { t = 0.88, lhik = 0 },
                { t = 0.96, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            EjectAt = 4.97
        },      
        
        ["jam2"] = {
            Source = "jam_feed",
            EventTable = {
                { s = path .. "sr2m_flip_01.ogg", t = 0.05 },
                { s = path .. "sr2m_flip_02.ogg", t = 0.87 },
                { s = path .. "sr2m_hand_out.ogg", t = 1.12 },

                { s = path .. "sr2_bolt_check_out.ogg", t = 1.66 },
                { s = randspin, t = 2.03 },
                { s = path .. "sr2m_flip_01.ogg", t = 2.25 },
                { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 2.88 },
                { s = path .. "sr2m_flip_02.ogg", t = 3.25 },
                { s = path .. "sr2m_slider_in.ogg", t = 3.5 },
                { s = path .. "sr2m_hand_02.ogg", t = 3.8 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.23, lhik = 1 },
                { t = 0.35, lhik = 0 },
                { t = 0.87, lhik = 0 },
                { t = 0.98, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            -- EjectAt = 2.52
        },        
        
        ["jam4"] = {
            Source = "jam_soft",
            EventTable = {
                { s = path .. "sr2m_flip_01.ogg", t = 0.05 },
                { s = path .. "sr2m_flip_02.ogg", t = 0.87 },
                { s = path .. "sr2m_hand_out.ogg", t = 1.12 },

                { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 1.8 },
                { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 2.14 },
                { s = path .. "sr2m_hand_01.ogg", t = 2.37 },
                { s = path .. "sr2m_slider_out.ogg", t = 2.67 },
                { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 2.77 },
                { s = path .. "sr2m_slider_in.ogg", t = 2.86 },
                { s = path .. "sr2m_hand_02.ogg", t = 3.17 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.27, lhik = 1 },
                { t = 0.38, lhik = 0 },
                { t = 0.84, lhik = 0 },
                { t = 0.97, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            EjectAt = 2.77
        },
    
        ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
            Source = "idle",
        },
    
        ["inspect1"] = {
            Source = "inspect0",
            EventTable = {
                { s = path .. "sr2m_hand_out.ogg", t = 0.13 },
                { s = path .. "sr2m_flip_01.ogg", t = 0.24 },
                { s = path .. "sr2m_flip_02.ogg", t = 1.6 },
                { s = path .. "sr2m_hand_01.ogg", t = 1.83 },
                { s = randspin, t = 2.98 },
                { s = path .. "sr2m_hand_02.ogg", t = 3.19 },
            },
            IKTimeLine = rik_look
        },
    

        ["inspect_mag_0"] = {
            Source = "inspect1_0",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },
        ["inspect_mag_1"] = {
            Source = "inspect1_1",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },

        ["inspect0"] = {
            Source = "inspect2",
            EventTable = {
                { s = path .. "sr2m_hand_out.ogg", t = 0.05 },
                { s = path .. "sr2m_flip_02.ogg", t = 0.11 },
                { s = path .. "sr2_bolt_check_out.ogg", t = 0.6 },
                { s = path .. "sr2_bolt_check_in.ogg", t = 1.26 },
                { s = path .. "sr2m_flip_01.ogg", t = 1.67 },
                { s = path .. "sr2m_hand_02.ogg", t = 1.91 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.17, lhik = 0 },
                { t = 0.75, lhik = 0 },
                { t = 0.95, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },

        ["firemode_1"] = {
            Source = "firemode0",
            EventTable = { { s = path .. "sr2m_fireselector_down.ogg", t = 0.22 } }
        },
        ["firemode_2"] = {
            Source = "firemode1",
            EventTable = { { s = path .. "sr2m_fireselector_up.ogg", t = 0.02 } }
        },
    

    }

------------------------- [[[           Attachments            ]]] -------------------------

SWEP.AttachmentElements = {
    ["eft_sr2m_hg_std"] = { Bodygroups = { {2, 1} } },
    ["eft_sr2m_hg_blk"] = { Bodygroups = { {2, 2} } },

    ["eft_sr2m_pg_std"] = { Bodygroups = { {3, 1} } },
    ["eft_sr2m_pg_blk"] = { Bodygroups = { {3, 2} } },

    ["eft_sr2m_rec_std"] = { Bodygroups = { {4, 1} } },

    ["eft_sr2m_handstop"] = { Bodygroups = { {5, 1} } },
    ["eft_sr2m_silencer"] = { Bodygroups = { {5, 2} } },

    ["eft_sr2m_stock_std"] = { Bodygroups = { {6, 1} } },
    ["eft_sr2m_stock_std_unfolded"] = { Bodygroups = { {6, 1} } },
    ["eft_sr2m_stock_std_folded"] = { Bodygroups = { {6, 2} } },
    ["eft_sr2m_stock_mp"] = { Bodygroups = { {6, 3} } },
    ["eft_sr2m_stock_mp_unfolded"] = { Bodygroups = { {6, 3} } },
    ["eft_sr2m_stock_mp_folded"] = { Bodygroups = { {6, 4} } },

    ["eft_sr2m_b17"] = { Bodygroups = { {7, 1} } },

    ["eft_ammo_9x21_bt"] = { Skin = 3 },
    ["eft_ammo_9x21_ps"] = { Skin = 0 },
    ["eft_ammo_9x21_p"] = { Skin = 1 },
    ["eft_ammo_9x21_pe"] = { Skin = 2 },
}

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasAmmoooooooo") or 
        !self:GetValue("HasHG") or
        !self:GetValue("HasGrip") then
        if SERVER and self.missingpartsnotifsent < CurTime() then
            self.missingpartsnotifsent = CurTime() + 3
            net.Start("arc9eftmissingparts")
            net.Send(self:GetOwner())
        end
        return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasAmmoooooooo") or 
        !self:GetValue("HasHG") or
        !self:GetValue("HasGrip") then
            return true 
    end
end

SWEP.Attachments = {
    {
        PrintName = "Muzzle",
        Category = "eft_sr2m_muzzle",
        Bone = "mod_muzzle",
        -- Installed = "eft_ash12_muzzle_std",
        Pos = Vector(0, 0.1, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Handguard",
        Category = "eft_sr2m_hg",
        Bone = "mod_reciever",
        Pos = Vector(0, 5, -1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Pistol Grip",
        Category = "eft_sr2m_pg",
        Bone = "mod_reciever",
        Pos = Vector(0, -1, -3),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Dust cover",
        Category = "eft_sr2m_rec",
        Bone = "mod_reciever",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_9x21",
        Bone = "mod_magazine",
        Integral = true,
        -- Installed = "eft_ammo_12755_ps12",
        Pos = Vector(0, -0, -4),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = "eft_mag_sr2m",
        Bone = "mod_magazine",
        -- Installed = "eft_ash12_mag_10",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = "Stock",
        Category = "eft_sr2m_stock",
        Bone = "mod_reciever",
        -- Installed = "eft_ash12_mag_10",
        Pos = Vector(0, -7, -1.5),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_mp7"},
        Bone = "mod_reciever",
        Pos = Vector(0, -5, -4),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

SWEP.EFTErgo = 65
if ARC9EFTBASE then
    SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook or nil
    SWEP.HoldBreathTimeHook = ARC9EFT.ErgoBreathHook or nil
    SWEP.HookP_TranslateSound = ARC9EFT.ErgoAdsVolume or nil
    SWEP.SpreadHook = ARC9EFT.SpreadBonus or nil
else
    print("Dum! install arc9 eft shared!!!!!!!!!!!!!!")
end
SWEP.AimDownSightsTimeMultShooting = 4

SWEP.RicochetSounds = ARC9EFT.RicochetSounds
SWEP.ShellSounds = ARC9EFT.Shells9mm