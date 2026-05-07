-- Tooltip.lua
local eventFrame = CreateFrame("Frame", nil, UIParent)
local tooltip_cache = {}

local HARDCODED_CLASS_COLORS = {["DEATHKNIGHT"] = {0.77, 0.12, 0.23}, ["DRUID"]   = {1.00, 0.49, 0.04},["HUNTER"]      = {0.67, 0.83, 0.45},["MAGE"]    = {0.25, 0.78, 0.92},["PALADIN"]     = {0.96, 0.55, 0.73}, ["PRIEST"]  = {1.00, 1.00, 1.00},["ROGUE"]       = {1.00, 0.96, 0.41},["SHAMAN"]  = {0.00, 0.44, 0.87},["WARLOCK"]     = {0.53, 0.53, 0.93},["WARRIOR"] = {0.78, 0.61, 0.43},
}

local highlight_colors = {
    ["purple"] = {0.8, 0.3, 1.0},
    ["green"] = {0.1, 1.0, 0.1},
    ["red"] = {1.0, 0.2, 0.2},
    ["lightblue"] = {0.3, 0.8, 1.0},
    ["yellow"] = {1.0, 0.82, 0.0}
}

local function specHighlighted(class_name, spec_name)
    if not BisTooltipAddon.db.char.highlight_spec then return false end
    return (BisTooltipAddon.db.char.highlight_spec.spec_name == spec_name and
            BisTooltipAddon.db.char.highlight_spec.class_name == class_name)
end

local function specFiltered(class_name, spec_name)
    if specHighlighted(class_name, spec_name) then return false end
    if IsAltKeyDown() then return false end
    if BisTooltipAddon.db.char.filter_specs and BisTooltipAddon.db.char.filter_specs[class_name] then
        return BisTooltipAddon.db.char.filter_specs[class_name][spec_name] == true
    end
    return false
end

local DataStore_Inventory = DataStore_Inventory or nil
local function GetItemSource(itemId)
    local source
    local function formatInstanceName(instance)
        local tmpInstance = string.lower(instance)
        if tmpInstance == "the obsidian sanctum (heroic)" then instance = "The Obsidian Sanctum(25)"
        elseif tmpInstance == "the eye of eternity (heroic)" then instance = "The Eye Of Eternity (25)"
        elseif tmpInstance == "naxxramas (heroic)" then instance = "Naxxramas (25)"
        elseif tmpInstance == "ulduar (heroic)" then instance = "Ulduar (25)"
        end
        return instance
    end

    if lootTable then
        for zone, bosses in pairs(lootTable) do
            for boss, items in pairs(bosses) do
                for _, id in ipairs(items) do
                    if id == itemId then
                        return "|cFFFFFFFFSource:|r |cFF00FF00[" .. formatInstanceName(zone) .. "] - " .. boss .. "|r"
                    end
                end
            end
        end
    end

    if not source and DataStore_Inventory then
        local Instance, Boss = DataStore_Inventory:GetSource(itemId)
        if Instance and Boss then return "|cFFFFFFFFSource:|r |cFF00FF00[" .. formatInstanceName(Instance) .. "] - " .. Boss .. "|r" end
    end
    return nil
end

local function OnGameTooltipSetItem(tooltip)
    if BisTooltipAddon.db.char.tooltip_with_ctrl and not IsControlKeyDown() then return end

    local _, link = tooltip:GetItem()
    if not link then return end

    local itemId = tonumber(string.match(link, "item:(%d+)"))
    if not itemId then return end

    if tooltip_cache[itemId] then
        for _, line in ipairs(tooltip_cache[itemId]) do
            tooltip:AddDoubleLine(line.left, line.right, line.r1, line.g1, line.b1, line.r2, line.g2, line.b2)
        end
    else
        local itemBisData = BisTooltipAddon.ReverseLookup and BisTooltipAddon.ReverseLookup[itemId]

        if itemBisData then
            local cached_lines = {} 
            local sortedClasses = {}
            for class in pairs(itemBisData) do table.insert(sortedClasses, class) end
            table.sort(sortedClasses)

            for _, class in ipairs(sortedClasses) do
                local specs = itemBisData[class]
                local sortedSpecs = {}
                for spec in pairs(specs) do table.insert(sortedSpecs, spec) end
                table.sort(sortedSpecs)

                for _, spec in ipairs(sortedSpecs) do
                    if not specFiltered(class, spec) then
                        local foundPhases = specs[spec]
                        local icon = BisTooltip_SpecIcons[class] and BisTooltip_SpecIcons[class][spec]
                        if icon then
                            local iconString = string.format("|T%s:18|t", icon)
                            local lineText = BisTooltipAddon.db.char.filter_class_names and string.format("%s %s", iconString, spec) or string.format("%s %s - %s", iconString, class, spec)
                            local r1, g1, b1, r2, g2, b2
                            
                            if specHighlighted(class, spec) then
                                local selectedColor = BisTooltipAddon.db.char.highlight_color or "purple"
                                local colorRGB = highlight_colors[selectedColor] or highlight_colors["purple"]
                                r1, g1, b1 = colorRGB[1], colorRGB[2], colorRGB[3]
                                r2, g2, b2 = colorRGB[1], colorRGB[2], colorRGB[3]
                            else
                                r2, g2, b2 = 0.8, 0.8, 0.8 
                                if BisTooltipAddon.db.char.use_class_colors then
                                    local classKey = string.upper(string.gsub(class, "%s+", ""))
                                    local cColor = HARDCODED_CLASS_COLORS[classKey] or {0.8, 0.8, 0.8}
                                    r1, g1, b1 = cColor[1], cColor[2], cColor[3]
                                else
                                    r1, g1, b1 = 0.8, 0.8, 0.8 
                                end
                            end
                            
                            tooltip:AddDoubleLine(lineText, foundPhases, r1, g1, b1, r2, g2, b2)
                            table.insert(cached_lines, {left=lineText, right=foundPhases, r1=r1, g1=g1, b1=b1, r2=r2, g2=g2, b2=b2})
                        end
                    end
                end
            end
            tooltip_cache[itemId] = cached_lines
        end
    end

    local itemSource = GetItemSource(itemId)
    if itemSource then
        tooltip:AddLine(" ", 1, 1, 0)
        tooltip:AddLine(itemSource, 1, 1, 1)
        tooltip:AddLine(" ", 1, 1, 0)
    end
end

function BisTooltipAddon:ClearTooltipCache() tooltip_cache = {} end

function BisTooltipAddon:initBisTooltip()
    eventFrame:RegisterEvent("MODIFIER_STATE_CHANGED")
    eventFrame:SetScript("OnEvent", function(_, _, e_key)
        if GameTooltip:GetOwner() and not GameTooltip:GetOwner().hasItem then
            if e_key == "RALT" or e_key == "LALT" then
                local _, link = GameTooltip:GetItem()
                if link then
                    GameTooltip:SetHyperlink("|cff9d9d9d|Hitem:3299::::::::20:257::::::|h[Fractured Canine]|h|r")
                    GameTooltip:SetHyperlink(link)
                end
            end
        end
    end)
    GameTooltip:HookScript("OnTooltipSetItem", OnGameTooltipSetItem)
    ItemRefTooltip:HookScript("OnTooltipSetItem", OnGameTooltipSetItem)
end