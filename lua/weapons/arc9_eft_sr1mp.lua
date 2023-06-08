AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_gyurza")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_pist")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = ARC9:GetPhrase("eft_trivia_manuf_tsniitochmash"),
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = ARC9:GetPhrase("eft_trivia_calibr_9x21"),
    [ARC9:GetPhrase("eft_trivia_act") .. "3"]= ARC9:GetPhrase("eft_trivia_act_recoil"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_italy"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "2012"
}

SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

SWEP.Description = [[The SR-1MP pistol (GRAU index - 6P53), also known as "Gyurza" (Viper) or SPS ("Samozaryádnyy Pistolyét Serdyukóva" - Serdyukov Semiautomatic Pistol), was designed by P. Serdyukov and I. Belyaev with the powerful 9x21 cartridge to replace the APS machine pistol used by the special forces of the Russian Federation. This model can be fitted with a set of mounts to attach additional equipment, as well as work as a base for installing a suppressor.]]


SWEP.StandardPresets = {
    "[Tactical 1]XQAAAQDlAAAAAAAAAAA9iIIiM7tuo1AtT00OeFD3X0marJ1ZRQS4GC2Y+o3rtKYuQoE0eE2QXXCoVIYUbjA70tpp4u5T5kUHV+2vt0DZXJ+5s2hwuqPhvof1oCGvj6kr/RcOfjJatuuZEdGUxjleM5R/8vWJrkPpJQiSw6Mpbk0m",
    "[Tactical 2]XQAAAQADAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD3X0marJ1ZRQS4GC2fQM3rtKYuQoE0eE2QXXCoVIYUbjA70tpp4u5T5kUHV+2vt0DZXJOu4xFrIzgbQWmssQjYaLh9VEWv4xSo2op536w/4kIAHugDPK8MCpEWDejCDknIPG+vnqo="
}

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_sr1mp.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
-- SWEP.DefaultBodygroups = "0001110101101"
SWEP.DefaultBodygroups = "00000000000000"
SWEP.BarrelLength = 25

SWEP.RecoilMultHipFire = 1.1
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

-- default pst ghz

SWEP.DamageMax = 49 * 0.5
SWEP.DamageMin = 28.75 * 0.5
SWEP.PhysBulletMuzzleVelocity = 410 /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254 * 1

SWEP.Penetration =      35 *2.54/100/0.0254
SWEP.PenetrationDelta = 46/100
SWEP.ArmorPiercing =    46/100
SWEP.RicochetChance =   40/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    49 * 0.5     },

    {   100 /0.0254 * 1, 
    41.75 * 0.5     },

    {   200 /0.0254 * 1, 
    38.8 * 0.5     },

    {   300 /0.0254 * 1, 
    36.6 * 0.5     },

    {   400 /0.0254 * 1, 
    35 * 0.5     },

    {   500 /0.0254 * 1, 
    33.3 * 0.5     },

    {   600 /0.0254 * 1, 
    32 * 0.5     },

    {   700 /0.0254 * 1, 
    30.1 * 0.5     },

    {   800 /0.0254 * 1, 
    30 * 0.5     },

    {   900 /0.0254 * 1, 
    29.25 * 0.5     },

    {   1000 /0.0254 * 1, 
    28.75 * 0.5     },
}


-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_sr1mp.mdl" -- Set to a string or table to drop this magazine when reloading.
-- SWEP.DropMagazineSounds = {
--     "arc9_eft_shared/weap_magdrop_plastic.ogg"
-- } -- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount = 0 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.55*0.85
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(90, 180, 90)
SWEP.DropMagazineVelocity = Vector(0, 0, 0)

SWEP.Overheat = true
SWEP.HeatCapacity = 100
SWEP.HeatDissipation = 2
SWEP.HeatLockout = false
-------------------------- FIREMODES

SWEP.RPM = 450 -- idk ?
SWEP.Firemodes = { { Mode = 1 } }

-------------------------- RECOIL

SWEP.Recoil = 0.1
SWEP.RecoilCrouchMult = 0.5
SWEP.VisualRecoilCrouchMult = 0.5
SWEP.RecoilUp = 0.1 * 0.85 -- patch 0.13.0.4.22617
SWEP.RecoilSide = 0.015
SWEP.RecoilRandomUp = 0.06
SWEP.RecoilRandomSide = 0.01
SWEP.RecoilDissipationRate = 155
SWEP.RecoilResetTime = 0.05
SWEP.RecoilAutoControl = 5
SWEP.RecoilKick = 0.4

