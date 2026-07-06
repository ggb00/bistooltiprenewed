-- Core.lua
BisTooltipAddon = LibStub("AceAddon-3.0"):NewAddon("Bis-Tooltip Renewed", "AceConsole-3.0")
BisTooltip_AliToHorde = {}
BisTooltip_EquippedCache = {}

local equipWatcher = CreateFrame("Frame")
equipWatcher:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
equipWatcher:RegisterEvent("PLAYER_ENTERING_WORLD")
equipWatcher:SetScript("OnEvent", function()
    wipe(BisTooltip_EquippedCache)
    for i = 1, 19 do
        local itemID = GetInventoryItemID("player", i)
        if itemID then BisTooltip_EquippedCache[itemID] = true end
    end
end)

function BisTooltipAddon:GetItemState(itemID)
    if not itemID then return 0 end
    if BisTooltip_EquippedCache[itemID] then return 2 end
    if GetItemCount(itemID, false) > 0 then return 1 end
    if GetItemCount(itemID, true) > 0 then return 3 end
    return 0
end

function BisTooltipAddon:BuildFactionMaps()
    BisTooltip_AliToHorde = {}
    if BisTooltip_FactionMap then
        for h_id, a_id in pairs(BisTooltip_FactionMap) do
            BisTooltip_AliToHorde[a_id] = h_id
        end
    end
end

function BisTooltipAddon:BuildReverseLookup()
    self.FormattedNames = {}
    local canonicalClasses = {}

    if BisTooltip_ClassData then
        for _, classData in ipairs(BisTooltip_ClassData) do
            local class = classData.name
            canonicalClasses[class] = class
            canonicalClasses[string.gsub(class, "%s+", "")] = class

            self.FormattedNames[class] = {}
            for _, spec in ipairs(classData.specs) do
                local icon = BisTooltip_SpecIcons[class] and BisTooltip_SpecIcons[class][spec]
                local iconStr = icon and string.format("|T%s:18|t", icon) or ""
                self.FormattedNames[class][spec] = {
                    withClass = string.format("%s %s - %s", iconStr, class, spec),
                    withoutClass = string.format("%s %s", iconStr, spec)
                }
            end
        end
    end

    local tempLookup = {}
    local sortedPhases = BisTooltip_PhaseData or {}

    local function assignRank(targetId, cls, spc, phs, rank)
        local tItem = tempLookup[targetId]
        if not tItem then tItem = {}; tempLookup[targetId] = tItem end

        local tClass = tItem[cls]
        if not tClass then tClass = {}; tItem[cls] = tClass end

        local tSpec = tClass[spc]
        if not tSpec then tSpec = {}; tClass[spc] = tSpec end

        local currentRank = tSpec[phs]
        if not currentRank or rank < currentRank then
            tSpec[phs] = rank
        end
    end

    if BisTooltip_ItemLists then
        for rawClass, specs in pairs(BisTooltip_ItemLists) do
            local class = canonicalClasses[rawClass] or rawClass
            for spec, phases in pairs(specs) do
                for _, phase in ipairs(sortedPhases) do
                    local items = phases[phase]
                    if items then
                        for _, itemData in pairs(items) do
                            if type(itemData) == "table" then
                                for i, itemId in ipairs(itemData) do
                                    if type(itemId) == "number" and itemId > 0 then

                                        assignRank(itemId, class, spec, phase, i)

                                        if BisTooltip_FactionMap and BisTooltip_FactionMap[itemId] then
                                            assignRank(BisTooltip_FactionMap[itemId], class, spec, phase, i)
                                        elseif BisTooltip_AliToHorde and BisTooltip_AliToHorde[itemId] then
                                            assignRank(BisTooltip_AliToHorde[itemId], class, spec, phase, i)
                                        end

                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    self.ReverseLookup = {}
    for itemId, classes in pairs(tempLookup) do
        local flatList = {}
        for class, specs in pairs(classes) do
            for spec, phaseRanks in pairs(specs) do
                local labels = {}

                for _, phase in ipairs(sortedPhases) do
                    local rank = phaseRanks[phase]
                    if rank then
                        local phaseLabel = (rank == 1) and (phase .. " BIS") or (phase .. " alt " .. (rank - 1))
                        table.insert(labels, phaseLabel)
                    end
                end

                if #labels > 0 then
                    table.insert(flatList, {
                        class = class,
                        spec = spec,
                        rightText = table.concat(labels, " / ")
                    })
                end
            end
        end

        table.sort(flatList, function(a, b)
            if a.class == b.class then return a.spec < b.spec end
            return a.class < b.class
        end)
        self.ReverseLookup[itemId] = flatList
    end
end

function BisTooltipAddon:OnInitialize()
    self:BuildFactionMaps()
    self:BuildReverseLookup()

    self.AceAddonName = "Bis-Tooltip Renewed"
    self.AddonNameAndVersion = "Bis-Tooltip Renewed"
    self:initConfig()
    self:addMapIcon()
    self:initBisTooltip()

    self:RegisterChatCommand("bisrenewed", "createMainFrame")
    self:RegisterChatCommand("bistooltip", "createMainFrame")
end