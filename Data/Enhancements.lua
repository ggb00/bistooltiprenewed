-- Enhancements.lua
BisTooltip_Enhancements = BisTooltip_Enhancements or {}

-- -- -- -- -- -- -- --
-- ["Head"] = {},
-- ["Neck"] = {},
-- ["Shoulder"] = {},
-- ["Back"] = {},
-- ["Chest"] = {},
-- ["Wrist"] = {},
-- ["Hands"] = {},
-- ["Waist"] = {},
-- ["Legs"] = {},
-- ["Feet"] = {},

-- ["Finger 1"] = {},
-- ["Finger 2"] = {},

-- ["Trinket 1"] = {},
-- ["Trinket 2"] = {},

-- ["Weapon"] = {},
-- ["Main hand"] = {},
-- ["Two hand"] = {},
-- ["Off hand"] = {},

-- ["Ranged"] = {}
-- -- -- -- -- -- -- --

-- Death Knight
BisTooltip_Enhancements["Death Knight"] = BisTooltip_Enhancements["Death Knight"] or {}

-- -- Blood Tank (Death Knight)
BisTooltip_Enhancements["Death Knight"]["Blood Tank"] = {}
BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"] = {
    ["Head"] = {
        {type = "spell", id = 59955}, -- Arcanum of the Stalwart Protector
        {type = "item", id = 41380}, -- Austere Earthsiege Diamond
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Shoulder"] = {
        {type = "spell", id = 62384} -- Greater Inscription of the Gladiator
    },
    ["Back"] = {
        {type = "spell", id = 47672} -- Cloak - Mighty Armor
    },
    ["Chest"] = {
        {type = "spell", id = 47900}, -- Chest - Super Health
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Wrist"] = {
        {type = "spell", id = 62256} -- Bracer - Major Stamina
    },
    ["Hands"] = {
        {type = "spell", id = 44769}, -- Glove Reinforcements
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Waist"] = {
        {type = "item", id = 40089}, -- Enduring Forest Emerald
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Legs"] = {
        {type = "spell", id = 60581}, -- Frosthide Leg Armor
        {type = "item", id = 40022} -- Sovereign Twilight Opal
    },
    ["Feet"] = {
        {type = "spell", id = 47901} -- Boots - Tuskarr's Vitality
    },
    ["Finger 1"] = {
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Weapon"] = {
        {type = "spell", id = 62158} -- Rune of the Stoneskin Gargoyle
    }
}

BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Head"],
    ["Shoulder"] = {
        {type = "spell", id = 62384}, -- Greater Inscription of the Gladiator
        {type = "item", id = 40022} -- Sovereign Twilight Opal
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Legs"] = {
        {type = "spell", id = 60581} -- Frosthide Leg Armor
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40088} -- Vivid Forest Emerald
    },
    ["Shoulder"] = {
        {type = "spell", id = 62384}, -- Greater Inscription of the Gladiator
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Back"] = {
        {type = "spell", id = 47672}, -- Cloak - Mighty Armor
        {type = "item", id = 40022} -- Sovereign Twilight Opal
    },
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44769}, -- Glove Reinforcements
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Waist"] = {
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Legs"] = {
        {type = "spell", id = 60581}, -- Frosthide Leg Armor
        {type = "item", id = 40022}, -- Sovereign Twilight Opal
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40088} -- Vivid Forest Emerald
    },
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Finger 1"] = {
        {type = "item", id = 40088} -- Vivid Forest Emerald
    },
    ["Finger 2"] = {
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Weapon"] = {
        {type = "spell", id = 62158}, -- Rune of the Stoneskin Gargoyle
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40008} -- Solid Sky Sapphire
    }
}

BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"] = {
    ["Head"] = {
        {type = "spell", id = 59955}, -- Arcanum of the Stalwart Protector
        {type = "item", id = 41380}, -- Austere Earthsiege Diamond
        {type = "item", id = 40166} -- Vivid Eye of Zul
    },
    ["Neck"] = {
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Shoulder"] = {
        {type = "spell", id = 62384}, -- Greater Inscription of the Gladiator
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Back"] = {
        {type = "spell", id = 47672}, -- Cloak - Mighty Armor
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Chest"] = {
        {type = "spell", id = 47900}, -- Chest - Super Health
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Wrist"] = {
        {type = "spell", id = 62256}, -- Bracer - Major Stamina
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Hands"] = {
        {type = "spell", id = 44769}, -- Glove Reinforcements
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Waist"] = {
        {type = "item", id = 40129}, -- Sovereign Dreadstone
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Legs"] = {
        {type = "spell", id = 60581}, -- Frosthide Leg Armor
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Finger 1"] = {
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Weapon"] = {
        {type = "spell", id = 62158}, -- Rune of the Stoneskin Gargoyle
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    }
}

BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"] = {
    ["Head"] = {
        {type = "spell", id = 59955}, -- Arcanum of the Stalwart Protector
        {type = "item", id = 41380}, -- Austere Earthsiege Diamond
        {type = "item", id = 40129} -- Sovereign Dreadstone
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 47900}, -- Chest - Super Health
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44769}, -- Glove Reinforcements
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Waist"] = {
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 40166}, -- Vivid Eye of Zul
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Finger 2"] = {
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Weapon"] = {
        {type = "spell", id = 62158}, -- Rune of the Stoneskin Gargoyle
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    }
}

BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60581}, -- Frosthide Leg Armor
        {type = "item", id = 40166}, -- Vivid Eye of Zul
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Weapon"]
}

-- -- Frost (Death Knight)
BisTooltip_Enhancements["Death Knight"]["Frost"] = {}
BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 42702} -- Enchanted Tear
    },
    ["Neck"] = {
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Back"] = {
        {type = "spell", id = 47898} -- Cloak - Greater Speed
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Wrist"] = {
        {type = "spell", id = 44575} -- Bracer - Greater Assault
    },
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Waist"] = {
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Weapon"] = {
        {type = "spell", id = 53343} -- Rune of Razorice
    },
    ["Off hand"] = {
        {type = "spell", id = 53344} -- Rune of the Fallen Crusader
    }
}

BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 60763} -- Boots - Greater Assault
    },
    ["Finger 2"] = {
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Weapon"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40037} -- Inscribed Monarch Topaz
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 40037}, -- Inscribed Monarch Topaz
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40037}, -- Inscribed Monarch Topaz
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 42702} -- Enchanted Tear
    },
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Finger 1"] = {
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 53343}, -- Rune of Razorice
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Off hand"] = {
        {type = "spell", id = 53344}, -- Rune of the Fallen Crusader
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    }
}

BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40142} -- Inscribed Ametrine
    },
    ["Neck"] = {
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 49110}, -- Nightmare Tear
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Waist"] = {
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40142}, -- Inscribed Ametrine
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 40142}, -- Inscribed Ametrine
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Finger 1"] = {
        {type = "item", id = 40142} -- Inscribed Ametrine
    },
    ["Finger 2"] = {
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Weapon"] = {
        {type = "spell", id = 53343}, -- Rune of Razorice
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Off hand"] = {
        {type = "spell", id = 53344}, -- Rune of the Fallen Crusader
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    }
}

BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Neck"] = {
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 49110} -- Nightmare Tear
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Waist"] = {
        {type = "item", id = 40125}, -- Rigid King's Amber
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 40125}, -- Rigid King's Amber
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Finger 1"] = {
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Finger 2"] = {
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Weapon"] = {
        {type = "spell", id = 53343}, -- Rune of Razorice
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Off hand"] = {
        {type = "spell", id = 53344}, -- Rune of the Fallen Crusader
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    }
}

BisTooltip_Enhancements["Death Knight"]["Frost"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40143}, -- Etched Ametrine
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Off hand"]
}

-- -- Unholy (Death Knight)
BisTooltip_Enhancements["Death Knight"]["Unholy"] = {}
BisTooltip_Enhancements["Death Knight"]["Unholy"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 33995}, -- Gloves - Major Strength
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 53344} -- Rune of the Fallen Crusader
    },
    ["Off hand"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["PR"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582} -- Icescale Leg Armor
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Death Knight"]["Unholy"]["T8"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40041} -- Fierce Monarch Topaz
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 33995} -- Gloves - Major Strength
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40041}, -- Fierce Monarch Topaz
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 42702} -- Enchanted Tear
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Finger 1"],
    ["Weapon"] = {
        {type = "spell", id = 53344}, -- Rune of the Fallen Crusader
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Off hand"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Off hand"]
}

BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40146} -- Fierce Ametrine
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 33995}, -- Gloves - Major Strength
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 49110}, -- Nightmare Tear
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40146} -- Fierce Ametrine
    },
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Finger 1"] = {
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Finger 2"] = {
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Weapon"] = {
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Off hand"] = {
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    }
}

BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40146} -- Fierce Ametrine
    },
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Chest"],
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40146} -- Fierce Ametrine
    },
    ["Hands"] = {
        {type = "spell", id = 33995}, -- Gloves - Major Strength
        {type = "item", id = 40146} -- Fierce Ametrine
    },
    ["Waist"] = {
        {type = "item", id = 40146}, -- Fierce Ametrine
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40146}, -- Fierce Ametrine
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 49110} -- Nightmare Tear
    },
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 40146}, -- Fierce Ametrine
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Finger 1"] = {
        {type = "item", id = 40146} -- Fierce Ametrine
    },
    ["Finger 2"] = {
        {type = "item", id = 40146} -- Fierce Ametrine
    },
    ["Weapon"] = {
        {type = "spell", id = 53344}, -- Rune of the Fallen Crusader
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    }
}