SWEP.ViewRecoil = false 
SWEP.ViewRecoilUpMult = 250
SWEP.ViewRecoilSideMult = 300



SWEP.UseVisualRecoil = true 

SWEP.VisualRecoil = 1.03*0.85*0.85
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilMultCrouch = 0.5

SWEP.VisualRecoilUp = 45 * 0.85* 0.85 -- patch 0.13.0.4.22617
-- SWEP.VisualRecoilUp = 45
SWEP.VisualRecoilSide = 222 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 6 -- Roll tilt for visual recoil.

SWEP.VisualRecoilCenter = Vector(2, 17, 2) -- The "axis" of visual recoil. Where your hand is.

SWEP.VisualRecoilPunch = 1 -- How far back visual recoil moves the gun.
SWEP.VisualRecoilPunchMultSights = 0.5
SWEP.VisualRecoilPositionBumpUp = -0.009

SWEP.VisualRecoilSpringPunchDamping = 7
SWEP.VisualRecoilDampingConst = 650
SWEP.VisualRecoilSpringMagnitude = 2 / 1.67



SWEP.RecoilKick = 0.05 -- Camera recoil
SWEP.RecoilKickDamping = 10 -- Camera recoil damping




-------------------------- SPREAD

SWEP.Spread = 7.563 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.03
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015

-------------------------- HANDLING

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 333*2
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????

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

SWEP.AimDownSightsTime = 0.1 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.35 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

-------------------------- MELEE

SWEP.Bash = false
SWEP.PrimaryBash = false
-------------------------- TRACERS

SWEP.TracerNum = 0 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-4.28, -8, 1.9),
    Ang = Angle(0, 0.08, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-1, 0, 8),
        Ang = Angle(0, 0, -145),
    },
    Magnification = 1.1,
}

SWEP.ViewModelFOVBase = 62

SWEP.ActivePos = Vector(-0.5, -2.5, -.6)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(0, 20.6,  -15.2)
SWEP.SprintPos = Vector(0.5, -5.1, -13.5)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(21.7, 25, 4.5)
SWEP.CustomizeSnapshotFOV = 70
SWEP.CustomizeRotateAnchor = Vector(21.6, -4.28, -5.23)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeNPC = "pistol"

SWEP.HoldTypeCustomize = "physgun"
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER

SWEP.WorldModelOffset = {
    Pos = Vector(-15.5, 5.5, -4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-4, 8, -5), -- rpg
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


-------------------------- RECOIL





-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.

SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x21.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellScale = 1
SWEP.CaseEffectQCA = 2
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 0.3 -- Intensity for QC camera movement.
SWEP.CamQCA_Mult_ADS = 0.05 -- Intensity for QC camera movement in ADS.

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
    [5] = "patron_in_mag3",
    [6] = "patron_in_mag4",
    [7] = "patron_in_mag5",
    [8] = "patron_in_mag6",
    [9] = "patron_in_mag7",
    [10] = "patron_in_mag8",
    [11] = "patron_in_mag9",
    [12] = "patron_in_mag10",
    [13] = "patron_in_mag11",
    [14] = "patron_in_mag12",
    [15] = "patron_in_mag13",
    [16] = "patron_in_mag14",
    [17] = "patron_in_mag15",
    [18] = "patron_in_mag16",
    [19] = "patron_in_mag17"
}

-------------------------- SOUNDS

local path = "weapons/darsu_eft/sr1mp/"
local pathgenericpistol = "weapons/darsu_eft/generic_pistol/"

