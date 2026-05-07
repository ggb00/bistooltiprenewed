-- Core.lua
BistooltipAddon = LibStub("AceAddon-3.0"):NewAddon("Bis-Tooltip")
Bistooltip_char_equipment = {}

local function collectItemIDs(bislists)
    local itemIDs = {}
    for _, classData in pairs(bislists) do
        for _, specData in pairs(classData) do
            for _, phaseData in pairs(specData) do
                for _, itemData in ipairs(phaseData) do
                    for key, value in pairs(itemData) do
                        if type(key) == "number" then
                            itemIDs[value] = true -- Using hash table to prevent duplicates
                        elseif key == "enhs" then
                            for _, enhData in pairs(value) do
                                if enhData.type == "item" and enhData.id then
                                    itemIDs[enhData.id] = true
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    -- Convert hash map back to array for fast iteration
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

            -- Cache the master list once to save CPU
            if not master_item_list then 
                master_item_list = collectItemIDs(Bistooltip_bislists) 
            end

            -- O(1) Native C++ lookup for inventory and bank
            for _, itemID in ipairs(master_item_list) do
                if GetItemCount(itemID, true) > 0 then 
                    collection[itemID] = 1 
                end
            end

            -- O(1) Native loop for worn equipment
            for i = 1, 19 do
                local itemID = GetInventoryItemID("player", i)
                if itemID then collection[itemID] = 2 end
            end

            Bistooltip_char_equipment = collection
            flag = false
        end
    end)
end

function BistooltipAddon:BuildReverseLookup()
    self.ReverseLookup = {}
    if not Bistooltip_bislists then return end

    local sortedPhases = Bistooltip_phases or {}
    local ali_to_horde = {}
    if Bistooltip_horde_to_ali then
        for h_id, a_id in pairs(Bistooltip_horde_to_ali) do
            ali_to_horde[a_id] = h_id
        end
    end

    for class, specs in pairs(Bistooltip_bislists) do
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
                                    if Bistooltip_horde_to_ali and Bistooltip_horde_to_ali[itemId] then
                                        registerId(Bistooltip_horde_to_ali[itemId])
                                    elseif ali_to_horde[itemId] then
                                        registerId(ali_to_horde[itemId])
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

function BistooltipAddon:OnInitialize()
    createEquipmentWatcher()
    BistooltipAddon.AceAddonName = "Bis-Tooltip"
    BistooltipAddon.AddonNameAndVersion = "Bis-Tooltip"
    BistooltipAddon:initConfig()
    BistooltipAddon:addMapIcon()
    BistooltipAddon:initBislists()
    BistooltipAddon:BuildReverseLookup()
    BistooltipAddon:initBisTooltip()
end