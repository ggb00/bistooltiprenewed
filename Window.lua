-- Window.lua
local AceGUI = LibStub("AceGUI-3.0")

local class = nil
local spec = nil
local phase = nil
local class_index = nil
local spec_index = nil
local phase_index = nil

local class_options = {}
local class_options_to_class = {}
local spec_options = {}
local spec_options_to_spec = {}
local spec_frame = nil
local main_frame = nil
local classDropdown = nil
local specDropdown = nil
local phaseDropDown = nil

local isHorde = UnitFactionGroup("player") == "Horde"

local missing_widgets = {}
local query_queue = {}
local scanner = CreateFrame("GameTooltip", "BisTooltipScanner", UIParent, "GameTooltipTemplate")
local item_fetch_frame = CreateFrame("Frame")

local function createItemFrame(item_id, size, with_checkmark)
    if item_id < 0 then return AceGUI:Create("Label") end

    local item_frame = AceGUI:Create("Icon")
    item_frame:SetImageSize(size, size)

    -- Correct translation mapping for UI
    if isHorde and Bistooltip_horde_to_ali then
        local translated = Bistooltip_horde_to_ali[item_id]
        if translated then item_id = translated end
    end

    local itemName, itemLink, _, _, _, _, _, _, _, itemIcon, _, _, _, bindType = GetItemInfo(item_id)

    if not item_frame.frame.bisCheckMark then
        item_frame.frame.bisCheckMark = item_frame.frame:CreateTexture(nil, "OVERLAY")
        item_frame.frame.bisCheckMark:SetWidth(32)
        item_frame.frame.bisCheckMark:SetHeight(32)
        item_frame.frame.bisCheckMark:SetPoint("CENTER", 6, -8)
        item_frame.frame.bisCheckMark:SetTexture("Interface\\AddOns\\Bistooltip\\checkmark-16.tga")
    end

    if not item_frame.frame.bisBoeMark then
        item_frame.frame.bisBoeMark = item_frame.frame:CreateTexture(nil, "OVERLAY")
        item_frame.frame.bisBoeMark:SetWidth(12)
        item_frame.frame.bisBoeMark:SetHeight(12)
        item_frame.frame.bisBoeMark:SetPoint("TOPLEFT", 2, -5)
        item_frame.frame.bisBoeMark:SetTexture("Interface\\Icons\\INV_Misc_Coin_01")
    end

    if with_checkmark then 
        item_frame.frame.bisCheckMark:Show() 
        item_frame.image:SetVertexColor(0.35, 0.35, 0.35, 1) -- Set to 0.35 (lighter than 0.2, darker than 0.5)
    else 
        item_frame.frame.bisCheckMark:Hide() 
        item_frame.image:SetVertexColor(1, 1, 1, 1)
    end
    
    if not itemName then
        item_frame:SetImage("Interface\\Icons\\INV_Misc_QuestionMark")
        item_frame.frame.bisBoeMark:Hide()
        
        if not missing_widgets[item_id] then missing_widgets[item_id] = {} end
        table.insert(missing_widgets[item_id], item_frame)
        
        query_queue[item_id] = true
        return item_frame
    end

    item_frame:SetImage(itemIcon)
    if bindType == 2 then item_frame.frame.bisBoeMark:Show() else item_frame.frame.bisBoeMark:Hide() end

    item_frame:SetCallback("OnClick", function() SetItemRef(itemLink, itemLink, "LeftButton") end)
    item_frame:SetCallback("OnEnter", function(widget)
        GameTooltip:SetOwner(item_frame.frame)
        GameTooltip:SetPoint("TOPRIGHT", item_frame.frame, "TOPRIGHT", 220, -13)
        GameTooltip:SetHyperlink(itemLink)
    end)
    item_frame:SetCallback("OnLeave", function() GameTooltip:Hide() end)

    return item_frame
end

-- Lightning Fast Fetch Queue (Fetches up to 5 items per rendered frame, 300 items/sec)
item_fetch_frame:SetScript("OnUpdate", function()
    for i = 1, 5 do
        local next_id = next(query_queue)
        if next_id then
            scanner:SetOwner(UIParent, "ANCHOR_NONE")
            scanner:SetHyperlink("item:" .. next_id .. ":0:0:0:0:0:0:0")
            query_queue[next_id] = nil
        else
            break
        end
    end
end)

