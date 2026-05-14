-- Tooltip.lua
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

local function GetItemSource(itemId)
    if BisTooltip_ItemSources and BisTooltip_ItemSources[itemId] then
        return "|cFFFFFFFFSource:|r |cFF00FF00" .. BisTooltip_ItemSources[itemId] .. "|r"
    end
    return nil
end

local function OnTooltipCleared(tooltip)
    tooltip.BisTooltipRendered = nil
end

local function OnGameTooltipSetItem(tooltip)
    local db = BisTooltipAddon.db.char
    if db.tooltip_with_ctrl and not IsControlKeyDown() then return end

    local _, link = tooltip:GetItem()
    if not link then return end

    local itemId = tonumber(string.match(link, "item:(%d+)"))
    if not itemId then return end

    if tooltip.BisTooltipRendered == itemId then return end
    tooltip.BisTooltipRendered = itemId

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

    if itemBisData then
        local isAltDown = IsAltKeyDown()
        local highlightSpec = db.highlight_spec
        local filterSpecs = db.filter_specs
        local useClassColors = db.use_class_colors
        local filterClassNames = db.filter_class_names
        local selectedColor = db.highlight_color or "class"

        for _, data in ipairs(itemBisData) do
            local isHighlighted = (highlightSpec.spec_name == data.spec and highlightSpec.class_name == data.class)
            local isFiltered = false

            if not isHighlighted and not isAltDown and filterSpecs[data.class] and filterSpecs[data.class][data.spec] then
                isFiltered = true
            end

            if not isFiltered then
                local lineText = filterClassNames and BisTooltipAddon.FormattedNames[data.class][data.spec].withoutClass
                                                   or BisTooltipAddon.FormattedNames[data.class][data.spec].withClass

                local r1, g1, b1, r2, g2, b2
                if isHighlighted then
                    if selectedColor == "class" then
                        local classKey = string.upper(string.gsub(data.class, "%s+", ""))
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
                    if useClassColors then
                        local classKey = string.upper(string.gsub(data.class, "%s+", ""))
                        local cColor = HARDCODED_CLASS_COLORS[classKey] or {0.65, 0.65, 0.65}
                        r1, g1, b1 = cColor[1], cColor[2], cColor[3]
                    else
                        r1, g1, b1 = 0.65, 0.65, 0.65
                    end
                end

                tooltip:AddDoubleLine(lineText, data.rightText, r1, g1, b1, r2, g2, b2)
            end
        end
    end

    local sourceText = GetItemSource(itemId)
    if sourceText then
        tooltip:AddLine(" ", 1, 1, 0)
        tooltip:AddLine(sourceText, 1, 1, 1)
        tooltip:AddLine(" ", 1, 1, 0)
    end
end

function BisTooltipAddon:ClearTooltipCache() end

function BisTooltipAddon:initBisTooltip()
    GameTooltip:HookScript("OnTooltipSetItem", OnGameTooltipSetItem)
    ItemRefTooltip:HookScript("OnTooltipSetItem", OnGameTooltipSetItem)
    if ShoppingTooltip1 then ShoppingTooltip1:HookScript("OnTooltipSetItem", OnGameTooltipSetItem) end
    if ShoppingTooltip2 then ShoppingTooltip2:HookScript("OnTooltipSetItem", OnGameTooltipSetItem) end

    GameTooltip:HookScript("OnTooltipCleared", OnTooltipCleared)
    ItemRefTooltip:HookScript("OnTooltipCleared", OnTooltipCleared)
    if ShoppingTooltip1 then ShoppingTooltip1:HookScript("OnTooltipCleared", OnTooltipCleared) end
    if ShoppingTooltip2 then ShoppingTooltip2:HookScript("OnTooltipCleared", OnTooltipCleared) end
end