BisTooltip_Enhancements["Death Knight"]["Unholy"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40143} -- Etched Ametrine
    },
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Weapon"]
}

-- Druid
BisTooltip_Enhancements["Druid"] = BisTooltip_Enhancements["Druid"] or {}

-- -- Balance (Druid)
BisTooltip_Enhancements["Druid"]["Balance"] = {}
BisTooltip_Enhancements["Druid"]["Balance"]["PR"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41285}, -- Chaotic Skyflare Diamond
        {type = "item", id = 40049} -- Veiled Monarch Topaz
    },
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 40049}, -- Veiled Monarch Topaz
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40026} -- Purified Twilight Opal
    },
    ["Wrist"] = {
        {type = "spell", id = 60767} -- Bracer - Superior Spellpower
    },
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Waist"] = {
        {type = "item", id = 40014}, -- Rigid Autumn's Glow
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 55631} -- Brilliant Spellthread
    },
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Finger 2"] = {
        {type = "item", id = 40026} -- Purified Twilight Opal
    },
    ["Weapon"] = {
        {type = "spell", id = 60714} -- Weapon - Mighty Spellpower
    }
}

BisTooltip_Enhancements["Druid"]["Balance"]["T7"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41285}, -- Chaotic Skyflare Diamond
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Neck"] = {
        {type = "item", id = 40026} -- Purified Twilight Opal
    },
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40026} -- Purified Twilight Opal
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Wrist"] = {
        {type = "spell", id = 60767}, -- Bracer - Superior Spellpower
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Balance"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40048} -- Potent Monarch Topaz
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40048} -- Potent Monarch Topaz
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40048}, -- Potent Monarch Topaz
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40026} -- Purified Twilight Opal
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Waist"] = {
        {type = "item", id = 40048}, -- Potent Monarch Topaz
        {type = "item", id = 40048}, -- Potent Monarch Topaz
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40026} -- Purified Twilight Opal
    },
    ["Finger 1"] = {
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Finger 2"] = {
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Weapon"] = {
        {type = "spell", id = 60714}, -- Weapon - Mighty Spellpower
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    }
}

BisTooltip_Enhancements["Druid"]["Balance"]["T9"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41285}, -- Chaotic Skyflare Diamond
        {type = "item", id = 40153} -- Veiled Ametrine
    },
    ["Neck"] = {
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40133} -- Purified Dreadstone
    },
    ["Wrist"] = {
        {type = "spell", id = 60767}, -- Bracer - Superior Spellpower
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Waist"] = {
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Finger 1"] = {
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Finger 2"] = {
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Balance"]["T10"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41285}, -- Chaotic Skyflare Diamond
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Neck"] = {
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Wrist"] = {
        {type = "spell", id = 60767}, -- Bracer - Superior Spellpower
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 60714}, -- Weapon - Mighty Spellpower
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    }
}

BisTooltip_Enhancements["Druid"]["Balance"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40153} -- Veiled Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40153} -- Veiled Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = {
        {type = "item", id = 40153} -- Veiled Ametrine
    },
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"]
}

-- -- Feral Tank (Druid)
BisTooltip_Enhancements["Druid"]["Feral Tank"] = {}
BisTooltip_Enhancements["Druid"]["Feral Tank"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40023} -- Shifting Twilight Opal
    },
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Legs"] = {
        {type = "spell", id = 60581}, -- Frosthide Leg Armor
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 64579} -- Weapon - Blood Draining
    }
}

BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Head"],
    ["Shoulder"] = {
        {type = "spell", id = 62384}, -- Greater Inscription of the Gladiator
        {type = "item", id = 40023} -- Shifting Twilight Opal
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["PR"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60581}, -- Frosthide Leg Armor
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Feral Tank"]["T8"] = {
    ["Head"] = {
        {type = "spell", id = 59955}, -- Arcanum of the Stalwart Protector
        {type = "item", id = 41380}, -- Austere Earthsiege Diamond
        {type = "item", id = 40023} -- Shifting Twilight Opal
    },
    ["Neck"] = {
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Shoulder"] = {
        {type = "spell", id = 62384}, -- Greater Inscription of the Gladiator
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40023} -- Shifting Twilight Opal
    },
    ["Back"] = {
        {type = "spell", id = 47672}, -- Cloak - Mighty Armor
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["PR"]["Chest"],
    ["Wrist"] = {
        {type = "spell", id = 62256}, -- Bracer - Major Stamina
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["PR"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60581}, -- Frosthide Leg Armor
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Finger 1"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Feral Tank"]["T9"] = {
    ["Head"] = {
        {type = "spell", id = 59955}, -- Arcanum of the Stalwart Protector
        {type = "item", id = 41380}, -- Austere Earthsiege Diamond
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Neck"] = {
        {type = "item", id = 40130} -- Shifting Dreadstone
    },
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Weapon"] = {
        {type = "spell", id = 64579}, -- Weapon - Blood Draining
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    }
}

BisTooltip_Enhancements["Druid"]["Feral Tank"]["T10"] = {
    ["Head"] = {
        {type = "spell", id = 59955}, -- Arcanum of the Stalwart Protector
        {type = "item", id = 41380}, -- Austere Earthsiege Diamond
        {type = "item", id = 40130} -- Shifting Dreadstone
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60581}, -- Frosthide Leg Armor
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 64579}, -- Weapon - Blood Draining
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    }
}

BisTooltip_Enhancements["Druid"]["Feral Tank"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T10"]["Weapon"]
}

-- -- Feral DPS (Druid)
BisTooltip_Enhancements["Druid"]["Feral DPS"] = {}
BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Back"] = {
        {type = "spell", id = 60663} -- Cloak - Major Agility
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40014}, -- Rigid Autumn's Glow
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Waist"] = {
        {type = "item", id = 40014}, -- Rigid Autumn's Glow
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 44589} -- Boots - Superior Agility
    },
    ["Finger 2"] = {
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Weapon"] = {
        {type = "spell", id = 59621} -- Weapon - Berserking
    }
}

BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Neck"] = {
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Hands"] = {
        {type = "spell", id = 60668} -- Gloves - Crusher
    },
    ["Waist"] = {
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 39997}, -- Delicate Scarlet Ruby
        {type = "item", id = 42702} -- Enchanted Tear
    },
    ["Feet"] = {
        {type = "spell", id = 44589}, -- Boots - Superior Agility
        {type = "item", id = 40044} -- Glinting Monarch Topaz
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40002} -- Fractured Scarlet Ruby
    },
    ["Neck"] = {
        {type = "item", id = 40002} -- Fractured Scarlet Ruby
    },
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 40002}, -- Fractured Scarlet Ruby
        {type = "item", id = 40002} -- Fractured Scarlet Ruby
    },
    ["Back"] = {
        {type = "spell", id = 60663}, -- Cloak - Major Agility
        {type = "item", id = 40002}, -- Fractured Scarlet Ruby
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40002}, -- Fractured Scarlet Ruby
        {type = "item", id = 40002}, -- Fractured Scarlet Ruby
        {type = "item", id = 40002} -- Fractured Scarlet Ruby
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40002} -- Fractured Scarlet Ruby
    },
    ["Waist"] = {
        {type = "item", id = 40002}, -- Fractured Scarlet Ruby
        {type = "item", id = 40002}, -- Fractured Scarlet Ruby
        {type = "item", id = 40002} -- Fractured Scarlet Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40044}, -- Glinting Monarch Topaz
        {type = "item", id = 40002}, -- Fractured Scarlet Ruby
        {type = "item", id = 42702} -- Enchanted Tear
    },
    ["Feet"] = {
        {type = "spell", id = 44589}, -- Boots - Superior Agility
        {type = "item", id = 39997}, -- Delicate Scarlet Ruby
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Finger 1"] = {
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Finger 2"] = {
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Weapon"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40002}, -- Fractured Scarlet Ruby
        {type = "item", id = 40002} -- Fractured Scarlet Ruby
    }
}

BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 60663}, -- Cloak - Major Agility
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40142} -- Inscribed Ametrine
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40118}, -- Precise Cardinal Ruby
        {type = "item", id = 40118} -- Precise Cardinal Ruby
    },
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40142}, -- Inscribed Ametrine
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40142}, -- Inscribed Ametrine
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 49110} -- Nightmare Tear
    },
    ["Feet"] = {
        {type = "spell", id = 44589}, -- Boots - Superior Agility
        {type = "item", id = 40142}, -- Inscribed Ametrine
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    }
}

BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40162} -- Accurate Ametrine
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40162} -- Accurate Ametrine
    },
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40143}, -- Etched Ametrine
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Waist"] = {
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40143} -- Etched Ametrine
    },
    ["Feet"] = {
        {type = "spell", id = 44589}, -- Boots - Superior Agility
        {type = "item", id = 40125}, -- Rigid King's Amber
        {type = "item", id = 40125} -- Rigid King's Amber
    },
    ["Finger 1"] = {
        {type = "item", id = 40125} -- Rigid King's Amber
    },
    ["Finger 2"] = {
        {type = "item", id = 40125} -- Rigid King's Amber
    },
    ["Weapon"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 49110}, -- Nightmare Tear
        {type = "item", id = 40125} -- Rigid King's Amber
    }
}

