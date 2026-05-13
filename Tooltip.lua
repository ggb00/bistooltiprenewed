-- Tooltip.lua
local eventFrame = CreateFrame("Frame", nil, UIParent)
local tooltip_cache = {}

local HARDCODED_CLASS_COLORS = {
    ["DEATHKNIGHT"] = {0.77, 0.12, 0.23}, ["DRUID"]   = {1.00, 0.49, 0.04},
    ["HUNTER"]      = {0.67, 0.83, 0.45}, ["MAGE"]    = {0.25, 0.78, 0.92},
    ["PALADIN"]     = {0.96, 0.55, 0.73}, ["PRIEST"]  = {1.00, 1.00, 1.00},
    ["ROGUE"]       = {1.00, 0.96, 0.41}, ["SHAMAN"]  = {0.00, 0.44, 0.87},
    ["WARLOCK"]     = {0.53, 0.53, 0.93}, ["WARRIOR"] = {0.78, 0.61, 0.43},
}

local highlight_colors = {
    ["purple"]    = {0.80, 0.30, 1.00}, ["green"] =     {0.10, 1.00, 0.10},
    ["red"]       = {1.00, 0.20, 0.20}, ["lightblue"] = {0.30, 0.80, 1.00},
    ["yellow"]    = {1.00, 0.82, 0.00}, ["orange"] =    {1.00, 0.50, 0.00},
    ["pink"]      = {1.00, 0.40, 0.70}, ["cyan"] =      {0.00, 1.00, 1.00}
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

local function GetItemSource(itemId)
    if BisTooltip_ItemSources and BisTooltip_ItemSources[itemId] then
        return "|cFFFFFFFFSource:|r |cFF00FF00" .. BisTooltip_ItemSources[itemId] .. "|r"
    end
    return nil
end

local function OnGameTooltipSetItem(tooltip)
    if BisTooltipAddon.db.char.tooltip_with_ctrl and not IsControlKeyDown() then return end

    local _, link = tooltip:GetItem()
    if not link then return end

    local itemId = tonumber(string.match(link, "item:(%d+)"))
    if not itemId then return end

    local cache = tooltip_cache[itemId]
    if cache then
        for _, line in ipairs(cache.bisLines) do
            tooltip:AddDoubleLine(line.left, line.right, line.r1, line.g1, line.b1, line.r2, line.g2, line.b2)
        end
        if cache.sourceText then
            tooltip:AddLine(" ", 1, 1, 0)
            tooltip:AddLine(cache.sourceText, 1, 1, 1)
            tooltip:AddLine(" ", 1, 1, 0)
        end
        return 
    end

    local itemBisData = BisTooltipAddon.ReverseLookup and BisTooltipAddon.ReverseLookup[itemId]
    
    if not itemBisData then
        local translated = nil
        if BisTooltip_FactionMap and BisTooltip_FactionMap[itemId] then
            translated = BisTooltip_FactionMap[itemId]
        elseif BisTooltip_AliToHorde and BisTooltip_AliToHorde[itemId] then
            translated = BisTooltip_AliToHorde[itemId]
        end
        
        if translated and BisTooltipAddon.ReverseLookup then
            itemBisData = BisTooltipAddon.ReverseLookup[translated]
        end
    end

    local new_cache_entry = { bisLines = {}, sourceText = nil }

    if itemBisData then
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
                            local selectedColor = BisTooltipAddon.db.char.highlight_color or "class"
                            if selectedColor == "class" then
                                local classKey = string.upper(string.gsub(class, "%s+", ""))
                                local cColor = HARDCODED_CLASS_COLORS[classKey] or {0.8, 0.8, 0.8}
                                r1, g1, b1 = cColor[1], cColor[2], cColor[3]
                                r2, g2, b2 = cColor[1], cColor[2], cColor[3]
                            else
                                local colorRGB = highlight_colors[selectedColor] or highlight_colors["purple"]
                                r1, g1, b1 = colorRGB[1], colorRGB[2], colorRGB[3]
                                r2, g2, b2 = colorRGB[1], colorRGB[2], colorRGB[3]
                            end
                        else
                            r2, g2, b2 = 0.65, 0.65, 0.65 
                            if BisTooltipAddon.db.char.use_class_colors then
                                local classKey = string.upper(string.gsub(class, "%s+", ""))
                                local cColor = HARDCODED_CLASS_COLORS[classKey] or {0.65, 0.65, 0.65}
                                r1, g1, b1 = cColor[1], cColor[2], cColor[3]
                            else
                                r1, g1, b1 = 0.65, 0.65, 0.65 
                            end
                        end
                        
                        tooltip:AddDoubleLine(lineText, foundPhases, r1, g1, b1, r2, g2, b2)
                        table.insert(new_cache_entry.bisLines, {left=lineText, right=foundPhases, r1=r1, g1=g1, b1=b1, r2=r2, g2=g2, b2=b2})
                    end
                end
            end
        end
    end

    local sourceText = GetItemSource(itemId)
    if sourceText then
        tooltip:AddLine(" ", 1, 1, 0)
        tooltip:AddLine(sourceText, 1, 1, 1)
        tooltip:AddLine(" ", 1, 1, 0)
        new_cache_entry.sourceText = sourceText
    end

    tooltip_cache[itemId] = new_cache_entry
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
    if ShoppingTooltip1 then ShoppingTooltip1:HookScript("OnTooltipSetItem", OnGameTooltipSetItem) end
    if ShoppingTooltip2 then ShoppingTooltip2:HookScript("OnTooltipSetItem", OnGameTooltipSetItem) end
end