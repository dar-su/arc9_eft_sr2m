local ATT = {}

local dmgrange = (GetConVar("arc9_eft_mindmgrange"):GetInt() or 1000)/1000
local mult9 = GetConVar("arc9_eft_mult_pistol"):GetFloat() or 0.5

///////////////////////////////////////      eft_sr2m_handstop


ATT = {}

ATT.PrintName = "SR-2M 9x21 hand stopper"
ATT.CompactName = "SR-2M"
ATT.Icon = Material("entities/eft_sr2m_attachments/hs.png", "mips smooth")
ATT.Description = [[A hand stopper for the barrel of the SR-2M "Veresk" 9x21 submachine gun. Manufactured by TsNIItochmash. Protects the shooter's hand from moving forward and getting possible burns by powder gases.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_sr2m_muzzle"}

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }

ARC9.LoadAttachment(ATT, "eft_sr2m_handstop")


///////////////////////////////////////      eft_sr2m_silencer


ATT = {}

ATT.PrintName = "SR-2M 9x21 sound suppressor (SV-1381)"
ATT.CompactName = "SV-1381"
ATT.Icon = Material("entities/eft_sr2m_attachments/s.png", "mips smooth")
ATT.Description = [[A silencer for the SR-2M "Veresk" 9x21 submachine gun, manufactured by TsNIItochmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -14
ATT.CustomCons = { Ergonomics = "-14" }
ATT.RecoilMult = 0.91
ATT.VisualRecoilMult = 0.91
ATT.PhysBulletMuzzleVelocityMult = 1.01
ATT.HeatCapacityMult = 0.82
ATT.SpreadMult = 0.99

ATT.Silencer = true 
ATT.BarrelLengthAdd = 5

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true

ATT.Category = {"eft_sr2m_muzzle"}

ARC9.LoadAttachment(ATT, "eft_sr2m_silencer")


///////////////////////////////////////      eft_sr2m_hg_std

ATT = {}

ATT.PrintName = "SR-2M polymer handguard"
ATT.CompactName = "SR-2M"
ATT.Icon = Material("entities/eft_sr2m_attachments/hg.png", "mips smooth")
ATT.Description = [[A standard-issue SR-2M "Veresk" polymer handguard for burn protection. Manufactured by TsNIItochmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_sr2m_hg"}

ATT.HasHG = true

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.Attachments = {
    {
        PrintName = "R Mount",
        Category = "eft_sr2m_rail",
        Pos = Vector(0.75, 0.0, 0.4),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "L Mount",
        Category = "eft_sr2m_rail",
        Pos = Vector(-0.75, 0.0, 0.4),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_hg_std")

///////////////////////////////////////      eft_sr2m_pg_std

ATT = {}

ATT.PrintName = "SR-2M pistol grip"
ATT.CompactName = "SR-2M"
ATT.Icon = Material("entities/eft_sr2m_attachments/pg.png", "mips smooth")
ATT.Description = [[A standard-issue pistol grip for SR-2M "Veresk". Manufactured by TsNIItochmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_sr2m_pg"}

ATT.HasGrip = true

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ARC9.LoadAttachment(ATT, "eft_sr2m_pg_std")

///////////////////////////////////////      eft_sr2m_hg_blk

ATT = {}

ATT.PrintName = "SR-2M polymer handguard (Black)"
ATT.CompactName = "SR-2M (B)"
ATT.Icon = Material("entities/eft_sr2m_attachments/hgb.png", "mips smooth")
ATT.Description = [[A standard-issue SR-2M "Veresk" polymer handguard for burn protection. Manufactured by TsNIItochmash.

Black version.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_sr2m_hg"}

ATT.HasHG = true

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.Attachments = {
    {
        PrintName = "R Mount",
        Category = "eft_sr2m_rail",
        Pos = Vector(0.75, 0.0, 0.4),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "L Mount",
        Category = "eft_sr2m_rail",
        Pos = Vector(-0.75, 0.0, 0.4),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_hg_blk")

///////////////////////////////////////      eft_sr2m_pg_blk

ATT = {}

ATT.PrintName = "SR-2M pistol grip (Black)"
ATT.CompactName = "SR-2M (B)"
ATT.Icon = Material("entities/eft_sr2m_attachments/pgb.png", "mips smooth")
ATT.Description = [[A standard-issue pistol grip for SR-2M "Veresk". Manufactured by TsNIItochmash.

Black version.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_sr2m_pg"}

ATT.HasGrip = true

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ARC9.LoadAttachment(ATT, "eft_sr2m_pg_blk")


///////////////////////////////////////      eft_sr2m_rail_big

ATT = {}

ATT.PrintName = "SR-2M side rail"
ATT.CompactName = "SR-2M"
ATT.Icon = Material("entities/eft_sr2m_attachments/side.png", "mips smooth")
ATT.Description = [[A side rail for SR-2M "Veresk" that allows installation of additional tactical equipment.]]

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mount_sr2m_tochmash_med_rail.mdl"

ATT.Category = {"eft_sr2m_rail"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ModelOffset = Vector(0, 0, 0)

ATT.Attachments = {
    {
        PrintName = "Tactical",
        Category = "eft_tactical",
        -- RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(-0.4, -0.36, 0),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_rail_big")

///////////////////////////////////////      eft_sr2m_rail_short

ATT = {}

ATT.PrintName = "SR-2M short side rail"
ATT.CompactName = "SR-2M short."
ATT.Icon = Material("entities/eft_sr2m_attachments/sides.png", "mips smooth")
ATT.Description = [[A short side rail for SR-2M "Veresk" that allows installation of additional tactical equipment.]]

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mount_sr2m_tochmash_short_rail.mdl"

ATT.Category = {"eft_sr2m_rail"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ModelOffset = Vector(0, 0, 0)

ATT.Attachments = {
    {
        PrintName = "Tactical",
        Category = "eft_tactical",
        -- RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(-0.3, -0.32, 0),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_rail_short")

///////////////////////////////////////      eft_sr2m_rec_std

ATT = {}

ATT.PrintName = "SR-2M dust cover"
ATT.CompactName = "SR-2M"
ATT.Icon = Material("entities/eft_sr2m_attachments/dc.png", "mips smooth")
ATT.Description = [[A standard-issue dust cover for SR-2M "Veresk" submachine gun, manufactured by TsNIItochmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_sr2m_rec"}

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.Attachments = {
    {
        PrintName = "Mount",
        Category = {"eft_sr2m_mount"},
        Pos = Vector(2.1+0.52, 0, -0.3+0.1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_rec_std")

///////////////////////////////////////      eft_sr2m_b17

ATT = {}

ATT.PrintName = "SR-2M Zenit B-17 mount"
ATT.CompactName = "B-17"
ATT.Icon = Material("entities/eft_sr2m_attachments/b17.png", "mips smooth")
ATT.Description = [[The B-17 mount is designed to switch from SR-2M's Dovetail top rail standard to Picatinny rail. Manufactured by Zenit.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_sr2m_mount"}

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_large_nosniper", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(-0.4, 0, -0.4),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_b17")

///////////////////////////////////////      eft_sr2m_optic


ATT = {}

ATT.PrintName = "SR-2M KP-SR2 reflex sight"
ATT.CompactName = "KP-SR2"
ATT.Icon = Material("entities/eft_sr2m_attachments/opt.png", "mips smooth")
ATT.Description = [[The KP-SR2 reflex sight is designed to increase the efficiency of firing SR-2M "Veresk" submachine gun. The sight facilitates the process of aiming a weapon at a target, especially in low light conditions, and allows you to increase combat efficiency. Manufactured by TsNIItochmash.]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/arc9/darsu_eft/mods/scope_sr2m_tochmash_kp.mdl"

ATT.Category = {"eft_sr2m_mount"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }

ATT.FoldSights = true

ATT.Sights = {
    {
        Pos = Vector(0, 7.5, -1.45),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ViewModelFOV = 53
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("vgui/arc9_eft_shared/reticles/new/scope_sr2m_tochmash_kp_sr2_marks.png", "mips smooth")
ATT.HoloSightReticle:SetInt("$flags", bit.bor(ATT.HoloSightReticle:GetInt("$flags"), 128)) -- additive
ATT.HoloSightReticle:SetVector("$color2", Vector(5, 0.75, 0.75)) -- bright color
ATT.HoloSightSize = 510
ATT.HoloSightColorable = false

ATT.Attachments = {
    {
        PrintName = "Shade",
        Category = {"eft_sr2m_optic_aux"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(3, 0, 1.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_optic")

///////////////////////////////////////      eft_sr2m_optic_shade

ATT = {}

ATT.PrintName = "KP-SR2 sight shade"
ATT.CompactName = "KP-SR2"
ATT.Icon = Material("entities/eft_sr2m_attachments/sh.png", "mips smooth")
ATT.Description = [[A sight shade for the KP-SR2 reflex sight. Protects the lens against mechanical impacts and suppresses flaring. Manufactured by TsNIItochmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/tactical_sr2_killflash.mdl"

ATT.Category = {"eft_sr2m_optic_aux"}

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ARC9.LoadAttachment(ATT, "eft_sr2m_optic_shade")

///////////////////////////////////////      eft_sr2m_stock_std


ATT = {}

ATT.PrintName = "SR-2M folding stock"
ATT.CompactName = "SR-2M"
ATT.Icon = Material("entities/eft_sr2m_attachments/st.png", "mips smooth")
ATT.Description = [[A folding stock for SR-2M submachine gun, manufactured by TsNIItochmash. The buttstock has a spring-loaded butt plate which reduces the time it takes to shoulder the weapon.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7", ["Recoil while extended"] = "-27%" }

ATT.Category = {"eft_sr2m_stock"}

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        RecoilMult = 0.73,
        VisualRecoilMult = 0.73,
        ActivateElements = {"eft_sr2m_stock_std_unfolded"},
        HasStock = true
    },
    {
        PrintName = "Folded",
        -- CustomizePos = Vector(18, 25, 6),
        -- CustomizeRotateAnchor = Vector(18, -4.28, -5.23),
        ActivateElements = {"eft_sr2m_stock_std_folded"}
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_stock_std")

///////////////////////////////////////      eft_sr2m_stock_mp


ATT = {}

ATT.PrintName = "SR-2MP folding stock"
ATT.CompactName = "SR-2MP"
ATT.Icon = Material("entities/eft_sr2m_attachments/st2.png", "mips smooth")
ATT.Description = [[A folding stock for SR-2MP submachine gun, manufactured by TsNIItochmash. The buttstock has a spring-loaded butt plate which reduces the time it takes to shoulder the weapon.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8", ["Recoil while extended"] = "-27%" }

ATT.Category = {"eft_sr2m_stock"}

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        RecoilMult = 0.73,
        VisualRecoilMult = 0.73,
        ActivateElements = {"eft_sr2m_stock_mp_unfolded"},
        HasStock = true
    },
    {
        PrintName = "Folded",
        -- CustomizePos = Vector(18, 25, 6),
        -- CustomizeRotateAnchor = Vector(18, -4.28, -5.23),
        ActivateElements = {"eft_sr2m_stock_mp_folded"}
    },
}

ARC9.LoadAttachment(ATT, "eft_sr2m_stock_mp")


///////////////////////////////////////      eft_sr2m_mag_20


ATT = {}

ATT.PrintName = "SR-2M 9x21 20-round magazine"
ATT.CompactName = "SR-2M 20"
ATT.Icon = Material("entities/eft_sr2m_attachments/20.png", "mips smooth")
ATT.Description = [[A standard 20-round capacity magazine for SR-2M "Veresk", manufactured by TsNIItochmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_sr2m_20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_sr2m_20.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 20

ATT.MalfunctionMeanShotsToFailMult = 0.965

ATT.Category = {"eft_mag_sr2m"}

ARC9.LoadAttachment(ATT, "eft_sr2m_mag_20")


///////////////////////////////////////      eft_sr2m_mag_30


ATT = {}

ATT.PrintName = "SR-2M 9x21 30-round magazine"
ATT.CompactName = "SR-2M 30"
ATT.Icon = Material("entities/eft_sr2m_attachments/30.png", "mips smooth")
ATT.Description = [[A standard 30-round capacity magazine for SR-2M "Veresk", manufactured by TsNIItochmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_sr2m_30.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_sr2m_30.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 30

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.MalfunctionMeanShotsToFailMult = 0.965

ATT.Category = {"eft_mag_sr2m"}

ARC9.LoadAttachment(ATT, "eft_sr2m_mag_30")













///////////////////////////////////////      eft_ammo_9x21_7u4

ATT = {}

ATT.PrintName = "9x21mm 7U4"
ATT.CompactName = "7U4"
ATT.Icon = Material("entities/eft_sr2m_attachments/bt.png", "mips smooth")
ATT.Description = [[The 9x21mm 7U4 round (GRAU index - 7U4) with reduced bullet velocity, designed for flameless and low-noise firing. The cartridge features a cut edge on the front end of the core, formed by two flat edges, and increased weight.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "9x21mm 7U4"

ATT.DamageMax = 47 * mult9
ATT.DamageMin = 37 * mult9
ATT.PhysBulletMuzzleVelocity = 300 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
-- ATT.SpreadMult = 1.04
-- ATT.RecoilMult = 1.1
-- ATT.VisualRecoilMult = 1.1
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      27 *2.54/100/0.0254
ATT.PenetrationDelta = 44/100
ATT.ArmorPiercing =    44/100
ATT.RicochetChance =   40/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    47 * mult9     },

    {   100 /0.0254 * dmgrange, 
    45 * mult9     },

    {   200 /0.0254 * dmgrange, 
    44 * mult9     },

    {   300 /0.0254 * dmgrange, 
    43 * mult9     },

    {   400 /0.0254 * dmgrange, 
    42 * mult9     },

    {   500 /0.0254 * dmgrange, 
    41 * mult9     },

    {   600 /0.0254 * dmgrange, 
    40 * mult9     },

    {   700 /0.0254 * dmgrange, 
    39.5 * mult9     },

    {   800 /0.0254 * dmgrange, 
    38.5 * mult9     },

    {   900 /0.0254 * dmgrange, 
    37.6 * mult9     },

    {   1000 /0.0254 * dmgrange, 
    37 * mult9     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 53.68	49.85	47.08	44.76	42.82	41.11	39.68	38.5	37.59	36.97


ATT.Category = {"eft_ammo_9x21"}


ARC9.LoadAttachment(ATT, "eft_ammo_9x21_7u4")

///////////////////////////////////////      eft_ammo_9x21_7n42

ATT = {}

ATT.PrintName = "9x21mm 7N42 \"Zubilo\""
ATT.CompactName = "7N42 \"Zubilo\""
ATT.Icon = Material("entities/eft_sr2m_attachments/bt.png", "mips smooth")
ATT.Description = [[The 9x21mm PP cartridge (GRAU Index - 7N42) with increased penetration bullet is designed to engage armored personnel. The head part of the core is made with a cut edge. This design ensures the tearing of the threads of the fabric base of the body armor and significantly increases the penetration of the bullet. The core protrudes from the jacket, which increases its penetration capability. The bullet head is colored black.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "9x21mm 7N42 \"Zubilo\""

ATT.DamageMax = 45 * mult9
ATT.DamageMin = 36 * mult9
ATT.PhysBulletMuzzleVelocity = 400 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
ATT.SpreadMult = 1.03
ATT.RecoilMult = 1.1
ATT.VisualRecoilMult = 1.1
ATT.HeatPerShotMult = 1.45

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      38 *2.54/100/0.0254
ATT.PenetrationDelta = 47/100
ATT.ArmorPiercing =    47/100
ATT.RicochetChance =   40/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    45 * mult9     },

    {   100 /0.0254 * dmgrange, 
    44 * mult9     },

    {   200 /0.0254 * dmgrange, 
    43 * mult9     },

    {   300 /0.0254 * dmgrange, 
    42 * mult9     },

    {   400 /0.0254 * dmgrange, 
    41 * mult9     },

    {   500 /0.0254 * dmgrange, 
    40 * mult9     },

    {   600 /0.0254 * dmgrange, 
    39 * mult9     },

    {   700 /0.0254 * dmgrange, 
    38 * mult9     },

    {   800 /0.0254 * dmgrange, 
    38 * mult9     },

    {   900 /0.0254 * dmgrange, 
    37 * mult9     },

    {   1000 /0.0254 * dmgrange, 
    36 * mult9     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 53.68	49.85	47.08	44.76	42.82	41.11	39.68	38.5	37.59	36.97


ATT.Category = {"eft_ammo_9x21"}


ARC9.LoadAttachment(ATT, "eft_ammo_9x21_7n42")

///////////////////////////////////////      eft_ammo_9x21_bt

ATT = {}

ATT.PrintName = "9x21mm BT gzh"
ATT.CompactName = "BT"
ATT.Icon = Material("entities/eft_sr2m_attachments/bt.png", "mips smooth")
ATT.Description = [[A 9x21mm Gyurza BT gzh (SP13, GRAU Index - 7BT3) cartridge with a 7.3 gram armor-piercing tracer bullet with a steel core and a two-layer semi-jacket, a lead interior and a bimetallic exterior, in a bimetallic case; intended for target designation and fire adjustment in battle (Trace color: Red). This BT bullet (Bronebóynaya Trassíruyushchaya - "Armor-piercing Tracer") was developed for 9x21mm caliber submachine guns by TsNIITochMash based on the 9x21mm PS gzh "SP10" cartridge and has superior characteristics, being able of piercing basic and intermediate ballistic body protections, as well as having a considerable stopping power effect, however, it has a high bounce probability on various surfaces.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "9x21mm BT gzh"

ATT.DamageMax = 49 * mult9
ATT.DamageMin = 37 * mult9
ATT.PhysBulletMuzzleVelocity = 410 /0.0254
ATT.TracerNum = 1
ATT.TracerColor = Color(255, 16, 16)
ATT.SpreadMult = 1.04
-- ATT.RecoilMult = 1.1
-- ATT.VisualRecoilMult = 1.1
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      32 *2.54/100/0.0254
ATT.PenetrationDelta = 42/100
ATT.ArmorPiercing =    42/100
ATT.RicochetChance =   40/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    49 * mult9     },

    {   100 /0.0254 * dmgrange, 
    48 * mult9     },

    {   200 /0.0254 * dmgrange, 
    47 * mult9     },

    {   300 /0.0254 * dmgrange, 
    46 * mult9     },

    {   400 /0.0254 * dmgrange, 
    44.8 * mult9     },

    {   500 /0.0254 * dmgrange, 
    42.82 * mult9     },

    {   600 /0.0254 * dmgrange, 
    41.11 * mult9     },

    {   700 /0.0254 * dmgrange, 
    39.7 * mult9     },

    {   800 /0.0254 * dmgrange, 
    38.5 * mult9     },

    {   900 /0.0254 * dmgrange, 
    37.6 * mult9     },

    {   1000 /0.0254 * dmgrange, 
    37 * mult9     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 53.68	49.85	47.08	44.76	42.82	41.11	39.68	38.5	37.59	36.97


ATT.Category = {"eft_ammo_9x21"}


ARC9.LoadAttachment(ATT, "eft_ammo_9x21_bt")

///////////////////////////////////////      eft_ammo_9x21_ps

ATT = {}

ATT.PrintName = "9x21mm PS gzh"
ATT.CompactName = "PS"
ATT.Icon = Material("entities/eft_sr2m_attachments/ps.png", "mips smooth")
ATT.Description = [[A 9x21mm Gyurza PS gzh (SP10, GRAU Index - 7N29) cartridge with a 6.7 gram armor-piercing bullet with a heat-strengthened steel core and a two-layer semi-jacket, a polyethylene interior and a bimetallic exterior, in a bimetallic case. This cartridge was designed in the 1990s by TsNIITochMash to provide superior penetration capabilities compared to its standard 9x19mm counterparts, being capable of piercing basic ballistic body protection equipment and some intermediate models, however, due to its design, it has a high probability of bouncing off various surfaces.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "9x21mm PS gzh"

ATT.DamageMax = 54 * mult9
ATT.DamageMin = 28.75 * mult9
ATT.PhysBulletMuzzleVelocity = 410 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
-- ATT.SpreadMult = 0.9
-- ATT.RecoilMult = 1.1
-- ATT.VisualRecoilMult = 1.1
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      22 *2.54/100/0.0254
ATT.PenetrationDelta = 39/100
ATT.ArmorPiercing =    39/100
ATT.RicochetChance =   40/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    54 * mult9     },

    {   100 /0.0254 * dmgrange, 
    41.75 * mult9     },

    {   200 /0.0254 * dmgrange, 
    38.8 * mult9     },

    {   300 /0.0254 * dmgrange, 
    36.6 * mult9     },

    {   400 /0.0254 * dmgrange, 
    35 * mult9     },

    {   500 /0.0254 * dmgrange, 
    33.3 * mult9     },

    {   600 /0.0254 * dmgrange, 
    32 * mult9     },

    {   700 /0.0254 * dmgrange, 
    30.1 * mult9     },

    {   800 /0.0254 * dmgrange, 
    30 * mult9     },

    {   900 /0.0254 * dmgrange, 
    29.25 * mult9     },

    {   1000 /0.0254 * dmgrange, 
    28.75 * mult9     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 41.75	38.78	36.62	34.82	33.31	31.98	30.87	29.95	29.24	28.75


ATT.Category = {"eft_ammo_9x21"}


ARC9.LoadAttachment(ATT, "eft_ammo_9x21_ps")

///////////////////////////////////////      eft_ammo_9x21_p

ATT = {}

ATT.PrintName = "9x21mm P gzh"
ATT.CompactName = "P"
ATT.Icon = Material("entities/eft_sr2m_attachments/p.png", "mips smooth")
ATT.Description = [[A 9x21mm Gyurza P gzh (SP11, GRAU Index - 7N28) cartridge with a 7.5 gram soft lead core bullet with a bimetallic jacket in a bimetallic case. This cartridge was designed by TsNIITochMash due to the need to create a cheaper 9x21mm PS gzh "SP10" cartridge for practice shooting during experimentation with weapons of the same caliber. Because of this, the cartridge had to meet similar criteria, such as recoil, muzzle velocity, and trajectories. The result was so satisfactory that it was adopted by the FSB due to its considerable stopping power effect.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "9x21mm P gzh"

ATT.DamageMax = 65 * mult9
ATT.DamageMin = 42.45 * mult9
ATT.PhysBulletMuzzleVelocity = 413 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
ATT.SpreadMult = 0.99
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      18 *2.54/100/0.0254
ATT.PenetrationDelta = 44/100
ATT.ArmorPiercing =    44/100
ATT.RicochetChance =   20/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    65 * mult9     },

    {   100 /0.0254 * dmgrange, 
    57.8 * mult9     },

    {   200 /0.0254 * dmgrange, 
    54.4 * mult9     },

    {   300 /0.0254 * dmgrange, 
    52 * mult9     },

    {   400 /0.0254 * dmgrange, 
    50 * mult9     },

    {   500 /0.0254 * dmgrange, 
    48.44 * mult9     },

    {   600 /0.0254 * dmgrange, 
    47 * mult9     },

    {   700 /0.0254 * dmgrange, 
    45.7 * mult9     },

    {   800 /0.0254 * dmgrange, 
    44.5 * mult9     },

    {   900 /0.0254 * dmgrange, 
    43.4 * mult9     },

    {   1000 /0.0254 * dmgrange, 
    42.45 * mult9     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 57.82	54.4	52.03	50.08	48.44	46.98	45.67	44.49	43.41	42.45


ATT.Category = {"eft_ammo_9x21"}


ARC9.LoadAttachment(ATT, "eft_ammo_9x21_p")

///////////////////////////////////////      eft_ammo_9x21_pe

ATT = {}

ATT.PrintName = "9x21mm PE gzh"
ATT.CompactName = "PE"
ATT.Icon = Material("entities/eft_sr2m_attachments/pe.png", "mips smooth")
ATT.Description = [[A 9x21mm Gyurza PE gzh (SP12) cartridge with a 5.7 gram expansive bullet with a bimetallic semi-jacketed lead core and a ballistic polyethylene tip, in a bimetallic case. This cartridge was developed by TsNIITochMash due to the needs of the FSB to equip its special forces with a cartridge capable of granting outstanding stopping power effects at distances up to 200 meters and maintaining similar criteria to its counterparts of the same caliber, such as recoil, muzzle velocity, and trajectories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "9x21mm PE gzh"

ATT.DamageMax = 80 * mult9
ATT.DamageMin = 50.26 * mult9
ATT.PhysBulletMuzzleVelocity = 415 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
ATT.SpreadMult = 0.97
ATT.RecoilMult = 0.95
ATT.VisualRecoilMult = 0.95
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      15 *2.54/100/0.0254
ATT.PenetrationDelta = 63/100
ATT.ArmorPiercing =    63/100
ATT.RicochetChance =   20/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    80 * mult9     },

    {   100 /0.0254 * dmgrange, 
    70 * mult9     },

    {   200 /0.0254 * dmgrange, 
    65.7 * mult9     },

    {   300 /0.0254 * dmgrange, 
    62.6 * mult9     },

    {   400 /0.0254 * dmgrange, 
    60 * mult9     },

    {   500 /0.0254 * dmgrange, 
    57.9 * mult9     },

    {   600 /0.0254 * dmgrange, 
    56 * mult9     },

    {   700 /0.0254 * dmgrange, 
    54.3 * mult9     },

    {   800 /0.0254 * dmgrange, 
    52.75 * mult9     },

    {   900 /0.0254 * dmgrange, 
    51.42 * mult9     },

    {   1000 /0.0254 * dmgrange, 
    50.26 * mult9     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 70.06	65.68	62.58	60.08	57.91	56	54.29	52.75	51.42	50.26


ATT.Category = {"eft_ammo_9x21"}


ARC9.LoadAttachment(ATT, "eft_ammo_9x21_pe")