BisTooltip_Enhancements["Druid"]["Feral DPS"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 60663}, -- Cloak - Major Agility
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40162} -- Accurate Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40162}, -- Accurate Ametrine
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40125} -- Rigid King's Amber
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Weapon"]
}

-- -- Restoration (Druid)
BisTooltip_Enhancements["Druid"]["Restoration"] = {}
BisTooltip_Enhancements["Druid"]["Restoration"]["PR"] = {
    ["Head"] = {
        {type = "spell", id = 59960}, -- Arcanum of Blissful Mending
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Shoulder"] = {
        {type = "spell", id = 59936}, -- Greater Inscription of the Crag
        {type = "item", id = 40026}, -- Purified Twilight Opal
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Chest"] = {
        {type = "spell", id = 60692} -- Chest - Powerful Stats
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44592} -- Gloves - Exceptional Spellpower
    },
    ["Waist"] = {
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 40026} -- Purified Twilight Opal
    },
    ["Weapon"] = {
        {type = "spell", id = 62948} -- Staff - Greater Spellpower
    }
}

BisTooltip_Enhancements["Druid"]["Restoration"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Head"],
    ["Shoulder"] = {
        {type = "spell", id = 59936}, -- Greater Inscription of the Crag
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Chest"],
    ["Wrist"] = {
        {type = "spell", id = 60767}, -- Bracer - Superior Spellpower
        {type = "item", id = 40051} -- Reckless Monarch Topaz
    },
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Restoration"]["T8"] = {
    ["Head"] = {
        {type = "spell", id = 59960}, -- Arcanum of Blissful Mending
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Neck"] = {
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40017}, -- Quick Autumn's Glow
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40026} -- Purified Twilight Opal
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 40104}, -- Intricate Forest Emerald
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 1"],
    ["Finger 2"] = {
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Restoration"]["T9"] = {
    ["Head"] = {
        {type = "spell", id = 59960}, -- Arcanum of Blissful Mending
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 40133} -- Purified Dreadstone
    },
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59936}, -- Greater Inscription of the Crag
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40155}, -- Reckless Ametrine
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Waist"] = {
        {type = "item", id = 40155}, -- Reckless Ametrine
        {type = "item", id = 40155}, -- Reckless Ametrine
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40133} -- Purified Dreadstone
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = {
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Finger 2"] = {
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = {
        {type = "item", id = 40155} -- Reckless Ametrine
    }
}

BisTooltip_Enhancements["Druid"]["Restoration"]["T10"] = {
    ["Head"] = {
        {type = "spell", id = 59960}, -- Arcanum of Blissful Mending
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40155}, -- Reckless Ametrine
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Restoration"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

-- Hunter
BisTooltip_Enhancements["Hunter"] = BisTooltip_Enhancements["Hunter"] or {}

-- -- Beast Mastery (Hunter)
BisTooltip_Enhancements["Hunter"]["Beast Mastery"] = {}
BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39997}, -- Delicate Scarlet Ruby
        {type = "item", id = 42702} -- Enchanted Tear
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44529}, -- Gloves - Major Agility
        {type = "item", id = 40043} -- Deadly Monarch Topaz
    },
    ["Waist"] = {
        {type = "item", id = 39997}, -- Delicate Scarlet Ruby
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Feet"],
    ["Finger 2"] = {
        {type = "item", id = 40043} -- Deadly Monarch Topaz
    },
    ["Weapon"] = {
        {type = "spell", id = 60691} -- 2H Weapon - Massacre
    },
    ["Ranged"] = {
        {type = "spell", id = 55135} -- Heartseeker Scope
    }
}

BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T7"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44529}, -- Gloves - Major Agility
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 39997}, -- Delicate Scarlet Ruby
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 40044} -- Glinting Monarch Topaz
    },
    ["Back"] = {
        {type = "spell", id = 60663}, -- Cloak - Major Agility
        {type = "item", id = 39997}, -- Delicate Scarlet Ruby
        {type = "item", id = 40043} -- Deadly Monarch Topaz
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39997}, -- Delicate Scarlet Ruby
        {type = "item", id = 39997}, -- Delicate Scarlet Ruby
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40043} -- Deadly Monarch Topaz
    },
    ["Hands"] = {
        {type = "spell", id = 44529}, -- Gloves - Major Agility
        {type = "item", id = 39997}, -- Delicate Scarlet Ruby
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Waist"] = {
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 39997}, -- Delicate Scarlet Ruby
        {type = "item", id = 39997}, -- Delicate Scarlet Ruby
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 60691}, -- 2H Weapon - Massacre
        {type = "item", id = 39997}, -- Delicate Scarlet Ruby
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40148} -- Glinting Ametrine
    },
    ["Neck"] = {
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    },
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    },
    ["Back"] = {
        {type = "spell", id = 60663}, -- Cloak - Major Agility
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40112}, -- Delicate Cardinal Ruby
        {type = "item", id = 40147} -- Deadly Ametrine
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40147} -- Deadly Ametrine
    },
    ["Hands"] = {
        {type = "spell", id = 44529}, -- Gloves - Major Agility
        {type = "item", id = 40147} -- Deadly Ametrine
    },
    ["Waist"] = {
        {type = "item", id = 40147}, -- Deadly Ametrine
        {type = "item", id = 40112}, -- Delicate Cardinal Ruby
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 49110}, -- Nightmare Tear
        {type = "item", id = 40147}, -- Deadly Ametrine
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    },
    ["Feet"] = {
        {type = "spell", id = 44589}, -- Boots - Superior Agility
        {type = "item", id = 40147}, -- Deadly Ametrine
        {type = "item", id = 40147} -- Deadly Ametrine
    },
    ["Finger 1"] = {
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    },
    ["Finger 2"] = {
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    },
    ["Weapon"] = {
        {type = "spell", id = 60691}, -- 2H Weapon - Massacre
        {type = "item", id = 40147}, -- Deadly Ametrine
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    },
    ["Ranged"] = {
        {type = "spell", id = 55135}, -- Heartseeker Scope
        {type = "item", id = 40147} -- Deadly Ametrine
    }
}

BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44529}, -- Gloves - Major Agility
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Waist"] = {
        {type = "item", id = 40147}, -- Deadly Ametrine
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 49110}, -- Nightmare Tear
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40148} -- Glinting Ametrine
    },
    ["Feet"] = {
        {type = "spell", id = 44589}, -- Boots - Superior Agility
        {type = "item", id = 40148}, -- Glinting Ametrine
        {type = "item", id = 40148} -- Glinting Ametrine
    },
    ["Finger 1"] = {
        {type = "item", id = 40148} -- Glinting Ametrine
    },
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 60691}, -- 2H Weapon - Massacre
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Ranged"] = {
        {type = "spell", id = 55135}, -- Heartseeker Scope
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    }
}

BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["RS"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    },
    ["Neck"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 44589}, -- Boots - Superior Agility
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40125} -- Rigid King's Amber
    },
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Ranged"]
}

-- -- Marksmanship (Hunter)
BisTooltip_Enhancements["Hunter"]["Marksmanship"] = {}
BisTooltip_Enhancements["Hunter"]["Marksmanship"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Marksmanship"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T7"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Marksmanship"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Marksmanship"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Marksmanship"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Marksmanship"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["RS"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Chest"],
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    },
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40148}, -- Glinting Ametrine
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 44589}, -- Boots - Superior Agility
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40148} -- Glinting Ametrine
    },
    ["Finger 1"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Ranged"]
}

-- -- Survival (Hunter)
BisTooltip_Enhancements["Hunter"]["Survival"] = {}
BisTooltip_Enhancements["Hunter"]["Survival"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44529}, -- Gloves - Major Agility
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Survival"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44529} -- Gloves - Major Agility
    },
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Survival"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Chest"],
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40044} -- Glinting Monarch Topaz
    },
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 39997}, -- Delicate Scarlet Ruby
        {type = "item", id = 39997}, -- Delicate Scarlet Ruby
        {type = "item", id = 39997} -- Delicate Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Survival"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Survival"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["RS"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40112}, -- Delicate Cardinal Ruby
        {type = "item", id = 49110} -- Nightmare Tear
    },
    ["Wrist"] = BisTooltip_Enhancements["Hunter"]["Marksmanship"]["RS"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44529}, -- Gloves - Major Agility
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    },
    ["Waist"] = {
        {type = "item", id = 40148}, -- Glinting Ametrine
        {type = "item", id = 40112}, -- Delicate Cardinal Ruby
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40112}, -- Delicate Cardinal Ruby
        {type = "item", id = 40112}, -- Delicate Cardinal Ruby
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 60691}, -- 2H Weapon - Massacre
        {type = "item", id = 40112}, -- Delicate Cardinal Ruby
        {type = "item", id = 40112}, -- Delicate Cardinal Ruby
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    },
    ["Ranged"] = {
        {type = "spell", id = 55135}, -- Heartseeker Scope
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    }
}

BisTooltip_Enhancements["Hunter"]["Survival"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["RS"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40112}, -- Delicate Cardinal Ruby
        {type = "item", id = 40112} -- Delicate Cardinal Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Hunter"]["Marksmanship"]["RS"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Survival"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Survival"]["T10"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 49110}, -- Nightmare Tear
        {type = "item", id = 40112}, -- Delicate Cardinal Ruby
        {type = "item", id = 40148} -- Glinting Ametrine
    },
    ["Feet"] = {
        {type = "spell", id = 44589}, -- Boots - Superior Agility
        {type = "item", id = 40112}, -- Delicate Cardinal Ruby
        {type = "item", id = 40148} -- Glinting Ametrine
    },
    ["Finger 1"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Survival"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Survival"]["T10"]["Ranged"]
}

