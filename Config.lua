-- Config.lua
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local AceGUI = LibStub("AceGUI-3.0")
local LDB = LibStub("LibDataBroker-1.1", true)
local LDBIcon = LDB and LibStub("LibDBIcon-1.0", true)
local icon_loaded = false
local icon_name = "BisTooltipIcon"

local db_defaults = {
    char = {
        class_index = 1, spec_index = 1, phase_index = 1,
        filter_specs = {}, highlight_spec = {},
        highlight_color = "purple", use_class_colors = true,
        minimap_icon = true, tooltip_with_ctrl = false
    }
}

local configTable = {
    type = "group",
    args = {
        minimap_icon = {
            name = "Show minimap icon", order = 0, desc = "Shows/hides minimap icon", type = "toggle",
            set = function(info, val)
                BisTooltipAddon.db.char.minimap_icon = val
                if val == true then if icon_loaded == true then LDBIcon:Show(icon_name) else BisTooltipAddon:addMapIcon() end else LDBIcon:Hide(icon_name) end
            end,
            get = function(info) return BisTooltipAddon.db.char.minimap_icon end
        },
        filter_class_names = {
            name = "Hide class names", order = 1, desc = "Removes class name separators from item tooltips", type = "toggle",
            set = function(info, val)
                BisTooltipAddon.db.char.filter_class_names = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info) return BisTooltipAddon.db.char.filter_class_names end
        },
        tooltip_with_ctrl = {
            name = "Show item tooltips with Ctrl", order = 2, desc = "Show item tooltips only when holding Ctrl key", type = "toggle", width = "double",
            set = function(info, val) BisTooltipAddon.db.char.tooltip_with_ctrl = val end,
            get = function(info) return BisTooltipAddon.db.char.tooltip_with_ctrl end
        },
        use_class_colors = {
            name = "Use Class Colors", order = 3, desc = "Colorize class/spec text with WoW class colors", type = "toggle",
            set = function(info, val)
                BisTooltipAddon.db.char.use_class_colors = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info)
                if BisTooltipAddon.db.char.use_class_colors == nil then return true end
                return BisTooltipAddon.db.char.use_class_colors
            end
        },
        filter_specs = {
            name = "Hide specs", order = 4, desc = "Removes checked specs from item tooltips", type = "multiselect", values = {},
            set = function(info, key, val)
                local ci, si = strsplit(":", key)
                local class_name = BisTooltip_ClassData[tonumber(ci)].name
                local spec_name = BisTooltip_ClassData[tonumber(ci)].specs[tonumber(si)]
                if not BisTooltipAddon.db.char.filter_specs[class_name] then BisTooltipAddon.db.char.filter_specs[class_name] = {} end
                BisTooltipAddon.db.char.filter_specs[class_name][spec_name] = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info, key)
                local ci, si = strsplit(":", key)
                local class_name = BisTooltip_ClassData[tonumber(ci)].name
                local spec_name = BisTooltip_ClassData[tonumber(ci)].specs[tonumber(si)]
                if not BisTooltipAddon.db.char.filter_specs[class_name] then return false end
                return BisTooltipAddon.db.char.filter_specs[class_name][spec_name] or false
            end
        },
        highlight_spec = {
            name = "Highlight spec", order = 5, desc = "Highlights selected spec in item tooltips", type = "select", values = {},
            set = function(info, key)
                if key == "none" then
                    BisTooltipAddon.db.char.highlight_spec = {}
                else
                    local ci, si = strsplit(":", key)
                    BisTooltipAddon.db.char.highlight_spec = {
                        key = key, class_name = BisTooltip_ClassData[tonumber(ci)].name, spec_name = BisTooltip_ClassData[tonumber(ci)].specs[tonumber(si)]
                    }
                end
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info) return BisTooltipAddon.db.char.highlight_spec.key or "none" end
        },
        highlight_color = {
            name = "Highlight Color",
            order = 6,
            desc = "Changes the text color of your highlighted spec",
            type = "select",
            values = {
                ["class"] = "Match Class Color",
                ["purple"] = "Purple",
                ["green"] = "Green",
                ["red"] = "Red",
                ["lightblue"] = "Light Blue",
                ["yellow"] = "Yellow",
                ["orange"] = "Orange",
                ["pink"] = "Pink",
                ["cyan"] = "Cyan"
            },
            set = function(info, val)
                BisTooltipAddon.db.char.highlight_color = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info) return BisTooltipAddon.db.char.highlight_color or "class" end
        }
    }
}

