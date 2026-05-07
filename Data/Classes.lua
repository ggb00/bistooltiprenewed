-- Classes.lua
BisTooltip_PhaseData = { "PR", "T7", "T8", "T9", "T10", "RS" }

BisTooltip_ClassData = {
    { name = "Death Knight", specs = {"Blood Tank", "Frost", "Unholy"} },
    { name = "Druid", specs = {"Balance", "Feral Tank", "Feral DPS", "Restoration"} },
    { name = "Hunter", specs = {"Beast Mastery", "Marksmanship", "Survival"} },
    { name = "Mage", specs = {"Arcane", "Fire", "Fire FFB", "Frost"} },
    { name = "Paladin", specs = {"Holy", "Protection", "Retribution"} },
    { name = "Priest", specs = {"Discipline", "Holy", "Shadow"} },
    { name = "Rogue", specs = {"Assassination", "Combat"} },
    { name = "Shaman", specs = {"Elemental", "Enhancement", "Restoration"} },
    { name = "Warlock", specs = {"Affliction", "Demonology", "Destruction"} },
    { name = "Warrior", specs = {"Arms", "Fury", "Protection"} }
}

BisTooltip_SpecIcons = {
    ["Death Knight"] = {
        ["classIcon"] = "Interface\\Icons\\Achievement_DeathKnight_ClassIcon",
        ["Blood Tank"] = "Interface\\Icons\\Spell_Deathknight_BloodPresence",
        ["Frost"] = "Interface\\Icons\\Spell_Deathknight_FrostPresence",
        ["Unholy"] = "Interface\\Icons\\Spell_Deathknight_UnholyPresence"
    },
    ["Druid"] = {
        ["classIcon"] = "Interface\\Icons\\Achievement_Druid_ClassIcon",
        ["Balance"] = "Interface\\Icons\\Spell_Nature_StarFall",
        ["Feral Tank"] = "Interface\\Icons\\Ability_Racial_BearForm",
        ["Feral DPS"] = "Interface\\Icons\\Ability_Druid_CatForm",
        ["Restoration"] = "Interface\\Icons\\Spell_Nature_HealingTouch"
    },
    ["Hunter"] = {
        ["classIcon"] = "Interface\\Icons\\Achievement_Hunter_ClassIcon",
        ["Beast Mastery"] = "Interface\\Icons\\Ability_Hunter_BeastTaming",
        ["Marksmanship"] = "Interface\\Icons\\Ability_Marksmanship",
        ["Survival"] = "Interface\\Icons\\Ability_Hunter_SurvivalInstincts"
    },
    ["Mage"] = {
        ["classIcon"] = "Interface\\Icons\\Achievement_Mage_ClassIcon",
        ["Arcane"] = "Interface\\Icons\\Spell_Holy_MagicalSentry",
        ["Fire"] = "Interface\\Icons\\Spell_Fire_FireBolt02",
        ["Fire FFB"] = "Interface\\Icons\\Spell_Fire_FlameBolt",
        ["Frost"] = "Interface\\Icons\\Spell_Frost_FrostBolt02"
    },
    ["Paladin"] = {
        ["classIcon"] = "Interface\\Icons\\Achievement_Paladin_ClassIcon",
        ["Holy"] = "Interface\\Icons\\Spell_Holy_HolyBolt",
        ["Protection"] = "Interface\\Icons\\Ability_Paladin_ShieldoftheTemplar",
        ["Retribution"] = "Interface\\Icons\\Spell_Holy_AuraOfLight"
    },
    ["Priest"] = {
        ["classIcon"] = "Interface\\Icons\\Achievement_Priest_ClassIcon",
        ["Discipline"] = "Interface\\Icons\\Spell_Holy_PowerWordShield",
        ["Holy"] = "Interface\\Icons\\Spell_Holy_GuardianSpirit",
        ["Shadow"] = "Interface\\Icons\\Spell_Shadow_ShadowWordPain"
    },
    ["Rogue"] = {
        ["classIcon"] = "Interface\\Icons\\Achievement_Rogue_ClassIcon",
        ["Assassination"] = "Interface\\Icons\\Ability_Rogue_Eviscerate",
        ["Combat"] = "Interface\\Icons\\Ability_BackStab"
    },
    ["Shaman"] = {
        ["classIcon"] = "Interface\\Icons\\Achievement_Shaman_ClassIcon",
        ["Elemental"] = "Interface\\Icons\\Spell_Nature_Lightning",
        ["Enhancement"] = "Interface\\Icons\\Spell_Nature_LightningShield",
        ["Restoration"] = "Interface\\Icons\\Spell_Nature_MagicImmunity"
    },
    ["Warlock"] = {
        ["classIcon"] = "Interface\\Icons\\Achievement_Warlock_ClassIcon",
        ["Affliction"] = "Interface\\Icons\\Spell_Shadow_DeathCoil",
        ["Demonology"] = "Interface\\Icons\\Spell_Shadow_Metamorphosis",
        ["Destruction"] = "Interface\\Icons\\Spell_Shadow_RainOfFire"
    },
    ["Warrior"] = {["classIcon"] = "Interface\\Icons\\Achievement_Warrior_ClassIcon",
        ["Arms"] = "Interface\\Icons\\Ability_Warrior_SavageBlow",
        ["Fury"] = "Interface\\Icons\\Ability_Warrior_InnerRage",
        ["Protection"] = "Interface\\Icons\\Ability_Warrior_DefensiveStance"
    }
}