-- Mage
BisTooltip_Enhancements["Mage"] = BisTooltip_Enhancements["Mage"] or {}

-- -- Arcane (Mage)
BisTooltip_Enhancements["Mage"]["Arcane"] = {}
BisTooltip_Enhancements["Mage"]["Arcane"]["PR"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41285}, -- Chaotic Skyflare Diamond
        {type = "item", id = 40051} -- Reckless Monarch Topaz
    },
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40051} -- Reckless Monarch Topaz
    },
    ["Back"] = {
        {type = "spell", id = 47898} -- Cloak - Greater Speed
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40099} -- Shining Forest Emerald
    },
    ["Wrist"] = {
        {type = "spell", id = 60767} -- Bracer - Superior Spellpower
    },
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Waist"] = {
        {type = "item", id = 40049}, -- Veiled Monarch Topaz
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40049} -- Veiled Monarch Topaz
    },
    ["Feet"] = {
        {type = "spell", id = 60623}, -- Boots - Icewalker
        {type = "item", id = 40026} -- Purified Twilight Opal
    },
    ["Weapon"] = {
        {type = "spell", id = 62948} -- Staff - Greater Spellpower
    }
}

BisTooltip_Enhancements["Mage"]["Arcane"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 40051} -- Reckless Monarch Topaz
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40051} -- Reckless Monarch Topaz
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Mage"]["Arcane"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40051}, -- Reckless Monarch Topaz
        {type = "item", id = 40051}, -- Reckless Monarch Topaz
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40051}, -- Reckless Monarch Topaz
        {type = "item", id = 40026} -- Purified Twilight Opal
    },
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Finger 1"] = {
        {type = "item", id = 40026} -- Purified Twilight Opal
    },
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Weapon"],
    ["Ranged"] = {
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    }
}

BisTooltip_Enhancements["Mage"]["Arcane"]["T9"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41285}, -- Chaotic Skyflare Diamond
        {type = "item", id = 40133} -- Purified Dreadstone
    },
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 40133} -- Purified Dreadstone
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Chest"],
    ["Wrist"] = {
        {type = "spell", id = 60767}, -- Bracer - Superior Spellpower
        {type = "item", id = 40133} -- Purified Dreadstone
    },
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 40155}, -- Reckless Ametrine
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = {
        {type = "item", id = 40133} -- Purified Dreadstone
    },
    ["Weapon"] = {
        {type = "spell", id = 60714}, -- Weapon - Mighty Spellpower
        {type = "item", id = 40133} -- Purified Dreadstone
    },
    ["Off hand"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Off hand"],
    ["Ranged"] = {
        {type = "item", id = 40155} -- Reckless Ametrine
    }
}

BisTooltip_Enhancements["Mage"]["Arcane"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40155}, -- Reckless Ametrine
        {type = "item", id = 40133} -- Purified Dreadstone
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Arcane"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

-- -- Fire (Mage)
BisTooltip_Enhancements["Mage"]["Fire"] = {}
BisTooltip_Enhancements["Mage"]["Fire"]["PR"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41285}, -- Chaotic Skyflare Diamond
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 60623}, -- Boots - Icewalker
        {type = "item", id = 40099} -- Shining Forest Emerald
    },
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Mage"]["Fire"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 40049} -- Veiled Monarch Topaz
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Mage"]["Fire"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40051} -- Reckless Monarch Topaz
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40051} -- Reckless Monarch Topaz
    },
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40026} -- Purified Twilight Opal
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Finger 2"] = {
        {type = "item", id = 40051} -- Reckless Monarch Topaz
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Fire"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40153} -- Veiled Ametrine
    },
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40155}, -- Reckless Ametrine
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = {
        {type = "item", id = 40133} -- Purified Dreadstone
    },
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 60714}, -- Weapon - Mighty Spellpower
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Fire"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40133} -- Purified Dreadstone
    },
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 40152} -- Potent Ametrine
    },
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40152} -- Potent Ametrine
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40152} -- Potent Ametrine
    },
    ["Wrist"] = {
        {type = "spell", id = 60767}, -- Bracer - Superior Spellpower
        {type = "item", id = 40152} -- Potent Ametrine
    },
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40133} -- Purified Dreadstone
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40152} -- Potent Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = {
        {type = "item", id = 40152} -- Potent Ametrine
    },
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = {
        {type = "item", id = 40152} -- Potent Ametrine
    }
}

BisTooltip_Enhancements["Mage"]["Fire"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Ranged"]
}

-- -- Fire FFB (Mage)
BisTooltip_Enhancements["Mage"]["Fire FFB"] = {}
BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41285}, -- Chaotic Skyflare Diamond
        {type = "item", id = 40026} -- Purified Twilight Opal
    },
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
         {type = "spell", id = 60692}, -- Chest - Powerful Stats
         {type = "item", id = 39998}, -- Runed Scarlet Ruby
         {type = "item", id = 40051} -- Reckless Monarch Topaz
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40051}, -- Reckless Monarch Topaz
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40051} -- Reckless Monarch Topaz
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Mage"]["Fire FFB"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Mage"]["Fire FFB"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40049} -- Veiled Monarch Topaz
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40049}, -- Veiled Monarch Topaz
        {type = "item", id = 40049}, -- Veiled Monarch Topaz
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Fire"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Fire FFB"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Fire FFB"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 40153} -- Veiled Ametrine
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40153} -- Veiled Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["RS"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = {
        {type = "item", id = 40153} -- Veiled Ametrine
    }
}

-- -- Frost (Mage)
BisTooltip_Enhancements["Mage"]["Frost"] = {}
BisTooltip_Enhancements["Mage"]["Frost"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Mage"]["Frost"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Mage"]["Frost"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Fire"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Frost"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Frost"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Frost"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["RS"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Ranged"]
}

-- Paladin
BisTooltip_Enhancements["Paladin"] = BisTooltip_Enhancements["Paladin"] or {}

-- -- Holy (Paladin)
BisTooltip_Enhancements["Paladin"]["Holy"] = {}
BisTooltip_Enhancements["Paladin"]["Holy"]["PR"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 42702} -- Enchanted Tear
    },
    ["Shoulder"] = {
        {type = "spell", id = 59937} -- Greater Inscription of the Storm
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40012}, -- Brilliant Autumn's Glow
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Waist"] = {
        {type = "item", id = 40012}, -- Brilliant Autumn's Glow
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Legs"] = {
        {type = "spell", id = 55634}, -- Sapphire Spellthread
        {type = "item", id = 40012}, -- Brilliant Autumn's Glow
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = {
        {type = "spell", id = 60653} -- Shield - Greater Intellect
    }
}

BisTooltip_Enhancements["Paladin"]["Holy"]["T7"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Neck"] = {
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40094} -- Dazzling Forest Emerald
    },
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Chest"],
    ["Wrist"] = {
        {type = "spell", id = 60767}, -- Bracer - Superior Spellpower
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Hands"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 40047} -- Luminous Monarch Topaz
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Paladin"]["Holy"]["T8"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 40094} -- Dazzling Forest Emerald
    },
    ["Neck"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T7"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40012}, -- Brilliant Autumn's Glow
        {type = "item", id = 40012}, -- Brilliant Autumn's Glow
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Wrist"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T7"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40047} -- Luminous Monarch Topaz
    },
    ["Waist"] = {
        {type = "item", id = 40012}, -- Brilliant Autumn's Glow
        {type = "item", id = 40012}, -- Brilliant Autumn's Glow
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 40012}, -- Brilliant Autumn's Glow
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Finger 1"] = {
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Finger 2"] = {
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = {
        {type = "spell", id = 60653}, -- Shield - Greater Intellect
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    }
}

BisTooltip_Enhancements["Paladin"]["Holy"]["T9"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 40175} -- Dazzling Eye of Zul
    },
    ["Neck"] = {
        {type = "item", id = 40123} -- Brilliant King's Amber
    },
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 40123} -- Brilliant King's Amber
    },
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40151} -- Luminous Ametrine
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40123}, -- Brilliant King's Amber
        {type = "item", id = 40123}, -- Brilliant King's Amber
        {type = "item", id = 40123} -- Brilliant King's Amber
    },
    ["Wrist"] = {
        {type = "spell", id = 60767}, -- Bracer - Superior Spellpower
        {type = "item", id = 40123} -- Brilliant King's Amber
    },
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40123}, -- Brilliant King's Amber
        {type = "item", id = 40123} -- Brilliant King's Amber
    },
    ["Waist"] = {
        {type = "item", id = 40123}, -- Brilliant King's Amber
        {type = "item", id = 40123} -- Brilliant King's Amber
    },
    ["Legs"] = {
        {type = "spell", id = 55634}, -- Sapphire Spellthread
        {type = "item", id = 40123}, -- Brilliant King's Amber
        {type = "item", id = 40123}, -- Brilliant King's Amber
        {type = "item", id = 40123} -- Brilliant King's Amber
    },
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 40123}, -- Brilliant King's Amber
        {type = "item", id = 40123} -- Brilliant King's Amber
    },
    ["Finger 1"] = {
        {type = "item", id = 40123} -- Brilliant King's Amber
    },
    ["Finger 2"] = {
        {type = "item", id = 40123} -- Brilliant King's Amber
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = {
        {type = "spell", id = 60653}, -- Shield - Greater Intellect
        {type = "item", id = 40123} -- Brilliant King's Amber
    }
}

