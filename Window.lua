-- Window.lua
local addonName, addonTable = ...
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

local checkmark_path = "Interface\\AddOns\\" .. addonName .. "\\checkmark-16.tga"

local function createItemFrame(item_id, size, with_checkmark)
    if item_id < 0 then 
        local empty_icon = AceGUI:Create("Icon")
        empty_icon:SetImageSize(size, size)
        return empty_icon 
    end
    
    local item_frame = AceGUI:Create("Icon")
    item_frame:SetImageSize(size, size)

    local itemName, itemLink, _, _, _, _, _, _, _, itemIcon, _, _, _, bindType = GetItemInfo(item_id)

    if not item_frame.frame.bisCheckMark then
        item_frame.frame.bisCheckMark = item_frame.frame:CreateTexture(nil, "OVERLAY")
        item_frame.frame.bisCheckMark:SetWidth(32)
        item_frame.frame.bisCheckMark:SetHeight(32)
        item_frame.frame.bisCheckMark:SetPoint("CENTER", 6, -8)
        item_frame.frame.bisCheckMark:SetTexture(checkmark_path) 
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
        item_frame.image:SetVertexColor(0.35, 0.35, 0.35, 1) 
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

item_fetch_frame:SetScript("OnUpdate", function()
    for i = 1, 5 do
        local next_id = next(query_queue)
        if next_id then
            scanner:SetOwner(UIParent, "ANCHOR_NONE")
            scanner:SetHyperlink("item:" .. next_id .. ":0:0:0:0:0:0:0")
            query_queue[next_id] = nil
        else break end
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
                    local isEquipped = BisTooltip_EquipmentCache and BisTooltip_EquipmentCache[received_item_id]
                    if isEquipped then widget.image:SetVertexColor(0.35, 0.35, 0.35, 1) else widget.image:SetVertexColor(1, 1, 1, 1) end
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
    
    if spell_frame.frame.bisCheckMark then spell_frame.frame.bisCheckMark:Hide() end
    if spell_frame.frame.bisBoeMark then spell_frame.frame.bisBoeMark:Hide() end

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
    frame:SetWidth(75) 
    frame:SetHeight(18)
    
    frame:SetUserData("table", {
        columns = {17, 17, 17, 17},
        spaceV = 0, spaceH = 1, align = "MIDDLE"
    })
    
    frame:SetFullWidth(false)
    frame:SetFullHeight(false)
    frame:SetAutoAdjustHeight(false)
    
    for _, enhancement in ipairs(enhancements) do
        local size = 16
        if enhancement.type == "item" then 
            frame:AddChild(createItemFrame(enhancement.id, size, false)) 
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
    f:SetWidth(80) 
    f.label:SetJustifyH("LEFT")
    spec_frame:AddChild(f)
    
    local enhs = {}
    if BisTooltip_Enhancements and BisTooltip_Enhancements[class] and BisTooltip_Enhancements[class][spec] and BisTooltip_Enhancements[class][spec][phase] then
        enhs = BisTooltip_Enhancements[class][spec][phase][slot.slot_name] or {}
    end
    
    spec_frame:AddChild(createEnhancementsFrame(enhs))

    local count = 0
    for _, original_item_id in ipairs(slot) do
        if count >= 6 then break end
        
        local display_id = original_item_id
        if isHorde and BisTooltip_AliToHorde and BisTooltip_AliToHorde[original_item_id] then
            display_id = BisTooltip_AliToHorde[original_item_id]
        elseif not isHorde and BisTooltip_FactionMap and BisTooltip_FactionMap[original_item_id] then
            display_id = BisTooltip_FactionMap[original_item_id]
        end

        local isEquipped = display_id and BisTooltip_EquipmentCache and BisTooltip_EquipmentCache[display_id]
        spec_frame:AddChild(createItemFrame(display_id, 40, isEquipped))
        count = count + 1
    end
    
    for i = count + 1, 6 do
        spec_frame:AddChild(createItemFrame(-1, 40, false))
    end
end

local function drawTableHeader(frame)
    local color = 0.6

    local f = AceGUI:Create("Label")
    f:SetText("Slot")
    f:SetFont("Fonts\\FRIZQT__.TTF", 14, "")
    f:SetColor(color, color, color)
    f:SetWidth(80) 
    f.label:SetJustifyH("LEFT")
    frame:AddChild(f)

    local eLabel = AceGUI:Create("Label")
    eLabel:SetText("Enchants")
    eLabel:SetFont("Fonts\\FRIZQT__.TTF", 11, "")
    eLabel:SetColor(color, color, color)
    eLabel:SetWidth(75) 
    eLabel.label:SetJustifyH("LEFT") 
    frame:AddChild(eLabel)

    for i = 1, 6 do
        local topLabel = AceGUI:Create("Label")
        topLabel:SetText("Top " .. i)
        topLabel:SetColor(color, color, color)
        topLabel:SetWidth(42) 
        topLabel.label:SetJustifyH("CENTER") 
        frame:AddChild(topLabel)
    end
end

local function drawSpecData()
    BisTooltipAddon.db.char.class_index = class_index
    BisTooltipAddon.db.char.spec_index = spec_index
    BisTooltipAddon.db.char.phase_index = phase_index

    missing_widgets = {}
    query_queue = {}
    spec_frame:ReleaseChildren()
    drawTableHeader(spec_frame)
    
    if not spec or not phase or not BisTooltip_ItemLists[class] or not BisTooltip_ItemLists[class][spec] then return end
    local slots = BisTooltip_ItemLists[class][spec][phase]
    if not slots then return end
    for _, slot in ipairs(slots) do drawItemSlot(slot) end
end

local function buildClassDict()
    if not BisTooltip_ClassData or type(BisTooltip_ClassData) ~= "table" then return end
    class_options = {}
    for ci, class_data in ipairs(BisTooltip_ClassData) do
        local option_name = class_data.name
        table.insert(class_options, option_name)
        class_options_to_class[option_name] = { name = class_data.name, i = ci }
    end
end

local function buildSpecsDict(class_i)
    if not BisTooltip_ClassData or type(BisTooltip_ClassData) ~= "table" then return end
    spec_options = {}
    spec_options_to_spec = {}
    local class_data = BisTooltip_ClassData[class_i]
    for si, spec_name in ipairs(class_data.specs) do
        local option_name = "|T" .. BisTooltip_SpecIcons[class_data.name][spec_name] .. ":14|t " .. spec_name
        table.insert(spec_options, option_name)
        spec_options_to_spec[option_name] = spec_name
    end
end

local function loadData()
    class_index = BisTooltipAddon.db.char.class_index or 1
    spec_index = BisTooltipAddon.db.char.spec_index or 1
    phase_index = BisTooltipAddon.db.char.phase_index or 1

    if not class_options[class_index] then class_index = 1 end
    if class_options[class_index] then
        class = class_options_to_class[class_options[class_index]].name
        buildSpecsDict(class_index)
    else
        class = nil; spec = nil; return
    end

    if not spec_options[spec_index] then spec_index = 1 end
    if spec_options[spec_index] then
        spec = spec_options_to_spec[spec_options[spec_index]]
    end

    phase = BisTooltip_PhaseData[phase_index] or BisTooltip_PhaseData[1]
end

local function drawDropdowns()
    local dropDownGroup = AceGUI:Create("SimpleGroup")
    dropDownGroup:SetLayout("Table")
    
    dropDownGroup:SetUserData("table", { columns = {42, 110, 180, 70}, space = 4, align = "BOTTOM" })
    main_frame:AddChild(dropDownGroup)

    local spacerLeft = AceGUI:Create("Label")
    spacerLeft:SetText(" ")
    dropDownGroup:AddChild(spacerLeft)

    classDropdown = AceGUI:Create("Dropdown")
    specDropdown = AceGUI:Create("Dropdown")
    phaseDropDown = AceGUI:Create("Dropdown")
    specDropdown:SetDisabled(true)

    phaseDropDown:SetCallback("OnValueChanged", function(_, _, key)
        phase_index = key
        phase = BisTooltip_PhaseData[key]
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
    for i, p in ipairs(BisTooltip_PhaseData) do phase_opts[i] = p end
    phaseDropDown:SetList(phase_opts)

    dropDownGroup:AddChild(classDropdown)
    dropDownGroup:AddChild(specDropdown)
    dropDownGroup:AddChild(phaseDropDown)

    local fillerFrame = AceGUI:Create("Label")
    fillerFrame:SetText(" ")
    fillerFrame:SetHeight(5) 
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
        columns = {{width = 80}, {width = 75}, {width = 42}, {width = 42}, {width = 42}, {width = 42}, {width = 42}, {width = 42}},
        space = 3, align = "middle"
    })
    
    frame:SetFullWidth(true)
    frame:SetHeight(420)
    frame:SetAutoAdjustHeight(false)
    main_frame:AddChild(frame)
    spec_frame = frame