SWEP.ShootSound = { path .. "gyrza_close1.ogg", path .. "gyrza_close2.ogg" }
SWEP.ShootSoundIndoor = { path .. "gyrza_indoor_close1.ogg", path .. "gyrza_indoor_close2.ogg" }
SWEP.DistantShootSound = { path .. "gyrza_distant1.ogg", path .. "gyrza_distant2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "gyrza_indoor_distant1.ogg", path .. "gyrza_indoor_distant2.ogg" }

SWEP.ShootSoundSilenced = { path .. "gyrza_silenced_close1.ogg", path .. "gyrza_silenced_close2.ogg" }
SWEP.ShootSoundSilencedIndoor = { path .. "gyrza_silenced_indoor_close1.ogg" }
SWEP.DistantShootSoundSilenced = { path .. "gyrza_distant1.ogg", path .. "gyrza_distant2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "gyrza_indoor_silenced_distant1.ogg" }

SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = ""-- we will have own in sound tables

SWEP.DryFireSound = "arc9_eft_shared/weap_trigger_empty.ogg"

SWEP.SuppressEmptySuffix = true 

SWEP.EnterSightsSound = "arc9_eft_shared/weap_in.ogg"
SWEP.ExitSightsSound = "arc9_eft_shared/weap_handoff.ogg"

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["eft_mag_sr1mp_std"] then ending = 0 else nomag = true end

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

        if rand == 2 and !nomag then -- mag
            ending = "_mag_" .. ending
            
            if ARC9EFTBASE and SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(true) -- accurate or not based on mag type
                net.WriteUInt(math.min(swep:GetCapacity()), 9)
                net.WriteUInt(swep:GetMaxClip1(), 9)
                net.Send(swep:GetOwner())
            end
        else
            if nomag then rand = 0 end
            ending = rand
        end

        return anim .. ending
    elseif anim == "reload" then
        return anim .. (empty and "_empty" or "") .. ending
    end

    if anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- rand = 4

        if SERVER and ARC9EFTBASE then
            net.Start("arc9eftjam")
            net.WriteUInt(rand, 3)
            net.Send(swep:GetOwner())
        end

        return "jam" .. rand
    end

    -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
end

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_magcheck = {
    { s = randspin, t = 0.1 },
    { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.32},
    { s =  path .. "fiveseven_mag_out.ogg", t = 0.38 },
    { s =  path .. "fiveseven_mag_rattle2.ogg", t = 1.83 },
    { s =  path .. "fiveseven_mag_rattle3.ogg", t = 2.78 },
    { s =  path .. "fiveseven_mag_in.ogg", t = 2.99 },
    { s = randspin, t = 3.17 },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1000
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s = path .. "gyrza_slide_out.ogg", t = 0.55 },
            { s = path .. "gyrza_slide_in.ogg", t = 0.71 },
        },
    },

    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
        }
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
        }
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
        }
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
        }
    },

    ["fire"] = {
        Source = "fire",
        EventTable = {
            { s = pathgenericpistol .. "pm_trigger_hammer.ogg", t = 0 },
        }
    },
    ["fire_empty"] = {
        Source = "fire_last",
        EventTable = {
            { s = pathgenericpistol .. "pm_catch_slider.ogg", t = 0.05 },
        }
    },
    ["dryfire"] = {
        Source = "fire_dry",
    },
    ["dryfire_empty"] = {
        Source = "fire_dry_empty",
    },

    ["reload"] = {
        Source = "reload_single",
        MinProgress = 0.9,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.4 },
            { s = path .. "gyrza_slide_out.ogg", t = 0.5 },
            { s = randspin, t = 1 },
            { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 1.25},
            { s =  pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 1.79  },
            { s = randspin, t = 2.21 },
            { s =  pathgenericpistol .. "pm_catch_slider.ogg", t = 2.66 },
            { s = randspin, t = 3.05 },
        }
    },

    ["reload0"] = {
        Source = "reload",
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.1 },
            { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.22 }, -- eft devs redarded
            { s =  path .. "fiveseven_mag_out.ogg", t = 0.33 },
            { s = pouchin, t = 1.21 },
            { s = pouchout, t = 1.53 },
            { s =  path .. "fiveseven_mag_rattle3.ogg", t = 1.94 },
            { s =  path .. "fiveseven_mag_in.ogg", t = 2.16 },
            { s = randspin, t = 2.81 },
        }
    },

    ["reload_empty0"] = {
        Source = {"reload_empty0", "reload_empty1", "reload_empty2"}, 
        MinProgress = 0.9,
        Mult = 0.85,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.1 },    
            { s =  pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.35 }, -- eft devs redarded
            { s =  randspin, t = 0.36 },
            { s =  path .. "fiveseven_mag_out.ogg", t = 0.38 },
            { s =  randspin, t = 0.71 },
            { s = pouchout, t = 0.94 },
            { s =  path .. "fiveseven_mag_rattle3.ogg", t = 1.52 },
            { s =  path .. "fiveseven_mag_in.ogg", t = 1.93 },
            { s =  pathgenericpistol .. "pm_catch_slider.ogg", t = 2.17 },
            { s = randspin, t = 2.24 },
            { s = randspin, t = 2.54 },
            {hide = 0, t = 0},
            {hide = 1, t = 0.55},
            {hide = 0, t = 1.15}
        }
    },

    ["toggle"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["toggle_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },



    
    ["jam1"] = {
        Source = "jam_shell",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.2 },

            { s = slidelockgrab, t = 1.65 },
            { s = randspin, t = 1.92 },
            { s = randspin, t = 2.41 },
            { s =  pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 2.44  },
            { s = path .. "gyrza_slide_in_check.ogg", t = 2.79 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hardjam",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.2 },

            { s = slidelockgrab, t = 1.5 },
            { s = slidelockgrab, t = 1.75 },
            { s = slidelockgrab, t = 2.02 },
            { s = slidelockgrab, t = 2.45 },
            { s = randspin, t = 2.78 },
            { s =  path .. "gyrza_slide_in.ogg", t = 3.63 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 3.72 },
            { s =  path .. "gyrza_slide_out.ogg", t = 3.87 },
            { s = randspin, t = 4.23 },
        },
        EjectAt = 3.72
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.2 },

            { s = slidelockgrab, t = 1.61 },
            { s =  path .. "gyrza_slide_in.ogg", t = 2.14 },
            { s = randspin, t = 2.42 },
            { s = randspin, t = 2.85 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.88 },
            { s = randspin, t = 3.23 },
            { s =  path .. "gyrza_slide_out.ogg", t = 3.51 },
            { s = randspin, t = 3.85 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_softjam",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.2 },
            
            { s = slidelockgrab, t = 1.6 },
            { s =  path .. "gyrza_slide_in.ogg", t = 2.08 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.2 },
            { s =  path .. "gyrza_slide_out.ogg", t = 2.33 },
            { s = randspin, t = 2.61 },
        },
        EjectAt = 2.2
    },

    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },
    ["inspect_empty"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle_empty",
    },

    ["inspect1"] = {
        Source = "inspect",
        EventTable = {
            { s = randspin, t = 0.11 },
            { s = randspin, t = 1.57 },
            { s = randspin, t = 2.87 },
        }
    },

    ["inspect_empty"] = {
        Source = "inspect_empty",
        EventTable = {
            { s = randspin, t = 0.11 },
            { s = randspin, t = 1.57 },
            { s = randspin, t = 2.87 },
        }
    },

    ["inspect_mag_0"] = {
        Source = "magcheck",
        EventTable = rst_magcheck,
    },
    ["inspect_empty_mag_0"] = {
        Source = "magcheck_empty",
        EventTable = rst_magcheck,
    },

    ["inspect0"] = {
        Source = "checkchamber",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = path .. "gyrza_slide_out_check.ogg", t = 0.55 },
            { s = path .. "gyrza_slide_in_check.ogg", t = 1.13 },
            { s = randspin, t = 1.4 },
        }
    },
}

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
        "patron_in_mag4",
        "patron_in_mag5",
        "patron_in_mag6",
        "patron_in_mag7",
        "patron_in_mag8",
        "patron_in_mag9",
        "patron_in_mag10",
        "patron_in_mag11",
        "patron_in_mag12",
        "patron_in_mag13",
        "patron_in_mag14",
        "patron_in_mag15",
        "patron_in_mag16",
        "patron_in_mag17",
    },
}