BisTooltip_Enhancements["Paladin"]["Holy"]["T10"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 40151} -- Luminous Ametrine
    },
    ["Neck"] = {
        {type = "item", id = 40175} -- Dazzling Eye of Zul
    },
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40123} -- Brilliant King's Amber
    },
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40123}, -- Brilliant King's Amber
        {type = "item", id = 40123}, -- Brilliant King's Amber
        {type = "item", id = 40123} -- Brilliant King's Amber
    },
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Off hand"]
}

BisTooltip_Enhancements["Paladin"]["Holy"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40123}, -- Brilliant King's Amber
        {type = "item", id = 40151}, -- Luminous Ametrine
        {type = "item", id = 40123} -- Brilliant King's Amber
    },
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 40123}, -- Brilliant King's Amber
        {type = "item", id = 40151} -- Luminous Ametrine
    },
    ["Finger 1"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Off hand"]
}

-- -- Protection (Paladin)
BisTooltip_Enhancements["Paladin"]["Protection"] = {}
BisTooltip_Enhancements["Paladin"]["Protection"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Head"],
    ["Shoulder"] = {
        {type = "spell", id = 62384}, -- Greater Inscription of the Gladiator
        {type = "item", id = 40089} -- Enduring Forest Emerald
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 44528} -- Boots - Greater Fortitude
    },
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Finger 1"],
    ["Weapon"] = {
        {type = "spell", id = 59619} -- Weapon - Accuracy
    },
    ["Off hand"] = {
        {type = "spell", id = 62201} -- Titanium Plating
    }
}

BisTooltip_Enhancements["Paladin"]["Protection"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40022} -- Sovereign Twilight Opal
    },
    ["Shoulder"] = {
        {type = "spell", id = 62384}, -- Greater Inscription of the Gladiator
        {type = "item", id = 40088} -- Vivid Forest Emerald
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Paladin"]["Protection"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Protection"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Protection"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Paladin"]["Protection"]["T8"] = {
    ["Head"] = {
        {type = "spell", id = 59955}, -- Arcanum of the Stalwart Protector
        {type = "item", id = 41380}, -- Austere Earthsiege Diamond
        {type = "item", id = 40088} -- Vivid Forest Emerald
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44769}, -- Glove Reinforcements
        {type = "item", id = 40022}, -- Sovereign Twilight Opal
        {type = "item", id = 40088} -- Vivid Forest Emerald
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 44528}, -- Boots - Greater Fortitude
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Finger 1"],
    ["Weapon"] = {
        {type = "spell", id = 59619}, -- Weapon - Accuracy
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Off hand"] = {
        {type = "spell", id = 62201}, -- Titanium Plating
        {type = "item", id = 40008} -- Solid Sky Sapphire
    }
}

BisTooltip_Enhancements["Paladin"]["Protection"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40129} -- Sovereign Dreadstone
    },
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40129}, -- Sovereign Dreadstone
        {type = "item", id = 40166}, -- Vivid Eye of Zul
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Wrist"] = {
        {type = "spell", id = 62256}, -- Bracer - Major Stamina
        {type = "item", id = 40129} -- Sovereign Dreadstone
    },
    ["Hands"] = {
        {type = "spell", id = 44769}, -- Glove Reinforcements
        {type = "item", id = 40166} -- Vivid Eye of Zul
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60581}, -- Frosthide Leg Armor
        {type = "item", id = 40129}, -- Sovereign Dreadstone
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Feet"] = {
        {type = "spell", id = 44528}, -- Boots - Greater Fortitude
        {type = "item", id = 40129}, -- Sovereign Dreadstone
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Finger 1"] = {
        {type = "item", id = 40166} -- Vivid Eye of Zul
    },
    ["Finger 2"] = {
        {type = "item", id = 40129} -- Sovereign Dreadstone
    },
    ["Weapon"] = {
        {type = "spell", id = 59619}, -- Weapon - Accuracy
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Off hand"] = {
        {type = "spell", id = 62201}, -- Titanium Plating
        {type = "item", id = 40166} -- Vivid Eye of Zul
    }
}

BisTooltip_Enhancements["Paladin"]["Protection"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T9"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 62384}, -- Greater Inscription of the Gladiator
        {type = "item", id = 49110}, -- Nightmare Tear
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40129}, -- Sovereign Dreadstone
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["RS"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 44528}, -- Boots - Greater Fortitude
        {type = "item", id = 40166}, -- Vivid Eye of Zul
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T9"]["Weapon"],
    ["Off hand"] = {
        {type = "spell", id = 62201}, -- Titanium Plating
        {type = "item", id = 40129} -- Sovereign Dreadstone
    }
}

BisTooltip_Enhancements["Paladin"]["Protection"]["RS"] = {
    ["Head"] = {
        {type = "spell", id = 59955}, -- Arcanum of the Stalwart Protector
        {type = "item", id = 41380}, -- Austere Earthsiege Diamond
        {type = "item", id = 40141} -- Guardian's Dreadstone
    },
    ["Neck"] = {
        {type = "item", id = 40141} -- Guardian's Dreadstone
    },
    ["Shoulder"] = {
        {type = "spell", id = 62384}, -- Greater Inscription of the Gladiator
        {type = "item", id = 40166}, -- Vivid Eye of Zul
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40141}, -- Guardian's Dreadstone
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40141}, -- Guardian's Dreadstone
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["RS"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 44528}, -- Boots - Greater Fortitude
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Finger 2"] = {
        {type = "item", id = 40141} -- Guardian's Dreadstone
    },
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T9"]["Weapon"],
    ["Off hand"] = {
        {type = "spell", id = 62201}, -- Titanium Plating
        {type = "item", id = 40141} -- Guardian's Dreadstone
    }
}

-- -- Retribution (Paladin)
BisTooltip_Enhancements["Paladin"]["Retribution"] = {}
BisTooltip_Enhancements["Paladin"]["Retribution"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 42702}, -- Enchanted Tear
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Paladin"]["Retribution"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Paladin"]["Retribution"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    }
}

BisTooltip_Enhancements["Paladin"]["Retribution"]["T9"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40143} -- Etched Ametrine
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Chest"],
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40143} -- Etched Ametrine
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    }
}

BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 49110} -- Nightmare Tear
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40142} -- Inscribed Ametrine
    },
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40142}, -- Inscribed Ametrine
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    }
}

BisTooltip_Enhancements["Paladin"]["Retribution"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40142} -- Inscribed Ametrine
    },
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Weapon"]
}

-- Priest
BisTooltip_Enhancements["Priest"] = BisTooltip_Enhancements["Priest"] or {}

-- -- Discipline (Priest)
BisTooltip_Enhancements["Priest"]["Discipline"] = {}
BisTooltip_Enhancements["Priest"]["Discipline"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Head"],
    ["Shoulder"] = {
        {type = "spell", id = 59936}, -- Greater Inscription of the Crag
        {type = "item", id = 40051} -- Reckless Monarch Topaz
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40027} -- Royal Twilight Opal
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Discipline"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40047} -- Luminous Monarch Topaz
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40027}, -- Royal Twilight Opal
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Discipline"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40027} -- Royal Twilight Opal
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T8"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40012}, -- Brilliant Autumn's Glow
        {type = "item", id = 40012} -- Brilliant Autumn's Glow
    },
    ["Waist"] = {
        {type = "item", id = 40012}, -- Brilliant Autumn's Glow
        {type = "item", id = 40012}, -- Brilliant Autumn's Glow
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Discipline"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40151} -- Luminous Ametrine
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40134} -- Royal Dreadstone
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40151} -- Luminous Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40151}, -- Luminous Ametrine
        {type = "item", id = 40151}, -- Luminous Ametrine
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = {
        {type = "item", id = 40151} -- Luminous Ametrine
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Ranged"] = {
        {type = "item", id = 40151} -- Luminous Ametrine
    }
}

BisTooltip_Enhancements["Priest"]["Discipline"]["T10"] = {
    ["Head"] = {
        {type = "spell", id = 59960}, -- Arcanum of Blissful Mending
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 40134} -- Royal Dreadstone
    },
    ["Neck"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59936}, -- Greater Inscription of the Crag
        {type = "item", id = 40151} -- Luminous Ametrine
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40151}, -- Luminous Ametrine
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Priest"]["Discipline"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Ranged"]
}

-- -- Holy (Priest)
BisTooltip_Enhancements["Priest"]["Holy"] = {}
BisTooltip_Enhancements["Priest"]["Holy"]["PR"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 40047} -- Luminous Monarch Topaz
    },
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40047}, -- Luminous Monarch Topaz
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Holy"]["T7"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Neck"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Holy"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Priest"]["Holy"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40026}, -- Purified Twilight Opal
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40026}, -- Purified Twilight Opal
        {type = "item", id = 40047} -- Luminous Monarch Topaz
    },
    ["Waist"] = {
        {type = "item", id = 40047}, -- Luminous Monarch Topaz
        {type = "item", id = 40047}, -- Luminous Monarch Topaz
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40047} -- Luminous Monarch Topaz
    },
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Finger 2"] = {
        {type = "item", id = 40047} -- Luminous Monarch Topaz
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Holy"]["T9"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 40133} -- Purified Dreadstone
    },
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 40151} -- Luminous Ametrine
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40151} -- Luminous Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40151} -- Luminous Ametrine
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Finger 1"],
    ["Finger 2"] = {
        {type = "item", id = 40151} -- Luminous Ametrine
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Holy"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Priest"]["Holy"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Priest"]["Holy"]["T9"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40133} -- Purified Dreadstone
    },
    ["Chest"] = BisTooltip_Enhancements["Priest"]["Holy"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40151} -- Luminous Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Priest"]["Holy"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Priest"]["Holy"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Priest"]["Holy"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Priest"]["Holy"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Priest"]["Holy"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Priest"]["Holy"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Priest"]["Holy"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Ranged"]
}