end

function BisTooltipAddon:reloadData()
    buildClassDict()
    loadData() 
    
    if main_frame then
        local phase_opts = {}
        for i, p in ipairs(BisTooltip_PhaseData) do phase_opts[i] = p end
        phaseDropDown:SetList(phase_opts)
        classDropdown:SetList(class_options)
        specDropdown:SetList(spec_options)
        
        classDropdown:SetValue(class_index)
        specDropdown:SetValue(spec_index)
        phaseDropDown:SetValue(phase_index)
        drawSpecData()
    end
end

function BisTooltipAddon:createMainFrame()
    if main_frame then BisTooltipAddon:closeMainFrame(); return end

    buildClassDict()
    loadData()

    main_frame = AceGUI:Create("Window")
    main_frame:SetWidth(505) 
    main_frame:SetHeight(570) 
    main_frame:EnableResize(false) 
    
    if not main_frame.frame.darkOverlay then
        main_frame.frame.darkOverlay = main_frame.frame:CreateTexture(nil, "BACKGROUND", nil, -1)
        main_frame.frame.darkOverlay:SetPoint("TOPLEFT", main_frame.frame, "TOPLEFT", 8, -24) 
        main_frame.frame.darkOverlay:SetPoint("BOTTOMRIGHT", main_frame.frame, "BOTTOMRIGHT", -8, 8)
        main_frame.frame.darkOverlay:SetTexture(0, 0, 0, 0.60) 
    end

    main_frame:SetCallback("OnClose", function(widget)
        spec_frame = nil
        missing_widgets = {}
        query_queue = {}
        AceGUI:Release(widget)
        main_frame = nil
    end)
    main_frame:SetLayout("List")
    main_frame:SetTitle(BisTooltipAddon.AddonNameAndVersion)

    drawDropdowns()
    createSpecFrame()
    drawSpecData()

    local sep = AceGUI:Create("Heading")
    sep:SetText("")
    sep:SetFullWidth(true)
    main_frame:AddChild(sep)

    local buttonContainer = AceGUI:Create("SimpleGroup")
    buttonContainer:SetFullWidth(true)
    buttonContainer:SetLayout("Table")
    buttonContainer:SetUserData("table", { columns = {105, 120, 120}, space = 15, align = "middle" })

    local bSpacer1 = AceGUI:Create("Label"); bSpacer1:SetText(" "); buttonContainer:AddChild(bSpacer1)

    local reloadButton = AceGUI:Create("Button")
    reloadButton:SetText("Reload Items")
    reloadButton:SetWidth(120) 
    reloadButton:SetCallback("OnClick", function() BisTooltipAddon:reloadData() end)
    
    reloadButton:SetCallback("OnEnter", function(widget)
        GameTooltip:SetOwner(widget.frame, "ANCHOR_TOP")
        GameTooltip:AddLine("Reload Items", 1, 1, 1)
        GameTooltip:AddLine("If some items are displaying a '?' icon,\nclick this to force the server to fetch them.\nThis may take a couple of attempts.", 1, 0.82, 0, 1)
        GameTooltip:Show()
    end)
    reloadButton:SetCallback("OnLeave", function() GameTooltip:Hide() end)

    buttonContainer:AddChild(reloadButton)

    local configButton = AceGUI:Create("Button")
    configButton:SetText("Config")
    configButton:SetWidth(120) 
    configButton:SetCallback("OnClick", function() BisTooltipAddon:openConfigDialog() end)
    buttonContainer:AddChild(configButton)

    main_frame:AddChild(buttonContainer)
    
    local bottomSpacer = AceGUI:Create("Label")
    bottomSpacer:SetText(" ")
    bottomSpacer:SetHeight(15)
    main_frame:AddChild(bottomSpacer)
end

function BisTooltipAddon:closeMainFrame()
    if main_frame then
        AceGUI:Release(main_frame)
        classDropdown = nil; specDropdown = nil; phaseDropDown = nil; missing_widgets = {}; query_queue = {}
    end
end

function BisTooltipAddon:initBislists()
    buildClassDict()
    loadData()
end