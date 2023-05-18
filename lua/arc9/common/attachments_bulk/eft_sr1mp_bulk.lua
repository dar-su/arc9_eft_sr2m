local ATT = {}

///////////////////////////////////////      eft_silencer_sr1mp

ATT = {}

ATT.PrintName = "SR-1MP 9x21 sound suppressor"
ATT.CompactName = "SR-1MP"
ATT.Icon = Material("entities/eft_sr2m_attachments/s.png", "mips smooth")
ATT.Description = [[A standard-issue sound suppressor from the SR-1MP pistol kit. Requires a rail mount to be installed on the weapon.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -15
ATT.CustomCons = { Ergonomics = "-15" }
ATT.RecoilMult = 0.9
ATT.VisualRecoilMult = 0.9
ATT.PhysBulletMuzzleVelocityMult = 1.005
ATT.HeatCapacityMult = 0.88
-- ATT.SpreadMult = 0.99

ATT.Silencer = true 
ATT.BarrelLengthAdd = 5

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true

ATT.Category = {"eft_silencerrr_sr1mp"}

ARC9.LoadAttachment(ATT, "eft_silencer_sr1mp")

///////////////////////////////////////      eft_mount_sr1mp_1x

ATT = {}

ATT.PrintName = "SR-1MP single rail mount"
ATT.CompactName = "SR-1MP 1x"
ATT.Icon = Material("entities/eft_m9a3_attachments/bridge.png", "mips smooth")
ATT.Description = [[A mount for SR-1MP, included in the pistol kit, designed to form a single rail and silencer installation place.]]

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mount_sr1mp"}

ATT.Attachments = {
    {
        PrintName = "Mount",
        Category = "eft_silmount_sr1mp",
        Pos = Vector(-0.7, 0, 0.2),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Tactical",
        Category = {"eft_tactical_pistol"},
        Pos = Vector(-0.5, 0, -0.3),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_sr1mp_1x")

///////////////////////////////////////      eft_mount_sr1mp_sil

ATT = {}

ATT.PrintName = "SR-1MP sound suppressor mount"
ATT.CompactName = "SR-1MP mount"
ATT.Icon = Material("entities/eft_m9a3_attachments/bridge.png", "mips smooth")
ATT.Description = [[A mount for SR-1MP from the pistol kit, used for quick installation and removal of the sound suppressor.]]

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_silmount_sr1mp"}

ATT.Attachments = {
    {
        PrintName = "Silencer",
        Category = "eft_silencerrr_sr1mp",
        Pos = Vector(-0.7, 0, 0.2),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_sr1mp_sil")

///////////////////////////////////////      eft_mount_sr1mp_4x

ATT = {}

ATT.PrintName = "SR-1MP quad rail mount"
ATT.CompactName = "SR-1MP 4x"
ATT.Icon = Material("entities/eft_m9a3_attachments/bridge.png", "mips smooth")
ATT.Description = [[A mount for the SR-1MP pistol that forms four guide rails, allowing installation of the sound suppressor.]]

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mount_sr1mp"}

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = "eft_optic_small",
        Pos = Vector(0.7, 0, 2.4),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Mount",
        Category = "eft_silmount_sr1mp",
        Pos = Vector(-0.7, 0, 0.2),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "R. Tactical",
        Category = "eft_tactical",
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(0.1, 1, 1.2),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = "L. Tactical",
        Category = "eft_tactical",
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(0.1, -1, 1.2),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = "B. Tactical",
        Category = {"eft_tactical_pistol"},
        Pos = Vector(-0.5, 0, -0.3),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_sr1mp_4x")

///////////////////////////////////////      eft_mag_sr1mp_std

ATT = {}

ATT.PrintName = "SR-1MP 9x21 18-round magazine"
ATT.CompactName = "SR-1MP 18"
ATT.Icon = Material("entities/eft_sr2m_attachments/20.png", "mips smooth")
ATT.Description = [[A standard 18-round 9x21 magazine for the SR-1MP pistol.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_sr1mp.mdl"

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 18

ATT.MalfunctionMeanShotsToFailMult = 0.98

ATT.Category = {"eft_sr1mp_mag"}

ARC9.LoadAttachment(ATT, "eft_mag_sr1mp_std")