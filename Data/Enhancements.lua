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
    ["Head"] = {
        {type = "spell", id = 59970},
        {type = "item", id = 41285}, 
        {type = "item", id = 40051}
    }
}

--        ["T7"] = {
--            ["Head"] = {
--                {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
--                {type = "item", id = 41285}, -- Chaotic Skyflare Diamond
--                {type = "item", id = 39998} -- Runed Scarlet Ruby
--            },
--            ["Neck"] = {
--                {type = "item", id = 40026} -- Purified Twilight Opal
--            },
--            ["Shoulder"] = {
--                {type = "spell", id = 59937}, -- Greater Inscription of the Storm
--                {type = "item", id = 40051} -- Reckless Monarch Topaz
--            },
--            ["Back"] = {
--                {type = "spell", id = 47898}, -- Cloak - Greater Speed
--                {type = "item", id = 40026} -- Purified Twilight Opal
--            },
--            ["Chest"] = {
--                {type = "spell", id = 60692}, -- Chest - Powerful Stats
--                {type = "item", id = 39998}, -- Runed Scarlet Ruby
--                {type = "item", id = 39998} -- Runed Scarlet Ruby
--            },
--            ["Wrist"] = {
--                {type = "spell", id = 60767}, -- Bracer - Superior Spellpower
--                {type = "item", id = 39998} -- Runed Scarlet Ruby
--            },
--            ["Hands"] = {
--                {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
--                {type = "item", id = 39998} -- Runed Scarlet Ruby
--            },
--            ["Waist"] = {
--                {type = "item", id = 39998} -- Runed Scarlet Ruby
--            },
--            ["Legs"] = {
--                {type = "spell", id = 55631}, -- Brilliant Spellthread
--                {type = "item", id = 39998}, -- Runed Scarlet Ruby
--                {type = "item", id = 40051} -- Reckless Monarch Topaz
--            },
--            ["Feet"] = {
--                {type = "spell", id = 47901} -- Boots - Tuskarr's Vitality
--            },
--            ["Weapon"] = {
--                {type = "spell", id = 60714} -- Weapon - Mighty Spellpower
--            }
--        },
--        ["T8"] = {
--            ["Head"] = {
--                {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
--                {type = "item", id = 41285}, -- Chaotic Skyflare Diamond
--                {type = "item", id = 39998} -- Runed Scarlet Ruby
--            },
--            ["Neck"] = {
--                {type = "item", id = 39998} -- Runed Scarlet Ruby
--            },
--            ["Shoulder"] = {
--                {type = "spell", id = 59937}, -- Greater Inscription of the Storm
--                {type = "item", id = 39998} -- Runed Scarlet Ruby
--            },
--            ["Back"] = {
--                {type = "spell", id = 47898}, -- Cloak - Greater Speed
--                {type = "item", id = 39998} -- Runed Scarlet Ruby
--            },
--            ["Chest"] = {
--                {type = "spell", id = 60692}, -- Chest - Powerful Stats
--                {type = "item", id = 39998}, -- Runed Scarlet Ruby
--                {type = "item", id = 39998} -- Runed Scarlet Ruby
--            },
--            ["Wrist"] = {
--                {type = "spell", id = 60767}, -- Bracer - Superior Spellpower
--                {type = "item", id = 39998} -- Runed Scarlet Ruby
--            },
--            ["Hands"] = {
--                {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
--                {type = "item", id = 39998}, -- Runed Scarlet Ruby
--                {type = "item", id = 39998} -- Runed Scarlet Ruby
--            },
--            ["Waist"] = {
--                {type = "item", id = 40051}, -- Reckless Monarch Topaz
--                {type = "item", id = 40051}, -- Reckless Monarch Topaz
--                {type = "item", id = 39998} -- Runed Scarlet Ruby
--            },
--            ["Legs"] = {
--                {type = "spell", id = 55631}, -- Brilliant Spellthread
--                {type = "item", id = 39998}, -- Runed Scarlet Ruby
--                {type = "item", id = 40051}, -- Reckless Monarch Topaz
--                {type = "item", id = 40026} -- Purified Twilight Opal
--            },
--            ["Feet"] = {
--                {type = "spell", id = 47901}, -- Boots - Tuskarr's Vitality
--                {type = "item", id = 39998}, -- Runed Scarlet Ruby
--                {type = "item", id = 39998} -- Runed Scarlet Ruby
--            },
--            ["Finger 1"] = {
--                {type = "item", id = 40026} -- Purified Twilight Opal
--            },
--            ["Finger 2"] = {
--                {type = "item", id = 39998} -- Runed Scarlet Ruby
--            },
--            ["Weapon"] = {
--                {type = "spell", id = 60714} -- Weapon - Mighty Spellpower
--            }