local function buildFilterSpecOptions()
    local filter_specs_options = {}
    local highlight_specs_options = {["none"] = "None" }
    if BisTooltip_ClassData then
        for ci, class in ipairs(BisTooltip_ClassData) do
            for si, spec in ipairs(class.specs) do
                local option_val = "|T" .. BisTooltip_SpecIcons[class.name][spec] .. ":16|t " .. class.name .. " " .. spec
                local option_key = ci .. ":" .. si
                filter_specs_options[option_key] = option_val
                highlight_specs_options[option_key] = option_val
            end
        end
    end
    configTable.args.filter_specs.values = filter_specs_options
    configTable.args.highlight_spec.values = highlight_specs_options
end

local function migrateAddonDB()
    if not BisTooltipAddon.db.char.version or BisTooltipAddon.db.char.version < 7.0 then
        BisTooltipAddon.db.char.version = 7.0
        BisTooltipAddon.db.char.highlight_spec = {}
        BisTooltipAddon.db.char.filter_specs = {}
        BisTooltipAddon.db.char.class_index = 1
        BisTooltipAddon.db.char.spec_index = 1
        BisTooltipAddon.db.char.phase_index = 1
    end
    if not BisTooltipAddon.db.char.highlight_color then BisTooltipAddon.db.char.highlight_color = "purple" end
    if BisTooltipAddon.db.char.use_class_colors == nil then BisTooltipAddon.db.char.use_class_colors = true end
end

local config_shown = false
function BisTooltipAddon:openConfigDialog()
    if config_shown then InterfaceOptionsFrame_Show() else InterfaceOptionsFrame_OpenToCategory(BisTooltipAddon.AceAddonName) end
    config_shown = not config_shown
end

function BisTooltipAddon:addMapIcon()
    if BisTooltipAddon.db.char.minimap_icon then
        icon_loaded = true
        local LDB = LibStub("LibDataBroker-1.1", true)
        local LDBIcon = LDB and LibStub("LibDBIcon-1.0", true)
        if LDB then
            local PC_MinimapBtn = LDB:NewDataObject(icon_name, {
                type = "launcher", text = icon_name, icon = "interface/icons/inv_weapon_glave_01.blp",
                OnClick = function(_, button)
                    if button == "LeftButton" then BisTooltipAddon:createMainFrame() end
                    if button == "RightButton" then BisTooltipAddon:openConfigDialog() end
                end,
                OnTooltipShow = function(tt)
                    tt:AddLine(BisTooltipAddon.AddonNameAndVersion)
                    tt:AddLine("|cffffff00Left click|r to open the BiS lists window")
                    tt:AddLine("|cffffff00Right click|r to open addon configuration window")
                end
            })
            if LDBIcon then LDBIcon:Register(icon_name, PC_MinimapBtn, BisTooltipAddon.db.char) end
        end
    end
end

function BisTooltipAddon:initConfig()
    BisTooltipAddon.db = LibStub("AceDB-3.0"):New("BisTooltipRenewedDB", db_defaults, "Default")
    migrateAddonDB()
    buildFilterSpecOptions()
    LibStub("AceConfig-3.0"):RegisterOptionsTable(BisTooltipAddon.AceAddonName, configTable)
    AceConfigDialog:AddToBlizOptions(BisTooltipAddon.AceAddonName, BisTooltipAddon.AceAddonName)
end