item_fetch_frame:RegisterEvent("GET_ITEM_INFO_RECEIVED")
item_fetch_frame:SetScript("OnEvent", function(_, _, received_item_id)
    if received_item_id and missing_widgets[received_item_id] then
        local itemName, itemLink, _, _, _, _, _, _, _, itemIcon, _, _, _, bindType = GetItemInfo(received_item_id)
        if itemName then
            for _, widget in ipairs(missing_widgets[received_item_id]) do
                if widget and widget.frame and widget.frame:IsShown() then
                    widget:SetImage(itemIcon)
                    
                    local isEquipped = Bistooltip_char_equipment and Bistooltip_char_equipment[received_item_id]
                    if isEquipped then
                        widget.image:SetVertexColor(0.35, 0.35, 0.35, 1) 
                    else
                        widget.image:SetVertexColor(1, 1, 1, 1) 
                    end
                    
                    if bindType == 2 then widget.frame.bisBoeMark:Show() else widget.frame.bisBoeMark:Hide() end

                    widget:SetCallback("OnClick", function() SetItemRef(itemLink, itemLink, "LeftButton") end)
                    widget:SetCallback("OnEnter", function(w)
                        GameTooltip:SetOwner(w.frame)
                        GameTooltip:SetPoint("TOPRIGHT", w.frame, "TOPRIGHT", 220, -13)
                        GameTooltip:SetHyperlink(itemLink)
                    end)
                end
            end
            missing_widgets[received_item_id] = nil 
        end
    end
end)

local function createSpellFrame(spell_id, size)
    if spell_id < 0 then return AceGUI:Create("Label") end

    local spell_frame = AceGUI:Create("Icon")
    spell_frame:SetImageSize(size, size)
    spell_frame.image:SetVertexColor(1, 1, 1, 1) 

    local name, _, icon = GetSpellInfo(spell_id)
    if not name then return spell_frame end

    spell_frame:SetImage(icon)
    local link = GetSpellLink(spell_id)
    if not link then link = "\124cffffd000\124Hspell:" .. spell_id .. "\124h[" .. name .. "]\124h\124r" end

    spell_frame:SetCallback("OnClick", function() SetItemRef(link, link, "LeftButton") end)
    spell_frame:SetCallback("OnEnter", function()
        GameTooltip:SetOwner(spell_frame.frame)
        GameTooltip:SetPoint("TOPRIGHT", spell_frame.frame, "TOPRIGHT", 220, -13)
        GameTooltip:SetHyperlink(link)
    end)
    spell_frame:SetCallback("OnLeave", function() GameTooltip:Hide() end)

    return spell_frame
end

local function createEnhancementsFrame(enhancements)
    local frame = AceGUI:Create("SimpleGroup")
    frame:SetLayout("Table")
    frame:SetWidth(40)
    frame:SetHeight(40)
    frame:SetUserData("table", {
        columns = {{weight = 14}, {width = 14}},
        spaceV = -10, spaceH = 0, align = "BOTTOMRIGHT"
    })
    frame:SetFullWidth(true)
    frame:SetFullHeight(true)
    frame:SetHeight(0)
    frame:SetAutoAdjustHeight(false)
    for _, enhancement in ipairs(enhancements) do
        local size = 16
        if enhancement.type == "none" then
            frame:AddChild(createItemFrame(-1, size))
        elseif enhancement.type == "item" then
            frame:AddChild(createItemFrame(enhancement.id, size))
        elseif enhancement.type == "spell" then
            frame:AddChild(createSpellFrame(enhancement.id, size))
        end
    end
    return frame
end

local function drawItemSlot(slot)
    local f = AceGUI:Create("Label")
    f:SetText(slot.slot_name)
    f:SetFont("Fonts\\FRIZQT__.TTF", 14, "")
    spec_frame:AddChild(f)
    spec_frame:AddChild(createEnhancementsFrame(slot.enhs))

    for _, original_item_id in ipairs(slot) do
        local item_id = original_item_id
        
        -- Translate to correct faction to check if equipped
        if isHorde and Bistooltip_horde_to_ali then
            local translated = Bistooltip_horde_to_ali[original_item_id]
            if translated then item_id = translated end
        end

        local isEquipped = item_id and Bistooltip_char_equipment and Bistooltip_char_equipment[item_id]
        spec_frame:AddChild(createItemFrame(item_id, 40, isEquipped))
    end
