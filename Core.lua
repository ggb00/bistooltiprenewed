-- Core.lua
BisTooltipAddon = LibStub("AceAddon-3.0"):NewAddon("Bis-Tooltip Renewed")
BisTooltip_EquipmentCache = {}
BisTooltip_AliToHorde = {}

local function collectItemIDs()
    local itemIDs = {}
    
    if BisTooltip_ItemLists then
        for _, classData in pairs(BisTooltip_ItemLists) do
            for _, specData in pairs(classData) do
                for _, phaseData in pairs(specData) do
                    for _, itemData in ipairs(phaseData) do
                        for key, value in pairs(itemData) do
                            if type(key) == "number" then
                                itemIDs[value] = true
                            end
                        end
                    end
                end
            end
        end
    end

    local flatIDs = {}
    for id in pairs(itemIDs) do table.insert(flatIDs, id) end
    return flatIDs
end

local function createEquipmentWatcher()
    local frame = CreateFrame("Frame")
    frame:Hide()
    frame:SetScript("OnEvent", frame.Show)
    frame:RegisterEvent("BAG_UPDATE")

    local flag = false
    local master_item_list = nil

    frame:SetScript("OnUpdate", function(self)
        self:Hide()
        if not flag then
            flag = true
            local collection = {}

            if not master_item_list then 
                master_item_list = collectItemIDs() 
            end

            for _, itemID in ipairs(master_item_list) do
                if GetItemCount(itemID, true) > 0 then collection[itemID] = 1 end
            end

            for i = 1, 19 do
                local itemID = GetInventoryItemID("player", i)
                if itemID then collection[itemID] = 2 end
            end

            BisTooltip_EquipmentCache = collection
            flag = false
        end
    end)
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
    self.ReverseLookup = {}
    if not BisTooltip_ItemLists then return end
    local sortedPhases = BisTooltip_PhaseData or {}

    for class, specs in pairs(BisTooltip_ItemLists) do
        for spec, phases in pairs(specs) do
            for _, phase in ipairs(sortedPhases) do
                local items = phases[phase]
                if items then
                    for _, itemData in pairs(items) do
                        if type(itemData) == "table" then
                            for i, itemId in ipairs(itemData) do
                                if type(itemId) == "number" and itemId > 0 then
                                    local function registerId(targetId)
                                        if not self.ReverseLookup[targetId] then self.ReverseLookup[targetId] = {} end
                                        if not self.ReverseLookup[targetId][class] then self.ReverseLookup[targetId][class] = {} end
                                        if not self.ReverseLookup[targetId][class][spec] then self.ReverseLookup[targetId][class][spec] = {} end
                                        
                                        local phaseLabel = (i == 1) and (phase .. " BIS") or (phase .. " alt " .. i)
                                        local labels = self.ReverseLookup[targetId][class][spec]
                                        
                                        local found = false
                                        for _, label in ipairs(labels) do
                                            if label == phaseLabel then found = true; break end
                                        end
                                        if not found then table.insert(labels, phaseLabel) end
                                    end

                                    registerId(itemId)
                                    if BisTooltip_FactionMap and BisTooltip_FactionMap[itemId] then
                                        registerId(BisTooltip_FactionMap[itemId])
                                    elseif BisTooltip_AliToHorde and BisTooltip_AliToHorde[itemId] then
                                        registerId(BisTooltip_AliToHorde[itemId])
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    for itemId, classes in pairs(self.ReverseLookup) do
        for class, specs in pairs(classes) do
            for spec, labels in pairs(specs) do
                self.ReverseLookup[itemId][class][spec] = table.concat(labels, " / ")
            end
        end
    end
end

function BisTooltipAddon:OnInitialize()
    self:BuildFactionMaps()
    createEquipmentWatcher()
    BisTooltipAddon.AceAddonName = "Bis-Tooltip Renewed"
    BisTooltipAddon.AddonNameAndVersion = "Bis-Tooltip Renewed"
    BisTooltipAddon:initConfig()
    BisTooltipAddon:addMapIcon()
    BisTooltipAddon:BuildReverseLookup()
    BisTooltipAddon:initBisTooltip()
    
    LibStub("AceConsole-3.0"):RegisterChatCommand("bisrenewed", function() BisTooltipAddon:createMainFrame() end)
    LibStub("AceConsole-3.0"):RegisterChatCommand("bistooltip", function() BisTooltipAddon:createMainFrame() end)
end