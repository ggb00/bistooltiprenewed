-- Enhancements.lua
BisTooltip_Enhancements = BisTooltip_Enhancements or {}

-- It's possible to use variables,
-- Example: if T10 uses the exact same enchants as T9, just do this:
-- BisTooltip_Enhancements["Mage"]["Arcane"]["T10"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]

-- BisTooltip_Enhancements["Mage"]["Fire FFB"]["T10"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]
-- -- -- -- -- -- --

-- 1 = Enchant (Spell ID)
-- 2 = Meta Gem / Socket 1 (Item ID)
-- 3 = Socket 2 (Item ID)
-- 4 = Socket 3 / Belt Buckle (Item ID)
-- -- -- -- -- -- --

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
    
-- Rings (Check your generated lua file! It will either use the numbered versions OR the single version)

-- ["Finger 1"] = {},
-- ["Finger 2"] = {},
-- ["Finger"] = {},   -- Mages/Warlocks usually just have "Finger"
    
    -- Trinkets (Same rule as Rings)
-- ["Trinket 1"] = {},
-- ["Trinket 2"] = {},
-- ["Trinket"] = {},  -- Mages/Warlocks usually just have "Trinket"
    
-- Weapons (Varies based on dual-wielding vs 2-Handers)
-- ["Weapon"] = {},
-- ["Main hand"] = {},
-- ["Two hand"] = {},
-- ["Off hand"] = {},
    
-- Relics / Bows / Wands
-- ["Ranged"] = {}
-- -- -- -- -- -- --

-- Class -> Spec -> Phase -> Slot
BisTooltip_Enhancements["Mage"] = {
    
    ["Arcane"] = {
        ["PR"] = {
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
        },
        ["T7"] = {
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
                {type = "item", id = 40051} -- Reckless Monarch Topaz
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
            ["Hands"] = {
                {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
                {type = "item", id = 39998} -- Runed Scarlet Ruby
            },
            ["Waist"] = {
                {type = "item", id = 39998} -- Runed Scarlet Ruby
            },
            ["Legs"] = {
                {type = "spell", id = 55631}, -- Brilliant Spellthread
                {type = "item", id = 39998}, -- Runed Scarlet Ruby
                {type = "item", id = 40051} -- Reckless Monarch Topaz
            },
            ["Feet"] = {
                {type = "spell", id = 47901} -- Boots - Tuskarr's Vitality
            },
            ["Weapon"] = {
                {type = "spell", id = 60714} -- Weapon - Mighty Spellpower
            }
        },
        ["T8"] = {
            ["Head"] = {
                {type = "spell", id = 59970}, -- Arcanum of Burning Mysteries
                {type = "item", id = 41285}, -- Chaotic Skyflare Diamond
                {type = "item", id = 39998} -- Runed Scarlet Ruby
            },
            ["Neck"] = {
                {type = "item", id = 39998} -- Runed Scarlet Ruby
            },
            ["Shoulder"] = {
                {type = "spell", id = 59937}, -- Greater Inscription of the Storm
                {type = "item", id = 39998} -- Runed Scarlet Ruby
            },
            ["Back"] = {
                {type = "spell", id = 47898}, -- Cloak - Greater Speed
                {type = "item", id = 39998} -- Runed Scarlet Ruby
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
            ["Hands"] = {
                {type = "spell", id = 44592}, -- Gloves - Exceptional Spellpower
                {type = "item", id = 39998}, -- Runed Scarlet Ruby
                {type = "item", id = 39998} -- Runed Scarlet Ruby
            },
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
            ["Finger 2"] = {
                {type = "item", id = 39998} -- Runed Scarlet Ruby
            },
            ["Weapon"] = {
                {type = "spell", id = 60714} -- Weapon - Mighty Spellpower
            }
        }
    },

    ["Fire"] = {
        ["PR"] = {
            ["Head"] = {
                {type = "spell", id = 60714}
            }
        }
    },

    ["Fire FFB"] = {
        ["PR"] = {
            ["Weapon"] = {
                {type = "spell", id = 60714}
            }
        }
    },

    ["Frost"] = {
        ["PR"] = {
            ["Hands"] = {
                {type = "spell", id = 44592}
            }
        }
    }
}