end

local function drawTableHeader(frame)
    local f = AceGUI:Create("Label")
    f:SetText("Slot")
    f:SetFont("Fonts\\FRIZQT__.TTF", 14, "")
    local color = 0.6
    f:SetColor(color, color, color)
    frame:AddChild(f)
    frame:AddChild(AceGUI:Create("Label"))
    for i = 1, 6 do
        f = AceGUI:Create("Label")
        f:SetText("Top " .. i)
        f:SetColor(color, color, color)
        frame:AddChild(f)
    end
end

local function saveData()
    BistooltipAddon.db.char.class_index = class_index
    BistooltipAddon.db.char.spec_index = spec_index
    BistooltipAddon.db.char.phase_index = phase_index
end

local function drawSpecData()
    saveData()
    missing_widgets = {}
    query_queue = {}
    spec_frame:ReleaseChildren()
    drawTableHeader(spec_frame)
    
    if not spec or not phase or not Bistooltip_bislists[class] or not Bistooltip_bislists[class][spec] then
        return
    end
    local slots = Bistooltip_bislists[class][spec][phase]
    if not slots then return end
    
    for _, slot in ipairs(slots) do
        drawItemSlot(slot)
    end
end

local function buildClassDict()
    if not Bistooltip_classes or type(Bistooltip_classes) ~= "table" then return end
    class_options = {}
    for ci, class_data in ipairs(Bistooltip_classes) do
        local option_name = class_data.name
        table.insert(class_options, option_name)
        class_options_to_class[option_name] = { name = class_data.name, i = ci }
    end
end

local function buildSpecsDict(class_i)
    if not Bistooltip_classes or type(Bistooltip_classes) ~= "table" then return end
    spec_options = {}
    spec_options_to_spec = {}
    local class_data = Bistooltip_classes[class_i]
    for si, spec_name in ipairs(class_data.specs) do
        local option_name = "|T" .. Bistooltip_spec_icons[class_data.name][spec_name] .. ":14|t " .. spec_name
        table.insert(spec_options, option_name)
        spec_options_to_spec[option_name] = spec_name
    end
end

local function loadData()
    class_index = BistooltipAddon.db.char.class_index
    spec_index = BistooltipAddon.db.char.spec_index
    phase_index = BistooltipAddon.db.char.phase_index
    if class_index then
        class = class_options_to_class[class_options[class_index]].name
        buildSpecsDict(class_index)
    end
    if spec_index then
        spec = spec_options_to_spec[spec_options[spec_index]]
    end
    if phase_index then
        phase = Bistooltip_phases[phase_index]
    end
end

local function drawDropdowns()
    local dropDownGroup = AceGUI:Create("SimpleGroup")
    dropDownGroup:SetLayout("Table")
    dropDownGroup:SetUserData("table", {
        columns = {110, 180, 70}, space = 1, align = "BOTTOMRIGHT"
    })
    main_frame:AddChild(dropDownGroup)

    classDropdown = AceGUI:Create("Dropdown")
    specDropdown = AceGUI:Create("Dropdown")
    phaseDropDown = AceGUI:Create("Dropdown")
    specDropdown:SetDisabled(true)

    phaseDropDown:SetCallback("OnValueChanged", function(_, _, key)
        phase_index = key
        phase = Bistooltip_phases[key]
        drawSpecData()
    end)

    specDropdown:SetCallback("OnValueChanged", function(_, _, key)
        spec_index = key
        spec = spec_options_to_spec[spec_options[key]]
        drawSpecData()
    end)

    classDropdown:SetCallback("OnValueChanged", function(_, _, key)
        class_index = key
        class = class_options_to_class[class_options[key]].name
        specDropdown:SetDisabled(false)
        buildSpecsDict(key)
        specDropdown:SetList(spec_options)
        specDropdown:SetValue(1)
        spec_index = 1
        spec = spec_options_to_spec[spec_options[1]]
        drawSpecData()
    end)

    classDropdown:SetList(class_options)
    
    local phase_opts = {}
    for i, p in ipairs(Bistooltip_phases) do phase_opts[i] = p end
    phaseDropDown:SetList(phase_opts)

    dropDownGroup:AddChild(classDropdown)
    dropDownGroup:AddChild(specDropdown)
    dropDownGroup:AddChild(phaseDropDown)

    local fillerFrame = AceGUI:Create("Label")
    fillerFrame:SetText(" ")
    main_frame:AddChild(fillerFrame)

    classDropdown:SetValue(class_index)
    if class_index then
        buildSpecsDict(class_index)
        specDropdown:SetList(spec_options)
        specDropdown:SetDisabled(false)
    end
    specDropdown:SetValue(spec_index)
    phaseDropDown:SetValue(phase_index)