-- -- Shadow (Priest)
BisTooltip_Enhancements["Priest"]["Shadow"] = {}
BisTooltip_Enhancements["Priest"]["Shadow"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40051} -- Reckless Monarch Topaz
    },
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Shadow"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Priest"]["Shadow"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Shadow"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40049} -- Veiled Monarch Topaz
    },
    ["Feet"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 60714}, -- Weapon - Mighty Spellpower
        {type = "item", id = 40026} -- Purified Twilight Opal
    },
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Priest"]["Shadow"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Ranged"] = {
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    }
}

BisTooltip_Enhancements["Priest"]["Shadow"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Priest"]["Shadow"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

-- Rogue
BisTooltip_Enhancements["Rogue"] = BisTooltip_Enhancements["Rogue"] or {}

-- -- Assassination (Rogue)
BisTooltip_Enhancements["Rogue"]["Assassination"] = {}
BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 40003} -- Precise Scarlet Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39999}, -- Bright Scarlet Ruby
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40003} -- Precise Scarlet Ruby
    },
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Waist"] = {
        {type = "item", id = 40014}, -- Rigid Autumn's Glow
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 40003} -- Precise Scarlet Ruby
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = {
        {type = "spell", id = 59621} -- Weapon - Berserking
    }
}

BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = {
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40003} -- Precise Scarlet Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 39999}, -- Bright Scarlet Ruby
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40003} -- Precise Scarlet Ruby
    },
    ["Neck"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 40003}, -- Precise Scarlet Ruby
        {type = "item", id = 40003} -- Precise Scarlet Ruby
    },
    ["Back"] = {
        {type = "spell", id = 60663}, -- Cloak - Major Agility
        {type = "item", id = 40052} -- Wicked Monarch Topaz
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40052}, -- Wicked Monarch Topaz
        {type = "item", id = 42702}, -- Enchanted Tear
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40052} -- Wicked Monarch Topaz
    },
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Waist"] = {
        {type = "item", id = 39999}, -- Bright Scarlet Ruby
        {type = "item", id = 39999}, -- Bright Scarlet Ruby
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 39999}, -- Bright Scarlet Ruby
        {type = "item", id = 39999}, -- Bright Scarlet Ruby
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 39999}, -- Bright Scarlet Ruby
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Finger 1"] = {
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Finger 2"] = {
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Weapon"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Off hand"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    }
}

BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40118} -- Precise Cardinal Ruby
    },
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 40118} -- Precise Cardinal Ruby
    },
    ["Back"] = {
        {type = "spell", id = 60663}, -- Cloak - Major Agility
        {type = "item", id = 40118} -- Precise Cardinal Ruby
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40114}, -- Bright Cardinal Ruby
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40114}, -- Bright Cardinal Ruby
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    },
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    },
    ["Waist"] = {
        {type = "item", id = 40156}, -- Wicked Ametrine
        {type = "item", id = 40114}, -- Bright Cardinal Ruby
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40114}, -- Bright Cardinal Ruby
        {type = "item", id = 40114}, -- Bright Cardinal Ruby
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    },
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 40156}, -- Wicked Ametrine
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    },
    ["Finger 1"] = {
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    },
    ["Finger 2"] = {
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    },
    ["Weapon"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40156} -- Wicked Ametrine
    },
    ["Off hand"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40156} -- Wicked Ametrine
    },
    ["Ranged"] = {
        {type = "item", id = 40156} -- Wicked Ametrine
    }
}

BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    },
    ["Neck"] = {
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    },
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    },
    ["Back"] = {
        {type = "spell", id = 60663}, -- Cloak - Major Agility
        {type = "item", id = 40159} -- Stark Ametrine
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40114}, -- Bright Cardinal Ruby
        {type = "item", id = 49110}, -- Nightmare Tear
        {type = "item", id = 40159} -- Stark Ametrine
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40159} -- Stark Ametrine
    },
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40114}, -- Bright Cardinal Ruby
        {type = "item", id = 40114}, -- Bright Cardinal Ruby
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40114}, -- Bright Cardinal Ruby
        {type = "item", id = 40159} -- Stark Ametrine
    },
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 40159}, -- Stark Ametrine
        {type = "item", id = 40159} -- Stark Ametrine
    },
    ["Finger 1"] = {
        {type = "item", id = 40159} -- Stark Ametrine
    },
    ["Finger 2"] = {
        {type = "item", id = 40159} -- Stark Ametrine
    },
    ["Weapon"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40159} -- Stark Ametrine
    },
    ["Off hand"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    },
    ["Ranged"] = {
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    }
}

BisTooltip_Enhancements["Rogue"]["Assassination"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40125} -- Rigid King's Amber
    },
    ["Shoulder"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 60663}, -- Cloak - Major Agility
        {type = "item", id = 40125} -- Rigid King's Amber
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40114}, -- Bright Cardinal Ruby
        {type = "item", id = 49110}, -- Nightmare Tear
        {type = "item", id = 40125} -- Rigid King's Amber
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    },
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Off hand"],
    ["Ranged"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Ranged"]
}

-- -- Combat (Rogue)
BisTooltip_Enhancements["Rogue"]["Combat"] = {}
BisTooltip_Enhancements["Rogue"]["Combat"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Chest"],
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Rogue"]["Combat"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Rogue"]["Combat"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Hands"],
    ["Legs"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Rogue"]["Combat"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 39999}, -- Bright Scarlet Ruby
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 39999}, -- Bright Scarlet Ruby
        {type = "item", id = 40052} -- Wicked Monarch Topaz
    },
    ["Waist"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40052} -- Wicked Monarch Topaz
    },
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Off hand"],
    ["Ranged"] = {
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    }
}

BisTooltip_Enhancements["Rogue"]["Combat"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 60663}, -- Cloak - Major Agility
        {type = "item", id = 40114} -- Bright Cardinal Ruby
    },
    ["Chest"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Feet"],
    ["Finger 1"] = {
        {type = "item", id = 40156} -- Wicked Ametrine
    },
    ["Finger 2"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Off hand"],
    ["Ranged"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Rogue"]["Combat"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Waist"] = {
        {type = "item", id = 49110}, -- Nightmare Tear
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["RS"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Off hand"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Ranged"] = {
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    }
}

BisTooltip_Enhancements["Rogue"]["Combat"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["RS"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Off hand"],
    ["Ranged"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Ranged"]
}

-- Shaman
BisTooltip_Enhancements["Shaman"] = BisTooltip_Enhancements["Shaman"] or {}

-- -- Elemental (Shaman)
BisTooltip_Enhancements["Shaman"]["Elemental"] = {}
BisTooltip_Enhancements["Shaman"]["Elemental"]["PR"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41285}, -- Chaotic Skyflare Diamond
        {type = "item", id = 40027} -- Royal Twilight Opal
    },
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T7"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40049} -- Veiled Monarch Topaz
    },
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 40051} -- Reckless Monarch Topaz
    },
    ["Finger 1"] = {
        {type = "item", id = 40027} -- Royal Twilight Opal
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Shaman"]["Elemental"]["T7"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41285}, -- Chaotic Skyflare Diamond
        {type = "item", id = 40100} -- Lambent Forest Emerald
    },
    ["Neck"] = {
        {type = "item", id = 40100} -- Lambent Forest Emerald
    },
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40049} -- Veiled Monarch Topaz
    },
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Elemental"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Mage"]["Fire"]["T8"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40027} -- Royal Twilight Opal
    },
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40027} -- Royal Twilight Opal
    },
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Weapon"],
    ["Off hand"] = {
        {type = "spell", id = 60653}, -- Shield - Greater Intellect
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    }
}

BisTooltip_Enhancements["Shaman"]["Elemental"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40134} -- Royal Dreadstone
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40134}, -- Royal Dreadstone
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = {
        {type = "spell", id = 60653}, -- Shield - Greater Intellect
        {type = "item", id = 40155} -- Reckless Ametrine
    }
}

BisTooltip_Enhancements["Shaman"]["Elemental"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 40134}, -- Royal Dreadstone
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Shaman"]["Elemental"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Shaman"]["Elemental"]["T9"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Elemental"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Shaman"]["Elemental"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Shaman"]["Elemental"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Shaman"]["Elemental"]["T9"]["Off hand"]
}

-- -- Enhancement (Shaman)
BisTooltip_Enhancements["Shaman"]["Enhancement"] = {}
BisTooltip_Enhancements["Shaman"]["Enhancement"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Shoulder"] = {
        {type = "spell", id = 59934} -- Greater Inscription of the Axe
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40017}, -- Quick Autumn's Glow
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Feet"],
    ["Finger 1"] = {
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Enhancement"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 42702} -- Enchanted Tear
    },
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 39999} -- Bright Scarlet Ruby
    },
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40053}, -- Pristine Monarch Topaz
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Feet"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Enhancement"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 40055} -- Stark Monarch Topaz
    },
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Chest"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["PR"]["Chest"],
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Waist"] = {
        {type = "item", id = 40017}, -- Quick Autumn's Glow
        {type = "item", id = 40017}, -- Quick Autumn's Glow
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40017}, -- Quick Autumn's Glow
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 40017}, -- Quick Autumn's Glow
        {type = "item", id = 40055} -- Stark Monarch Topaz
    },
    ["Finger 1"] = {
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Off hand"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40055} -- Stark Monarch Topaz
    }
}

BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Neck"] = {
        {type = "item", id = 40159} -- Stark Ametrine
    },
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40159} -- Stark Ametrine
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40159}, -- Stark Ametrine
        {type = "item", id = 49110}, -- Nightmare Tear
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Wrist"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Waist"] = {
        {type = "item", id = 40128}, -- Quick King's Amber
        {type = "item", id = 40159}, -- Stark Ametrine
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40128}, -- Quick King's Amber
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 40128}, -- Quick King's Amber
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Finger 1"] = {
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Finger 2"] = {
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40128} -- Quick King's Amber
    }
}

BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40118} -- Precise Cardinal Ruby
    },
    ["Neck"] = {
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Shoulder"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40118}, -- Precise Cardinal Ruby
        {type = "item", id = 49110}, -- Nightmare Tear
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40118} -- Precise Cardinal Ruby
    },
    ["Waist"] = {
        {type = "item", id = 40128}, -- Quick King's Amber
        {type = "item", id = 40128}, -- Quick King's Amber
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40118}, -- Precise Cardinal Ruby
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Feet"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40118} -- Precise Cardinal Ruby
    },
    ["Off hand"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40118} -- Precise Cardinal Ruby
    }
}

BisTooltip_Enhancements["Shaman"]["Enhancement"]["RS"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40162} -- Accurate Ametrine
    },
    ["Neck"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40162} -- Accurate Ametrine
    },
    ["Chest"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40128}, -- Quick King's Amber
        {type = "item", id = 40118}, -- Precise Cardinal Ruby
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Legs"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Off hand"]
}

-- -- Restoration (Shaman)
BisTooltip_Enhancements["Shaman"]["Restoration"] = {}
BisTooltip_Enhancements["Shaman"]["Restoration"]["PR"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 40105} -- Energized Forest Emerald
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 44509}, -- Chest - Greater Mana Restoration
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40017} -- Quick Autumn's Glow
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40017}, -- Quick Autumn's Glow
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 55634} -- Sapphire Spellthread
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Restoration"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Priest"]["Holy"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40027} -- Royal Twilight Opal
    },
    ["Chest"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55634}, -- Sapphire Spellthread
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40027} -- Royal Twilight Opal
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Restoration"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T8"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 44509}, -- Chest - Greater Mana Restoration
        {type = "item", id = 40017}, -- Quick Autumn's Glow
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T7"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55634}, -- Sapphire Spellthread
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40105} -- Energized Forest Emerald
    },
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40105} -- Energized Forest Emerald
    },
    ["Finger 1"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Shaman"]["Elemental"]["T8"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 40179} -- Energized Eye of Zul
    },
    ["Neck"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 44509}, -- Chest - Greater Mana Restoration
        {type = "item", id = 40128}, -- Quick King's Amber
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Wrist"] = {
        {type = "spell", id = 60767}, -- Bracer - Superior Spellpower
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Waist"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55634}, -- Sapphire Spellthread
        {type = "item", id = 40128}, -- Quick King's Amber
        {type = "item", id = 40128}, -- Quick King's Amber
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 40128}, -- Quick King's Amber
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Finger 1"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = {
        {type = "spell", id = 60653}, -- Shield - Greater Intellect
        {type = "item", id = 40128} -- Quick King's Amber
    }
}

BisTooltip_Enhancements["Shaman"]["Restoration"]["T10"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41401}, -- Insightful Earthsiege Diamond
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Neck"] = {
        {type = "item", id = 40179} -- Energized Eye of Zul
    },
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Back"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40128}, -- Quick King's Amber
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Waist"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55634}, -- Sapphire Spellthread
        {type = "item", id = 40155}, -- Reckless Ametrine
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Feet"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Restoration"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
        {type = "item", id = 40128}, -- Quick King's Amber
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Waist"] = {
        {type = "item", id = 40128}, -- Quick King's Amber
        {type = "item", id = 40155}, -- Reckless Ametrine
        {type = "item", id = 40128} -- Quick King's Amber
    },
    ["Legs"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Off hand"]
}

-- Warlock
BisTooltip_Enhancements["Warlock"] = BisTooltip_Enhancements["Warlock"] or {}

-- -- Affliction (Warlock)
BisTooltip_Enhancements["Warlock"]["Affliction"] = {}
BisTooltip_Enhancements["Warlock"]["Affliction"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Head"],
    ["Shoulder"] = {
        {type = "spell", id = 59937}, -- Greater Inscription of the Storm
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40049} -- Veiled Monarch Topaz
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 33990} -- Chest - Major Spirit
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40049}, -- Veiled Monarch Topaz
        {type = "item", id = 40049} -- Veiled Monarch Topaz
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Warlock"]["Affliction"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 33990}, -- Chest - Major Spirit
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40049} -- Veiled Monarch Topaz
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Warlock"]["Affliction"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 33990}, -- Chest - Major Spirit
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40051} -- Reckless Monarch Topaz
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Legs"],
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40049} -- Veiled Monarch Topaz
    },
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Priest"]["Shadow"]["T8"]["Weapon"],
    ["Ranged"] = {
        {type = "item", id = 40051} -- Reckless Monarch Topaz
    }
}

BisTooltip_Enhancements["Warlock"]["Affliction"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 33990}, -- Chest - Major Spirit
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40155}, -- Reckless Ametrine
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Off hand"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Affliction"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 33990}, -- Chest - Major Spirit
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40155} -- Reckless Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Affliction"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Warlock"]["Affliction"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Warlock"]["Affliction"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

-- -- Demonology (Warlock)
BisTooltip_Enhancements["Warlock"]["Demonology"] = {}
BisTooltip_Enhancements["Warlock"]["Demonology"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Warlock"]["Affliction"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40049} -- Veiled Monarch Topaz
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Warlock"]["Affliction"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Demonology"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Warlock"]["Demonology"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Shaman"]["Elemental"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Priest"]["Shadow"]["T8"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Demonology"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40133} -- Purified Dreadstone
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Weapon"],
    ["Off hand"] = {
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Ranged"] = BisTooltip_Enhancements["Priest"]["Shadow"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Demonology"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40133}, -- Purified Dreadstone
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40153} -- Veiled Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40153}, -- Veiled Ametrine
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 40113}, -- Runed Cardinal Ruby
        {type = "item", id = 40113} -- Runed Cardinal Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["RS"]["Finger 1"],
    ["Finger 2"] = {
        {type = "item", id = 40153} -- Veiled Ametrine
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Demonology"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Warlock"]["Demonology"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Warlock"]["Demonology"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Warlock"]["Demonology"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["RS"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Warlock"]["Demonology"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Ranged"]
}

-- -- Destruction (Warlock)
BisTooltip_Enhancements["Warlock"]["Destruction"] = {}
BisTooltip_Enhancements["Warlock"]["Destruction"]["PR"] = {
    ["Head"] = {
        {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
        {type = "item", id = 41285}, -- Chaotic Skyflare Diamond
        {type = "item", id = 40099} -- Shining Forest Emerald
    },
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 40014}, -- Rigid Autumn's Glow
        {type = "item", id = 40014} -- Rigid Autumn's Glow
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Finger 1"] = {
        {type = "item", id = 40099} -- Shining Forest Emerald
    },
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Destruction"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Fire"]["PR"]["Head"],
    ["Neck"] = {
        {type = "item", id = 40099} -- Shining Forest Emerald
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 47898}, -- Cloak - Greater Speed
        {type = "item", id = 40099} -- Shining Forest Emerald
    },
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Warlock"]["Destruction"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["T8"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 55631}, -- Brilliant Spellthread
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 39998}, -- Runed Scarlet Ruby
        {type = "item", id = 39998} -- Runed Scarlet Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Warlock"]["Affliction"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Fire"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Priest"]["Shadow"]["T8"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Destruction"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = {
        {type = "spell", id = 60767}, -- Bracer - Superior Spellpower
        {type = "item", id = 40153} -- Veiled Ametrine
    },
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Warlock"]["Demonology"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Destruction"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Warlock"]["Affliction"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Destruction"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["RS"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Warlock"]["Affliction"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

-- Warrior
BisTooltip_Enhancements["Warrior"] = BisTooltip_Enhancements["Warrior"] or {}

-- -- Arms (Warrior)
BisTooltip_Enhancements["Warrior"]["Arms"] = {}
BisTooltip_Enhancements["Warrior"]["Arms"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40038} -- Etched Monarch Topaz
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Feet"],
    ["Finger 1"] = {
        {type = "item", id = 40038} -- Etched Monarch Topaz
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Warrior"]["Arms"]["T7"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 40037} -- Inscribed Monarch Topaz
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 42702}, -- Enchanted Tear
        {type = "item", id = 40037} -- Inscribed Monarch Topaz
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
}

