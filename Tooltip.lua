-- Tooltip.lua
local eventFrame = CreateFrame("Frame", nil, UIParent)

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

local source_hex_colors = {
    ["purple"]    = "CC4CFF", ["green"]     = "19FF19",
    ["red"]       = "FF3333", ["lightblue"] = "4CCCFF",
    ["yellow"]    = "FFD100", ["orange"]    = "FF7F00",
    ["pink"]      = "FF66B2", ["cyan"]      = "00FFFF",
    ["white"]     = "FFFFFF",
}

local function GetItemSources(itemId, translatedId)
    local sources = BisTooltip_ItemSources and BisTooltip_ItemSources[itemId]
    if not sources and translatedId and BisTooltip_ItemSources then
        sources = BisTooltip_ItemSources[translatedId]
    end
    return sources
end

local function StyleTooltip(tooltip, isForcedItem)
    if not tooltip then return end
    local bd = tooltip:GetBackdrop()
    if not bd then return end

    local isItem = isForcedItem
    if isItem == nil then
        local _, link = tooltip:GetItem()
        isItem = (link ~= nil) or tooltip.BisIsCompareItem
    end

    if isItem and BisTooltipAddon.db.char.dark_tooltips then
        if bd.bgFile ~= "Interface\\ChatFrame\\ChatFrameBackground" then
            if not tooltip.BisOrigBg then
                tooltip.BisOrigBg = bd.bgFile
                tooltip.BisOrigInsets = bd.insets
            end
            bd.bgFile = "Interface\\ChatFrame\\ChatFrameBackground"
            bd.insets = { left = 2, right = 2, top = 2, bottom = 2 }
            tooltip:SetBackdrop(bd)
        end
        tooltip:SetBackdropColor(0, 0, 0, 0.92)
    else
        if tooltip.BisOrigBg and bd.bgFile ~= tooltip.BisOrigBg then
            bd.bgFile = tooltip.BisOrigBg
            bd.insets = tooltip.BisOrigInsets
            tooltip:SetBackdrop(bd)

            local defaultColor = TOOLTIP_DEFAULT_BACKGROUND_COLOR
            if defaultColor then
                tooltip:SetBackdropColor(defaultColor.r, defaultColor.g, defaultColor.b, 1)
            else
                tooltip:SetBackdropColor(0.09, 0.09, 0.19, 1)
            end
        end
    end
end

local function OnTooltipCleared(tooltip)
    tooltip.BisTooltipRendered = nil
    tooltip.BisIsCompareItem = nil
    StyleTooltip(tooltip, false)
end

local function ProcessTooltip(tooltip, link)
    StyleTooltip(tooltip, true)

    local db = BisTooltipAddon.db.char
    if db.tooltip_with_ctrl and not IsControlKeyDown() then return end

    if not link then
        _, link = tooltip:GetItem()
    end
    if not link then return end

    local itemId = tonumber(string.match(link, "item:(%d+)"))
    if not itemId then return end

    if not GetItemInfo(itemId) then return end

    if tooltip.BisTooltipRendered == itemId then return end
    tooltip.BisTooltipRendered = itemId

    local translated_id = nil
    if BisTooltip_FactionMap and BisTooltip_FactionMap[itemId] then
        translated_id = BisTooltip_FactionMap[itemId]
    elseif BisTooltip_AliToHorde and BisTooltip_AliToHorde[itemId] then
        translated_id = BisTooltip_AliToHorde[itemId]
    end

    local itemBisData = BisTooltipAddon.ReverseLookup and (BisTooltipAddon.ReverseLookup[itemId] or (translated_id and BisTooltipAddon.ReverseLookup[translated_id]))

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
                local fData = BisTooltipAddon.FormattedNames[data.class]
                local fSpec = fData and fData[data.spec]
                local lineText

                if fSpec then
                    lineText = filterClassNames and fSpec.withoutClass or fSpec.withClass
                else
                    lineText = string.format("%s %s", data.class or "Unknown", data.spec or "Unknown")
                end

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

    local sources = GetItemSources(itemId, translated_id)
    if sources then
        local colorKey = db.source_color or "green"
        local hexColor = source_hex_colors[colorKey] or "19FF19"
        local icon = "|TInterface\\Icons\\INV_Misc_Bag_10:14:14:0:0:64:64:5:59:5:59|t"

        if type(sources) == "table" then
            for _, src in ipairs(sources) do
                tooltip:AddLine(string.format("%s |cFF%s%s|r", icon, hexColor, src), 1, 1, 1, true)
            end
        elseif type(sources) == "string" then
            tooltip:AddLine(string.format("%s |cFF%s%s|r", icon, hexColor, sources), 1, 1, 1, true)
        end
    end

    tooltip:Show()