end

local function createSpecFrame()
    local frame = AceGUI:Create("ScrollFrame")
    frame:SetLayout("Table")
    frame:SetUserData("table", {
        columns = {{weight = 40}, {width = 44}, {width = 44}, {width = 44}, {width = 44}, {width = 44}, {width = 44}, {width = 44}},
        space = 1, align = "middle"
    })
    frame:SetFullWidth(true)
    frame:SetHeight(370)
    frame:SetAutoAdjustHeight(false)
    main_frame:AddChild(frame)
    spec_frame = frame
end

function BistooltipAddon:reloadData()
    buildClassDict()
    class_index = BistooltipAddon.db.char.class_index
    spec_index = BistooltipAddon.db.char.spec_index
    phase_index = BistooltipAddon.db.char.phase_index

    class = class_options_to_class[class_options[class_index]].name
    buildSpecsDict(class_index)
    spec = spec_options_to_spec[spec_options[spec_index]]
    phase = Bistooltip_phases[phase_index]

    if main_frame then
        local phase_opts = {}
        for i, p in ipairs(Bistooltip_phases) do phase_opts[i] = p end
        phaseDropDown:SetList(phase_opts)
        
        classDropdown:SetList(class_options)
        specDropdown:SetList(spec_options)

        classDropdown:SetValue(class_index)
        specDropdown:SetValue(spec_index)
        phaseDropDown:SetValue(phase_index)

        drawSpecData()
    end
end

function BistooltipAddon:createMainFrame()
    if main_frame then
        BistooltipAddon:closeMainFrame()
        return
    end

    main_frame = AceGUI:Create("Frame")
    main_frame:SetWidth(450)
    main_frame:SetHeight(550) 
    main_frame.frame:SetMinResize(450, 500)
    main_frame.frame:SetMaxResize(800, 600)

    main_frame:SetCallback("OnClose", function(widget)
        spec_frame = nil
        missing_widgets = {}
        query_queue = {}
        AceGUI:Release(widget)
        main_frame = nil
    end)
    main_frame:SetLayout("List")
    main_frame:SetTitle(BistooltipAddon.AddonNameAndVersion)
    main_frame:SetStatusText(Bistooltip_source_to_url[BistooltipAddon.db.char.data_source])

    drawDropdowns()
    createSpecFrame()
    drawSpecData()

    local buttonContainer = AceGUI:Create("SimpleGroup")
    buttonContainer:SetFullWidth(true)
    buttonContainer:SetLayout("Table")
    buttonContainer:SetUserData("table", { columns = {130, 1} })

    local reloadButton = AceGUI:Create("Button")
    reloadButton:SetText("Reload Data")
    reloadButton:SetWidth(120) 
    reloadButton:SetCallback("OnClick", function() BistooltipAddon:reloadData() end)
    buttonContainer:AddChild(reloadButton)

    local noteLabel = AceGUI:Create("Label")
    noteLabel:SetText("Fetching un-cached icons... (This bypasses server throttles).")
    noteLabel:SetFont(GameFontNormal:GetFont(), 10)
    buttonContainer:AddChild(noteLabel)

    local spacer = AceGUI:Create("Label")
    spacer:SetFullWidth(true)
    spacer:SetText(" ")

    main_frame:AddChild(spacer)
    main_frame:AddChild(buttonContainer)
end

function BistooltipAddon:closeMainFrame()
    if main_frame then
        AceGUI:Release(main_frame)
        classDropdown = nil
        specDropdown = nil
        phaseDropDown = nil
        missing_widgets = {}
        query_queue = {}
    end
end

function BistooltipAddon:initBislists()
    buildClassDict()
    loadData()
    LibStub("AceConsole-3.0"):RegisterChatCommand("bistooltip", function()
        BistooltipAddon:createMainFrame()
    end, persist)
end