BisTooltip_Enhancements["Warrior"]["Arms"]["T8"] = {
    ["Head"] = {
        {type = "spell", id = 59954}, -- Arcanum of Torment
        {type = "item", id = 41398}, -- Relentless Earthsiege Diamond
        {type = "item", id = 40038} -- Etched Monarch Topaz
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 40038}, -- Etched Monarch Topaz
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    },
    ["Back"] = {
        {type = "spell", id = 60663}, -- Cloak - Major Agility
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 40037} -- Inscribed Monarch Topaz
    },
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T8"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40002}, -- Fractured Scarlet Ruby
        {type = "item", id = 40002} -- Fractured Scarlet Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40002}, -- Fractured Scarlet Ruby
        {type = "item", id = 40002}, -- Fractured Scarlet Ruby
        {type = "item", id = 40002} -- Fractured Scarlet Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 42702} -- Enchanted Tear
    },
    ["Ranged"] = {
        {type = "item", id = 39996} -- Bold Scarlet Ruby
    }
}

BisTooltip_Enhancements["Warrior"]["Arms"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["RS"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Ranged"]
}

BisTooltip_Enhancements["Warrior"]["Arms"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["RS"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["RS"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Chest"],
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40125} -- Rigid King's Amber
    },
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40125} -- Rigid King's Amber
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Feet"] = {
        {type = "spell", id = 60763}, -- Boots - Greater Assault
        {type = "item", id = 40125}, -- Rigid King's Amber
        {type = "item", id = 40125} -- Rigid King's Amber
    },
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Ranged"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Ranged"]
}

BisTooltip_Enhancements["Warrior"]["Arms"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["RS"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["RS"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Chest"],
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40143} -- Etched Ametrine
    },
    ["Hands"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Feet"],
    ["Finger 1"] = {
        {type = "item", id = 40143} -- Etched Ametrine
    },
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Weapon"],
    ["Ranged"] = {
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    }
}

-- -- Fury (Warrior)
BisTooltip_Enhancements["Warrior"]["Fury"] = {}
BisTooltip_Enhancements["Warrior"]["Fury"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Shoulder"] = {
        {type = "spell", id = 59934}, -- Greater Inscription of the Axe
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 40038} -- Etched Monarch Topaz
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Warrior"]["Arms"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Warrior"]["Fury"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Warrior"]["Fury"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T8"]["Back"],
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 39996}, -- Bold Scarlet Ruby
        {type = "item", id = 42702} -- Enchanted Tear
    },
    ["Wrist"] = {
        {type = "spell", id = 44575}, -- Bracer - Greater Assault
        {type = "item", id = 40037} -- Inscribed Monarch Topaz
    },
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40037} -- Inscribed Monarch Topaz
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Weapon"],
    ["Off hand"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40002}, -- Fractured Scarlet Ruby
        {type = "item", id = 40002} -- Fractured Scarlet Ruby
    },
    ["Ranged"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Warrior"]["Fury"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Hands"],
    ["Waist"] = {
        {type = "item", id = 40142}, -- Inscribed Ametrine
        {type = "item", id = 40142}, -- Inscribed Ametrine
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Finger 1"],
    ["Finger 2"] = {
        {type = "item", id = 40142} -- Inscribed Ametrine
    },
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T9"]["Weapon"],
    ["Off hand"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Ranged"] = BisTooltip_Enhancements["Warrior"]["Arms"]["RS"]["Ranged"]
}

BisTooltip_Enhancements["Warrior"]["Fury"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Warrior"]["Arms"]["RS"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40125}, -- Rigid King's Amber
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60582}, -- Icescale Leg Armor
        {type = "item", id = 40125}, -- Rigid King's Amber
        {type = "item", id = 49110} -- Nightmare Tear
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T10"]["Weapon"],
    ["Off hand"] = {
        {type = "spell", id = 59621}, -- Weapon - Berserking
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117}, -- Fractured Cardinal Ruby
        {type = "item", id = 40117} -- Fractured Cardinal Ruby
    },
    ["Ranged"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Ranged"]
}

BisTooltip_Enhancements["Warrior"]["Fury"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["RS"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 60668}, -- Gloves - Crusher
        {type = "item", id = 40143}, -- Etched Ametrine
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Waist"] = {
        {type = "item", id = 40143}, -- Etched Ametrine
        {type = "item", id = 40111}, -- Bold Cardinal Ruby
        {type = "item", id = 40111} -- Bold Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["RS"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T10"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Warrior"]["Fury"]["T10"]["Off hand"],
    ["Ranged"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Ranged"]
}

-- -- Protection (Warrior)
BisTooltip_Enhancements["Warrior"]["Protection"] = {}
BisTooltip_Enhancements["Warrior"]["Protection"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Head"],
    ["Shoulder"] = {
        {type = "spell", id = 62384}, -- Greater Inscription of the Gladiator
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40008} -- Solid Sky Sapphire
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44529}, -- Gloves - Major Agility
        {type = "item", id = 40034} -- Guardian's Twilight Opal
    },
    ["Waist"] = {
        {type = "item", id = 40089} -- Enduring Forest Emerald
    },
    ["Legs"] = {
        {type = "spell", id = 60581}, -- Frosthide Leg Armor
        {type = "item", id = 40034} -- Guardian's Twilight Opal
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Protection"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Protection"]["PR"]["Off hand"],
    ["Ranged"] = {
        {type = "item", id = 40008} -- Solid Sky Sapphire
    }
}

BisTooltip_Enhancements["Warrior"]["Protection"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T8"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44529}, -- Gloves - Major Agility
        {type = "item", id = 40023} -- Shifting Twilight Opal
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Protection"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Protection"]["PR"]["Off hand"],
    ["Ranged"] = BisTooltip_Enhancements["Warrior"]["Protection"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Warrior"]["Protection"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T8"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 60663}, -- Cloak - Major Agility
        {type = "item", id = 40023} -- Shifting Twilight Opal
    },
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = {
        {type = "spell", id = 44529}, -- Gloves - Major Agility
        {type = "item", id = 40023}, -- Shifting Twilight Opal
        {type = "item", id = 40088} -- Vivid Forest Emerald
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Waist"],
    ["Legs"] = {
        {type = "spell", id = 60581}, -- Frosthide Leg Armor
        {type = "item", id = 40023}, -- Shifting Twilight Opal
        {type = "item", id = 40008}, -- Solid Sky Sapphire
        {type = "item", id = 40088} -- Vivid Forest Emerald
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Finger 1"],
    ["Weapon"] = {
        {type = "spell", id = 59619}, -- Weapon - Accuracy
        {type = "item", id = 40023} -- Shifting Twilight Opal
    },
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T8"]["Off hand"]
}

BisTooltip_Enhancements["Warrior"]["Protection"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 60663}, -- Cloak - Major Agility
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40130}, -- Shifting Dreadstone
        {type = "item", id = 40166}, -- Vivid Eye of Zul
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Wrist"] = {
        {type = "spell", id = 62256}, -- Bracer - Major Stamina
        {type = "item", id = 40130} -- Shifting Dreadstone
    },
    ["Hands"] = {
        {type = "spell", id = 44529}, -- Gloves - Major Agility
        {type = "item", id = 40166} -- Vivid Eye of Zul
    },
    ["Waist"] = {
        {type = "item", id = 40130}, -- Shifting Dreadstone
        {type = "item", id = 40119}, -- Solid Majestic Zircon
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Legs"] = {
        {type = "spell", id = 60581}, -- Frosthide Leg Armor
        {type = "item", id = 40130}, -- Shifting Dreadstone
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Feet"] = {
        {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
        {type = "item", id = 40130}, -- Shifting Dreadstone
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Finger 1"] = {
        {type = "item", id = 40130} -- Shifting Dreadstone
    },
    ["Finger 2"] = {
        {type = "item", id = 40166} -- Vivid Eye of Zul
    },
    ["Weapon"] = {
        {type = "spell", id = 59619}, -- Weapon - Accuracy
        {type = "item", id = 40166} -- Vivid Eye of Zul
    },
    ["Off hand"] = {
        {type = "spell", id = 62201}, -- Titanium Plating
        {type = "item", id = 40119} -- Solid Majestic Zircon
    }
}

BisTooltip_Enhancements["Warrior"]["Protection"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Protection"]["RS"]["Shoulder"],
    ["Back"] = {
        {type = "spell", id = 60663}, -- Cloak - Major Agility
        {type = "item", id = 40166} -- Vivid Eye of Zul
    },
    ["Chest"] = {
        {type = "spell", id = 60692}, -- Chest - Powerful Stats
        {type = "item", id = 40130}, -- Shifting Dreadstone
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Wrist"] = {
        {type = "spell", id = 62256}, -- Bracer - Major Stamina
        {type = "item", id = 40166} -- Vivid Eye of Zul
    },
    ["Hands"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T9"]["Waist"],
    ["Legs"] = {
        {type = "item", id = 40166}, -- Vivid Eye of Zul
        {type = "item", id = 40119} -- Solid Majestic Zircon
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Finger 2"] = {
        {type = "item", id = 40130} -- Shifting Dreadstone
    },
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T9"]["Weapon"],
    ["Off hand"] = {
        {type = "spell", id = 62201}, -- Titanium Plating
        {type = "item", id = 40130} -- Shifting Dreadstone
    },
    ["Ranged"] = {
        {type = "item", id = 40119} -- Solid Majestic Zircon
    }
}

BisTooltip_Enhancements["Warrior"]["Protection"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Paladin"]["Protection"]["RS"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Paladin"]["Protection"]["RS"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Protection"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Protection"]["RS"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T9"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T10"]["Off hand"],
    ["Ranged"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T10"]["Ranged"]
}