-------------------------- ATTACHMENTS

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasAmmoooooooo") then
            if SERVER and self.missingpartsnotifsent < CurTime() then
                self.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end
            return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasAmmoooooooo") then
            return true 
    end
end

SWEP.AttachmentElements = {
    ["eft_mag_sr1mp_std"]    = { Bodygroups = { {1, 1} } },
    ["eft_mount_sr1mp_1x"]    = { Bodygroups = { {2, 1} } },
    ["eft_mount_sr1mp_4x"]    = { Bodygroups = { {2, 2} } },
    ["eft_mount_sr1mp_sil"]    = { Bodygroups = { {3, 1} } },
    ["eft_silencer_sr1mp"]    = { Bodygroups = { {4, 1} } },

    ["eft_ammo_9x21_bt"] = { Skin = 3 },
    ["eft_ammo_9x21_ps"] = { Skin = 0 },
    ["eft_ammo_9x21_p"] = { Skin = 1 },
    ["eft_ammo_9x21_pe"] = { Skin = 2 },
}

SWEP.Attachments = { 
    {
        PrintName = "Tactical",
        Bone = "weapon",
        Category = {"eft_mount_sr1mp"},
        Pos = Vector(0, 23.3, -0.3),
        Ang = Angle(0, -90, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = "eft_sr1mp_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -1.5),
        Installed = "eft_mag_sr1mp_std"
    },   
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_9x21",
        Bone = "mod_magazine",
        Integral = true,
        Installed = "eft_ammo_9x21_p",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.85, 0, -3),
    },
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_sr1mp"},

        Bone = "weapon",
        Pos = Vector(0, 16, -1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        CosmeticOnly = false,
    },
}

SWEP.EFTErgo = 82
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