end

local function OnTooltipSetItem(tooltip)
    ProcessTooltip(tooltip, nil)
end

local function HookSetInventoryItem(tooltip, unit, slot)
    if unit and slot then
        local link = GetInventoryItemLink(unit, slot)
        if link then
            ProcessTooltip(tooltip, link)
        end
    end
end

local function HookSetCompareItem(tooltip)
    if not tooltip then return end
    tooltip.BisIsCompareItem = true
    local _, link = tooltip:GetItem()
    if link then
        ProcessTooltip(tooltip, link)
    else
        StyleTooltip(tooltip, true)
    end
end

function BisTooltipAddon:ClearTooltipCache() end

function BisTooltipAddon:initBisTooltip()
    GameTooltip:HookScript("OnShow", StyleTooltip)
    ItemRefTooltip:HookScript("OnShow", StyleTooltip)
    if ShoppingTooltip1 then ShoppingTooltip1:HookScript("OnShow", StyleTooltip) end
    if ShoppingTooltip2 then ShoppingTooltip2:HookScript("OnShow", StyleTooltip) end

    GameTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
    ItemRefTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
    if ShoppingTooltip1 then ShoppingTooltip1:HookScript("OnTooltipSetItem", OnTooltipSetItem) end
    if ShoppingTooltip2 then ShoppingTooltip2:HookScript("OnTooltipSetItem", OnTooltipSetItem) end

    GameTooltip:HookScript("OnTooltipCleared", OnTooltipCleared)
    ItemRefTooltip:HookScript("OnTooltipCleared", OnTooltipCleared)
    if ShoppingTooltip1 then ShoppingTooltip1:HookScript("OnTooltipCleared", OnTooltipCleared) end
    if ShoppingTooltip2 then ShoppingTooltip2:HookScript("OnTooltipCleared", OnTooltipCleared) end

    hooksecurefunc(GameTooltip, "SetInventoryItem", HookSetInventoryItem)
    if ItemRefTooltip then hooksecurefunc(ItemRefTooltip, "SetInventoryItem", HookSetInventoryItem) end
    if ShoppingTooltip1 then
        hooksecurefunc(ShoppingTooltip1, "SetInventoryItem", HookSetInventoryItem)
        hooksecurefunc(ShoppingTooltip1, "SetCompareItem", HookSetCompareItem)
    end
    if ShoppingTooltip2 then
        hooksecurefunc(ShoppingTooltip2, "SetInventoryItem", HookSetInventoryItem)
        hooksecurefunc(ShoppingTooltip2, "SetCompareItem", HookSetCompareItem)
    end

    eventFrame:RegisterEvent("MODIFIER_STATE_CHANGED")
    eventFrame:SetScript("OnEvent", function(_, _, key)
        if key == "LALT" or key == "RALT" or key == "LCTRL" or key == "RCTRL" or key == "LSHIFT" or key == "RSHIFT" then
            if GameTooltip:IsShown() then
                local owner = GameTooltip:GetOwner()

                if owner and owner:GetScript("OnEnter") then
                    owner:GetScript("OnEnter")(owner)
                else
                    local _, link = GameTooltip:GetItem()
                    if link then
                        GameTooltip:SetHyperlink("item:3299:0:0:0:0:0:0:0:0")
                        GameTooltip:SetHyperlink(link)
                    end
                end

                if IsShiftKeyDown() then
                    GameTooltip_ShowCompareItem(GameTooltip)
                else
                    if ShoppingTooltip1 then ShoppingTooltip1:Hide() end
                    if ShoppingTooltip2 then ShoppingTooltip2:Hide() end
                end
            end

            if ItemRefTooltip:IsShown() then
                local _, link = ItemRefTooltip:GetItem()
                if link then
                    ItemRefTooltip:SetHyperlink("item:3299:0:0:0:0:0:0:0:0")
                    ItemRefTooltip:SetHyperlink(link)
                end
            end
        end
    end)
end