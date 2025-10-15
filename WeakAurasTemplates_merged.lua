-- Merged Lua files from directory: WeakAurasTemplates
-- Generated on: 2025-10-15T16:46:54.343Z
-- Total files merged: 17

-- ========================================
-- File: WeakAurasTemplates/AceGUI-Widgets/AceGUIContainer-WeakAurasTemplateGroup.lua
-- ========================================

if not WeakAuras.IsLibsOK() then return end

--[[-----------------------------------------------------------------------------
WeakAurasTemplateGroup Container
Simple container that is used in the template selection
-------------------------------------------------------------------------------]]
local Type, Version = "WeakAurasTemplateGroup", 1
local AceGUI = LibStub and LibStub("AceGUI-3.0", true)
if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

-- Lua APIs
local pairs = pairs

-- WoW APIs
local CreateFrame, UIParent = CreateFrame, UIParent

--[[-----------------------------------------------------------------------------
Methods
-------------------------------------------------------------------------------]]
local methods = {
  ["OnAcquire"] = function(self)
    self:SetWidth(300)
    self:SetHeight(100)
  end,

  ["LayoutFinished"] = function(self, width, height)
    if self.noAutoHeight then return end
    self:SetHeight((height or 0) + 15)
  end,

  ["OnWidthSet"] = function(self, width)
    local content = self.content
    local contentwidth = width - 20
    if contentwidth < 0 then
      contentwidth = 0
    end
    content:SetWidth(contentwidth)
    content.width = contentwidth
  end,

  ["OnHeightSet"] = function(self, height)
    local content = self.content
    local contentheight = height - 15
    if contentheight < 0 then
      contentheight = 0
    end
    content:SetHeight(contentheight)
    content.height = contentheight
  end
}

--[[-----------------------------------------------------------------------------
Constructor
-------------------------------------------------------------------------------]]
local PaneBackdrop  = {
  bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
  edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
  tile = true, tileSize = 16, edgeSize = 16,
  insets = { left = 3, right = 3, top = 5, bottom = 3 }
}

local function Constructor()
  local frame = CreateFrame("Frame", nil, UIParent)
  frame:SetFrameStrata("FULLSCREEN_DIALOG")

  --Container Support
  local content = CreateFrame("Frame", nil, frame)
  content:SetPoint("TOPLEFT", 20, 0)
  content:SetPoint("BOTTOMRIGHT", 0, 15)

  --- @type table<string, any>
  local widget = {
    frame     = frame,
    content   = content,
    type      = Type
  }
  for method, func in pairs(methods) do
    widget[method] = func
  end

  return AceGUI:RegisterAsContainer(widget)
end

AceGUI:RegisterWidgetType(Type, Constructor, Version)


-- ========================================
-- File: WeakAurasTemplates/Locales/deDE.lua
-- ========================================

if not WeakAuras.IsLibsOK() then return end

if (GAME_LOCALE or GetLocale()) ~= "deDE" then
  return
end

local L = WeakAuras.L

-- WeakAuras/Templates
	L["(Dwarf)"] = "(Zwerg)"
	L["(Dwarf/Human)"] = "(Zwerg/Mensch)"
	L["(Human)"] = "(Mensch)"
	L["(Night Elf)"] = "(Nachtelf)"
	L["(Troll)"] = "(Troll)"
	L["(Undead)"] = "(Untot)"
	L["Abilities"] = "Fähigkeiten"
	L["Add Triggers"] = "Auslöser hinzufügen"
	L["Always Active"] = "Immer aktiv"
	L["Always Show"] = "Immer anzeigen"
	L["Always show the aura, highlight it if debuffed."] = "Zeige immer die Aura, hebe sie hervor, wenn sie geschwächt ist."
	L["Always show the aura, turns grey if on cooldown."] = "Aura immer anzeigen, wird Grau wenn es auf Abkühlen steht."
	--[[Translation missing --]]
	L["Always show the aura, turns grey if the debuff not active."] = "Always show the aura, turns grey if the debuff not active."
	--[[Translation missing --]]
	L["Always shows highlights if enchant missing."] = "Always shows highlights if enchant missing."
	--[[Translation missing --]]
	L["Always shows the aura, grey if buff not active."] = "Always shows the aura, grey if buff not active."
	--[[Translation missing --]]
	L["Always shows the aura, highlight it if buffed."] = "Always shows the aura, highlight it if buffed."
	--[[Translation missing --]]
	L["Always shows the aura, highlight when active, turns blue on insufficient resources."] = "Always shows the aura, highlight when active, turns blue on insufficient resources."
	--[[Translation missing --]]
	L["Always shows the aura, highlight while proc is active, blue on insufficient resources."] = "Always shows the aura, highlight while proc is active, blue on insufficient resources."
	--[[Translation missing --]]
	L["Always shows the aura, highlight while proc is active, blue when not usable."] = "Always shows the aura, highlight while proc is active, blue when not usable."
	--[[Translation missing --]]
	L["Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."
	--[[Translation missing --]]
	L["Always shows the aura, turns blue on insufficient resources."] = "Always shows the aura, turns blue on insufficient resources."
	--[[Translation missing --]]
	L["Always shows the aura, turns blue when not usable."] = "Always shows the aura, turns blue when not usable."
	--[[Translation missing --]]
	L["Always shows the aura, turns grey if on cooldown."] = "Always shows the aura, turns grey if on cooldown."
	--[[Translation missing --]]
	L["Always shows the aura, turns grey if the ability is not usable and red when out of range."] = "Always shows the aura, turns grey if the ability is not usable and red when out of range."
	--[[Translation missing --]]
	L["Always shows the aura, turns grey if the ability is not usable."] = "Always shows the aura, turns grey if the ability is not usable."
	--[[Translation missing --]]
	L["Always shows the aura, turns red when out of range, blue on insufficient resources."] = "Always shows the aura, turns red when out of range, blue on insufficient resources."
	--[[Translation missing --]]
	L["Always shows the aura, turns red when out of range."] = "Always shows the aura, turns red when out of range."
	--[[Translation missing --]]
	L["Always shows the aura."] = "Always shows the aura."
	L["Back"] = "Zurück"
	--[[Translation missing --]]
	L["Basic Show On Cooldown"] = "Basic Show On Cooldown"
	--[[Translation missing --]]
	L["Basic Show On Ready"] = "Basic Show On Ready"
	L["Bloodlust/Heroism"] = "Kampfrausch/Heldentum"
	L["buff"] = "buff"
	L["Buffs"] = "Buffs"
	--[[Translation missing --]]
	L["Charge and Buff Tracking"] = "Charge and Buff Tracking"
	--[[Translation missing --]]
	L["Charge and Debuff Tracking"] = "Charge and Debuff Tracking"
	--[[Translation missing --]]
	L["Charge and Duration Tracking"] = "Charge and Duration Tracking"
	--[[Translation missing --]]
	L["Charge Tracking"] = "Charge Tracking"
	L["cooldown"] = "Abklingzeit"
	--[[Translation missing --]]
	L["Cooldown Tracking"] = "Cooldown Tracking"
	--[[Translation missing --]]
	L["Cooldowns"] = "Cooldowns"
	L["Create Auras"] = "Auren erstellen"
	L["debuff"] = "Schwächungszauber"
	L["Debuffs"] = "Debuffs"
	--[[Translation missing --]]
	L["dps buff"] = "dps buff"
	--[[Translation missing --]]
	L["Highlight while action is queued."] = "Highlight while action is queued."
	--[[Translation missing --]]
	L["Highlight while active, red when out of range."] = "Highlight while active, red when out of range."
	--[[Translation missing --]]
	L["Highlight while active."] = "Highlight while active."
	--[[Translation missing --]]
	L["Highlight while buffed, red when out of range."] = "Highlight while buffed, red when out of range."
	--[[Translation missing --]]
	L["Highlight while buffed."] = "Highlight while buffed."
	--[[Translation missing --]]
	L["Highlight while debuffed, red when out of range."] = "Highlight while debuffed, red when out of range."
	--[[Translation missing --]]
	L["Highlight while debuffed."] = "Highlight while debuffed."
	--[[Translation missing --]]
	L["Highlight while spell is active."] = "Highlight while spell is active."
	--[[Translation missing --]]
	L["Hold CTRL to create multiple auras at once"] = "Hold CTRL to create multiple auras at once"
	L["Keeps existing triggers intact"] = "Verändert existierende Auslöser nicht"
	--[[Translation missing --]]
	L["Master Channeler Rune"] = "Master Channeler Rune"
	L["Next"] = "Nächste"
	--[[Translation missing --]]
	L["Only show the aura if the target has the debuff."] = "Only show the aura if the target has the debuff."
	--[[Translation missing --]]
	L["Only show the aura when the item is on cooldown."] = "Only show the aura when the item is on cooldown."
	--[[Translation missing --]]
	L["Only shows if the weapon is enchanted."] = "Only shows if the weapon is enchanted."
	--[[Translation missing --]]
	L["Only shows if the weapon is not enchanted."] = "Only shows if the weapon is not enchanted."
	--[[Translation missing --]]
	L["Only shows the aura if the target has the buff."] = "Only shows the aura if the target has the buff."
	--[[Translation missing --]]
	L["Only shows the aura when the ability is on cooldown."] = "Only shows the aura when the ability is on cooldown."
	--[[Translation missing --]]
	L["Only shows the aura when the ability is ready to use."] = "Only shows the aura when the ability is ready to use."
	--[[Translation missing --]]
	L["Other cooldown"] = "Other cooldown"
	L["Pet alive"] = "Begleiter am Leben"
	--[[Translation missing --]]
	L["regen buff"] = "regen buff"
	L["Replace all existing triggers"] = "Ersetzt alle vorhandenen Auslöser "
	L["Replace Triggers"] = "Auslöser ersetzen"
	L["Resources"] = "Ressourcen"
	L["Resources and Shapeshift Form"] = "Ressourcen und Gestaltwandlungsform"
	--[[Translation missing --]]
	L["Rogue cooldown"] = "Rogue cooldown"
	L["Runes"] = "Runen"
	L["Shapeshift Form"] = "Gestaltwandlungsform"
	--[[Translation missing --]]
	L["Show Always, Glow on Missing"] = "Show Always, Glow on Missing"
	--[[Translation missing --]]
	L["Show Charges and Check Usable"] = "Show Charges and Check Usable"
	--[[Translation missing --]]
	L["Show Charges with Proc Tracking"] = "Show Charges with Proc Tracking"
	--[[Translation missing --]]
	L["Show Charges with Range Tracking"] = "Show Charges with Range Tracking"
	--[[Translation missing --]]
	L["Show Charges with Usable Check"] = "Show Charges with Usable Check"
	--[[Translation missing --]]
	L["Show Cooldown and Action Queued"] = "Show Cooldown and Action Queued"
	--[[Translation missing --]]
	L["Show Cooldown and Buff"] = "Show Cooldown and Buff"
	--[[Translation missing --]]
	L["Show Cooldown and Buff and Check for Target"] = "Show Cooldown and Buff and Check for Target"
	--[[Translation missing --]]
	L["Show Cooldown and Buff and Check Usable"] = "Show Cooldown and Buff and Check Usable"
	--[[Translation missing --]]
	L["Show Cooldown and Check for Target"] = "Show Cooldown and Check for Target"
	--[[Translation missing --]]
	L["Show Cooldown and Check for Target & Proc Tracking"] = "Show Cooldown and Check for Target & Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable"] = "Show Cooldown and Check Usable"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable & Target"] = "Show Cooldown and Check Usable & Target"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable, Proc Tracking"] = "Show Cooldown and Check Usable, Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable, Target & Proc Tracking"] = "Show Cooldown and Check Usable, Target & Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Debuff"] = "Show Cooldown and Debuff"
	--[[Translation missing --]]
	L["Show Cooldown and Debuff and Check for Target"] = "Show Cooldown and Debuff and Check for Target"
	L["Show Cooldown and Duration"] = "Abklingzeit und Dauer anzeigen"
	--[[Translation missing --]]
	L["Show Cooldown and Duration and Check for Target"] = "Show Cooldown and Duration and Check for Target"
	--[[Translation missing --]]
	L["Show Cooldown and Duration and Check Usable"] = "Show Cooldown and Duration and Check Usable"
	--[[Translation missing --]]
	L["Show Cooldown and Proc Tracking"] = "Show Cooldown and Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Totem Information"] = "Show Cooldown and Totem Information"
	--[[Translation missing --]]
	L["Show if Enchant Missing"] = "Show if Enchant Missing"
	--[[Translation missing --]]
	L["Show on Ready"] = "Show on Ready"
	--[[Translation missing --]]
	L["Show Only if Buffed"] = "Show Only if Buffed"
	--[[Translation missing --]]
	L["Show Only if Debuffed"] = "Show Only if Debuffed"
	--[[Translation missing --]]
	L["Show Only if Enchanted"] = "Show Only if Enchanted"
	--[[Translation missing --]]
	L["Show Only if on Cooldown"] = "Show Only if on Cooldown"
	--[[Translation missing --]]
	L["Show Totem and Charge Information"] = "Show Totem and Charge Information"
	L["Stance"] = "Haltung"
	--[[Translation missing --]]
	L["Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."
	--[[Translation missing --]]
	L["Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."] = "Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."
	--[[Translation missing --]]
	L["Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."] = "Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."
	--[[Translation missing --]]
	L["Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."] = "Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."
	L["Unknown Item"] = "Unbekannter Gegenstand"
	--[[Translation missing --]]
	L["Warrior cooldown"] = "Warrior cooldown"



-- ========================================
-- File: WeakAurasTemplates/Locales/enUS.lua
-- ========================================

if not WeakAuras.IsLibsOK() then return end

local L = WeakAuras.L

-- WeakAuras/Templates
	L["(Dwarf)"] = "(Dwarf)"
	L["(Dwarf/Human)"] = "(Dwarf/Human)"
	L["(Human)"] = "(Human)"
	L["(Night Elf)"] = "(Night Elf)"
	L["(Troll)"] = "(Troll)"
	L["(Undead)"] = "(Undead)"
	L["Abilities"] = "Abilities"
	L["Add Triggers"] = "Add Triggers"
	L["Always Active"] = "Always Active"
	L["Always Show"] = "Always Show"
	L["Always show the aura, highlight it if debuffed."] = "Always show the aura, highlight it if debuffed."
	L["Always show the aura, turns grey if on cooldown."] = "Always show the aura, turns grey if on cooldown."
	L["Always show the aura, turns grey if the debuff not active."] = "Always show the aura, turns grey if the debuff not active."
	L["Always shows highlights if enchant missing."] = "Always shows highlights if enchant missing."
	L["Always shows the aura, grey if buff not active."] = "Always shows the aura, grey if buff not active."
	L["Always shows the aura, highlight it if buffed."] = "Always shows the aura, highlight it if buffed."
	L["Always shows the aura, highlight when active, turns blue on insufficient resources."] = "Always shows the aura, highlight when active, turns blue on insufficient resources."
	L["Always shows the aura, highlight while proc is active, blue on insufficient resources."] = "Always shows the aura, highlight while proc is active, blue on insufficient resources."
	L["Always shows the aura, highlight while proc is active, blue when not usable."] = "Always shows the aura, highlight while proc is active, blue when not usable."
	L["Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."
	L["Always shows the aura, turns blue on insufficient resources."] = "Always shows the aura, turns blue on insufficient resources."
	L["Always shows the aura, turns blue when not usable."] = "Always shows the aura, turns blue when not usable."
	L["Always shows the aura, turns grey if on cooldown."] = "Always shows the aura, turns grey if on cooldown."
	L["Always shows the aura, turns grey if the ability is not usable and red when out of range."] = "Always shows the aura, turns grey if the ability is not usable and red when out of range."
	L["Always shows the aura, turns grey if the ability is not usable."] = "Always shows the aura, turns grey if the ability is not usable."
	L["Always shows the aura, turns red when out of range, blue on insufficient resources."] = "Always shows the aura, turns red when out of range, blue on insufficient resources."
	L["Always shows the aura, turns red when out of range."] = "Always shows the aura, turns red when out of range."
	L["Always shows the aura."] = "Always shows the aura."
	L["Back"] = "Back"
	L["Basic Show On Cooldown"] = "Basic Show On Cooldown"
	L["Basic Show On Ready"] = "Basic Show On Ready"
	L["Bloodlust/Heroism"] = "Bloodlust/Heroism"
	L["buff"] = "buff"
	L["Buffs"] = "Buffs"
	L["Charge and Buff Tracking"] = "Charge and Buff Tracking"
	L["Charge and Debuff Tracking"] = "Charge and Debuff Tracking"
	L["Charge and Duration Tracking"] = "Charge and Duration Tracking"
	L["Charge Tracking"] = "Charge Tracking"
	L["cooldown"] = "cooldown"
	L["Cooldown Tracking"] = "Cooldown Tracking"
	L["Cooldowns"] = "Cooldowns"
	L["Create Auras"] = "Create Auras"
	L["debuff"] = "debuff"
	L["Debuffs"] = "Debuffs"
	L["dps buff"] = "dps buff"
	L["Highlight while action is queued."] = "Highlight while action is queued."
	L["Highlight while active, red when out of range."] = "Highlight while active, red when out of range."
	L["Highlight while active."] = "Highlight while active."
	L["Highlight while buffed, red when out of range."] = "Highlight while buffed, red when out of range."
	L["Highlight while buffed."] = "Highlight while buffed."
	L["Highlight while debuffed, red when out of range."] = "Highlight while debuffed, red when out of range."
	L["Highlight while debuffed."] = "Highlight while debuffed."
	L["Highlight while spell is active."] = "Highlight while spell is active."
	L["Hold CTRL to create multiple auras at once"] = "Hold CTRL to create multiple auras at once"
	L["Keeps existing triggers intact"] = "Keeps existing triggers intact"
	L["Master Channeler Rune"] = "Master Channeler Rune"
	L["Next"] = "Next"
	L["Only show the aura if the target has the debuff."] = "Only show the aura if the target has the debuff."
	L["Only show the aura when the item is on cooldown."] = "Only show the aura when the item is on cooldown."
	L["Only shows if the weapon is enchanted."] = "Only shows if the weapon is enchanted."
	L["Only shows if the weapon is not enchanted."] = "Only shows if the weapon is not enchanted."
	L["Only shows the aura if the target has the buff."] = "Only shows the aura if the target has the buff."
	L["Only shows the aura when the ability is on cooldown."] = "Only shows the aura when the ability is on cooldown."
	L["Only shows the aura when the ability is ready to use."] = "Only shows the aura when the ability is ready to use."
	L["Other cooldown"] = "Other cooldown"
	L["Pet alive"] = "Pet alive"
	L["regen buff"] = "regen buff"
	L["Replace all existing triggers"] = "Replace all existing triggers"
	L["Replace Triggers"] = "Replace Triggers"
	L["Resources"] = "Resources"
	L["Resources and Shapeshift Form"] = "Resources and Shapeshift Form"
	L["Rogue cooldown"] = "Rogue cooldown"
	L["Runes"] = "Runes"
	L["Shapeshift Form"] = "Shapeshift Form"
	L["Show Always, Glow on Missing"] = "Show Always, Glow on Missing"
	L["Show Charges and Check Usable"] = "Show Charges and Check Usable"
	L["Show Charges with Proc Tracking"] = "Show Charges with Proc Tracking"
	L["Show Charges with Range Tracking"] = "Show Charges with Range Tracking"
	L["Show Charges with Usable Check"] = "Show Charges with Usable Check"
	L["Show Cooldown and Action Queued"] = "Show Cooldown and Action Queued"
	L["Show Cooldown and Buff"] = "Show Cooldown and Buff"
	L["Show Cooldown and Buff and Check for Target"] = "Show Cooldown and Buff and Check for Target"
	L["Show Cooldown and Buff and Check Usable"] = "Show Cooldown and Buff and Check Usable"
	L["Show Cooldown and Check for Target"] = "Show Cooldown and Check for Target"
	L["Show Cooldown and Check for Target & Proc Tracking"] = "Show Cooldown and Check for Target & Proc Tracking"
	L["Show Cooldown and Check Usable"] = "Show Cooldown and Check Usable"
	L["Show Cooldown and Check Usable & Target"] = "Show Cooldown and Check Usable & Target"
	L["Show Cooldown and Check Usable, Proc Tracking"] = "Show Cooldown and Check Usable, Proc Tracking"
	L["Show Cooldown and Check Usable, Target & Proc Tracking"] = "Show Cooldown and Check Usable, Target & Proc Tracking"
	L["Show Cooldown and Debuff"] = "Show Cooldown and Debuff"
	L["Show Cooldown and Debuff and Check for Target"] = "Show Cooldown and Debuff and Check for Target"
	L["Show Cooldown and Duration"] = "Show Cooldown and Duration"
	L["Show Cooldown and Duration and Check for Target"] = "Show Cooldown and Duration and Check for Target"
	L["Show Cooldown and Duration and Check Usable"] = "Show Cooldown and Duration and Check Usable"
	L["Show Cooldown and Proc Tracking"] = "Show Cooldown and Proc Tracking"
	L["Show Cooldown and Totem Information"] = "Show Cooldown and Totem Information"
	L["Show if Enchant Missing"] = "Show if Enchant Missing"
	L["Show on Ready"] = "Show on Ready"
	L["Show Only if Buffed"] = "Show Only if Buffed"
	L["Show Only if Debuffed"] = "Show Only if Debuffed"
	L["Show Only if Enchanted"] = "Show Only if Enchanted"
	L["Show Only if on Cooldown"] = "Show Only if on Cooldown"
	L["Show Totem and Charge Information"] = "Show Totem and Charge Information"
	L["Stance"] = "Stance"
	L["Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."
	L["Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."] = "Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."
	L["Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."] = "Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."
	L["Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."] = "Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."
	L["Unknown Item"] = "Unknown Item"
	L["Warrior cooldown"] = "Warrior cooldown"


-- Make missing translations available
setmetatable(WeakAuras.L, {__index = function(self, key)
  self[key] = (key or "")
  return key
end})


-- ========================================
-- File: WeakAurasTemplates/Locales/esES.lua
-- ========================================

if not WeakAuras.IsLibsOK() then return end

if (GAME_LOCALE or GetLocale()) ~= "esES" then
  return
end

local L = WeakAuras.L

-- WeakAuras/Templates
	L["(Dwarf)"] = "(Enano)"
	L["(Dwarf/Human)"] = "(Enano/Humano)"
	L["(Human)"] = "(Humano)"
	L["(Night Elf)"] = "(Elfo de la noche)"
	L["(Troll)"] = "(Trol)"
	L["(Undead)"] = "(No-muerto)"
	L["Abilities"] = "Habilidades"
	L["Add Triggers"] = "Añadir activadores"
	L["Always Active"] = "Siempre activo"
	L["Always Show"] = "Mostrar siempre"
	L["Always show the aura, highlight it if debuffed."] = "Mostrar siempre el aura, resaltarla si hay perjuicios."
	L["Always show the aura, turns grey if on cooldown."] = "Siempre muestra el aura, se vuelve gris si está en tiempo de reutilización."
	L["Always show the aura, turns grey if the debuff not active."] = "Mostrar siempre el aura, se vuelve gris si el perjuicio no está activo."
	L["Always shows highlights if enchant missing."] = "Siempre se muestra resplandeciente si no hay encantamiento."
	L["Always shows the aura, grey if buff not active."] = "Muestra siempre el aura, se vuelve gris si el beneficio no está activo."
	L["Always shows the aura, highlight it if buffed."] = "Muestra siempre el aura, la resalta si el beneficio está activo."
	L["Always shows the aura, highlight when active, turns blue on insufficient resources."] = "Muestra siempre el aura, la resalta si está activa, se vuelve azul si no hay suficientes recursos."
	L["Always shows the aura, highlight while proc is active, blue on insufficient resources."] = "Siempre muestra el aura, resalta mientras el prec está activo, azul con recursos insuficientes."
	L["Always shows the aura, highlight while proc is active, blue when not usable."] = "Muestra siempre el aura, resaltada mientras el prec está activo, azul cuando no se puede usar."
	L["Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Muestra siempre el aura, resalta mientras el prec está activo, se vuelve rojo cuando está fuera de alcance, azul en caso de recursos insuficientes."
	L["Always shows the aura, turns blue on insufficient resources."] = "Siempre muestra el aura, se vuelve azul con recursos insuficientes."
	L["Always shows the aura, turns blue when not usable."] = "Siempre muestra el aura, se vuelve azul cuando no se puede utilizar."
	L["Always shows the aura, turns grey if on cooldown."] = "Siempre muestra el aura, se vuelve gris si está en cooldown."
	L["Always shows the aura, turns grey if the ability is not usable and red when out of range."] = "Muestra siempre el aura, se vuelve gris si la habilidad no es utilizable y roja cuando está fuera de alcance."
	L["Always shows the aura, turns grey if the ability is not usable."] = "Muestra siempre el aura, se vuelve gris si la habilidad no es utilizable."
	L["Always shows the aura, turns red when out of range, blue on insufficient resources."] = "Siempre muestra el aura, se vuelve roja cuando está fuera de alcance, azul en caso de recursos insuficientes."
	L["Always shows the aura, turns red when out of range."] = "Siempre muestra el aura, se vuelve roja cuando está fuera de alcance."
	L["Always shows the aura."] = "Siempre muestra el aura."
	L["Back"] = "Volver"
	L["Basic Show On Cooldown"] = "Mostrar en reutilización básico"
	L["Basic Show On Ready"] = "Mostrar al estar listo básico"
	L["Bloodlust/Heroism"] = "Ansia de sangre/Heroísmo"
	L["buff"] = "beneficio"
	L["Buffs"] = "Beneficios"
	L["Charge and Buff Tracking"] = "Seguimiento de cargas y beneficios"
	L["Charge and Debuff Tracking"] = "Seguimiento de cargas y perjuicios"
	L["Charge and Duration Tracking"] = "Seguimiento de cargas y duración"
	L["Charge Tracking"] = "Seguimiento de cargas"
	L["cooldown"] = "reutilización"
	L["Cooldown Tracking"] = "Seguimiento de reutilización"
	L["Cooldowns"] = "Reutilizaciones"
	L["Create Auras"] = "Crear auras"
	L["debuff"] = "perjuicio"
	L["Debuffs"] = "Perjuicios"
	L["dps buff"] = "beneficio de dps"
	L["Highlight while action is queued."] = "Resaltar mientras la acción está en cola."
	L["Highlight while active, red when out of range."] = "Resaltar mientras está activa, rojo cuando está fuera de alcance."
	L["Highlight while active."] = "Resaltar mientras está activa."
	L["Highlight while buffed, red when out of range."] = "Resaltar cuando hay beneficio activo, rojo cuando esté fuera de rango."
	L["Highlight while buffed."] = "Resaltar cuando hay beneficio activo."
	L["Highlight while debuffed, red when out of range."] = "Resaltar cuando hay perjuicio activo, rojo cuando esté fuera de rango."
	L["Highlight while debuffed."] = "Resaltar cuando hay perjuicio activo."
	L["Highlight while spell is active."] = "Resaltar mientras el hechizo está activo."
	L["Hold CTRL to create multiple auras at once"] = "Mantén pulsado CTRL para crear varias auras a la vez"
	L["Keeps existing triggers intact"] = "Mantiene intactos los activadores existentes"
	L["Master Channeler Rune"] = "Runa de Maestro canalizador"
	L["Next"] = "Siguiente"
	L["Only show the aura if the target has the debuff."] = "Mostrar el aura solo si el objetivo tiene el perjuicio activo."
	L["Only show the aura when the item is on cooldown."] = "Mostrar el aura solo cuando el objeto está en reutilización."
	L["Only shows if the weapon is enchanted."] = "Mostrar solo si el arma está encantada."
	L["Only shows if the weapon is not enchanted."] = "Mostrar solo si el arma no está encantada."
	L["Only shows the aura if the target has the buff."] = "Muestra el aura solo si el objetivo tiene el beneficio activo."
	L["Only shows the aura when the ability is on cooldown."] = "Mostrar el aura solo cuando la habilidad está en reutilización."
	L["Only shows the aura when the ability is ready to use."] = "Mostrar el aura solo cuando la habilidad está lista para usar."
	L["Other cooldown"] = "Otra reutilización"
	L["Pet alive"] = "Mascota viva"
	L["regen buff"] = "beneficio regen"
	L["Replace all existing triggers"] = "Sustituir todos los activadores existentes"
	L["Replace Triggers"] = "Sustituir activadores"
	L["Resources"] = "Recursos"
	L["Resources and Shapeshift Form"] = "Recursos y cambio de forma"
	L["Rogue cooldown"] = "Reutilización de pícaro"
	L["Runes"] = "Runas"
	L["Shapeshift Form"] = "Cambio de forma"
	L["Show Always, Glow on Missing"] = "Siempre mostrar, resplandor si falta"
	L["Show Charges and Check Usable"] = "Mostrar cargos y comprobar utilizable"
	L["Show Charges with Proc Tracking"] = "Mostrar cargos con seguimiento de prec"
	L["Show Charges with Range Tracking"] = "Mostrar cargos con seguimiento de rango"
	L["Show Charges with Usable Check"] = "Mostrar cargas con comprobación que sea utilizable"
	L["Show Cooldown and Action Queued"] = "Mostrar reutilización y acción en cola"
	L["Show Cooldown and Buff"] = "Mostrar tiempo de reutilización y beneficio"
	L["Show Cooldown and Buff and Check for Target"] = "Mostrar Tiempo de reutilización, Beneficio y Comprobar objetivo"
	L["Show Cooldown and Buff and Check Usable"] = "Mostrar Tiempo de reutilización, Beneficio y Comprobar utilizable"
	L["Show Cooldown and Check for Target"] = [=[Mostrar reutilización y comprobar el objetivo
​]=]
	L["Show Cooldown and Check for Target & Proc Tracking"] = "Mostrar reutilización y objetivo y seguimiento de prec"
	L["Show Cooldown and Check Usable"] = "Mostrar reutilización y comprobar que sea utilizable"
	L["Show Cooldown and Check Usable & Target"] = "Mostrar reutilización y comprobar que sea utilizable y objetivo"
	L["Show Cooldown and Check Usable, Proc Tracking"] = "Mostrar reutilización y comprobar que sea utilizable, seguimiento de prec"
	L["Show Cooldown and Check Usable, Target & Proc Tracking"] = "Mostrar reutilización y comprobar que sea utilizable, objetivo y seguimiento de prec"
	L["Show Cooldown and Debuff"] = "Mostrar Tiempo de reutilización y Perjuicio"
	L["Show Cooldown and Debuff and Check for Target"] = "Mostrar Tiempo de reutilización, Perjuicio y Comprobar objetivo"
	L["Show Cooldown and Duration"] = "Mostrar reutilización y duración"
	L["Show Cooldown and Duration and Check for Target"] = "Mostrar reutilización y duración y comprobar para objetivo"
	L["Show Cooldown and Duration and Check Usable"] = "Mostrar reutilización y duración y comprobar que sea utilizable"
	L["Show Cooldown and Proc Tracking"] = "Mostrar reutilización y seguimiento de prec"
	L["Show Cooldown and Totem Information"] = "Mostrar reutilización y información de tótem"
	L["Show if Enchant Missing"] = "Mostrar si falta encantamiento"
	L["Show on Ready"] = "Mostrar al estar listo"
	L["Show Only if Buffed"] = "Mostrar solo si hay Beneficio activo"
	L["Show Only if Debuffed"] = "Mostrar solo si hay Perjuicio activo"
	L["Show Only if Enchanted"] = "Mostrar solo si está encantado"
	L["Show Only if on Cooldown"] = "Mostrar solo si está en tiempo de reutilización"
	L["Show Totem and Charge Information"] = "Mostrar tótem y información de carga"
	L["Stance"] = "Actitud"
	L["Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Realiza un seguimiento de la carga y el prec, resalta mientras el proc está activo, se vuelve rojo cuando está fuera de alcance, azul si hay recursos insuficientes."
	L["Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."] = "Realiza un seguimiento de la carga y el beneficio, resaltar cuando el beneficio está activo, azul si no hay recursos suficientes."
	L["Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."] = "Realiza un seguimiento de la carga y el perjuicio, resaltar cuando el perjuicio está activo, azul si no hay recursos suficientes."
	L["Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."] = "Realiza un seguimiento de la carga y la duración del hechizo, resalta mientras el hechizo está activo, azul si hay recursos insuficientes."
	L["Unknown Item"] = "Objeto desconocido"
	L["Warrior cooldown"] = "Reutilización de guerrero"



-- ========================================
-- File: WeakAurasTemplates/Locales/esMX.lua
-- ========================================

if not WeakAuras.IsLibsOK() then return end

if (GAME_LOCALE or GetLocale()) ~= "esMX" then
  return
end

local L = WeakAuras.L

-- WeakAuras/Templates
	L["(Dwarf)"] = "(Enano)"
	L["(Dwarf/Human)"] = "(Enano/Humano)"
	L["(Human)"] = "(Humano)"
	L["(Night Elf)"] = "(Elfo de la noche)"
	L["(Troll)"] = "(Trol)"
	L["(Undead)"] = "(No-muerto)"
	L["Abilities"] = "Habilidades"
	L["Add Triggers"] = "Añadir activadores"
	L["Always Active"] = "Siempre activo"
	L["Always Show"] = "Mostrar siempre"
	L["Always show the aura, highlight it if debuffed."] = "Mostrar siempre el aura, resaltar si hay perjuicios."
	L["Always show the aura, turns grey if on cooldown."] = "Siempre muestra el aura, se vuelve gris si está en reutilización."
	L["Always show the aura, turns grey if the debuff not active."] = "Mostrar siempre el aura, se vuelve gris si el perjuicio no está activo."
	L["Always shows highlights if enchant missing."] = "Siempre se muestra resaltados si no hay encantamiento."
	L["Always shows the aura, grey if buff not active."] = "Muestra siempre el aura, se vuelve gris si el beneficio no está activo."
	L["Always shows the aura, highlight it if buffed."] = "Muestra siempre el aura, resalta si el beneficio está activo."
	L["Always shows the aura, highlight when active, turns blue on insufficient resources."] = "Muestra siempre el aura, resalta si está activa, se vuelve azul si no hay suficientes recursos."
	L["Always shows the aura, highlight while proc is active, blue on insufficient resources."] = "Siempre muestra el aura, resalta mientras el prec está activo, azul con recursos insuficientes."
	L["Always shows the aura, highlight while proc is active, blue when not usable."] = "Muestra siempre el aura, resalta mientras el prec está activo, azul cuando no se puede usar."
	L["Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Muestra siempre el aura, resalta mientras el prec está activo, se vuelve rojo cuando está fuera de alcance, azul en caso de recursos insuficientes."
	L["Always shows the aura, turns blue on insufficient resources."] = "Siempre muestra el aura, se vuelve azul con recursos insuficientes."
	L["Always shows the aura, turns blue when not usable."] = "Siempre muestra el aura, se vuelve azul cuando no se puede utilizar."
	L["Always shows the aura, turns grey if on cooldown."] = "Siempre muestra el aura, se vuelve gris si está en reutilización."
	L["Always shows the aura, turns grey if the ability is not usable and red when out of range."] = "Muestra siempre el aura, se vuelve gris si la habilidad no es utilizable y roja cuando está fuera de alcance."
	L["Always shows the aura, turns grey if the ability is not usable."] = "Muestra siempre el aura, se vuelve gris si la habilidad no es utilizable."
	L["Always shows the aura, turns red when out of range, blue on insufficient resources."] = "Siempre muestra el aura, se vuelve roja cuando está fuera de alcance, azul en caso de recursos insuficientes."
	L["Always shows the aura, turns red when out of range."] = "Siempre muestra el aura, se vuelve roja cuando está fuera de alcance."
	L["Always shows the aura."] = "Siempre muestra el aura."
	L["Back"] = "Volver"
	L["Basic Show On Cooldown"] = "Mostrar en reutilización básico"
	L["Basic Show On Ready"] = "Mostrar al estar listo básico"
	L["Bloodlust/Heroism"] = "Ansia de sangre/Heroísmo"
	L["buff"] = "beneficio"
	L["Buffs"] = "Beneficios"
	L["Charge and Buff Tracking"] = "Seguimiento de cargas y beneficios"
	L["Charge and Debuff Tracking"] = "Seguimiento de cargas y perjuicios"
	L["Charge and Duration Tracking"] = "Seguimiento de cargas y duración"
	L["Charge Tracking"] = "Seguimiento de cargas"
	L["cooldown"] = "reutilización"
	L["Cooldown Tracking"] = "Seguimiento de reutilización"
	L["Cooldowns"] = "Reutilizaciones"
	L["Create Auras"] = "Crear auras"
	L["debuff"] = "perjuicio"
	L["Debuffs"] = "Perjuicios"
	L["dps buff"] = "beneficio de dps"
	L["Highlight while action is queued."] = "Resaltar mientras la acción está en cola."
	L["Highlight while active, red when out of range."] = "Resaltar mientras está activa, rojo cuando está fuera de alcance."
	L["Highlight while active."] = "Resaltar mientras está activa."
	L["Highlight while buffed, red when out of range."] = "Resaltar cuando hay beneficio activo, rojo cuando esté fuera de rango."
	L["Highlight while buffed."] = "Resaltar cuando hay beneficio activo."
	L["Highlight while debuffed, red when out of range."] = "Resaltar cuando hay perjuicio activo, rojo cuando esté fuera de rango."
	L["Highlight while debuffed."] = "Resaltar cuando hay perjuicio activo."
	L["Highlight while spell is active."] = "Resaltar mientras el hechizo está activo."
	L["Hold CTRL to create multiple auras at once"] = "Mantén pulsado CTRL para crear varias auras a la vez"
	L["Keeps existing triggers intact"] = "Mantiene intactos los activadores existentes"
	L["Master Channeler Rune"] = "Runa de Maestro canalizador"
	L["Next"] = "Siguiente"
	L["Only show the aura if the target has the debuff."] = "Mostrar el aura solo si el objetivo tiene el perjuicio activo."
	L["Only show the aura when the item is on cooldown."] = "Mostrar el aura solo cuando el objeto está en reutilización."
	L["Only shows if the weapon is enchanted."] = "Mostrar solo si el arma está encantada."
	L["Only shows if the weapon is not enchanted."] = "Mostrar solo si el arma no está encantada."
	L["Only shows the aura if the target has the buff."] = "Muestra el aura solo si el objetivo tiene el beneficio activo."
	L["Only shows the aura when the ability is on cooldown."] = "Mostrar el aura solo cuando la habilidad está en reutilización."
	L["Only shows the aura when the ability is ready to use."] = "Mostrar el aura solo cuando la habilidad está lista para usar."
	L["Other cooldown"] = "Otra reutilización"
	L["Pet alive"] = "Mascota viva"
	L["regen buff"] = "beneficio regen"
	L["Replace all existing triggers"] = "Sustituir todos los activadores existentes"
	L["Replace Triggers"] = "Sustituir activadores"
	L["Resources"] = "Recursos"
	L["Resources and Shapeshift Form"] = "Recursos y cambio de forma"
	L["Rogue cooldown"] = "Reutilización de pícaro"
	L["Runes"] = "Runas"
	L["Shapeshift Form"] = "Cambio de forma"
	L["Show Always, Glow on Missing"] = "Siempre mostrar, resplandor si falta"
	L["Show Charges and Check Usable"] = "Mostrar cargos y comprobar utilizable"
	L["Show Charges with Proc Tracking"] = "Mostrar cargos con seguimiento de prec"
	L["Show Charges with Range Tracking"] = "Mostrar cargos con seguimiento de rango"
	L["Show Charges with Usable Check"] = "Mostrar cargas con comprobación que sea utilizable"
	L["Show Cooldown and Action Queued"] = "Mostrar reutilización y acción en cola"
	L["Show Cooldown and Buff"] = "Mostrar tiempo de reutilización y beneficio"
	L["Show Cooldown and Buff and Check for Target"] = "Mostrar Tiempo de reutilización, Beneficio y Comprobar objetivo"
	L["Show Cooldown and Buff and Check Usable"] = "Mostrar Tiempo de reutilización, Beneficio y Comprobar utilizable"
	L["Show Cooldown and Check for Target"] = [=[Mostrar reutilización y comprobar el objetivo
​]=]
	L["Show Cooldown and Check for Target & Proc Tracking"] = "Mostrar reutilización y objetivo y seguimiento de prec"
	L["Show Cooldown and Check Usable"] = "Mostrar reutilización y comprobar que sea utilizable"
	L["Show Cooldown and Check Usable & Target"] = "Mostrar reutilización y comprobar que sea utilizable y objetivo"
	L["Show Cooldown and Check Usable, Proc Tracking"] = "Mostrar reutilización y comprobar que sea utilizable, seguimiento de prec"
	L["Show Cooldown and Check Usable, Target & Proc Tracking"] = "Mostrar reutilización y comprobar que sea utilizable, objetivo y seguimiento de prec"
	L["Show Cooldown and Debuff"] = "Mostrar Tiempo de reutilización y Perjuicio"
	L["Show Cooldown and Debuff and Check for Target"] = "Mostrar Tiempo de reutilización, Perjuicio y Comprobar objetivo"
	L["Show Cooldown and Duration"] = "Mostrar reutilización y duración"
	L["Show Cooldown and Duration and Check for Target"] = "Mostrar reutilización y duración y comprobar para objetivo"
	L["Show Cooldown and Duration and Check Usable"] = "Mostrar reutilización y duración y comprobar que sea utilizable"
	L["Show Cooldown and Proc Tracking"] = "Mostrar reutilización y seguimiento de prec"
	L["Show Cooldown and Totem Information"] = "Mostrar reutilización y información de tótem"
	L["Show if Enchant Missing"] = "Mostrar si falta encantamiento"
	L["Show on Ready"] = "Mostrar al estar listo"
	L["Show Only if Buffed"] = "Mostrar solo si hay Beneficio activo"
	L["Show Only if Debuffed"] = "Mostrar solo si hay Perjuicio activo"
	L["Show Only if Enchanted"] = "Mostrar solo si está encantado"
	L["Show Only if on Cooldown"] = "Mostrar solo si está en tiempo de reutilización"
	L["Show Totem and Charge Information"] = "Mostrar tótem y información de carga"
	L["Stance"] = "Actitud"
	L["Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Realiza un seguimiento de la carga y el proc, resalta mientras el prec está activo, se vuelve rojo cuando está fuera de alcance, azul si hay recursos insuficientes."
	L["Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."] = "Realiza un seguimiento de la carga y el beneficio, resaltar cuando el beneficio está activo, azul si no hay recursos suficientes."
	L["Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."] = "Realiza un seguimiento de la carga y el perjuicio, resaltar cuando el perjuicio está activo, azul si no hay recursos suficientes."
	L["Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."] = "Realiza un seguimiento de la carga y la duración del hechizo, resalta mientras el hechizo está activo, azul si hay recursos insuficientes."
	L["Unknown Item"] = "Objeto desconocido"
	L["Warrior cooldown"] = "Reutilización de guerrero"



-- ========================================
-- File: WeakAurasTemplates/Locales/frFR.lua
-- ========================================

if not WeakAuras.IsLibsOK() then return end

if (GAME_LOCALE or GetLocale()) ~= "frFR" then
  return
end

local L = WeakAuras.L

-- WeakAuras/Templates
	L["(Dwarf)"] = "(Nain)"
	L["(Dwarf/Human)"] = "(Nain/Humain)"
	L["(Human)"] = "(Humain)"
	L["(Night Elf)"] = "(Elfe de la nuit)"
	L["(Troll)"] = "(Troll)"
	L["(Undead)"] = "(Mort-vivant)"
	L["Abilities"] = "Capacités"
	L["Add Triggers"] = "Ajouter des déclencheurs"
	L["Always Active"] = "Toujours actif"
	L["Always Show"] = "Toujours afficher"
	L["Always show the aura, highlight it if debuffed."] = "Toujours afficher l'aura, surbrillance si absente."
	L["Always show the aura, turns grey if on cooldown."] = "Toujours afficher l'aura, devient grise si en recharge."
	L["Always show the aura, turns grey if the debuff not active."] = "Toujours afficher l'aura, devient gris si l'affaiblissement n'est pas actif."
	L["Always shows highlights if enchant missing."] = "Toujours afficher des reflets si l'enchantement est absent."
	L["Always shows the aura, grey if buff not active."] = "Toujours afficher l'aura, devient gris si l'amélioration n'est pas active."
	L["Always shows the aura, highlight it if buffed."] = "Toujours afficher l'aura, surbrillance si présente."
	L["Always shows the aura, highlight when active, turns blue on insufficient resources."] = "Toujours afficher l'aura, surbrillance si active, bleue si ressources insuffisantes."
	L["Always shows the aura, highlight while proc is active, blue on insufficient resources."] = "Toujours afficher l'aura, surbrillance tant que le proc est actif, bleue si ressources insuffisantes."
	L["Always shows the aura, highlight while proc is active, blue when not usable."] = "Toujours afficher l'aura, surbrillance tant que le proc est actif, bleue si non utilisable."
	L["Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Toujours afficher l'aura, surbrillance tant que le proc est actif, rouge si pas à portée, bleue si ressources insuffisantes."
	L["Always shows the aura, turns blue on insufficient resources."] = "Toujours afficher l'aura, bleue si ressources insuffisantes."
	L["Always shows the aura, turns blue when not usable."] = "Toujours afficher l'aura, bleue si non utilisable."
	L["Always shows the aura, turns grey if on cooldown."] = "Toujours afficher l'aura, devient grise si en recharge."
	L["Always shows the aura, turns grey if the ability is not usable and red when out of range."] = "Toujours afficher l'aura, grise si la technique n'est pas utilisable et rouge si hors de portée."
	L["Always shows the aura, turns grey if the ability is not usable."] = "Toujours afficher l'aura, griser si la technique n'est pas utilisable."
	L["Always shows the aura, turns red when out of range, blue on insufficient resources."] = "Toujours afficher l'aura, rouge si hors de portée, bleue si ressources insuffisantes."
	L["Always shows the aura, turns red when out of range."] = "Toujours afficher l'aura, rouge si hors de portée."
	L["Always shows the aura."] = "Toujours afficher l'aura."
	L["Back"] = "Retour"
	L["Basic Show On Cooldown"] = "Affichage de base en temps de recharge"
	--[[Translation missing --]]
	L["Basic Show On Ready"] = "Basic Show On Ready"
	L["Bloodlust/Heroism"] = "Furie sanguinaire/Héroïsme"
	L["buff"] = "amélioration"
	L["Buffs"] = "Améliorations"
	L["Charge and Buff Tracking"] = "Suivis des Charges et Amélioration"
	L["Charge and Debuff Tracking"] = "Suivis des Charges et Affaiblissement"
	L["Charge and Duration Tracking"] = "Suivi des Charges et Durée"
	L["Charge Tracking"] = "Suivis des Charges"
	L["cooldown"] = "temps de recharge"
	L["Cooldown Tracking"] = "Suivi du temps de recharge"
	--[[Translation missing --]]
	L["Cooldowns"] = "Cooldowns"
	L["Create Auras"] = "Créer Auras"
	L["debuff"] = "affaiblissement"
	L["Debuffs"] = "Affaiblissements"
	--[[Translation missing --]]
	L["dps buff"] = "dps buff"
	--[[Translation missing --]]
	L["Highlight while action is queued."] = "Highlight while action is queued."
	L["Highlight while active, red when out of range."] = "Mettre en surbrillance pendant qu'il est actif, rouge quand hors de portée."
	L["Highlight while active."] = "Mettez en surbrillance pendant qu 'il est actif."
	L["Highlight while buffed, red when out of range."] = "En surbrillance quand amélioré, rouge quand hors de portée"
	L["Highlight while buffed."] = "Mettez en surbrillance quand amélioré"
	L["Highlight while debuffed, red when out of range."] = "En surbrillance quand non-amélioré, rouge quand hors de portée"
	L["Highlight while debuffed."] = "Mettez en surbrillance quand non-amélioré."
	L["Highlight while spell is active."] = "Mettez en surbrillance quand le sort est actif."
	L["Hold CTRL to create multiple auras at once"] = "Maintenir CTRL pour créer plusieurs auras simultanément"
	L["Keeps existing triggers intact"] = "Garder intact les déclencheurs existants"
	--[[Translation missing --]]
	L["Master Channeler Rune"] = "Master Channeler Rune"
	L["Next"] = "Suivant"
	L["Only show the aura if the target has the debuff."] = "Montre l'aura que si la cible a l'affaiblissement."
	L["Only show the aura when the item is on cooldown."] = "Afficher uniquement l'aura quand l'objet est en recharge."
	L["Only shows if the weapon is enchanted."] = "N'afficher que si l'arme est enchanté"
	L["Only shows if the weapon is not enchanted."] = "N'afficher que si l'arme n'est pas enchanté."
	L["Only shows the aura if the target has the buff."] = "Montre l'aura que si la cible a l'amélioration."
	L["Only shows the aura when the ability is on cooldown."] = "Afficher uniquement l'aura quand la technique est en recharge."
	L["Only shows the aura when the ability is ready to use."] = "Afficher uniquement l'aura quand la technique est prête à être utilisée."
	L["Other cooldown"] = "Autre temps de recharge"
	L["Pet alive"] = "Familier vivant"
	--[[Translation missing --]]
	L["regen buff"] = "regen buff"
	L["Replace all existing triggers"] = "Remplacer tous les déclencheurs existant"
	L["Replace Triggers"] = "Remplacer les déclencheurs"
	L["Resources"] = "Ressources"
	L["Resources and Shapeshift Form"] = "Ressources et Forme de Changeforme"
	--[[Translation missing --]]
	L["Rogue cooldown"] = "Rogue cooldown"
	L["Runes"] = "Runes"
	L["Shapeshift Form"] = "Forme de Changeforme"
	L["Show Always, Glow on Missing"] = "Toujours afficher, lorsque la brillance est manquante"
	L["Show Charges and Check Usable"] = "Afficher les Charges et Vérifier si Utilisable"
	L["Show Charges with Proc Tracking"] = "Afficher les Charges avec le Suivi des Procs"
	L["Show Charges with Range Tracking"] = "Afficher les Charges avec Vérification de la Portée"
	L["Show Charges with Usable Check"] = "Afficher les Charges avec Vérification si Utilisable"
	--[[Translation missing --]]
	L["Show Cooldown and Action Queued"] = "Show Cooldown and Action Queued"
	L["Show Cooldown and Buff"] = "Afficher les Temps de Recharges et Améliorations"
	L["Show Cooldown and Buff and Check for Target"] = "Afficher le Temps de Recharge et l'Amélioration et Vérifier si il y a une Cible"
	L["Show Cooldown and Buff and Check Usable"] = "Afficher le Temps de Recharge et l'Amélioration et Vérifier si c'est Utilisable"
	L["Show Cooldown and Check for Target"] = "Afficher le Temps de Recharge et Vérifier si il y a une Cible"
	L["Show Cooldown and Check for Target & Proc Tracking"] = "Afficher le temps de recharge et Vérifier le Suivi des Cibles et des Procs"
	L["Show Cooldown and Check Usable"] = "Afficher le Temps de Recharge et Vérifier si c'est Utilisable"
	L["Show Cooldown and Check Usable & Target"] = "Afficher le Temps de Recharge et Vérifier si c'est Utilisable et si il y a une Cible"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable, Proc Tracking"] = "Show Cooldown and Check Usable, Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable, Target & Proc Tracking"] = "Show Cooldown and Check Usable, Target & Proc Tracking"
	L["Show Cooldown and Debuff"] = "Afficher le Temps de Recharge et L'Affaiblissement"
	L["Show Cooldown and Debuff and Check for Target"] = "Afficher les Temps de Recharge et l'Affaiblissement et Vérifier si il y a une Cible"
	--[[Translation missing --]]
	L["Show Cooldown and Duration"] = "Show Cooldown and Duration"
	--[[Translation missing --]]
	L["Show Cooldown and Duration and Check for Target"] = "Show Cooldown and Duration and Check for Target"
	--[[Translation missing --]]
	L["Show Cooldown and Duration and Check Usable"] = "Show Cooldown and Duration and Check Usable"
	--[[Translation missing --]]
	L["Show Cooldown and Proc Tracking"] = "Show Cooldown and Proc Tracking"
	L["Show Cooldown and Totem Information"] = "Afficher le Temps de Rechargement et l'Information du Totem"
	--[[Translation missing --]]
	L["Show if Enchant Missing"] = "Show if Enchant Missing"
	--[[Translation missing --]]
	L["Show on Ready"] = "Show on Ready"
	--[[Translation missing --]]
	L["Show Only if Buffed"] = "Show Only if Buffed"
	--[[Translation missing --]]
	L["Show Only if Debuffed"] = "Show Only if Debuffed"
	--[[Translation missing --]]
	L["Show Only if Enchanted"] = "Show Only if Enchanted"
	L["Show Only if on Cooldown"] = "Afficher Seulement si en Recharge"
	L["Show Totem and Charge Information"] = "Afficher les Informations du Totem et de Charge"
	L["Stance"] = "Posture"
	L["Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Suivre la charge et le proc, mettre en surbrillance pendant que le proc est actif, devient rouge lorsque vous êtes hors de portée, bleu lorsque les ressources sont insuffisantes"
	L["Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."] = "Suit la charge et le buff, surligne pendant que le buff est actif, bleu sur les ressources insuffisantes."
	L["Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."] = [=[
Suit la charge et le debuff, met en surbrillance pendant que le debuff est actif, bleu en cas de ressources insuffisantes.]=]
	L["Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."] = "Suit la charge et la durée du sort, mettez en surbrillance pendant que le sort est actif, bleu en cas de ressources insuffisantes."
	L["Unknown Item"] = "Objet inconnu"
	--[[Translation missing --]]
	L["Warrior cooldown"] = "Warrior cooldown"



-- ========================================
-- File: WeakAurasTemplates/Locales/itIT.lua
-- ========================================

if not WeakAuras.IsLibsOK() then return end

if (GAME_LOCALE or GetLocale()) ~= "itIT" then
  return
end

local L = WeakAuras.L

-- WeakAuras/Templates
	L["(Dwarf)"] = "(Nano)"
	L["(Dwarf/Human)"] = "(Nano/Umano)"
	L["(Human)"] = "(Umano)"
	L["(Night Elf)"] = "(Elfo della Notte)"
	--[[Translation missing --]]
	L["(Troll)"] = "(Troll)"
	L["(Undead)"] = "(Non Morto)"
	L["Abilities"] = "Abilità"
	L["Add Triggers"] = "Aggiungi Inneschi"
	L["Always Active"] = "Sempre Attivo"
	L["Always Show"] = "Mostra Sempre"
	L["Always show the aura, highlight it if debuffed."] = "Mostra sempre l'aura, evidenziata se c'è il debuff."
	L["Always show the aura, turns grey if on cooldown."] = "Mostra sempre l'aura, diventa grigia se in ricarica."
	L["Always show the aura, turns grey if the debuff not active."] = "Mostra sempre l'aura, diventa grigia se il debuff non è attivo."
	L["Always shows highlights if enchant missing."] = "Mostra sempre gli highlights se manca l'incantesimo."
	L["Always shows the aura, grey if buff not active."] = "Mostra sempre l'aura, grigia se il buff non è attivo."
	L["Always shows the aura, highlight it if buffed."] = "Mostra sempre l'aura, evidenziata se c'è il buff."
	L["Always shows the aura, highlight when active, turns blue on insufficient resources."] = "Mostra sempre l'aura, evidenziata quando attiva, diventa blu se la risorsa è insufficiente."
	L["Always shows the aura, highlight while proc is active, blue on insufficient resources."] = "Mostra sempre l'aura, evidenziata se il proc è attivo, blu se la risorsa è insufficiente."
	L["Always shows the aura, highlight while proc is active, blue when not usable."] = "Mostra sempre l'aura, evidenzata quando il proc è attivo, blu quando non utilizzabile."
	L["Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Mostra sempre l'aura, evidenziata quando il proc è attivo, rossa quando fuori portata, blu se la risorsa è insufficiente."
	L["Always shows the aura, turns blue on insufficient resources."] = "Mostra sempre l'aura, diventa blu se la risorsa è insufficiente."
	L["Always shows the aura, turns blue when not usable."] = "Mostra sempre l'aura, diventa blu quando non utilizzablie."
	L["Always shows the aura, turns grey if on cooldown."] = "Mostra sempre l'aura, diventa grigia se in ricarica."
	L["Always shows the aura, turns grey if the ability is not usable and red when out of range."] = "Mostra sempre l'aura, diventa grigica se l'abilità non è utilizzabile e rossa quando fuori portata."
	L["Always shows the aura, turns grey if the ability is not usable."] = "Mostra sempre l'aura, diventa grigia se l'abilità non è utilizzabile."
	L["Always shows the aura, turns red when out of range, blue on insufficient resources."] = "Mostra sempre l'aura, diventa rossa quando fuori portata, blu se la risorsa è insufficiente."
	L["Always shows the aura, turns red when out of range."] = "Mostra sempre l'aura,, diventa rossa quando fuori portata."
	L["Always shows the aura."] = "Mostra sempre l'aura."
	L["Back"] = "Indietro"
	L["Basic Show On Cooldown"] = "Semplice Mostra in Ricarica"
	--[[Translation missing --]]
	L["Basic Show On Ready"] = "Basic Show On Ready"
	L["Bloodlust/Heroism"] = "Brama di Sangue/Eroismo"
	L["buff"] = "buff"
	L["Buffs"] = "Buffs"
	L["Charge and Buff Tracking"] = "Monitoraggio di cariche e potenziamenti"
	L["Charge and Debuff Tracking"] = "Monitoraggio di cariche e penalità "
	L["Charge and Duration Tracking"] = "Monitoraggio della carica e della durata"
	L["Charge Tracking"] = "Monitoraggio della carica"
	--[[Translation missing --]]
	L["cooldown"] = "cooldown"
	L["Cooldown Tracking"] = "Monitoraggio del Cooldown "
	--[[Translation missing --]]
	L["Cooldowns"] = "Cooldowns"
	L["Create Auras"] = "Crea aure"
	--[[Translation missing --]]
	L["debuff"] = "debuff"
	--[[Translation missing --]]
	L["Debuffs"] = "Debuffs"
	--[[Translation missing --]]
	L["dps buff"] = "dps buff"
	--[[Translation missing --]]
	L["Highlight while action is queued."] = "Highlight while action is queued."
	--[[Translation missing --]]
	L["Highlight while active, red when out of range."] = "Highlight while active, red when out of range."
	--[[Translation missing --]]
	L["Highlight while active."] = "Highlight while active."
	--[[Translation missing --]]
	L["Highlight while buffed, red when out of range."] = "Highlight while buffed, red when out of range."
	--[[Translation missing --]]
	L["Highlight while buffed."] = "Highlight while buffed."
	--[[Translation missing --]]
	L["Highlight while debuffed, red when out of range."] = "Highlight while debuffed, red when out of range."
	--[[Translation missing --]]
	L["Highlight while debuffed."] = "Highlight while debuffed."
	--[[Translation missing --]]
	L["Highlight while spell is active."] = "Highlight while spell is active."
	--[[Translation missing --]]
	L["Hold CTRL to create multiple auras at once"] = "Hold CTRL to create multiple auras at once"
	--[[Translation missing --]]
	L["Keeps existing triggers intact"] = "Keeps existing triggers intact"
	--[[Translation missing --]]
	L["Master Channeler Rune"] = "Master Channeler Rune"
	--[[Translation missing --]]
	L["Next"] = "Next"
	--[[Translation missing --]]
	L["Only show the aura if the target has the debuff."] = "Only show the aura if the target has the debuff."
	--[[Translation missing --]]
	L["Only show the aura when the item is on cooldown."] = "Only show the aura when the item is on cooldown."
	--[[Translation missing --]]
	L["Only shows if the weapon is enchanted."] = "Only shows if the weapon is enchanted."
	--[[Translation missing --]]
	L["Only shows if the weapon is not enchanted."] = "Only shows if the weapon is not enchanted."
	--[[Translation missing --]]
	L["Only shows the aura if the target has the buff."] = "Only shows the aura if the target has the buff."
	--[[Translation missing --]]
	L["Only shows the aura when the ability is on cooldown."] = "Only shows the aura when the ability is on cooldown."
	--[[Translation missing --]]
	L["Only shows the aura when the ability is ready to use."] = "Only shows the aura when the ability is ready to use."
	--[[Translation missing --]]
	L["Other cooldown"] = "Other cooldown"
	--[[Translation missing --]]
	L["Pet alive"] = "Pet alive"
	--[[Translation missing --]]
	L["regen buff"] = "regen buff"
	--[[Translation missing --]]
	L["Replace all existing triggers"] = "Replace all existing triggers"
	--[[Translation missing --]]
	L["Replace Triggers"] = "Replace Triggers"
	--[[Translation missing --]]
	L["Resources"] = "Resources"
	--[[Translation missing --]]
	L["Resources and Shapeshift Form"] = "Resources and Shapeshift Form"
	--[[Translation missing --]]
	L["Rogue cooldown"] = "Rogue cooldown"
	--[[Translation missing --]]
	L["Runes"] = "Runes"
	--[[Translation missing --]]
	L["Shapeshift Form"] = "Shapeshift Form"
	--[[Translation missing --]]
	L["Show Always, Glow on Missing"] = "Show Always, Glow on Missing"
	--[[Translation missing --]]
	L["Show Charges and Check Usable"] = "Show Charges and Check Usable"
	--[[Translation missing --]]
	L["Show Charges with Proc Tracking"] = "Show Charges with Proc Tracking"
	--[[Translation missing --]]
	L["Show Charges with Range Tracking"] = "Show Charges with Range Tracking"
	--[[Translation missing --]]
	L["Show Charges with Usable Check"] = "Show Charges with Usable Check"
	--[[Translation missing --]]
	L["Show Cooldown and Action Queued"] = "Show Cooldown and Action Queued"
	--[[Translation missing --]]
	L["Show Cooldown and Buff"] = "Show Cooldown and Buff"
	--[[Translation missing --]]
	L["Show Cooldown and Buff and Check for Target"] = "Show Cooldown and Buff and Check for Target"
	--[[Translation missing --]]
	L["Show Cooldown and Buff and Check Usable"] = "Show Cooldown and Buff and Check Usable"
	--[[Translation missing --]]
	L["Show Cooldown and Check for Target"] = "Show Cooldown and Check for Target"
	--[[Translation missing --]]
	L["Show Cooldown and Check for Target & Proc Tracking"] = "Show Cooldown and Check for Target & Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable"] = "Show Cooldown and Check Usable"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable & Target"] = "Show Cooldown and Check Usable & Target"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable, Proc Tracking"] = "Show Cooldown and Check Usable, Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable, Target & Proc Tracking"] = "Show Cooldown and Check Usable, Target & Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Debuff"] = "Show Cooldown and Debuff"
	--[[Translation missing --]]
	L["Show Cooldown and Debuff and Check for Target"] = "Show Cooldown and Debuff and Check for Target"
	--[[Translation missing --]]
	L["Show Cooldown and Duration"] = "Show Cooldown and Duration"
	--[[Translation missing --]]
	L["Show Cooldown and Duration and Check for Target"] = "Show Cooldown and Duration and Check for Target"
	--[[Translation missing --]]
	L["Show Cooldown and Duration and Check Usable"] = "Show Cooldown and Duration and Check Usable"
	--[[Translation missing --]]
	L["Show Cooldown and Proc Tracking"] = "Show Cooldown and Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Totem Information"] = "Show Cooldown and Totem Information"
	--[[Translation missing --]]
	L["Show if Enchant Missing"] = "Show if Enchant Missing"
	--[[Translation missing --]]
	L["Show on Ready"] = "Show on Ready"
	--[[Translation missing --]]
	L["Show Only if Buffed"] = "Show Only if Buffed"
	--[[Translation missing --]]
	L["Show Only if Debuffed"] = "Show Only if Debuffed"
	--[[Translation missing --]]
	L["Show Only if Enchanted"] = "Show Only if Enchanted"
	--[[Translation missing --]]
	L["Show Only if on Cooldown"] = "Show Only if on Cooldown"
	--[[Translation missing --]]
	L["Show Totem and Charge Information"] = "Show Totem and Charge Information"
	--[[Translation missing --]]
	L["Stance"] = "Stance"
	--[[Translation missing --]]
	L["Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."
	--[[Translation missing --]]
	L["Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."] = "Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."
	--[[Translation missing --]]
	L["Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."] = "Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."
	--[[Translation missing --]]
	L["Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."] = "Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."
	--[[Translation missing --]]
	L["Unknown Item"] = "Unknown Item"
	--[[Translation missing --]]
	L["Warrior cooldown"] = "Warrior cooldown"



-- ========================================
-- File: WeakAurasTemplates/Locales/koKR.lua
-- ========================================

if not WeakAuras.IsLibsOK() then return end

if (GAME_LOCALE or GetLocale()) ~= "koKR" then
  return
end

local L = WeakAuras.L

-- WeakAuras/Templates
	L["(Dwarf)"] = "(드워프)"
	L["(Dwarf/Human)"] = "(드워프/인간)"
	L["(Human)"] = "(인간)"
	L["(Night Elf)"] = "(나이트 엘프)"
	L["(Troll)"] = "(트롤)"
	L["(Undead)"] = "(언데드)"
	L["Abilities"] = "스킬"
	L["Add Triggers"] = "활성 조건 추가"
	L["Always Active"] = "항상 활성화"
	L["Always Show"] = "항상 표시"
	L["Always show the aura, highlight it if debuffed."] = "이 위크오라를 항상 표시하고 디버프에 걸리면 강조합니다."
	L["Always show the aura, turns grey if on cooldown."] = "이 위크오라를 항상 표시하며, 쿨타임일땐 회색으로 바뀝니다."
	L["Always show the aura, turns grey if the debuff not active."] = "이 위크오라를 항상 표시하고 디버프가 없을땐 회색으로 바뀝니다."
	L["Always shows highlights if enchant missing."] = "마법 부여가 없으면 항상 강조 표시"
	L["Always shows the aura, grey if buff not active."] = "이 위크오라를 항상 표시하고 버프가 없을땐 회색으로 바뀝니다."
	L["Always shows the aura, highlight it if buffed."] = "이 위크오라를 항상 표시하고 버프에 걸리면 강조합니다."
	L["Always shows the aura, highlight when active, turns blue on insufficient resources."] = "이 위크오라를 항상 표시, 활성화 시 강조하며, 자원이 부족하면 파란색으로 바뀝니다."
	L["Always shows the aura, highlight while proc is active, blue on insufficient resources."] = "이 위크오라를 항상 표시, 발동중에 강조되며, 자원이 부족하면 파란색으로 바뀝니다."
	L["Always shows the aura, highlight while proc is active, blue when not usable."] = "이 위크오라를 항상 표시, 발동중에 강조되며, 사용할 수 없으면 파란색으로 바뀝니다."
	L["Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "이 위크오라를 항상 표시, 발동 중에 강조되며, 사정거리를 벗어나면 빨간색으로, 자원이 부족하면 파란색으로 바뀝니다."
	L["Always shows the aura, turns blue on insufficient resources."] = "이 위크오라를 항상 표시하며, 자원이 부족하면 파란색으로 바뀝니다."
	L["Always shows the aura, turns blue when not usable."] = "이 위크오라를 항상 표시하며, 사용할 수 없을 때는 파란색으로 바뀝니다."
	L["Always shows the aura, turns grey if on cooldown."] = "이 위크오라를 항상 표시하며, 쿨타임일땐 회색으로 바뀝니다."
	L["Always shows the aura, turns grey if the ability is not usable and red when out of range."] = "이 위크오라를 항상 표시, 스킬을 사용할 수 없으면 회색, 사정거리를 벗어나면 빨간색으로 바뀝니다."
	L["Always shows the aura, turns grey if the ability is not usable."] = "이 위크오라를 항상 표시하며, 스킬을 사용할 수 없으면 회색으로 바뀝니다."
	L["Always shows the aura, turns red when out of range, blue on insufficient resources."] = "이 위크오라를 항상 표시, 사정거리를 벗어나면 빨간색, 자원이 부족하면 파란색으로 바뀝니다."
	L["Always shows the aura, turns red when out of range."] = "이 위크오라를 항상 표시하며, 사정거리를 벗어나면 빨간색으로 바뀝니다."
	L["Always shows the aura."] = "이 위크오라를 항상 표시합니다."
	L["Back"] = "뒤로"
	L["Basic Show On Cooldown"] = "쿨타임일 때 기본형 표시"
	L["Basic Show On Ready"] = "준비 완료 시 표시"
	L["Bloodlust/Heroism"] = "피의 욕망/영웅심"
	L["buff"] = "버프"
	L["Buffs"] = "버프"
	L["Charge and Buff Tracking"] = "충전량 및 버프 추적"
	L["Charge and Debuff Tracking"] = "충전량 및 디버프 추적"
	L["Charge and Duration Tracking"] = "충전량 및 지속시간 추적"
	L["Charge Tracking"] = "충전량 추적"
	L["cooldown"] = "쿨타임"
	L["Cooldown Tracking"] = "쿨기 추적"
	L["Cooldowns"] = "쿨기"
	L["Create Auras"] = "위크오라 생성"
	L["debuff"] = "디버프"
	L["Debuffs"] = "디버프"
	L["dps buff"] = "딜 버프"
	L["Highlight while action is queued."] = "동작이 대기중인 동안 강조합니다."
	L["Highlight while active, red when out of range."] = "활성화된 동안 강조, 사정거리를 벗어나면 붉은색으로 바뀝니다."
	L["Highlight while active."] = "활성화된 동안 강조합니다."
	L["Highlight while buffed, red when out of range."] = "버프에 걸렸을 때 강조, 사정거리를 벗어나면 붉은색으로 바뀝니다."
	L["Highlight while buffed."] = "버프에 걸렸을 때 강조합니다."
	L["Highlight while debuffed, red when out of range."] = "디버프에 걸렸을 때 강조, 사정거리를 벗어나면 붉은색으로 바뀝니다."
	L["Highlight while debuffed."] = "디버프에 걸리면 강조합니다."
	L["Highlight while spell is active."] = "주문을 사용할 수 있을 때 강조합니다."
	L["Hold CTRL to create multiple auras at once"] = "한 번에 여러 위크오라를 만들려면 CTRL 키를 누르세요"
	L["Keeps existing triggers intact"] = "활성 조건 그대로 유지"
	L["Master Channeler Rune"] = "역술의 대가 룬"
	L["Next"] = "다음"
	L["Only show the aura if the target has the debuff."] = "대상에 디버프가 있을 때만 이 위크오라를 표시합니다."
	L["Only show the aura when the item is on cooldown."] = "아이템이 쿨타임일 때만 이 위크오라를 표시합니다."
	L["Only shows if the weapon is enchanted."] = "무기에 임시 마법부여가 발라졌을 때만 표시합니다."
	L["Only shows if the weapon is not enchanted."] = "무기에 임시 마법부여가 없을 때만 표시합니다."
	L["Only shows the aura if the target has the buff."] = "대상에 버프가 있을 때만 이 위크오라를 표시합니다."
	L["Only shows the aura when the ability is on cooldown."] = "스킬이 쿨타임일 때만 이 위크오라를 표시합니다."
	L["Only shows the aura when the ability is ready to use."] = "스킬을 사용할 수 있을 때만 이 위크오라를 표시합니다."
	L["Other cooldown"] = "다른 쿨기"
	L["Pet alive"] = "소환수 생존"
	L["regen buff"] = "재생 버프"
	L["Replace all existing triggers"] = "모든 활성 조건 교체"
	L["Replace Triggers"] = "활성 조건 교체"
	L["Resources"] = "자원"
	L["Resources and Shapeshift Form"] = "자원과 변신 형태"
	L["Rogue cooldown"] = "도적 쿨기"
	L["Runes"] = "룬"
	L["Shapeshift Form"] = "변신 형태"
	L["Show Always, Glow on Missing"] = "항상 표시, 없을때 반짝임"
	L["Show Charges and Check Usable"] = "충전량 표시와 사용 가능 여부 검사"
	L["Show Charges with Proc Tracking"] = "충전량 표시와 발동 추적"
	L["Show Charges with Range Tracking"] = "충전량 표시와 사정거리 추적"
	L["Show Charges with Usable Check"] = "충전량 표시와 사용 가능 상태 검사"
	L["Show Cooldown and Action Queued"] = "쿨타임과 다음 대기 동작 표시"
	L["Show Cooldown and Buff"] = "쿨타임과 버프 표시"
	L["Show Cooldown and Buff and Check for Target"] = "쿨타임과 버프 표시 및 대상 확인"
	L["Show Cooldown and Buff and Check Usable"] = "쿨타임과 버프 표시 및 사용 가능 검사"
	L["Show Cooldown and Check for Target"] = "쿨타임 표시 및 대상 확인"
	L["Show Cooldown and Check for Target & Proc Tracking"] = "쿨타임 표시와 대상 검사 및 발동 추적"
	L["Show Cooldown and Check Usable"] = "쿨타임 표시 및 사용 가능 상태 검사"
	L["Show Cooldown and Check Usable & Target"] = "쿨타임 표시와 사용 가능 상태 및 대상 검사"
	L["Show Cooldown and Check Usable, Proc Tracking"] = "쿨타임 표시와 사용 가능 상태 검사, 발동 추적"
	L["Show Cooldown and Check Usable, Target & Proc Tracking"] = "쿨타임 표시와 사용 가능 상태, 대상 검사 및 발동 추적"
	L["Show Cooldown and Debuff"] = "쿨타임과 디버프 표시"
	L["Show Cooldown and Debuff and Check for Target"] = "쿨타임과 디버프 표시 및 대상 검사"
	L["Show Cooldown and Duration"] = "쿨타임과 지속시간 표시"
	L["Show Cooldown and Duration and Check for Target"] = "쿨타임과 지속시간 표시 및 대상 검사"
	L["Show Cooldown and Duration and Check Usable"] = "쿨타임과 지속시간 표시 및 사용 가능 상태 검사"
	L["Show Cooldown and Proc Tracking"] = "쿨타임 표시와 발동 추적"
	L["Show Cooldown and Totem Information"] = "쿨타임과 토템 정보 표시"
	L["Show if Enchant Missing"] = "마법부여가 없으면 표시"
	L["Show on Ready"] = "사용 가능하면 표시"
	L["Show Only if Buffed"] = "버프에 걸리면 표시"
	L["Show Only if Debuffed"] = "디버프에 걸리면 표시"
	L["Show Only if Enchanted"] = "마법부여가 되있으면 표시"
	L["Show Only if on Cooldown"] = "쿨타임일 때만 표시"
	L["Show Totem and Charge Information"] = "토템과 충전량 정보 표시"
	L["Stance"] = "태세"
	L["Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "충전량과 발동을 추적하고 발동이 된 동안 강조, 사정거리 밖이면 빨간색, 자원이 부족하면 파란색으로 바뀝니다."
	L["Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."] = "충전량과 버프를 추적하고 버프에 걸려있으면 강조, 자원이 부족하면 파란색으로 바뀝니다."
	L["Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."] = "충전량과 디버프를 추적하고 디버프에 걸려있으면 강조, 자원이 부족하면 파란색으로 바뀝니다."
	L["Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."] = "충전량과 주문의 지속시간을 추적하고 주문이 사용 가능할 때 강조, 자원이 부족하면 파란색으로 바뀝니다."
	L["Unknown Item"] = "알 수 없는 아이템"
	L["Warrior cooldown"] = "전사 쿨기"



-- ========================================
-- File: WeakAurasTemplates/Locales/ptBR.lua
-- ========================================

if not WeakAuras.IsLibsOK() then return end

if (GAME_LOCALE or GetLocale()) ~= "ptBR" then
  return
end

local L = WeakAuras.L

-- WeakAuras/Templates
	--[[Translation missing --]]
	L["(Dwarf)"] = "(Dwarf)"
	--[[Translation missing --]]
	L["(Dwarf/Human)"] = "(Dwarf/Human)"
	--[[Translation missing --]]
	L["(Human)"] = "(Human)"
	--[[Translation missing --]]
	L["(Night Elf)"] = "(Night Elf)"
	--[[Translation missing --]]
	L["(Troll)"] = "(Troll)"
	--[[Translation missing --]]
	L["(Undead)"] = "(Undead)"
	L["Abilities"] = "Habilidades"
	L["Add Triggers"] = "Adicionar gatilhos"
	L["Always Active"] = "Sempre ativo"
	L["Always Show"] = "Mostrar sempre"
	L["Always show the aura, highlight it if debuffed."] = "Sempre mostrar a aura, destaque-a se estiver debuffado."
	L["Always show the aura, turns grey if on cooldown."] = "Sempre mostrar a aura, torne-a cinza se estiver em recarga."
	L["Always show the aura, turns grey if the debuff not active."] = "Sempre mostrar a aura, torne-a cinza se o debuff não estiver ativo."
	L["Always shows highlights if enchant missing."] = "Sempre mostrar um highlight se um encantamento estiver faltando."
	L["Always shows the aura, grey if buff not active."] = "Sempre mostrar a aura, torne-a cinza se o buff não estiver ativo."
	L["Always shows the aura, highlight it if buffed."] = "Sempre mostrar a aura, destaque-a se estiver buffado."
	L["Always shows the aura, highlight when active, turns blue on insufficient resources."] = "Sempre mostrar a aura, destaque-a quando estiver ativa, torne-a azul quando não houver recursos suficientes."
	L["Always shows the aura, highlight while proc is active, blue on insufficient resources."] = "Sempre mostrar a aura, destaque-a enquanto o proc estiver ativo, torne-a azul quando não houver recursos suficientes."
	L["Always shows the aura, highlight while proc is active, blue when not usable."] = "Sempre mostrar a aura, destaque-a quando o proc estiver ativo, torne-a azul quando não for usável."
	L["Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Sempre mostrar a aura, destaque-a quando o proc estiver ativo, torne-a vermelha quando estiver fora de alcance, azul quando não houver recursos suficientes."
	L["Always shows the aura, turns blue on insufficient resources."] = "Sempre mostrar a aura, torne-a azul quando não houver recursos suficientes."
	L["Always shows the aura, turns blue when not usable."] = "Sempre mostrar a aura, torne-a azul quando não for usável."
	L["Always shows the aura, turns grey if on cooldown."] = "Sempre mostrar a aura, torne-a cinza se estiver em tempo de recarga."
	L["Always shows the aura, turns grey if the ability is not usable and red when out of range."] = "Sempre mostrar a aura, torne-a cinza se a habilidade não for usável e vermelha quando estiver fora de alcance."
	L["Always shows the aura, turns grey if the ability is not usable."] = "Sempre mostrar a aura, torne-a cinza se a habilidade não for usável."
	L["Always shows the aura, turns red when out of range, blue on insufficient resources."] = "Sempre mostrar a aura, torne-a vermelha quando estiver fora de alcance, azul quando não houver recursos suficientes."
	L["Always shows the aura, turns red when out of range."] = "Sempre mostrar a aura, torne-a vermelha quando estiver fora de alcance."
	--[[Translation missing --]]
	L["Always shows the aura."] = "Always shows the aura."
	L["Back"] = "Voltar"
	--[[Translation missing --]]
	L["Basic Show On Cooldown"] = "Basic Show On Cooldown"
	--[[Translation missing --]]
	L["Basic Show On Ready"] = "Basic Show On Ready"
	L["Bloodlust/Heroism"] = "Sede de Sangue/Heroísmo"
	L["buff"] = "Buff"
	L["Buffs"] = "Buffs"
	L["Charge and Buff Tracking"] = "Carga e Rastreamento de Buff"
	L["Charge and Debuff Tracking"] = "Carga e Rastreamento de Debuff"
	L["Charge and Duration Tracking"] = "Carga e Rastreamento de Duração"
	L["Charge Tracking"] = "Rastreamento de Carga"
	L["cooldown"] = "tempo de recarga"
	--[[Translation missing --]]
	L["Cooldown Tracking"] = "Cooldown Tracking"
	--[[Translation missing --]]
	L["Cooldowns"] = "Cooldowns"
	--[[Translation missing --]]
	L["Create Auras"] = "Create Auras"
	--[[Translation missing --]]
	L["debuff"] = "debuff"
	--[[Translation missing --]]
	L["Debuffs"] = "Debuffs"
	--[[Translation missing --]]
	L["dps buff"] = "dps buff"
	--[[Translation missing --]]
	L["Highlight while action is queued."] = "Highlight while action is queued."
	--[[Translation missing --]]
	L["Highlight while active, red when out of range."] = "Highlight while active, red when out of range."
	--[[Translation missing --]]
	L["Highlight while active."] = "Highlight while active."
	--[[Translation missing --]]
	L["Highlight while buffed, red when out of range."] = "Highlight while buffed, red when out of range."
	--[[Translation missing --]]
	L["Highlight while buffed."] = "Highlight while buffed."
	--[[Translation missing --]]
	L["Highlight while debuffed, red when out of range."] = "Highlight while debuffed, red when out of range."
	--[[Translation missing --]]
	L["Highlight while debuffed."] = "Highlight while debuffed."
	--[[Translation missing --]]
	L["Highlight while spell is active."] = "Highlight while spell is active."
	--[[Translation missing --]]
	L["Hold CTRL to create multiple auras at once"] = "Hold CTRL to create multiple auras at once"
	--[[Translation missing --]]
	L["Keeps existing triggers intact"] = "Keeps existing triggers intact"
	--[[Translation missing --]]
	L["Master Channeler Rune"] = "Master Channeler Rune"
	--[[Translation missing --]]
	L["Next"] = "Next"
	--[[Translation missing --]]
	L["Only show the aura if the target has the debuff."] = "Only show the aura if the target has the debuff."
	--[[Translation missing --]]
	L["Only show the aura when the item is on cooldown."] = "Only show the aura when the item is on cooldown."
	--[[Translation missing --]]
	L["Only shows if the weapon is enchanted."] = "Only shows if the weapon is enchanted."
	--[[Translation missing --]]
	L["Only shows if the weapon is not enchanted."] = "Only shows if the weapon is not enchanted."
	--[[Translation missing --]]
	L["Only shows the aura if the target has the buff."] = "Only shows the aura if the target has the buff."
	--[[Translation missing --]]
	L["Only shows the aura when the ability is on cooldown."] = "Only shows the aura when the ability is on cooldown."
	--[[Translation missing --]]
	L["Only shows the aura when the ability is ready to use."] = "Only shows the aura when the ability is ready to use."
	--[[Translation missing --]]
	L["Other cooldown"] = "Other cooldown"
	--[[Translation missing --]]
	L["Pet alive"] = "Pet alive"
	--[[Translation missing --]]
	L["regen buff"] = "regen buff"
	--[[Translation missing --]]
	L["Replace all existing triggers"] = "Replace all existing triggers"
	--[[Translation missing --]]
	L["Replace Triggers"] = "Replace Triggers"
	--[[Translation missing --]]
	L["Resources"] = "Resources"
	--[[Translation missing --]]
	L["Resources and Shapeshift Form"] = "Resources and Shapeshift Form"
	--[[Translation missing --]]
	L["Rogue cooldown"] = "Rogue cooldown"
	--[[Translation missing --]]
	L["Runes"] = "Runes"
	--[[Translation missing --]]
	L["Shapeshift Form"] = "Shapeshift Form"
	--[[Translation missing --]]
	L["Show Always, Glow on Missing"] = "Show Always, Glow on Missing"
	--[[Translation missing --]]
	L["Show Charges and Check Usable"] = "Show Charges and Check Usable"
	--[[Translation missing --]]
	L["Show Charges with Proc Tracking"] = "Show Charges with Proc Tracking"
	--[[Translation missing --]]
	L["Show Charges with Range Tracking"] = "Show Charges with Range Tracking"
	--[[Translation missing --]]
	L["Show Charges with Usable Check"] = "Show Charges with Usable Check"
	--[[Translation missing --]]
	L["Show Cooldown and Action Queued"] = "Show Cooldown and Action Queued"
	--[[Translation missing --]]
	L["Show Cooldown and Buff"] = "Show Cooldown and Buff"
	--[[Translation missing --]]
	L["Show Cooldown and Buff and Check for Target"] = "Show Cooldown and Buff and Check for Target"
	--[[Translation missing --]]
	L["Show Cooldown and Buff and Check Usable"] = "Show Cooldown and Buff and Check Usable"
	--[[Translation missing --]]
	L["Show Cooldown and Check for Target"] = "Show Cooldown and Check for Target"
	--[[Translation missing --]]
	L["Show Cooldown and Check for Target & Proc Tracking"] = "Show Cooldown and Check for Target & Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable"] = "Show Cooldown and Check Usable"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable & Target"] = "Show Cooldown and Check Usable & Target"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable, Proc Tracking"] = "Show Cooldown and Check Usable, Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Check Usable, Target & Proc Tracking"] = "Show Cooldown and Check Usable, Target & Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Debuff"] = "Show Cooldown and Debuff"
	--[[Translation missing --]]
	L["Show Cooldown and Debuff and Check for Target"] = "Show Cooldown and Debuff and Check for Target"
	--[[Translation missing --]]
	L["Show Cooldown and Duration"] = "Show Cooldown and Duration"
	--[[Translation missing --]]
	L["Show Cooldown and Duration and Check for Target"] = "Show Cooldown and Duration and Check for Target"
	--[[Translation missing --]]
	L["Show Cooldown and Duration and Check Usable"] = "Show Cooldown and Duration and Check Usable"
	--[[Translation missing --]]
	L["Show Cooldown and Proc Tracking"] = "Show Cooldown and Proc Tracking"
	--[[Translation missing --]]
	L["Show Cooldown and Totem Information"] = "Show Cooldown and Totem Information"
	--[[Translation missing --]]
	L["Show if Enchant Missing"] = "Show if Enchant Missing"
	--[[Translation missing --]]
	L["Show on Ready"] = "Show on Ready"
	--[[Translation missing --]]
	L["Show Only if Buffed"] = "Show Only if Buffed"
	--[[Translation missing --]]
	L["Show Only if Debuffed"] = "Show Only if Debuffed"
	--[[Translation missing --]]
	L["Show Only if Enchanted"] = "Show Only if Enchanted"
	--[[Translation missing --]]
	L["Show Only if on Cooldown"] = "Show Only if on Cooldown"
	--[[Translation missing --]]
	L["Show Totem and Charge Information"] = "Show Totem and Charge Information"
	--[[Translation missing --]]
	L["Stance"] = "Stance"
	--[[Translation missing --]]
	L["Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."
	--[[Translation missing --]]
	L["Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."] = "Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."
	--[[Translation missing --]]
	L["Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."] = "Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."
	--[[Translation missing --]]
	L["Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."] = "Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."
	--[[Translation missing --]]
	L["Unknown Item"] = "Unknown Item"
	--[[Translation missing --]]
	L["Warrior cooldown"] = "Warrior cooldown"



-- ========================================
-- File: WeakAurasTemplates/Locales/ruRU.lua
-- ========================================

if not WeakAuras.IsLibsOK() then return end

if (GAME_LOCALE or GetLocale()) ~= "ruRU" then
  return
end

local L = WeakAuras.L

-- WeakAuras/Templates
	L["(Dwarf)"] = "(Дворф)"
	L["(Dwarf/Human)"] = "(Дворф/Человек)"
	L["(Human)"] = "(Человек)"
	L["(Night Elf)"] = "(Ночной эльф)"
	L["(Troll)"] = "(Тролль)"
	L["(Undead)"] = "(Нежить)"
	L["Abilities"] = "Способности"
	L["Add Triggers"] = "Добавить триггеры"
	L["Always Active"] = "Всегда активный триггер"
	L["Always Show"] = "Показывать всегда"
	L["Always show the aura, highlight it if debuffed."] = "Всегда показывает индикацию; выделяет ее, если на цели есть дебафф."
	L["Always show the aura, turns grey if on cooldown."] = "Всегда показывает индикацию; становится серой, если предмет восстанавливается."
	L["Always show the aura, turns grey if the debuff not active."] = "Всегда показывает индикацию; становится серой, если на цели нет дебаффа."
	L["Always shows highlights if enchant missing."] = "Всегда выделять, если отсутствует зачарование."
	L["Always shows the aura, grey if buff not active."] = "Всегда показывает индикацию; становится серой, если на цели нет баффа."
	L["Always shows the aura, highlight it if buffed."] = "Всегда показывает индикацию; выделяет ее, если на цели есть бафф."
	L["Always shows the aura, highlight when active, turns blue on insufficient resources."] = "Всегда показывает индикацию; выделяет ее, когда активна; становится синим при нехватке ресурсов."
	L["Always shows the aura, highlight while proc is active, blue on insufficient resources."] = "Всегда показывает индикацию; выделяет ее, когда сработала; становится синим при нехватке ресурсов."
	L["Always shows the aura, highlight while proc is active, blue when not usable."] = "Всегда показывает индикацию; выделяет ее, когда сработала; синий, когда нельзя использовать."
	L["Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Всегда показывает индикацию; выделяет ее, когда сработала; становится красным, когда вне зоны действия, синим при нехватке ресурсов."
	L["Always shows the aura, turns blue on insufficient resources."] = "Всегда показывает ауру, становится сними при недостаточных ресурсах."
	L["Always shows the aura, turns blue when not usable."] = "Всегда показывает ауру, становится синим, когда нельзя использовать."
	L["Always shows the aura, turns grey if on cooldown."] = "Всегда показывает ауру, становится серым, если на перезарядке."
	L["Always shows the aura, turns grey if the ability is not usable and red when out of range."] = "Всегда показывает ауру, становится серым, если способность нельзя использовать, и красным, когда находится вне зоны действия."
	L["Always shows the aura, turns grey if the ability is not usable."] = "Всегда показывает ауру, становится серым, если способность нельзя использовать."
	L["Always shows the aura, turns red when out of range, blue on insufficient resources."] = "Всегда показывает ауру, становится красным вне зоны действия, синим при недостаточных ресурсах."
	L["Always shows the aura, turns red when out of range."] = "Всегда показывает индикацию; становится красной, если цель вне зоны действия."
	L["Always shows the aura."] = "Всегда показывать индикацию."
	L["Back"] = "Назад"
	L["Basic Show On Cooldown"] = "Показать восстановление"
	L["Basic Show On Ready"] = "Основной: Показать по готовности"
	L["Bloodlust/Heroism"] = "Жажда крови / Героизм"
	L["buff"] = "(бафф)"
	L["Buffs"] = "Баффы"
	L["Charge and Buff Tracking"] = "Отслеживание заряда и баффов"
	L["Charge and Debuff Tracking"] = "Отслеживание зарядов и дебаффов"
	L["Charge and Duration Tracking"] = "Отслеживание заряда и продолжительности"
	L["Charge Tracking"] = "Отслеживание заряда"
	L["cooldown"] = "(восстановление)"
	L["Cooldown Tracking"] = "Отслеживание восстановления"
	L["Cooldowns"] = "Восстановление"
	L["Create Auras"] = "Создать"
	L["debuff"] = "(дебафф)"
	L["Debuffs"] = "Дебаффы"
	L["dps buff"] = "(бафф урона)"
	L["Highlight while action is queued."] = "Выделяет индикацию, если действие в очереди."
	L["Highlight while active, red when out of range."] = "Выделяет индикацию, если активно; становится красной, если цель вне зоны действия."
	L["Highlight while active."] = "Выделяет индикацию, если активно."
	L["Highlight while buffed, red when out of range."] = "Выделяет индикацию, если бафф активен; становится красной, если цель вне зоны действия."
	L["Highlight while buffed."] = "Выделяет индикацию, когда на цели есть бафф."
	L["Highlight while debuffed, red when out of range."] = "Выделяет индикацию, если дебафф активен; становится красной, если цель вне зоны действия."
	L["Highlight while debuffed."] = "Выделяет индикацию, когда на цели есть дебафф."
	L["Highlight while spell is active."] = "Выделяет индикацию, если заклинание активно."
	L["Hold CTRL to create multiple auras at once"] = "Удерживайте Ctrl для создания нескольких индикаций"
	L["Keeps existing triggers intact"] = "Сохраняет существующие триггеры нетронутыми"
	L["Master Channeler Rune"] = "(руна Мастер-чаротворец)"
	L["Next"] = "Далее"
	L["Only show the aura if the target has the debuff."] = "Показывает индикацию, только когда на цели есть дебафф."
	L["Only show the aura when the item is on cooldown."] = "Показывает индикацию, только когда предмет восстанавливается."
	L["Only shows if the weapon is enchanted."] = "Показывать индикацию, если на оружии есть чары."
	L["Only shows if the weapon is not enchanted."] = "Показывать индикацию, если на оружии нет чар."
	L["Only shows the aura if the target has the buff."] = "Показывает индикацию, только когда на цели есть бафф."
	L["Only shows the aura when the ability is on cooldown."] = "Показывает индикацию, только когда способность восстанавливается."
	L["Only shows the aura when the ability is ready to use."] = "Показывать индикацию только если способность готова к использованию."
	L["Other cooldown"] = "(восстановление, остальные)"
	L["Pet alive"] = "Питомец жив"
	L["regen buff"] = "(бафф восстановления маны)"
	L["Replace all existing triggers"] = "Заменяет все существующие триггеры"
	L["Replace Triggers"] = "Заменить триггеры"
	L["Resources"] = "Ресурсы"
	L["Resources and Shapeshift Form"] = "Ресурсы и облики друида"
	L["Rogue cooldown"] = "(восстановление, разбойник)"
	L["Runes"] = "Руны"
	L["Shapeshift Form"] = "Облик друида"
	L["Show Always, Glow on Missing"] = "Показывать всегда, сверкать при отсутствии"
	L["Show Charges and Check Usable"] = "Показать заряды и проверить доступность"
	L["Show Charges with Proc Tracking"] = "Показать заряды с отслеживанием срабатывания"
	L["Show Charges with Range Tracking"] = "Показать заряды с отслеживанием дистанции"
	L["Show Charges with Usable Check"] = "Показать заряды с проверкой доступности"
	L["Show Cooldown and Action Queued"] = "Показать восстановление и очередь действий"
	L["Show Cooldown and Buff"] = "Показать восстановление и бафф"
	L["Show Cooldown and Buff and Check for Target"] = "Показать восстановление, бафф и проверить цель"
	L["Show Cooldown and Buff and Check Usable"] = "Показать восстановление, бафф и проверить доступность"
	L["Show Cooldown and Check for Target"] = "Показать восстановление и проверить цель"
	L["Show Cooldown and Check for Target & Proc Tracking"] = "Показать восстановление и проверить цель, отслеживать срабатывание"
	L["Show Cooldown and Check Usable"] = "Показать восстановление и проверить доступность"
	L["Show Cooldown and Check Usable & Target"] = "Показать восстановление и проверить доступность, цель"
	L["Show Cooldown and Check Usable, Proc Tracking"] = "Показать восстановление и проверить доступность, отслеживать срабатывание"
	L["Show Cooldown and Check Usable, Target & Proc Tracking"] = "Показать восстановление и проверить доступность, цель, отслеживать срабатывание"
	L["Show Cooldown and Debuff"] = "Показать восстановление и дебафф"
	L["Show Cooldown and Debuff and Check for Target"] = "Показать восстановление, дебафф и проверить цель"
	L["Show Cooldown and Duration"] = "Показать восстановление и длительность"
	L["Show Cooldown and Duration and Check for Target"] = "Показать восстановление, длительность и проверить цель"
	L["Show Cooldown and Duration and Check Usable"] = "Показать восстановление, длительность и проверить доступность"
	L["Show Cooldown and Proc Tracking"] = "Показать восстановление и отслеживание срабатывания"
	L["Show Cooldown and Totem Information"] = "Показать восстановление и информацио о тотеме"
	L["Show if Enchant Missing"] = "Показать при отсутствии чар"
	L["Show on Ready"] = "Показывать готовность"
	L["Show Only if Buffed"] = "Показать бафф"
	L["Show Only if Debuffed"] = "Показать дебафф"
	L["Show Only if Enchanted"] = "Показать только если зачаровано"
	L["Show Only if on Cooldown"] = "Показать восстановление"
	L["Show Totem and Charge Information"] = "Показать информацию о тотеме и заряде"
	L["Stance"] = "Стойка"
	L["Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Отслеживайте заряд и срабатывание, подсвечивайте, пока срабатывание активно, становится красным, когда вне зоны действия, синим, когда недостаточно ресурсов."
	L["Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."] = "Отслеживает заряд и бафф, подсвечивает, пока бафф активен, синим - недостаточно ресурсов."
	L["Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."] = "Отслеживает заряд и дебафф, подсвечивает, пока дебафф активен, синим - недостаточно ресурсов."
	L["Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."] = "Отслеживает заряд и продолжительность заклинания, подсвечивает, пока заклинание активно, синим - недостаточно ресурсов."
	L["Unknown Item"] = "Неизвестный предмет"
	L["Warrior cooldown"] = "(восстановление, воин)"



-- ========================================
-- File: WeakAurasTemplates/Locales/zhCN.lua
-- ========================================

if not WeakAuras.IsLibsOK() then return end

if (GAME_LOCALE or GetLocale()) ~= "zhCN" then
  return
end

local L = WeakAuras.L

-- WeakAuras/Templates
	L["(Dwarf)"] = "（矮人）"
	L["(Dwarf/Human)"] = "（矮人/人类）"
	L["(Human)"] = "（人类）"
	L["(Night Elf)"] = "（暗夜精灵）"
	L["(Troll)"] = "（巨魔）"
	L["(Undead)"] = "（亡灵）"
	L["Abilities"] = "技能"
	L["Add Triggers"] = "添加触发器"
	L["Always Active"] = "总是激活"
	L["Always Show"] = "总是显示"
	L["Always show the aura, highlight it if debuffed."] = "总是显示光环，存在减益时高亮。"
	L["Always show the aura, turns grey if on cooldown."] = "总是显示光环，冷却中时变灰。"
	L["Always show the aura, turns grey if the debuff not active."] = "总是显示光环，无减益时变灰。"
	L["Always shows highlights if enchant missing."] = "如果附魔缺失，总是显示高亮。"
	L["Always shows the aura, grey if buff not active."] = "总是显示光环，无增益时变灰。"
	L["Always shows the aura, highlight it if buffed."] = "总是显示光环，有增益时高亮。"
	L["Always shows the aura, highlight when active, turns blue on insufficient resources."] = "总是显示光环，激活时高亮，资源不足时变蓝。"
	L["Always shows the aura, highlight while proc is active, blue on insufficient resources."] = "总是显示光环，激活时高亮，资源不足时变蓝。"
	L["Always shows the aura, highlight while proc is active, blue when not usable."] = "总是显示光环，激活时高亮，不可用时变蓝。"
	L["Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "总是显示光环，激活时高亮，超出距离时变红，资源不足时变蓝。"
	L["Always shows the aura, turns blue on insufficient resources."] = "总是显示光环，资源不足时变蓝。"
	L["Always shows the aura, turns blue when not usable."] = "总是显示光环，不可用时变蓝。"
	L["Always shows the aura, turns grey if on cooldown."] = "总是显示光环，冷却中时变灰。"
	L["Always shows the aura, turns grey if the ability is not usable and red when out of range."] = "总是显示光环，不可用时变灰，超出距离时变红。"
	L["Always shows the aura, turns grey if the ability is not usable."] = "总是显示光环，不可用时变灰。"
	L["Always shows the aura, turns red when out of range, blue on insufficient resources."] = "总是显示光环，超出距离时变红，资源不足时变蓝。"
	L["Always shows the aura, turns red when out of range."] = "总是显示光环，超出距离时变红。"
	L["Always shows the aura."] = "总是显示光环。"
	L["Back"] = "返回"
	L["Basic Show On Cooldown"] = "仅在冷却中显示"
	L["Basic Show On Ready"] = "仅在可用时显示"
	L["Bloodlust/Heroism"] = "嗜血/英勇"
	L["buff"] = "增益效果"
	L["Buffs"] = "增益效果"
	L["Charge and Buff Tracking"] = "可用次数充能和增益效果追踪"
	L["Charge and Debuff Tracking"] = "可用次数充能和减益效果追踪"
	L["Charge and Duration Tracking"] = "充能和持续时间追踪"
	L["Charge Tracking"] = "可用次数充能追踪"
	L["cooldown"] = "冷却"
	L["Cooldown Tracking"] = "冷却追踪"
	L["Cooldowns"] = "冷却"
	L["Create Auras"] = "创建光环"
	L["debuff"] = "减益效果"
	L["Debuffs"] = "减益"
	L["dps buff"] = "伤害加成"
	L["Highlight while action is queued."] = "动作在队列中时高亮"
	L["Highlight while active, red when out of range."] = "激活时高亮，超出距离时变红"
	L["Highlight while active."] = "激活时高亮"
	L["Highlight while buffed, red when out of range."] = "获得增益效果时高亮，超出范围变红显示"
	L["Highlight while buffed."] = "获得增益效果时高亮"
	L["Highlight while debuffed, red when out of range."] = "获得减益效果时高亮，超出范围变红显示"
	L["Highlight while debuffed."] = "获得减益效果时高亮"
	L["Highlight while spell is active."] = "当法术激活时高亮"
	L["Hold CTRL to create multiple auras at once"] = "按住 CTRL 键来一次性创建多个光环"
	L["Keeps existing triggers intact"] = "保持现存触发器完整"
	L["Master Channeler Rune"] = "引导大师符文"
	L["Next"] = "下一个"
	L["Only show the aura if the target has the debuff."] = "只有在目标拥有减益效果时才显示此光环"
	L["Only show the aura when the item is on cooldown."] = "只有当物品在冷却中时才显示此光环"
	L["Only shows if the weapon is enchanted."] = "只有当武器被附魔时才显示"
	L["Only shows if the weapon is not enchanted."] = "只有当武器没有被附魔时才显示"
	L["Only shows the aura if the target has the buff."] = "只有当目标拥有增益效果是才显示此光环"
	L["Only shows the aura when the ability is on cooldown."] = "只有当技能在冷却中时才显示此光环"
	L["Only shows the aura when the ability is ready to use."] = "只有当技能可用时才显示此光环"
	L["Other cooldown"] = "其他冷却"
	L["Pet alive"] = "宠物存活"
	L["regen buff"] = "法力值恢复速度加成"
	L["Replace all existing triggers"] = "替换所有现存的触发器"
	L["Replace Triggers"] = "替换触发器"
	L["Resources"] = "资源"
	L["Resources and Shapeshift Form"] = "资源和变形形态"
	L["Rogue cooldown"] = "潜行者冷却"
	L["Runes"] = "符文编号"
	L["Shapeshift Form"] = "变形形态"
	L["Show Always, Glow on Missing"] = "总是显示，缺失时发光"
	L["Show Charges and Check Usable"] = "显示可用次数充能并检查可用性"
	L["Show Charges with Proc Tracking"] = "显示可用次数充能和触发追踪"
	L["Show Charges with Range Tracking"] = "显示可用次数充能和距离追踪"
	L["Show Charges with Usable Check"] = "显示可用次数充能和可用性检测结果"
	L["Show Cooldown and Action Queued"] = "显示冷却和动作队列中"
	L["Show Cooldown and Buff"] = "显示冷却和增益效果"
	L["Show Cooldown and Buff and Check for Target"] = "显示冷却和增益效果并检查是否有选中的目标"
	L["Show Cooldown and Buff and Check Usable"] = "显示冷却和增益效果并检查可用性"
	L["Show Cooldown and Check for Target"] = "显示冷却并检查是否有选中的目标"
	L["Show Cooldown and Check for Target & Proc Tracking"] = "显示冷却并检查是否有选中的目标并追踪触发"
	L["Show Cooldown and Check Usable"] = "显示冷却并检查可用性"
	L["Show Cooldown and Check Usable & Target"] = "显示冷却并检查可用性和是否有选中的目标"
	L["Show Cooldown and Check Usable, Proc Tracking"] = "显示冷却并检查可用性和追踪触发"
	L["Show Cooldown and Check Usable, Target & Proc Tracking"] = "显示冷却并检查可用性，是否有选中的目标和追踪触发"
	L["Show Cooldown and Debuff"] = "显示冷却和减益效果"
	L["Show Cooldown and Debuff and Check for Target"] = "显示冷却和减益效果并检查是否有选中的目标"
	L["Show Cooldown and Duration"] = "显示冷却和持续时间"
	L["Show Cooldown and Duration and Check for Target"] = "显示冷却和持续时间并检查是否有选中的目标"
	L["Show Cooldown and Duration and Check Usable"] = "显示冷却和持续时间并检查可用性"
	L["Show Cooldown and Proc Tracking"] = "显示冷却并追踪触发"
	L["Show Cooldown and Totem Information"] = "显示冷却和图腾信息"
	L["Show if Enchant Missing"] = "当附魔缺失时显示"
	L["Show on Ready"] = "仅在可用时显示"
	L["Show Only if Buffed"] = "仅在获得增益效果时显示"
	L["Show Only if Debuffed"] = "仅在获得减益效果时显示"
	L["Show Only if Enchanted"] = "仅在已附魔时显示"
	L["Show Only if on Cooldown"] = "仅在冷却中显示"
	L["Show Totem and Charge Information"] = "显示图腾和可用次数充能信息"
	L["Stance"] = "姿态"
	L["Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "追踪可用次数充能和触发，当触发时高亮显示，超出距离时变红显示，资源不足时变蓝显示"
	L["Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."] = "追踪可用次数和增益效果，当增益效果激活时高亮，当没有足够资源是变蓝显示"
	L["Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."] = "追踪可用次数和减益效果，当减益效果激活时高亮，当没有足够资源是变蓝显示"
	L["Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."] = "追踪法术的充能和持续时间，当法术激活时高亮，没有足够的能量时变蓝。"
	L["Unknown Item"] = "未知物品"
	L["Warrior cooldown"] = "战士冷却"



-- ========================================
-- File: WeakAurasTemplates/Locales/zhTW.lua
-- ========================================

if not WeakAuras.IsLibsOK() then return end

if (GAME_LOCALE or GetLocale()) ~= "zhTW" then
  return
end

local L = WeakAuras.L

-- WeakAuras/Templates
	L["(Dwarf)"] = "(矮人)"
	L["(Dwarf/Human)"] = "(矮人/人類)"
	L["(Human)"] = "(人類)"
	L["(Night Elf)"] = "(夜精靈)"
	L["(Troll)"] = "(食人妖)"
	L["(Undead)"] = "(不死族)"
	L["Abilities"] = "技能"
	L["Add Triggers"] = "新增觸發"
	L["Always Active"] = "永遠有作用"
	L["Always Show"] = "永遠顯示"
	L["Always show the aura, highlight it if debuffed."] = "永遠顯示提醒效果，有減益作用時顯著標示。"
	L["Always show the aura, turns grey if on cooldown."] = "永遠顯示提醒效果，冷卻中變成灰色。"
	L["Always show the aura, turns grey if the debuff not active."] = "永遠顯示提醒效果，沒有減益作用時變成灰色。"
	L["Always shows highlights if enchant missing."] = "缺少附魔時，永遠顯示顯著標示。"
	L["Always shows the aura, grey if buff not active."] = "永遠顯示提醒效果，沒有增益作用時變成灰色。"
	L["Always shows the aura, highlight it if buffed."] = "永遠顯示提醒效果，有增益作用時顯著標示。"
	L["Always shows the aura, highlight when active, turns blue on insufficient resources."] = "永遠顯示提醒效果，作用時顯著標示，資源不足時變成藍色。"
	L["Always shows the aura, highlight while proc is active, blue on insufficient resources."] = "永遠顯示提醒效果，機率觸發時顯著標示，資源不足時變成藍色。"
	L["Always shows the aura, highlight while proc is active, blue when not usable."] = "永遠顯示提醒效果，機率觸發時顯著標示，不可使用時變成藍色。"
	L["Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "永遠顯示提醒效果，機率觸發時顯著標示，超出範圍時變成紅色，資源不足時變成藍色。"
	L["Always shows the aura, turns blue on insufficient resources."] = "永遠顯示提醒效果，資源不足時變成藍色。"
	L["Always shows the aura, turns blue when not usable."] = "永遠顯示提醒效果，不可使用時變成藍色。"
	L["Always shows the aura, turns grey if on cooldown."] = "永遠顯示提醒效果，冷卻中變成灰色。"
	L["Always shows the aura, turns grey if the ability is not usable and red when out of range."] = "永遠顯示提醒效果，技能不可使用時變成灰色，超出範圍時變成紅色。"
	L["Always shows the aura, turns grey if the ability is not usable."] = "永遠顯示提醒效果，技能不可使用時變成灰色。"
	L["Always shows the aura, turns red when out of range, blue on insufficient resources."] = "永遠顯示提醒效果，超出範圍時變成紅色，資源不足時變成藍色。"
	L["Always shows the aura, turns red when out of range."] = "永遠顯示提醒效果，超出範圍時變成紅色。"
	L["Always shows the aura."] = "永遠顯示提醒效果。"
	L["Back"] = "上一步"
	L["Basic Show On Cooldown"] = "基本冷卻中顯示"
	L["Basic Show On Ready"] = "可使用時基本顯示"
	L["Bloodlust/Heroism"] = "嗜血/英勇"
	L["buff"] = "種族特長"
	L["Buffs"] = "增益 BUFF"
	L["Charge and Buff Tracking"] = "次數和增益監控"
	L["Charge and Debuff Tracking"] = "次數和減益監控"
	L["Charge and Duration Tracking"] = "次數和持續時間監控"
	L["Charge Tracking"] = "次數監控"
	L["cooldown"] = "冷卻"
	L["Cooldown Tracking"] = "冷卻監控"
	L["Cooldowns"] = "冷卻"
	L["Create Auras"] = "建立提醒效果"
	L["debuff"] = "減益"
	L["Debuffs"] = "減益 DEBUFF/DOT"
	L["dps buff"] = "dps增益"
	L["Highlight while action is queued."] = "顯著標示等待中的動作。"
	L["Highlight while active, red when out of range."] = "作用時顯著標示，超出範圍時變成紅色。"
	L["Highlight while active."] = "作用時顯著標示。"
	L["Highlight while buffed, red when out of range."] = "有增益時顯著標示，超出範圍時變成紅色。"
	L["Highlight while buffed."] = "有增益時顯著標示。"
	L["Highlight while debuffed, red when out of range."] = "有減益時顯著標示，超出範圍時變成紅色。"
	L["Highlight while debuffed."] = "有減益時顯著標示。"
	L["Highlight while spell is active."] = "法術作用時顯著標示。"
	L["Hold CTRL to create multiple auras at once"] = "按住 CTRL 鍵一次建立多個提醒效果"
	L["Keeps existing triggers intact"] = "完整保留已經存在的觸發事件"
	L["Master Channeler Rune"] = "大師通靈符文"
	L["Next"] = "下一步"
	L["Only show the aura if the target has the debuff."] = "只在選取目標有減益時才顯示提醒效果。"
	L["Only show the aura when the item is on cooldown."] = "只有物品在冷卻中才顯示提醒效果。"
	L["Only shows if the weapon is enchanted."] = "只有在武器有附魔時顯示。"
	L["Only shows if the weapon is not enchanted."] = "只有在武器沒有附魔時顯示。"
	L["Only shows the aura if the target has the buff."] = "只在選取目標有增益時才顯示提醒效果。"
	L["Only shows the aura when the ability is on cooldown."] = "只有技能在冷卻中才顯示提醒效果。"
	L["Only shows the aura when the ability is ready to use."] = "只有在技能準備好可以使用時才顯示提醒效果。"
	L["Other cooldown"] = "其他冷卻時間"
	L["Pet alive"] = "寵物活著"
	L["regen buff"] = "再生增益"
	L["Replace all existing triggers"] = "取代所有已經存在的觸發"
	L["Replace Triggers"] = "取代觸發"
	L["Resources"] = "職業特殊資源"
	L["Resources and Shapeshift Form"] = "職業特殊資源和變身形態"
	L["Rogue cooldown"] = "盜賊冷卻時間"
	L["Runes"] = "符文"
	L["Shapeshift Form"] = "變身形態"
	L["Show Always, Glow on Missing"] = "永遠顯示，缺少時發光"
	L["Show Charges and Check Usable"] = "顯示次數和檢查是否可用"
	L["Show Charges with Proc Tracking"] = "顯示包含機率觸發監控的次數"
	L["Show Charges with Range Tracking"] = "顯示包含範圍監控的次數"
	L["Show Charges with Usable Check"] = "顯示包含檢查是否可用的次數"
	L["Show Cooldown and Action Queued"] = "顯示冷卻時間和等待中的動作"
	L["Show Cooldown and Buff"] = "顯示冷卻和增益"
	L["Show Cooldown and Buff and Check for Target"] = "顯示冷卻和增益並檢查選取目標"
	L["Show Cooldown and Buff and Check Usable"] = "顯示冷卻和增益並檢查是否可用"
	L["Show Cooldown and Check for Target"] = "顯示冷卻和檢查選取目標"
	L["Show Cooldown and Check for Target & Proc Tracking"] = "顯示冷卻並檢查選取目標和機率觸發監控"
	L["Show Cooldown and Check Usable"] = "顯示冷卻和檢查是否可用"
	L["Show Cooldown and Check Usable & Target"] = "顯示冷卻並檢查是否可用和選取目標"
	L["Show Cooldown and Check Usable, Proc Tracking"] = "顯示冷卻並檢查是否可用和機率觸發監控"
	L["Show Cooldown and Check Usable, Target & Proc Tracking"] = "顯示冷卻並檢查是否可用和選取目標以及機率觸發監控"
	L["Show Cooldown and Debuff"] = "顯示冷卻和減益"
	L["Show Cooldown and Debuff and Check for Target"] = "顯示冷卻和減益並檢查選取目標"
	L["Show Cooldown and Duration"] = "顯示冷卻時間和持續時間"
	L["Show Cooldown and Duration and Check for Target"] = "顯示冷卻時間、持續時間和檢查目標"
	L["Show Cooldown and Duration and Check Usable"] = "顯示冷卻時間、持續時間和檢查是否可使用"
	L["Show Cooldown and Proc Tracking"] = "顯示冷卻和機率觸發監控"
	L["Show Cooldown and Totem Information"] = "顯示冷卻和圖騰資訊"
	L["Show if Enchant Missing"] = "缺少附魔時顯示"
	L["Show on Ready"] = "可用時顯示"
	L["Show Only if Buffed"] = "只在有增益時顯示"
	L["Show Only if Debuffed"] = "只在有減益時顯示"
	L["Show Only if Enchanted"] = "有附魔時顯示"
	L["Show Only if on Cooldown"] = "只有在冷卻中時顯示"
	L["Show Totem and Charge Information"] = "顯示圖騰和次數資訊"
	L["Stance"] = "姿勢/形態"
	L["Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "監控次數和機率觸發，觸發時顯著標示，超出範圍時變成紅色，資源不足時變成藍色。"
	L["Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."] = "追蹤次數和增益，有增益作用時顯著標示，資源不足時變成藍色。"
	L["Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."] = "追蹤次數和減益，有減益作用時顯著標示，資源不足時變成藍色。"
	L["Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."] = "追蹤法術的可用次數和持續時間，法術作用時顯著標示，資源不足時變成藍色。"
	L["Unknown Item"] = "未知的物品"
	L["Warrior cooldown"] = "戰士冷卻時間"



-- ========================================
-- File: WeakAurasTemplates/TriggerTemplates.lua
-- ========================================

-- Special layout for the New Aura Trigger template page

local AddonName, TemplatePrivate = ...

local AceGUI = LibStub("AceGUI-3.0");
local floor, ceil, tinsert = floor, ceil, tinsert;
local CreateFrame, UnitClass, UnitRace, GetSpecialization = CreateFrame, UnitClass, UnitRace, GetSpecialization;
---@class WeakAuras
local WeakAuras = WeakAuras;
local L = WeakAuras.L

AceGUI:RegisterLayout("WATemplateTriggerLayoutFlyout", function(content, children)
  local width = content.width or content:GetWidth() or 0
  local columns = floor(width / 250);

  local rows = columns > 0 and ceil(#children / columns) or 0;
  columns = rows > 0 and ceil(#children / rows) or 1;
  local relWidth = 1 / columns;
  for i = 1, #children do
    local child = children[i]
    if (not child:IsFullWidth()) then
      child:SetRelativeWidth(relWidth);
    end
  end
  local flowLayout = AceGUI:GetLayout("Flow");
  flowLayout(content, children);
end);

local colors = {
  grey = { 0.5, 0.5, 0.5, 1 },
  blue = { 0.5, 0.5, 1, 1 },
  red = { 0.8, 0.1, 0.1, 1 },
  white = { 1, 1, 1, 1 },
  yellow = { 1, 1, 0, 1 },
  green = { 0, 1, 0, 1},
};

local regionColorProperty = {
  icon = "color",
  aurabar= "barColor",
  progresstexture = "foregroundColor",
  text = "color",
  texture = "color",
};

local function changes(property, regionType)
  if colors[property] and regionColorProperty[regionType] then
    return {
      value = colors[property],
      property = regionColorProperty[regionType],
    };
  elseif property == "glow" and (regionType == "icon" or regionType == "aurabar") then
    local subregionPos = regionType == "aurabar" and 1 or 2
    return {
      value = true,
      property = "sub."..subregionPos..".glow"
    };
  elseif TemplatePrivate.Private.regionTypes[regionType].default[property] == nil then
    return nil;
  elseif property == "cooldownSwipe" then
    return {
      value = true,
      property = "cooldownSwipe",
    };
  elseif property == "alpha" then
    return {
      value = 0.5,
      property = "alpha",
    };
  elseif property == "inverse" then
    return {
      value = false,
      property = "inverse",
    };
  end
end

local checks = {
  spellInRange = {
    variable = "spellInRange",
    value = 0,
  },
  itemInRange = {
    variable = "itemInRange",
    value = 0,
  },
  hasTarget = {
    trigger = -1,
    variable = "hastarget",
    value = 0,
  },
  insufficientResources =  {
    variable = "insufficientResources",
    value = 1,
  },
  buffedAuraFound = {
    variable = "show",
    value = 1,
  },
  buffedAuraAlways = {
    variable = "buffed",
    value = 1,
  },
  buffedFalseAuraAlways = {
    variable = "buffed",
    value = 0,
  },
  duration = {
    variable = "show",
    value = 1,
  },
  onCooldown = {
    variable = "onCooldown",
    value = 1,
  },
  charges = {
    variable = "charges",
    op = "==",
    value = "0",
  },
  usable = {
    variable = "spellUsable",
    value = 0,
  },
  totem = {
    variable = "show",
    value = 1,
  },
  overlayGlow = {
    variable = "show",
    value = 1,
  },
  uninterruptible = {
    variable = "interruptible",
    value = 0,
  },
  enchantMissing = {
    variable = "enchanted",
    value = 0
  },
  queued = {
    variable = "show",
    value = 1,
  }
}

local function buildCondition(trigger, check, properties)
  local result = {};
  result.check = CopyTable(check);
  if (not result.check.trigger) then
    result.check.trigger = trigger;
  end

  result.changes = {};
  local hasChanges = false;
  for index, v in ipairs(properties) do
    result.changes[index] = CopyTable(v);
    hasChanges = true;
  end
  return hasChanges and result or nil;
end

local function missingBuffGreyed(conditions, trigger, regionType)
  tinsert(conditions, buildCondition(trigger, checks.buffedFalseAuraAlways, {changes("grey", regionType)}));
end

local function isNotUsableBlue(conditions, trigger, regionType)
  tinsert(conditions, buildCondition(trigger, checks.usable, {changes("blue", regionType)}));
end

local function insufficientResourcesBlue(conditions, trigger, regionType)
  tinsert(conditions, buildCondition(trigger, checks.insufficientResources, {changes("blue", regionType)}));
end

local function hasChargesGrey(conditions, trigger, regionType)
  if regionType == "icon" then
    tinsert(conditions, buildCondition(trigger, checks.charges, {changes("cooldownSwipe", regionType)}));
  else
    tinsert(conditions, buildCondition(trigger, checks.charges, {changes("grey", regionType)}));
  end
end

local function isOnCdGrey(conditions, trigger, regionType)
  tinsert(conditions, buildCondition(trigger, checks.onCooldown, {changes("grey", regionType)}));
end

local function GenericGlow(conditions, trigger, regionType, check)
  if regionType == "icon" then
    tinsert(conditions, buildCondition(trigger, check, {changes("inverse", regionType),
                                                        changes("glow", regionType),
                                                        changes("white", regionType)}));
  elseif regionType == "aurabar" then
    tinsert(conditions, buildCondition(trigger, check, {changes("inverse", regionType),
                                                        changes("glow", regionType),
                                                        changes("yellow", regionType)}));
  elseif regionType == "progresstexture" then
    tinsert(conditions, buildCondition(trigger, check, {changes("inverse", regionType),
                                                        changes("yellow", regionType)}));
  else
    tinsert(conditions, buildCondition(trigger, check, {changes("yellow", regionType)}));
  end
end

local function isQueuedGlow(conditions, trigger, regionType)
  GenericGlow(conditions, trigger, regionType, checks.queued)
end

local function isBuffedGlow(conditions, trigger, regionType)
  GenericGlow(conditions, trigger, regionType, checks.buffedAuraFound)
end

local function isDurationGlow(conditions, trigger, regionType)
  GenericGlow(conditions, trigger, regionType, checks.duration)
end

local function isBuffedGlowAuraAlways(conditions, trigger, regionType)
  GenericGlow(conditions, trigger, regionType, checks.buffedAuraAlways)
end

local function totemActiveGlow(conditions, trigger, regionType)
  GenericGlow(conditions, trigger, regionType, checks.totem)
end

local function isMissingEnchantGlow(conditions, trigger, regionType)
  tinsert(conditions, buildCondition(trigger, checks.enchantMissing, {changes("glow", regionType)}));
end

local function overlayGlow(conditions, trigger, regionType)
  if regionType == "icon" or regionType == "aurabar" then
    tinsert(conditions, buildCondition(trigger, checks.overlayGlow, {changes("glow", regionType)}));
  else
    tinsert(conditions, buildCondition(trigger, checks.overlayGlow, {changes("yellow", regionType)}));
  end
end

local function uninterruptibleRed(conditions, trigger, regionType)
  tinsert(conditions, buildCondition(trigger, checks.uninterruptible, {changes("red", regionType)}));
end

local function isSpellNotInRangeRed(conditions, trigger, regionType)
  tinsert(conditions, buildCondition(trigger, checks.spellInRange, {changes("red", regionType)}));
end

local function itemInRangeRed(conditions, trigger, regionType)
  tinsert(conditions, buildCondition(trigger, checks.itemInRange, {changes("red", regionType)}));
end

local function createBuffTrigger(triggers, position, item, buffShowOn, isBuff, data)
  triggers[position] = {
    trigger = {
      unit = item.unit or isBuff and "player" or "target",
      type = "aura2",
      matchesShowOn = buffShowOn,
      debuffType = isBuff and "HELPFUL" or "HARMFUL",
      ownOnly = not item.forceOwnOnly and true or item.ownOnly,
      unitExists = false,
    }
  };

  if item.spellIds then
    if item.exactSpellId then
      triggers[position].trigger.useExactSpellId = true
      triggers[position].trigger.auraspellids = {}
      for index, spell in ipairs(item.spellIds) do
        triggers[position].trigger.auraspellids[index] = tostring(spell)
      end
    else
      triggers[position].trigger.useName = true
      triggers[position].trigger.auranames = {}
      for index, spell in ipairs(item.spellIds) do
        triggers[position].trigger.auranames[index] = tostring(spell)
      end
    end
  else
    if item.exactSpellId then
      triggers[position].trigger.useExactSpellId = true
      triggers[position].trigger.auraspellids = { tostring(item.buffId or item.spell) }
    else
      triggers[position].trigger.useName = true
      triggers[position].trigger.auranames = { tostring(item.buffId or item.spell) }
    end
  end

  if triggers[position].trigger.unit == "multi" and buffShowOn == "showOnActive"  then
    local trigger = triggers[position].trigger
    trigger.useGroup_count = true
    trigger.group_countOperator =  ">="
    trigger.group_count = "1"
  end

  if (item.unit == "group") then
    triggers[position].trigger.name_info = "players";
  end
  if (item.unit == "multi") then
    triggers[position].trigger.spellId = item.buffId or item.spell;
  end

  if item.progressSource then
    data.progressSource = { position, item.progressSource }
  end

  if item.maxProgress then
    data.useAdjustededMax = true
    data.adjustedMax = item.maxProgress
  end
end

local function createDurationTrigger(triggers, position, item)
  triggers[position] = {
    trigger = {
      type = WeakAuras.GetTriggerCategoryFor("Combat Log"),
      event = "Combat Log",
      subeventSuffix = "_CAST_SUCCESS",
      use_sourceUnit = true,
      sourceUnit = item.unit or "player",
      use_spellId = true,
      spellId = tostring(item.spell),
      duration = tostring(item.duration),
    }
  };
end

local function createTotemTrigger(triggers, position, item)
  triggers[position] = {
    trigger = {
      type = WeakAuras.GetTriggerCategoryFor("Totem"),
      event = "Totem",
      use_totemName = item.totemNumber == nil,
      totemName = TemplatePrivate.Private.ExecEnv.GetSpellInfo(item.spell),
    }
  };
  if (item.totemNumber) then
    triggers[position].trigger.use_totemType = true;
    triggers[position].trigger.totemType = item.totemNumber;
  end
end

local function createPowerTrigger(triggers, position, item)
  triggers[position] = {
    trigger = {
      type = WeakAuras.GetTriggerCategoryFor("Power"),
      event = "Power",
      use_unit = true,
      unit = "player",
      use_powertype = true,
      use_showCost = true,
      powertype = item.powertype,
    },
  };
end

local function createHealthTrigger(triggers, position, item)
  triggers[position] = {
    trigger = {
      type = WeakAuras.GetTriggerCategoryFor("Health"),
      event = "Health",
      unit = "player",
      use_unit = true,
      use_absorbMode = true,
      use_showAbsorb = true,
      use_showIncomingHeal = true,
    },
  };
end

local function createCastTrigger(triggers, position, item)
  triggers[position] = {
    trigger = {
      type = WeakAuras.GetTriggerCategoryFor("Cast"),
      event = "Cast",
      use_unit = true,
      unit = item.unit or "player",
    },
  };
end

local function createAbilityTrigger(triggers, position, item, genericShowOn)
  triggers[position] = {
    trigger = {
      type = WeakAuras.GetTriggerCategoryFor("Cooldown Progress (Spell)"),
      event = "Cooldown Progress (Spell)",
      spellName = item.spell,
      use_genericShowOn = true,
      genericShowOn = genericShowOn,
      use_exact_spellName = item.exactSpellId
    }
  };
  if genericShowOn == "showOnReady" then
    triggers[position].trigger.use_track = true
    triggers[position].trigger.track = "cooldown"
  end
end

local function createItemTrigger(triggers, position, item, genericShowOn)
  triggers[position] = {
    trigger = {
      type = WeakAuras.GetTriggerCategoryFor("Cooldown Progress (Item)"),
      event = "Cooldown Progress (Item)",
      use_genericShowOn = true,
      genericShowOn = genericShowOn,
      itemName = item.spell,
    }
  };
end

local function createOverlayGlowTrigger(triggers, position, item)
  triggers[position] = {
    trigger = {
      type = WeakAuras.GetTriggerCategoryFor("Spell Activation Overlay"),
      event = "Spell Activation Overlay",
      spellName = item.spell,
    }
  };
end

local function createWeaponEnchantTrigger(triggers, position, item, showOn)
  triggers[position] = {
    trigger = {
      type = WeakAuras.GetTriggerCategoryFor("Weapon Enchant"),
      event = "Weapon Enchant",
      use_enchant = true,
      enchant = tostring(item.enchant),
      weapon = item.weapon,
      showOn = showOn
    }
  }
end

local function createQueuedActionTrigger(triggers, position, item)
  triggers[position] = {
    trigger = {
      type = WeakAuras.GetTriggerCategoryFor("Queued Action"),
      event = "Queued Action",
      spellName = item.spell
    }
  }
end

local function createAbilityAndQueuedActionTrigger(triggers, item)
  createAbilityTrigger(triggers, 1, item, "showAlways");
  createQueuedActionTrigger(triggers, 2, item);
end

local function createAbilityAndDurationTrigger(triggers, item)
  createDurationTrigger(triggers, 1, item);
  createAbilityTrigger(triggers, 2, item, "showAlways");
end

local function createAbilityAndBuffTrigger(triggers, item, data)
  createBuffTrigger(triggers, 1, item, "showOnActive", true, data);
  createAbilityTrigger(triggers, 2, item, "showAlways");
end

local function createAbilityAndDebuffTrigger(triggers, item, data)
  createBuffTrigger(triggers, 1, item, "showOnActive", false, data);
  createAbilityTrigger(triggers, 2, item, "showAlways");
end

local function createAbilityAndOverlayGlowTrigger(triggers, item)
  createAbilityTrigger(triggers, 1, item, "showAlways");
  createOverlayGlowTrigger(triggers, 2, item);
end

-- Create preview thumbnail
local function createThumbnail(parent)
  -- Preview frame
  local borderframe = CreateFrame("Frame", nil, parent);
  --- @cast borderframe table|Frame
  borderframe:SetWidth(32);
  borderframe:SetHeight(32);

  -- Preview border
  local border = borderframe:CreateTexture(nil, "OVERLAY");
  border:SetAllPoints(borderframe);
  border:SetTexture("Interface\\BUTTONS\\UI-Quickslot2.blp");
  border:SetTexCoord(0.2, 0.8, 0.2, 0.8);

  -- Main region
  local region = CreateFrame("Frame", nil, borderframe);
  --- @cast region table|Frame
  borderframe.region = region;

  -- Preview children
  region.children = {};

  -- Return preview
  return borderframe;
end

local function subTypesFor(item, regionType)
  local types = {};
  local icon = {
    target = function()
      local thumbnail = createThumbnail();
      local t1 = thumbnail:CreateTexture(nil, "ARTWORK");
      t1:SetTexture(134376);
      t1:SetAllPoints(thumbnail);

      thumbnail.elapsed = 0;
      thumbnail:SetScript("OnUpdate", function(self, elapsed)
        self.elapsed = self.elapsed + elapsed;
        if(self.elapsed < 0.5) then
          t1:SetVertexColor(1,0,0,1);
        elseif(self.elapsed < 1.5) then
          t1:SetVertexColor(1,1,1,1);
        elseif(self.elapsed < 3) then
          -- Do nothing
        else
          self.elapsed = self.elapsed - 3;
        end
      end);
      return thumbnail;
    end, -- 132212,
    glow = function()
      local thumbnail = createThumbnail();
      local t1 = thumbnail:CreateTexture(nil, "ARTWORK");
      t1:SetTexture(134376);
      t1:SetAllPoints(thumbnail);
      WeakAuras.ShowOverlayGlow(thumbnail); -- where to call HideOverlayGlow() ?
      return thumbnail;
    end, -- 571554
    charges = function()
      local thumbnail = createThumbnail();
      local t1 = thumbnail:CreateTexture(nil, "ARTWORK");
      t1:SetTexture(134376);
      t1:SetAllPoints(thumbnail);
      local t2 = thumbnail:CreateFontString(nil, "ARTWORK");
      t2:SetFont(STANDARD_TEXT_FONT, 14, "OUTLINE");
      t2:SetTextColor(1,1,1,1);
      t2:SetText("2");
      t2:SetPoint("BOTTOMRIGHT", -2, 2);
      return thumbnail;
    end,
    cd = 134377,
    cd2 = 134376,
  };
  local data = {}
  local dataGlow = {}
  if regionType == "aurabar" then
    dataGlow.subRegions = {
      [1] = TemplatePrivate.Private.getDefaultGlow(regionType)
    }
  end
  if (item.type == "ability") then
    tinsert(types, {
      fallback = true,
      icon = icon.cd,
      title = L["Basic Show On Cooldown"],
      description = L["Only shows the aura when the ability is on cooldown."],
      createTriggers = function(triggers, item)
        createAbilityTrigger(triggers, 1, item, "showOnCooldown");
      end,
    });
    tinsert(types, {
      icon = icon.cd,
      title = L["Basic Show On Cooldown"],
      description = L["Only shows the aura when the ability is on cooldown."],
      createTriggers = function(triggers, item)
        createAbilityTrigger(triggers, 1, item, "showOnCooldown");
      end,
      createConditions = function(conditions, item, regionType)
        isNotUsableBlue(conditions, 1, regionType)
      end,
    });
    tinsert(types, {
      icon = icon.cd,
      title = L["Basic Show On Ready"],
      description = L["Only shows the aura when the ability is ready to use."],
      createTriggers = function(triggers, item)
        createAbilityTrigger(triggers, 1, item, "showOnReady");
      end,
      createConditions = function(conditions, item, regionType)
        isNotUsableBlue(conditions, 1, regionType)
      end,
    });
    if (item.charges) then
      data.cooldownSwipe = false
      data.cooldownEdge = true
      dataGlow.cooldownSwipe = false
      dataGlow.cooldownEdge = true
      tinsert(types, {
        icon = icon.charges,
        title = L["Charge Tracking"],
        description = L["Always shows the aura, turns blue on insufficient resources."],
        createTriggers = function(triggers, item)
          createAbilityTrigger(triggers, 1, item, "showAlways");
        end,
        createConditions = function(conditions, item, regionType)
          insufficientResourcesBlue(conditions, 1, regionType);
          hasChargesGrey(conditions, 1, regionType);
        end,
        data = data,
      });
      if (item.duration) then
        tinsert(types, {
          icon = icon.glow,
          title = L["Charge and Duration Tracking"],
          description = L["Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."],
          createTriggers = createAbilityAndDurationTrigger,
          createConditions = function(conditions, item, regionType)
            insufficientResourcesBlue(conditions, 2, regionType);
            hasChargesGrey(conditions, 2, regionType);
            isDurationGlow(conditions, 1, regionType);
          end,
          data = dataGlow,
        });
      elseif (item.buff) then
        tinsert(types, {
          icon = icon.glow,
          title = L["Charge and Buff Tracking"],
          description = L["Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."],
          createTriggers = createAbilityAndBuffTrigger,
          createConditions = function(conditions, item, regionType)
            insufficientResourcesBlue(conditions, 2, regionType);
            hasChargesGrey(conditions, 2, regionType);
            isBuffedGlow(conditions, 1, regionType);
          end,
          data = dataGlow,
        });
      elseif(item.debuff) then
        tinsert(types, {
          icon = icon.glow,
          title = L["Charge and Debuff Tracking"],
          description = L["Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."],
          createTriggers = createAbilityAndDebuffTrigger,
          createConditions = function(conditions, item, regionType)
            insufficientResourcesBlue(conditions, 2, regionType);
            hasChargesGrey(conditions, 2, regionType);
            isBuffedGlow(conditions, 1, regionType);
          end,
          data = dataGlow,
        })
      elseif(item.requiresTarget) then
        tinsert(types,  {
          icon = icon.target,
          title = L["Show Charges with Range Tracking"],
          description = L["Always shows the aura, turns red when out of range, blue on insufficient resources."],
          genericShowOn = "showAlways",
          createTriggers = function(triggers, item)
            createAbilityTrigger(triggers, 1, item, "showAlways");
          end,
          createConditions = function(conditions, item, regionType)
            insufficientResourcesBlue(conditions, 1, regionType);
            hasChargesGrey(conditions, 1, regionType);
            isSpellNotInRangeRed(conditions, 1, regionType);
          end,
          data = data,
        });
        if (item.usable) then
          tinsert(types,  {
            icon = icon.target,
            title = L["Show Charges with Usable Check"],
            description = L["Always shows the aura, turns red when out of range, blue on insufficient resources."],
            createTriggers = function(triggers, item)
              createAbilityTrigger(triggers, 1, item, "showAlways");
            end,
            createConditions = function(conditions, item, regionType)
              isNotUsableBlue(conditions, 1, regionType);
              hasChargesGrey(conditions, 1, regionType);
              isSpellNotInRangeRed(conditions, 1, regionType);
            end,
            data = data,
          });
        end
        if (item.overlayGlow) then
          tinsert(types,  {
            icon = icon.glow,
            title = L["Show Charges with Proc Tracking"],
            description = L["Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."],
            createTriggers = createAbilityAndOverlayGlowTrigger,
            createConditions = function(conditions, item, regionType)
              isNotUsableBlue(conditions, 1, regionType);
              hasChargesGrey(conditions, 1, regionType);
              isSpellNotInRangeRed(conditions, 1, regionType);
              overlayGlow(conditions, 2, regionType);
            end,
            data = dataGlow,
          });
        end
      elseif(item.totem) then
        tinsert(types, {
          icon = icon.charges,
          title = L["Show Totem and Charge Information"],
          description = L["Always shows the aura, highlight when active, turns blue on insufficient resources."],
          createTriggers = function(triggers, item)
            createTotemTrigger(triggers, 1, item);
            createAbilityTrigger(triggers, 2, item, "showAlways");
          end,
          createConditions = function(conditions, item, regionType)
            insufficientResourcesBlue(conditions, 2, regionType);
            hasChargesGrey(conditions, 2, regionType);
            totemActiveGlow(conditions, 1, regionType);
          end,
          data = dataGlow,
        });
      elseif(item.usable) then
        tinsert(types, {
          icon = icon.charges,
          title = L["Show Charges and Check Usable"],
          description = L["Always shows the aura, turns blue when not usable."],
          createTriggers = function(triggers, item)
            createAbilityTrigger(triggers, 1, item, "showAlways");
          end,
          createConditions = function(conditions, item, regionType)
            isNotUsableBlue(conditions, 1, regionType);
            hasChargesGrey(conditions, 1, regionType);
          end,
          data = data,
        });
        if (item.overlayGlow) then
          tinsert(types,  {
            icon = icon.glow,
            title = L["Show Charges with Proc Tracking"],
            description = L["Always shows the aura, highlight while proc is active, blue when not usable."],
            createTriggers = createAbilityAndOverlayGlowTrigger,
            createConditions = function(conditions, item, regionType)
              isNotUsableBlue(conditions, 1, regionType);
              hasChargesGrey(conditions, 1, regionType);
              overlayGlow(conditions, 2, regionType);
            end,
            data = dataGlow,
          });
        end
      end
    else -- Ability without charges
      tinsert(types, {
        icon = icon.cd2,
        title = L["Cooldown Tracking"],
        description = L["Always shows the aura, turns blue when not usable."],
        createTriggers = function(triggers, item)
          createAbilityTrigger(triggers, 1, item, "showAlways");
        end,
        createConditions = function(conditions, item, regionType)
          insufficientResourcesBlue(conditions, 1, regionType);
          isOnCdGrey(conditions, 1, regionType);
        end,
      });
      if (item.duration) then
        data.cooldownSwipe = false
        data.cooldownEdge = true
        dataGlow.cooldownSwipe = false
        dataGlow.cooldownEdge = true
        tinsert(types, {
          icon = icon.glow,
          title = L["Show Cooldown and Duration"],
          description = L["Highlight while spell is active."],
          createTriggers = createAbilityAndDurationTrigger,
          createConditions = function(conditions, item, regionType)
            insufficientResourcesBlue(conditions, 2, regionType);
            isOnCdGrey(conditions, 2, regionType);
            isDurationGlow(conditions, 1, regionType);
          end,
          data = dataGlow
        });
        if (item.usable) then
          tinsert(types, {
            icon = icon.glow,
            title = L["Show Cooldown and Duration and Check Usable"],
            description = L["Highlight while active."],
            createTriggers = createAbilityAndDurationTrigger,
            createConditions = function(conditions, item, regionType)
              isNotUsableBlue(conditions, 2, regionType);
              isOnCdGrey(conditions, 2, regionType);
              isDurationGlow(conditions, 1, regionType);
            end,
            data = dataGlow
          });
        end
        if (item.requiresTarget) then
          tinsert(types, {
            icon = icon.target,
            title = L["Show Cooldown and Duration and Check for Target"],
            description = L["Highlight while active, red when out of range."],
            createTriggers = createAbilityAndDurationTrigger,
            createConditions = function(conditions, item, regionType)
              insufficientResourcesBlue(conditions, 2, regionType);
              isOnCdGrey(conditions, 2, regionType);
              isSpellNotInRangeRed(conditions, 2, regionType);
              isDurationGlow(conditions, 1, regionType);
            end,
            data = dataGlow
          });
        end
      elseif (item.queued) then
        tinsert(types, {
          icon = icon.glow,
          title = L["Show Cooldown and Action Queued"],
          description = L["Highlight while action is queued."],
          createTriggers = createAbilityAndQueuedActionTrigger,
          createConditions = function(conditions, item, regionType)
            insufficientResourcesBlue(conditions, 1, regionType);
            isOnCdGrey(conditions, 1, regionType);
            isQueuedGlow(conditions, 2, regionType);
          end,
          data = dataGlow
        });
      elseif (item.buff) then
        tinsert(types, {
          icon = icon.glow,
          title = L["Show Cooldown and Buff"],
          description = L["Highlight while buffed."],
          createTriggers = createAbilityAndBuffTrigger,
          createConditions = function(conditions, item, regionType)
            insufficientResourcesBlue(conditions, 2, regionType);
            isOnCdGrey(conditions, 2, regionType);
            isBuffedGlow(conditions, 1, regionType);
          end,
          data = dataGlow
        });
        if (item.usable) then
          tinsert(types, {
            icon = icon.glow,
            title = L["Show Cooldown and Buff and Check Usable"],
            description = L["Highlight while buffed."],
            createTriggers = createAbilityAndBuffTrigger,
            createConditions = function(conditions, item, regionType)
              isNotUsableBlue(conditions, 2, regionType);
              isOnCdGrey(conditions, 2, regionType);
              isBuffedGlow(conditions, 1, regionType);
            end,
            data = dataGlow
          });
        end
        if (item.requiresTarget) then
          tinsert(types, {
            icon = icon.target,
            title = L["Show Cooldown and Buff and Check for Target"],
            description = L["Highlight while buffed, red when out of range."],
            createTriggers = createAbilityAndBuffTrigger,
            createConditions = function(conditions, item, regionType)
              if item.usable then
                isNotUsableBlue(conditions, 2, regionType);
              else
                insufficientResourcesBlue(conditions, 2, regionType);
              end
              isOnCdGrey(conditions, 2, regionType);
              isSpellNotInRangeRed(conditions, 2, regionType);
              isBuffedGlow(conditions, 1, regionType);
            end,
            data = dataGlow
          });
        end
      elseif(item.debuff) then
        tinsert(types, {
          icon = icon.glow,
          title = L["Show Cooldown and Debuff"],
          description = L["Highlight while debuffed."],
          createTriggers = createAbilityAndDebuffTrigger,
          createConditions = function(conditions, item, regionType)
            insufficientResourcesBlue(conditions, 2, regionType);
            isOnCdGrey(conditions, 2, regionType);
            isBuffedGlow(conditions, 1, regionType);
          end,
          data = dataGlow
        });
        if (item.requiresTarget) then
          tinsert(types, {
            icon = icon.target,
            title = L["Show Cooldown and Debuff and Check for Target"],
            description = L["Highlight while debuffed, red when out of range."],
            createTriggers = createAbilityAndDebuffTrigger,
            createConditions = function(conditions, item, regionType)
              if item.usable then
                isNotUsableBlue(conditions, 2, regionType);
              else
                insufficientResourcesBlue(conditions, 2, regionType);
              end
              isOnCdGrey(conditions, 2, regionType);
              isSpellNotInRangeRed(conditions, 2, regionType);
              isBuffedGlow(conditions, 1, regionType);
            end,
            data = dataGlow
          });
        end
      elseif(item.totem) then
        tinsert(types, {
          icon = icon.cd2,
          title = L["Show Cooldown and Totem Information"],
          description = L["Always shows the aura, turns grey if the ability is not usable."],
          createTriggers = function(triggers, item)
            createTotemTrigger(triggers, 1, item);
            createAbilityTrigger(triggers, 2, item, "showAlways");
          end,
          createConditions = function(conditions, item, regionType)
            insufficientResourcesBlue(conditions, 2, regionType);
            isOnCdGrey(conditions, 2, regionType);
            totemActiveGlow(conditions, 1, regionType);
          end,
          data = dataGlow
        });
      else
        if (item.requiresTarget) then
          tinsert(types, {
            icon = icon.target,
            title = L["Show Cooldown and Check for Target"],
            description = L["Always shows the aura, turns red when out of range."],
            createTriggers = function(triggers, item)
              createAbilityTrigger(triggers, 1, item, "showAlways");
            end,
            createConditions = function(conditions, item, regionType)
              insufficientResourcesBlue(conditions, 1, regionType);
              isOnCdGrey(conditions, 1, regionType);
              isSpellNotInRangeRed(conditions, 1, regionType);
            end,
          });
          if (item.overlayGlow) then
            tinsert(types,  {
              icon = icon.glow,
              title = L["Show Cooldown and Check for Target & Proc Tracking"],
              description = L["Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."],
              createTriggers = createAbilityAndOverlayGlowTrigger,
              createConditions = function(conditions, item, regionType)
                insufficientResourcesBlue(conditions, 1, regionType);
                isOnCdGrey(conditions, 1, regionType);
                isSpellNotInRangeRed(conditions, 1, regionType);
                overlayGlow(conditions, 2, regionType);
              end,
              data = dataGlow
            });
          end
        elseif (item.overlayGlow) then
          tinsert(types,  {
            icon = icon.glow,
            title = L["Show Cooldown and Proc Tracking"],
            description = L["Always shows the aura, highlight while proc is active, blue on insufficient resources."],
            createTriggers = createAbilityAndOverlayGlowTrigger,
            createConditions = function(conditions, item, regionType)
              insufficientResourcesBlue(conditions, 1, regionType);
              isOnCdGrey(conditions, 1, regionType);
              overlayGlow(conditions, 2, regionType);
            end,
            data = dataGlow
          });
        end
        if (item.usable) then
          tinsert(types, {
            icon = icon.cd2,
            title = L["Show Cooldown and Check Usable"],
            description = L["Always shows the aura, turns grey if the ability is not usable."],
            createTriggers = function(triggers, item)
              createAbilityTrigger(triggers, 1, item, "showAlways");
            end,
            createConditions = function(conditions, item, regionType)
              isNotUsableBlue(conditions, 1, regionType);
              isOnCdGrey(conditions, 1, regionType);
            end,
          });
          if (item.requiresTarget) then
            tinsert(types, {
              icon = icon.target,
              title = L["Show Cooldown and Check Usable & Target"],
              description = L["Always shows the aura, turns grey if the ability is not usable and red when out of range."],
              createTriggers = function(triggers, item)
                createAbilityTrigger(triggers, 1, item, "showAlways");
              end,
              createConditions = function(conditions, item, regionType)
                isNotUsableBlue(conditions, 1, regionType);
                isOnCdGrey(conditions, 1, regionType);
                isSpellNotInRangeRed(conditions, 1, regionType);
              end,
            });
            if (item.overlayGlow) then
              tinsert(types,  {
                icon = icon.glow,
                title = L["Show Cooldown and Check Usable, Target & Proc Tracking"],
                description = L["Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."],
                createTriggers = createAbilityAndOverlayGlowTrigger,
                createConditions = function(conditions, item, regionType)
                  isNotUsableBlue(conditions, 1, regionType);
                  isOnCdGrey(conditions, 1, regionType);
                  isSpellNotInRangeRed(conditions, 1, regionType);
                  overlayGlow(conditions, 2, regionType);
                end,
                data = dataGlow
              });
            end
          else
            if (item.overlayGlow) then
              tinsert(types,  {
                icon = icon.glow,
                title = L["Show Cooldown and Check Usable, Proc Tracking"],
                description = L["Always shows the aura, highlight while proc is active, blue on insufficient resources."],
                createTriggers = createAbilityAndOverlayGlowTrigger,
                createConditions = function(conditions, item, regionType)
                  isNotUsableBlue(conditions, 1, regionType);
                  isOnCdGrey(conditions, 1, regionType);
                  overlayGlow(conditions, 2, regionType);
                end,
                data = dataGlow
              });
            end
          end
        end
      end
    end
  elseif(item.type == "buff") then
    data.inverse = false
    dataGlow.inverse = false
    tinsert(types, {
      icon = icon.cd,
      title = L["Show Only if Buffed"],
      description = L["Only shows the aura if the target has the buff."],
      createTriggers = function(triggers, item, data)
        createBuffTrigger(triggers, 1, item, "showOnActive", true, data);
      end,
      data = data,
    });
    tinsert(types, {
      icon = icon.glow,
      title = L["Always Show"],
      description = L["Always shows the aura, highlight it if buffed."],
      buffShowOn = "showAlways",
      createTriggers = function(triggers, item, data)
        createBuffTrigger(triggers, 1, item, "showAlways", true, data);
      end,
      createConditions = function(conditions, item, regionType)
        isBuffedGlowAuraAlways(conditions, 1, regionType);
      end,
      data = dataGlow,
    });
    tinsert(types, {
      icon = icon.cd2,
      title = L["Always Show"],
      description = L["Always shows the aura, grey if buff not active."],
      createTriggers = function(triggers, item, data)
        createBuffTrigger(triggers, 1, item, "showAlways", true, data);
      end,
      createConditions = function(conditions, item, regionType)
        missingBuffGreyed(conditions, 1, regionType);
      end,
      data = data,
    });
  elseif(item.type == "debuff") then
    data.inverse = false
    dataGlow.inverse = false
    tinsert(types, {
      icon = icon.cd,
      title = L["Show Only if Debuffed"],
      description = L["Only show the aura if the target has the debuff."],
      createTriggers = function(triggers, item, data)
        createBuffTrigger(triggers, 1, item, "showOnActive", false, data);
      end,
      data = data,
    });
    tinsert(types, {
      icon = icon.glow,
      title = L["Always Show"],
      description = L["Always show the aura, highlight it if debuffed."],
      createTriggers = function(triggers, item, data)
        createBuffTrigger(triggers, 1, item, "showAlways", false, data);
      end,
      createConditions = function(conditions, item, regionType)
        isBuffedGlowAuraAlways(conditions, 1, regionType);
      end,
      data = dataGlow,
    });
    tinsert(types, {
      icon = icon.cd2,
      title = L["Always Show"],
      description = L["Always show the aura, turns grey if the debuff not active."],
      createTriggers = function(triggers, item, data)
        createBuffTrigger(triggers, 1, item, "showAlways", false, data);
      end,
      createConditions = function(conditions, item, regionType)
        missingBuffGreyed(conditions, 1, regionType);
      end,
      data = data,
    });
  elseif(item.type == "item") then
    tinsert(types, {
      icon = icon.cd,
      title = L["Show Only if on Cooldown"],
      description = L["Only show the aura when the item is on cooldown."],
      createTriggers = function(triggers, item)
        createItemTrigger(triggers, 1, item, "showOnCooldown");
      end,
    });
    tinsert(types, {
      icon = icon.cd,
      title = L["Show on Ready"],
      description = L["Only shows the aura when the ability is ready to use."],
      createTriggers = function(triggers, item)
        createItemTrigger(triggers, 1, item, "showOnReady");
      end,
    });
    tinsert(types, {
      icon = icon.cd2,
      title = L["Always Show"],
      description = L["Always show the aura, turns grey if on cooldown."],
      createTriggers = function(triggers, item)
        createItemTrigger(triggers, 1, item, "showAlways");
      end,
      createConditions = function(conditions, item, regionType)
        isOnCdGrey(conditions, 1, regionType);
      end,
    });
  elseif(item.type == "totem") then
    tinsert(types, {
      fallback = true,
      icon = icon.cd2,
      title = L["Always Show"],
      description = L["Always shows the aura."],
      createTriggers = function(triggers, item)
        createTotemTrigger(triggers, 1, item);
      end,
    });
    tinsert(types, {
      icon = icon.cd2,
      title = L["Always Show"],
      description = L["Always shows the aura, turns grey if on cooldown."],
      createTriggers = function(triggers, item)
        createTotemTrigger(triggers, 1, item);
      end,
      createConditions = function(conditions, item, regionType)
        totemActiveGlow(conditions, 1, regionType);
      end,
      data = dataGlow
    });
  elseif(item.type == "power") then
    data.inverse = false
    data.icon = false
    data.text = false
    tinsert(types, {
      icon = item.icon,
      title = item.title,
      createTriggers = function(triggers, item)
        createPowerTrigger(triggers, 1, item);
      end,
      data = data,
    });
  elseif(item.type == "health") then
    data.inverse = false
    data.icon = false
    data.text = false
    tinsert(types, {
      icon = item.icon,
      title = item.title,
      createTriggers = function(triggers, item)
        createHealthTrigger(triggers, 1, item);
      end,
      data = data,
    });
  elseif(item.type == "cast") then
    data.inverse = false
    tinsert(types, {
      fallback = true,
      icon = item.icon,
      title = item.title,
      createTriggers = function(triggers, item)
        createCastTrigger(triggers, 1, item);
      end,
      data = data,
    });
    tinsert(types, {
      icon = item.icon,
      title = item.title,
      createTriggers = function(triggers, item)
        createCastTrigger(triggers, 1, item);
      end,
      createConditions = function(conditions, item, regionType)
        uninterruptibleRed(conditions, 1, regionType);
      end,
      data = data,
    });
  elseif (item.type == "weaponenchant") then
    data.inverse = false
    tinsert(types, {
      icon = icon.cd,
      title = L["Show Only if Enchanted"],
      description = L["Only shows if the weapon is enchanted."],
      createTriggers = function(triggers, item)
        createWeaponEnchantTrigger(triggers, 1, item, "showOnActive");
      end,
      data = data,
    });
    tinsert(types, {
      icon = icon.cd,
      title = L["Show if Enchant Missing"],
      description = L["Only shows if the weapon is not enchanted."],
      createTriggers = function(triggers, item)
        createWeaponEnchantTrigger(triggers, 1, item, "showOnMissing");
      end,
      data = data,
    });
    tinsert(types, {
      icon = icon.glow,
      title = L["Show Always, Glow on Missing"],
      description = L["Always shows highlights if enchant missing."],
      createTriggers = function(triggers, item)
        createWeaponEnchantTrigger(triggers, 1, item, "showAlways");
      end,
      createConditions = function(conditions, item, regionType)
        isMissingEnchantGlow(conditions, 1, regionType);
      end,
      data = dataGlow,
    });
  end

  -- filter when createConditions return nothing for this regionType
  local fallbacks = {}
  for index = #types, 1, -1 do
    local type = types[index];
    if type.createConditions then
      local conditions = {}
      type.createConditions(conditions, item, regionType)
      if #conditions == 0 then
        tremove(types, index);
      end
    elseif type.fallback then
      tremove(types, index);
      tinsert(fallbacks, type)
    end
  end

  if #types > 0 then
    return types
  end
  return fallbacks
end

function WeakAuras.CreateTemplateView(Private, frame)
  TemplatePrivate.Private = Private

  -- Enrich Display templates with default values
  for regionType, regionData in pairs(TemplatePrivate.Private.regionOptions) do
    if (regionData.templates) then
      for _, item in ipairs(regionData.templates) do
        for k, v in pairs(TemplatePrivate.Private.regionTypes[regionType].default) do
          if (item.data[k] == nil) then
            item.data[k] = v
          end
        end
      end
    end
  end

  local newView = AceGUI:Create("InlineGroup");
  newView.frame:SetParent(frame);
  newView.frame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -17, 42);
  newView.frame:SetPoint("TOPLEFT", frame, "TOPLEFT", 17, -50);
  newView.frame:Hide();
  newView:SetLayout("fill");

  local newViewScroll = AceGUI:Create("ScrollFrame");
  newViewScroll:SetLayout("flow");
  newViewScroll.frame:SetClipsChildren(true);
  newView:AddChild(newViewScroll);

  local function createConditionsFor(item, subType, regionType)
    if (subType.createConditions) then
      local conditions = {};
      subType.createConditions(conditions, item, regionType);
      return conditions;
    end
  end

  local function replaceCondition(data, item, subType)
    local conditions = createConditionsFor(item, subType, data.regionType);
    if conditions then
      data.conditions = CopyTable(conditions);
    end
  end

  local function addCondition(data, item, subType, prevNumTriggers)
    local conditions = createConditionsFor(item, subType, data.regionType);
    if conditions then
      if data.conditions then
        local position = #data.conditions + 1;
        for i,v in pairs(conditions) do
          data.conditions[position] = data.conditions[position] or {};
          if v.check.trigger ~= -1 then
            v.check.trigger = v.check.trigger + prevNumTriggers;
          end
          data.conditions[position] = CopyTable(v);
          position = position + 1;
        end
      else
        data.conditions = CopyTable(conditions);
      end
    end
  end

  local function createTriggersFor(item, subType, data)
    local triggers = {};
    subType.createTriggers(triggers, item, data);
    return triggers;
  end

  -- Trigger Template
  local function sortedPairs (t, f)
    local a = {}
    for n in pairs(t) do table.insert(a, n) end
    table.sort(a, f)
    local i = 0      -- iterator variable
    local iter = function ()   -- iterator function
      i = i + 1
      if a[i] == nil then return nil
      else return a[i], t[a[i]]
      end
    end
    return iter
  end

  local function createSortFunctionFor(table)
    return function(a, b)
      return table[a].title < table[b].title;
    end
  end

  local function replaceTrigger(data, item, subType)
    local triggers;
    if (item.triggers) then
      triggers = item.triggers;
    else
      triggers = createTriggersFor(item, subType, data);
    end

    data.triggers = {}
    for i, v in pairs(triggers) do
      data.triggers[i] = data.triggers[i] or {};
      data.triggers[i].trigger = CopyTable(v.trigger);
      data.triggers[i].untrigger = {};
      if (v.untrigger) then
        data.triggers[i].untrigger = CopyTable(v.untrigger);
      end
    end
    if (#data.triggers > 1) then -- Multiple triggers
      data.triggers.disjunctive = "any";
      data.triggers.activeTriggerMode = -10;
    end
  end

  local function addTrigger(data, item, subType)
    local triggers;
    if (item.triggers) then
      triggers = item.triggers;
    else
      triggers = createTriggersFor(item, subType, data);
    end

    for i, v in pairs(triggers) do
      local position = #data.triggers + 1
      data.triggers[position] = data.triggers[position] or {};
      data.triggers[position].trigger = CopyTable(v.trigger);
      data.triggers[position].untrigger = {};
      if (v.untrigger) then
        data.triggers[position].untrigger = CopyTable(v.untrigger);
      end
    end
     -- Multiple Triggers, override disjunctive, even if the users set it previously
    if (triggers[2]) then
      data.triggers.disjunctive = "any";
      data.triggers.activeTriggerMode = -10;
    end
  end

  local createButtons;

  local function createRegionButton(regionType, regionData, selectedItem)
    local button = AceGUI:Create("WeakAurasNewButton");
    button:SetTitle(regionData.displayName);
    if(type(regionData.icon) == "string" or type(regionData.icon) == "table") then
      button:SetIcon(regionData.templateIcon);
    end
    button:SetDescription(regionData.description);
    button:SetFullWidth(true);
    if (regionType == selectedItem) then
      button.frame:LockHighlight(true);
    end
    button:SetClick(function()
      createButtons((selectedItem ~= regionType) and regionType);
    end);
    return button;
  end

  local function createRegionFlyout(regionType, regionData)
    local group = AceGUI:Create("WeakAurasTemplateGroup");
    group:SetFullWidth(true);
    group:SetLayout("WATemplateTriggerLayoutFlyout");
    for _, item in ipairs(regionData.templates) do
      local templateButton = AceGUI:Create("WeakAurasNewButton");
      if (item.icon) then
        templateButton:SetIcon(item.icon);
      else
        templateButton:SetThumbnail(regionType, item.data)
      end

      templateButton:SetTitle(item.title);
      templateButton:SetDescription(item.description);
      templateButton:SetClick(function()
        newView.data = CopyTable(item.data);
        TemplatePrivate.Private.validate(newView.data, TemplatePrivate.Private.data_stub);
        newView.data.internalVersion = WeakAuras.InternalVersion();
        newView.data.regionType = regionType;
        createButtons();
      end);
      group:AddChild(templateButton);
    end
    return group;
  end

  local function createDropdown(member, values)
    local selector = AceGUI:Create("Dropdown");
    selector:SetList(values);
    selector:SetValue(newView[member]);
    selector:SetCallback("OnValueChanged", function(self, callback, v)
      newView[member] = v;
      createButtons();
    end);
    return selector;
  end

  local function createSpacer()
    local spacer = AceGUI:Create("Label");
    spacer:SetFullWidth(true);
    spacer:SetText(" ");
    return spacer;
  end

  local function createTriggerFlyout(section, fullWidth)
    local group = AceGUI:Create("WeakAurasTemplateGroup");
    group:SetFullWidth(true);
    newView.chosenItemBatch = {};
    newView.chosenItemButtonsBatch = {};
    group:SetLayout("WATemplateTriggerLayoutFlyout");
    if (section) then
      for j, item in sortedPairs(section, createSortFunctionFor(section)) do
        local button = AceGUI:Create("WeakAurasNewButton");
        button:SetTitle(item.title);
        button:SetDescription(item.description);
        if (fullWidth) then
          button:SetFullWidth(true);
        end
        if(item.icon) then
          button:SetIcon(item.icon);
        end
        button:SetClick(function()
          if (IsControlKeyDown() and not newView.existingAura) then
            if newView.chosenItemBatch[item] then
              button.frame:UnlockHighlight();
              newView.chosenItemBatch[item] = nil;
              newView.chosenItemButtonsBatch[j] = nil;
            else
              button.frame:LockHighlight();
              newView.chosenItemBatch[item] = true;
              newView.chosenItemButtonsBatch[j] = button;
            end
            local count = 0;
            for _ in pairs(newView.chosenItemBatch) do
              count = count + 1;
            end
            if count == 0 then
              newView.batchButton:Hide();
              newView.backButton:ClearAllPoints()
              newView.backButton:SetPoint("BOTTOMRIGHT", -147, -23);
            else
              newView.batchButton:Show();
              newView.backButton:ClearAllPoints()
              newView.backButton:SetPoint("BOTTOMRIGHT", -267, -23);
            end
          else
            newView.backButton:ClearAllPoints()
            newView.backButton:SetPoint("BOTTOMRIGHT", -147, -23);
            local subTypes = subTypesFor(item, newView.data.regionType);
            if #subTypes < 2 then
              local subType = subTypes[1] or {}
              if (newView.existingAura) then
                newView.chosenItem = item;
                newView.chosenSubType = subType;
                createButtons();
              else
                replaceTrigger(newView.data, item, subType);
                replaceCondition(newView.data, item, subType);
                newView.data.id = TemplatePrivate.Private.FindUnusedId(item.title);
                newView.data.load = {};
                if (item.load) then
                  newView.data.load = CopyTable(item.load);
                end
                if (subType.data) then
                  WeakAuras.DeepMixin(newView.data, subType.data)
                end
                newView:CancelClose();
                WeakAuras.NewAura(newView.data, newView.data.regionType, newView.targetId);
              end
            else
              -- create trigger type selection
              newView.chosenItem = item;
              createButtons();
            end
          end
        end);
        group:AddChild(button);
      end
    end
    return group;
  end

  local function createTriggerTypeButtons()
    local item = newView.chosenItem;
    local group = AceGUI:Create("WeakAurasTemplateGroup");
    group:SetFullWidth(true);
    local subTypes = subTypesFor(item, newView.data.regionType);
    local subTypesButtons = {}
    local lastButton
    for k, subType in pairs(subTypes) do
      local button = AceGUI:Create("WeakAurasNewButton");
      subTypesButtons[k] = button;
      button:SetTitle(subType.title);
      button:SetDescription(subType.description);
      if subType.icon then
        if type(subType.icon) == "function" then
          button:SetIcon(subType.icon());
        else
          button:SetIcon(subType.icon);
        end
      end
      button:SetFullWidth(true);
      button:SetClick(function()
        if (newView.batchStep) then
          for index, subTypesButton in pairs(subTypesButtons) do
            if (index == k) then
              subTypesButton.frame:LockHighlight();
            else
              subTypesButton.frame:UnlockHighlight();
            end
          end
          newView.chosenItemBatchSubType[item] = subType;
        elseif (newView.existingAura) then
          newView.chosenItem = item;
          newView.chosenSubType = subType;
          createButtons();
        else
          replaceTrigger(newView.data, item, subType);
          replaceCondition(newView.data, item, subType);
          newView.data.id = TemplatePrivate.Private.FindUnusedId(item.title);
          newView.data.load = {};
          if (item.load) then
            newView.data.load = CopyTable(item.load);
          end
          if (subType.data) then
            WeakAuras.DeepMixin(newView.data, subType.data)
          end
          newView:CancelClose();
          WeakAuras.NewAura(newView.data, newView.data.regionType, newView.targetId);
        end
      end);
      if newView.batchStep then
        button.frame:LockHighlight();
        newView.chosenItemBatchSubType[item] = subType;
        if lastButton then
          lastButton.frame:UnlockHighlight();
        end
        lastButton = button
      end
      group:AddChild(button);
    end
    return group;
  end

  local function createTriggerButton(section, selectedItem, fullWidth)
    local button = AceGUI:Create("WeakAurasNewButton");
    button:SetTitle(section.title);
    button:SetDescription(section.description);
    if (section.icon) then
      button:SetIcon(section.icon);
    end
    button:SetFullWidth(true);
    button:SetClick(function()
      createButtons((selectedItem ~= section) and section);
    end);
    newViewScroll:AddChild(button);
    if (section == selectedItem) then
      button.frame:LockHighlight(true);
      local group = createTriggerFlyout(section.args, fullWidth);
      newViewScroll:AddChild(group);
    end
  end
  -- Creates a button + flyout (if the button is selected) for one section
  local function createTriggerButtons(templates, selectedItem, fullWidth)
    for k, section in ipairs(templates) do
      if section.args and next(section.args) then
        createTriggerButton(section, selectedItem, fullWidth);
      end
    end
  end

  local function replaceTriggers(data, item, subType)
    local function handle(data, item, subType)
      replaceTrigger(data, item, subType);
      replaceCondition(data, item, subType);
      newView:CancelClose();
      WeakAuras.Add(data);
      WeakAuras.ClearAndUpdateOptions(data.id)
      WeakAuras.FillOptions()
      WeakAuras.NewDisplayButton(data);
      WeakAuras.UpdateThumbnail(data);
    end
    for child in TemplatePrivate.Private.TraverseLeafsOrAura(data) do
      handle(child, item, subType);
    end
    WeakAuras.ClearAndUpdateOptions(data.id)
  end

  local function addTriggers(data, item, subType)
    local function handle(data, item, subType)
      local prevNumTriggers = #data.triggers;
      addTrigger(data, item, subType);
      addCondition(data, item, subType, prevNumTriggers);
      newView:CancelClose();
      WeakAuras.Add(data);
      WeakAuras.ClearAndUpdateOptions(data.id)
      WeakAuras.FillOptions()
      WeakAuras.NewDisplayButton(data);
      WeakAuras.UpdateThumbnail(data);
    end
    for child in TemplatePrivate.Private.TraverseLeafsOrAura(data) do
      handle(child, item, subType);
    end
    WeakAuras.ClearAndUpdateOptions(data.id)
  end

  local function createLastPage()
    local replaceButton = AceGUI:Create("WeakAurasNewButton");
    replaceButton:SetTitle(L["Replace Triggers"]);
    replaceButton:SetDescription(L["Replace all existing triggers"]);
    replaceButton:SetIcon("Interface\\Icons\\Spell_ChargeNegative");
    replaceButton:SetFullWidth(true);
    replaceButton:SetClick(function()
      replaceTriggers(newView.data, newView.chosenItem, newView.chosenSubType);
      for _,v in pairs({"class", "spec", "talent", "herotalent", "pvptalent", "race", "covenant"}) do
        newView.data.load[v] = nil;
        newView.data.load["use_"..v] = nil;
      end
      newView.data.load.class = CopyTable(TemplatePrivate.Private.data_stub.load.class);
      newView.data.load.spec = CopyTable(TemplatePrivate.Private.data_stub.load.spec);
      if (newView.chosenItem.load) then
        WeakAuras.DeepMixin(newView.data.load, newView.chosenItem.load)
      end
    end);
    newViewScroll:AddChild(replaceButton);

    local addButton = AceGUI:Create("WeakAurasNewButton");
    addButton:SetTitle(L["Add Triggers"]);
    addButton:SetDescription(L["Keeps existing triggers intact"]);
    addButton:SetIcon("Interface\\Icons\\Spell_ChargePositive");
    addButton:SetFullWidth(true);
    addButton:SetClick(function()
      addTriggers(newView.data, newView.chosenItem, newView.chosenSubType);
    end);
    newViewScroll:AddChild(addButton);
  end

  createButtons = function(selectedItem) -- selectedItem is either a regionType or a trigger section
    newViewScroll:ReleaseChildren();
    newView.makeBatchButton:Hide();
    newView.batchButton:Hide();
    newView.batchModeLabel:Hide();
    if (not newView.data) then
      -- First step: Show region types
      for regionType, regionData in pairs(TemplatePrivate.Private.regionOptions) do
        if (regionData.templates) then
          local button = createRegionButton(regionType, regionData, selectedItem);
          newViewScroll:AddChild(button);
          if (regionType == selectedItem) then
            local group = createRegionFlyout(regionType, regionData);
            newViewScroll:AddChild(group);
          end
        end
      end
      newView.backButton:Hide();
    elseif (newView.data and newView.batchStep) then
      -- Batch
      if (newView.batchStep) then
        newView.chosenItemBatchSubType = {};
        for item in pairs(newView.chosenItemBatch) do
          local classHeader = AceGUI:Create("Heading");
          classHeader:SetFullWidth(true);
          newViewScroll:AddChild(classHeader);

          local button = AceGUI:Create("WeakAurasNewButton");
          button:SetTitle(item.title);
          button:SetDescription(item.description);
          button:SetFullWidth(true);
          if(item.icon) then
            button:SetIcon(item.icon);
          end
          newViewScroll:AddChild(button);

          newView.chosenItem = item;
          local typesButtons = createTriggerTypeButtons();
          newViewScroll:AddChild(typesButtons);
        end
        newView.makeBatchButton:Show()
        newView.backButton:ClearAllPoints()
        newView.backButton:SetPoint("BOTTOMRIGHT", -267, -23);
      end
      newView.batchModeLabel:Hide();
    elseif (newView.data and not newView.chosenItem) then
      -- Second step: Trigger selection screen

      -- Class
      local classSelector = createDropdown("class", WeakAuras.class_types);
      newViewScroll:AddChild(classSelector);

      if WeakAuras.IsRetail() then
        local specSelector = createDropdown("spec", WeakAuras.spec_types_specific[newView.class]);
        newViewScroll:AddChild(specSelector);
        newViewScroll:AddChild(createSpacer());
      end
      if TemplatePrivate.triggerTemplates.class[newView.class]
         and TemplatePrivate.triggerTemplates.class[newView.class][newView.spec]
      then
        createTriggerButtons(TemplatePrivate.triggerTemplates.class[newView.class][newView.spec], selectedItem);
      end
      local classHeader = AceGUI:Create("Heading");
      classHeader:SetFullWidth(true);
      newViewScroll:AddChild(classHeader);

      createTriggerButton(TemplatePrivate.triggerTemplates.general, selectedItem);

      -- Race
      local raceHeader = AceGUI:Create("Heading");
      raceHeader:SetFullWidth(true);
      newViewScroll:AddChild(raceHeader);
      local raceSelector = createDropdown("race", WeakAuras.race_types);
      newViewScroll:AddChild(raceSelector);
      newViewScroll:AddChild(createSpacer());
      if (TemplatePrivate.triggerTemplates.race[newView.race]) then
        local group = createTriggerFlyout(TemplatePrivate.triggerTemplates.race[newView.race], true)
        newViewScroll:AddChild(group);
      end

      -- backButton
      if (not newView.existingAura) then
        newView.backButton:Show();
      end

      -- batchButton
      newView.chosenItemBatch = {};
      if not newView.existingAura then
        newView.batchModeLabel:Show();
      end
    elseif (newView.data and newView.chosenItem and not newView.chosenSubType) then
      -- Multi-Type template
      local typeHeader = AceGUI:Create("Heading");
      typeHeader:SetFullWidth(true);
      newViewScroll:AddChild(typeHeader);
      local group = createTriggerTypeButtons();
      newViewScroll:AddChild(group);
      newView.backButton:Show();
    else
      --Third Step: (only for existing auras): replace or add triggers?
      createLastPage();
      newView.backButton:Show();
    end
  end

  local batchModeLabel = CreateFrame("Frame", "batchModeLabel", newView.frame);
  batchModeLabel:SetSize(300, 20);
  local batchModeLabelString = batchModeLabel:CreateFontString(nil, "ARTWORK");
  batchModeLabelString:SetFont(STANDARD_TEXT_FONT, 10); -- "OUTLINE"
  batchModeLabelString:SetTextColor(1,1,1,1);
  batchModeLabelString:SetText(L["Hold CTRL to create multiple auras at once"]);
  batchModeLabelString:SetJustifyH("LEFT")
  batchModeLabelString:SetAllPoints(batchModeLabel);
  batchModeLabel:SetPoint("BOTTOMLEFT", 10, -23);
  newView.batchModeLabel = batchModeLabel;

  local newViewMakeBatch = CreateFrame("Button", nil, newView.frame, "UIPanelButtonTemplate");
  newViewMakeBatch:SetScript("OnClick", function()
    local saveData = CopyTable(newView.data);
    for item in pairs(newView.chosenItemBatch) do
      -- clean data
      newView.data = CopyTable(saveData);
      -- copy data
      local subType = newView.chosenItemBatchSubType[item]
      replaceTrigger(newView.data, item, subType);
      replaceCondition(newView.data, item, subType);
      newView.data.id = TemplatePrivate.Private.FindUnusedId(item.title);
      newView.data.load = {};
      if (item.load) then
        newView.data.load = CopyTable(item.load);
      end
      if (subType.data) then
        WeakAuras.DeepMixin(newView.data, subType.data)
      end
      -- create aura
      WeakAuras.NewAura(newView.data, newView.data.regionType, newView.targetId);
    end
    newView:CancelClose();
  end);
  newViewMakeBatch:SetPoint("BOTTOMRIGHT", -147, -23);
  newViewMakeBatch:SetHeight(20);
  newViewMakeBatch:SetWidth(100);
  newViewMakeBatch:SetText(L["Create Auras"]);
  newView.makeBatchButton = newViewMakeBatch;
  newView.makeBatchButton:Hide();

  local newViewBatch = CreateFrame("Button", nil, newView.frame, "UIPanelButtonTemplate");
  newViewBatch:SetScript("OnClick", function()
    newView.batchStep = true;
    newView.batchButton:Hide();
    createButtons();
  end);
  newViewBatch:SetPoint("BOTTOMRIGHT", -147, -23);
  newViewBatch:SetHeight(20);
  newViewBatch:SetWidth(100);
  newViewBatch:SetText(L["Next"]);
  newView.batchButton = newViewBatch;
  newView.batchButton:Hide();

  local newViewBack = CreateFrame("Button", nil, newView.frame, "UIPanelButtonTemplate");
  newViewBack:SetScript("OnClick", function()
    if (newView.existingAura) then
      if newView.chosenSubType then
        newView.chosenSubType = nil;
        local subTypes = subTypesFor(newView.chosenItem, newView.data.regionType);
        if #subTypes < 2 then -- No subtype selection, go back twice
          newView.chosenItem = nil;
        end
      else
        newView.chosenItem = nil;
      end
    else
      if newView.chosenSubType then
        newView.chosenSubType = nil;
      else
        if newView.chosenItem then
          newView.chosenItem = nil;
        else
          newView.data = nil;
        end
      end
    end
    newView.batchButton:Hide();
    newView.chosenItemBatch = {};
    newView.batchStep = nil;
    newView.backButton:ClearAllPoints()
    newView.backButton:SetPoint("BOTTOMRIGHT", -147, -23);
    createButtons();
  end);
  newViewBack:SetPoint("BOTTOMRIGHT", -147, -23);
  newViewBack:SetHeight(20);
  newViewBack:SetWidth(100);
  newViewBack:SetText(L["Back"]);
  newView.backButton = newViewBack;

  local newViewCancel = CreateFrame("Button", nil, newView.frame, "UIPanelButtonTemplate");
  newViewCancel:SetScript("OnClick", function() newView:CancelClose() end);
  newViewCancel:SetPoint("BOTTOMRIGHT", -27, -23);
  newViewCancel:SetHeight(20);
  newViewCancel:SetWidth(100);
  newViewCancel:SetText(L["Cancel"]);

  function newView.Open(self, data, targetId)
    frame.window = "newView";
    frame:UpdateFrameVisible()
    self.targetId = targetId
    self.data = data -- Might be nil
    if (data) then
      newView.existingAura = true;
      newView.chosenItem = nil;
      newView.chosenSubType = nil;
    else
      newView.existingAura = false;
      newView.chosenItem = nil;
      newView.chosenSubType = nil;
      newView.batchStep = nil;
      newView.chosenItemBatch = {};
    end
    newView.class = select(2, UnitClass("player"));
    if WeakAuras.IsRetail() then
      newView.spec = GetSpecialization() or 1;
    else
      newView.spec = 1
    end
    newView.race = select(2, UnitRace('player'));

    createButtons();
  end

  function newView.CancelClose(self)
    frame.window = "default";
    frame:UpdateFrameVisible()
    if (not self.data) then
      frame:NewAura();
    end
  end

  return newView;
end


-- ========================================
-- File: WeakAurasTemplates/TriggerTemplatesData.lua
-- ========================================

local AddonName, TemplatePrivate = ...
---@class WeakAuras
local WeakAuras = WeakAuras
if not WeakAuras.IsRetail() then return end
local L = WeakAuras.L
local tinsert, C_Timer, Spell = tinsert, C_Timer, Spell

local GetSpellInfo, GetSpellIcon, GetSpellDescription = GetSpellInfo, GetSpellTexture, GetSpellDescription
-- TWW Compatibility, we don't use functions from Compatibility.lua because TemplatePrivate.Private isn't set yet
if GetSpellInfo == nil then
  GetSpellInfo = function(spellID)
    if not spellID then
      return nil
    end
    local spellInfo = C_Spell.GetSpellInfo(spellID)
    if spellInfo then
      return spellInfo.name, nil, spellInfo.iconID, spellInfo.castTime, spellInfo.minRange, spellInfo.maxRange, spellInfo.spellID, spellInfo.originalIconID
    end
  end
  GetSpellIcon = C_Spell.GetSpellTexture
  GetSpellDescription = C_Spell.GetSpellDescription
end

-- The templates tables are created on demand
local templates =
  {
    class = { },
    race = {
      Human = {},
      NightElf = {},
      Dwarf = {},
      Gnome = {},
      Draenei = {},
      Worgen = {},
      Pandaren = {},
      Dracthyr = {},
      EarthenDwarf = {},
      Orc = {},
      Scourge = {},
      Tauren = {},
      Troll = {},
      BloodElf = {},
      Goblin = {},
      Nightborne = {},
      LightforgedDraenei = {},
      HighmountainTauren = {},
      VoidElf = {},
      ZandalariTroll = {},
      KulTiran = {},
      DarkIronDwarf = {},
      Vulpera = {},
      MagharOrc = {},
      Mechagnome = {}
    },
    general = {
      title = L["General"],
      icon = 136116,
      args = {}
    },
  }

local manaIcon = "Interface\\Icons\\inv_elemental_mote_mana"
local rageIcon = "Interface\\Icons\\spell_misc_emotionangry"
local comboPointsIcon = "Interface\\Icons\\inv_mace_2h_pvp410_c_01"

local powerTypes =
  {
    [0] = { name = POWER_TYPE_MANA, icon = manaIcon },
    [1] = { name = POWER_TYPE_RED_POWER, icon = rageIcon},
    [2] = { name = POWER_TYPE_FOCUS, icon = "Interface\\Icons\\ability_hunter_focusfire"},
    [3] = { name = POWER_TYPE_ENERGY, icon = "Interface\\Icons\\spell_shadow_shadowworddominate"},
    [4] = { name = COMBO_POINTS, icon = comboPointsIcon},
    [6] = { name = RUNIC_POWER, icon = "Interface\\Icons\\inv_sword_62"},
    [7] = { name = SOUL_SHARDS_POWER, icon = "Interface\\Icons\\inv_misc_gem_amethyst_02"},
    [8] = { name = POWER_TYPE_LUNAR_POWER, icon = "Interface\\Icons\\ability_druid_eclipseorange"},
    [9] = { name = HOLY_POWER, icon = "Interface\\Icons\\achievement_bg_winsoa"},
    [11] = {name = POWER_TYPE_MAELSTROM, icon = 135990},
    [12] = {name = CHI_POWER, icon = "Interface\\Icons\\ability_monk_healthsphere"},
    [13] = {name = POWER_TYPE_INSANITY, icon = "Interface\\Icons\\spell_priest_shadoworbs"},
    [16] = {name = POWER_TYPE_ARCANE_CHARGES, icon = "Interface\\Icons\\spell_arcane_arcane01"},
    [17] = {name = POWER_TYPE_FURY_DEMONHUNTER, icon = 1344651},
    [18] = {name = POWER_TYPE_PAIN, icon = 1247265},
    [19] = {name = POWER_TYPE_ESSENCE, icon = 4630437},
    [99] = {name = STAGGER, icon = "Interface\\Icons\\monk_stance_drunkenox"}
  }

-- Collected by WeakAurasTemplateCollector:
--------------------------------------------------------------------------------
templates.class.EVOKER = {
  [1] = { -- Devastation
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 357210, type = "buff", unit = "player" }, -- Deep Breath
        { spell = 358267, type = "buff", unit = "player" }, -- Hover
        { spell = 359618, type = "buff", unit = "player", talent = 115520 }, -- Essence Burst
        { spell = 363916, type = "buff", unit = "player", talent = 115613 }, -- Obsidian Scales
        { spell = 370454, type = "buff", unit = "player", talent = 115628 }, -- Charged Blast
        { spell = 370553, type = "buff", unit = "player", talent = 115665 }, -- Tip the Scales
        { spell = 370818, type = "buff", unit = "player", talent = 115584 }, -- Snapfire
        { spell = 370901, type = "buff", unit = "player", talent = 115657 }, -- Leaping Flames
        { spell = 374227, type = "buff", unit = "player", talent = 115661 }, -- Zephyr
        { spell = 374348, type = "buff", unit = "player", talent = 115669 }, -- Renewing Blaze
        { spell = 375087, type = "buff", unit = "player", talent = 115643 }, -- Dragonrage
        { spell = 375234, type = "buff", unit = "player", talent = 115666 }, -- Time Spiral
        { spell = 375583, type = "buff", unit = "player", talent = 115577 }, -- Ancient Flame
        { spell = 375802, type = "buff", unit = "player", talent = 115624 }, -- Burnout
        { spell = 376850, type = "buff", unit = "player", talent = 115634 }, -- Power Swell
        { spell = 381748, type = "buff", unit = "player" }, -- Blessing of the Bronze
        { spell = 386353, type = "buff", unit = "player" }, -- Iridescence: Red
        { spell = 386399, type = "buff", unit = "player" }, -- Iridescence: Blue
        { spell = 390386, type = "buff", unit = "player" }, -- Fury of the Aspects
        { spell = 405874, type = "buff", unit = "player", talent = 115623 }, -- Feed the Flames
        { spell = 406732, type = "buff", unit = "player", talent = 125610 }, -- Spatial Paradox
        { spell = 411055, type = "buff", unit = "player", talent = 115638 }, -- Imminent Destruction
        { spell = 436336, type = "buff", unit = "player", herotalent = 117536 }, -- Mass Disintegrate
        { spell = 441248, type = "buff", unit = "player", herotalent = 117531 }, -- Unrelenting Siege
        { spell = 444019, type = "buff", unit = "player", herotalent = 117543 }, -- Burning Adrenaline
        { spell = 445740, type = "buff", unit = "player", herotalent = 117553 }, -- Enkindle
        { spell = 455962, type = "buff", unit = "player", talent = 115610 }, -- Recall
      },
      icon = 4622463
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 353759, type = "debuff", unit = "target" }, -- Deep Breath
        { spell = 355689, type = "debuff", unit = "target", talent = 115614 }, -- Landslide
        { spell = 356995, type = "debuff", unit = "target" }, -- Disintegrate
        { spell = 357209, type = "debuff", unit = "target" }, -- Fire Breath
        { spell = 357214, type = "debuff", unit = "target" }, -- Wing Buffet
        { spell = 361500, type = "debuff", unit = "target" }, -- Living Flame
        { spell = 368970, type = "debuff", unit = "target" }, -- Tail Swipe
        { spell = 370452, type = "debuff", unit = "target", talent = 115627 }, -- Shattering Star
        { spell = 370898, type = "debuff", unit = "target" }, -- Permeating Chill
        { spell = 406971, type = "debuff", unit = "target", talent = 115607 }, -- Oppressing Roar
        { spell = 434473, type = "debuff", unit = "target", herotalent = 117533 }, -- Bombardments
        { spell = 441172, type = "debuff", unit = "target", herotalent = 117518 }, -- Melt Armor
        { spell = 444017, type = "debuff", unit = "target", herotalent = 117553 }, -- Enkindle
      },
      icon = 4622458
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 351338, type = "ability", requiresTarget = true, talent = 115620 }, -- Quell
        { spell = 355913, type = "ability" }, -- Emerald Blossom
        { spell = 356995, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Disintegrate
        { spell = 357208, type = "ability", overlayGlow = true }, -- Fire Breath
        { spell = 357210, type = "ability", buff = true }, -- Deep Breath
        { spell = 357211, type = "ability", charges = true, overlayGlow = true, requiresTarget = true, talent = 115647 }, -- Pyre
        { spell = 357214, type = "ability", debuff = true }, -- Wing Buffet
        { spell = 358267, type = "ability", charges = true, buff = true, overlayGlow = true }, -- Hover
        { spell = 358385, type = "ability", talent = 115614 }, -- Landslide
        { spell = 359073, type = "ability", overlayGlow = true, requiresTarget = true, talent = 115581 }, -- Eternity Surge
        { spell = 360806, type = "ability", requiresTarget = true, talent = 115601 }, -- Sleep Walk
        { spell = 360995, type = "ability", talent = 115655 }, -- Verdant Embrace
        { spell = 361469, type = "ability", overlayGlow = true, requiresTarget = true }, -- Living Flame
        { spell = 362969, type = "ability", requiresTarget = true }, -- Azure Strike
        { spell = 363916, type = "ability", charges = true, buff = true, talent = 115613 }, -- Obsidian Scales
        { spell = 364342, type = "ability" }, -- Blessing of the Bronze
        { spell = 365585, type = "ability", talent = 115615 }, -- Expunge
        { spell = 368432, type = "ability", requiresTarget = true, talent = 115617 }, -- Unravel
        { spell = 368847, type = "ability", overlayGlow = true, talent = 115585 }, -- Firestorm
        { spell = 368970, type = "ability", debuff = true }, -- Tail Swipe
        { spell = 370452, type = "ability", debuff = true, requiresTarget = true, talent = 115627 }, -- Shattering Star
        { spell = 370553, type = "ability", buff = true, talent = 115665 }, -- Tip the Scales
        { spell = 370665, type = "ability", talent = 115596 }, -- Rescue
        { spell = 374227, type = "ability", buff = true, talent = 115661 }, -- Zephyr
        { spell = 374251, type = "ability", talent = 115602 }, -- Cauterizing Flame
        { spell = 374348, type = "ability", buff = true, talent = 115669 }, -- Renewing Blaze
        { spell = 374968, type = "ability", talent = 115666 }, -- Time Spiral
        { spell = 375087, type = "ability", buff = true, talent = 115643 }, -- Dragonrage
        { spell = 382266, type = "ability", overlayGlow = true }, -- Fire Breath
        { spell = 382411, type = "ability", overlayGlow = true, requiresTarget = true, talent = 115581 }, -- Eternity Surge
        { spell = 390386, type = "ability", buff = true }, -- Fury of the Aspects
        { spell = 406732, type = "ability", buff = true, talent = 125610 }, -- Spatial Paradox
        { spell = 406971, type = "ability", debuff = true, talent = 115607 }, -- Oppressing Roar
        { spell = 433874, type = "ability", buff = true }, -- Deep Breath
        { spell = 443328, type = "ability", charges = true, requiresTarget = true, herotalent = 117547 }, -- Engulf
      },
      icon = 4622452
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  },
  [2] = { -- Preservation
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 355941, type = "buff", unit = "player", talent = 115542 }, -- Dream Breath
        { spell = 357170, type = "buff", unit = "player", talent = 115650 }, -- Time Dilation
        { spell = 357210, type = "buff", unit = "player" }, -- Deep Breath
        { spell = 358267, type = "buff", unit = "player" }, -- Hover
        { spell = 359816, type = "buff", unit = "player", talent = 115573 }, -- Dream Flight
        { spell = 362877, type = "buff", unit = "player", talent = 115543 }, -- Temporal Compression
        { spell = 363534, type = "buff", unit = "player", talent = 115651 }, -- Rewind
        { spell = 363916, type = "buff", unit = "player", talent = 115613 }, -- Obsidian Scales
        { spell = 364343, type = "buff", unit = "player", talent = 115653 }, -- Echo
        { spell = 366155, type = "buff", unit = "player", talent = 115652 }, -- Reversion
        { spell = 369299, type = "buff", unit = "player", talent = 115541 }, -- Essence Burst
        { spell = 370537, type = "buff", unit = "player", talent = 115567 }, -- Stasis
        { spell = 370553, type = "buff", unit = "player", talent = 115665 }, -- Tip the Scales
        { spell = 370901, type = "buff", unit = "player", talent = 115657 }, -- Leaping Flames
        { spell = 370960, type = "buff", unit = "player", talent = 115549 }, -- Emerald Communion
        { spell = 371877, type = "buff", unit = "player", talent = 115572 }, -- Cycle of Life
        { spell = 373267, type = "buff", unit = "player", talent = 115557 }, -- Lifebind
        { spell = 373835, type = "buff", unit = "player", talent = 115554 }, -- Call of Ysera
        { spell = 373862, type = "buff", unit = "player", talent = 115561 }, -- Temporal Anomaly
        { spell = 374227, type = "buff", unit = "player", talent = 115661 }, -- Zephyr
        { spell = 374348, type = "buff", unit = "player", talent = 115669 }, -- Renewing Blaze
        { spell = 375583, type = "buff", unit = "player", talent = 115577 }, -- Ancient Flame
        { spell = 377102, type = "buff", unit = "player", talent = 115550 }, -- Exhilarating Burst
        { spell = 381748, type = "buff", unit = "player" }, -- Blessing of the Bronze
        { spell = 387350, type = "buff", unit = "player", talent = 115555 }, -- Ouroboros
        { spell = 390148, type = "buff", unit = "player", talent = 115560 }, -- Flow State
        { spell = 390386, type = "buff", unit = "player" }, -- Fury of the Aspects
        { spell = 406732, type = "buff", unit = "player", talent = 125610 }, -- Spatial Paradox
        { spell = 409895, type = "buff", unit = "player", talent = 115546 }, -- Spiritbloom
        { spell = 431654, type = "buff", unit = "player", herotalent = 117548 }, -- Primacy
        { spell = 431698, type = "buff", unit = "player", herotalent = 117552 }, -- Temporal Burst
        { spell = 431872, type = "buff", unit = "player", herotalent = 117532 }, -- Temporality
        { spell = 431991, type = "buff", unit = "player", herotalent = 117786 }, -- Time Convergence
        { spell = 443176, type = "buff", unit = "player", talent = 123294 }, -- Lifespark
        { spell = 444019, type = "buff", unit = "player", herotalent = 117543 }, -- Burning Adrenaline
        { spell = 445740, type = "buff", unit = "player", herotalent = 117553 }, -- Enkindle
      },
      icon = 4630476
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 353759, type = "debuff", unit = "target" }, -- Deep Breath
        { spell = 355689, type = "debuff", unit = "target", talent = 115614 }, -- Landslide
        { spell = 356995, type = "debuff", unit = "target" }, -- Disintegrate
        { spell = 357209, type = "debuff", unit = "target" }, -- Fire Breath
        { spell = 360806, type = "debuff", unit = "target", talent = 115601 }, -- Sleep Walk
        { spell = 370898, type = "debuff", unit = "target" }, -- Permeating Chill
        { spell = 406971, type = "debuff", unit = "target", talent = 115607 }, -- Oppressing Roar
        { spell = 444017, type = "debuff", unit = "target", herotalent = 117553 }, -- Enkindle
      },
      icon = 4622488
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 351338, type = "ability", requiresTarget = true, talent = 115620 }, -- Quell
        { spell = 355913, type = "ability", overlayGlow = true }, -- Emerald Blossom
        { spell = 356995, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Disintegrate
        { spell = 357170, type = "ability", buff = true, talent = 115650 }, -- Time Dilation
        { spell = 357210, type = "ability", buff = true }, -- Deep Breath
        { spell = 357214, type = "ability" }, -- Wing Buffet
        { spell = 358267, type = "ability", charges = true, buff = true }, -- Hover
        { spell = 358385, type = "ability", talent = 115614 }, -- Landslide
        { spell = 359816, type = "ability", buff = true, talent = 115573 }, -- Dream Flight
        { spell = 360806, type = "ability", debuff = true, requiresTarget = true, talent = 115601 }, -- Sleep Walk
        { spell = 360823, type = "ability" }, -- Naturalize
        { spell = 360995, type = "ability", talent = 115655 }, -- Verdant Embrace
        { spell = 361469, type = "ability", overlayGlow = true, requiresTarget = true }, -- Living Flame
        { spell = 362969, type = "ability", requiresTarget = true }, -- Azure Strike
        { spell = 363534, type = "ability", charges = true, buff = true, talent = 115651 }, -- Rewind
        { spell = 363916, type = "ability", charges = true, buff = true, talent = 115613 }, -- Obsidian Scales
        { spell = 364342, type = "ability" }, -- Blessing of the Bronze
        { spell = 364343, type = "ability", buff = true, overlayGlow = true, talent = 115653 }, -- Echo
        { spell = 366155, type = "ability", charges = true, buff = true, talent = 115652 }, -- Reversion
        { spell = 368432, type = "ability", requiresTarget = true, talent = 115617 }, -- Unravel
        { spell = 368970, type = "ability" }, -- Tail Swipe
        { spell = 370537, type = "ability", buff = true, talent = 115567 }, -- Stasis
        { spell = 370553, type = "ability", buff = true, talent = 115665 }, -- Tip the Scales
        { spell = 370665, type = "ability", talent = 115596 }, -- Rescue
        { spell = 370960, type = "ability", buff = true, talent = 115549 }, -- Emerald Communion
        { spell = 373861, type = "ability", talent = 115561 }, -- Temporal Anomaly
        { spell = 374227, type = "ability", buff = true, talent = 115661 }, -- Zephyr
        { spell = 374251, type = "ability", talent = 115602 }, -- Cauterizing Flame
        { spell = 374348, type = "ability", buff = true, talent = 115669 }, -- Renewing Blaze
        { spell = 374968, type = "ability", talent = 115666 }, -- Time Spiral
        { spell = 382266, type = "ability", overlayGlow = true }, -- Fire Breath
        { spell = 382614, type = "ability", overlayGlow = true, talent = 115542 }, -- Dream Breath
        { spell = 382731, type = "ability", overlayGlow = true, talent = 115546 }, -- Spiritbloom
        { spell = 390386, type = "ability", buff = true }, -- Fury of the Aspects
        { spell = 406732, type = "ability", buff = true, talent = 125610 }, -- Spatial Paradox
        { spell = 406971, type = "ability", debuff = true, talent = 115607 }, -- Oppressing Roar
        { spell = 443328, type = "ability", charges = true, requiresTarget = true, herotalent = 117547 }, -- Engulf
      },
      icon = 4622474
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  },
  [3] = { -- Augmentation
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 360827, type = "buff", unit = "player", talent = 115508 }, -- Blistering Scales
        { spell = 361021, type = "buff", unit = "player" }, -- Sense Power
        { spell = 363916, type = "buff", unit = "player", talent = 115613 }, -- Obsidian Scales
        { spell = 370553, type = "buff", unit = "player", talent = 115665 }, -- Tip the Scales
        { spell = 370901, type = "buff", unit = "player", talent = 115657 }, -- Leaping Flames
        { spell = 374227, type = "buff", unit = "player", talent = 115661 }, -- Zephyr
        { spell = 374348, type = "buff", unit = "player", talent = 115669 }, -- Renewing Blaze
        { spell = 375583, type = "buff", unit = "player", talent = 115577 }, -- Ancient Flame
        { spell = 375802, type = "buff", unit = "player" }, -- Burnout
        { spell = 381748, type = "buff", unit = "player" }, -- Blessing of the Bronze
        { spell = 390386, type = "buff", unit = "player" }, -- Fury of the Aspects
        { spell = 392268, type = "buff", unit = "player", talent = 115520 }, -- Essence Burst
        { spell = 395296, type = "buff", unit = "player", talent = 115496 }, -- Ebon Might
        { spell = 403264, type = "buff", unit = "player" }, -- Black Attunement
        { spell = 403265, type = "buff", unit = "player" }, -- Bronze Attunement
        { spell = 404977, type = "buff", unit = "player", talent = 115533 }, -- Time Skip
        { spell = 406732, type = "buff", unit = "player", talent = 125610 }, -- Spatial Paradox
        { spell = 407254, type = "buff", unit = "player" }, -- Black Aspect's Favor
        { spell = 410263, type = "buff", unit = "player", talent = 115495 }, -- Inferno's Blessing
        { spell = 410355, type = "buff", unit = "player", talent = 115534 }, -- Stretch Time
        { spell = 410651, type = "buff", unit = "player", talent = 115510 }, -- Molten Blood
        { spell = 410686, type = "buff", unit = "player", talent = 115515 }, -- Symbiotic Bloom
        { spell = 412710, type = "buff", unit = "player", talent = 115679 }, -- Timelessness
        { spell = 438588, type = "buff", unit = "player", herotalent = 122279 }, -- Mass Eruption
        { spell = 441248, type = "buff", unit = "player", herotalent = 117531 }, -- Unrelenting Siege
        { spell = 442204, type = "buff", unit = "player", talent = 115536 }, -- Breath of Eons
        { spell = 455962, type = "buff", unit = "player", talent = 115610 }, -- Recall
        { spell = 459574, type = "buff", unit = "player", talent = 126304 }, -- Imminent Destruction
      },
      icon = 5061347
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 355689, type = "debuff", unit = "target", talent = 115614 }, -- Landslide
        { spell = 357209, type = "debuff", unit = "target" }, -- Fire Breath
        { spell = 357214, type = "debuff", unit = "target" }, -- Wing Buffet
        { spell = 360806, type = "debuff", unit = "target", talent = 115601 }, -- Sleep Walk
        { spell = 368970, type = "debuff", unit = "target" }, -- Tail Swipe
        { spell = 370898, type = "debuff", unit = "target" }, -- Permeating Chill
        { spell = 406971, type = "debuff", unit = "target", talent = 115607 }, -- Oppressing Roar
        { spell = 409560, type = "debuff", unit = "target" }, -- Temporal Wound
        { spell = 434473, type = "debuff", unit = "target", herotalent = 117533 }, -- Bombardments
        { spell = 439606, type = "debuff", unit = "target", talent = 115537 }, -- Perilous Fate
        { spell = 441172, type = "debuff", unit = "target", herotalent = 117518 }, -- Melt Armor
        { spell = 441201, type = "debuff", unit = "target", herotalent = 120125 }, -- Menacing Presence
      },
      icon = 5199622
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 351338, type = "ability", requiresTarget = true, talent = 115620 }, -- Quell
        { spell = 355913, type = "ability" }, -- Emerald Blossom
        { spell = 357208, type = "ability", overlayGlow = true }, -- Fire Breath
        { spell = 357214, type = "ability", debuff = true }, -- Wing Buffet
        { spell = 358267, type = "ability", charges = true }, -- Hover
        { spell = 358385, type = "ability", talent = 115614 }, -- Landslide
        { spell = 360806, type = "ability", debuff = true, requiresTarget = true, talent = 115601 }, -- Sleep Walk
        { spell = 360827, type = "ability", buff = true, talent = 115508 }, -- Blistering Scales
        { spell = 360995, type = "ability", talent = 115655 }, -- Verdant Embrace
        { spell = 361021, type = "ability", buff = true }, -- Sense Power
        { spell = 361469, type = "ability", overlayGlow = true, requiresTarget = true }, -- Living Flame
        { spell = 362969, type = "ability", requiresTarget = true }, -- Azure Strike
        { spell = 363916, type = "ability", charges = true, buff = true, talent = 115613 }, -- Obsidian Scales
        { spell = 364342, type = "ability" }, -- Blessing of the Bronze
        { spell = 365585, type = "ability", talent = 115615 }, -- Expunge
        { spell = 368432, type = "ability", requiresTarget = true, talent = 115617 }, -- Unravel
        { spell = 368970, type = "ability", debuff = true }, -- Tail Swipe
        { spell = 370553, type = "ability", buff = true, talent = 115665 }, -- Tip the Scales
        { spell = 370665, type = "ability", talent = 115596 }, -- Rescue
        { spell = 374227, type = "ability", buff = true, talent = 115661 }, -- Zephyr
        { spell = 374251, type = "ability", talent = 115602 }, -- Cauterizing Flame
        { spell = 374348, type = "ability", buff = true, talent = 115669 }, -- Renewing Blaze
        { spell = 374968, type = "ability", talent = 115666 }, -- Time Spiral
        { spell = 382266, type = "ability", overlayGlow = true }, -- Fire Breath
        { spell = 390386, type = "ability", buff = true }, -- Fury of the Aspects
        { spell = 395152, type = "ability", talent = 115496 }, -- Ebon Might
        { spell = 395160, type = "ability", overlayGlow = true, requiresTarget = true, talent = 115498 }, -- Eruption
        { spell = 396286, type = "ability", overlayGlow = true, requiresTarget = true, talent = 115502 }, -- Upheaval
        { spell = 403264, type = "ability", buff = true }, -- Black Attunement
        { spell = 403265, type = "ability", buff = true }, -- Bronze Attunement
        { spell = 404977, type = "ability", buff = true, talent = 115533 }, -- Time Skip
        { spell = 406732, type = "ability", buff = true, talent = 125610 }, -- Spatial Paradox
        { spell = 406971, type = "ability", debuff = true, talent = 115607 }, -- Oppressing Roar
        { spell = 408092, type = "ability", overlayGlow = true, requiresTarget = true, talent = 115502 }, -- Upheaval
        { spell = 408233, type = "ability", talent = 115493 }, -- Bestow Weyrnstone
        { spell = 409311, type = "ability", charges = true, talent = 115675 }, -- Prescience
        { spell = 442204, type = "ability", buff = true, talent = 115536 }, -- Breath of Eons
      },
      icon = 5199630
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  }
}

templates.class.WARRIOR = {
  [1] = { -- Arms
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 1719, type = "buff", unit = "player" }, -- Recklessness
        { spell = 6673, type = "buff", unit = "player" }, -- Battle Shout
        { spell = 7384, type = "buff", unit = "player", talent = 112123 }, -- Overpower
        { spell = 18499, type = "buff", unit = "player" }, -- Berserker Rage
        { spell = 23920, type = "buff", unit = "player", talent = 112253 }, -- Spell Reflection
        { spell = 52437, type = "buff", unit = "player", talent = 112126 }, -- Sudden Death
        { spell = 97463, type = "buff", unit = "player", talent = 112188 }, -- Rallying Cry
        { spell = 107574, type = "buff", unit = "player", talent = 112232 }, -- Avatar
        { spell = 118038, type = "buff", unit = "player", talent = 112128 }, -- Die by the Sword
        { spell = 132404, type = "buff", unit = "player" }, -- Shield Block
        { spell = 190456, type = "buff", unit = "player", talent = 114738 }, -- Ignore Pain
        { spell = 202164, type = "buff", unit = "player", talent = 112219 }, -- Bounding Stride
        { spell = 227847, type = "buff", unit = "player", talent = 112314 }, -- Bladestorm
        { spell = 228920, type = "buff", unit = "player", talent = 119138 }, -- Ravager
        { spell = 248622, type = "buff", unit = "player", talent = 112142 }, -- In For The Kill
        { spell = 260708, type = "buff", unit = "player" }, -- Sweeping Strikes
        { spell = 334783, type = "buff", unit = "player", talent = 114739 }, -- Collateral Damage
        { spell = 351077, type = "buff", unit = "player", talent = 112190 }, -- Second Wind
        { spell = 383290, type = "buff", unit = "player", talent = 112319 }, -- Juggernaut
        { spell = 383316, type = "buff", unit = "player", talent = 112117 }, -- Merciless Bonegrinder
        { spell = 384100, type = "buff", unit = "player", talent = 112211 }, -- Berserker Shout
        { spell = 385013, type = "buff", unit = "player", talent = 112141 }, -- Test of Might
        { spell = 386164, type = "buff", unit = "player", talent = 112184 }, -- Battle Stance
        { spell = 386208, type = "buff", unit = "player", talent = 114643 }, -- Defensive Stance
        { spell = 392778, type = "buff", unit = "player", talent = 112224 }, -- Wild Strikes
        { spell = 439601, type = "buff", unit = "player", talent = 112119 }, -- Storm of Swords
        { spell = 440989, type = "buff", unit = "player", herotalent = 117416 }, -- Colossal Might
        { spell = 445606, type = "buff", unit = "player", herotalent = 117385 }, -- Imminent Demise
        { spell = 446044, type = "buff", unit = "player", herotalent = 117392 }, -- Relentless Pursuit
        { spell = 446918, type = "buff", unit = "player", herotalent = 123409 }, -- Brutal Finish
        { spell = 456120, type = "buff", unit = "player", herotalent = 123770 }, -- Opportunist
        { spell = 458689, type = "buff", unit = "player", herotalent = 117384 }, -- Fierce Followthrough
        { spell = 147833, type = "buff", unit = "target", talent = 112186 }, -- Intervene
      },
      icon = 132333
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 355, type = "debuff", unit = "target" }, -- Taunt
        { spell = 1715, type = "debuff", unit = "target" }, -- Hamstring
        { spell = 5246, type = "debuff", unit = "target", talent = 112252 }, -- Intimidating Shout
        { spell = 12323, type = "debuff", unit = "target", talent = 112210 }, -- Piercing Howl
        { spell = 105771, type = "debuff", unit = "target" }, -- Charge
        { spell = 115804, type = "debuff", unit = "target" }, -- Mortal Wounds
        { spell = 132168, type = "debuff", unit = "target", talent = 112242 }, -- Shockwave
        { spell = 132169, type = "debuff", unit = "target", talent = 112198 }, -- Storm Bolt
        { spell = 208086, type = "debuff", unit = "target", talent = 112144 }, -- Colossus Smash
        { spell = 262115, type = "debuff", unit = "target" }, -- Deep Wounds
        { spell = 376080, type = "debuff", unit = "target", talent = 112247 }, -- Champion's Spear
        { spell = 383704, type = "debuff", unit = "target" }, -- Fatal Mark
        { spell = 386633, type = "debuff", unit = "target", talent = 112318 }, -- Executioner's Precision
        { spell = 388539, type = "debuff", unit = "target", talent = 112136 }, -- Rend
        { spell = 397364, type = "debuff", unit = "target", talent = 112223 }, -- Thunderous Roar
        { spell = 424597, type = "debuff", unit = "target" }, -- Storm of Destruction
        { spell = 427040, type = "debuff", unit = "target", talent = 112133 }, -- Skullsplitter
        { spell = 435203, type = "debuff", unit = "target", talent = 112205 }, -- Thunder Clap
        { spell = 445584, type = "debuff", unit = "target" }, -- Marked for Execution
        { spell = 445836, type = "debuff", unit = "target" }, -- Overwhelmed
        { spell = 447513, type = "debuff", unit = "target" }, -- Wrecked
        { spell = 458480, type = "debuff", unit = "target", herotalent = 117386 }, -- Boneshaker
      },
      icon = 132366
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 100, type = "ability", charges = true, requiresTarget = true, usable = true }, -- Charge
        { spell = 355, type = "ability", debuff = true, requiresTarget = true }, -- Taunt
        { spell = 772, type = "ability", requiresTarget = true, talent = 112136 }, -- Rend
        { spell = 845, type = "ability", overlayGlow = true, talent = 112147 }, -- Cleave
        { spell = 1464, type = "ability", requiresTarget = true }, -- Slam
        { spell = 1715, type = "ability", debuff = true, requiresTarget = true }, -- Hamstring
        { spell = 2565, type = "ability", usable = true }, -- Shield Block
        { spell = 3411, type = "ability", talent = 112186 }, -- Intervene
        { spell = 5246, type = "ability", debuff = true, requiresTarget = true, talent = 112252 }, -- Intimidating Shout
        { spell = 6343, type = "ability", talent = 112205 }, -- Thunder Clap
        { spell = 6544, type = "ability", talent = 112208 }, -- Heroic Leap
        { spell = 6552, type = "ability", requiresTarget = true }, -- Pummel
        { spell = 6673, type = "ability", buff = true }, -- Battle Shout
        { spell = 7384, type = "ability", charges = true, buff = true, overlayGlow = true, requiresTarget = true, talent = 112123 }, -- Overpower
        { spell = 12294, type = "ability", overlayGlow = true, requiresTarget = true, talent = 112122 }, -- Mortal Strike
        { spell = 12323, type = "ability", debuff = true, talent = 112210 }, -- Piercing Howl
        { spell = 18499, type = "ability", buff = true }, -- Berserker Rage
        { spell = 23920, type = "ability", buff = true, talent = 112253 }, -- Spell Reflection
        { spell = 23922, type = "ability", requiresTarget = true, usable = true }, -- Shield Slam
        { spell = 34428, type = "ability", requiresTarget = true, usable = true }, -- Victory Rush
        { spell = 46968, type = "ability", talent = 112242 }, -- Shockwave
        { spell = 57755, type = "ability", requiresTarget = true }, -- Heroic Throw
        { spell = 64382, type = "ability", requiresTarget = true, talent = 112214 }, -- Shattering Throw
        { spell = 97462, type = "ability", talent = 112188 }, -- Rallying Cry
        { spell = 107570, type = "ability", requiresTarget = true, talent = 112198 }, -- Storm Bolt
        { spell = 107574, type = "ability", buff = true, talent = 112232 }, -- Avatar
        { spell = 118038, type = "ability", buff = true, talent = 112128 }, -- Die by the Sword
        { spell = 163201, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Execute
        { spell = 167105, type = "ability", requiresTarget = true, debuff = true }, -- Colossus Smash
        { spell = 190456, type = "ability", buff = true, talent = 114738 }, -- Ignore Pain
        { spell = 202168, type = "ability", requiresTarget = true, talent = 112183 }, -- Impending Victory
        { spell = 227847, type = "ability", buff = true, talent = 112314 }, -- Bladestorm
        { spell = 228920, type = "ability", buff = true, talent = 119138 }, -- Ravager
        { spell = 260643, type = "ability", requiresTarget = true, talent = 112133 }, -- Skullsplitter
        { spell = 260708, type = "ability", buff = true }, -- Sweeping Strikes
        { spell = 262161, type = "ability", talent = 112139 }, -- Warbreaker
        { spell = 281000, type = "ability", overlayGlow = true, requiresTarget = true }, -- Execute
        { spell = 316593, type = "ability", debuff = true, talent = 112252 }, -- Intimidating Shout
        { spell = 376079, type = "ability", talent = 112247 }, -- Champion's Spear
        { spell = 383762, type = "ability", talent = 112220 }, -- Bitter Immunity
        { spell = 384100, type = "ability", buff = true, talent = 112211 }, -- Berserker Shout
        { spell = 384110, type = "ability", requiresTarget = true, talent = 112215 }, -- Wrecking Throw
        { spell = 384318, type = "ability", talent = 112223 }, -- Thunderous Roar
        { spell = 386164, type = "ability", buff = true, talent = 112184 }, -- Battle Stance
        { spell = 386208, type = "ability", buff = true, talent = 114643 }, -- Defensive Stance
        { spell = 394062, type = "ability", requiresTarget = true, talent = 112156 }, -- Rend
        { spell = 436358, type = "ability", overlayGlow = true, requiresTarget = true, herotalent = 117415 }, -- Demolish
      },
      icon = 132355
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = rageIcon,
    },
  },
  [2] = { -- Fury
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 1719, type = "buff", unit = "player", talent = 112281 }, -- Recklessness
        { spell = 6673, type = "buff", unit = "player" }, -- Battle Shout
        { spell = 18499, type = "buff", unit = "player" }, -- Berserker Rage
        { spell = 23920, type = "buff", unit = "player", talent = 112253 }, -- Spell Reflection
        { spell = 85739, type = "buff", unit = "player" }, -- Whirlwind
        { spell = 97463, type = "buff", unit = "player", talent = 112188 }, -- Rallying Cry
        { spell = 107574, type = "buff", unit = "player", talent = 114770 }, -- Avatar
        { spell = 132404, type = "buff", unit = "player" }, -- Shield Block
        { spell = 184362, type = "buff", unit = "player" }, -- Enrage
        { spell = 184364, type = "buff", unit = "player", talent = 112264 }, -- Enraged Regeneration
        { spell = 202164, type = "buff", unit = "player", talent = 112219 }, -- Bounding Stride
        { spell = 228920, type = "buff", unit = "player", talent = 112256 }, -- Ravager
        { spell = 280746, type = "buff", unit = "player" }, -- Barbarian
        { spell = 280776, type = "buff", unit = "player", talent = 112300 }, -- Sudden Death
        { spell = 335082, type = "buff", unit = "player", talent = 112275 }, -- Frenzy
        { spell = 351077, type = "buff", unit = "player", talent = 112190 }, -- Second Wind
        { spell = 384100, type = "buff", unit = "player", talent = 112211 }, -- Berserker Shout
        { spell = 386196, type = "buff", unit = "player", talent = 112182 }, -- Berserker Stance
        { spell = 386208, type = "buff", unit = "player", talent = 114644 }, -- Defensive Stance
        { spell = 391688, type = "buff", unit = "player", talent = 112288 }, -- Dancing Blades
        { spell = 392537, type = "buff", unit = "player", talent = 112278 }, -- Ashen Juggernaut
        { spell = 392778, type = "buff", unit = "player", talent = 112224 }, -- Wild Strikes
        { spell = 393931, type = "buff", unit = "player", talent = 112280 }, -- Slaughtering Strikes
        { spell = 393951, type = "buff", unit = "player", talent = 112274 }, -- Bloodcraze
        { spell = 396752, type = "buff", unit = "player" }, -- Crushing Blow
        { spell = 435615, type = "buff", unit = "player", herotalent = 117382 }, -- Thunder Blast
        { spell = 437121, type = "buff", unit = "player", herotalent = 117404 }, -- Burst of Power
        { spell = 437152, type = "buff", unit = "player", herotalent = 118836 }, -- Steadfast as the Peaks
        { spell = 438591, type = "buff", unit = "player", herotalent = 117395 }, -- Keep Your Feet on the Ground
        { spell = 445606, type = "buff", unit = "player", herotalent = 117385 }, -- Imminent Demise
        { spell = 446035, type = "buff", unit = "player", talent = 119139 }, -- Bladestorm
        { spell = 446044, type = "buff", unit = "player", herotalent = 117392 }, -- Relentless Pursuit
        { spell = 446918, type = "buff", unit = "player", herotalent = 123409 }, -- Brutal Finish
        { spell = 458689, type = "buff", unit = "player", herotalent = 117384 }, -- Fierce Followthrough
        { spell = 461288, type = "buff", unit = "player" }, -- Bloodbath
        { spell = 147833, type = "buff", unit = "target", talent = 112186 }, -- Intervene
        { spell = 438598, type = "buff", unit = "target", herotalent = 118835 }, -- Storm Shield
      },
      icon = 136224
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 355, type = "debuff", unit = "target" }, -- Taunt
        { spell = 1715, type = "debuff", unit = "target" }, -- Hamstring
        { spell = 5246, type = "debuff", unit = "target", talent = 112252 }, -- Intimidating Shout
        { spell = 12323, type = "debuff", unit = "target", talent = 112210 }, -- Piercing Howl
        { spell = 105771, type = "debuff", unit = "target" }, -- Charge
        { spell = 132168, type = "debuff", unit = "target", talent = 112242 }, -- Shockwave
        { spell = 132169, type = "debuff", unit = "target", talent = 112198 }, -- Storm Bolt
        { spell = 376080, type = "debuff", unit = "target", talent = 112247 }, -- Champion's Spear
        { spell = 385042, type = "debuff", unit = "target" }, -- Gushing Wound
        { spell = 385060, type = "debuff", unit = "target", talent = 112289 }, -- Odyn's Fury
        { spell = 397364, type = "debuff", unit = "target", talent = 112223 }, -- Thunderous Roar
        { spell = 435203, type = "debuff", unit = "target", talent = 112205 }, -- Thunder Clap
        { spell = 445584, type = "debuff", unit = "target" }, -- Marked for Execution
        { spell = 445836, type = "debuff", unit = "target" }, -- Overwhelmed
      },
      icon = 132154
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 100, type = "ability", charges = true, requiresTarget = true, usable = true }, -- Charge
        { spell = 355, type = "ability", debuff = true, requiresTarget = true }, -- Taunt
        { spell = 772, type = "ability", requiresTarget = true, talent = 112136 }, -- Rend
        { spell = 845, type = "ability", talent = 112147 }, -- Cleave
        { spell = 1464, type = "ability", requiresTarget = true }, -- Slam
        { spell = 1715, type = "ability", debuff = true, requiresTarget = true }, -- Hamstring
        { spell = 1719, type = "ability", buff = true, talent = 112281 }, -- Recklessness
        { spell = 2565, type = "ability", usable = true }, -- Shield Block
        { spell = 3411, type = "ability", talent = 112186 }, -- Intervene
        { spell = 5246, type = "ability", debuff = true, requiresTarget = true, talent = 112252 }, -- Intimidating Shout
        { spell = 5308, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Execute
        { spell = 6343, type = "ability", overlayGlow = true, talent = 112205 }, -- Thunder Clap
        { spell = 6544, type = "ability", charges = true, overlayGlow = true, talent = 112208 }, -- Heroic Leap
        { spell = 6552, type = "ability", requiresTarget = true }, -- Pummel
        { spell = 6673, type = "ability", buff = true }, -- Battle Shout
        { spell = 12323, type = "ability", debuff = true, talent = 112210 }, -- Piercing Howl
        { spell = 18499, type = "ability", buff = true }, -- Berserker Rage
        { spell = 23881, type = "ability", overlayGlow = true, requiresTarget = true, talent = 112261 }, -- Bloodthirst
        { spell = 23920, type = "ability", buff = true, talent = 112253 }, -- Spell Reflection
        { spell = 23922, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Shield Slam
        { spell = 34428, type = "ability", requiresTarget = true }, -- Victory Rush
        { spell = 46968, type = "ability", talent = 112242 }, -- Shockwave
        { spell = 57755, type = "ability", requiresTarget = true }, -- Heroic Throw
        { spell = 64382, type = "ability", requiresTarget = true, talent = 112214 }, -- Shattering Throw
        { spell = 85288, type = "ability", charges = true, overlayGlow = true, requiresTarget = true, talent = 112265 }, -- Raging Blow
        { spell = 97462, type = "ability", talent = 112188 }, -- Rallying Cry
        { spell = 107570, type = "ability", talent = 112198 }, -- Storm Bolt
        { spell = 107574, type = "ability", buff = true, talent = 114770 }, -- Avatar
        { spell = 184364, type = "ability", buff = true, talent = 112264 }, -- Enraged Regeneration
        { spell = 184367, type = "ability", overlayGlow = true, requiresTarget = true, usable = true, talent = 112277 }, -- Rampage
        { spell = 202168, type = "ability", requiresTarget = true, talent = 112183 }, -- Impending Victory
        { spell = 228920, type = "ability", buff = true, talent = 112256 }, -- Ravager
        { spell = 280735, type = "ability", overlayGlow = true, requiresTarget = true }, -- Execute
        { spell = 315720, type = "ability", requiresTarget = true, talent = 112295 }, -- Onslaught
        { spell = 316593, type = "ability", debuff = true, requiresTarget = true, talent = 112252 }, -- Intimidating Shout
        { spell = 335096, type = "ability", overlayGlow = true, requiresTarget = true }, -- Bloodbath
        { spell = 335097, type = "ability", charges = true, overlayGlow = true, requiresTarget = true }, -- Crushing Blow
        { spell = 376079, type = "ability", talent = 112247 }, -- Champion's Spear
        { spell = 383762, type = "ability", talent = 112220 }, -- Bitter Immunity
        { spell = 384100, type = "ability", buff = true, talent = 112211 }, -- Berserker Shout
        { spell = 384110, type = "ability", requiresTarget = true, talent = 112215 }, -- Wrecking Throw
        { spell = 384318, type = "ability", talent = 112223 }, -- Thunderous Roar
        { spell = 385059, type = "ability", talent = 112289 }, -- Odyn's Fury
        { spell = 386164, type = "ability", talent = 112184 }, -- Battle Stance
        { spell = 386196, type = "ability", buff = true, talent = 112182 }, -- Berserker Stance
        { spell = 386208, type = "ability", buff = true, talent = 114644 }, -- Defensive Stance
        { spell = 435222, type = "ability", overlayGlow = true, herotalent = 117382 }, -- Thunder Blast
        { spell = 436358, type = "ability", requiresTarget = true, herotalent = 117415 }, -- Demolish
        { spell = 446035, type = "ability", charges = true, buff = true, talent = 119139 }, -- Bladestorm
      },
      icon = 136012
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = rageIcon,
    },
  },
  [3] = { -- Protection
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 871, type = "buff", unit = "player", talent = 112167 }, -- Shield Wall
        { spell = 5302, type = "buff", unit = "player" }, -- Revenge!
        { spell = 6673, type = "buff", unit = "player" }, -- Battle Shout
        { spell = 12975, type = "buff", unit = "player", talent = 112151 }, -- Last Stand
        { spell = 18499, type = "buff", unit = "player" }, -- Berserker Rage
        { spell = 23920, type = "buff", unit = "player", talent = 112253 }, -- Spell Reflection
        { spell = 52437, type = "buff", unit = "player", talent = 112111 }, -- Sudden Death
        { spell = 97463, type = "buff", unit = "player", talent = 112188 }, -- Rallying Cry
        { spell = 132404, type = "buff", unit = "player" }, -- Shield Block
        { spell = 190456, type = "buff", unit = "player", talent = 112149 }, -- Ignore Pain
        { spell = 202164, type = "buff", unit = "player", talent = 112219 }, -- Bounding Stride
        { spell = 202602, type = "buff", unit = "player", talent = 112175 }, -- Into the Fray
        { spell = 351077, type = "buff", unit = "player", talent = 112190 }, -- Second Wind
        { spell = 384043, type = "buff", unit = "player", talent = 112327 }, -- Unnerving Focus
        { spell = 385842, type = "buff", unit = "player", talent = 112177 }, -- Show of Force
        { spell = 386029, type = "buff", unit = "player", talent = 112150 }, -- Brace For Impact
        { spell = 386164, type = "buff", unit = "player", talent = 112112 }, -- Battle Stance
        { spell = 386208, type = "buff", unit = "player", talent = 112187 }, -- Defensive Stance
        { spell = 386486, type = "buff", unit = "player" }, -- Seeing Red
        { spell = 392778, type = "buff", unit = "player", talent = 112224 }, -- Wild Strikes
        { spell = 392966, type = "buff", unit = "player", talent = 112110 }, -- Spell Block
        { spell = 393968, type = "buff", unit = "player", talent = 112322 }, -- Juggernaut
        { spell = 394313, type = "buff", unit = "player", talent = 112113 }, -- Battering Ram
        { spell = 401150, type = "buff", unit = "player", talent = 114769 }, -- Avatar
        { spell = 435615, type = "buff", unit = "player", talent = 117382 }, -- Thunder Blast
        { spell = 437121, type = "buff", unit = "player", talent = 117404 }, -- Burst of Power
        { spell = 437152, type = "buff", unit = "player", talent = 118836 }, -- Steadfast as the Peaks
        { spell = 438591, type = "buff", unit = "player", talent = 117395 }, -- Keep Your Feet on the Ground
        { spell = 440989, type = "buff", unit = "player", talent = 117416 }, -- Colossal Might
        { spell = 147833, type = "buff", unit = "target", talent = 112186 }, -- Intervene
        { spell = 438598, type = "buff", unit = "target", talent = 118835 }, -- Storm Shield
      },
      icon = 1377132
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 355, type = "debuff", unit = "target" }, -- Taunt
        { spell = 1160, type = "debuff", unit = "target", talent = 112159 }, -- Demoralizing Shout
        { spell = 1715, type = "debuff", unit = "target" }, -- Hamstring
        { spell = 5246, type = "debuff", unit = "target", talent = 112252 }, -- Intimidating Shout
        { spell = 105771, type = "debuff", unit = "target" }, -- Charge
        { spell = 115767, type = "debuff", unit = "target" }, -- Deep Wounds
        { spell = 132168, type = "debuff", unit = "target", talent = 112242 }, -- Shockwave
        { spell = 132169, type = "debuff", unit = "target", talent = 112198 }, -- Storm Bolt
        { spell = 275335, type = "debuff", unit = "target", talent = 112323 }, -- Punish
        { spell = 376080, type = "debuff", unit = "target", talent = 112247 }, -- Champion's Spear
        { spell = 385954, type = "debuff", unit = "target", talent = 112173 }, -- Shield Charge
        { spell = 386071, type = "debuff", unit = "target", talent = 112161 }, -- Disrupting Shout
        { spell = 388539, type = "debuff", unit = "target", talent = 112156 }, -- Rend
        { spell = 397364, type = "debuff", unit = "target", talent = 112223 }, -- Thunderous Roar
        { spell = 435203, type = "debuff", unit = "target", talent = 112205 }, -- Thunder Clap
        { spell = 447513, type = "debuff", unit = "target" }, -- Wrecked
        { spell = 458480, type = "debuff", unit = "target", talent = 117386 }, -- Boneshaker
      },
      icon = 132090
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 100, type = "ability", charges = true, requiresTarget = true, usable = true }, -- Charge
        { spell = 355, type = "ability", debuff = true, requiresTarget = true }, -- Taunt
        { spell = 871, type = "ability", buff = true, requiresTarget = true, talent = 112167 }, -- Shield Wall
        { spell = 1160, type = "ability", debuff = true, talent = 112159 }, -- Demoralizing Shout
        { spell = 1161, type = "ability", talent = 112163 }, -- Challenging Shout
        { spell = 1715, type = "ability", debuff = true, requiresTarget = true }, -- Hamstring
        { spell = 2565, type = "ability", charges = true }, -- Shield Block
        { spell = 3411, type = "ability", requiresTarget = true, talent = 112186 }, -- Intervene
        { spell = 5246, type = "ability", debuff = true, requiresTarget = true, talent = 112252 }, -- Intimidating Shout
        { spell = 6343, type = "ability", overlayGlow = true, talent = 112205 }, -- Thunder Clap
        { spell = 6544, type = "ability", talent = 112208 }, -- Heroic Leap
        { spell = 6552, type = "ability", requiresTarget = true }, -- Pummel
        { spell = 6572, type = "ability", overlayGlow = true, talent = 112152 }, -- Revenge
        { spell = 6673, type = "ability", buff = true }, -- Battle Shout
        { spell = 12323, type = "ability", talent = 112210 }, -- Piercing Howl
        { spell = 12975, type = "ability", buff = true, talent = 112151 }, -- Last Stand
        { spell = 18499, type = "ability", buff = true }, -- Berserker Rage
        { spell = 23920, type = "ability", buff = true, talent = 112253 }, -- Spell Reflection
        { spell = 23922, type = "ability", overlayGlow = true, requiresTarget = true }, -- Shield Slam
        { spell = 34428, type = "ability", requiresTarget = true, usable = true }, -- Victory Rush
        { spell = 46968, type = "ability", talent = 112242 }, -- Shockwave
        { spell = 57755, type = "ability", requiresTarget = true }, -- Heroic Throw
        { spell = 64382, type = "ability", requiresTarget = true, talent = 112214 }, -- Shattering Throw
        { spell = 97462, type = "ability", talent = 112188 }, -- Rallying Cry
        { spell = 107570, type = "ability", requiresTarget = true, talent = 112198 }, -- Storm Bolt
        { spell = 163201, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Execute
        { spell = 190456, type = "ability", buff = true, talent = 112149 }, -- Ignore Pain
        { spell = 202168, type = "ability", requiresTarget = true, talent = 112183 }, -- Impending Victory
        { spell = 227847, type = "ability", talent = 119139 }, -- Bladestorm
        { spell = 228920, type = "ability", talent = 112304 }, -- Ravager
        { spell = 316593, type = "ability", debuff = true, requiresTarget = true, talent = 112252 }, -- Intimidating Shout
        { spell = 376079, type = "ability", talent = 112247 }, -- Champion's Spear
        { spell = 383762, type = "ability", requiresTarget = true, talent = 112220 }, -- Bitter Immunity
        { spell = 384100, type = "ability", talent = 112211 }, -- Berserker Shout
        { spell = 384110, type = "ability", requiresTarget = true, talent = 112215 }, -- Wrecking Throw
        { spell = 384318, type = "ability", talent = 112223 }, -- Thunderous Roar
        { spell = 385952, type = "ability", requiresTarget = true, talent = 112173 }, -- Shield Charge
        { spell = 386071, type = "ability", debuff = true, talent = 112161 }, -- Disrupting Shout
        { spell = 386164, type = "ability", buff = true, talent = 112112 }, -- Battle Stance
        { spell = 386196, type = "ability", talent = 112182 }, -- Berserker Stance
        { spell = 386208, type = "ability", buff = true, talent = 112187 }, -- Defensive Stance
        { spell = 392966, type = "ability", buff = true, talent = 112110 }, -- Spell Block
        { spell = 394062, type = "ability", requiresTarget = true, talent = 112156 }, -- Rend
        { spell = 401150, type = "ability", buff = true, talent = 114769 }, -- Avatar
        { spell = 435222, type = "ability", overlayGlow = true, herotalent = 117382 }, -- Thunder Blast
        { spell = 436358, type = "ability", overlayGlow = true, requiresTarget = true, herotalent = 117415 }, -- Demolish
      },
      icon = 134951
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = rageIcon,
    }
  }
}

templates.class.PALADIN = {
  [1] = { -- Holy
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 465, type = "buff", unit = "player" }, -- Devotion Aura
        { spell = 498, type = "buff", unit = "player" }, -- Divine Protection
        { spell = 642, type = "buff", unit = "player" }, -- Divine Shield
        { spell = 1022, type = "buff", unit = "player", talent = 102604 }, -- Blessing of Protection
        { spell = 1044, type = "buff", unit = "player", talent = 102587 }, -- Blessing of Freedom
        { spell = 5502, type = "buff", unit = "player" }, -- Sense Undead
        { spell = 31821, type = "buff", unit = "player", talent = 102548 }, -- Aura Mastery
        { spell = 31884, type = "buff", unit = "player", talent = 102593 }, -- Avenging Wrath
        { spell = 32223, type = "buff", unit = "player", talent = 102587 }, -- Crusader Aura
        { spell = 53563, type = "buff", unit = "player" }, -- Beacon of Light
        { spell = 54149, type = "buff", unit = "player" }, -- Infusion of Light
        { spell = 96231, type = "buff", unit = "player", talent = 102591 }, -- Rebuke
        { spell = 148039, type = "buff", unit = "player", talent = 102560 }, -- Barrier of Faith
        { spell = 156322, type = "buff", unit = "player", herotalent = 117692 }, -- Eternal Flame
        { spell = 188370, type = "buff", unit = "player" }, -- Consecration
        { spell = 200025, type = "buff", unit = "player", talent = 102532 }, -- Beacon of Virtue
        { spell = 200652, type = "buff", unit = "player", talent = 102573 }, -- Tyr's Deliverance
        { spell = 210294, type = "buff", unit = "player", talent = 102551 }, -- Divine Favor
        { spell = 211210, type = "buff", unit = "player", talent = 102546 }, -- Protection of Tyr
        { spell = 216331, type = "buff", unit = "player", talent = 102568 }, -- Avenging Crusader
        { spell = 223819, type = "buff", unit = "player", talent = 115489 }, -- Divine Purpose
        { spell = 317920, type = "buff", unit = "player" }, -- Concentration Aura
        { spell = 379017, type = "buff", unit = "player", talent = 102464 }, -- Faith's Armor
        { spell = 383389, type = "buff", unit = "player", talent = 102575 }, -- Relentless Inquisitor
        { spell = 385126, type = "buff", unit = "player" }, -- Blessing of Dusk
        { spell = 385127, type = "buff", unit = "player" }, -- Blessing of Dawn
        { spell = 386730, type = "buff", unit = "player", talent = 115466 }, -- Divine Resonance
        { spell = 387178, type = "buff", unit = "player", talent = 102576 }, -- Empyrean Legacy
        { spell = 387792, type = "buff", unit = "player", talent = 128255 }, -- Empyreal Ward
        { spell = 387804, type = "buff", unit = "player" }, -- Echoing Protection
        { spell = 388007, type = "buff", unit = "player", talent = 116183 }, -- Blessing of Summer
        { spell = 388010, type = "buff", unit = "player" }, -- Blessing of Autumn
        { spell = 388011, type = "buff", unit = "player" }, -- Blessing of Winter
        { spell = 388013, type = "buff", unit = "player" }, -- Blessing of Spring
        { spell = 392939, type = "buff", unit = "player", talent = 102565 }, -- Veneration
        { spell = 394454, type = "buff", unit = "player" }, -- Echoing Freedom
        { spell = 394709, type = "buff", unit = "player", talent = 102558 }, -- Unending Light
        { spell = 400745, type = "buff", unit = "player", talent = 102601 }, -- Afterimage
        { spell = 414196, type = "buff", unit = "player", talent = 116205 }, -- Awakening
        { spell = 414204, type = "buff", unit = "player", talent = 102581 }, -- Rising Sunlight
        { spell = 414444, type = "buff", unit = "player", talent = 102541 }, -- Shining Righteousness
        { spell = 431381, type = "buff", unit = "player", herotalent = 117696 }, -- Dawnlight
        { spell = 431415, type = "buff", unit = "player", herotalent = 117669 }, -- Sun Sear
        { spell = 431462, type = "buff", unit = "player", herotalent = 117777 }, -- Will of the Dawn
        { spell = 431481, type = "buff", unit = "player", herotalent = 117778 }, -- Gleaming Rays
        { spell = 431539, type = "buff", unit = "player", herotalent = 117670 }, -- Morning Star
        { spell = 432496, type = "buff", unit = "player", herotalent = 117882 }, -- Holy Bulwark
        { spell = 432502, type = "buff", unit = "player" }, -- Sacred Weapon
        { spell = 433019, type = "buff", unit = "player", herotalent = 117883 }, -- Blessed Assurance
        { spell = 439841, type = "buff", unit = "player", herotalent = 117691 }, -- Solar Grace
        { spell = 445204, type = "buff", unit = "player", herotalent = 117668 }, -- Blessing of An'she
        { spell = 447988, type = "buff", unit = "player", talent = 102540 }, -- Light of the Martyr
        { spell = 460822, type = "buff", unit = "player", herotalent = 117884 }, -- Divine Guidance
        { spell = 461499, type = "buff", unit = "player", talent = 102535 }, -- Overflowing Light
        { spell = 461578, type = "buff", unit = "player", talent = 102557 }, -- Saved by the Light
      },
      icon = 135964
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 853, type = "debuff", unit = "target" }, -- Hammer of Justice
        { spell = 62124, type = "debuff", unit = "target" }, -- Hand of Reckoning
        { spell = 105421, type = "debuff", unit = "target", talent = 102584 }, -- Blinding Light
        { spell = 196941, type = "debuff", unit = "target", talent = 102596 }, -- Judgment of Light
        { spell = 204242, type = "debuff", unit = "target" }, -- Consecration
        { spell = 414022, type = "debuff", unit = "target" }, -- Unworthy
        { spell = 431380, type = "debuff", unit = "target", herotalent = 117696 }, -- Dawnlight
      },
      icon = 135952
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 498, type = "ability", buff = true }, -- Divine Protection
        { spell = 633, type = "ability", usable = true, talent = 102583 }, -- Lay on Hands
        { spell = 642, type = "ability", buff = true, usable = true }, -- Divine Shield
        { spell = 853, type = "ability", debuff = true, requiresTarget = true }, -- Hammer of Justice
        { spell = 1022, type = "ability", buff = true, usable = true, talent = 102604 }, -- Blessing of Protection
        { spell = 1044, type = "ability", buff = true, talent = 102587 }, -- Blessing of Freedom
        { spell = 4987, type = "ability" }, -- Cleanse
        { spell = 10326, type = "ability", talent = 102623 }, -- Turn Evil
        { spell = 20066, type = "ability", talent = 102585 }, -- Repentance
        { spell = 20473, type = "ability", charges = true, overlayGlow = true, requiresTarget = true, talent = 102534 }, -- Holy Shock
        { spell = 24275, type = "ability", charges = true, overlayGlow = true, requiresTarget = true, usable = true, talent = 102479 }, -- Hammer of Wrath
        { spell = 26573, type = "ability", totem = true }, -- Consecration
        { spell = 31821, type = "ability", buff = true, talent = 102548 }, -- Aura Mastery
        { spell = 31884, type = "ability", buff = true, talent = 102593 }, -- Avenging Wrath
        { spell = 35395, type = "ability", charges = true, requiresTarget = true }, -- Crusader Strike
        { spell = 62124, type = "ability", debuff = true, requiresTarget = true }, -- Hand of Reckoning
        { spell = 96231, type = "ability", buff = true, requiresTarget = true, talent = 102591 }, -- Rebuke
        { spell = 114165, type = "ability", requiresTarget = true, talent = 102561 }, -- Holy Prism
        { spell = 115750, type = "ability", talent = 102584 }, -- Blinding Light
        { spell = 148039, type = "ability", buff = true, talent = 102560 }, -- Barrier of Faith
        { spell = 190784, type = "ability", charges = true, talent = 102625 }, -- Divine Steed
        { spell = 200025, type = "ability", buff = true, talent = 102532 }, -- Beacon of Virtue
        { spell = 200652, type = "ability", buff = true, talent = 102573 }, -- Tyr's Deliverance
        { spell = 216331, type = "ability", buff = true, talent = 102568 }, -- Avenging Crusader
        { spell = 275773, type = "ability", requiresTarget = true }, -- Judgment
        { spell = 375576, type = "ability", requiresTarget = true, talent = 102465 }, -- Divine Toll
        { spell = 388007, type = "ability", buff = true, talent = 116183 }, -- Blessing of Summer
        { spell = 388010, type = "ability", buff = true }, -- Blessing of Autumn
        { spell = 388011, type = "ability", buff = true }, -- Blessing of Winter
        { spell = 388013, type = "ability", buff = true }, -- Blessing of Spring
        { spell = 391054, type = "ability" }, -- Intercession
        { spell = 414273, type = "ability", talent = 115876 }, -- Hand of Divinity
        { spell = 415091, type = "ability" }, -- Shield of the Righteous
        { spell = 432459, type = "ability", charges = true, herotalent = 117882 }, -- Holy Bulwark
        { spell = 432472, type = "ability", charges = true }, -- Sacred Weapon

      },
      icon = 135972
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  },
  [2] = { -- Protection
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 465, type = "buff", unit = "player" }, -- Devotion Aura
        { spell = 642, type = "buff", unit = "player" }, -- Divine Shield
        { spell = 1022, type = "buff", unit = "player", talent = 102604 }, -- Blessing of Protection
        { spell = 1044, type = "buff", unit = "player", talent = 102587 }, -- Blessing of Freedom
        { spell = 5502, type = "buff", unit = "player" }, -- Sense Undead
        { spell = 31850, type = "buff", unit = "player", talent = 102445 }, -- Ardent Defender
        { spell = 31884, type = "buff", unit = "player", talent = 102611 }, -- Avenging Wrath
        { spell = 32223, type = "buff", unit = "player", talent = 102587 }, -- Crusader Aura
        { spell = 86659, type = "buff", unit = "player", talent = 102456 }, -- Guardian of Ancient Kings
        { spell = 96231, type = "buff", unit = "player", talent = 102591 }, -- Rebuke
        { spell = 132403, type = "buff", unit = "player" }, -- Shield of the Righteous
        { spell = 182104, type = "buff", unit = "player", talent = 102467 }, -- Shining Light
        { spell = 188370, type = "buff", unit = "player" }, -- Consecration
        { spell = 204018, type = "buff", unit = "player", talent = 111886 }, -- Blessing of Spellwarding
        { spell = 209388, type = "buff", unit = "player", talent = 102468 }, -- Bulwark of Order
        { spell = 223819, type = "buff", unit = "player", talent = 115490 }, -- Divine Purpose
        { spell = 280375, type = "buff", unit = "player", talent = 102462 }, -- Redoubt
        { spell = 317920, type = "buff", unit = "player" }, -- Concentration Aura
        { spell = 327193, type = "buff", unit = "player", talent = 102474 }, -- Moment of Glory
        { spell = 378412, type = "buff", unit = "player", talent = 102472 }, -- Light of the Titans
        { spell = 378974, type = "buff", unit = "player", talent = 102454 }, -- Bastion of Light
        { spell = 379017, type = "buff", unit = "player", talent = 102464 }, -- Faith's Armor
        { spell = 379041, type = "buff", unit = "player", talent = 102450 }, -- Faith in the Light
        { spell = 383389, type = "buff", unit = "player", talent = 102475 }, -- Relentless Inquisitor
        { spell = 385126, type = "buff", unit = "player" }, -- Blessing of Dusk
        { spell = 385127, type = "buff", unit = "player" }, -- Blessing of Dawn
        { spell = 385724, type = "buff", unit = "player", talent = 102470 }, -- Barricade of Faith
        { spell = 386556, type = "buff", unit = "player", talent = 102463 }, -- Inner Light
        { spell = 386652, type = "buff", unit = "player", talent = 102457 }, -- Bulwark of Righteous Fury
        { spell = 386730, type = "buff", unit = "player", talent = 102443 }, -- Divine Resonance
        { spell = 387792, type = "buff", unit = "player", talent = 128255 }, -- Empyreal Ward
        { spell = 389539, type = "buff", unit = "player", talent = 102447 }, -- Sentinel
        { spell = 393019, type = "buff", unit = "player", talent = 102439 }, -- Inspiring Vanguard
        { spell = 393038, type = "buff", unit = "player", talent = 102461 }, -- Strength in Adversity
        { spell = 400745, type = "buff", unit = "player", talent = 115480 }, -- Afterimage
        { spell = 431536, type = "buff", unit = "player", herotalent = 117823 }, -- Shake the Heavens
        { spell = 432496, type = "buff", unit = "player", herotalent = 117882 }, -- Holy Bulwark
        { spell = 432502, type = "buff", unit = "player" }, -- Sacred Weapon
        { spell = 432629, type = "buff", unit = "player", herotalent = 117822 }, -- Undisputed Ruling
        { spell = 433019, type = "buff", unit = "player", herotalent = 117883 }, -- Blessed Assurance
        { spell = 433550, type = "buff", unit = "player", herotalent = 117881 }, -- Rite of Sanctification
        { spell = 433584, type = "buff", unit = "player", herotalent = 117880 }, -- Rite of Adjuration
        { spell = 433618, type = "buff", unit = "player", herotalent = 117859 }, -- For Whom the Bell Tolls
        { spell = 433671, type = "buff", unit = "player", herotalent = 117819 }, -- Sanctification
        { spell = 433674, type = "buff", unit = "player", herotalent = 117815 }, -- Light's Deliverance
        { spell = 447988, type = "buff", unit = "player", talent = 102540 }, -- Light of the Martyr
        { spell = 452244, type = "buff", unit = "player", herotalent = 117820 }, -- Endless Wrath
        { spell = 453804, type = "buff", unit = "player", talent = 102625 }, -- Divine Steed
        { spell = 460822, type = "buff", unit = "player", herotalent = 117884 }, -- Divine Guidance
        { spell = 461867, type = "buff", unit = "player", herotalent = 117812 }, -- Sacrosanct Crusade
      },
      icon = 236265
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 853, type = "debuff", unit = "target" }, -- Hammer of Justice
        { spell = 31935, type = "debuff", unit = "target", talent = 102471 }, -- Avenger's Shield
        { spell = 62124, type = "debuff", unit = "target" }, -- Hand of Reckoning
        { spell = 105421, type = "debuff", unit = "target", talent = 102584 }, -- Blinding Light
        { spell = 196941, type = "debuff", unit = "target", talent = 102596 }, -- Judgment of Light
        { spell = 197277, type = "debuff", unit = "target" }, -- Judgment
        { spell = 204079, type = "debuff", unit = "target", talent = 102473 }, -- Final Stand
        { spell = 204242, type = "debuff", unit = "target" }, -- Consecration
        { spell = 204301, type = "debuff", unit = "target", talent = 102430 }, -- Blessed Hammer
        { spell = 383843, type = "debuff", unit = "target", talent = 102460 }, -- Crusader's Resolve
        { spell = 387174, type = "debuff", unit = "target", talent = 102466 }, -- Eye of Tyr
        { spell = 431625, type = "debuff", unit = "target" }, -- Empyrean Hammer
        { spell = 469882, type = "debuff", unit = "target", talent = 102459 }, -- Refining Fire
      },
      icon = 135952
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 633, type = "ability", usable = true, talent = 102583 }, -- Lay on Hands
        { spell = 642, type = "ability", buff = true, usable = true }, -- Divine Shield
        { spell = 853, type = "ability", debuff = true, requiresTarget = true }, -- Hammer of Justice
        { spell = 1022, type = "ability", buff = true, usable = true, talent = 102604 }, -- Blessing of Protection
        { spell = 1044, type = "ability", buff = true, talent = 102587 }, -- Blessing of Freedom
        { spell = 10326, type = "ability", talent = 102623 }, -- Turn Evil
        { spell = 20066, type = "ability", talent = 102585 }, -- Repentance
        { spell = 24275, type = "ability", overlayGlow = true, requiresTarget = true, usable = true, talent = 102479 }, -- Hammer of Wrath
        { spell = 26573, type = "ability", totem = true }, -- Consecration
        { spell = 31850, type = "ability", buff = true, talent = 102445 }, -- Ardent Defender
        { spell = 31884, type = "ability", buff = true, talent = 102611 }, -- Avenging Wrath
        { spell = 31935, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true, talent = 102471 }, -- Avenger's Shield
        { spell = 53595, type = "ability", charges = true, requiresTarget = true, talent = 102431 }, -- Hammer of the Righteous
        { spell = 53600, type = "ability" }, -- Shield of the Righteous
        { spell = 62124, type = "ability", debuff = true, requiresTarget = true }, -- Hand of Reckoning
        { spell = 86659, type = "ability", buff = true, talent = 102456 }, -- Guardian of Ancient Kings
        { spell = 96231, type = "ability", buff = true, requiresTarget = true, talent = 102591 }, -- Rebuke
        { spell = 115750, type = "ability", debuff = true, talent = 102584 }, -- Blinding Light
        { spell = 190784, type = "ability", charges = true, buff = true, talent = 102625 }, -- Divine Steed
        { spell = 204018, type = "ability", buff = true, usable = true, talent = 111886 }, -- Blessing of Spellwarding
        { spell = 204019, type = "ability", charges = true, talent = 102430 }, -- Blessed Hammer
        { spell = 275779, type = "ability", charges = true, requiresTarget = true }, -- Judgment
        { spell = 327193, type = "ability", buff = true, talent = 102474 }, -- Moment of Glory
        { spell = 375576, type = "ability", requiresTarget = true, talent = 102465 }, -- Divine Toll
        { spell = 378974, type = "ability", buff = true, talent = 102454 }, -- Bastion of Light
        { spell = 387174, type = "ability", debuff = true, talent = 102466 }, -- Eye of Tyr
        { spell = 389539, type = "ability", buff = true, talent = 102447 }, -- Sentinel
        { spell = 391054, type = "ability" }, -- Intercession
        { spell = 432459, type = "ability", charges = true, herotalent = 117882 }, -- Holy Bulwark
        { spell = 432472, type = "ability", charges = true }, -- Sacred Weapon
      },
      icon = 135874
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  },
  [3] = { -- Retribution
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 465, type = "buff", unit = "player" }, -- Devotion Aura
        { spell = 642, type = "buff", unit = "player" }, -- Divine Shield
        { spell = 1022, type = "buff", unit = "player", talent = 102604 }, -- Blessing of Protection
        { spell = 1044, type = "buff", unit = "player", talent = 102587 }, -- Blessing of Freedom
        { spell = 5502, type = "buff", unit = "player" }, -- Sense Undead
        { spell = 20271, type = "buff", unit = "player" }, -- Judgment
        { spell = 31884, type = "buff", unit = "player", talent = 102593 }, -- Avenging Wrath
        { spell = 32223, type = "buff", unit = "player", talent = 102587 }, -- Crusader Aura
        { spell = 96231, type = "buff", unit = "player", talent = 102591 }, -- Rebuke
        { spell = 156322, type = "buff", unit = "player", herotalent = 117692 }, -- Eternal Flame
        { spell = 184662, type = "buff", unit = "player", talent = 125130 }, -- Shield of Vengeance
        { spell = 188370, type = "buff", unit = "player" }, -- Consecration
        { spell = 317920, type = "buff", unit = "player" }, -- Concentration Aura
        { spell = 326733, type = "buff", unit = "player", talent = 115051 }, -- Empyrean Power
        { spell = 379017, type = "buff", unit = "player", talent = 102464 }, -- Faith's Armor
        { spell = 383329, type = "buff", unit = "player", talent = 102504 }, -- Final Verdict
        { spell = 384029, type = "buff", unit = "player", talent = 115468 }, -- Divine Resonance
        { spell = 385126, type = "buff", unit = "player" }, -- Blessing of Dusk
        { spell = 385127, type = "buff", unit = "player" }, -- Blessing of Dawn
        { spell = 387178, type = "buff", unit = "player", talent = 115453 }, -- Empyrean Legacy
        { spell = 387792, type = "buff", unit = "player", talent = 128255 }, -- Empyreal Ward
        { spell = 400745, type = "buff", unit = "player", talent = 115482 }, -- Afterimage
        { spell = 403876, type = "buff", unit = "player" }, -- Divine Protection
        { spell = 403976, type = "buff", unit = "player", talent = 115164 }, -- Inquisitor's Ire
        { spell = 406975, type = "buff", unit = "player", talent = 102514 }, -- Divine Arbiter
        { spell = 407065, type = "buff", unit = "player", talent = 115475 }, -- Rush of Light
        { spell = 408458, type = "buff", unit = "player", talent = 102608 }, -- Divine Purpose
        { spell = 431381, type = "buff", unit = "player", herotalent = 117696 }, -- Dawnlight
        { spell = 431462, type = "buff", unit = "player", herotalent = 117777 }, -- Will of the Dawn
        { spell = 431481, type = "buff", unit = "player", herotalent = 117778 }, -- Gleaming Rays
        { spell = 431539, type = "buff", unit = "player", herotalent = 117670 }, -- Morning Star
        { spell = 433618, type = "buff", unit = "player", herotalent = 117859 }, -- For Whom the Bell Tolls
        { spell = 433671, type = "buff", unit = "player", herotalent = 117819 }, -- Sanctification
        { spell = 433674, type = "buff", unit = "player", herotalent = 117815 }, -- Light's Deliverance
        { spell = 439841, type = "buff", unit = "player", herotalent = 117691 }, -- Solar Grace
        { spell = 445206, type = "buff", unit = "player", herotalent = 117668 }, -- Blessing of An'she
        { spell = 452244, type = "buff", unit = "player", herotalent = 117820 }, -- Endless Wrath
        { spell = 453433, type = "buff", unit = "player", talent = 115477 }, -- Judge, Jury and Executioner
        { spell = 453804, type = "buff", unit = "player", talent = 102625 }, -- Divine Steed
        { spell = 454373, type = "buff", unit = "player", talent = 125129 }, -- Crusade
        { spell = 461867, type = "buff", unit = "player", herotalent = 117812 }, -- Sacrosanct Crusade
      },
      icon = 135993
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 853, type = "debuff", unit = "target" }, -- Hammer of Justice
        { spell = 62124, type = "debuff", unit = "target" }, -- Hand of Reckoning
        { spell = 105421, type = "debuff", unit = "target", talent = 102584 }, -- Blinding Light
        { spell = 196941, type = "debuff", unit = "target", talent = 102596 }, -- Judgment of Light
        { spell = 197277, type = "debuff", unit = "target" }, -- Judgment
        { spell = 198137, type = "debuff", unit = "target", talent = 115016 }, -- Divine Hammer
        { spell = 204242, type = "debuff", unit = "target" }, -- Consecration
        { spell = 343527, type = "debuff", unit = "target", talent = 115435 }, -- Execution Sentence
        { spell = 343721, type = "debuff", unit = "target", talent = 102513 }, -- Final Reckoning
        { spell = 383346, type = "debuff", unit = "target", talent = 114830 }, -- Expurgation
        { spell = 403695, type = "debuff", unit = "target" }, -- Truth's Wake
        { spell = 408383, type = "debuff", unit = "target", talent = 115440 }, -- Judgment of Justice
        { spell = 431380, type = "debuff", unit = "target", herotalent = 117696 }, -- Dawnlight
        { spell = 431414, type = "debuff", unit = "target", herotalent = 117669 }, -- Sun Sear
        { spell = 431625, type = "debuff", unit = "target" }, -- Empyrean Hammer
        { spell = 447142, type = "debuff", unit = "target" }, -- Templar Slash
      },
      icon = 135952
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 633, type = "ability", usable = true, talent = 102583 }, -- Lay on Hands
        { spell = 642, type = "ability", buff = true, usable = true }, -- Divine Shield
        { spell = 853, type = "ability", debuff = true, requiresTarget = true }, -- Hammer of Justice
        { spell = 1022, type = "ability", buff = true, usable = true, talent = 102604 }, -- Blessing of Protection
        { spell = 1044, type = "ability", buff = true, talent = 102587 }, -- Blessing of Freedom
        { spell = 10326, type = "ability", debuff = true, talent = 102623 }, -- Turn Evil
        { spell = 20066, type = "ability", debuff = true, talent = 102585 }, -- Repentance
        { spell = 20271, type = "ability", charges = true, debuff = true, requiresTarget = true }, -- Judgment
        { spell = 24275, type = "ability", charges = true, overlayGlow = true, requiresTarget = true, usable = true, talent = 102479 }, -- Hammer of Wrath
        { spell = 31884, type = "ability", buff = true, talent = 102593 }, -- Avenging Wrath
        { spell = 35395, type = "ability", charges = true, requiresTarget = true }, -- Crusader Strike
        { spell = 62124, type = "ability", debuff = true, requiresTarget = true }, -- Hand of Reckoning
        { spell = 96231, type = "ability", buff = true, requiresTarget = true, talent = 102591 }, -- Rebuke
        { spell = 115750, type = "ability", debuff = true, talent = 102584 }, -- Blinding Light
        { spell = 184575, type = "ability", charges = true, overlayGlow = true, requiresTarget = true, usable = true, talent = 102498 }, -- Blade of Justice
        { spell = 184662, type = "ability", buff = true, talent = 125130 }, -- Shield of Vengeance
        { spell = 190784, type = "ability", charges = true, buff = true, talent = 102625 }, -- Divine Steed
        { spell = 198034, type = "ability", talent = 115016 }, -- Divine Hammer
        { spell = 215661, type = "ability", requiresTarget = true, talent = 114831 }, -- Justicar's Vengeance
        { spell = 255937, type = "ability", requiresTarget = true, talent = 102497 }, -- Wake of Ashes
        { spell = 343527, type = "ability", debuff = true, requiresTarget = true, talent = 115435 }, -- Execution Sentence
        { spell = 343721, type = "ability", debuff = true, talent = 102513 }, -- Final Reckoning
        { spell = 375576, type = "ability", requiresTarget = true, talent = 102465 }, -- Divine Toll
        { spell = 383328, type = "ability", overlayGlow = true, requiresTarget = true, usable = true, talent = 102504 }, -- Final Verdict
        { spell = 391054, type = "ability" }, -- Intercession
        { spell = 403876, type = "ability", buff = true }, -- Divine Protection
        { spell = 407480, type = "ability", overlayGlow = true, requiresTarget = true }, -- Templar Strike
      },
      icon = 135891
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\Icons\\achievement_bg_winsoa",
    },
  },
}

templates.class.HUNTER = {
  [1] = { -- Beast Master
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 5384, type = "buff", unit = "player" }, -- Feign Death
        { spell = 6197, type = "buff", unit = "player" }, -- Eagle Eye
        { spell = 19574, type = "buff", unit = "player", talent = 126402 }, -- Bestial Wrath
        { spell = 34477, type = "buff", unit = "player", talent = 126484 }, -- Misdirection
        { spell = 53480, type = "buff", unit = "player", talent = 126469 }, -- Roar of Sacrifice
        { spell = 59976, type = "buff", unit = "player" }, -- Black Proto-Drake
        { spell = 118922, type = "buff", unit = "player", talent = 126475 }, -- Posthaste
        { spell = 186257, type = "buff", unit = "player" }, -- Aspect of the Cheetah
        { spell = 186265, type = "buff", unit = "player" }, -- Aspect of the Turtle
        { spell = 199483, type = "buff", unit = "player", talent = 126478 }, -- Camouflage
        { spell = 231390, type = "buff", unit = "player", talent = 126464 }, -- Trailblazer
        { spell = 246152, type = "buff", unit = "player", talent = 126440 }, -- Barbed Shot
        { spell = 257946, type = "buff", unit = "player", talent = 126407 }, -- Thrill of the Hunt
        { spell = 264656, type = "buff", unit = "player", talent = 126468 }, -- Pathfinding
        { spell = 264663, type = "buff", unit = "player" }, -- Predator's Thirst
        { spell = 264667, type = "buff", unit = "player" }, -- Primal Rage
        { spell = 264735, type = "buff", unit = "player", talent = 126488 }, -- Survival of the Fittest
        { spell = 268877, type = "buff", unit = "player", talent = 126403 }, -- Beast Cleave
        { spell = 281036, type = "buff", unit = "player", talent = 126439 }, -- Dire Beast
        { spell = 359844, type = "buff", unit = "player", talent = 126397 }, -- Call of the Wild
        { spell = 378770, type = "buff", unit = "player", talent = 126474 }, -- Deathblow
        { spell = 385540, type = "buff", unit = "player", talent = 126444 }, -- Rejuvenating Wind
        { spell = 457072, type = "buff", unit = "player" }, -- Harmonize
        { spell = 459468, type = "buff", unit = "player", talent = 126448 }, -- Ghillie Suit
        { spell = 459731, type = "buff", unit = "player", talent = 126411 }, -- Huntmaster's Call
        { spell = 459735, type = "buff", unit = "player" }, -- Summon Fenryr
        { spell = 459759, type = "buff", unit = "player", talent = 126414 }, -- A Murder of Crows
        { spell = 468703, type = "buff", unit = "player" }, -- Serpentine Ryhthm
        { spell = 468704, type = "buff", unit = "player" }, -- Serpentine Blessing
        { spell = 466991, type = "buff", unit = "player", herotalent = 117590 }, -- Withering Fire
        { spell = 471877, type = "buff", unit = "player", herotalent = 117588 }, -- Howl of the Pack Leader
        { spell = 471881, type = "buff", unit = "player" }, -- Wyvern's Cry
        { spell = 472640, type = "buff", unit = "player", herotalent = 117585 }, -- Hogstrider
        { spell = 472708, type = "buff", unit = "player", herotalent = 117564 }, -- Shell Cover
        { spell = 472743, type = "buff", unit = "player", herotalent = 117563 }, -- Lead From the Front
        { spell = 136, type = "buff", unit = "pet" }, -- Mend Pet
        { spell = 61684, type = "buff", unit = "pet" }, -- Dash
        { spell = 272790, type = "buff", unit = "pet" }, -- Frenzy
        { spell = 392054, type = "buff", unit = "pet", talent = 126434 }, -- Piercing Fangs
        { spell = 459547, type = "buff", unit = "pet", talent = 126476 }, -- No Hard Feelings
        { spell = 459722, type = "buff", unit = "pet" }, -- Mastery: Spirit Bond
      },
      icon = 132242
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 2649, type = "debuff", unit = "target" }, -- Growl
        { spell = 3355, type = "debuff", unit = "target" }, -- Freezing Trap
        { spell = 5116, type = "debuff", unit = "target", talent = 126471 }, -- Concussive Shot
        { spell = 24394, type = "debuff", unit = "target", talent = 126461 }, -- Intimidation
        { spell = 117405, type = "debuff", unit = "target", talent = 126449 }, -- Binding Shot
        { spell = 131894, type = "debuff", unit = "target", talent = 126414 }, -- A Murder of Crows
        { spell = 135299, type = "debuff", unit = "target", talent = 126457 }, -- Tar Trap
        { spell = 186387, type = "debuff", unit = "target", talent = 126487 }, -- Bursting Shot
        { spell = 195645, type = "debuff", unit = "target" }, -- Wing Clip
        { spell = 212431, type = "debuff", unit = "target", talent = 126485 }, -- Explosive Shot
        { spell = 213691, type = "debuff", unit = "target", talent = 126486 }, -- Scatter Shot
        { spell = 217200, type = "debuff", unit = "target", talent = 126440 }, -- Barbed Shot
        { spell = 236777, type = "debuff", unit = "target", talent = 126830 }, -- High Explosive Trap
        { spell = 257284, type = "debuff", unit = "target" }, -- Hunter's Mark
        { spell = 271788, type = "debuff", unit = "target" }, -- Serpent Sting
        { spell = 321469, type = "debuff", unit = "target", talent = 126451 }, -- Binding Shackles
        { spell = 321538, type = "debuff", unit = "target", talent = 126424 }, -- Bloodshed
        { spell = 393456, type = "debuff", unit = "target", talent = 126467 }, -- Entrapment
        { spell = 424567, type = "debuff", unit = "target", talent = 126401 }, -- Wild Instincts
        { spell = 430703, type = "debuff", unit = "target", herotalent = 117584 }, -- Black Arrow
        { spell = 442396, type = "debuff", unit = "target", herotalent = 117557 }, -- Dark Chains
        { spell = 459560, type = "debuff", unit = "target", talent = 126432 }, -- Laceration
        { spell = 459668, type = "debuff", unit = "target", talent = 126429 }, -- Venomous Bite
        { spell = 459753, type = "debuff", unit = "target" }, -- Ravenous Leap
        { spell = 462033, type = "debuff", unit = "target", talent = 126829 }, -- Implosive Trap
        { spell = 467745, type = "debuff", unit = "target", herotalent = 128219 }, -- Shadow Dagger
      },
      icon = 135860
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 75, type = "ability", requiresTarget = true }, -- Auto Shot
        { spell = 781, type = "ability" }, -- Disengage
        { spell = 1543, type = "ability" }, -- Flare
        { spell = 2643, type = "ability", requiresTarget = true, usable = true, talent = 126425 }, -- Multi-Shot
        { spell = 2649, type = "ability", debuff = true, requiresTarget = true }, -- Growl
        { spell = 5116, type = "ability", debuff = true, requiresTarget = true, talent = 126471 }, -- Concussive Shot
        { spell = 5384, type = "ability", buff = true, usable = true }, -- Feign Death
        { spell = 17253, type = "ability", requiresTarget = true }, -- Bite
        { spell = 19574, type = "ability", buff = true, talent = 126402 }, -- Bestial Wrath
        { spell = 19577, type = "ability", usable = true, talent = 126461 }, -- Intimidation
        { spell = 19801, type = "ability", requiresTarget = true, usable = true, talent = 126443 }, -- Tranquilizing Shot
        { spell = 34026, type = "ability", charges = true, usable = true, talent = 126408 }, -- Kill Command
        { spell = 34477, type = "ability", buff = true, talent = 126484 }, -- Misdirection
        { spell = 53351, type = "ability", overlayGlow = true, requiresTarget = true, usable = true, talent = 126441 }, -- Kill Shot
        { spell = 53480, type = "ability", buff = true, talent = 126469 }, -- Roar of Sacrifice
        { spell = 56641, type = "ability", requiresTarget = true, usable = true }, -- Steady Shot
        { spell = 61684, type = "ability", buff = true, unit = 'pet' }, -- Dash
        { spell = 109248, type = "ability", talent = 126449 }, -- Binding Shot
        { spell = 109304, type = "ability" }, -- Exhilaration
        { spell = 120360, type = "ability", usable = true, talent = 126396 }, -- Barrage
        { spell = 120679, type = "ability", talent = 126439 }, -- Dire Beast
        { spell = 147362, type = "ability", requiresTarget = true, usable = true, talent = 126352 }, -- Counter Shot
        { spell = 186257, type = "ability", buff = true }, -- Aspect of the Cheetah
        { spell = 186265, type = "ability", buff = true }, -- Aspect of the Turtle
        { spell = 186387, type = "ability", debuff = true, talent = 126487 }, -- Bursting Shot
        { spell = 187650, type = "ability" }, -- Freezing Trap
        { spell = 187698, type = "ability", talent = 126457 }, -- Tar Trap
        { spell = 193455, type = "ability", requiresTarget = true, usable = true, talent = 126416 }, -- Cobra Shot
        { spell = 195645, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Wing Clip
        { spell = 199483, type = "ability", buff = true, usable = true, talent = 126478 }, -- Camouflage
        { spell = 212431, type = "ability", debuff = true, requiresTarget = true, talent = 126485 }, -- Explosive Shot
        { spell = 213691, type = "ability", debuff = true, talent = 126486 }, -- Scatter Shot
        { spell = 217200, type = "ability", charges = true, debuff = true, overlayGlow = true, requiresTarget = true, usable = true, talent = 126440 }, -- Barbed Shot
        { spell = 236776, type = "ability", talent = 126830 }, -- High Explosive Trap
        { spell = 257284, type = "ability", debuff = true }, -- Hunter's Mark
        { spell = 264667, type = "ability", buff = true }, -- Primal Rage
        { spell = 264735, type = "ability", charges = true, buff = true, talent = 126488 }, -- Survival of the Fittest
        { spell = 272678, type = "ability" }, -- Primal Rage
        { spell = 321530, type = "ability", talent = 126424 }, -- Bloodshed
        { spell = 359844, type = "ability", buff = true, requiresTarget = true, talent = 126397 }, -- Call of the Wild
        { spell = 430703, type = "ability", debuff = true, requiresTarget = true, usable = true, herotalent = 117584 }, -- Black Arrow
        { spell = 462031, type = "ability", talent = 126829 }, -- Implosive Trap
      },
      icon = 135130
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\Icons\\ability_hunter_focusfire",
    },
  },
  [2] = { -- Marksmanship
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 5384, type = "buff", unit = "player" }, -- Feign Death
        { spell = 6197, type = "buff", unit = "player" }, -- Eagle Eye
        { spell = 118922, type = "buff", unit = "player", talent = 126475 }, -- Posthaste
        { spell = 186257, type = "buff", unit = "player" }, -- Aspect of the Cheetah
        { spell = 186265, type = "buff", unit = "player" }, -- Aspect of the Turtle
        { spell = 194594, type = "buff", unit = "player", talent = 126384 }, -- Lock and Load
        { spell = 199483, type = "buff", unit = "player", talent = 126478 }, -- Camouflage
        { spell = 202748, type = "buff", unit = "player" }, -- Survival Tactics
        { spell = 204090, type = "buff", unit = "player", talent = 126358 }, -- Bullseye
        { spell = 231390, type = "buff", unit = "player", talent = 126464 }, -- Trailblazer
        { spell = 257622, type = "buff", unit = "player", talent = 126369 }, -- Trick Shots
        { spell = 260242, type = "buff", unit = "player", talent = 126354 }, -- Precise Shots
        { spell = 260243, type = "buff", unit = "player", talent = 128376 }, -- Volley
        { spell = 260402, type = "buff", unit = "player", talent = 128373 }, -- Double Tap
        { spell = 264663, type = "buff", unit = "player" }, -- Predator's Thirst
        { spell = 264735, type = "buff", unit = "player", talent = 126488 }, -- Survival of the Fittest
        { spell = 288613, type = "buff", unit = "player", talent = 126364 }, -- Trueshot
        { spell = 342076, type = "buff", unit = "player", talent = 128405 }, -- Streamline
        { spell = 378770, type = "buff", unit = "player", talent = 126365 }, -- Deathblow
        { spell = 386877, type = "buff", unit = "player", talent = 126372 }, -- Unerring Vision
        { spell = 388998, type = "buff", unit = "player", talent = 126382 }, -- Razor Fragments
        { spell = 389020, type = "buff", unit = "player", talent = 126363 }, -- Bulletstorm
        { spell = 392956, type = "buff", unit = "player" }, -- Fortitude of the Bear
        { spell = 407405, type = "buff", unit = "player", talent = 126379 }, -- In the Rhythm
        { spell = 451180, type = "buff", unit = "player", herotalent = 123871 }, -- Eyes Closed
        { spell = 451447, type = "buff", unit = "player", herotalent = 117586 }, -- Don't Look Back
        { spell = 459468, type = "buff", unit = "player", talent = 126448 }, -- Ghillie Suit
        { spell = 459919, type = "buff", unit = "player", talent = 126370 }, -- Kill Zone
        { spell = 466991, type = "buff", unit = "player", herotalent = 117590 }, -- Withering Fire
        { spell = 378770, type = "buff", unit = "player", talent = 126474 }, -- Deathblow
        { spell = 474257, type = "buff", unit = "player", talent = 128714 }, -- On Target
        { spell = 474293, type = "buff", unit = "player", talent = 128402 }, -- Moving Target
        { spell = 264663, type = "buff", unit = "pet" }, -- Predator's Thirst
        { spell = 459722, type = "buff", unit = "pet" }, -- Mastery: Spirit Bond
      },
      icon = 461846
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 3355, type = "debuff", unit = "target" }, -- Freezing Trap
        { spell = 5116, type = "debuff", unit = "target", talent = 126471 }, -- Concussive Shot
        { spell = 24394, type = "debuff", unit = "target", talent = 126461 }, -- Intimidation
        { spell = 135299, type = "debuff", unit = "target", talent = 126457 }, -- Tar Trap
        { spell = 186387, type = "debuff", unit = "target", talent = 126487 }, -- Bursting Shot
        { spell = 195645, type = "debuff", unit = "target" }, -- Wing Clip
        { spell = 212431, type = "debuff", unit = "target", talent = 126485 }, -- Explosive Shot
        { spell = 213691, type = "debuff", unit = "target", talent = 126486 }, -- Scatter Shot
        { spell = 236777, type = "debuff", unit = "target", talent = 126830 }, -- High Explosive Trap
        { spell = 257044, type = "debuff", unit = "target", talent = 126378 }, -- Rapid Fire
        { spell = 257284, type = "debuff", unit = "target" }, -- Hunter's Mark
        { spell = 269576, type = "debuff", unit = "target", talent = 126356 }, -- Master Marksman
        { spell = 271788, type = "debuff", unit = "target" }, -- Serpent Sting
        { spell = 321469, type = "debuff", unit = "target", talent = 126451 }, -- Binding Shackles
        { spell = 385638, type = "debuff", unit = "target", talent = 126382 }, -- Razor Fragments
        { spell = 393456, type = "debuff", unit = "target", talent = 126467 }, -- Entrapment
        { spell = 393480, type = "debuff", unit = "target", talent = 126370 }, -- Kill Zone
        { spell = 430703, type = "debuff", unit = "target", herotalent = 117584 }, -- Black Arrow
        { spell = 450387, type = "debuff", unit = "target", herotalent = 117573 }, -- Sentinel
        { spell = 450845, type = "debuff", unit = "target", herotalent = 123869 }, -- Sideline
        { spell = 450884, type = "debuff", unit = "target", herotalent = 117575 }, -- Lunar Storm
        { spell = 451531, type = "debuff", unit = "target", herotalent = 123870 }, -- Crescent Steel
        { spell = 462033, type = "debuff", unit = "target", talent = 126829 }, -- Implosive Trap
        { spell = 467745, type = "debuff", unit = "target", herotalent = 128219 }, -- Shadow Dagger
      },
      icon = 236188
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 781, type = "ability" }, -- Disengage
        { spell = 1543, type = "ability" }, -- Flare
        { spell = 5116, type = "ability", talent = 126471 }, -- Concussive Shot
        { spell = 5384, type = "ability", buff = true, usable = true }, -- Feign Death
        { spell = 19434, type = "ability", charges = true, overlayGlow = true, usable = true, talent = 126357 }, -- Aimed Shot
        { spell = 19577, type = "ability", usable = true, talent = 126461 }, -- Intimidation
        { spell = 19801, type = "ability", usable = true, talent = 126443 }, -- Tranquilizing Shot
        { spell = 34477, type = "ability", talent = 126484 }, -- Misdirection
        { spell = 53351, type = "ability", overlayGlow = true, usable = true, talent = 126463 }, -- Kill Shot
        { spell = 53480, type = "ability", talent = 126469 }, -- Roar of Sacrifice
        { spell = 109248, type = "ability", talent = 126449 }, -- Binding Shot
        { spell = 109304, type = "ability" }, -- Exhilaration
        { spell = 147362, type = "ability", usable = true, talent = 126466 }, -- Counter Shot
        { spell = 185358, type = "ability", charges = true, usable = true }, -- Arcane Shot
        { spell = 186257, type = "ability", buff = true }, -- Aspect of the Cheetah
        { spell = 186265, type = "ability", buff = true }, -- Aspect of the Turtle
        { spell = 186387, type = "ability", debuff = true, talent = 126487 }, -- Bursting Shot
        { spell = 187650, type = "ability" }, -- Freezing Trap
        { spell = 187698, type = "ability", talent = 126457 }, -- Tar Trap
        { spell = 195645, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Wing Clip
        { spell = 199483, type = "ability", buff = true, usable = true, talent = 126478 }, -- Camouflage
        { spell = 212431, type = "ability", debuff = true, usable = true, talent = 126485 }, -- Explosive Shot
        { spell = 213691, type = "ability", debuff = true, talent = 126486 }, -- Scatter Shot
        { spell = 236776, type = "ability", talent = 126830 }, -- High Explosive Trap
        { spell = 257044, type = "ability", debuff = true, usable = true, talent = 126378 }, -- Rapid Fire
        { spell = 257284, type = "ability", debuff = true }, -- Hunter's Mark
        { spell = 257620, type = "ability", charges = true, usable = true }, -- Multi-Shot
        { spell = 260243, type = "ability", buff = true, talent = 126377 }, -- Volley
        { spell = 264735, type = "ability", charges = true, buff = true, talent = 126488 }, -- Survival of the Fittest
        { spell = 288613, type = "ability", buff = true, talent = 126364 }, -- Trueshot
        { spell = 342049, type = "ability", charges = true, talent = 126383 }, -- Chimaera Shot
        { spell = 392956, type = "ability", buff = true }, -- Fortitude of the Bear
        { spell = 430703, type = "ability", debuff = true, usable = true, herotalent = 117584 }, -- Black Arrow
        { spell = 459796, type = "ability", debuff = true, talent = 126392 }, -- Barrage
        { spell = 462031, type = "ability", talent = 126829 }, -- Implosive Trap
      },
      icon = 132329
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\Icons\\ability_hunter_focusfire",
    },
  },
  [3] = { -- Survival
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 5384, type = "buff", unit = "player" }, -- Feign Death
        { spell = 6197, type = "buff", unit = "player" }, -- Eagle Eye
        { spell = 34477, type = "buff", unit = "player", talent = 126484 }, -- Misdirection
        { spell = 53480, type = "buff", unit = "player", talent = 126469 }, -- Roar of Sacrifice
        { spell = 118922, type = "buff", unit = "player", talent = 126475 }, -- Posthaste
        { spell = 186257, type = "buff", unit = "player" }, -- Aspect of the Cheetah
        { spell = 186265, type = "buff", unit = "player" }, -- Aspect of the Turtle
        { spell = 186289, type = "buff", unit = "player" }, -- Aspect of the Eagle
        { spell = 199483, type = "buff", unit = "player", talent = 126478 }, -- Camouflage
        { spell = 231390, type = "buff", unit = "player", talent = 126464 }, -- Trailblazer
        { spell = 259388, type = "buff", unit = "player" }, -- Mongoose Fury
        { spell = 260249, type = "buff", unit = "player", talent = 126330 }, -- Bloodseeker
        { spell = 260286, type = "buff", unit = "player", talent = 126323 }, -- Tip of the Spear
        { spell = 264663, type = "buff", unit = "player" }, -- Predator's Thirst
        { spell = 264735, type = "buff", unit = "player", talent = 126488 }, -- Survival of the Fittest
        { spell = 265898, type = "buff", unit = "player", talent = 126315 }, -- Terms of Engagement
        { spell = 360952, type = "buff", unit = "player", talent = 126311 }, -- Coordinated Assault
        { spell = 451180, type = "buff", unit = "player", herotalent = 123871 }, -- Eyes Closed
        { spell = 451447, type = "buff", unit = "player", herotalent = 117586 }, -- Don't Look Back
        { spell = 459468, type = "buff", unit = "player", talent = 126448 }, -- Ghillie Suit
        { spell = 459722, type = "buff", unit = "player" }, -- Mastery: Spirit Bond
        { spell = 459830, type = "buff", unit = "player", talent = 126326 }, -- Sulfur-Lined Pockets
        { spell = 459859, type = "buff", unit = "player", talent = 126333 }, -- Bombardier
        { spell = 461409, type = "buff", unit = "player" }, -- Sic' Em
        { spell = 470070, type = "buff", unit = "player", talent = 126321 }, -- Ruthless Marauder
        { spell = 471877, type = "buff", unit = "player", herotalent = 117588 }, -- Howl of the Pack Leader
        { spell = 471881, type = "buff", unit = "player" }, -- Wyvern's Cry
        { spell = 472640, type = "buff", unit = "player", herotalent = 117585 }, -- Hogstrider
        { spell = 136, type = "buff", unit = "pet" }, -- Mend Pet
        { spell = 61684, type = "buff", unit = "pet" }, -- Dash
        { spell = 459547, type = "buff", unit = "pet", talent = 126476 }, -- No Hard Feelings
      },
      icon = 1376044
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 2649, type = "debuff", unit = "target" }, -- Growl
        { spell = 3355, type = "debuff", unit = "target" }, -- Freezing Trap
        { spell = 5116, type = "debuff", unit = "target", talent = 126471 }, -- Concussive Shot
        { spell = 24394, type = "debuff", unit = "target", talent = 126461 }, -- Intimidation
        { spell = 135299, type = "debuff", unit = "target", talent = 126457 }, -- Tar Trap
        { spell = 190925, type = "debuff", unit = "target" }, -- Harpoon
        { spell = 195645, type = "debuff", unit = "target" }, -- Wing Clip
        { spell = 212431, type = "debuff", unit = "target", talent = 126485 }, -- Explosive Shot
        { spell = 213691, type = "debuff", unit = "target", talent = 126486 }, -- Scatter Shot
        { spell = 236777, type = "debuff", unit = "target", talent = 126830 }, -- High Explosive Trap
        { spell = 257284, type = "debuff", unit = "target" }, -- Hunter's Mark
        { spell = 259277, type = "debuff", unit = "target", talent = 126314 }, -- Kill Command
        { spell = 259491, type = "debuff", unit = "target" }, -- Serpent Sting
        { spell = 269747, type = "debuff", unit = "target", talent = 126324 }, -- Wildfire Bomb
        { spell = 321469, type = "debuff", unit = "target", talent = 126451 }, -- Binding Shackles
        { spell = 378957, type = "debuff", unit = "target", talent = 126351 }, -- Spearhead
        { spell = 393456, type = "debuff", unit = "target", talent = 126467 }, -- Entrapment
        { spell = 450387, type = "debuff", unit = "target", herotalent = 117573 }, -- Sentinel
        { spell = 450845, type = "debuff", unit = "target", herotalent = 123869 }, -- Sideline
        { spell = 450884, type = "debuff", unit = "target", herotalent = 117575 }, -- Lunar Storm
        { spell = 451531, type = "debuff", unit = "target", herotalent = 123870 }, -- Crescent Steel
        { spell = 462033, type = "debuff", unit = "target", talent = 126829 }, -- Implosive Trap
        { spell = 459870, type = "debuff", unit = "target", talent = 126327 }, -- Merciless Blow
      },
      icon = 132309
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 75, type = "ability" }, -- Auto Shot
        { spell = 781, type = "ability" }, -- Disengage
        { spell = 1543, type = "ability" }, -- Flare
        { spell = 2649, type = "ability", debuff = true, requiresTarget = true }, -- Growl
        { spell = 5116, type = "ability", debuff = true, talent = 126471 }, -- Concussive Shot
        { spell = 5384, type = "ability", buff = true, usable = true }, -- Feign Death
        { spell = 17253, type = "ability", requiresTarget = true }, -- Bite
        { spell = 19577, type = "ability", usable = true, talent = 126461 }, -- Intimidation
        { spell = 19801, type = "ability", talent = 126443 }, -- Tranquilizing Shot
        { spell = 34477, type = "ability", buff = true, talent = 126484 }, -- Misdirection
        { spell = 53480, type = "ability", buff = true, talent = 126469 }, -- Roar of Sacrifice
        { spell = 61684, type = "ability", buff = true, unit = 'pet' }, -- Dash
        { spell = 109248, type = "ability", talent = 126449 }, -- Binding Shot
        { spell = 109304, type = "ability" }, -- Exhilaration
        { spell = 186257, type = "ability", buff = true }, -- Aspect of the Cheetah
        { spell = 186265, type = "ability", buff = true }, -- Aspect of the Turtle
        { spell = 186270, type = "ability", overlayGlow = true, requiresTarget = true, talent = 126322 }, -- Raptor Strike
        { spell = 186289, type = "ability", buff = true }, -- Aspect of the Eagle
        { spell = 186387, type = "ability", talent = 126487 }, -- Bursting Shot
        { spell = 187650, type = "ability" }, -- Freezing Trap
        { spell = 187698, type = "ability", talent = 126457 }, -- Tar Trap
        { spell = 187707, type = "ability", requiresTarget = true, usable = true, talent = 100543 }, -- Muzzle
        { spell = 190925, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Harpoon
        { spell = 195645, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Wing Clip
        { spell = 199483, type = "ability", buff = true,  usable = true, talent = 126478 }, -- Camouflage
        { spell = 203415, type = "ability", usable = true, talent = 126335 }, -- Fury of the Eagle
        { spell = 212431, type = "ability", debuff = true, overlayGlow = true, usable = true, talent = 126485 }, -- Explosive Shot
        { spell = 212436, type = "ability", usable = true, talent = 126350 }, -- Butchery
        { spell = 213691, type = "ability", debuff = true, talent = 126486 }, -- Scatter Shot
        { spell = 236776, type = "ability", talent = 126830 }, -- High Explosive Trap
        { spell = 257284, type = "ability", debuff = true }, -- Hunter's Mark
        { spell = 259387, type = "ability", overlayGlow = true, requiresTarget = true, usable = true, talent = 126316 }, -- Mongoose Bite
        { spell = 259489, type = "ability", charges = true, overlayGlow = true, usable = true, talent = 126314 }, -- Kill Command
        { spell = 259495, type = "ability", charges = true, usable = true, talent = 126324 }, -- Wildfire Bomb
        { spell = 264667, type = "ability" }, -- Primal Rage
        { spell = 264735, type = "ability", charges = true, buff = true, talent = 126488 }, -- Survival of the Fittest
        { spell = 269751, type = "ability", requiresTarget = true, usable = true, talent = 126338 }, -- Flanking Strike
        { spell = 272678, type = "ability" }, -- Primal Rage
        { spell = 320976, type = "ability", overlayGlow = true, usable = true, talent = 126442 }, -- Kill Shot
        { spell = 360952, type = "ability", buff = true, usable = true, talent = 126311 }, -- Coordinated Assault
        { spell = 360966, type = "ability", usable = true, talent = 126351 }, -- Spearhead
        { spell = 462031, type = "ability", talent = 126829 }, -- Implosive Trap
      },
      icon = 236184
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\Icons\\ability_hunter_focusfire",
    },
  },
}

templates.class.ROGUE = {
  [1] = { -- Assassination
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 1784, type = "buff", unit = "player" }, -- Stealth
        { spell = 1966, type = "buff", unit = "player" }, -- Feint
        { spell = 2823, type = "buff", unit = "player", talent = 112676 }, -- Deadly Poison
        { spell = 2983, type = "buff", unit = "player" }, -- Sprint
        { spell = 3408, type = "buff", unit = "player" }, -- Crippling Poison
        { spell = 5277, type = "buff", unit = "player", talent = 112657 }, -- Evasion
        { spell = 5761, type = "buff", unit = "player", talent = 112656 }, -- Numbing Poison
        { spell = 8679, type = "buff", unit = "player" }, -- Wound Poison
        { spell = 11327, type = "buff", unit = "player" }, -- Vanish
        { spell = 31224, type = "buff", unit = "player", talent = 112585 }, -- Cloak of Shadows
        { spell = 32645, type = "buff", unit = "player" }, -- Envenom
        { spell = 36554, type = "buff", unit = "player" }, -- Shadowstep
        { spell = 108211, type = "buff", unit = "player", talent = 112650 }, -- Leeching Poison
        { spell = 114018, type = "buff", unit = "player" }, -- Shroud of Concealment
        { spell = 115192, type = "buff", unit = "player", talent = 112576 }, -- Subterfuge
        { spell = 121153, type = "buff", unit = "player", talent = 112679 }, -- Blindside
        { spell = 185311, type = "buff", unit = "player" }, -- Crimson Vial
        { spell = 193538, type = "buff", unit = "player", talent = 112643 }, -- Alacrity
        { spell = 256735, type = "buff", unit = "player", talent = 112508 }, -- Master Assassin
        { spell = 315496, type = "buff", unit = "player" }, -- Slice and Dice
        { spell = 315584, type = "buff", unit = "player" }, -- Instant Poison
        { spell = 323559, type = "buff", unit = "player", talent = 112525 }, -- Echoing Reprimand
        { spell = 381623, type = "buff", unit = "player", talent = 112648 }, -- Thistle Tea
        { spell = 381637, type = "buff", unit = "player", talent = 112655 }, -- Atrophic Poison
        { spell = 381664, type = "buff", unit = "player", talent = 112505 }, -- Amplifying Poison
        { spell = 382245, type = "buff", unit = "player", talent = 112639 }, -- Cold Blood
        { spell = 385747, type = "buff", unit = "player", talent = 112667 }, -- Indiscriminate Carnage
        { spell = 392401, type = "buff", unit = "player", talent = 112673 }, -- Improved Garrote
        { spell = 393971, type = "buff", unit = "player", talent = 112579 }, -- Soothing Darkness
        { spell = 394080, type = "buff", unit = "player", talent = 112668 }, -- Scent of Blood
        { spell = 452562, type = "buff", unit = "player" }, -- Lucky Coin
        { spell = 452917, type = "buff", unit = "player" }, -- Fatebound Coin (Tails)
        { spell = 452923, type = "buff", unit = "player" }, -- Fatebound Coin (Heads)
        { spell = 455144, type = "buff", unit = "player", talent = 112644 }, -- Acrobatic Strikes
        { spell = 455366, type = "buff", unit = "player" }, -- Serrated Bone Spike
        { spell = 457115, type = "buff", unit = "player", herotalent = 117728 }, -- Momentum of Despair
        { spell = 457160, type = "buff", unit = "player", herotalent = 117733 }, -- Deathstalker's Mark
        { spell = 457167, type = "buff", unit = "player", herotalent = 126030 }, -- Symbolic Victory
        { spell = 457178, type = "buff", unit = "player", herotalent = 117707 }, -- Clear the Witnesses
        { spell = 457273, type = "buff", unit = "player", herotalent = 117706 }, -- Lingering Darkness
        { spell = 457280, type = "buff", unit = "player", herotalent = 117739 }, -- Darkest Night
      },
      icon = 132290
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 408, type = "debuff", unit = "target" }, -- Kidney Shot
        { spell = 703, type = "debuff", unit = "target" }, -- Garrote
        { spell = 1330, type = "debuff", unit = "target" }, -- Garrote - Silence
        { spell = 1776, type = "debuff", unit = "target", talent = 112631 }, -- Gouge
        { spell = 1833, type = "debuff", unit = "target" }, -- Cheap Shot
        { spell = 1943, type = "debuff", unit = "target" }, -- Rupture
        { spell = 2094, type = "debuff", unit = "target", talent = 112572 }, -- Blind
        { spell = 2818, type = "debuff", unit = "target", talent = 112676 }, -- Deadly Poison
        { spell = 3409, type = "debuff", unit = "target" }, -- Crippling Poison
        { spell = 5760, type = "debuff", unit = "target", talent = 112656 }, -- Numbing Poison
        { spell = 8680, type = "debuff", unit = "target" }, -- Wound Poison
        { spell = 121411, type = "debuff", unit = "target", talent = 112517 }, -- Crimson Tempest
        { spell = 256148, type = "debuff", unit = "target", talent = 117134 }, -- Iron Wire
        { spell = 319504, type = "debuff", unit = "target", talent = 112630 }, -- Shiv
        { spell = 360194, type = "debuff", unit = "target", talent = 112662 }, -- Deathmark
        { spell = 381628, type = "debuff", unit = "target", talent = 117136 }, -- Internal Bleeding
        { spell = 383414, type = "debuff", unit = "target", talent = 112505 }, -- Amplifying Poison
        { spell = 385627, type = "debuff", unit = "target", talent = 117130 }, -- Kingsbane
        { spell = 392388, type = "debuff", unit = "target", talent = 112655 }, -- Atrophic Poison
        { spell = 394021, type = "debuff", unit = "target" }, -- Mutilated Flesh
        { spell = 394036, type = "debuff", unit = "target" }, -- Serrated Bone Spike
        { spell = 394119, type = "debuff", unit = "target", talent = 117143 }, -- Blackjack
        { spell = 421976, type = "debuff", unit = "target", talent = 117137 }, -- Caustic Spatter
        { spell = 457129, type = "debuff", unit = "target", herotalent = 117733 }, -- Deathstalker's Mark
        { spell = 457133, type = "debuff", unit = "target", herotalent = 117705 }, -- Corrupt the Blood
        { spell = 461981, type = "debuff", unit = "target", herotalent = 117732 }, -- Fatal Intent
      },
      icon = 132302
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 408, type = "ability", debuff = true, requiresTarget = true }, -- Kidney Shot
        { spell = 703, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Garrote
        { spell = 921, type = "ability", requiresTarget = true, usable = true }, -- Pick Pocket
        { spell = 1329, type = "ability", requiresTarget = true }, -- Mutilate
        { spell = 1725, type = "ability" }, -- Distract
        { spell = 1766, type = "ability", requiresTarget = true }, -- Kick
        { spell = 1776, type = "ability", debuff = true, requiresTarget = true, talent = 112631 }, -- Gouge
        { spell = 1784, type = "ability", buff = true, usable = true }, -- Stealth
        { spell = 1833, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Cheap Shot
        { spell = 1856, type = "ability", charges = true }, -- Vanish
        { spell = 1943, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Rupture
        { spell = 1966, type = "ability", charges = true, buff = true }, -- Feint
        { spell = 2094, type = "ability", debuff = true, requiresTarget = true, talent = 112572 }, -- Blind
        { spell = 2983, type = "ability", buff = true }, -- Sprint
        { spell = 5277, type = "ability", buff = true, talent = 112657 }, -- Evasion
        { spell = 5938, type = "ability", charges = true, requiresTarget = true, talent = 112630 }, -- Shiv
        { spell = 8676, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Ambush
        { spell = 31224, type = "ability", buff = true, talent = 112585 }, -- Cloak of Shadows
        { spell = 32645, type = "ability", buff = true, requiresTarget = true }, -- Envenom
        { spell = 36554, type = "ability", charges = true, buff = true, requiresTarget = true }, -- Shadowstep
        { spell = 114018, type = "ability", buff = true, usable = true }, -- Shroud of Concealment
        { spell = 185311, type = "ability", buff = true }, -- Crimson Vial
        { spell = 360194, type = "ability", debuff = true, requiresTarget = true, talent = 112662 }, -- Deathmark
        { spell = 381623, type = "ability", charges = true, buff = true, talent = 112648 }, -- Thistle Tea
        { spell = 382245, type = "ability", buff = true, usable = true, talent = 112639 }, -- Cold Blood
        { spell = 385616, type = "ability", requiresTarget = true, talent = 112525 }, -- Echoing Reprimand
        { spell = 385627, type = "ability", debuff = true, requiresTarget = true, talent = 117130 }, -- Kingsbane
      },
      icon = 132350
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = comboPointsIcon,
    },
  },
  [2] = { -- Outlaw
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 1784, type = "buff", unit = "player" }, -- Stealth
        { spell = 1966, type = "buff", unit = "player" }, -- Feint
        { spell = 2983, type = "buff", unit = "player" }, -- Sprint
        { spell = 3408, type = "buff", unit = "player" }, -- Crippling Poison
        { spell = 5277, type = "buff", unit = "player", talent = 112657 }, -- Evasion
        { spell = 5761, type = "buff", unit = "player", talent = 112656 }, -- Numbing Poison
        { spell = 8679, type = "buff", unit = "player" }, -- Wound Poison
        { spell = 11327, type = "buff", unit = "player" }, -- Vanish
        { spell = 13750, type = "buff", unit = "player", talent = 112545 }, -- Adrenaline Rush
        { spell = 13877, type = "buff", unit = "player" }, -- Blade Flurry
        { spell = 31224, type = "buff", unit = "player", talent = 112585 }, -- Cloak of Shadows
        { spell = 51690, type = "buff", unit = "player", talent = 117149 }, -- Killing Spree
        { spell = 108211, type = "buff", unit = "player", talent = 112650 }, -- Leeching Poison
        { spell = 114018, type = "buff", unit = "player" }, -- Shroud of Concealment
        { spell = 115192, type = "buff", unit = "player", talent = 112576 }, -- Subterfuge
        { spell = 185311, type = "buff", unit = "player" }, -- Crimson Vial
        { spell = 193356, type = "buff", unit = "player" }, -- Broadside
        { spell = 193357, type = "buff", unit = "player" }, -- Ruthless Precision
        { spell = 193358, type = "buff", unit = "player" }, -- Grand Melee
        { spell = 193359, type = "buff", unit = "player" }, -- True Bearing
        { spell = 193538, type = "buff", unit = "player", talent = 112643 }, -- Alacrity
        { spell = 195627, type = "buff", unit = "player", talent = 112571 }, -- Opportunity
        { spell = 199600, type = "buff", unit = "player" }, -- Buried Treasure
        { spell = 199603, type = "buff", unit = "player" }, -- Skull and Crossbones
        { spell = 256171, type = "buff", unit = "player", talent = 112542 }, -- Loaded Dice
        { spell = 271896, type = "buff", unit = "player", talent = 112551 }, -- Blade Rush
        { spell = 315341, type = "buff", unit = "player" }, -- Between the Eyes
        { spell = 315584, type = "buff", unit = "player" }, -- Instant Poison
        { spell = 323559, type = "buff", unit = "player", talent = 112525 }, -- Echoing Reprimand
        { spell = 381623, type = "buff", unit = "player", talent = 112648 }, -- Thistle Tea
        { spell = 381637, type = "buff", unit = "player", talent = 112655 }, -- Atrophic Poison
        { spell = 385907, type = "buff", unit = "player", talent = 112563 }, -- Take 'em by Surprise
        { spell = 386270, type = "buff", unit = "player", talent = 112527 }, -- Audacity
        { spell = 386868, type = "buff", unit = "player", talent = 112539 }, -- Summarily Dispatched
        { spell = 393971, type = "buff", unit = "player", talent = 112579 }, -- Soothing Darkness
        { spell = 441326, type = "buff", unit = "player", herotalent = 117708 }, -- Flawless Form
        { spell = 441640, type = "buff", unit = "player" }, -- Smokescreen
        { spell = 441776, type = "buff", unit = "player", herotalent = 117712 }, -- Coup de Grace
        { spell = 441786, type = "buff", unit = "player" }, -- Escalating Blade
        { spell = 452562, type = "buff", unit = "player" }, -- Lucky Coin
        { spell = 452917, type = "buff", unit = "player" }, -- Fatebound Coin (Tails)
        { spell = 452923, type = "buff", unit = "player" }, -- Fatebound Coin (Heads)
        { spell = 455144, type = "buff", unit = "player", talent = 112644 }, -- Acrobatic Strikes
        { spell = 456330, type = "buff", unit = "player", talent = 112639 }, -- Cold Blood
        { spell = 457343, type = "buff", unit = "player", herotalent = 125140 }, -- Death's Arrival
      },
      icon = 132350
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 408, type = "debuff", unit = "target" }, -- Kidney Shot
        { spell = 1776, type = "debuff", unit = "target", talent = 112631 }, -- Gouge
        { spell = 2094, type = "debuff", unit = "target", talent = 112572 }, -- Blind
        { spell = 3409, type = "debuff", unit = "target" }, -- Crippling Poison
        { spell = 5760, type = "debuff", unit = "target", talent = 112656 }, -- Numbing Poison
        { spell = 8680, type = "debuff", unit = "target" }, -- Wound Poison
        { spell = 185763, type = "debuff", unit = "target" }, -- Pistol Shot
        { spell = 196937, type = "debuff", unit = "target", talent = 117162 }, -- Ghostly Strike
        { spell = 255909, type = "debuff", unit = "target" }, -- Stinging Vulnerability
        { spell = 392388, type = "debuff", unit = "target", talent = 112655 }, -- Atrophic Poison
        { spell = 394036, type = "debuff", unit = "target" }, -- Serrated Bone Spike
        { spell = 394119, type = "debuff", unit = "target", talent = 117143 }, -- Blackjack
        { spell = 441224, type = "debuff", unit = "target" }, -- Fazed
      },
      icon = 1373908
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 408, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Kidney Shot
        { spell = 921, type = "ability", requiresTarget = true, usable = true }, -- Pick Pocket
        { spell = 1725, type = "ability", usable = true }, -- Distract
        { spell = 1766, type = "ability", requiresTarget = true, usable = true }, -- Kick
        { spell = 1776, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 112631 }, -- Gouge
        { spell = 1784, type = "ability", buff = true, usable = true }, -- Stealth
        { spell = 1833, type = "ability", requiresTarget = true, usable = true }, -- Cheap Shot
        { spell = 1856, type = "ability", charges = true, usable = true }, -- Vanish
        { spell = 1966, type = "ability", charges = true, buff = true, usable = true }, -- Feint
        { spell = 2094, type = "ability", debuff = true, usable = true, talent = 112572 }, -- Blind
        { spell = 2098, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Dispatch
        { spell = 2983, type = "ability", buff = true, usable = true }, -- Sprint
        { spell = 5277, type = "ability", buff = true, usable = true, talent = 112657 }, -- Evasion
        { spell = 5938, type = "ability", requiresTarget = true, usable = true, talent = 112630 }, -- Shiv
        { spell = 8676, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Ambush
        { spell = 13750, type = "ability", buff = true, usable = true, talent = 112545 }, -- Adrenaline Rush
        { spell = 13877, type = "ability", buff = true, usable = true }, -- Blade Flurry
        { spell = 31224, type = "ability", buff = true, usable = true, talent = 112585 }, -- Cloak of Shadows
        { spell = 51690, type = "ability", buff = true, requiresTarget = true, usable = true, talent = 117149 }, -- Killing Spree
        { spell = 114018, type = "ability", buff = true, usable = true }, -- Shroud of Concealment
        { spell = 185311, type = "ability", buff = true, usable = true }, -- Crimson Vial
        { spell = 193315, type = "ability", requiresTarget = true, usable = true }, -- Sinister Strike
        { spell = 195457, type = "ability", charges = true, overlayGlow = true, usable = true }, -- Grappling Hook
        { spell = 196937, type = "ability", debuff = true, requiresTarget = true, talent = 117162 }, -- Ghostly Strike
        { spell = 271877, type = "ability", usable = true, talent = 112551 }, -- Blade Rush
        { spell = 315341, type = "ability", buff = true, usable = true }, -- Between the Eyes
        { spell = 315508, type = "ability", usable = true }, -- Roll the Bones
        { spell = 381623, type = "ability", charges = true, buff = true, usable = true, talent = 112648 }, -- Thistle Tea
        { spell = 381989, type = "ability", usable = true, talent = 112538 }, -- Keep It Rolling
        { spell = 385616, type = "ability", requiresTarget = true, usable = true, talent = 112525 }, -- Echoing Reprimand
        { spell = 441587, type = "ability" }, -- Distract
        { spell = 456330, type = "ability", buff = true, talent = 112639 }, -- Cold Blood
      },
      icon = 135610
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = comboPointsIcon,
    },
  },
  [3] = { -- Subtlety
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 1784, type = "buff", unit = "player" }, -- Stealth
        { spell = 1966, type = "buff", unit = "player" }, -- Feint
        { spell = 2983, type = "buff", unit = "player" }, -- Sprint
        { spell = 3408, type = "buff", unit = "player" }, -- Crippling Poison
        { spell = 5277, type = "buff", unit = "player", talent = 112657 }, -- Evasion
        { spell = 5761, type = "buff", unit = "player", talent = 112656 }, -- Numbing Poison
        { spell = 8679, type = "buff", unit = "player" }, -- Wound Poison
        { spell = 11327, type = "buff", unit = "player" }, -- Vanish
        { spell = 31224, type = "buff", unit = "player", talent = 112585 }, -- Cloak of Shadows
        { spell = 36554, type = "buff", unit = "player" }, -- Shadowstep
        { spell = 108211, type = "buff", unit = "player", talent = 112650 }, -- Leeching Poison
        { spell = 114018, type = "buff", unit = "player" }, -- Shroud of Concealment
        { spell = 115192, type = "buff", unit = "player", talent = 112576 }, -- Subterfuge
        { spell = 121471, type = "buff", unit = "player", talent = 112614 }, -- Shadow Blades
        { spell = 185311, type = "buff", unit = "player" }, -- Crimson Vial
        { spell = 185422, type = "buff", unit = "player" }, -- Shadow Dance
        { spell = 193538, type = "buff", unit = "player", talent = 112643 }, -- Alacrity
        { spell = 196911, type = "buff", unit = "player" }, -- Shadow Techniques
        { spell = 196980, type = "buff", unit = "player", talent = 112624 }, -- Master of Shadows
        { spell = 212283, type = "buff", unit = "player" }, -- Symbols of Death
        { spell = 257506, type = "buff", unit = "player", talent = 112586 }, -- Shot in the Dark
        { spell = 277925, type = "buff", unit = "player", talent = 112604 }, -- Shuriken Tornado
        { spell = 315496, type = "buff", unit = "player" }, -- Slice and Dice
        { spell = 315584, type = "buff", unit = "player" }, -- Instant Poison
        { spell = 323559, type = "buff", unit = "player", talent = 112525 }, -- Echoing Reprimand
        { spell = 343173, type = "buff", unit = "player", talent = 112627 }, -- Premeditation
        { spell = 381623, type = "buff", unit = "player", talent = 112648 }, -- Thistle Tea
        { spell = 381637, type = "buff", unit = "player", talent = 112655 }, -- Atrophic Poison
        { spell = 382245, type = "buff", unit = "player", talent = 112639 }, -- Cold Blood
        { spell = 383405, type = "buff", unit = "player", talent = 112609 }, -- Deeper Daggers
        { spell = 384631, type = "buff", unit = "player", talent = 112606 }, -- Flagellation
        { spell = 385727, type = "buff", unit = "player", talent = 112602 }, -- Silent Storm
        { spell = 385948, type = "buff", unit = "player" }, -- Finality: Black Powder
        { spell = 385949, type = "buff", unit = "player" }, -- Finality: Eviscerate
        { spell = 385951, type = "buff", unit = "player" }, -- Finality: Rupture
        { spell = 385960, type = "buff", unit = "player", talent = 112619 }, -- Lingering Shadow
        { spell = 386165, type = "buff", unit = "player", talent = 112622 }, -- Cloaked in Shadows
        { spell = 386237, type = "buff", unit = "player", talent = 112621 }, -- Fade to Nothing
        { spell = 393969, type = "buff", unit = "player", talent = 112618 }, -- Danse Macabre
        { spell = 393971, type = "buff", unit = "player", talent = 112579 }, -- Soothing Darkness
        { spell = 394203, type = "buff", unit = "player", talent = 112593 }, -- The Rotten
        { spell = 394254, type = "buff", unit = "player", talent = 112595 }, -- Perforated Veins
        { spell = 426593, type = "buff", unit = "player", talent = 117169 }, -- Goremaw's Bite
        { spell = 428389, type = "buff", unit = "player", talent = 117753 }, -- Terrifying Pace
        { spell = 428488, type = "buff", unit = "player", talent = 112599 }, -- Exhilarating Execution
        { spell = 441326, type = "buff", unit = "player", herotalent = 117708 }, -- Flawless Form
        { spell = 441640, type = "buff", unit = "player" }, -- Smokescreen
        { spell = 441776, type = "buff", unit = "player", herotalent = 117712 }, -- Coup de Grace
        { spell = 441786, type = "buff", unit = "player" }, -- Escalating Blade
        { spell = 455144, type = "buff", unit = "player", talent = 112644 }, -- Acrobatic Strikes
        { spell = 457115, type = "buff", unit = "player", herotalent = 117728 }, -- Momentum of Despair
        { spell = 457160, type = "buff", unit = "player", herotalent = 117733 }, -- Deathstalker's Mark
        { spell = 457167, type = "buff", unit = "player", herotalent = 126030 }, -- Symbolic Victory
        { spell = 457178, type = "buff", unit = "player", herotalent = 117707 }, -- Clear the Witnesses
        { spell = 457273, type = "buff", unit = "player", herotalent = 117706 }, -- Lingering Darkness
        { spell = 457280, type = "buff", unit = "player", herotalent = 117739 }, -- Darkest Night
        { spell = 470677, type = "buff", unit = "player", talent = 112625 }, -- The First Dance
      },
      icon = 376022
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 408, type = "debuff", unit = "target" }, -- Kidney Shot
        { spell = 1776, type = "debuff", unit = "target", talent = 112631 }, -- Gouge
        { spell = 1943, type = "debuff", unit = "target" }, -- Rupture
        { spell = 2094, type = "debuff", unit = "target", talent = 112572 }, -- Blind
        { spell = 3409, type = "debuff", unit = "target" }, -- Crippling Poison
        { spell = 5760, type = "debuff", unit = "target", talent = 112656 }, -- Numbing Poison
        { spell = 8680, type = "debuff", unit = "target" }, -- Wound Poison
        { spell = 206760, type = "debuff", unit = "target" }, -- Shadow's Grasp
        { spell = 316220, type = "debuff", unit = "target", talent = 112578 }, -- Find Weakness
        { spell = 384631, type = "debuff", unit = "target", talent = 112606 }, -- Flagellation
        { spell = 392388, type = "debuff", unit = "target", talent = 112655 }, -- Atrophic Poison
        { spell = 394119, type = "debuff", unit = "target", talent = 117143 }, -- Blackjack
        { spell = 441224, type = "debuff", unit = "target" }, -- Fazed
        { spell = 457129, type = "debuff", unit = "target", herotalent = 117733 }, -- Deathstalker's Mark
        { spell = 457133, type = "debuff", unit = "target", herotalent = 117705 }, -- Corrupt the Blood
        { spell = 461981, type = "debuff", unit = "target", herotalent = 117732 }, -- Fatal Intent
      },
      icon = 136175
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 53, type = "ability", requiresTarget = true, usable = true }, -- Backstab
        { spell = 408, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Kidney Shot
        { spell = 921, type = "ability", requiresTarget = true, usable = true }, -- Pick Pocket
        { spell = 1725, type = "ability" }, -- Distract
        { spell = 1766, type = "ability", requiresTarget = true, usable = true }, -- Kick
        { spell = 1776, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 112631 }, -- Gouge
        { spell = 1784, type = "ability", buff = true, usable = true }, -- Stealth
        { spell = 1833, type = "ability", requiresTarget = true, usable = true }, -- Cheap Shot
        { spell = 1856, type = "ability", charges = true, usable = true }, -- Vanish
        { spell = 1943, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Rupture
        { spell = 1966, type = "ability", charges = true, buff = true, usable = true }, -- Feint
        { spell = 2094, type = "ability", debuff = true, usable = true, talent = 112572 }, -- Blind
        { spell = 2983, type = "ability", buff = true, usable = true }, -- Sprint
        { spell = 5277, type = "ability", buff = true, usable = true, talent = 112657 }, -- Evasion
        { spell = 5938, type = "ability", requiresTarget = true, usable = true, talent = 112630 }, -- Shiv
        { spell = 31224, type = "ability", buff = true, usable = true, talent = 112585 }, -- Cloak of Shadows
        { spell = 36554, type = "ability", charges = true, buff = true, usable = true }, -- Shadowstep
        { spell = 114018, type = "ability", buff = true, usable = true }, -- Shroud of Concealment
        { spell = 121471, type = "ability", buff = true, usable = true, talent = 112614 }, -- Shadow Blades
        { spell = 185311, type = "ability", buff = true, usable = true }, -- Crimson Vial
        { spell = 185313, type = "ability", charges = true, usable = true }, -- Shadow Dance
        { spell = 185438, type = "ability", requiresTarget = true, usable = true }, -- Shadowstrike
        { spell = 196819, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Eviscerate
        { spell = 200758, type = "ability", requiresTarget = true, usable = true, talent = 112587 }, -- Gloomblade
        { spell = 212283, type = "ability", buff = true, usable = true }, -- Symbols of Death
        { spell = 277925, type = "ability", buff = true, talent = 112604 }, -- Shuriken Tornado
        { spell = 280719, type = "ability", requiresTarget = true, usable = true, talent = 112603 }, -- Secret Technique
        { spell = 381623, type = "ability", charges = true, buff = true, talent = 112648 }, -- Thistle Tea
        { spell = 382245, type = "ability", buff = true, usable = true, talent = 112639 }, -- Cold Blood
        { spell = 384631, type = "ability", buff = true, debuff = true, requiresTarget = true, talent = 112606 }, -- Flagellation
        { spell = 385616, type = "ability", requiresTarget = true, talent = 112525 }, -- Echoing Reprimand
        { spell = 426591, type = "ability", requiresTarget = true, talent = 117169 }, -- Goremaw's Bite
        { spell = 441587, type = "ability" }, -- Distract
      },
      icon = 236279
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = comboPointsIcon,
    },
  },
}

templates.class.PRIEST = {
  [1] = { -- Discipline
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 17, type = "buff", unit = "player" }, -- Power Word: Shield
        { spell = 139, type = "buff", unit = "player", talent = 103869 }, -- Renew
        { spell = 586, type = "buff", unit = "player" }, -- Fade
        { spell = 2096, type = "buff", unit = "player" }, -- Mind Vision
        { spell = 10060, type = "buff", unit = "player", talent = 103844 }, -- Power Infusion
        { spell = 15286, type = "buff", unit = "player", talent = 103841 }, -- Vampiric Embrace
        { spell = 19236, type = "buff", unit = "player" }, -- Desperate Prayer
        { spell = 21562, type = "buff", unit = "player" }, -- Power Word: Fortitude
        { spell = 33206, type = "buff", unit = "player", talent = 103713 }, -- Pain Suppression
        { spell = 41635, type = "buff", unit = "player", talent = 103870 }, -- Prayer of Mending
        { spell = 47753, type = "buff", unit = "player", talent = 103732 }, -- Divine Aegis
        { spell = 65081, type = "buff", unit = "player", talent = 103856 }, -- Body and Soul
        { spell = 81782, type = "buff", unit = "player", talent = 103687 }, -- Power Word: Barrier
        { spell = 111759, type = "buff", unit = "player" }, -- Levitate
        { spell = 121557, type = "buff", unit = "player", talent = 103853 }, -- Angelic Feather
        { spell = 193065, type = "buff", unit = "player", talent = 103858 }, -- Protective Light
        { spell = 194384, type = "buff", unit = "player", talent = 103723 }, -- Atonement
        { spell = 198069, type = "buff", unit = "player", talent = 103724 }, -- Power of the Dark Side
        { spell = 271466, type = "buff", unit = "player", talent = 116182 }, -- Luminous Barrier
        { spell = 280398, type = "buff", unit = "player" }, -- Sins of the Many
        { spell = 290793, type = "buff", unit = "player" }, -- Trinity
        { spell = 322105, type = "buff", unit = "player", talent = 103706 }, -- Shadow Covenant
        { spell = 355851, type = "buff", unit = "player", talent = 103693 }, -- Blaze of Light
        { spell = 373183, type = "buff", unit = "player", talent = 103697 }, -- Harsh Discipline
        { spell = 390617, type = "buff", unit = "player", talent = 103857 }, -- From Darkness Comes Light
        { spell = 390636, type = "buff", unit = "player", talent = 103850 }, -- Rhapsody
        { spell = 390692, type = "buff", unit = "player", talent = 103729 }, -- Borrowed Time
        { spell = 390706, type = "buff", unit = "player", talent = 103696 }, -- Twilight Equilibrium
        { spell = 390787, type = "buff", unit = "player", talent = 103694 }, -- Weal and Woe
        { spell = 390933, type = "buff", unit = "player", talent = 103873 }, -- Words of the Pious
        { spell = 390978, type = "buff", unit = "player", talent = 103833 }, -- Twist of Fate
        { spell = 421453, type = "buff", unit = "player", talent = 103700 }, -- Ultimate Penitence
        { spell = 428930, type = "buff", unit = "player" }, -- Premonition of Piety
        { spell = 428933, type = "buff", unit = "player" }, -- Premonition of Insight
        { spell = 428934, type = "buff", unit = "player" }, -- Premonition of Solace
        { spell = 440683, type = "buff", unit = "player", herotalent = 117282 }, -- Waste No Time
        { spell = 449887, type = "buff", unit = "player", herotalent = 117295 }, -- Voidheart
      },
      icon = 135940
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 589, type = "debuff", unit = "target" }, -- Shadow Word: Pain
        { spell = 8122, type = "debuff", unit = "target" }, -- Psychic Scream
        { spell = 208772, type = "debuff", unit = "target", talent = 108225 }, -- Sanctuary
        { spell = 214621, type = "debuff", unit = "target", talent = 103704 }, -- Schism
        { spell = 356084, type = "debuff", unit = "target", talent = 103693 }, -- Blaze of Light
        { spell = 390669, type = "debuff", unit = "target", talent = 103839 }, -- Apathy
        { spell = 451210, type = "debuff", unit = "target", herotalent = 117296 }, -- No Escape
      },
      icon = 136207
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 17, type = "ability", buff = true }, -- Power Word: Shield
        { spell = 453, type = "ability" }, -- Mind Soothe
        { spell = 527, type = "ability", charges = true }, -- Purify
        { spell = 528, type = "ability", requiresTarget = true, talent = 103867 }, -- Dispel Magic
        { spell = 585, type = "ability", requiresTarget = true }, -- Smite
        { spell = 586, type = "ability", buff = true }, -- Fade
        { spell = 589, type = "ability", debuff = true, requiresTarget = true }, -- Shadow Word: Pain
        { spell = 8092, type = "ability", charges = true, requiresTarget = true }, -- Mind Blast
        { spell = 8122, type = "ability", debuff = true }, -- Psychic Scream
        { spell = 10060, type = "ability", buff = true, talent = 103844 }, -- Power Infusion
        { spell = 15286, type = "ability", buff = true, talent = 103841 }, -- Vampiric Embrace
        { spell = 19236, type = "ability", buff = true }, -- Desperate Prayer
        { spell = 32375, type = "ability", talent = 103849 }, -- Mass Dispel
        { spell = 32379, type = "ability", overlayGlow = true, requiresTarget = true, talent = 103864 }, -- Shadow Word: Death
        { spell = 33076, type = "ability", talent = 103870 }, -- Prayer of Mending
        { spell = 33206, type = "ability", charges = true, buff = true, talent = 103713 }, -- Pain Suppression
        { spell = 34433, type = "ability", requiresTarget = true, totem = true, talent = 103865 }, -- Shadowfiend
        { spell = 47540, type = "ability", overlayGlow = true, requiresTarget = true }, -- Penance
        { spell = 62618, type = "ability", talent = 103687 }, -- Power Word: Barrier
        { spell = 108920, type = "ability", talent = 103859 }, -- Void Tendrils
        { spell = 108968, type = "ability", talent = 103820 }, -- Void Shift
        { spell = 110744, type = "ability", talent = 103831 }, -- Divine Star
        { spell = 120517, type = "ability", talent = 103830 }, -- Halo
        { spell = 120644, type = "ability", talent = 103827 }, -- Halo
        { spell = 121536, type = "ability", charges = true, talent = 103853 }, -- Angelic Feather
        { spell = 122121, type = "ability", talent = 103828 }, -- Divine Star
        { spell = 123040, type = "ability", requiresTarget = true, talent = 103710 }, -- Mindbender
        { spell = 194509, type = "ability", charges = true, overlayGlow = true, talent = 103722 }, -- Power Word: Radiance
        { spell = 200174, type = "ability", requiresTarget = true, talent = 103788 }, -- Mindbender
        { spell = 205364, type = "ability", talent = 103678 }, -- Dominate Mind
        { spell = 271466, type = "ability", buff = true, talent = 116182 }, -- Luminous Barrier
        { spell = 373481, type = "ability", usable = true, talent = 103822 }, -- Power Word: Life
        { spell = 400169, type = "ability" }, -- Dark Reprimand
        { spell = 421453, type = "ability", buff = true, requiresTarget = true, talent = 103700 }, -- Ultimate Penitence
        { spell = 428930, type = "ability", charges = true, buff = true }, -- Premonition of Piety
        { spell = 428933, type = "ability", charges = true, buff = true }, -- Premonition of Insight
        { spell = 428934, type = "ability", charges = true, buff = true }, -- Premonition of Solace
        { spell = 440725, type = "ability", charges = true }, -- Premonition of Clairvoyance
        { spell = 451235, type = "ability", requiresTarget = true, totem = true, herotalent = 123841 }, -- Voidwraith
      },
      icon = 136224
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  },
  [2] = { -- Holy
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 17, type = "buff", unit = "player" }, -- Power Word: Shield
        { spell = 139, type = "buff", unit = "player", talent = 103869 }, -- Renew
        { spell = 586, type = "buff", unit = "player" }, -- Fade
        { spell = 2096, type = "buff", unit = "player" }, -- Mind Vision
        { spell = 10060, type = "buff", unit = "player", talent = 103844 }, -- Power Infusion
        { spell = 15286, type = "buff", unit = "player", talent = 103841 }, -- Vampiric Embrace
        { spell = 19236, type = "buff", unit = "player" }, -- Desperate Prayer
        { spell = 21562, type = "buff", unit = "player" }, -- Power Word: Fortitude
        { spell = 41635, type = "buff", unit = "player", talent = 103870 }, -- Prayer of Mending
        { spell = 47788, type = "buff", unit = "player", talent = 103774 }, -- Guardian Spirit
        { spell = 64843, type = "buff", unit = "player", talent = 103755 }, -- Divine Hymn
        { spell = 64901, type = "buff", unit = "player", talent = 103751 }, -- Symbol of Hope
        { spell = 65081, type = "buff", unit = "player", talent = 103856 }, -- Body and Soul
        { spell = 77489, type = "buff", unit = "player" }, -- Echo of Light
        { spell = 111759, type = "buff", unit = "player" }, -- Levitate
        { spell = 114255, type = "buff", unit = "player", talent = 103823 }, -- Surge of Light
        { spell = 121557, type = "buff", unit = "player", talent = 103853 }, -- Angelic Feather
        { spell = 193065, type = "buff", unit = "player", talent = 103858 }, -- Protective Light
        { spell = 200183, type = "buff", unit = "player", talent = 103743 }, -- Apotheosis
        { spell = 289655, type = "buff", unit = "player" }, -- Sanctified Ground
        { spell = 321379, type = "buff", unit = "player", talent = 103760 }, -- Prayer Circle
        { spell = 372313, type = "buff", unit = "player", talent = 103735 }, -- Resonant Words
        { spell = 372617, type = "buff", unit = "player", talent = 103777 }, -- Empyreal Blaze
        { spell = 372760, type = "buff", unit = "player", talent = 103676 }, -- Divine Word
        { spell = 372761, type = "buff", unit = "player" }, -- Divine Favor: Chastise
        { spell = 372791, type = "buff", unit = "player" }, -- Divine Favor: Serenity
        { spell = 372838, type = "buff", unit = "player", talent = 103733 }, -- Lightwell
        { spell = 390617, type = "buff", unit = "player", talent = 103857 }, -- From Darkness Comes Light
        { spell = 390636, type = "buff", unit = "player", talent = 103850 }, -- Rhapsody
        { spell = 390677, type = "buff", unit = "player", talent = 103846 }, -- Inspiration
        { spell = 390933, type = "buff", unit = "player", talent = 103873 }, -- Words of the Pious
        { spell = 390978, type = "buff", unit = "player", talent = 103833 }, -- Twist of Fate
        { spell = 390993, type = "buff", unit = "player", talent = 103734 }, -- Lightweaver
        { spell = 405963, type = "buff", unit = "player", talent = 103675 }, -- Divine Image
        { spell = 428930, type = "buff", unit = "player" }, -- Premonition of Piety
        { spell = 428933, type = "buff", unit = "player" }, -- Premonition of Insight
        { spell = 428934, type = "buff", unit = "player" }, -- Premonition of Solace
        { spell = 440683, type = "buff", unit = "player", herotalent = 117282 }, -- Waste No Time
        { spell = 453846, type = "buff", unit = "player", herotalent = 117284 }, -- Resonant Energy
        { spell = 453983, type = "buff", unit = "player", herotalent = 117280 }, -- Perfected Form
        { spell = 454002, type = "buff", unit = "player", herotalent = 125085 }, -- Sustained Potency
      },
      icon = 135953
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 589, type = "debuff", unit = "target" }, -- Shadow Word: Pain
        { spell = 8122, type = "debuff", unit = "target" }, -- Psychic Scream
        { spell = 14914, type = "debuff", unit = "target" }, -- Holy Fire
        { spell = 200200, type = "debuff", unit = "target", talent = 103776 }, -- Holy Word: Chastise
        { spell = 453848, type = "debuff", unit = "target", herotalent = 117289 }, -- Shock Pulse
      },
      icon = 135972
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 17, type = "ability", buff = true }, -- Power Word: Shield
        { spell = 453, type = "ability" }, -- Mind Soothe
        { spell = 586, type = "ability", buff = true }, -- Fade
        { spell = 2050, type = "ability", charges = true, overlayGlow = true, talent = 103775 }, -- Holy Word: Serenity
        { spell = 2060, type = "ability", charges = true, overlayGlow = true }, -- Heal
        { spell = 2061, type = "ability", charges = true, overlayGlow = true }, -- Flash Heal
        { spell = 8122, type = "ability", debuff = true }, -- Psychic Scream
        { spell = 10060, type = "ability", buff = true, talent = 103844 }, -- Power Infusion
        { spell = 14914, type = "ability", debuff = true, overlayGlow = true }, -- Holy Fire
        { spell = 15286, type = "ability", buff = true, talent = 103841 }, -- Vampiric Embrace
        { spell = 19236, type = "ability", buff = true }, -- Desperate Prayer
        { spell = 32375, type = "ability", talent = 103849 }, -- Mass Dispel
        { spell = 32379, type = "ability", overlayGlow = true, talent = 103864 }, -- Shadow Word: Death
        { spell = 33076, type = "ability", overlayGlow = true, talent = 103870 }, -- Prayer of Mending
        { spell = 34433, type = "ability", totem = true, talent = 103865 }, -- Shadowfiend
        { spell = 34861, type = "ability", charges = true, overlayGlow = true, talent = 103766 }, -- Holy Word: Sanctify
        { spell = 47788, type = "ability", buff = true, talent = 103774 }, -- Guardian Spirit
        { spell = 64843, type = "ability", buff = true, talent = 103755 }, -- Divine Hymn
        { spell = 64901, type = "ability", buff = true, talent = 103751 }, -- Symbol of Hope
        { spell = 88625, type = "ability", overlayGlow = true, talent = 103776 }, -- Holy Word: Chastise
        { spell = 108920, type = "ability", talent = 103859 }, -- Void Tendrils
        { spell = 108968, type = "ability", talent = 103820 }, -- Void Shift
        { spell = 110744, type = "ability", talent = 103831 }, -- Divine Star
        { spell = 120517, type = "ability", talent = 103830 }, -- Halo
        { spell = 121536, type = "ability", buff = true, charges = true, talent = 103853 }, -- Angelic Feather
        { spell = 200183, type = "ability", buff = true, talent = 103743 }, -- Apotheosis
        { spell = 205364, type = "ability", talent = 103678 }, -- Dominate Mind
        { spell = 372760, type = "ability", buff = true, talent = 103676 }, -- Divine Word
        { spell = 372835, type = "ability", totem = true, talent = 103733 }, -- Lightwell
        { spell = 373481, type = "ability", usable = true, talent = 103822 }, -- Power Word: Life
        { spell = 428930, type = "ability", charges = true, buff = true }, -- Premonition of Piety
        { spell = 428933, type = "ability", charges = true, buff = true }, -- Premonition of Insight
        { spell = 428934, type = "ability", charges = true, buff = true }, -- Premonition of Solace
        { spell = 440725, type = "ability", charges = true }, -- Premonition of Clairvoyance
      },
      icon = 135937
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  },
  [3] = { -- Shadow
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 17, type = "buff", unit = "player" }, -- Power Word: Shield
        { spell = 139, type = "buff", unit = "player", talent = 103869 }, -- Renew
        { spell = 586, type = "buff", unit = "player" }, -- Fade
        { spell = 10060, type = "buff", unit = "player", talent = 103844 }, -- Power Infusion
        { spell = 15286, type = "buff", unit = "player", talent = 103841 }, -- Vampiric Embrace
        { spell = 21562, type = "buff", unit = "player" }, -- Power Word: Fortitude
        { spell = 41635, type = "buff", unit = "player", talent = 103870 }, -- Prayer of Mending
        { spell = 47585, type = "buff", unit = "player", talent = 103806 }, -- Dispersion
        { spell = 65081, type = "buff", unit = "player", talent = 103856 }, -- Body and Soul
        { spell = 111759, type = "buff", unit = "player" }, -- Levitate
        { spell = 114255, type = "buff", unit = "player", talent = 103823 }, -- Surge of Light
        { spell = 121557, type = "buff", unit = "player", talent = 103853 }, -- Angelic Feather
        { spell = 193065, type = "buff", unit = "player", talent = 103858 }, -- Protective Light
        { spell = 194249, type = "buff", unit = "player" }, -- Voidform
        { spell = 232698, type = "buff", unit = "player" }, -- Shadowform
        { spell = 247776, type = "buff", unit = "player" }, -- Mind Trauma
        { spell = 341282, type = "buff", unit = "player", talent = 103804 }, -- Unfurling Darkness
        { spell = 373204, type = "buff", unit = "player", talent = 103684 }, -- Mind Devourer
        { spell = 373213, type = "buff", unit = "player", talent = 103683 }, -- Insidious Ire
        { spell = 373276, type = "buff", unit = "player", talent = 103817 }, -- Idol of Yogg-Saron
        { spell = 375981, type = "buff", unit = "player", talent = 103805 }, -- Shadowy Insight
        { spell = 377066, type = "buff", unit = "player", talent = 103800 }, -- Mental Fortitude
        { spell = 390617, type = "buff", unit = "player", talent = 103857 }, -- From Darkness Comes Light
        { spell = 390636, type = "buff", unit = "player", talent = 103850 }, -- Rhapsody
        { spell = 390933, type = "buff", unit = "player", talent = 103873 }, -- Words of the Pious
        { spell = 390978, type = "buff", unit = "player", talent = 103833 }, -- Twist of Fate
        { spell = 391092, type = "buff", unit = "player", talent = 115449 }, -- Mind Melt
        { spell = 391099, type = "buff", unit = "player", talent = 103802 }, -- Dark Evangelism
        { spell = 391109, type = "buff", unit = "player", talent = 103680 }, -- Dark Ascension
        { spell = 391401, type = "buff", unit = "player" }, -- Mind Flay: Insanity
        { spell = 392511, type = "buff", unit = "player", talent = 103681 }, -- Deathspeaker
        { spell = 393919, type = "buff", unit = "player", talent = 103789 }, -- Screams of the Void
        { spell = 407468, type = "buff", unit = "player" }, -- Mind Spike: Insanity
      },
      icon = 237566
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 589, type = "debuff", unit = "target" }, -- Shadow Word: Pain
        { spell = 8122, type = "debuff", unit = "target" }, -- Psychic Scream
        { spell = 15407, type = "debuff", unit = "target" }, -- Mind Flay
        { spell = 15487, type = "debuff", unit = "target", talent = 103792 }, -- Silence
        { spell = 34914, type = "debuff", unit = "target" }, -- Vampiric Touch
        { spell = 64044, type = "debuff", unit = "target", talent = 103793 }, -- Psychic Horror
        { spell = 114404, type = "debuff", unit = "target" }, -- Void Tendril's Grasp
        { spell = 247777, type = "debuff", unit = "target" }, -- Mind Trauma
        { spell = 263165, type = "debuff", unit = "target", talent = 103796 }, -- Void Torrent
        { spell = 322098, type = "debuff", unit = "target", talent = 103863 }, -- Death and Madness
        { spell = 335467, type = "debuff", unit = "target", talent = 103808 }, -- Devouring Plague
        { spell = 373281, type = "debuff", unit = "target" }, -- Echoing Void
        { spell = 390669, type = "debuff", unit = "target", talent = 103839 }, -- Apathy
        { spell = 391403, type = "debuff", unit = "target" }, -- Mind Flay: Insanity
        { spell = 394976, type = "debuff", unit = "target" }, -- Mind Sear
        { spell = 453850, type = "debuff", unit = "target", herotalent = 117284 }, -- Resonant Energy
      },
      icon = 136207
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 17, type = "ability", buff = true, usable = true }, -- Power Word: Shield
        { spell = 453, type = "ability", usable = true }, -- Mind Soothe
        { spell = 586, type = "ability", buff = true, usable = true }, -- Fade
        { spell = 8092, type = "ability", charges = true, overlayGlow = true, usable = true }, -- Mind Blast
        { spell = 8122, type = "ability", debuff = true, usable = true }, -- Psychic Scream
        { spell = 10060, type = "ability", buff = true, usable = true, talent = 103844 }, -- Power Infusion
        { spell = 15286, type = "ability", buff = true, talent = 103841 }, -- Vampiric Embrace
        { spell = 15487, type = "ability", debuff = true, usable = true, talent = 103792 }, -- Silence
        { spell = 32375, type = "ability", usable = true, talent = 103849 }, -- Mass Dispel
        { spell = 32379, type = "ability", charges = true, overlayGlow = true, usable = true, talent = 103864 }, -- Shadow Word: Death
        { spell = 33076, type = "ability", usable = true, talent = 103870 }, -- Prayer of Mending
        { spell = 34433, type = "ability", talent = 103865 }, -- Shadowfiend
        { spell = 47585, type = "ability", buff = true, talent = 103806 }, -- Dispersion
        { spell = 64044, type = "ability", debuff = true, talent = 103793 }, -- Psychic Horror
        { spell = 108920, type = "ability", talent = 103859 }, -- Void Tendrils
        { spell = 108968, type = "ability", talent = 103820 }, -- Void Shift
        { spell = 120644, type = "ability", usable = true, talent = 103827 }, -- Halo
        { spell = 121536, type = "ability", charges = true, usable = true, talent = 103853 }, -- Angelic Feather
        { spell = 122121, type = "ability", talent = 103828 }, -- Divine Star
        { spell = 194249, type = "ability", buff = true }, -- Voidform
        { spell = 200174, type = "ability", totem = true, usable = true, talent = 103788 }, -- Mindbender
        { spell = 205364, type = "ability", talent = 103678 }, -- Dominate Mind
        { spell = 205385, type = "ability", talent = 125983 }, -- Shadow Crash
        { spell = 205448, type = "ability" }, -- Void Bolt
        { spell = 213634, type = "ability", usable = true, talent = 103854 }, -- Purify Disease
        { spell = 228260, type = "ability", talent = 103674 }, -- Void Eruption
        { spell = 263165, type = "ability", debuff = true, talent = 103796 }, -- Void Torrent
        { spell = 373481, type = "ability", talent = 103822 }, -- Power Word: Life
        { spell = 391109, type = "ability", buff = true, usable = true, talent = 103680 }, -- Dark Ascension
        { spell = 391403, type = "ability", charges = true, debuff = true, overlayGlow = true }, -- Mind Flay: Insanity
        { spell = 457042, type = "ability", usable = true, talent = 103813 }, -- Shadow Crash
      },
      icon = 136230
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\Icons\\spell_priest_shadoworbs",
    },
  },
}

templates.class.SHAMAN = {
  [1] = { -- Elemental
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 546, type = "buff", unit = "player" }, -- Water Walking
        { spell = 2645, type = "buff", unit = "player" }, -- Ghost Wolf
        { spell = 2825, type = "buff", unit = "player" }, -- Bloodlust
        { spell = 58875, type = "buff", unit = "player", talent = 127865 }, -- Spirit Walk
        { spell = 77762, type = "buff", unit = "player" }, -- Lava Surge
        { spell = 79206, type = "buff", unit = "player", talent = 127857 }, -- Spiritwalker's Grace
        { spell = 108271, type = "buff", unit = "player", talent = 127893 }, -- Astral Shift
        { spell = 1219480, type = "buff", unit = "player", talent = 101860 }, -- Ascendance
        { spell = 114893, type = "buff", unit = "player" }, -- Stone Bulwark
        { spell = 191634, type = "buff", unit = "player", talent = 101860 }, -- Stormkeeper
        { spell = 191877, type = "buff", unit = "player", talent = 101892 }, -- Power of the Maelstrom
        { spell = 192082, type = "buff", unit = "player" }, -- Wind Rush
        { spell = 192106, type = "buff", unit = "player" }, -- Lightning Shield
        { spell = 260734, type = "buff", unit = "player", talent = 101879 }, -- Master of the Elements
        { spell = 260881, type = "buff", unit = "player", talent = 127854 }, -- Spirit Wolf
        { spell = 263806, type = "buff", unit = "player" }, -- Wind Gust
        { spell = 285514, type = "buff", unit = "player", talent = 101873 }, -- Surge of Power
        { spell = 381755, type = "buff", unit = "player", talent = 127858 }, -- Earth Elemental
        { spell = 381761, type = "buff", unit = "player", talent = 127889 }, -- Primordial Bond
        { spell = 381933, type = "buff", unit = "player", talent = 101883 }, -- Magma Chamber
        { spell = 382028, type = "buff", unit = "player", talent = 101886 }, -- Improved Flametongue Weapon
        { spell = 382043, type = "buff", unit = "player", talent = 101844 }, -- Splintered Elements
        { spell = 382217, type = "buff", unit = "player", talent = 127891 }, -- Winds of Al'Akir
        { spell = 383648, type = "buff", unit = "player", talent = 127871 }, -- Earth Shield
        { spell = 384088, type = "buff", unit = "player", talent = 101862 }, -- Echoes of Great Sundering
        { spell = 443454, type = "buff", unit = "player", herotalent = 117491 }, -- Ancestral Swiftness
        { spell = 447244, type = "buff", unit = "player", herotalent = 117485 }, -- Call of the Ancestors
        { spell = 454015, type = "buff", unit = "player", herotalent = 117489 }, -- Tempest
        { spell = 454025, type = "buff", unit = "player", herotalent = 128226 }, -- Electroshock
        { spell = 454376, type = "buff", unit = "player", herotalent = 125617 }, -- Surging Currents
        { spell = 454394, type = "buff", unit = "player", herotalent = 117483 }, -- Unlimited Power
        { spell = 455089, type = "buff", unit = "player", herotalent = 117470 }, -- Storm Swell
        { spell = 462131, type = "buff", unit = "player", herotalent = 117464 }, -- Awakening Storms
        { spell = 462725, type = "buff", unit = "player", talent = 127917 }, -- Storm Frenzy
        { spell = 462818, type = "buff", unit = "player", talent = 101870 }, -- Icefury
        { spell = 462854, type = "buff", unit = "player" }, -- Skyfury
        { spell = 468226, type = "buff", unit = "player", herotalent = 117460 }, -- Lightning Conduit
        { spell = 157348, type = "buff", unit = "pet" }, -- Call Lightning
      },
      icon = 135863
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 51490, type = "debuff", unit = "target", talent = 127878 }, -- Thunderstorm
        { spell = 64695, type = "debuff", unit = "target" }, -- Earthgrab
        { spell = 77505, type = "debuff", unit = "target", talent = 127925 }, -- Earthquake
        { spell = 116947, type = "debuff", unit = "target" }, -- Earthbind
        { spell = 118297, type = "debuff", unit = "target" }, -- Immolate
        { spell = 118345, type = "debuff", unit = "target" }, -- Pulverize
        { spell = 118905, type = "debuff", unit = "target", talent = 127896 }, -- Static Charge
        { spell = 157375, type = "debuff", unit = "target", herotalent = 117489 }, -- Tempest
        { spell = 188389, type = "debuff", unit = "target" }, -- Flame Shock
        { spell = 196840, type = "debuff", unit = "target", talent = 127879 }, -- Frost Shock
        { spell = 197209, type = "debuff", unit = "target", talent = 101864 }, -- Lightning Rod
        { spell = 285515, type = "debuff", unit = "target", talent = 101873 }, -- Surge of Power
        { spell = 454025, type = "debuff", unit = "target", herotalent = 117460 }, -- Shocking Grasp
        { spell = 454029, type = "debuff", unit = "target", herotalent = 117477 }, -- Nature's Protection
      },
      icon = 135813
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 370, type = "ability", requiresTarget = true, talent = 127905 }, -- Purge
        { spell = 556, type = "ability", usable = true }, -- Astral Recall
        { spell = 2825, type = "ability", buff = true }, -- Bloodlust
        { spell = 5394, type = "ability", totem = true, talent = 127863 }, -- Healing Stream Totem
        { spell = 8042, type = "ability", overlayGlow = true, requiresTarget = true, talent = 101854 }, -- Earth Shock
        { spell = 8143, type = "ability", totem = true, talent = 127868 }, -- Tremor Totem
        { spell = 51485, type = "ability", totem = true, talent = 127894 }, -- Earthgrab Totem
        { spell = 51490, type = "ability", debuff = true, talent = 127878 }, -- Thunderstorm
        { spell = 51505, type = "ability", charges = true, overlayGlow = true, requiresTarget = true, talent = 127873 }, -- Lava Burst
        { spell = 51514, type = "ability", talent = 127903 }, -- Hex
        { spell = 51886, type = "ability", talent = 127884 }, -- Cleanse Spirit
        { spell = 57994, type = "ability", requiresTarget = true, talent = 127892 }, -- Wind Shear
        { spell = 58875, type = "ability", buff = true, talent = 127865 }, -- Spirit Walk
        { spell = 61882, type = "ability", overlayGlow = true, requiresTarget = true, talent = 127925 }, -- Earthquake
        { spell = 73899, type = "ability", requiresTarget = true }, -- Primal Strike
        { spell = 79206, type = "ability", buff = true, talent = 127857 }, -- Spiritwalker's Grace
        { spell = 108270, type = "ability", totem = true, talent = 127911 }, -- Stone Bulwark Totem
        { spell = 108271, type = "ability", buff = true, talent = 127893 }, -- Astral Shift
        { spell = 108285, type = "ability", talent = 127870 }, -- Totemic Recall
        { spell = 108287, type = "ability", talent = 127859 }, -- Totemic Projection
        { spell = 114050, type = "ability", buff = true, talent = 101860 }, -- Ascendance
        { spell = 188196, type = "ability", overlayGlow = true, requiresTarget = true }, -- Lightning Bolt
        { spell = 188389, type = "ability", debuff = true, requiresTarget = true }, -- Flame Shock
        { spell = 188443, type = "ability", overlayGlow = true, requiresTarget = true, talent = 127856 }, -- Chain Lightning
        { spell = 191634, type = "ability", buff = true, talent = 101860 }, -- Stormkeeper
        { spell = 192058, type = "ability", totem = true, talent = 127851 }, -- Capacitor Totem
        { spell = 192077, type = "ability", totem = true, talent = 127909 }, -- Wind Rush Totem
        { spell = 192222, type = "ability", totem = true, talent = 101884 }, -- Liquid Magma Totem
        { spell = 192249, type = "ability", requiresTarget = true, talent = 101849 }, -- Storm Elemental
        { spell = 196840, type = "ability", debuff = true, requiresTarget = true, talent = 127879 }, -- Frost Shock
        { spell = 198067, type = "ability", requiresTarget = true, totem = true, talent = 101850 }, -- Fire Elemental
        { spell = 198103, type = "ability", requiresTarget = true, talent = 127858 }, -- Earth Elemental
        { spell = 305483, type = "ability", requiresTarget = true, talent = 127862 }, -- Lightning Lasso
        { spell = 378773, type = "ability", requiresTarget = true, talent = 127904 }, -- Greater Purge
        { spell = 375982, type = "ability", requiresTarget = true, usable = true, talent = 101891 }, -- Primordial Wave
        { spell = 383013, type = "ability", totem = true, talent = 127885 }, -- Poison Cleansing Totem
        { spell = 443454, type = "ability", buff = true, usable = true, herotalent = 117491 }, -- Ancestral Swiftness
      },
      icon = 135963
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = 135990,
    },
  },
  [2] = { -- Enhancement
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 546, type = "buff", unit = "player" }, -- Water Walking
        { spell = 2645, type = "buff", unit = "player" }, -- Ghost Wolf
        { spell = 2825, type = "buff", unit = "player" }, -- Bloodlust
        { spell = 58875, type = "buff", unit = "player", talent = 127865 }, -- Spirit Walk
        { spell = 79206, type = "buff", unit = "player", talent = 127857 }, -- Spiritwalker's Grace
        { spell = 108271, type = "buff", unit = "player", talent = 127893 }, -- Astral Shift
        { spell = 114051, type = "buff", unit = "player", talent = 114291 }, -- Ascendance
        { spell = 114893, type = "buff", unit = "player" }, -- Stone Bulwark
        { spell = 118522, type = "buff", unit = "player" }, -- Elemental Blast: Critical Strike
        { spell = 173183, type = "buff", unit = "player" }, -- Elemental Blast: Haste
        { spell = 173184, type = "buff", unit = "player" }, -- Elemental Blast: Mastery
        { spell = 187878, type = "buff", unit = "player", talent = 101840 }, -- Crash Lightning
        { spell = 192082, type = "buff", unit = "player" }, -- Wind Rush
        { spell = 192106, type = "buff", unit = "player" }, -- Lightning Shield
        { spell = 198300, type = "buff", unit = "player", talent = 101839 }, -- Converging Storms
        { spell = 201846, type = "buff", unit = "player" }, -- Stormbringer
        { spell = 215785, type = "buff", unit = "player", talent = 101809 }, -- Hot Hand
        { spell = 224125, type = "buff", unit = "player" }, -- Molten Weapon
        { spell = 224126, type = "buff", unit = "player" }, -- Icy Edge
        { spell = 224127, type = "buff", unit = "player" }, -- Crackling Surge
        { spell = 260881, type = "buff", unit = "player", talent = 127854 }, -- Spirit Wolf
        { spell = 262652, type = "buff", unit = "player", talent = 101834 }, -- Forceful Winds
        { spell = 333957, type = "buff", unit = "player", talent = 101838 }, -- Feral Spirit
        { spell = 334196, type = "buff", unit = "player", talent = 101808 }, -- Hailstorm
        { spell = 344179, type = "buff", unit = "player" }, -- Maelstrom Weapon
        { spell = 378076, type = "buff", unit = "player", talent = 127853 }, -- Thunderous Paws
        { spell = 378078, type = "buff", unit = "player", talent = 127907 }, -- Spiritwalker's Aegis
        { spell = 378081, type = "buff", unit = "player", talent = 127899 }, -- Nature's Swiftness
        { spell = 381755, type = "buff", unit = "player", talent = 127858 }, -- Earth Elemental
        { spell = 381761, type = "buff", unit = "player", talent = 127889 }, -- Primordial Bond
        { spell = 382217, type = "buff", unit = "player", talent = 127891 }, -- Winds of Al'Akir
        { spell = 382889, type = "buff", unit = "player", talent = 101799 }, -- Flurry
        { spell = 383648, type = "buff", unit = "player", talent = 127871 }, -- Earth Shield
        { spell = 384352, type = "buff", unit = "player", talent = 101824 }, -- Doom Winds
        { spell = 384451, type = "buff", unit = "player", talent = 101815 }, -- Legacy of the Frost Witch
        { spell = 384357, type = "buff", unit = "player" }, -- Ice Strike
        { spell = 390371, type = "buff", unit = "player", talent = 101811 }, -- Ashen Catalyst
        { spell = 392375, type = "buff", unit = "player" }, -- Earthen Weapon
        { spell = 453405, type = "buff", unit = "player" }, -- Whirling Fire
        { spell = 453406, type = "buff", unit = "player" }, -- Whirling Earth
        { spell = 453409, type = "buff", unit = "player" }, -- Whirling Air
        { spell = 454015, type = "buff", unit = "player", herotalent = 117489 }, -- Tempest
        { spell = 454025, type = "buff", unit = "player", herotalent = 128226 }, -- Electroshock
        { spell = 454376, type = "buff", unit = "player", herotalent = 125617 }, -- Surging Currents
        { spell = 454394, type = "buff", unit = "player", herotalent = 117483 }, -- Unlimited Power
        { spell = 455097, type = "buff", unit = "player", herotalent = 125616 }, -- Arc Discharge
        { spell = 455089, type = "buff", unit = "player", herotalent = 117470 }, -- Storm Swell
        { spell = 456369, type = "buff", unit = "player", herotalent = 117471 }, -- Amplification Core
        { spell = 457387, type = "buff", unit = "player", herotalent = 117488 }, -- Wind Barrier
        { spell = 458269, type = "buff", unit = "player", herotalent = 117487 }, -- Totemic Rebound
        { spell = 461242, type = "buff", unit = "player", herotalent = 117479 }, -- Lively Totems
        { spell = 462131, type = "buff", unit = "player", herotalent = 117464 }, -- Awakening Storms
        { spell = 462854, type = "buff", unit = "player" }, -- Skyfury
        { spell = 468226, type = "buff", unit = "player", herotalent = 117460 }, -- Lightning Conduit
        { spell = 470058, type = "buff", unit = "player", talent = 128270 }, -- Voltaic Blaze
        { spell = 1218125, type = "buff", unit = "player", talent = 101828 }, -- Primordial Storm
      },
      icon = 136099
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 51490, type = "debuff", unit = "target", talent = 127878 }, -- Thunderstorm
        { spell = 64695, type = "debuff", unit = "target" }, -- Earthgrab
        { spell = 116947, type = "debuff", unit = "target" }, -- Earthbind
        { spell = 118905, type = "debuff", unit = "target", talent = 127896 }, -- Static Charge
        { spell = 188389, type = "debuff", unit = "target" }, -- Flame Shock
        { spell = 196840, type = "debuff", unit = "target", talent = 127879 }, -- Frost Shock
        { spell = 197209, type = "debuff", unit = "target", talent = 101864 }, -- Lightning Rod
        { spell = 197214, type = "debuff", unit = "target", talent = 101841 }, -- Sundering
        { spell = 305485, type = "debuff", unit = "target", talent = 127862 }, -- Lightning Lasso
        { spell = 334168, type = "debuff", unit = "target", talent = 101812 }, -- Lashing Flames
        { spell = 342240, type = "debuff", unit = "target" }, -- Ice Strike
        { spell = 454025, type = "debuff", unit = "target", herotalent = 117460 }, -- Shocking Grasp
      },
      icon = 462327
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 370, type = "ability", requiresTarget = true, talent = 127905 }, -- Purge
        { spell = 556, type = "ability", usable = true }, -- Astral Recall
        { spell = 2825, type = "ability", buff = true }, -- Bloodlust
        { spell = 5394, type = "ability", totem = true, talent = 127863 }, -- Healing Stream Totem
        { spell = 8143, type = "ability", totem = true, talent = 127868 }, -- Tremor Totem
        { spell = 17364, type = "ability", charges = true, overlayGlow = true, requiresTarget = true, usable = true }, -- Stormstrike
        { spell = 51485, type = "ability", totem = true, talent = 127894 }, -- Earthgrab Totem
        { spell = 51490, type = "ability", debuff = true, talent = 127878 }, -- Thunderstorm
        { spell = 51505, type = "ability", overlayGlow = true, requiresTarget = true, talent = 127873 }, -- Lava Burst
        { spell = 51514, type = "ability", talent = 127903 }, -- Hex
        { spell = 51533, type = "ability", requiresTarget = true, talent = 101838 }, -- Feral Spirit
        { spell = 51886, type = "ability", talent = 127884 }, -- Cleanse Spirit
        { spell = 57994, type = "ability", requiresTarget = true, talent = 127892 }, -- Wind Shear
        { spell = 58875, type = "ability", buff = true, talent = 127865 }, -- Spirit Walk
        { spell = 60103, type = "ability", overlayGlow = true, requiresTarget = true, usable = true, talent = 101805 }, -- Lava Lash
        { spell = 79206, type = "ability", buff = true, talent = 127857 }, -- Spiritwalker's Grace
        { spell = 108270, type = "ability", totem = true, talent = 127911 }, -- Stone Bulwark Totem
        { spell = 108271, type = "ability", buff = true, talent = 127893 }, -- Astral Shift
        { spell = 108285, type = "ability", talent = 127870 }, -- Totemic Recall
        { spell = 108287, type = "ability", talent = 127859 }, -- Totemic Projection
        { spell = 114051, type = "ability", buff = true, talent = 114291 }, -- Ascendance
        { spell = 115356, type = "ability", overlayGlow = true }, -- Windstrike
        { spell = 117014, type = "ability", charges = true, overlayGlow = true, requiresTarget = true, talent = 117750 }, -- Elemental Blast
        { spell = 187874, type = "ability", talent = 101840 }, -- Crash Lightning
        { spell = 188196, type = "ability", overlayGlow = true, requiresTarget = true }, -- Lightning Bolt
        { spell = 188389, type = "ability", debuff = true, requiresTarget = true }, -- Flame Shock
        { spell = 188443, type = "ability", overlayGlow = true, requiresTarget = true, talent = 127856 }, -- Chain Lightning
        { spell = 192058, type = "ability", totem = true, talent = 127851 }, -- Capacitor Totem
        { spell = 192063, type = "ability", talent = 127864 }, -- Gust of Wind
        { spell = 192077, type = "ability", talent = 127909 }, -- Wind Rush Totem
        { spell = 196840, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true, talent = 127879 }, -- Frost Shock
        { spell = 196884, type = "ability", requiresTarget = true }, -- Feral Lunge
        { spell = 197214, type = "ability", debuff = true, talent = 101841 }, -- Sundering
        { spell = 198103, type = "ability", requiresTarget = true, totem = true, talent = 127858 }, -- Earth Elemental
        { spell = 204406, type = "ability", talent = 127878 }, -- Thunderstorm
        { spell = 305483, type = "ability", requiresTarget = true, talent = 127862 }, -- Lightning Lasso
        { spell = 333974, type = "ability", talent = 101807 }, -- Fire Nova
        { spell = 378081, type = "ability", buff = true, usable = true, talent = 127899 }, -- Nature's Swiftness
        { spell = 378773, type = "ability", requiresTarget = true, talent = 127904 }, -- Greater Purge
        { spell = 375982, type = "ability", usable = true, talent = 101830 }, -- Primordial Wave
        { spell = 383013, type = "ability", talent = 127885 }, -- Poison Cleansing Totem
        { spell = 384352, type = "ability", buff = true, requiresTarget = true, talent = 101824 }, -- Doom Winds
        { spell = 444995, type = "ability", totem = true, herotalent = 117474 }, -- Surging Totem
        { spell = 470194, type = "ability", debuff = true, requiresTarget = true }, -- Ice Strike^

      },
      icon = 1370984
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = 135990,
    },
  },
  [3] = { -- Restoration
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 546, type = "buff", unit = "player" }, -- Water Walking
        { spell = 974, type = "buff", unit = "player", talent = 127871 }, -- Earth Shield
        { spell = 2645, type = "buff", unit = "player" }, -- Ghost Wolf
        { spell = 2825, type = "buff", unit = "player" }, -- Bloodlust
        { spell = 52127, type = "buff", unit = "player" }, -- Water Shield
        { spell = 53390, type = "buff", unit = "player", talent = 101899 }, -- Tidal Waves
        { spell = 58875, type = "buff", unit = "player", talent = 127865 }, -- Spirit Walk
        { spell = 61295, type = "buff", unit = "player", talent = 101905 }, -- Riptide
        { spell = 73685, type = "buff", unit = "player", talent = 101918 }, -- Unleash Life
        { spell = 73920, type = "buff", unit = "player", talent = 101923 }, -- Healing Rain
        { spell = 77762, type = "buff", unit = "player" }, -- Lava Surge
        { spell = 79206, type = "buff", unit = "player", talent = 127857 }, -- Spiritwalker's Grace
        { spell = 108271, type = "buff", unit = "player", talent = 127893 }, -- Astral Shift
        { spell = 114052, type = "buff", unit = "player", talent = 101942 }, -- Ascendance
        { spell = 114893, type = "buff", unit = "player" }, -- Stone Bulwark
        { spell = 157504, type = "buff", unit = "player", talent = 101933 }, -- Cloudburst Totem
        { spell = 192082, type = "buff", unit = "player" }, -- Wind Rush
        { spell = 192106, type = "buff", unit = "player" }, -- Lightning Shield
        { spell = 201633, type = "buff", unit = "player" }, -- Earthen Wall
        { spell = 207400, type = "buff", unit = "player", talent = 127673 }, -- Ancestral Vigor
        { spell = 207778, type = "buff", unit = "player", talent = 101842 }, -- Downpour
        { spell = 216251, type = "buff", unit = "player", talent = 101919 }, -- Undulation
        { spell = 236502, type = "buff", unit = "player", talent = 101924 }, -- Tidebringer
        { spell = 260881, type = "buff", unit = "player", talent = 127854 }, -- Spirit Wolf
        { spell = 325174, type = "buff", unit = "player", talent = 101913 }, -- Spirit Link Totem
        { spell = 378076, type = "buff", unit = "player", talent = 127853 }, -- Thunderous Paws
        { spell = 378078, type = "buff", unit = "player", talent = 127907 }, -- Spiritwalker's Aegis
        { spell = 381755, type = "buff", unit = "player", talent = 127858 }, -- Earth Elemental
        { spell = 381761, type = "buff", unit = "player", talent = 127889 }, -- Primordial Bond
        { spell = 382024, type = "buff", unit = "player", talent = 101935 }, -- Earthliving Weapon
        { spell = 382217, type = "buff", unit = "player", talent = 127891 }, -- Winds of Al'Akir
        { spell = 383235, type = "buff", unit = "player", talent = 101939 }, -- Undercurrent
        { spell = 404523, type = "buff", unit = "player", talent = 114817 }, -- Spiritwalker's Tidal Totem
        { spell = 443454, type = "buff", unit = "player", herotalent = 117491 }, -- Ancestral Swiftness
        { spell = 447244, type = "buff", unit = "player", herotalent = 117485 }, -- Call of the Ancestors
        { spell = 453406, type = "buff", unit = "player" }, -- Whirling Earth
        { spell = 453407, type = "buff", unit = "player" }, -- Whirling Water
        { spell = 453409, type = "buff", unit = "player" }, -- Whirling Air
        { spell = 456369, type = "buff", unit = "player", herotalent = 117471 }, -- Amplification Core
        { spell = 457387, type = "buff", unit = "player", herotalent = 117488 }, -- Wind Barrier
        { spell = 462377, type = "buff", unit = "player", talent = 101896 }, -- Master of the Elements
        { spell = 462568, type = "buff", unit = "player", talent = 127876 }, -- Elemental Resistance
        { spell = 462854, type = "buff", unit = "player" }, -- Skyfury
        { spell = 467665, type = "buff", unit = "player" }, -- Swelling Tide
        { spell = 470077, type = "buff", unit = "player", talent = 128332 }, -- Coalescing Water
      },
      icon = 252995
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 51490, type = "debuff", unit = "target", talent = 127878 }, -- Thunderstorm
        { spell = 64695, type = "debuff", unit = "target" }, -- Earthgrab
        { spell = 116947, type = "debuff", unit = "target" }, -- Earthbind
        { spell = 118905, type = "debuff", unit = "target", talent = 127896 }, -- Static Charge
        { spell = 188389, type = "debuff", unit = "target" }, -- Flame Shock
        { spell = 196840, type = "debuff", unit = "target", talent = 127879 }, -- Frost Shock
        { spell = 305485, type = "debuff", unit = "target", talent = 127862 }, -- Lightning Lasso
      },
      icon = 135813
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 370, type = "ability", requiresTarget = true, talent = 127905 }, -- Purge
        { spell = 556, type = "ability", usable = true }, -- Astral Recall
        { spell = 2484, type = "ability" }, -- Earthbind Totem
        { spell = 2825, type = "ability", buff = true }, -- Bloodlust
        { spell = 5394, type = "ability", charges = true, totem = true, talent = 127863 }, -- Healing Stream Totem
        { spell = 8004, type = "ability", charges = true, overlayGlow = true }, -- Healing Surge
        { spell = 8143, type = "ability", totem = true, talent = 127868 }, -- Tremor Totem
        { spell = 51485, type = "ability", totem = true, talent = 127894 }, -- Earthgrab Totem
        { spell = 51490, type = "ability", debuff = true, talent = 127878 }, -- Thunderstorm
        { spell = 51505, type = "ability", charges = true, overlayGlow = true, requiresTarget = true, talent = 127873 }, -- Lava Burst
        { spell = 51514, type = "ability", talent = 127903 }, -- Hex
        { spell = 57994, type = "ability", requiresTarget = true, talent = 127892 }, -- Wind Shear
        { spell = 58875, type = "ability", buff = true, talent = 127865 }, -- Spirit Walk
        { spell = 61295, type = "ability", charges = true, buff = true, talent = 101905 }, -- Riptide
        { spell = 73685, type = "ability", buff = true, talent = 101918 }, -- Unleash Life
        { spell = 73899, type = "ability", requiresTarget = true }, -- Primal Strike
        { spell = 73920, type = "ability", buff = true, talent = 101923 }, -- Healing Rain
        { spell = 77472, type = "ability", charges = true, overlayGlow = true }, -- Healing Wave
        { spell = 79206, type = "ability", buff = true, talent = 127857 }, -- Spiritwalker's Grace
        { spell = 98008, type = "ability", totem = true, talent = 101913 }, -- Spirit Link Totem
        { spell = 108270, type = "ability", totem = true, talent = 127911 }, -- Stone Bulwark Totem
        { spell = 108271, type = "ability", buff = true, talent = 127893 }, -- Astral Shift
        { spell = 108280, type = "ability", totem = true, talent = 101912 }, -- Healing Tide Totem
        { spell = 108285, type = "ability", talent = 127870 }, -- Totemic Recall
        { spell = 108287, type = "ability", talent = 127859 }, -- Totemic Projection
        { spell = 114052, type = "ability", buff = true, talent = 101942 }, -- Ascendance
        { spell = 157153, type = "ability", charges = true, totem = true, talent = 101933 }, -- Cloudburst Totem
        { spell = 188196, type = "ability", requiresTarget = true }, -- Lightning Bolt
        { spell = 188389, type = "ability", debuff = true, requiresTarget = true }, -- Flame Shock
        { spell = 188443, type = "ability", requiresTarget = true, talent = 127856 }, -- Chain Lightning
        { spell = 192058, type = "ability", totem = true, talent = 127851 }, -- Capacitor Totem
        { spell = 192063, type = "ability", talent = 127864 }, -- Gust of Wind
        { spell = 192077, type = "ability", totem = true, talent = 127909 }, -- Wind Rush Totem
        { spell = 196840, type = "ability", debuff = true, requiresTarget = true, talent = 127879 }, -- Frost Shock
        { spell = 197995, type = "ability", talent = 127676 }, -- Wellspring
        { spell = 198103, type = "ability", requiresTarget = true, totem = true, talent = 127858 }, -- Earth Elemental
        { spell = 198838, type = "ability", totem = true, talent = 101931 }, -- Earthen Wall Totem
        { spell = 201764, type = "ability" }, -- Recall Cloudburst Totem
        { spell = 207399, type = "ability", talent = 101930 }, -- Ancestral Protection Totem
        { spell = 305483, type = "ability", requiresTarget = true, talent = 127862 }, -- Lightning Lasso
        { spell = 378773, type = "ability", requiresTarget = true, talent = 127904 }, -- Greater Purge
        { spell = 443454, type = "ability", buff = true, usable = true, herotalent = 117491 }, -- Ancestral Swiftness
        { spell = 444995, type = "ability", totem = true, herotalent = 117474 }, -- Surging Totem
      },
      icon = 135127
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  },
}

templates.class.MAGE = {
  [1] = { -- Arcane
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 66, type = "buff", unit = "player" }, -- Invisibility
        { spell = 130, type = "buff", unit = "player" }, -- Slow Fall
        { spell = 1459, type = "buff", unit = "player" }, -- Arcane Intellect
        { spell = 12051, type = "buff", unit = "player", talent = 126529 }, -- Evocation
        { spell = 45438, type = "buff", unit = "player", talent = 80181 }, -- Ice Block
        { spell = 55342, type = "buff", unit = "player", talent = 80183 }, -- Mirror Image
        { spell = 80353, type = "buff", unit = "player" }, -- Time Warp
        { spell = 110960, type = "buff", unit = "player", talent = 115877 }, -- Greater Invisibility
        { spell = 116267, type = "buff", unit = "player", talent = 80177 }, -- Incanter's Flow
        { spell = 205025, type = "buff", unit = "player", talent = 126530 }, -- Presence of Mind
        { spell = 210126, type = "buff", unit = "player", talent = 126509 }, -- Arcane Familiar
        { spell = 235450, type = "buff", unit = "player", talent = 80180 }, -- Prismatic Barrier
        { spell = 263725, type = "buff", unit = "player" }, -- Clearcasting
        { spell = 321388, type = "buff", unit = "player", talent = 126540 }, -- Enlightened
        { spell = 342246, type = "buff", unit = "player", talent = 80174 }, -- Alter Time
        { spell = 365362, type = "buff", unit = "player", talent = 126519 }, -- Arcane Surge
        { spell = 382290, type = "buff", unit = "player", talent = 80169 }, -- Tempest Barrier
        { spell = 382294, type = "buff", unit = "player", talent = 80170 }, -- Incantation of Swiftness
        { spell = 382440, type = "buff", unit = "player", talent = 80171 }, -- Shifting Power
        { spell = 382824, type = "buff", unit = "player", talent = 80156 }, -- Temporal Velocity
        { spell = 383783, type = "buff", unit = "player", talent = 126543 }, -- Nether Precision
        { spell = 383997, type = "buff", unit = "player", talent = 126506 }, -- Arcane Tempo
        { spell = 384267, type = "buff", unit = "player" }, -- Siphon Storm
        { spell = 384455, type = "buff", unit = "player", talent = 126517 }, -- Arcane Harmony
        { spell = 389714, type = "buff", unit = "player" }, -- Displacement Beacon
        { spell = 393939, type = "buff", unit = "player", talent = 126550 }, -- Impetus
        { spell = 394195, type = "buff", unit = "player", talent = 80179 }, -- Overflowing Energy
        { spell = 414658, type = "buff", unit = "player", talent = 80141 }, -- Ice Cold
        { spell = 444754, type = "buff", unit = "player", herotalent = 117262 }, -- Slippery Slinging
        { spell = 444981, type = "buff", unit = "player", herotalent = 123407 }, -- Unerring Proficiency
        { spell = 448604, type = "buff", unit = "player" }, -- Spellfire Sphere
        { spell = 448659, type = "buff", unit = "player" }, -- Arcane Phoenix
        { spell = 449322, type = "buff", unit = "player", herotalent = 117256 }, -- Mana Cascade
        { spell = 449331, type = "buff", unit = "player", herotalent = 117252 }, -- Merely a Setback
        { spell = 449400, type = "buff", unit = "player", herotalent = 117250 }, -- Spellfire Spheres
        { spell = 451038, type = "buff", unit = "player" }, -- Arcane Soul
        { spell = 451049, type = "buff", unit = "player", herotalent = 117247 }, -- Burden of Power
        { spell = 451073, type = "buff", unit = "player", herotalent = 117248 }, -- Glorious Incandescence
        { spell = 453601, type = "buff", unit = "player", talent = 126546 }, -- Aether Attunement
        { spell = 453758, type = "buff", unit = "player", talent = 126544 }, -- Leydrinker
        { spell = 461145, type = "buff", unit = "player" }, -- Lingering Embers
        { spell = 461515, type = "buff", unit = "player", talent = 126545 }, -- Static Cloud
        { spell = 461531, type = "buff", unit = "player", talent = 126516 }, -- Big Brained
        { spell = 467634, type = "buff", unit = "player", talent = 126518 }, -- Aethervision
        { spell = 1223797, type = "buff", unit = "player", talent = 126541 }, -- Intuition
      },
      icon = 136096
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 122, type = "debuff", unit = "target" }, -- Frost Nova
        { spell = 31589, type = "debuff", unit = "target", talent = 80154 }, -- Slow
        { spell = 31661, type = "debuff", unit = "target", talent = 125819 }, -- Dragon's Breath
        { spell = 59638, type = "debuff", unit = "target" }, -- Frostbolt
        { spell = 82691, type = "debuff", unit = "target", talent = 80144 }, -- Ring of Frost
        { spell = 157981, type = "debuff", unit = "target", talent = 80160 }, -- Blast Wave
        { spell = 157997, type = "debuff", unit = "target", talent = 125820 }, -- Ice Nova
        { spell = 205708, type = "debuff", unit = "target" }, -- Chilled
        { spell = 210824, type = "debuff", unit = "target", talent = 126538 }, -- Touch of the Magi
        { spell = 386770, type = "debuff", unit = "target", talent = 80143 }, -- Freezing Cold
        { spell = 444735, type = "debuff", unit = "target" }, -- Embedded Arcane Splinter
        { spell = 453599, type = "debuff", unit = "target", talent = 126533 }, -- Arcane Debilitation
        { spell = 454004, type = "debuff", unit = "target", talent = 126504 }, -- Nether Munitions
        { spell = 454214, type = "debuff", unit = "target", herotalent = 117266 }, -- Controlled Instincts
        { spell = 461498, type = "debuff", unit = "target", talent = 126526 }, -- Dematerialize
      },
      icon = 135848
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 66, type = "ability", buff = true }, -- Invisibility
        { spell = 116, type = "ability", requiresTarget = true }, -- Frostbolt
        { spell = 120, type = "ability" }, -- Cone of Cold
        { spell = 122, type = "ability", charges = true, debuff = true }, -- Frost Nova
        { spell = 475, type = "ability", talent = 80175 }, -- Remove Curse
        { spell = 2139, type = "ability", requiresTarget = true }, -- Counterspell
        { spell = 5143, type = "ability", overlayGlow = true, requiresTarget = true, usable = true, talent = 126537 }, -- Arcane Missiles
        { spell = 12051, type = "ability", buff = true, talent = 126529 }, -- Evocation
        { spell = 30449, type = "ability", requiresTarget = true, talent = 80140 }, -- Spellsteal
        { spell = 30451, type = "ability", requiresTarget = true }, -- Arcane Blast
        { spell = 31589, type = "ability", debuff = true, requiresTarget = true, talent = 80154 }, -- Slow
        { spell = 31661, type = "ability", debuff = true, talent = 125819 }, -- Dragon's Breath
        { spell = 44425, type = "ability", overlayGlow = true, requiresTarget = true }, -- Arcane Barrage
        { spell = 45438, type = "ability", buff = true, talent = 80181 }, -- Ice Block
        { spell = 55342, type = "ability", buff = true, talent = 80183 }, -- Mirror Image
        { spell = 80353, type = "ability", buff = true }, -- Time Warp
        { spell = 108839, type = "ability", charges = true, talent = 80162 }, -- Ice Floes
        { spell = 110959, type = "ability", talent = 115877 }, -- Greater Invisibility
        { spell = 113724, type = "ability", talent = 80144 }, -- Ring of Frost
        { spell = 153626, type = "ability", charges = true }, -- Arcane Orb
        { spell = 157980, type = "ability", talent = 125818 }, -- Supernova
        { spell = 157981, type = "ability", debuff = true, talent = 80160 }, -- Blast Wave
        { spell = 157997, type = "ability", debuff = true, requiresTarget = true, talent = 125820 }, -- Ice Nova
        { spell = 190336, type = "ability" }, -- Conjure Refreshment
        { spell = 205025, type = "ability", buff = true, talent = 126530 }, -- Presence of Mind
        { spell = 212653, type = "ability", charges = true, talent = 80163 }, -- Shimmer
        { spell = 235450, type = "ability", buff = true, talent = 80180 }, -- Prismatic Barrier
        { spell = 319836, type = "ability", requiresTarget = true }, -- Fire Blast
        { spell = 321507, type = "ability", requiresTarget = true, talent = 126538 }, -- Touch of the Magi
        { spell = 342245, type = "ability", talent = 80174 }, -- Alter Time
        { spell = 365350, type = "ability", requiresTarget = true, talent = 126519 }, -- Arcane Surge
        { spell = 382440, type = "ability", buff = true, talent = 80171 }, -- Shifting Power
        { spell = 383121, type = "ability", talent = 80164 }, -- Mass Polymorph
        { spell = 389713, type = "ability", usable = true, talent = 80152 }, -- Displacement
        { spell = 414658, type = "ability", buff = true, talent = 80141 }, -- Ice Cold
        { spell = 414660, type = "ability", talent = 125817 }, -- Mass Barrier
        { spell = 414664, type = "ability", buff = true, talent = 115878 }, -- Mass Invisibility
        { spell = 449700, type = "ability", herotalent = 123832 }, -- Gravity Lapse
      },
      icon = 136075
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\Icons\\spell_arcane_arcane01",
    },
  },
  [2] = { -- Fire
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 66, type = "buff", unit = "player" }, -- Invisibility
        { spell = 130, type = "buff", unit = "player" }, -- Slow Fall
        { spell = 1459, type = "buff", unit = "player" }, -- Arcane Intellect
        { spell = 11426, type = "buff", unit = "player" }, -- Ice Barrier
        { spell = 45438, type = "buff", unit = "player", talent = 80181 }, -- Ice Block
        { spell = 48107, type = "buff", unit = "player" }, -- Heating Up
        { spell = 48108, type = "buff", unit = "player" }, -- Hot Streak!
        { spell = 55342, type = "buff", unit = "player", talent = 80183 }, -- Mirror Image
        { spell = 80353, type = "buff", unit = "player" }, -- Time Warp
        { spell = 108839, type = "buff", unit = "player", talent = 80162 }, -- Ice Floes
        { spell = 110960, type = "buff", unit = "player", talent = 115877 }, -- Greater Invisibility
        { spell = 116267, type = "buff", unit = "player", talent = 80177 }, -- Incanter's Flow
        { spell = 190319, type = "buff", unit = "player", talent = 124756 }, -- Combustion
        { spell = 235313, type = "buff", unit = "player", talent = 80178 }, -- Blazing Barrier
        { spell = 236060, type = "buff", unit = "player" }, -- Frenetic Speed
        { spell = 342246, type = "buff", unit = "player", talent = 80174 }, -- Alter Time
        { spell = 382290, type = "buff", unit = "player", talent = 80169 }, -- Tempest Barrier
        { spell = 382294, type = "buff", unit = "player", talent = 80170 }, -- Incantation of Swiftness
        { spell = 382440, type = "buff", unit = "player", talent = 80171 }, -- Shifting Power
        { spell = 382824, type = "buff", unit = "player", talent = 80156 }, -- Temporal Velocity
        { spell = 383395, type = "buff", unit = "player", talent = 124777 }, -- Feel the Burn
        { spell = 383492, type = "buff", unit = "player", talent = 125942 }, -- Wildfire
        { spell = 383637, type = "buff", unit = "player", talent = 124764 }, -- Fiery Rush
        { spell = 383811, type = "buff", unit = "player", talent = 124783 }, -- Fevered Incantation
        { spell = 383874, type = "buff", unit = "player", talent = 125940 }, -- Hyperthermia
        { spell = 383882, type = "buff", unit = "player", talent = 124791 }, -- Sun King's Blessing
        { spell = 383883, type = "buff", unit = "player" }, -- Fury of the Sun King
        { spell = 384035, type = "buff", unit = "player", talent = 124757 }, -- Firefall
        { spell = 389714, type = "buff", unit = "player" }, -- Displacement Beacon
        { spell = 394195, type = "buff", unit = "player", talent = 80179 }, -- Overflowing Energy
        { spell = 408673, type = "buff", unit = "player" }, -- Calefaction
        { spell = 409964, type = "buff", unit = "player" }, -- Flame's Fury
        { spell = 414658, type = "buff", unit = "player", talent = 80141 }, -- Ice Cold
        { spell = 414664, type = "buff", unit = "player", talent = 115878 }, -- Mass Invisibility
        { spell = 431039, type = "buff", unit = "player" }, -- Frost Mastery
        { spell = 431040, type = "buff", unit = "player" }, -- Fire Mastery
        { spell = 431177, type = "buff", unit = "player", herotalent = 117235 }, -- Frostfire Empowerment
        { spell = 431190, type = "buff", unit = "player", herotalent = 117243 }, -- Severe Temperatures
        { spell = 438611, type = "buff", unit = "player", herotalent = 117242 }, -- Excess Frost
        { spell = 438624, type = "buff", unit = "player", herotalent = 117240 }, -- Excess Fire
        { spell = 448604, type = "buff", unit = "player" }, -- Spellfire Sphere
        { spell = 448659, type = "buff", unit = "player" }, -- Arcane Phoenix
        { spell = 449314, type = "buff", unit = "player", herotalent = 117256 }, -- Mana Cascade
        { spell = 449400, type = "buff", unit = "player", herotalent = 117250 }, -- Spellfire Spheres
        { spell = 451049, type = "buff", unit = "player", herotalent = 117247 }, -- Burden of Power
        { spell = 451073, type = "buff", unit = "player", herotalent = 117248 }, -- Glorious Incandescence
        { spell = 453207, type = "buff", unit = "player", talent = 124755 }, -- Lit Fuse
        { spell = 453283, type = "buff", unit = "player", talent = 126021 }, -- Flame Accelerant
        { spell = 453329, type = "buff", unit = "player", talent = 124770 }, -- Majesty of the Phoenix
        { spell = 453385, type = "buff", unit = "player", talent = 124765 }, -- Fire's Ire
        { spell = 457729, type = "buff", unit = "player", talent = 126020 }, -- Sparking Cinders
        { spell = 458964, type = "buff", unit = "player", talent = 126019 }, -- Heat Shimmer
        { spell = 461145, type = "buff", unit = "player" }, -- Lingering Embers
        { spell = 461515, type = "buff", unit = "player", talent = 126545 }, -- Static Cloud
        { spell = 1219307, type = "buff", unit = "player" }, -- Born of Flame
      },
      icon = 1035045
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 122, type = "debuff", unit = "target" }, -- Frost Nova
        { spell = 2120, type = "debuff", unit = "target" }, -- Flamestrike
        { spell = 12654, type = "debuff", unit = "target" }, -- Ignite
        { spell = 31589, type = "debuff", unit = "target", talent = 80154 }, -- Slow
        { spell = 31661, type = "debuff", unit = "target", talent = 125819 }, -- Dragon's Breath
        { spell = 59638, type = "debuff", unit = "target" }, -- Frostbolt
        { spell = 82691, type = "debuff", unit = "target", talent = 80144 }, -- Ring of Frost
        { spell = 155158, type = "debuff", unit = "target" }, -- Meteor Burn
        { spell = 157981, type = "debuff", unit = "target", talent = 80160 }, -- Blast Wave
        { spell = 217694, type = "debuff", unit = "target" }, -- Living Bomb
        { spell = 383608, type = "debuff", unit = "target", talent = 124774 }, -- Improved Scorch
        { spell = 386770, type = "debuff", unit = "target", talent = 80143 }, -- Freezing Cold
        { spell = 431044, type = "debuff", unit = "target", herotalent = 117244 }, -- Frostfire Bolt
        { spell = 449700, type = "debuff", unit = "target", herotalent = 123832 }, -- Gravity Lapse
        { spell = 453268, type = "debuff", unit = "target", talent = 124763 }, -- Controlled Destruction
      },
      icon = 135818
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 66, type = "ability", buff = true }, -- Invisibility
        { spell = 120, type = "ability" }, -- Cone of Cold
        { spell = 122, type = "ability", charges = true, debuff = true }, -- Frost Nova
        { spell = 475, type = "ability", talent = 80175 }, -- Remove Curse
        { spell = 2139, type = "ability" }, -- Counterspell
        { spell = 31661, type = "ability", debuff = true, talent = 125819 }, -- Dragon's Breath
        { spell = 45438, type = "ability", buff = true, talent = 80181 }, -- Ice Block
        { spell = 55342, type = "ability", buff = true, talent = 80183 }, -- Mirror Image
        { spell = 80353, type = "ability", buff = true }, -- Time Warp
        { spell = 108839, type = "ability", charges = true, buff = true, talent = 80162 }, -- Ice Floes
        { spell = 108853, type = "ability", charges = true, overlayGlow = true, talent = 124750 }, -- Fire Blast
        { spell = 110959, type = "ability", talent = 115877 }, -- Greater Invisibility
        { spell = 113724, type = "ability", talent = 80144 }, -- Ring of Frost
        { spell = 153561, type = "ability", talent = 124779 }, -- Meteor
        { spell = 157980, type = "ability", talent = 125818 }, -- Supernova
        { spell = 157981, type = "ability", debuff = true, talent = 80160 }, -- Blast Wave
        { spell = 190319, type = "ability", buff = true, talent = 124756 }, -- Combustion
        { spell = 190336, type = "ability" }, -- Conjure Refreshment
        { spell = 212653, type = "ability", charges = true, talent = 80163 }, -- Shimmer
        { spell = 235313, type = "ability", buff = true, talent = 80178 }, -- Blazing Barrier
        { spell = 257541, type = "ability", charges = true, overlayGlow = true, talent = 124775 }, -- Phoenix Flames
        { spell = 342245, type = "ability", talent = 80174 }, -- Alter Time
        { spell = 382440, type = "ability", buff = true, talent = 80171 }, -- Shifting Power
        { spell = 383121, type = "ability", talent = 80164 }, -- Mass Polymorph
        { spell = 389713, type = "ability", usable = true, talent = 80152 }, -- Displacement
        { spell = 414658, type = "ability", buff = true, talent = 80141 }, -- Ice Cold
        { spell = 414660, type = "ability", talent = 125817 }, -- Mass Barrier
        { spell = 414664, type = "ability", buff = true, talent = 115878 }, -- Mass Invisibility
        { spell = 449700, type = "ability", debuff = true, herotalent = 123832 }, -- Gravity Lapse
      },
      icon = 610633
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  },
  [3] = { -- Frost
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 66, type = "buff", unit = "player" }, -- Invisibility
        { spell = 130, type = "buff", unit = "player" }, -- Slow Fall
        { spell = 1459, type = "buff", unit = "player" }, -- Arcane Intellect
        { spell = 11426, type = "buff", unit = "player", talent = 80176 }, -- Ice Barrier
        { spell = 12472, type = "buff", unit = "player", talent = 80235 }, -- Icy Veins
        { spell = 44544, type = "buff", unit = "player", talent = 80227 }, -- Fingers of Frost
        { spell = 45438, type = "buff", unit = "player", talent = 80181 }, -- Ice Block
        { spell = 55342, type = "buff", unit = "player", talent = 80183 }, -- Mirror Image
        { spell = 80353, type = "buff", unit = "player" }, -- Time Warp
        { spell = 108839, type = "buff", unit = "player", talent = 80162 }, -- Ice Floes
        { spell = 110960, type = "buff", unit = "player", talent = 115877 }, -- Greater Invisibility
        { spell = 116267, type = "buff", unit = "player", talent = 80177 }, -- Incanter's Flow
        { spell = 190446, type = "buff", unit = "player", talent = 80244 }, -- Brain Freeze
        { spell = 199844, type = "buff", unit = "player" }, -- Glacial Spike!
        { spell = 205473, type = "buff", unit = "player" }, -- Icicles
        { spell = 205766, type = "buff", unit = "player", talent = 80230 }, -- Bone Chilling
        { spell = 235313, type = "buff", unit = "player", talent = 80178 }, -- Blazing Barrier
        { spell = 270232, type = "buff", unit = "player", talent = 80212 }, -- Freezing Rain
        { spell = 278310, type = "buff", unit = "player", talent = 80224 }, -- Chain Reaction
        { spell = 342246, type = "buff", unit = "player", talent = 80174 }, -- Alter Time
        { spell = 382106, type = "buff", unit = "player", talent = 80250 }, -- Freezing Winds
        { spell = 382113, type = "buff", unit = "player", talent = 80218 }, -- Cold Front
        { spell = 382148, type = "buff", unit = "player", talent = 80219 }, -- Slick Ice
        { spell = 382290, type = "buff", unit = "player", talent = 80169 }, -- Tempest Barrier
        { spell = 382294, type = "buff", unit = "player", talent = 80170 }, -- Incantation of Swiftness
        { spell = 382440, type = "buff", unit = "player", talent = 80171 }, -- Shifting Power
        { spell = 382824, type = "buff", unit = "player", talent = 80156 }, -- Temporal Velocity
        { spell = 389714, type = "buff", unit = "player" }, -- Displacement Beacon
        { spell = 394195, type = "buff", unit = "player", talent = 80179 }, -- Overflowing Energy
        { spell = 414658, type = "buff", unit = "player", talent = 80141 }, -- Ice Cold
        { spell = 414664, type = "buff", unit = "player", talent = 115878 }, -- Mass Invisibility
        { spell = 417488, type = "buff", unit = "player" }, -- Frigid Empowerment
        { spell = 417492, type = "buff", unit = "player", talent = 80215 }, -- Cryopathy
        { spell = 431039, type = "buff", unit = "player" }, -- Frost Mastery
        { spell = 431040, type = "buff", unit = "player" }, -- Fire Mastery
        { spell = 431177, type = "buff", unit = "player", herotalent = 117235 }, -- Frostfire Empowerment
        { spell = 431190, type = "buff", unit = "player", herotalent = 117243 }, -- Severe Temperatures
        { spell = 438611, type = "buff", unit = "player", herotalent = 117242 }, -- Excess Frost
        { spell = 438624, type = "buff", unit = "player", herotalent = 117240 }, -- Excess Fire
        { spell = 444976, type = "buff", unit = "player", herotalent = 123407 }, -- Unerring Proficiency
        { spell = 454371, type = "buff", unit = "player", talent = 125131 }, -- Death's Chill
        { spell = 455122, type = "buff", unit = "player", talent = 80233 }, -- Permafrost Lances
        { spell = 458411, type = "buff", unit = "player", herotalent = 117258 }, -- Spellfrost Teachings
      },
      icon = 236227
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 122, type = "debuff", unit = "target" }, -- Frost Nova
        { spell = 12486, type = "debuff", unit = "target" }, -- Blizzard
        { spell = 31661, type = "debuff", unit = "target", talent = 125819 }, -- Dragon's Breath
        { spell = 33395, type = "debuff", unit = "target" }, -- Freeze
        { spell = 59638, type = "debuff", unit = "target" }, -- Frostbolt
        { spell = 82691, type = "debuff", unit = "target", talent = 80144 }, -- Ring of Frost
        { spell = 135029, type = "debuff", unit = "target" }, -- Water Jet
        { spell = 155158, type = "debuff", unit = "target" }, -- Meteor Burn
        { spell = 157981, type = "debuff", unit = "target", talent = 80160 }, -- Blast Wave
        { spell = 157997, type = "debuff", unit = "target", talent = 125820 }, -- Ice Nova
        { spell = 205021, type = "debuff", unit = "target", talent = 80216 }, -- Ray of Frost
        { spell = 205708, type = "debuff", unit = "target" }, -- Chilled
        { spell = 212792, type = "debuff", unit = "target" }, -- Cone of Cold
        { spell = 228354, type = "debuff", unit = "target", talent = 80243 }, -- Flurry
        { spell = 228358, type = "debuff", unit = "target" }, -- Winter's Chill
        { spell = 228600, type = "debuff", unit = "target", talent = 80220 }, -- Glacial Spike
        { spell = 289308, type = "debuff", unit = "target", talent = 80242 }, -- Frozen Orb
        { spell = 378760, type = "debuff", unit = "target", talent = 102428 }, -- Frostbite
        { spell = 386770, type = "debuff", unit = "target", talent = 80143 }, -- Freezing Cold
        { spell = 417490, type = "debuff", unit = "target" }, -- Numbing Blast
        { spell = 431044, type = "debuff", unit = "target", herotalent = 117244 }, -- Frostfire Bolt
        { spell = 438671, type = "debuff", unit = "target" }, -- Living Bomb
        { spell = 443740, type = "debuff", unit = "target" }, -- Embedded Frost Splinter
        { spell = 463192, type = "debuff", unit = "target", herotalent = 117266 }, -- Controlled Instincts
      },
      icon = 236208
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 66, type = "ability", buff = true }, -- Invisibility
        { spell = 120, type = "ability" }, -- Cone of Cold
        { spell = 122, type = "ability", charges = true, debuff = true }, -- Frost Nova
        { spell = 475, type = "ability", talent = 80175 }, -- Remove Curse
        { spell = 2139, type = "ability" }, -- Counterspell
        { spell = 11426, type = "ability", buff = true, talent = 80176 }, -- Ice Barrier
        { spell = 12472, type = "ability", buff = true, talent = 80235 }, -- Icy Veins
        { spell = 30455, type = "ability", charges = true, overlayGlow = true, talent = 80241 }, -- Ice Lance
        { spell = 31589, type = "ability", requiresTarget = true, talent = 80154 }, -- Slow
        { spell = 31661, type = "ability", debuff = true, talent = 125819 }, -- Dragon's Breath
        { spell = 31707, type = "ability" }, -- Waterbolt
        { spell = 33395, type = "ability", debuff = true }, -- Freeze
        { spell = 44614, type = "ability", charges = true, overlayGlow = true, talent = 80243 }, -- Flurry
        { spell = 45438, type = "ability", buff = true, usable = true, talent = 80181 }, -- Ice Block
        { spell = 55342, type = "ability", buff = true, talent = 80183 }, -- Mirror Image
        { spell = 80353, type = "ability", buff = true }, -- Time Warp
        { spell = 84714, type = "ability", overlayGlow = true, talent = 80242 }, -- Frozen Orb
        { spell = 108839, type = "ability", charges = true, buff = true, talent = 80162 }, -- Ice Floes
        { spell = 110959, type = "ability", talent = 115877 }, -- Greater Invisibility
        { spell = 113724, type = "ability", talent = 80144 }, -- Ring of Frost
        { spell = 135029, type = "ability", debuff = true }, -- Water Jet
        { spell = 153595, type = "ability", talent = 80248 }, -- Comet Storm
        { spell = 157980, type = "ability", talent = 125818 }, -- Supernova
        { spell = 157981, type = "ability", debuff = true, talent = 80160 }, -- Blast Wave
        { spell = 157997, type = "ability", debuff = true, talent = 125820 }, -- Ice Nova
        { spell = 190336, type = "ability" }, -- Conjure Refreshment
        { spell = 190356, type = "ability", overlayGlow = true }, -- Blizzard
        { spell = 205021, type = "ability", debuff = true, overlayGlow = true, talent = 80216 }, -- Ray of Frost
        { spell = 212653, type = "ability", charges = true, talent = 80163 }, -- Shimmer
        { spell = 235219, type = "ability" }, -- Cold Snap
        { spell = 319836, type = "ability", overlayGlow = true, talent = 124750 }, -- Fire Blast
        { spell = 342245, type = "ability", talent = 80174 }, -- Alter Time
        { spell = 382440, type = "ability", buff = true, talent = 80171 }, -- Shifting Power
        { spell = 383121, type = "ability", talent = 80164 }, -- Mass Polymorph
        { spell = 389713, type = "ability", usable = true, talent = 80152 }, -- Displacement
        { spell = 414658, type = "ability", buff = true, talent = 80141 }, -- Ice Cold
        { spell = 414660, type = "ability", talent = 125817 }, -- Mass Barrier
        { spell = 414664, type = "ability", buff = true, talent = 115878 }, -- Mass Invisibility
      },
      icon = 629077
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  },
}

templates.class.WARLOCK = {
  [1] = { -- Affliction
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 126, type = "buff", unit = "player" }, -- Eye of Kilrogg
        { spell = 5697, type = "buff", unit = "player" }, -- Unending Breath
        { spell = 20707, type = "buff", unit = "player" }, -- Soulstone
        { spell = 48018, type = "buff", unit = "player", talent = 124694 }, -- Demonic Circle
        { spell = 104773, type = "buff", unit = "player" }, -- Unending Resolve
        { spell = 108366, type = "buff", unit = "player", talent = 91441 }, -- Soul Leech
        { spell = 108416, type = "buff", unit = "player", talent = 91444 }, -- Dark Pact
        { spell = 111400, type = "buff", unit = "player", talent = 91460 }, -- Burning Rush
        { spell = 196099, type = "buff", unit = "player", talent = 124691 }, -- Grimoire of Sacrifice
        { spell = 264571, type = "buff", unit = "player", talent = 91568 }, -- Nightfall
        { spell = 328774, type = "buff", unit = "player", talent = 91442 }, -- Amplify Curse
        { spell = 333889, type = "buff", unit = "player", talent = 91439 }, -- Fel Domination
        { spell = 386647, type = "buff", unit = "player", talent = 91449 }, -- Lifeblood
        { spell = 387018, type = "buff", unit = "player", talent = 126062 }, -- Dark Harvest
        { spell = 387079, type = "buff", unit = "player", talent = 91551 }, -- Tormented Crescendo
        { spell = 387626, type = "buff", unit = "player", talent = 91469 }, -- Soulburn
        { spell = 387633, type = "buff", unit = "player" }, -- Soulburn: Demonic Circle
        { spell = 387636, type = "buff", unit = "player" }, -- Soulburn: Healthstone
        { spell = 389614, type = "buff", unit = "player", talent = 91465 }, -- Abyss Walker
        { spell = 442726, type = "buff", unit = "player", herotalent = 117439 }, -- Malevolence
        { spell = 449793, type = "buff", unit = "player" }, -- Succulent Soul
        { spell = 458043, type = "buff", unit = "player", talent = 91579 }, -- Malign Omen
        { spell = 17767, type = "buff", unit = "pet" }, -- Shadow Bulwark
        { spell = 32752, type = "buff", unit = "pet" }, -- Summoning Disorientation
        { spell = 112042, type = "buff", unit = "pet" }, -- Threatening Presence
      },
      icon = 136210
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 702, type = "debuff", unit = "target" }, -- Curse of Weakness
        { spell = 980, type = "debuff", unit = "target" }, -- Agony
        { spell = 1714, type = "debuff", unit = "target" }, -- Curse of Tongues
        { spell = 5484, type = "debuff", unit = "target", talent = 91458 }, -- Howl of Terror
        { spell = 6360, type = "debuff", unit = "target" }, -- Whiplash
        { spell = 6789, type = "debuff", unit = "target", talent = 91457 }, -- Mortal Coil
        { spell = 17735, type = "debuff", unit = "target" }, -- Suffering
        { spell = 27243, type = "debuff", unit = "target", talent = 91571 }, -- Seed of Corruption
        { spell = 30283, type = "debuff", unit = "target", talent = 91452 }, -- Shadowfury
        { spell = 32390, type = "debuff", unit = "target", talent = 124690 }, -- Shadow Embrace
        { spell = 48181, type = "debuff", unit = "target", talent = 91552 }, -- Haunt
        { spell = 118699, type = "debuff", unit = "target" }, -- Fear
        { spell = 146739, type = "debuff", unit = "target" }, -- Corruption
        { spell = 198590, type = "debuff", unit = "target", talent = 124692 }, -- Drain Soul
        { spell = 205179, type = "debuff", unit = "target", talent = 126061 }, -- Phantom Singularity
        { spell = 234153, type = "debuff", unit = "target" }, -- Drain Life
        { spell = 316099, type = "debuff", unit = "target", talent = 91570 }, -- Unstable Affliction
        { spell = 334275, type = "debuff", unit = "target" }, -- Curse of Exhaustion
        { spell = 384069, type = "debuff", unit = "target", talent = 91450 }, -- Shadowflame
        { spell = 386931, type = "debuff", unit = "target", talent = 91556 }, -- Vile Taint
        { spell = 386997, type = "debuff", unit = "target", talent = 91578 }, -- Soul Rot
        { spell = 417537, type = "debuff", unit = "target", talent = 91503 }, -- Oblivion
        { spell = 442804, type = "debuff", unit = "target", herotalent = 117419 }, -- Curse of the Satyr
        { spell = 445474, type = "debuff", unit = "target", herotalent = 117437 }, -- Wither
        { spell = 449587, type = "debuff", unit = "target", herotalent = 123309 }, -- Aura of Enfeeblement
        { spell = 450538, type = "debuff", unit = "target", herotalent = 117444 }, -- Soul Anathema
        { spell = 450591, type = "debuff", unit = "target", herotalent = 117420 }, -- Shared Fate
        { spell = 458219, type = "debuff", unit = "target", talent = 126065 }, -- Infirmity
      },
      icon = 136139
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 686, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Shadow Bolt
        { spell = 698, type = "ability", usable = true }, -- Ritual of Summoning
        { spell = 702, type = "ability", debuff = true, requiresTarget = true }, -- Curse of Weakness
        { spell = 980, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Agony
        { spell = 3110, type = "ability", requiresTarget = true }, -- Firebolt
        { spell = 3716, type = "ability" }, -- Consuming Shadows
        { spell = 5484, type = "ability", debuff = true, talent = 91458 }, -- Howl of Terror
        { spell = 5782, type = "ability", requiresTarget = true, usable = true }, -- Fear
        { spell = 6360, type = "ability", debuff = true, requiresTarget = true }, -- Whiplash
        { spell = 6789, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 91457 }, -- Mortal Coil
        { spell = 7814, type = "ability", requiresTarget = true }, -- Lash of Pain
        { spell = 7870, type = "ability" }, -- Lesser Invisibility
        { spell = 17735, type = "ability", debuff = true, requiresTarget = true }, -- Suffering
        { spell = 17767, type = "ability", buff = true, unit = 'pet' }, -- Shadow Bulwark
        { spell = 19647, type = "ability" }, -- Spell Lock
        { spell = 20707, type = "ability", buff = true, usable = true }, -- Soulstone
        { spell = 27243, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 91571 }, -- Seed of Corruption
        { spell = 29893, type = "ability", usable = true }, -- Create Soulwell
        { spell = 30283, type = "ability", debuff = true, usable = true, talent = 91452 }, -- Shadowfury
        { spell = 48018, type = "ability", buff = true, usable = true, talent = 124694 }, -- Demonic Circle
        { spell = 48020, type = "ability", overlayGlow = true, usable = true }, -- Demonic Circle: Teleport
        { spell = 48181, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 91552 }, -- Haunt
        { spell = 54049, type = "ability", requiresTarget = true }, -- Shadow Bite
        { spell = 104773, type = "ability", buff = true, usable = true }, -- Unending Resolve
        { spell = 108416, type = "ability", buff = true, talent = 91444 }, -- Dark Pact
        { spell = 108503, type = "ability", talent = 124691 }, -- Grimoire of Sacrifice
        { spell = 111771, type = "ability", overlayGlow = true, usable = true, talent = 91466 }, -- Demonic Gateway
        { spell = 112042, type = "ability", buff = true, unit = 'pet' }, -- Threatening Presence
        { spell = 119907, type = "ability" }, -- Shadow Bulwark
        { spell = 119910, type = "ability" }, -- Spell Lock
        { spell = 132411, type = "ability" }, -- Singe Magic
        { spell = 205179, type = "ability", debuff = true, talent = 126061 }, -- Phantom Singularity
        { spell = 205180, type = "ability", totem = true, usable = true, talent = 91554 }, -- Summon Darkglare
        { spell = 234153, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true, usable = true }, -- Drain Life
        { spell = 278350, type = "ability", talent = 91556 }, -- Vile Taint
        { spell = 316099, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 91570 }, -- Unstable Affliction
        { spell = 328774, type = "ability", buff = true, usable = true, talent = 91442 }, -- Amplify Curse
        { spell = 333889, type = "ability", buff = true, usable = true, talent = 91439 }, -- Fel Domination
        { spell = 342601, type = "ability", usable = true }, -- Ritual of Doom
        { spell = 384069, type = "ability", debuff = true, talent = 91450 }, -- Shadowflame
        { spell = 385899, type = "ability", usable = true, talent = 91469 }, -- Soulburn
        { spell = 386997, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 91578 }, -- Soul Rot
        { spell = 417537, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 91503 }, -- Oblivion
        { spell = 442726, type = "ability", buff = true, herotalent = 117439 }, -- Malevolence
        { spell = 445468, type = "ability", requiresTarget = true, herotalent = 117437 }, -- Wither
      },
      icon = 135808
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\Icons\\inv_misc_gem_amethyst_02",
    },
  },
  [2] = { -- Demonology
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 126, type = "buff", unit = "player" }, -- Eye of Kilrogg
        { spell = 5697, type = "buff", unit = "player" }, -- Unending Breath
        { spell = 20707, type = "buff", unit = "player" }, -- Soulstone
        { spell = 48018, type = "buff", unit = "player", talent = 124694 }, -- Demonic Circle
        { spell = 104773, type = "buff", unit = "player" }, -- Unending Resolve
        { spell = 108366, type = "buff", unit = "player", talent = 91441 }, -- Soul Leech
        { spell = 108416, type = "buff", unit = "player", talent = 91444 }, -- Dark Pact
        { spell = 111400, type = "buff", unit = "player", talent = 91460 }, -- Burning Rush
        { spell = 205146, type = "buff", unit = "player", talent = 125848 }, -- Demonic Calling
        { spell = 264173, type = "buff", unit = "player" }, -- Demonic Core
        { spell = 328774, type = "buff", unit = "player", talent = 91442 }, -- Amplify Curse
        { spell = 333889, type = "buff", unit = "player", talent = 91439 }, -- Fel Domination
        { spell = 386614, type = "buff", unit = "player", talent = 91464 }, -- Accrued Vitality
        { spell = 386647, type = "buff", unit = "player", talent = 91449 }, -- Lifeblood
        { spell = 387393, type = "buff", unit = "player", talent = 125831 }, -- Dread Calling
        { spell = 387626, type = "buff", unit = "player", talent = 91469 }, -- Soulburn
        { spell = 387633, type = "buff", unit = "player" }, -- Soulburn: Demonic Circle
        { spell = 389614, type = "buff", unit = "player", talent = 91465 }, -- Abyss Walker
        { spell = 428524, type = "buff", unit = "player" }, -- Demonic Art: Overlord
        { spell = 431944, type = "buff", unit = "player" }, -- Diabolic Ritual: Overlord
        { spell = 432794, type = "buff", unit = "player" }, -- Demonic Art: Mother of Chaos
        { spell = 432795, type = "buff", unit = "player" }, -- Demonic Art: Pit Lord
        { spell = 432815, type = "buff", unit = "player" }, -- Diabolic Ritual: Mother of Chaos
        { spell = 432816, type = "buff", unit = "player" }, -- Diabolic Ritual: Pit Lord
        { spell = 433885, type = "buff", unit = "player", herotalent = 117427 }, -- Ruination
        { spell = 433891, type = "buff", unit = "player" }, -- Infernal Bolt
        { spell = 434559, type = "buff", unit = "player", herotalent = 117449 }, -- Infernal Vitality
        { spell = 434561, type = "buff", unit = "player", herotalent = 118839 }, -- Infernal Bulwark
        { spell = 449793, type = "buff", unit = "player" }, -- Succulent Soul
        { spell = 456323, type = "buff", unit = "player", herotalent = 117428 }, -- Abyssal Dominion
        { spell = 30151, type = "buff", unit = "pet" }, -- Pursuit
        { spell = 32752, type = "buff", unit = "pet" }, -- Summoning Disorientation
        { spell = 89751, type = "buff", unit = "pet" }, -- Felstorm
        { spell = 112042, type = "buff", unit = "pet" }, -- Threatening Presence
        { spell = 265273, type = "buff", unit = "pet" }, -- Demonic Power
        { spell = 267171, type = "buff", unit = "pet", talent = 125832 }, -- Demonic Strength
        { spell = 386176, type = "buff", unit = "pet", talent = 125826 }, -- Annihilan Training
        { spell = 386601, type = "buff", unit = "pet" }, -- Fiendish Wrath
        { spell = 387496, type = "buff", unit = "pet", talent = 125859 }, -- Antoran Armaments
        { spell = 387601, type = "buff", unit = "pet", talent = 125847 }, -- The Expendables
      },
      icon = 1378284
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 702, type = "debuff", unit = "target" }, -- Curse of Weakness
        { spell = 1714, type = "debuff", unit = "target" }, -- Curse of Tongues
        { spell = 5484, type = "debuff", unit = "target", talent = 91458 }, -- Howl of Terror
        { spell = 6360, type = "debuff", unit = "target" }, -- Whiplash
        { spell = 6789, type = "debuff", unit = "target", talent = 91457 }, -- Mortal Coil
        { spell = 17735, type = "debuff", unit = "target" }, -- Suffering
        { spell = 30213, type = "debuff", unit = "target" }, -- Legion Strike
        { spell = 30283, type = "debuff", unit = "target", talent = 91452 }, -- Shadowfury
        { spell = 89766, type = "debuff", unit = "target" }, -- Axe Toss
        { spell = 118699, type = "debuff", unit = "target" }, -- Fear
        { spell = 146739, type = "debuff", unit = "target" }, -- Corruption
        { spell = 234153, type = "debuff", unit = "target" }, -- Drain Life
        { spell = 267997, type = "debuff", unit = "target" }, -- Bile Spit
        { spell = 270569, type = "debuff", unit = "target", talent = 125872 }, -- Wicked Maw
        { spell = 334275, type = "debuff", unit = "target" }, -- Curse of Exhaustion
        { spell = 384069, type = "debuff", unit = "target", talent = 91450 }, -- Shadowflame
        { spell = 387402, type = "debuff", unit = "target", talent = 125857 }, -- Fel Sunder
        { spell = 405802, type = "debuff", unit = "target", talent = 125861 }, -- Umbral Blaze
        { spell = 409722, type = "debuff", unit = "target" }, -- Temporal Wound
        { spell = 434424, type = "debuff", unit = "target" }, -- Cloven Soul
        { spell = 450538, type = "debuff", unit = "target", herotalent = 117444 }, -- Soul Anathema
        { spell = 450591, type = "debuff", unit = "target", herotalent = 117420 }, -- Shared Fate
        { spell = 460553, type = "debuff", unit = "target", talent = 125865 }, -- Doom
      },
      icon = 136122
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 172, type = "ability", requiresTarget = true, usable = true }, -- Corruption
        { spell = 686, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Shadow Bolt
        { spell = 698, type = "ability", usable = true }, -- Ritual of Summoning
        { spell = 702, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Curse of Weakness
        { spell = 3110, type = "ability", requiresTarget = true }, -- Firebolt
        { spell = 3716, type = "ability" }, -- Consuming Shadows
        { spell = 5484, type = "ability", debuff = true, talent = 91458 }, -- Howl of Terror
        { spell = 5782, type = "ability", requiresTarget = true, usable = true }, -- Fear
        { spell = 6360, type = "ability", debuff = true, requiresTarget = true }, -- Whiplash
        { spell = 6789, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 91457 }, -- Mortal Coil
        { spell = 7814, type = "ability", requiresTarget = true }, -- Lash of Pain
        { spell = 7870, type = "ability" }, -- Lesser Invisibility
        { spell = 17735, type = "ability", debuff = true, requiresTarget = true }, -- Suffering
        { spell = 17767, type = "ability" }, -- Shadow Bulwark
        { spell = 19505, type = "ability", requiresTarget = true }, -- Devour Magic
        { spell = 19647, type = "ability", requiresTarget = true }, -- Spell Lock
        { spell = 20707, type = "ability", buff = true, usable = true }, -- Soulstone
        { spell = 29893, type = "ability", usable = true }, -- Create Soulwell
        { spell = 30151, type = "ability", buff = true, unit = 'pet', requiresTarget = true }, -- Pursuit
        { spell = 30213, type = "ability", debuff = true, requiresTarget = true }, -- Legion Strike
        { spell = 30283, type = "ability", debuff = true, usable = true, talent = 91452 }, -- Shadowfury
        { spell = 48018, type = "ability", buff = true, usable = true, talent = 124694 }, -- Demonic Circle
        { spell = 48020, type = "ability", overlayGlow = true, usable = true }, -- Demonic Circle: Teleport
        { spell = 54049, type = "ability", requiresTarget = true }, -- Shadow Bite
        { spell = 89751, type = "ability", buff = true, unit = 'pet' }, -- Felstorm
        { spell = 89766, type = "ability", debuff = true, requiresTarget = true }, -- Axe Toss
        { spell = 89792, type = "ability" }, -- Flee
        { spell = 89808, type = "ability" }, -- Singe Magic
        { spell = 104316, type = "ability", overlayGlow = true, requiresTarget = true, usable = true, talent = 125837 }, -- Call Dreadstalkers
        { spell = 104773, type = "ability", buff = true, usable = true }, -- Unending Resolve
        { spell = 105174, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Hand of Gul'dan
        { spell = 108416, type = "ability", buff = true, talent = 91444 }, -- Dark Pact
        { spell = 111771, type = "ability", overlayGlow = true, usable = true, talent = 91466 }, -- Demonic Gateway
        { spell = 111898, type = "ability", totem = true, talent = 125852 }, -- Grimoire: Felguard
        { spell = 112042, type = "ability", buff = true, unit = 'pet' }, -- Threatening Presence
        { spell = 119905, type = "ability" }, -- Singe Magic
        { spell = 119910, type = "ability", requiresTarget = true }, -- Spell Lock
        { spell = 119914, type = "ability", requiresTarget = true }, -- Axe Toss
        { spell = 125439, type = "ability" }, -- Revive Battle Pets
        { spell = 134477, type = "ability", buff = true, unit = 'pet' }, -- Threatening Presence
        { spell = 196277, type = "ability", charges = true, requiresTarget = true, usable = true, talent = 125836 }, -- Implosion
        { spell = 234153, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true, usable = true }, -- Drain Life
        { spell = 264057, type = "ability", talent = 125844 }, -- Soul Strike
        { spell = 264119, type = "ability", totem = true, talent = 125845 }, -- Summon Vilefiend
        { spell = 264130, type = "ability", usable = true, talent = 125862 }, -- Power Siphon
        { spell = 264178, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Demonbolt
        { spell = 265187, type = "ability", usable = true, talent = 125850 }, -- Summon Demonic Tyrant
        { spell = 267171, type = "ability", buff = true, unit = 'pet', talent = 125832 }, -- Demonic Strength
        { spell = 267211, type = "ability", talent = 125833 }, -- Bilescourge Bombers
        { spell = 328774, type = "ability", buff = true, usable = true, talent = 91442 }, -- Amplify Curse
        { spell = 333889, type = "ability", buff = true, usable = true, talent = 91439 }, -- Fel Domination
        { spell = 342601, type = "ability", usable = true }, -- Ritual of Doom
        { spell = 384069, type = "ability", debuff = true, talent = 91450 }, -- Shadowflame
        { spell = 385899, type = "ability", usable = true, talent = 91469 }, -- Soulburn
        { spell = 386833, type = "ability", talent = 125840 }, -- Guillotine
        { spell = 455465, type = "ability", totem = true }, -- Summon Gloomhound
        { spell = 455476, type = "ability", totem = true }, -- Summon Charhound
      },
      icon = 1378282
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\Icons\\inv_misc_gem_amethyst_02",
    },
  },
  [3] = { -- Destruction
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 126, type = "buff", unit = "player" }, -- Eye of Kilrogg
        { spell = 5697, type = "buff", unit = "player" }, -- Unending Breath
        { spell = 20707, type = "buff", unit = "player" }, -- Soulstone
        { spell = 48018, type = "buff", unit = "player", talent = 124694 }, -- Demonic Circle
        { spell = 59752, type = "buff", unit = "player" }, -- Will to Survive
        { spell = 104773, type = "buff", unit = "player" }, -- Unending Resolve
        { spell = 108366, type = "buff", unit = "player", talent = 91441 }, -- Soul Leech
        { spell = 108416, type = "buff", unit = "player", talent = 91444 }, -- Dark Pact
        { spell = 111400, type = "buff", unit = "player", talent = 91460 }, -- Burning Rush
        { spell = 117828, type = "buff", unit = "player", talent = 91590 }, -- Backdraft
        { spell = 196099, type = "buff", unit = "player", talent = 125618 }, -- Grimoire of Sacrifice
        { spell = 328774, type = "buff", unit = "player", talent = 91442 }, -- Amplify Curse
        { spell = 333889, type = "buff", unit = "player", talent = 91439 }, -- Fel Domination
        { spell = 386647, type = "buff", unit = "player", talent = 91449 }, -- Lifeblood
        { spell = 387109, type = "buff", unit = "player", talent = 91583 }, -- Conflagration of Chaos
        { spell = 387154, type = "buff", unit = "player", talent = 91477 }, -- Burn to Ashes
        { spell = 387157, type = "buff", unit = "player", talent = 91483 }, -- Ritual of Ruin
        { spell = 387158, type = "buff", unit = "player" }, -- Impending Ruin
        { spell = 387263, type = "buff", unit = "player", talent = 91485 }, -- Flashpoint
        { spell = 387283, type = "buff", unit = "player", talent = 91478 }, -- Power Overwhelming
        { spell = 387570, type = "buff", unit = "player", talent = 91474 }, -- Rolling Havoc
        { spell = 387626, type = "buff", unit = "player", talent = 91469 }, -- Soulburn
        { spell = 387633, type = "buff", unit = "player" }, -- Soulburn: Demonic Circle
        { spell = 389614, type = "buff", unit = "player", talent = 91465 }, -- Abyss Walker
        { spell = 394087, type = "buff", unit = "player", talent = 91494 }, -- Mayhem
        { spell = 394810, type = "buff", unit = "player" }, -- Soulburn: Drain Life
        { spell = 417282, type = "buff", unit = "player", talent = 91473 }, -- Crashing Chaos
        { spell = 428524, type = "buff", unit = "player" }, -- Demonic Art: Overlord
        { spell = 431944, type = "buff", unit = "player" }, -- Diabolic Ritual: Overlord
        { spell = 432794, type = "buff", unit = "player" }, -- Demonic Art: Mother of Chaos
        { spell = 432795, type = "buff", unit = "player" }, -- Demonic Art: Pit Lord
        { spell = 432815, type = "buff", unit = "player" }, -- Diabolic Ritual: Mother of Chaos
        { spell = 432816, type = "buff", unit = "player" }, -- Diabolic Ritual: Pit Lord
        { spell = 433885, type = "buff", unit = "player", herotalent = 117427 }, -- Ruination
        { spell = 433891, type = "buff", unit = "player" }, -- Infernal Bolt
        { spell = 434559, type = "buff", unit = "player", herotalent = 117449 }, -- Infernal Vitality
        { spell = 434561, type = "buff", unit = "player", herotalent = 118839 }, -- Infernal Bulwark
        { spell = 442726, type = "buff", unit = "player", herotalent = 117439 }, -- Malevolence
        { spell = 457555, type = "buff", unit = "player", talent = 126007 }, -- Decimation
        { spell = 7870, type = "buff", unit = "pet" }, -- Lesser Invisibility
        { spell = 17767, type = "buff", unit = "pet" }, -- Shadow Bulwark
        { spell = 32752, type = "buff", unit = "pet" }, -- Summoning Disorientation
        { spell = 112042, type = "buff", unit = "pet" }, -- Threatening Presence
        { spell = 386176, type = "buff", unit = "pet", talent = 125826 }, -- Annihilan Training
        { spell = 387496, type = "buff", unit = "pet", talent = 125859 }, -- Antoran Armaments
      },
      icon = 136150
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 702, type = "debuff", unit = "target" }, -- Curse of Weakness
        { spell = 1714, type = "debuff", unit = "target" }, -- Curse of Tongues
        { spell = 5484, type = "debuff", unit = "target", talent = 91458 }, -- Howl of Terror
        { spell = 6360, type = "debuff", unit = "target" }, -- Whiplash
        { spell = 6789, type = "debuff", unit = "target", talent = 91457 }, -- Mortal Coil
        { spell = 17735, type = "debuff", unit = "target" }, -- Suffering
        { spell = 17877, type = "debuff", unit = "target", talent = 91582 }, -- Shadowburn
        { spell = 22703, type = "debuff", unit = "target" }, -- Infernal Awakening
        { spell = 80240, type = "debuff", unit = "target", talent = 91493 }, -- Havoc
        { spell = 118699, type = "debuff", unit = "target" }, -- Fear
        { spell = 157736, type = "debuff", unit = "target" }, -- Immolate
        { spell = 196414, type = "debuff", unit = "target", talent = 91501 }, -- Eradication
        { spell = 234153, type = "debuff", unit = "target" }, -- Drain Life
        { spell = 265931, type = "debuff", unit = "target", talent = 91591 }, -- Conflagrate
        { spell = 334275, type = "debuff", unit = "target" }, -- Curse of Exhaustion
        { spell = 384069, type = "debuff", unit = "target", talent = 91450 }, -- Shadowflame
        { spell = 387096, type = "debuff", unit = "target", talent = 91489 }, -- Pyrogenics
        { spell = 409992, type = "debuff", unit = "target" }, -- Temporal Wound
        { spell = 434424, type = "debuff", unit = "target" }, -- Cloven Soul
        { spell = 442804, type = "debuff", unit = "target", herotalent = 117419 }, -- Curse of the Satyr
        { spell = 445474, type = "debuff", unit = "target", herotalent = 117437 }, -- Wither
        { spell = 449587, type = "debuff", unit = "target", herotalent = 123309 }, -- Aura of Enfeeblement
      },
      icon = 135817
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 698, type = "ability", usable = true }, -- Ritual of Summoning
        { spell = 702, type = "ability", debuff = true, requiresTarget = true }, -- Curse of Weakness
        { spell = 1122, type = "ability", talent = 91502 }, -- Summon Infernal
        { spell = 3110, type = "ability", requiresTarget = true }, -- Firebolt
        { spell = 3716, type = "ability" }, -- Consuming Shadows
        { spell = 5484, type = "ability", debuff = true, talent = 91458 }, -- Howl of Terror
        { spell = 5697, type = "ability", buff = true, requiresTarget = true }, -- Unending Breath
        { spell = 5782, type = "ability", requiresTarget = true }, -- Fear
        { spell = 6353, type = "ability", overlayGlow = true, requiresTarget = true, talent = 91492 }, -- Soul Fire
        { spell = 6360, type = "ability", debuff = true, requiresTarget = true }, -- Whiplash
        { spell = 6789, type = "ability", debuff = true, requiresTarget = true, talent = 91457 }, -- Mortal Coil
        { spell = 7814, type = "ability", requiresTarget = true }, -- Lash of Pain
        { spell = 7870, type = "ability", buff = true, unit = 'pet' }, -- Lesser Invisibility
        { spell = 17735, type = "ability", debuff = true, requiresTarget = true }, -- Suffering
        { spell = 17767, type = "ability", buff = true, unit = 'pet' }, -- Shadow Bulwark
        { spell = 17877, type = "ability", charges = true, debuff = true, requiresTarget = true, talent = 91582 }, -- Shadowburn
        { spell = 17962, type = "ability", charges = true, requiresTarget = true, talent = 91591 }, -- Conflagrate
        { spell = 19505, type = "ability", requiresTarget = true }, -- Devour Magic
        { spell = 19647, type = "ability", requiresTarget = true }, -- Spell Lock
        { spell = 20707, type = "ability", buff = true }, -- Soulstone
        { spell = 29893, type = "ability" }, -- Create Soulwell
        { spell = 30283, type = "ability", talent = 91452 }, -- Shadowfury
        { spell = 48018, type = "ability", buff = true, talent = 124694 }, -- Demonic Circle
        { spell = 48020, type = "ability", overlayGlow = true, usable = true }, -- Demonic Circle: Teleport
        { spell = 54049, type = "ability", requiresTarget = true }, -- Shadow Bite
        { spell = 59752, type = "ability", buff = true }, -- Will to Survive
        { spell = 80240, type = "ability", debuff = true, requiresTarget = true, talent = 91493 }, -- Havoc
        { spell = 89808, type = "ability" }, -- Singe Magic
        { spell = 104773, type = "ability", buff = true }, -- Unending Resolve
        { spell = 108416, type = "ability", buff = true, talent = 91444 }, -- Dark Pact
        { spell = 108503, type = "ability", talent = 125618 }, -- Grimoire of Sacrifice
        { spell = 111771, type = "ability", overlayGlow = true, talent = 91466 }, -- Demonic Gateway
        { spell = 112042, type = "ability", buff = true, unit = 'pet' }, -- Threatening Presence
        { spell = 116858, type = "ability", overlayGlow = true, requiresTarget = true }, -- Chaos Bolt
        { spell = 119905, type = "ability" }, -- Singe Magic
        { spell = 119907, type = "ability" }, -- Shadow Bulwark
        { spell = 119910, type = "ability", requiresTarget = true }, -- Spell Lock
        { spell = 125439, type = "ability" }, -- Revive Battle Pets
        { spell = 132411, type = "ability" }, -- Singe Magic
        { spell = 152108, type = "ability", talent = 91487 }, -- Cataclysm
        { spell = 196447, type = "ability", usable = true, talent = 91586 }, -- Channel Demonfire
        { spell = 200546, type = "ability" }, -- Bane of Havoc
        { spell = 234153, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Drain Life
        { spell = 328774, type = "ability", buff = true, usable = true, talent = 91442 }, -- Amplify Curse
        { spell = 333889, type = "ability", buff = true, talent = 91439 }, -- Fel Domination
        { spell = 342601, type = "ability", usable = true }, -- Ritual of Doom
        { spell = 384069, type = "ability", debuff = true, talent = 91450 }, -- Shadowflame
        { spell = 385899, type = "ability", talent = 91469 }, -- Soulburn
        { spell = 387976, type = "ability", charges = true, talent = 91423 }, -- Dimensional Rift
        { spell = 442726, type = "ability", buff = true, herotalent = 117439 }, -- Malevolence
      },
      icon = 135807
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\Icons\\inv_misc_gem_amethyst_02",
    },
  },
}

templates.class.MONK = {
  [1] = { -- Brewmaster
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 101643, type = "buff", unit = "player", talent = 124962 }, -- Transcendence
        { spell = 115175, type = "buff", unit = "player", talent = 124933 }, -- Soothing Mist
        { spell = 115176, type = "buff", unit = "player", talent = 125006 }, -- Zen Meditation
        { spell = 116841, type = "buff", unit = "player", talent = 124937 }, -- Tiger's Lust
        { spell = 116847, type = "buff", unit = "player", talent = 125007 }, -- Rushing Jade Wind
        { spell = 120954, type = "buff", unit = "player", talent = 124968 }, -- Fortifying Brew
        { spell = 122783, type = "buff", unit = "player", talent = 124959 }, -- Diffuse Magic
        { spell = 132578, type = "buff", unit = "player", talent = 124849 }, -- Invoke Niuzao, the Black Ox
        { spell = 166646, type = "buff", unit = "player", talent = 124971 }, -- Windwalking
        { spell = 195630, type = "buff", unit = "player" }, -- Elusive Brawler
        { spell = 215479, type = "buff", unit = "player", talent = 124864 }, -- Shuffle
        { spell = 228563, type = "buff", unit = "player", talent = 124999 }, -- Blackout Combo
        { spell = 322507, type = "buff", unit = "player", talent = 124841 }, -- Celestial Brew
        { spell = 325153, type = "buff", unit = "player", talent = 125001 }, -- Exploding Keg
        { spell = 325190, type = "buff", unit = "player", talent = 124844 }, -- Celestial Flames
        { spell = 383696, type = "buff", unit = "player", talent = 124845 }, -- Hit Scheme
        { spell = 386963, type = "buff", unit = "player", talent = 124986 }, -- Charred Passions
        { spell = 387184, type = "buff", unit = "player", talent = 124996 }, -- Weapons of Order
        { spell = 392883, type = "buff", unit = "player", talent = 124935 }, -- Vivacious Vivification
        { spell = 393515, type = "buff", unit = "player", talent = 124851 }, -- Pretense of Instability
        { spell = 394112, type = "buff", unit = "player", talent = 124973 }, -- Escape from Reality
        { spell = 414143, type = "buff", unit = "player", talent = 124960 }, -- Yu'lon's Grace
        { spell = 418361, type = "buff", unit = "player", talent = 124997 }, -- Press the Advantage
        { spell = 449609, type = "buff", unit = "player", talent = 124963 }, -- Lighter Than Air
        { spell = 450380, type = "buff", unit = "player", talent = 126502 }, -- Chi Wave
        { spell = 450521, type = "buff", unit = "player", herotalent = 125033 }, -- Aspect of Harmony
        { spell = 450552, type = "buff", unit = "player", talent = 124954 }, -- Jade Walk
        { spell = 450574, type = "buff", unit = "player", talent = 124965 }, -- Flow of Chi
        { spell = 451021, type = "buff", unit = "player" }, -- Flurry Charge
        { spell = 451084, type = "buff", unit = "player", herotalent = 125038 }, -- Path of Resurgence
        { spell = 451085, type = "buff", unit = "player", herotalent = 125070 }, -- Veteran's Eye
        { spell = 451233, type = "buff", unit = "player", herotalent = 125063 }, -- Vigilant Watch
        { spell = 451299, type = "buff", unit = "player" }, -- Chi Cocoon
        { spell = 451508, type = "buff", unit = "player", herotalent = 125043 }, -- Balanced Stratagem
        { spell = 454494, type = "buff", unit = "player", talent = 124861 }, -- August Blessing
        { spell = 455071, type = "buff", unit = "player", talent = 125004 }, -- Ox Stance
        { spell = 470670, type = "buff", unit = "player", herotalent = 125069, progressSource = "stacks", maxProgress = "240" }, -- Flurry Strikes
      },
      icon = 613398
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 113746, type = "debuff", unit = "target" }, -- Mystic Touch
        { spell = 115078, type = "debuff", unit = "target", talent = 124932 }, -- Paralysis
        { spell = 116189, type = "debuff", unit = "target" }, -- Provoke
        { spell = 117952, type = "debuff", unit = "target" }, -- Crackling Jade Lightning
        { spell = 119381, type = "debuff", unit = "target" }, -- Leg Sweep
        { spell = 121253, type = "debuff", unit = "target", talent = 124865 }, -- Keg Smash
        { spell = 198909, type = "debuff", unit = "target", talent = 124925 }, -- Song of Chi-Ji
        { spell = 324382, type = "debuff", unit = "target", talent = 124945 }, -- Clash
        { spell = 325153, type = "debuff", unit = "target", talent = 125001 }, -- Exploding Keg
        { spell = 387179, type = "debuff", unit = "target", talent = 124996 }, -- Weapons of Order
        { spell = 393786, type = "debuff", unit = "target", talent = 124994 }, -- Chi Surge
        { spell = 450342, type = "debuff", unit = "target", talent = 124940 }, -- Crashing Momentum
        { spell = 450763, type = "debuff", unit = "target", herotalent = 125033 }, -- Aspect of Harmony
      },
      icon = 611419
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 100780, type = "ability", requiresTarget = true }, -- Tiger Palm
        { spell = 101643, type = "ability", buff = true, talent = 124962 }, -- Transcendence
        { spell = 107428, type = "ability", requiresTarget = true, talent = 124985 }, -- Rising Sun Kick
        { spell = 109132, type = "ability", charges = true }, -- Roll
        { spell = 115078, type = "ability", debuff = true, requiresTarget = true, talent = 124932 }, -- Paralysis
        { spell = 115176, type = "ability", buff = true, talent = 125006 }, -- Zen Meditation
        { spell = 115181, type = "ability", talent = 124843 }, -- Breath of Fire
        { spell = 115203, type = "ability", talent = 124968 }, -- Fortifying Brew
        { spell = 115315, type = "ability", totem = true, talent = 124967 }, -- Summon Black Ox Statue
        { spell = 115399, type = "ability", talent = 124991 }, -- Black Ox Brew
        { spell = 115546, type = "ability", requiresTarget = true }, -- Provoke
        { spell = 116705, type = "ability", requiresTarget = true, talent = 124943 }, -- Spear Hand Strike
        { spell = 116841, type = "ability", buff = true, requiresTarget = true, talent = 124937 }, -- Tiger's Lust
        { spell = 116844, type = "ability", talent = 124926 }, -- Ring of Peace
        { spell = 116847, type = "ability", buff = true, talent = 125007 }, -- Rushing Jade Wind
        { spell = 117952, type = "ability", debuff = true, requiresTarget = true }, -- Crackling Jade Lightning
        { spell = 119381, type = "ability", debuff = true }, -- Leg Sweep
        { spell = 119582, type = "ability", charges = true, talent = 124838 }, -- Purifying Brew
        { spell = 119996, type = "ability", usable = true }, -- Transcendence: Transfer
        { spell = 121253, type = "ability", charges = true, debuff = true, requiresTarget = true, talent = 124865 }, -- Keg Smash
        { spell = 122783, type = "ability", buff = true, talent = 124959 }, -- Diffuse Magic
        { spell = 123986, type = "ability", talent = 126501 }, -- Chi Burst
        { spell = 126892, type = "ability" }, -- Zen Pilgrimage
        { spell = 132578, type = "ability", buff = true, requiresTarget = true, totem = true, talent = 124849 }, -- Invoke Niuzao, the Black Ox
        { spell = 198898, type = "ability", talent = 124925 }, -- Song of Chi-Ji
        { spell = 205523, type = "ability", requiresTarget = true }, -- Blackout Kick
        { spell = 218164, type = "ability", talent = 124867 }, -- Detox
        { spell = 322101, type = "ability", charges = true }, -- Expel Harm
        { spell = 322109, type = "ability", requiresTarget = true, usable = true }, -- Touch of Death
        { spell = 322507, type = "ability", charges = true, buff = true, talent = 124841 }, -- Celestial Brew
        { spell = 324312, type = "ability", requiresTarget = true, talent = 124945 }, -- Clash
        { spell = 325153, type = "ability", buff = true, debuff = true, talent = 125001 }, -- Exploding Keg
        { spell = 387184, type = "ability", buff = true, talent = 124996 }, -- Weapons of Order
      },
      icon = 133701
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\Icons\\monk_stance_drunkenox",
    },
  },
  [2] = { -- Mistweaver
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 101643, type = "buff", unit = "player", talent = 124962 }, -- Transcendence
        { spell = 115175, type = "buff", unit = "player", talent = 124933 }, -- Soothing Mist
        { spell = 115294, type = "buff", unit = "player", talent = 124920 }, -- Mana Tea
        { spell = 116680, type = "buff", unit = "player", talent = 124921 }, -- Thunder Focus Tea
        { spell = 116841, type = "buff", unit = "player", talent = 124937 }, -- Tiger's Lust
        { spell = 116849, type = "buff", unit = "player", talent = 124875 }, -- Life Cocoon
        { spell = 119085, type = "buff", unit = "player", talent = 124981 }, -- Chi Torpedo
        { spell = 119611, type = "buff", unit = "player", talent = 124888 }, -- Renewing Mist
        { spell = 120954, type = "buff", unit = "player", talent = 124968 }, -- Fortifying Brew
        { spell = 122783, type = "buff", unit = "player", talent = 124959 }, -- Diffuse Magic
        { spell = 124682, type = "buff", unit = "player", talent = 124922 }, -- Enveloping Mist
        { spell = 166646, type = "buff", unit = "player", talent = 124971 }, -- Windwalking
        { spell = 196725, type = "buff", unit = "player", talent = 124870 }, -- Refreshing Jade Wind
        { spell = 197916, type = "buff", unit = "player", talent = 124916 }, -- Lifecycles
        { spell = 202090, type = "buff", unit = "player", talent = 124827 }, -- Teachings of the Monastery
        { spell = 325209, type = "buff", unit = "player" }, -- Enveloping Breath
        { spell = 343737, type = "buff", unit = "player" }, -- Soothing Breath
        { spell = 388026, type = "buff", unit = "player", talent = 124882 }, -- Jadefire Teachings
        { spell = 388193, type = "buff", unit = "player", talent = 124881 }, -- Jadefire Stomp
        { spell = 388220, type = "buff", unit = "player", talent = 124873 }, -- Calming Coalescence
        { spell = 388498, type = "buff", unit = "player", talent = 124908 }, -- Secret Infusion
        { spell = 388513, type = "buff", unit = "player", talent = 124872 }, -- Overflowing Mists
        { spell = 388518, type = "buff", unit = "player", talent = 124884 }, -- Tea of Serenity
        { spell = 388524, type = "buff", unit = "player", talent = 124883 }, -- Tea of Plenty
        { spell = 388555, type = "buff", unit = "player", talent = 124869 }, -- Uplifted Spirits
        { spell = 388663, type = "buff", unit = "player", talent = 124907 }, -- Invoker's Delight
        { spell = 389387, type = "buff", unit = "player", talent = 124885 }, -- Awakened Jadefire
        { spell = 389422, type = "buff", unit = "player" }, -- Yu'lon's Blessing
        { spell = 392883, type = "buff", unit = "player", talent = 124935 }, -- Vivacious Vivification
        { spell = 400100, type = "buff", unit = "player" }, -- Lesson of Despair
        { spell = 405807, type = "buff", unit = "player" }, -- Shaohao's Lesson - Anger
        { spell = 405810, type = "buff", unit = "player" }, -- Shaohao's Lesson - Despair
        { spell = 406139, type = "buff", unit = "player" }, -- Chi Cocoon
        { spell = 414143, type = "buff", unit = "player", talent = 124960 }, -- Yu'lon's Grace
        { spell = 427296, type = "buff", unit = "player", talent = 124890 }, -- Healing Elixir
        { spell = 432180, type = "buff", unit = "player", talent = 124929 }, -- Dance of the Wind
        { spell = 438443, type = "buff", unit = "player", talent = 124887 }, -- Dance of Chi-Ji
        { spell = 442749, type = "buff", unit = "player", herotalent = 125057 }, -- Niuzao's Protection
        { spell = 442850, type = "buff", unit = "player", herotalent = 125051 }, -- August Dynasty
        { spell = 443028, type = "buff", unit = "player", herotalent = 125062 }, -- Celestial Conduit
        { spell = 443112, type = "buff", unit = "player", herotalent = 125060 }, -- Strength of the Black Ox
        { spell = 443506, type = "buff", unit = "player", herotalent = 125055 }, -- Heart of the Jade Serpent
        { spell = 443569, type = "buff", unit = "player", herotalent = 125059 }, -- Chi-Ji's Swiftness
        { spell = 443572, type = "buff", unit = "player" }, -- Crane Stance
        { spell = 443574, type = "buff", unit = "player", talent = 125004 }, -- Ox Stance
        { spell = 443575, type = "buff", unit = "player" }, -- Tiger Stance
        { spell = 446334, type = "buff", unit = "player", talent = 124889 }, -- Zen Pulse
        { spell = 448508, type = "buff", unit = "player", herotalent = 125056 }, -- Jade Sanctuary
        { spell = 450380, type = "buff", unit = "player", talent = 126500 }, -- Chi Wave
        { spell = 450521, type = "buff", unit = "player", herotalent = 125033 }, -- Aspect of Harmony
        { spell = 450552, type = "buff", unit = "player", talent = 124954 }, -- Jade Walk
        { spell = 450574, type = "buff", unit = "player", talent = 124965 }, -- Flow of Chi
        { spell = 450805, type = "buff", unit = "player", herotalent = 125035 }, -- Purified Spirit
        { spell = 451084, type = "buff", unit = "player", herotalent = 125038 }, -- Path of Resurgence
        { spell = 451181, type = "buff", unit = "player", herotalent = 125040 }, -- Clarity of Purpose
        { spell = 451452, type = "buff", unit = "player", herotalent = 125042 }, -- Mantra of Purity
        { spell = 451508, type = "buff", unit = "player", herotalent = 125043 }, -- Balanced Stratagem
        { spell = 460127, type = "buff", unit = "player", herotalent = 125061 }, -- Courage of the White Tiger
        { spell = 467317, type = "buff", unit = "player", talent = 128220 }, -- Jade Empowerment
        { spell = 467341, type = "buff", unit = "player" }, -- Rushing Winds
      },
      icon = 627487
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 113746, type = "debuff", unit = "target" }, -- Mystic Touch
        { spell = 115078, type = "debuff", unit = "target", talent = 124932 }, -- Paralysis
        { spell = 116189, type = "debuff", unit = "target" }, -- Provoke
        { spell = 117952, type = "debuff", unit = "target" }, -- Crackling Jade Lightning
        { spell = 119381, type = "debuff", unit = "target" }, -- Leg Sweep
        { spell = 198909, type = "debuff", unit = "target", talent = 124925 }, -- Song of Chi-Ji
        { spell = 324382, type = "debuff", unit = "target", talent = 124945 }, -- Clash
        { spell = 450342, type = "debuff", unit = "target", talent = 124940 }, -- Crashing Momentum
        { spell = 450763, type = "debuff", unit = "target", herotalent = 125033 }, -- Aspect of Harmony
      },
      icon = 629534
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 100780, type = "ability", requiresTarget = true }, -- Tiger Palm
        { spell = 100784, type = "ability", requiresTarget = true }, -- Blackout Kick
        { spell = 101643, type = "ability", buff = true, talent = 124962 }, -- Transcendence
        { spell = 107428, type = "ability", overlayGlow = true, requiresTarget = true, talent = 124985 }, -- Rising Sun Kick
        { spell = 109132, type = "ability", charges = true }, -- Roll
        { spell = 115008, type = "ability", charges = true, talent = 124981 }, -- Chi Torpedo
        { spell = 115078, type = "ability", debuff = true, requiresTarget = true, talent = 124932 }, -- Paralysis
        { spell = 115151, type = "ability", charges = true, overlayGlow = true, talent = 124888 }, -- Renewing Mist
        { spell = 115203, type = "ability", talent = 124968 }, -- Fortifying Brew
        { spell = 115294, type = "ability", charges = true, buff = true, usable = true, talent = 124920 }, -- Mana Tea
        { spell = 115310, type = "ability", talent = 124919 }, -- Revival
        { spell = 115313, type = "ability", totem = true, talent = 124958 }, -- Summon Jade Serpent Statue
        { spell = 115450, type = "ability", talent = 124941 }, -- Detox
        { spell = 115546, type = "ability", requiresTarget = true }, -- Provoke
        { spell = 116680, type = "ability", charges = true, buff = true, talent = 124921 }, -- Thunder Focus Tea
        { spell = 116705, type = "ability", requiresTarget = true, talent = 124943 }, -- Spear Hand Strike
        { spell = 116841, type = "ability", buff = true, talent = 124937 }, -- Tiger's Lust
        { spell = 116844, type = "ability", talent = 124926 }, -- Ring of Peace
        { spell = 116849, type = "ability", buff = true, talent = 124875 }, -- Life Cocoon
        { spell = 117952, type = "ability", debuff = true, requiresTarget = true }, -- Crackling Jade Lightning
        { spell = 119381, type = "ability", debuff = true }, -- Leg Sweep
        { spell = 119996, type = "ability", usable = true }, -- Transcendence: Transfer
        { spell = 122783, type = "ability", buff = true, talent = 124959 }, -- Diffuse Magic
        { spell = 123986, type = "ability", talent = 126499 }, -- Chi Burst
        { spell = 126892, type = "ability" }, -- Zen Pilgrimage
        { spell = 198898, type = "ability", talent = 124925 }, -- Song of Chi-Ji
        { spell = 322101, type = "ability", overlayGlow = true }, -- Expel Harm
        { spell = 322109, type = "ability", requiresTarget = true, usable = true }, -- Touch of Death
        { spell = 322118, type = "ability", totem = true, talent = 124915 }, -- Invoke Yu'lon, the Jade Serpent
        { spell = 324312, type = "ability", requiresTarget = true, talent = 124945 }, -- Clash
        { spell = 388193, type = "ability", buff = true, overlayGlow = true, talent = 124881 }, -- Jadefire Stomp
        { spell = 388615, type = "ability", talent = 124918 }, -- Restoral
        { spell = 399491, type = "ability", charges = true, talent = 124904 }, -- Sheilun's Gift
        { spell = 443028, type = "ability", buff = true, herotalent = 125062 }, -- Celestial Conduit
        { spell = 467307, type = "ability", talent = 128221 }, -- Rushing Wind Kick
      },
      icon = 627485
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  },
  [3] = { -- Windwalker
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 101643, type = "buff", unit = "player", talent = 124962 }, -- Transcendence
        { spell = 115175, type = "buff", unit = "player", talent = 124933 }, -- Soothing Mist
        { spell = 116768, type = "buff", unit = "player" }, -- Blackout Kick!
        { spell = 116841, type = "buff", unit = "player", talent = 124937 }, -- Tiger's Lust
        { spell = 116847, type = "buff", unit = "player", talent = 124818 }, -- Rushing Jade Wind
        { spell = 120954, type = "buff", unit = "player", talent = 124968 }, -- Fortifying Brew
        { spell = 122783, type = "buff", unit = "player", talent = 124959 }, -- Diffuse Magic
        { spell = 125174, type = "buff", unit = "player" }, -- Touch of Karma
        { spell = 129914, type = "buff", unit = "player", talent = 125025 }, -- Combat Wisdom
        { spell = 137639, type = "buff", unit = "player", talent = 124826 }, -- Storm, Earth, and Fire
        { spell = 166646, type = "buff", unit = "player", talent = 124971 }, -- Windwalking
        { spell = 195321, type = "buff", unit = "player", talent = 125019 }, -- Transfer the Power
        { spell = 202090, type = "buff", unit = "player", talent = 124827 }, -- Teachings of the Monastery
        { spell = 325202, type = "buff", unit = "player", talent = 124834 }, -- Dance of Chi-Ji
        { spell = 388193, type = "buff", unit = "player", talent = 126026 }, -- Jadefire Stomp
        { spell = 388663, type = "buff", unit = "player", talent = 125014 }, -- Invoker's Delight
        { spell = 392883, type = "buff", unit = "player", talent = 124935 }, -- Vivacious Vivification
        { spell = 393039, type = "buff", unit = "player" }, -- The Emperor's Capacitor
        { spell = 393053, type = "buff", unit = "player" }, -- Pressure Point
        { spell = 393057, type = "buff", unit = "player" }, -- Chi Energy
        { spell = 393565, type = "buff", unit = "player", talent = 124811 }, -- Thunderfist
        { spell = 394112, type = "buff", unit = "player", talent = 124973 }, -- Escape from Reality
        { spell = 395413, type = "buff", unit = "player" }, -- Jadefire Brand
        { spell = 396167, type = "buff", unit = "player", talent = 125018 }, -- Fury of Xuen
        { spell = 414143, type = "buff", unit = "player", talent = 124960 }, -- Yu'lon's Grace
        { spell = 432180, type = "buff", unit = "player", talent = 124927 }, -- Dance of the Wind
        { spell = 442749, type = "buff", unit = "player", herotalent = 125057 }, -- Niuzao's Protection
        { spell = 442850, type = "buff", unit = "player", herotalent = 125051 }, -- August Dynasty
        { spell = 443028, type = "buff", unit = "player", herotalent = 125062 }, -- Celestial Conduit
        { spell = 443112, type = "buff", unit = "player", herotalent = 125060 }, -- Strength of the Black Ox
        { spell = 443424, type = "buff", unit = "player", herotalent = 125055 }, -- Heart of the Jade Serpent
        { spell = 443569, type = "buff", unit = "player", herotalent = 125059 }, -- Chi-Ji's Swiftness
        { spell = 443572, type = "buff", unit = "player" }, -- Crane Stance
        { spell = 443574, type = "buff", unit = "player" }, -- Ox Stance
        { spell = 443575, type = "buff", unit = "player" }, -- Tiger Stance
        { spell = 450380, type = "buff", unit = "player", talent = 124953 }, -- Chi Wave
        { spell = 450552, type = "buff", unit = "player", talent = 124954 }, -- Jade Walk
        { spell = 450574, type = "buff", unit = "player", talent = 124965 }, -- Flow of Chi
        { spell = 451021, type = "buff", unit = "player" }, -- Flurry Charge
        { spell = 451061, type = "buff", unit = "player", herotalent = 125074 }, -- Against All Odds
        { spell = 451085, type = "buff", unit = "player", herotalent = 125070 }, -- Veteran's Eye
        { spell = 451233, type = "buff", unit = "player", herotalent = 125063 }, -- Vigilant Watch
        { spell = 451242, type = "buff", unit = "player", herotalent = 125073 }, -- Wisdom of the Wall
        { spell = 451298, type = "buff", unit = "player", talent = 124820 }, -- Momentum Boost
        { spell = 451457, type = "buff", unit = "player", talent = 124830 }, -- Martial Mixture
        { spell = 451462, type = "buff", unit = "player", talent = 124823 }, -- Ordered Elements
        { spell = 451833, type = "buff", unit = "player", talent = 125020 }, -- Dual Threat
        { spell = 451943, type = "buff", unit = "player" }, -- Jade Swiftness
        { spell = 454970, type = "buff", unit = "player", talent = 125016 }, -- Memory of the Monastery
        { spell = 457459, type = "buff", unit = "player", herotalent = 125050 }, -- Flight of the Red Crane
        { spell = 460127, type = "buff", unit = "player", herotalent = 125061 }, -- Courage of the White Tiger
        { spell = 460490, type = "buff", unit = "player", talent = 124952 }, -- Chi Burst
        { spell = 470670, type = "buff", unit = "player", herotalent = 125069, progressSource = "stacks", maxProgress = "240" }, -- Flurry Strikes
      },
      icon = 611420
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 113746, type = "debuff", unit = "target" }, -- Mystic Touch
        { spell = 115078, type = "debuff", unit = "target", talent = 124932 }, -- Paralysis
        { spell = 115804, type = "debuff", unit = "target" }, -- Mortal Wounds
        { spell = 116189, type = "debuff", unit = "target" }, -- Provoke
        { spell = 119381, type = "debuff", unit = "target" }, -- Leg Sweep
        { spell = 122470, type = "debuff", unit = "target" }, -- Touch of Karma
        { spell = 198909, type = "debuff", unit = "target", talent = 124925 }, -- Song of Chi-Ji
        { spell = 324382, type = "debuff", unit = "target", talent = 124945 }, -- Clash
        { spell = 392983, type = "debuff", unit = "target", talent = 125022 }, -- Strike of the Windlord
        { spell = 395414, type = "debuff", unit = "target" }, -- Jadefire Brand
        { spell = 450596, type = "debuff", unit = "target", talent = 124928 }, -- Spirit's Essence
        { spell = 451433, type = "debuff", unit = "target", talent = 124806 }, -- Acclamation
        { spell = 451582, type = "debuff", unit = "target", talent = 124817 }, -- Gale Force
      },
      icon = 629534
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 100780, type = "ability", requiresTarget = true }, -- Tiger Palm
        { spell = 100784, type = "ability", overlayGlow = true, requiresTarget = true }, -- Blackout Kick
        { spell = 101545, type = "ability" }, -- Flying Serpent Kick
        { spell = 101546, type = "ability", charges = true, overlayGlow = true }, -- Spinning Crane Kick
        { spell = 101643, type = "ability", buff = true, talent = 124962 }, -- Transcendence
        { spell = 107428, type = "ability", requiresTarget = true, talent = 124985 }, -- Rising Sun Kick
        { spell = 109132, type = "ability", charges = true }, -- Roll
        { spell = 113656, type = "ability", requiresTarget = true, talent = 125026 }, -- Fists of Fury
        { spell = 115078, type = "ability", debuff = true, requiresTarget = true, talent = 124932 }, -- Paralysis
        { spell = 115203, type = "ability", talent = 124968 }, -- Fortifying Brew
        { spell = 115546, type = "ability", requiresTarget = true }, -- Provoke
        { spell = 116705, type = "ability", requiresTarget = true, talent = 124943 }, -- Spear Hand Strike
        { spell = 116841, type = "ability", buff = true, talent = 124937 }, -- Tiger's Lust
        { spell = 116844, type = "ability", talent = 124926 }, -- Ring of Peace
        { spell = 117952, type = "ability", requiresTarget = true }, -- Crackling Jade Lightning
        { spell = 119381, type = "ability", debuff = true }, -- Leg Sweep
        { spell = 119996, type = "ability", usable = true }, -- Transcendence: Transfer
        { spell = 122470, type = "ability", debuff = true, requiresTarget = true }, -- Touch of Karma
        { spell = 122783, type = "ability", buff = true, usable = true, talent = 124959 }, -- Diffuse Magic
        { spell = 123904, type = "ability", requiresTarget = true, totem = true, talent = 125013 }, -- Invoke Xuen, the White Tiger
        { spell = 126892, type = "ability" }, -- Zen Pilgrimage
        { spell = 137639, type = "ability", charges = true, buff = true, talent = 124826 }, -- Storm, Earth, and Fire
        { spell = 152175, type = "ability", usable = true, talent = 125011 }, -- Whirling Dragon Punch
        { spell = 198898, type = "ability", talent = 124925 }, -- Song of Chi-Ji
        { spell = 322109, type = "ability", requiresTarget = true, usable = true }, -- Touch of Death
        { spell = 324312, type = "ability", requiresTarget = true, talent = 124945 }, -- Clash
        { spell = 388193, type = "ability", buff = true, talent = 126026 }, -- Jadefire Stomp
        { spell = 392983, type = "ability", debuff = true, requiresTarget = true, talent = 125022 }, -- Strike of the Windlord
        { spell = 443028, type = "ability", buff = true, herotalent = 125062 }, -- Celestial Conduit
        { spell = 1217413, type = "ability", talent = 126307 }, -- Slicing Winds
      },
      icon = 627606
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\Icons\\ability_monk_healthsphere",
    },
  },
}

templates.class.DRUID = {
  [1] = { -- Balance
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 768, type = "buff", unit = "player" }, -- Cat Form
        { spell = 774, type = "buff", unit = "player", talent = 103295 }, -- Rejuvenation
        { spell = 783, type = "buff", unit = "player" }, -- Travel Form
        { spell = 1126, type = "buff", unit = "player" }, -- Mark of the Wild
        { spell = 1850, type = "buff", unit = "player" }, -- Dash
        { spell = 5215, type = "buff", unit = "player" }, -- Prowl
        { spell = 5487, type = "buff", unit = "player" }, -- Bear Form
        { spell = 8936, type = "buff", unit = "player" }, -- Regrowth
        { spell = 22812, type = "buff", unit = "player" }, -- Barkskin
        { spell = 22842, type = "buff", unit = "player", talent = 103298 }, -- Frenzied Regeneration
        { spell = 24858, type = "buff", unit = "player" }, -- Moonkin Form
        { spell = 48438, type = "buff", unit = "player", talent = 103320 }, -- Wild Growth
        { spell = 48517, type = "buff", unit = "player" }, -- Eclipse (Solar)
        { spell = 48518, type = "buff", unit = "player" }, -- Eclipse (Lunar)
        { spell = 77764, type = "buff", unit = "player", talent = 103312 }, -- Stampeding Roar
        { spell = 102560, type = "buff", unit = "player", talent = 109839 }, -- Incarnation: Chosen of Elune
        { spell = 124974, type = "buff", unit = "player", talent = 103324 }, -- Nature's Vigil
        { spell = 157228, type = "buff", unit = "player" }, -- Owlkin Frenzy
        { spell = 191034, type = "buff", unit = "player" }, -- Starfall
        { spell = 192081, type = "buff", unit = "player", talent = 103305 }, -- Ironfur
        { spell = 202425, type = "buff", unit = "player", talent = 114648 }, -- Warrior of Elune
        { spell = 252216, type = "buff", unit = "player", talent = 103275 }, -- Tiger Dash
        { spell = 279709, type = "buff", unit = "player", talent = 109840 }, -- Starlord
        { spell = 319454, type = "buff", unit = "player", talent = 103309 }, -- Heart of the Wild
        { spell = 343648, type = "buff", unit = "player", talent = 109835 }, -- Solstice
        { spell = 383410, type = "buff", unit = "player", talent = 109849 }, -- Celestial Alignment
        { spell = 385787, type = "buff", unit = "player", talent = 103314 }, -- Matted Fur
        { spell = 391528, type = "buff", unit = "player", talent = 109838 }, -- Convoke the Spirits
        { spell = 393763, type = "buff", unit = "player", talent = 109850 }, -- Umbral Embrace
        { spell = 393903, type = "buff", unit = "player", talent = 103313 }, -- Ursine Vigor
        { spell = 393942, type = "buff", unit = "player", talent = 109873 }, -- Starweaver's Warp
        { spell = 393944, type = "buff", unit = "player", talent = 109873 }, -- Starweaver's Weft
        { spell = 394049, type = "buff", unit = "player", talent = 109848 }, -- Balance of All Things (Nature)
        { spell = 394050, type = "buff", unit = "player", talent = 109848 }, -- Balance of All Things (Arcane)
        { spell = 394108, type = "buff", unit = "player", talent = 109831 }, -- Sundered Firmament
        { spell = 395110, type = "buff", unit = "player", talent = 109851 }, -- Parting Skies
        { spell = 400126, type = "buff", unit = "player", talent = 123792 }, -- Forestwalk
        { spell = 428735, type = "buff", unit = "player", herotalent = 117203 }, -- Harmony of the Grove
        { spell = 429438, type = "buff", unit = "player", herotalent = 117196 }, -- Blooming Infusion
        { spell = 431250, type = "buff", unit = "player", herotalent = 117190 }, -- Lunar Amplification
        { spell = 433749, type = "buff", unit = "player", herotalent = 117186 }, -- Protective Growth
        { spell = 433832, type = "buff", unit = "player" }, -- Dream Burst
        { spell = 450346, type = "buff", unit = "player", talent = 109857 }, -- Dreamstate
        { spell = 450360, type = "buff", unit = "player", talent = 109857 }, -- Touch the Cosmos
        { spell = 450599, type = "buff", unit = "player", talent = 109871 }, -- Astral Communion
        { spell = 450419, type = "buff", unit = "player", talent = 109851 }, -- Umbral Inspiration
        { spell = 455801, type = "buff", unit = "player", herotalent = 117199 }, -- Cenarius' Might
        { spell = 474750, type = "buff", unit = "target", talent = 123792 }, -- Symbiotic Relationship
      },
      icon = 136097
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 99, type = "debuff", unit = "target", talent = 103316 }, -- Incapacitating Roar
        { spell = 339, type = "debuff", unit = "target" }, -- Entangling Roots
        { spell = 1079, type = "debuff", unit = "target", talent = 103300 }, -- Rip
        { spell = 5211, type = "debuff", unit = "target", talent = 103315 }, -- Mighty Bash
        { spell = 6795, type = "debuff", unit = "target" }, -- Growl
        { spell = 50259, type = "debuff", unit = "target" }, -- Dazed
        { spell = 61391, type = "debuff", unit = "target", talent = 103287 }, -- Typhoon
        { spell = 81261, type = "debuff", unit = "target", talent = 109867 }, -- Solar Beam
        { spell = 81281, type = "debuff", unit = "target" }, -- Fungal Growth
        { spell = 102359, type = "debuff", unit = "target", talent = 103322 }, -- Mass Entanglement
        { spell = 127797, type = "debuff", unit = "target", talent = 103321 }, -- Ursol's Vortex
        { spell = 155722, type = "debuff", unit = "target", talent = 103277 }, -- Rake
        { spell = 164812, type = "debuff", unit = "target" }, -- Moonfire
        { spell = 164815, type = "debuff", unit = "target", talent = 103286 }, -- Sunfire
        { spell = 192090, type = "debuff", unit = "target", talent = 103301 }, -- Thrash
        { spell = 202347, type = "debuff", unit = "target", talent = 109841 }, -- Stellar Flare
        { spell = 203123, type = "debuff", unit = "target", talent = 103299 }, -- Maim
        { spell = 205644, type = "debuff", unit = "target", talent = 109844 }, -- Force of Nature
        { spell = 393957, type = "debuff", unit = "target", talent = 109834 }, -- Waning Twilight
        { spell = 394061, type = "debuff", unit = "target", talent = 109836 }, -- Astral Smolder
        { spell = 430589, type = "debuff", unit = "target", herotalent = 117204 }, -- Atmospheric Exposure
        { spell = 450214, type = "debuff", unit = "target", talent = 109865 }, -- Stellar Amplification
      },
      icon = 132114
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 99, type = "ability", debuff = true, talent = 103316 }, -- Incapacitating Roar
        { spell = 339, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Entangling Roots
        { spell = 768, type = "ability", buff = true }, -- Cat Form
        { spell = 783, type = "ability", buff = true }, -- Travel Form
        { spell = 1079, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 103300 }, -- Rip
        { spell = 1822, type = "ability", requiresTarget = true, usable = true, talent = 103277 }, -- Rake
        { spell = 1850, type = "ability", buff = true }, -- Dash
        { spell = 2782, type = "ability", talent = 103283 }, -- Remove Corruption
        { spell = 2908, type = "ability", requiresTarget = true, talent = 103307 }, -- Soothe
        { spell = 5211, type = "ability", debuff = true, requiresTarget = true, talent = 103315 }, -- Mighty Bash
        { spell = 5215, type = "ability", buff = true, usable = true }, -- Prowl
        { spell = 5221, type = "ability", requiresTarget = true, usable = true }, -- Shred
        { spell = 5487, type = "ability", buff = true }, -- Bear Form
        { spell = 6795, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Growl
        { spell = 8921, type = "ability", requiresTarget = true }, -- Moonfire
        { spell = 20484, type = "ability" }, -- Rebirth
        { spell = 22568, type = "ability", requiresTarget = true, usable = true }, -- Ferocious Bite
        { spell = 22570, type = "ability", requiresTarget = true, usable = true, talent = 103299 }, -- Maim
        { spell = 22812, type = "ability", buff = true }, -- Barkskin
        { spell = 22842, type = "ability", charges = true, buff = true, usable = true, talent = 103298 }, -- Frenzied Regeneration
        { spell = 24858, type = "ability", buff = true }, -- Moonkin Form
        { spell = 33786, type = "ability", requiresTarget = true, talent = 103291 }, -- Cyclone
        { spell = 33917, type = "ability", requiresTarget = true, usable = true }, -- Mangle
        { spell = 48438, type = "ability", buff = true, requiresTarget = true, talent = 103320 }, -- Wild Growth
        { spell = 49376, type = "ability", talent = 103276 }, -- Wild Charge
        { spell = 77758, type = "ability", talent = 103301 }, -- Thrash
        { spell = 77764, type = "ability", buff = true, talent = 103312 }, -- Stampeding Roar
        { spell = 78674, type = "ability", overlayGlow = true, requiresTarget = true, talent = 103280 }, -- Starsurge
        { spell = 78675, type = "ability", requiresTarget = true, talent = 109867 }, -- Solar Beam
        { spell = 88747, type = "ability", charges = true, requiresTarget = true, talent = 117100 }, -- Wild Mushroom
        { spell = 93402, type = "ability", requiresTarget = true, talent = 103286 }, -- Sunfire
        { spell = 102359, type = "ability", debuff = true, requiresTarget = true, talent = 103322 }, -- Mass Entanglement
        { spell = 102560, type = "ability", buff = true, talent = 109839 }, -- Incarnation: Chosen of Elune
        { spell = 102793, type = "ability", talent = 103321 }, -- Ursol's Vortex
        { spell = 106832, type = "ability", usable = true, talent = 103301 }, -- Thrash
        { spell = 108238, type = "ability", talent = 103310 }, -- Renewal
        { spell = 124974, type = "ability", buff = true, talent = 103324 }, -- Nature's Vigil
        { spell = 132469, type = "ability", talent = 103287 }, -- Typhoon
        { spell = 190984, type = "ability", charges = true, overlayGlow = true, requiresTarget = true }, -- Wrath
        { spell = 192081, type = "ability", buff = true, usable = true, talent = 103305 }, -- Ironfur
        { spell = 194153, type = "ability", charges = true, overlayGlow = true, requiresTarget = true, talent = 103279 }, -- Starfire
        { spell = 202347, type = "ability", debuff = true, requiresTarget = true, talent = 109841 }, -- Stellar Flare
        { spell = 202425, type = "ability", buff = true, talent = 114648 }, -- Warrior of Elune
        { spell = 202770, type = "ability", requiresTarget = true, talent = 109859 }, -- Fury of Elune
        { spell = 205636, type = "ability", talent = 109844 }, -- Force of Nature
        { spell = 252216, type = "ability", buff = true, talent = 103275 }, -- Tiger Dash
        { spell = 274281, type = "ability", charges = true, requiresTarget = true, usable = true, talent = 109860 }, -- New Moon
        { spell = 274282, type = "ability", charges = true, requiresTarget = true, usable = true, talent = 109860 }, -- Half Moon
        { spell = 274283, type = "ability", charges = true, requiresTarget = true, usable = true, talent = 109860 }, -- Full Moon
        { spell = 319454, type = "ability", buff = true, talent = 103309 }, -- Heart of the Wild
        { spell = 383410, type = "ability", charges = true, buff = true, talent = 109849 }, -- Celestial Alignment
        { spell = 391528, type = "ability", buff = true, talent = 109838 }, -- Convoke the Spirits
      },
      icon = 132134
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources and Shapeshift Form"],
      args = {
      },
      icon = "Interface\\Icons\\ability_druid_eclipseorange",
    },
  },
  [2] = { -- Feral
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 768, type = "buff", unit = "player" }, -- Cat Form
        { spell = 774, type = "buff", unit = "player", talent = 103295 }, -- Rejuvenation
        { spell = 1126, type = "buff", unit = "player" }, -- Mark of the Wild
        { spell = 1850, type = "buff", unit = "player" }, -- Dash
        { spell = 5217, type = "buff", unit = "player", talent = 103188 }, -- Tiger's Fury
        { spell = 5487, type = "buff", unit = "player" }, -- Bear Form
        { spell = 8936, type = "buff", unit = "player" }, -- Regrowth
        { spell = 22812, type = "buff", unit = "player" }, -- Barkskin
        { spell = 22842, type = "buff", unit = "player", talent = 103298 }, -- Frenzied Regeneration
        { spell = 61336, type = "buff", unit = "player", talent = 103180 }, -- Survival Instincts
        { spell = 69369, type = "buff", unit = "player", talent = 103167 }, -- Predatory Swiftness
        { spell = 77764, type = "buff", unit = "player", talent = 103312 }, -- Stampeding Roar
        { spell = 102543, type = "buff", unit = "player", talent = 103178 }, -- Incarnation: Avatar of Ashamane
        { spell = 106951, type = "buff", unit = "player", talent = 103162 }, -- Berserk
        { spell = 124974, type = "buff", unit = "player", talent = 103324 }, -- Nature's Vigil
        { spell = 135700, type = "buff", unit = "player" }, -- Clearcasting
        { spell = 145152, type = "buff", unit = "player", talent = 103171 }, -- Bloodtalons
        { spell = 192081, type = "buff", unit = "player", talent = 103305 }, -- Ironfur
        { spell = 252216, type = "buff", unit = "player", talent = 103275 }, -- Tiger Dash
        { spell = 319454, type = "buff", unit = "player", talent = 103309 }, -- Heart of the Wild
        { spell = 385787, type = "buff", unit = "player", talent = 103314 }, -- Matted Fur
        { spell = 391528, type = "buff", unit = "player", talent = 103177 }, -- Convoke the Spirits
        { spell = 391873, type = "buff", unit = "player", talent = 103168 }, -- Tiger's Tenacity
        { spell = 391876, type = "buff", unit = "player", talent = 103179 }, -- Frantic Momentum
        { spell = 391882, type = "buff", unit = "player", talent = 103152 }, -- Apex Predator's Craving
        { spell = 391974, type = "buff", unit = "player", talent = 103165 }, -- Sudden Ambush
        { spell = 393903, type = "buff", unit = "player", talent = 103313 }, -- Ursine Vigor
        { spell = 400126, type = "buff", unit = "player", talent = 123792 }, -- Forestwalk
        { spell = 405189, type = "buff", unit = "player" }, -- Overflowing Power
        { spell = 421442, type = "buff", unit = "player", talent = 103176 }, -- Ashamane's Guidance
        { spell = 439530, type = "buff", unit = "player" }, -- Symbiotic Blooms
        { spell = 439887, type = "buff", unit = "player", herotalent = 117233 }, -- Root Network
        { spell = 439891, type = "buff", unit = "player", herotalent = 117223 }, -- Strategic Infusion
        { spell = 441585, type = "buff", unit = "player", herotalent = 117206 }, -- Ravage
        { spell = 441685, type = "buff", unit = "player", herotalent = 117207 }, -- Wildshape Mastery
        { spell = 441695, type = "buff", unit = "player" }, -- Ursine Potential
        { spell = 441817, type = "buff", unit = "player", herotalent = 117219 }, -- Ruthless Aggression
        { spell = 441825, type = "buff", unit = "player", herotalent = 123048 }, -- Killing Strikes
        { spell = 449538, type = "buff", unit = "player", talent = 103144 }, -- Coiled to Spring
        { spell = 449646, type = "buff", unit = "player", talent = 103160 }, -- Savage Fury
        { spell = 455496, type = "buff", unit = "player", herotalent = 117229 }, -- Implant
        { spell = 474750, type = "buff", unit = "target", talent = 123792 }, -- Symbiotic Relationship
      },
      icon = 136170
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 99, type = "debuff", unit = "target", talent = 103316 }, -- Incapacitating Roar
        { spell = 339, type = "debuff", unit = "target" }, -- Entangling Roots
        { spell = 1079, type = "debuff", unit = "target", talent = 103300 }, -- Rip
        { spell = 5211, type = "debuff", unit = "target", talent = 103315 }, -- Mighty Bash
        { spell = 6795, type = "debuff", unit = "target" }, -- Growl
        { spell = 50259, type = "debuff", unit = "target" }, -- Dazed
        { spell = 58180, type = "debuff", unit = "target", talent = 103182 }, -- Infected Wounds
        { spell = 61391, type = "debuff", unit = "target", talent = 103287 }, -- Typhoon
        { spell = 102359, type = "debuff", unit = "target", talent = 103322 }, -- Mass Entanglement
        { spell = 127797, type = "debuff", unit = "target", talent = 103321 }, -- Ursol's Vortex
        { spell = 155625, type = "debuff", unit = "target" }, -- Moonfire
        { spell = 155722, type = "debuff", unit = "target", talent = 103277 }, -- Rake
        { spell = 164815, type = "debuff", unit = "target", talent = 103286 }, -- Sunfire
        { spell = 203123, type = "debuff", unit = "target", talent = 103299 }, -- Maim
        { spell = 274838, type = "debuff", unit = "target", talent = 103170 }, -- Feral Frenzy
        { spell = 391140, type = "debuff", unit = "target" }, -- Frenzied Assault
        { spell = 391356, type = "debuff", unit = "target" }, -- Tear
        { spell = 391722, type = "debuff", unit = "target", talent = 103163 }, -- Sabertooth
        { spell = 391889, type = "debuff", unit = "target", talent = 103175 }, -- Adaptive Swarm
        { spell = 405233, type = "debuff", unit = "target" }, -- Thrash
        { spell = 439531, type = "debuff", unit = "target" }, -- Bloodseeker Vines
        { spell = 441812, type = "debuff", unit = "target", herotalent = 117220 }, -- Dreadful Wound
      },
      icon = 132152
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 99, type = "ability", debuff = true, talent = 103316 }, -- Incapacitating Roar
        { spell = 339, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Entangling Roots
        { spell = 768, type = "ability", buff = true }, -- Cat Form
        { spell = 1079, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 103300 }, -- Rip
        { spell = 1822, type = "ability", requiresTarget = true, usable = true, talent = 103277 }, -- Rake
        { spell = 1850, type = "ability", buff = true }, -- Dash
        { spell = 2782, type = "ability", talent = 103282 }, -- Remove Corruption
        { spell = 2908, type = "ability", requiresTarget = true, talent = 103307 }, -- Soothe
        { spell = 5176, type = "ability", charges = true, requiresTarget = true }, -- Wrath
        { spell = 5211, type = "ability", debuff = true, requiresTarget = true, talent = 103315 }, -- Mighty Bash
        { spell = 5217, type = "ability", buff = true, talent = 103188 }, -- Tiger's Fury
        { spell = 5221, type = "ability", requiresTarget = true, usable = true }, -- Shred
        { spell = 5487, type = "ability", buff = true }, -- Bear Form
        { spell = 6795, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Growl
        { spell = 8921, type = "ability", requiresTarget = true }, -- Moonfire
        { spell = 20484, type = "ability" }, -- Rebirth
        { spell = 22568, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Ferocious Bite
        { spell = 22570, type = "ability", requiresTarget = true, usable = true, talent = 103299 }, -- Maim
        { spell = 22812, type = "ability", buff = true }, -- Barkskin
        { spell = 22842, type = "ability", charges = true, buff = true, usable = true, talent = 103298 }, -- Frenzied Regeneration
        { spell = 33786, type = "ability", requiresTarget = true, talent = 103291 }, -- Cyclone
        { spell = 33917, type = "ability", requiresTarget = true, usable = true }, -- Mangle
        { spell = 61336, type = "ability", buff = true, talent = 103180 }, -- Survival Instincts
        { spell = 77758, type = "ability", requiresTarget = true }, -- Thrash
        { spell = 77764, type = "ability", buff = true, talent = 103312 }, -- Stampeding Roar
        { spell = 78674, type = "ability", requiresTarget = true, talent = 103280 }, -- Starsurge
        { spell = 93402, type = "ability", requiresTarget = true, talent = 103286 }, -- Sunfire
        { spell = 102359, type = "ability", debuff = true, requiresTarget = true, talent = 103322 }, -- Mass Entanglement
        { spell = 102401, type = "ability", requiresTarget = true, talent = 103276 }, -- Wild Charge
        { spell = 102543, type = "ability", buff = true, talent = 103178 }, -- Incarnation: Avatar of Ashamane
        { spell = 102793, type = "ability", talent = 103321 }, -- Ursol's Vortex
        { spell = 106832, type = "ability", requiresTarget = true, usable = true }, -- Thrash
        { spell = 106839, type = "ability", requiresTarget = true, usable = true, talent = 103302 }, -- Skull Bash
        { spell = 106951, type = "ability", buff = true, talent = 103162 }, -- Berserk
        { spell = 108238, type = "ability", talent = 103310 }, -- Renewal
        { spell = 124974, type = "ability", buff = true, talent = 103324 }, -- Nature's Vigil
        { spell = 132469, type = "ability", talent = 103287 }, -- Typhoon
        { spell = 192081, type = "ability", buff = true, usable = true, talent = 103305 }, -- Ironfur
        { spell = 194153, type = "ability", requiresTarget = true, talent = 103279 }, -- Starfire
        { spell = 197626, type = "ability", requiresTarget = true, talent = 103278 }, -- Starsurge
        { spell = 197628, type = "ability", requiresTarget = true, talent = 112967 }, -- Starfire
        { spell = 202028, type = "ability", charges = true, usable = true, talent = 103151 }, -- Brutal Slash
        { spell = 252216, type = "ability", buff = true, talent = 103275 }, -- Tiger Dash
        { spell = 274837, type = "ability", requiresTarget = true, usable = true, talent = 103170 }, -- Feral Frenzy
        { spell = 319454, type = "ability", buff = true, talent = 103309 }, -- Heart of the Wild
        { spell = 391528, type = "ability", buff = true, talent = 103177 }, -- Convoke the Spirits
        { spell = 391888, type = "ability", requiresTarget = true, talent = 103175 }, -- Adaptive Swarm
      },
      icon = 236149
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources and Shapeshift Form"],
      args = {
      },
      icon = comboPointsIcon,
    },
  },
  [3] = { -- Guardian
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 768, type = "buff", unit = "player" }, -- Cat Form
        { spell = 774, type = "buff", unit = "player", talent = 103295 }, -- Rejuvenation
        { spell = 783, type = "buff", unit = "player" }, -- Travel Form
        { spell = 1126, type = "buff", unit = "player" }, -- Mark of the Wild
        { spell = 1850, type = "buff", unit = "player" }, -- Dash
        { spell = 5487, type = "buff", unit = "player" }, -- Bear Form
        { spell = 8936, type = "buff", unit = "player" }, -- Regrowth
        { spell = 22812, type = "buff", unit = "player" }, -- Barkskin
        { spell = 22842, type = "buff", unit = "player", talent = 103298 }, -- Frenzied Regeneration
        { spell = 50334, type = "buff", unit = "player", talent = 103224 }, -- Berserk
        { spell = 61336, type = "buff", unit = "player", talent = 103193 }, -- Survival Instincts
        { spell = 77761, type = "buff", unit = "player", talent = 103312 }, -- Stampeding Roar
        { spell = 93622, type = "buff", unit = "player", talent = 103190 }, -- Gore
        { spell = 102558, type = "buff", unit = "player", talent = 103201 }, -- Incarnation: Guardian of Ursoc
        { spell = 124974, type = "buff", unit = "player", talent = 103324 }, -- Nature's Vigil
        { spell = 135286, type = "buff", unit = "player", talent = 103197 }, -- Tooth and Claw
        { spell = 155835, type = "buff", unit = "player", talent = 103230 }, -- Bristling Fur
        { spell = 192081, type = "buff", unit = "player", talent = 103305 }, -- Ironfur
        { spell = 200851, type = "buff", unit = "player", talent = 103207 }, -- Rage of the Sleeper
        { spell = 201671, type = "buff", unit = "player", talent = 103196 }, -- Gory Fur
        { spell = 203975, type = "buff", unit = "player", talent = 103225 }, -- Earthwarden
        { spell = 204066, type = "buff", unit = "player", talent = 114700 }, -- Lunar Beam
        { spell = 213680, type = "buff", unit = "player", talent = 103205 }, -- Guardian of Elune
        { spell = 213708, type = "buff", unit = "player", talent = 103212 }, -- Galactic Guardian
        { spell = 252216, type = "buff", unit = "player", talent = 103275 }, -- Tiger Dash
        { spell = 319454, type = "buff", unit = "player", talent = 103309 }, -- Heart of the Wild
        { spell = 372015, type = "buff", unit = "player", talent = 103227 }, -- Vicious Cycle
        { spell = 372505, type = "buff", unit = "player", talent = 103219 }, -- Ursoc's Fury
        { spell = 385787, type = "buff", unit = "player", talent = 103314 }, -- Matted Fur
        { spell = 391528, type = "buff", unit = "player", talent = 103200 }, -- Convoke the Spirits
        { spell = 393903, type = "buff", unit = "player", talent = 103313 }, -- Ursine Vigor
        { spell = 400126, type = "buff", unit = "player", talent = 123792 }, -- Forestwalk
        { spell = 400734, type = "buff", unit = "player", talent = 103206 }, -- After the Wildfire
        { spell = 431250, type = "buff", unit = "player", herotalent = 117190 }, -- Lunar Amplification
        { spell = 441602, type = "buff", unit = "player", herotalent = 117206 }, -- Ravage
        { spell = 441685, type = "buff", unit = "player", herotalent = 117207 }, -- Wildshape Mastery
        { spell = 441701, type = "buff", unit = "player" }, -- Feline Potential
        { spell = 441817, type = "buff", unit = "player", herotalent = 117219 }, -- Ruthless Aggression
        { spell = 441825, type = "buff", unit = "player", herotalent = 123048 }, -- Killing Strikes
        { spell = 474750, type = "buff", unit = "target", talent = 123792 }, -- Symbiotic Relationship
      },
      icon = 1378702
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 99, type = "debuff", unit = "target", talent = 103316 }, -- Incapacitating Roar
        { spell = 339, type = "debuff", unit = "target" }, -- Entangling Roots
        { spell = 1079, type = "debuff", unit = "target", talent = 103300 }, -- Rip
        { spell = 5211, type = "debuff", unit = "target", talent = 103315 }, -- Mighty Bash
        { spell = 6795, type = "debuff", unit = "target" }, -- Growl
        { spell = 45334, type = "debuff", unit = "target" }, -- Immobilized
        { spell = 50259, type = "debuff", unit = "target" }, -- Dazed
        { spell = 61391, type = "debuff", unit = "target", talent = 103287 }, -- Typhoon
        { spell = 80313, type = "debuff", unit = "target", talent = 103222 }, -- Pulverize
        { spell = 102359, type = "debuff", unit = "target", talent = 103322 }, -- Mass Entanglement
        { spell = 127797, type = "debuff", unit = "target", talent = 103321 }, -- Ursol's Vortex
        { spell = 135601, type = "debuff", unit = "target", talent = 103197 }, -- Tooth and Claw
        { spell = 155722, type = "debuff", unit = "target", talent = 103277 }, -- Rake
        { spell = 164812, type = "debuff", unit = "target" }, -- Moonfire
        { spell = 164815, type = "debuff", unit = "target", talent = 103286 }, -- Sunfire
        { spell = 192090, type = "debuff", unit = "target", talent = 103301 }, -- Thrash
        { spell = 203123, type = "debuff", unit = "target", talent = 103299 }, -- Maim
        { spell = 345209, type = "debuff", unit = "target", talent = 103232 }, -- Infected Wounds
        { spell = 430589, type = "debuff", unit = "target", herotalent = 117204 }, -- Atmospheric Exposure
        { spell = 451177, type = "debuff", unit = "target", herotalent = 117220 }, -- Dreadful Wound
      },
      icon = 451161
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 99, type = "ability", debuff = true, talent = 103316 }, -- Incapacitating Roar
        { spell = 339, type = "ability", debuff = true, requiresTarget = true }, -- Entangling Roots
        { spell = 768, type = "ability", buff = true }, -- Cat Form
        { spell = 783, type = "ability", buff = true }, -- Travel Form
        { spell = 1079, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 103300 }, -- Rip
        { spell = 1822, type = "ability", requiresTarget = true, usable = true, talent = 103277 }, -- Rake
        { spell = 1850, type = "ability", buff = true }, -- Dash
        { spell = 2782, type = "ability", talent = 103293 }, -- Remove Corruption
        { spell = 2908, type = "ability", requiresTarget = true, talent = 103307 }, -- Soothe
        { spell = 5176, type = "ability", charges = true, requiresTarget = true }, -- Wrath
        { spell = 5211, type = "ability", debuff = true, requiresTarget = true, talent = 103315 }, -- Mighty Bash
        { spell = 5221, type = "ability", requiresTarget = true, usable = true }, -- Shred
        { spell = 5487, type = "ability", buff = true }, -- Bear Form
        { spell = 6795, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Growl
        { spell = 6807, type = "ability", overlayGlow = true, requiresTarget = true, usable = true, talent = 103191 }, -- Maul
        { spell = 8921, type = "ability", overlayGlow = true, requiresTarget = true }, -- Moonfire
        { spell = 16979, type = "ability", requiresTarget = true, talent = 103276 }, -- Wild Charge
        { spell = 20484, type = "ability" }, -- Rebirth
        { spell = 22568, type = "ability", requiresTarget = true, usable = true }, -- Ferocious Bite
        { spell = 22570, type = "ability", requiresTarget = true, usable = true, talent = 103299 }, -- Maim
        { spell = 22812, type = "ability", buff = true }, -- Barkskin
        { spell = 22842, type = "ability", charges = true, buff = true, usable = true, talent = 103298 }, -- Frenzied Regeneration
        { spell = 33786, type = "ability", requiresTarget = true, talent = 103291 }, -- Cyclone
        { spell = 33917, type = "ability", overlayGlow = true, requiresTarget = true, usable = true, talent = 103195 }, -- Mangle
        { spell = 48438, type = "ability", requiresTarget = true, talent = 103320 }, -- Wild Growth
        { spell = 50334, type = "ability", buff = true, talent = 103224 }, -- Berserk
        { spell = 61336, type = "ability", charges = true, buff = true, talent = 103193 }, -- Survival Instincts
        { spell = 77758, type = "ability", requiresTarget = true, talent = 103301 }, -- Thrash
        { spell = 77761, type = "ability", buff = true, talent = 103312 }, -- Stampeding Roar
        { spell = 80313, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 103222 }, -- Pulverize
        { spell = 93402, type = "ability", requiresTarget = true, talent = 103286 }, -- Sunfire
        { spell = 102359, type = "ability", debuff = true, requiresTarget = true, talent = 103322 }, -- Mass Entanglement
        { spell = 102558, type = "ability", buff = true, talent = 103201 }, -- Incarnation: Guardian of Ursoc
        { spell = 102793, type = "ability", talent = 103321 }, -- Ursol's Vortex
        { spell = 106832, type = "ability", requiresTarget = true, usable = true, talent = 103301 }, -- Thrash
        { spell = 106839, type = "ability", requiresTarget = true, usable = true, talent = 103302 }, -- Skull Bash
        { spell = 108238, type = "ability", talent = 103310 }, -- Renewal
        { spell = 124974, type = "ability", buff = true, talent = 103324 }, -- Nature's Vigil
        { spell = 132469, type = "ability", talent = 103287 }, -- Typhoon
        { spell = 155835, type = "ability", buff = true, talent = 103230 }, -- Bristling Fur
        { spell = 192081, type = "ability", buff = true, usable = true, talent = 103305 }, -- Ironfur
        { spell = 197626, type = "ability", requiresTarget = true, talent = 103278 }, -- Starsurge
        { spell = 197628, type = "ability", charges = true, requiresTarget = true, talent = 112964 }, -- Starfire
        { spell = 200851, type = "ability", buff = true, usable = true, talent = 103207 }, -- Rage of the Sleeper
        { spell = 204066, type = "ability", buff = true, talent = 114700 }, -- Lunar Beam
        { spell = 252216, type = "ability", buff = true, talent = 103275 }, -- Tiger Dash
        { spell = 319454, type = "ability", buff = true, talent = 103309 }, -- Heart of the Wild
        { spell = 391528, type = "ability", buff = true, talent = 103200 }, -- Convoke the Spirits
      },
      icon = 236169
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources and Shapeshift Form"],
      args = {
      },
      icon = rageIcon,
    },
  },
  [4] = { -- Restoration
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 768, type = "buff", unit = "player" }, -- Cat Form
        { spell = 774, type = "buff", unit = "player", talent = 103295 }, -- Rejuvenation
        { spell = 1126, type = "buff", unit = "player" }, -- Mark of the Wild
        { spell = 1850, type = "buff", unit = "player" }, -- Dash
        { spell = 5215, type = "buff", unit = "player" }, -- Prowl
        { spell = 5487, type = "buff", unit = "player" }, -- Bear Form
        { spell = 8936, type = "buff", unit = "player" }, -- Regrowth
        { spell = 16870, type = "buff", unit = "player" }, -- Clearcasting
        { spell = 22812, type = "buff", unit = "player" }, -- Barkskin
        { spell = 22842, type = "buff", unit = "player", talent = 103298 }, -- Frenzied Regeneration
        { spell = 29166, type = "buff", unit = "player", talent = 103323 }, -- Innervate
        { spell = 33763, type = "buff", unit = "player", talent = 103100 }, -- Lifebloom
        { spell = 33891, type = "buff", unit = "player", talent = 103120 }, -- Incarnation: Tree of Life
        { spell = 48438, type = "buff", unit = "player", talent = 103320 }, -- Wild Growth
        { spell = 77764, type = "buff", unit = "player", talent = 103312 }, -- Stampeding Roar
        { spell = 102342, type = "buff", unit = "player", talent = 103141 }, -- Ironbark
        { spell = 102351, type = "buff", unit = "player", talent = 103104 }, -- Cenarion Ward
        { spell = 114108, type = "buff", unit = "player", talent = 103113 }, -- Soul of the Forest
        { spell = 117679, type = "buff", unit = "player" }, -- Incarnation
        { spell = 124974, type = "buff", unit = "player", talent = 103324 }, -- Nature's Vigil
        { spell = 132158, type = "buff", unit = "player", talent = 103101 }, -- Nature's Swiftness
        { spell = 145205, type = "buff", unit = "player", talent = 103111 }, -- Efflorescence
        { spell = 155777, type = "buff", unit = "player" }, -- Rejuvenation (Germination)
        { spell = 157982, type = "buff", unit = "player", talent = 103108 }, -- Tranquility
        { spell = 192081, type = "buff", unit = "player", talent = 103305 }, -- Ironfur
        { spell = 197721, type = "buff", unit = "player", talent = 123776 }, -- Flourish
        { spell = 207386, type = "buff", unit = "player", talent = 103116 }, -- Spring Blossoms
        { spell = 207640, type = "buff", unit = "player", talent = 103105 }, -- Abundance
        { spell = 252216, type = "buff", unit = "player", talent = 103275 }, -- Tiger Dash
        { spell = 319454, type = "buff", unit = "player", talent = 103309 }, -- Heart of the Wild
        { spell = 383193, type = "buff", unit = "player", talent = 103098 }, -- Grove Tending
        { spell = 385787, type = "buff", unit = "player", talent = 103314 }, -- Matted Fur
        { spell = 391528, type = "buff", unit = "player", talent = 103119 }, -- Convoke the Spirits
        { spell = 392303, type = "buff", unit = "player", talent = 103134 }, -- Power of the Archdruid
        { spell = 392360, type = "buff", unit = "player", talent = 103125 }, -- Reforestation
        { spell = 393903, type = "buff", unit = "player", talent = 103313 }, -- Ursine Vigor
        { spell = 400126, type = "buff", unit = "player", talent = 123792 }, -- Forestwalk
        { spell = 428737, type = "buff", unit = "player", herotalent = 117203 }, -- Harmony of the Grove
        { spell = 428866, type = "buff", unit = "player", herotalent = 117201 }, -- Power of Nature
        { spell = 429474, type = "buff", unit = "player", herotalent = 117196 }, -- Blooming Infusion
        { spell = 433749, type = "buff", unit = "player", herotalent = 117186 }, -- Protective Growth
        { spell = 434112, type = "buff", unit = "player", herotalent = 117195 }, -- Dream Surge
        { spell = 439530, type = "buff", unit = "player" }, -- Symbiotic Blooms
        { spell = 439887, type = "buff", unit = "player", herotalent = 117233 }, -- Root Network
        { spell = 439893, type = "buff", unit = "player", herotalent = 117223 }, -- Strategic Infusion
        { spell = 455801, type = "buff", unit = "player", herotalent = 117199 }, -- Cenarius' Might
        { spell = 474750, type = "buff", unit = "target", talent = 123792 }, -- Symbiotic Relationship
      },
      icon = 136081
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 99, type = "debuff", unit = "target", talent = 103316 }, -- Incapacitating Roar
        { spell = 339, type = "debuff", unit = "target" }, -- Entangling Roots
        { spell = 1079, type = "debuff", unit = "target", talent = 103300 }, -- Rip
        { spell = 5211, type = "debuff", unit = "target", talent = 103315 }, -- Mighty Bash
        { spell = 6795, type = "debuff", unit = "target" }, -- Growl
        { spell = 50259, type = "debuff", unit = "target" }, -- Dazed
        { spell = 61391, type = "debuff", unit = "target", talent = 103287 }, -- Typhoon
        { spell = 102359, type = "debuff", unit = "target", talent = 103322 }, -- Mass Entanglement
        { spell = 127797, type = "debuff", unit = "target", talent = 103321 }, -- Ursol's Vortex
        { spell = 155722, type = "debuff", unit = "target", talent = 103277 }, -- Rake
        { spell = 164812, type = "debuff", unit = "target" }, -- Moonfire
        { spell = 164815, type = "debuff", unit = "target", talent = 103286 }, -- Sunfire
        { spell = 192090, type = "debuff", unit = "target", talent = 103301 }, -- Thrash
        { spell = 203123, type = "debuff", unit = "target", talent = 103299 }, -- Maim
        { spell = 439531, type = "debuff", unit = "target" }, -- Bloodseeker Vines
      },
      icon = 236216
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 99, type = "ability", debuff = true, talent = 103316 }, -- Incapacitating Roar
        { spell = 339, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Entangling Roots
        { spell = 740, type = "ability", talent = 103108 }, -- Tranquility
        { spell = 768, type = "ability", buff = true }, -- Cat Form
        { spell = 1079, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 103300 }, -- Rip
        { spell = 1822, type = "ability", requiresTarget = true, usable = true, talent = 103277 }, -- Rake
        { spell = 1850, type = "ability", buff = true }, -- Dash
        { spell = 2908, type = "ability", requiresTarget = true, talent = 103307 }, -- Soothe
        { spell = 5176, type = "ability", overlayGlow = true, requiresTarget = true }, -- Wrath
        { spell = 5211, type = "ability", debuff = true, requiresTarget = true, talent = 103315 }, -- Mighty Bash
        { spell = 5215, type = "ability", buff = true, usable = true }, -- Prowl
        { spell = 5221, type = "ability", requiresTarget = true, usable = true }, -- Shred
        { spell = 5487, type = "ability", buff = true }, -- Bear Form
        { spell = 6795, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Growl
        { spell = 8921, type = "ability", requiresTarget = true }, -- Moonfire
        { spell = 16979, type = "ability", requiresTarget = true, talent = 103276 }, -- Wild Charge
        { spell = 18562, type = "ability", charges = true, usable = true }, -- Swiftmend
        { spell = 20484, type = "ability" }, -- Rebirth
        { spell = 22568, type = "ability", requiresTarget = true, usable = true }, -- Ferocious Bite
        { spell = 22570, type = "ability", requiresTarget = true, usable = true, talent = 103299 }, -- Maim
        { spell = 22812, type = "ability", buff = true }, -- Barkskin
        { spell = 22842, type = "ability", charges = true, buff = true, usable = true, talent = 103298 }, -- Frenzied Regeneration
        { spell = 29166, type = "ability", buff = true, talent = 103323 }, -- Innervate
        { spell = 33786, type = "ability", requiresTarget = true, talent = 103291 }, -- Cyclone
        { spell = 33891, type = "ability", buff = true, talent = 103120 }, -- Incarnation: Tree of Life
        { spell = 33917, type = "ability", requiresTarget = true, usable = true, talent = 103195 }, -- Mangle
        { spell = 48438, type = "ability", buff = true, overlayGlow = true, requiresTarget = true, talent = 103320 }, -- Wild Growth
        { spell = 77758, type = "ability", requiresTarget = true, talent = 103301 }, -- Thrash
        { spell = 77764, type = "ability", buff = true, talent = 103312 }, -- Stampeding Roar
        { spell = 88423, type = "ability" }, -- Nature's Cure
        { spell = 93402, type = "ability", requiresTarget = true, talent = 103286 }, -- Sunfire
        { spell = 102342, type = "ability", buff = true, talent = 103141 }, -- Ironbark
        { spell = 102351, type = "ability", buff = true, talent = 103104 }, -- Cenarion Ward
        { spell = 102359, type = "ability", debuff = true, requiresTarget = true, talent = 103322 }, -- Mass Entanglement
        { spell = 102693, type = "ability", charges = true, talent = 117104 }, -- Grove Guardians
        { spell = 102793, type = "ability", talent = 103321 }, -- Ursol's Vortex
        { spell = 106832, type = "ability", requiresTarget = true, usable = true, talent = 103301 }, -- Thrash
        { spell = 106839, type = "ability", requiresTarget = true, usable = true, talent = 103302 }, -- Skull Bash
        { spell = 108238, type = "ability", talent = 103310 }, -- Renewal
        { spell = 124974, type = "ability", buff = true, talent = 103324 }, -- Nature's Vigil
        { spell = 132158, type = "ability", charges = true, buff = true, usable = true, talent = 103101 }, -- Nature's Swiftness
        { spell = 132469, type = "ability", talent = 103287 }, -- Typhoon
        { spell = 192081, type = "ability", buff = true, usable = true, talent = 103305 }, -- Ironfur
        { spell = 197626, type = "ability", requiresTarget = true, talent = 103278 }, -- Starsurge
        { spell = 197628, type = "ability", overlayGlow = true, requiresTarget = true, talent = 112963 }, -- Starfire
        { spell = 197721, type = "ability", buff = true, talent = 123776 }, -- Flourish
        { spell = 203651, type = "ability", talent = 103115 }, -- Overgrowth
        { spell = 252216, type = "ability", buff = true, talent = 103275 }, -- Tiger Dash
        { spell = 319454, type = "ability", buff = true, talent = 103309 }, -- Heart of the Wild
        { spell = 391528, type = "ability", buff = true, talent = 103119 }, -- Convoke the Spirits
      },
      icon = 236153
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources and Shapeshift Form"],
      args = {
      },
      icon = manaIcon,
    },
  },
}

templates.class.DEMONHUNTER = {
  [1] = { -- Havoc
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 162264, type = "buff", unit = "player" }, -- Metamorphosis
        { spell = 188501, type = "buff", unit = "player" }, -- Spectral Sight
        { spell = 196555, type = "buff", unit = "player", talent = 115247 }, -- Netherwalk
        { spell = 208628, type = "buff", unit = "player", talent = 112943 }, -- Exergy
        { spell = 209426, type = "buff", unit = "player", talent = 112921 }, -- Darkness
        { spell = 212800, type = "buff", unit = "player" }, -- Blur
        { spell = 258920, type = "buff", unit = "player" }, -- Immolation Aura
        { spell = 258925, type = "buff", unit = "player", talent = 117742 }, -- Fel Barrage
        { spell = 343312, type = "buff", unit = "player", talent = 112948 }, -- Furious Gaze
        { spell = 347462, type = "buff", unit = "player", talent = 112942 }, -- Unbound Chaos
        { spell = 389847, type = "buff", unit = "player", talent = 112850 }, -- Felfire Haste
        { spell = 389890, type = "buff", unit = "player", talent = 112944 }, -- Tactical Retreat
        { spell = 390145, type = "buff", unit = "player", talent = 112947 }, -- Inner Demon
        { spell = 390192, type = "buff", unit = "player", talent = 112827 }, -- Ragefire
        { spell = 390195, type = "buff", unit = "player", talent = 112958 }, -- Chaos Theory
        { spell = 390212, type = "buff", unit = "player", talent = 117765 }, -- Restless Hunter
        { spell = 391215, type = "buff", unit = "player", talent = 112950 }, -- Initiative
        { spell = 427641, type = "buff", unit = "player", talent = 117744 }, -- Inertia
        { spell = 427901, type = "buff", unit = "player", talent = 115246 }, -- Deflecting Dance
        { spell = 442435, type = "buff", unit = "player" }, -- Glaive Flurry
        { spell = 442442, type = "buff", unit = "player" }, -- Rending Strike
        { spell = 442503, type = "buff", unit = "player", herotalent = 117503 }, -- Warblade's Hunger
        { spell = 442688, type = "buff", unit = "player", herotalent = 117516 }, -- Thrill of the Fight
        { spell = 442715, type = "buff", unit = "player" }, -- Blade Ward
        { spell = 442788, type = "buff", unit = "player", herotalent = 123046 }, -- Incorruptible Spirit
        { spell = 444661, type = "buff", unit = "player", herotalent = 117512 }, -- Art of the Glaive
        { spell = 444929, type = "buff", unit = "player", herotalent = 117508 }, -- Evasive Action
        { spell = 452416, type = "buff", unit = "player", herotalent = 117514 }, -- Demonsurge
        { spell = 452550, type = "buff", unit = "player", herotalent = 117506 }, -- Monster Rising
        { spell = 453239, type = "buff", unit = "player", herotalent = 117499 }, -- Student of Suffering
        { spell = 453314, type = "buff", unit = "player", herotalent = 117513 }, -- Enduring Torment
      },
      icon = 1247266
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 1490, type = "debuff", unit = "target" }, -- Chaos Brand
        { spell = 185245, type = "debuff", unit = "target" }, -- Torment
        { spell = 198813, type = "debuff", unit = "target", talent = 112853 }, -- Vengeful Retreat
        { spell = 200166, type = "debuff", unit = "target" }, -- Metamorphosis
        { spell = 204598, type = "debuff", unit = "target" }, -- Sigil of Flame
        { spell = 207685, type = "debuff", unit = "target", talent = 112859 }, -- Sigil of Misery
        { spell = 211881, type = "debuff", unit = "target" }, -- Fel Eruption
        { spell = 258883, type = "debuff", unit = "target", talent = 112824 }, -- Trail of Ruin
        { spell = 320338, type = "debuff", unit = "target", talent = 112956 }, -- Essence Break
        { spell = 356608, type = "debuff", unit = "target", talent = 117743 }, -- Mortal Dance
        { spell = 370966, type = "debuff", unit = "target", talent = 112837 }, -- The Hunt
        { spell = 390155, type = "debuff", unit = "target", talent = 112934 }, -- Serrated Glaive
        { spell = 390181, type = "debuff", unit = "target", talent = 117764 }, -- Soulscar
        { spell = 391191, type = "debuff", unit = "target", talent = 112826 }, -- Burning Wound
        { spell = 394933, type = "debuff", unit = "target", talent = 112838 }, -- Demon Muzzle
        { spell = 442624, type = "debuff", unit = "target", herotalent = 117500 }, -- Reaver's Mark
        { spell = 453177, type = "debuff", unit = "target", herotalent = 117502 }, -- Burning Blades
      },
      icon = 1392554
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 131347, type = "ability", usable = true }, -- Glide
        { spell = 162243, type = "ability", requiresTarget = true, usable = true }, -- Demon's Bite
        { spell = 162794, type = "ability", requiresTarget = true, usable = true }, -- Chaos Strike
        { spell = 179057, type = "ability", usable = true, talent = 112911 }, -- Chaos Nova
        { spell = 183752, type = "ability", requiresTarget = true, usable = true }, -- Disrupt
        { spell = 185123, type = "ability", charges = true, overlayGlow = true, requiresTarget = true, usable = true }, -- Throw Glaive
        { spell = 185245, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Torment
        { spell = 188499, type = "ability", overlayGlow = true, usable = true }, -- Blade Dance
        { spell = 188501, type = "ability", buff = true, usable = true }, -- Spectral Sight
        { spell = 191427, type = "ability", usable = true }, -- Metamorphosis
        { spell = 195072, type = "ability", charges = true, overlayGlow = true, usable = true }, -- Fel Rush
        { spell = 196555, type = "ability", buff = true, usable = true, talent = 115247 }, -- Netherwalk
        { spell = 196718, type = "ability", usable = true, talent = 112921 }, -- Darkness
        { spell = 198013, type = "ability", usable = true, talent = 112939 }, -- Eye Beam
        { spell = 198589, type = "ability", usable = true }, -- Blur
        { spell = 198793, type = "ability", usable = true, talent = 112853 }, -- Vengeful Retreat
        { spell = 202137, type = "ability", requiresTarget = true, talent = 112904 }, -- Sigil of Silence
        { spell = 202138, type = "ability", requiresTarget = true, talent = 112867 }, -- Sigil of Chains
        { spell = 204596, type = "ability", requiresTarget = true, usable = true }, -- Sigil of Flame
        { spell = 207684, type = "ability", requiresTarget = true, talent = 112859 }, -- Sigil of Misery
        { spell = 210152, type = "ability", overlayGlow = true }, -- Death Sweep
        { spell = 211881, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Fel Eruption
        { spell = 217832, type = "ability", usable = true, talent = 112927 }, -- Imprison
        { spell = 232893, type = "ability", overlayGlow = true, requiresTarget = true, usable = true, talent = 117759 }, -- Felblade
        { spell = 258860, type = "ability", usable = true, talent = 112956 }, -- Essence Break
        { spell = 258920, type = "ability", charges = true, buff = true, usable = true }, -- Immolation Aura
        { spell = 258925, type = "ability", buff = true, usable = true, talent = 117742 }, -- Fel Barrage
        { spell = 278326, type = "ability", requiresTarget = true, usable = true, talent = 112926 }, -- Consume Magic
        { spell = 342817, type = "ability", talent = 117763 }, -- Glaive Tempest
        { spell = 370965, type = "ability", requiresTarget = true, usable = true, talent = 112837 }, -- The Hunt
        { spell = 389815, type = "ability", requiresTarget = true, talent = 117755 }, -- Sigil of Spite
        { spell = 427785, type = "ability", overlayGlow = true }, -- Fel Rush
        { spell = 427917, type = "ability", charges = true }, -- Immolation Aura
        { spell = 452487, type = "ability", overlayGlow = true }, -- Consuming Fire
        { spell = 452497, type = "ability", overlayGlow = true }, -- Abyssal Gaze
      },
      icon = 1305156
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = 1344651,
    },
  },
  [2] = { -- Vengeance
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 131347, type = "buff", unit = "player" }, -- Glide
        { spell = 187827, type = "buff", unit = "player" }, -- Metamorphosis
        { spell = 188501, type = "buff", unit = "player" }, -- Spectral Sight
        { spell = 203819, type = "buff", unit = "player" }, -- Demon Spikes
        { spell = 203981, type = "buff", unit = "player" }, -- Soul Fragments
        { spell = 207693, type = "buff", unit = "player", talent = 112884 }, -- Feast of Souls
        { spell = 209426, type = "buff", unit = "player", talent = 112921 }, -- Darkness
        { spell = 212988, type = "buff", unit = "player", talent = 112892 }, -- Painbringer
        { spell = 258920, type = "buff", unit = "player" }, -- Immolation Aura
        { spell = 263648, type = "buff", unit = "player", talent = 112870 }, -- Soul Barrier
        { spell = 326863, type = "buff", unit = "player", talent = 112880 }, -- Ruinous Bulwark
        { spell = 343013, type = "buff", unit = "player", talent = 112871 }, -- Revel in Pain
        { spell = 389847, type = "buff", unit = "player", talent = 112850 }, -- Felfire Haste
        { spell = 391166, type = "buff", unit = "player", talent = 112890 }, -- Soul Furnace
        { spell = 391171, type = "buff", unit = "player", talent = 112882 }, -- Calcified Spikes
        { spell = 391234, type = "buff", unit = "player", talent = 112889 }, -- Soulmonger
        { spell = 393009, type = "buff", unit = "player", talent = 112868 }, -- Fel Flame Fortification
        { spell = 442435, type = "buff", unit = "player" }, -- Glaive Flurry
        { spell = 442442, type = "buff", unit = "player" }, -- Rending Strike
        { spell = 442503, type = "buff", unit = "player", herotalent = 117503 }, -- Warblade's Hunger
        { spell = 442688, type = "buff", unit = "player", herotalent = 117516 }, -- Thrill of the Fight
        { spell = 442715, type = "buff", unit = "player" }, -- Blade Ward
        { spell = 442788, type = "buff", unit = "player", herotalent = 123046 }, -- Incorruptible Spirit
        { spell = 444661, type = "buff", unit = "player", herotalent = 117512 }, -- Art of the Glaive
        { spell = 444929, type = "buff", unit = "player", herotalent = 117508 }, -- Evasive Action
        { spell = 452416, type = "buff", unit = "player", herotalent = 117514 }, -- Demonsurge
        { spell = 452550, type = "buff", unit = "player", herotalent = 117506 }, -- Monster Rising
        { spell = 453239, type = "buff", unit = "player", herotalent = 117499 }, -- Student of Suffering
        { spell = 453314, type = "buff", unit = "player", herotalent = 117513 }, -- Enduring Torment
      },
      icon = 1247263
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 1490, type = "debuff", unit = "target" }, -- Chaos Brand
        { spell = 179057, type = "debuff", unit = "target", talent = 112911 }, -- Chaos Nova
        { spell = 185245, type = "debuff", unit = "target" }, -- Torment
        { spell = 198813, type = "debuff", unit = "target", talent = 112853 }, -- Vengeful Retreat
        { spell = 204490, type = "debuff", unit = "target", talent = 112904 }, -- Sigil of Silence
        { spell = 204598, type = "debuff", unit = "target" }, -- Sigil of Flame
        { spell = 204843, type = "debuff", unit = "target", talent = 112867 }, -- Sigil of Chains
        { spell = 207407, type = "debuff", unit = "target", talent = 112898 }, -- Soul Carver
        { spell = 207685, type = "debuff", unit = "target", talent = 112859 }, -- Sigil of Misery
        { spell = 207771, type = "debuff", unit = "target", talent = 112864 }, -- Fiery Brand
        { spell = 247456, type = "debuff", unit = "target", talent = 112907 }, -- Frailty
        { spell = 370966, type = "debuff", unit = "target", talent = 112837 }, -- The Hunt
        { spell = 394933, type = "debuff", unit = "target", talent = 112838 }, -- Demon Muzzle
        { spell = 442624, type = "debuff", unit = "target", herotalent = 117500 }, -- Reaver's Mark
        { spell = 453177, type = "debuff", unit = "target", herotalent = 117502 }, -- Burning Blades
      },
      icon = 1344647
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 131347, type = "ability", buff = true, usable = true }, -- Glide
        { spell = 179057, type = "ability", debuff = true, talent = 112911 }, -- Chaos Nova
        { spell = 183752, type = "ability", requiresTarget = true }, -- Disrupt
        { spell = 185245, type = "ability", debuff = true, requiresTarget = true }, -- Torment
        { spell = 187827, type = "ability", buff = true }, -- Metamorphosis
        { spell = 188501, type = "ability", buff = true }, -- Spectral Sight
        { spell = 189110, type = "ability", charges = true }, -- Infernal Strike
        { spell = 196718, type = "ability", talent = 112921 }, -- Darkness
        { spell = 198793, type = "ability", talent = 112853 }, -- Vengeful Retreat
        { spell = 202137, type = "ability", requiresTarget = true, talent = 112904 }, -- Sigil of Silence
        { spell = 202138, type = "ability", requiresTarget = true, talent = 112867 }, -- Sigil of Chains
        { spell = 203720, type = "ability", charges = true }, -- Demon Spikes
        { spell = 204021, type = "ability", charges = true, requiresTarget = true, talent = 112864 }, -- Fiery Brand
        { spell = 204157, type = "ability", charges = true, overlayGlow = true, requiresTarget = true }, -- Throw Glaive
        { spell = 204596, type = "ability", requiresTarget = true }, -- Sigil of Flame
        { spell = 207407, type = "ability", debuff = true, requiresTarget = true, talent = 112898 }, -- Soul Carver
        { spell = 207684, type = "ability", requiresTarget = true, talent = 112859 }, -- Sigil of Misery
        { spell = 212084, type = "ability", talent = 112908 }, -- Fel Devastation
        { spell = 217832, type = "ability", talent = 112927 }, -- Imprison
        { spell = 228477, type = "ability", charges = true, overlayGlow = true, requiresTarget = true }, -- Soul Cleave
        { spell = 232893, type = "ability", requiresTarget = true, talent = 117759 }, -- Felblade
        { spell = 247454, type = "ability", charges = true, overlayGlow = true, usable = true, talent = 112894 }, -- Spirit Bomb
        { spell = 258920, type = "ability", buff = true }, -- Immolation Aura
        { spell = 263642, type = "ability", charges = true, requiresTarget = true, talent = 112885 }, -- Fracture
        { spell = 263648, type = "ability", charges = true, buff = true, talent = 112870 }, -- Soul Barrier
        { spell = 278326, type = "ability", requiresTarget = true, talent = 112926 }, -- Consume Magic
        { spell = 320341, type = "ability", talent = 112869 }, -- Bulk Extraction
        { spell = 370965, type = "ability", usable = true, talent = 112837 }, -- The Hunt
        { spell = 389815, type = "ability", requiresTarget = true, talent = 117755 }, -- Sigil of Spite
        { spell = 452436, type = "ability", charges = true, overlayGlow = true }, -- Soul Sunder
        { spell = 452486, type = "ability", overlayGlow = true }, -- Fel Desolation
        { spell = 452487, type = "ability", overlayGlow = true }, -- Consuming Fire
      },
      icon = 1344650
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = 1247265,
    }
  },
}

templates.class.DEATHKNIGHT = {
  [1] = { -- Blood
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 3714, type = "buff", unit = "player" }, -- Path of Frost
        { spell = 48265, type = "buff", unit = "player" }, -- Death's Advance
        { spell = 48707, type = "buff", unit = "player" }, -- Anti-Magic Shell
        { spell = 48792, type = "buff", unit = "player", talent = 96210 }, -- Icebound Fortitude
        { spell = 49039, type = "buff", unit = "player" }, -- Lichborne
        { spell = 55233, type = "buff", unit = "player", talent = 96308 }, -- Vampiric Blood
        { spell = 77535, type = "buff", unit = "player" }, -- Blood Shield
        { spell = 81141, type = "buff", unit = "player" }, -- Crimson Scourge
        { spell = 81256, type = "buff", unit = "player", talent = 96269 }, -- Dancing Rune Weapon
        { spell = 145629, type = "buff", unit = "player", talent = 96194 }, -- Anti-Magic Zone
        { spell = 188290, type = "buff", unit = "player" }, -- Death and Decay
        { spell = 194679, type = "buff", unit = "player", talent = 96301 }, -- Rune Tap
        { spell = 194844, type = "buff", unit = "player", talent = 96258 }, -- Bonestorm
        { spell = 194879, type = "buff", unit = "player", talent = 96214 }, -- Icy Talons
        { spell = 195181, type = "buff", unit = "player" }, -- Bone Shield
        { spell = 207203, type = "buff", unit = "player" }, -- Frost Shield
        { spell = 212552, type = "buff", unit = "player", talent = 96206 }, -- Wraith Walk
        { spell = 219788, type = "buff", unit = "player", talent = 96277 }, -- Ossuary
        { spell = 219809, type = "buff", unit = "player", talent = 96270 }, -- Tombstone
        { spell = 273947, type = "buff", unit = "player", talent = 96268 }, -- Hemostasis
        { spell = 274009, type = "buff", unit = "player", talent = 96171 }, -- Voracious
        { spell = 274156, type = "buff", unit = "player", talent = 126299 }, -- Consumption
        { spell = 374271, type = "buff", unit = "player", talent = 96198 }, -- Unholy Ground
        { spell = 374585, type = "buff", unit = "player", talent = 96208 }, -- Rune Mastery
        { spell = 374748, type = "buff", unit = "player", talent = 96255 }, -- Perseverance of the Ebon Blade
        { spell = 383269, type = "buff", unit = "player", talent = 96177 }, -- Abomination Limb
        { spell = 391459, type = "buff", unit = "player", talent = 96169 }, -- Sanguine Ground
        { spell = 391481, type = "buff", unit = "player", talent = 96166 }, -- Coagulopathy
        { spell = 391519, type = "buff", unit = "player", talent = 96168 }, -- Umbilicus Eternus
        { spell = 433925, type = "buff", unit = "player" }, -- Essence of the Blood Queen
        { spell = 434034, type = "buff", unit = "player", herotalent = 117645 }, -- Blood-Soaked Ground
        { spell = 434105, type = "buff", unit = "player", herotalent = 117653 }, -- Vampiric Aura
        { spell = 434153, type = "buff", unit = "player", herotalent = 117650 }, -- Gift of the San'layn
        { spell = 440289, type = "buff", unit = "player", herotalent = 123420 }, -- Rune Carved Plates
        { spell = 441416, type = "buff", unit = "player", herotalent = 117665 }, -- Exterminate
        { spell = 458745, type = "buff", unit = "player", talent = 96279 }, -- Ossified Vitriol
        { spell = 460049, type = "buff", unit = "player", herotalent = 117630 }, -- Infliction of Sorrow
        { spell = 461130, type = "buff", unit = "player", herotalent = 117642 }, -- Visceral Strength
        { spell = 469169, type = "buff", unit = "player", herotalent = 117629 }, -- Swift and Painful
        { spell = 469172, type = "buff", unit = "player", herotalent = 128235 }, -- Reaper of Souls
      },
      icon = 237517
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 45524, type = "debuff", unit = "target" }, -- Chains of Ice
        { spell = 55078, type = "debuff", unit = "target" }, -- Blood Plague
        { spell = 206931, type = "debuff", unit = "target", talent = 126300 }, -- Blooddrinker
        { spell = 206940, type = "debuff", unit = "target", talent = 96271 }, -- Mark of Blood
        { spell = 343294, type = "debuff", unit = "target", talent = 96192 }, -- Soul Reaper
        { spell = 374557, type = "debuff", unit = "target", talent = 96190 }, -- Brittle
        { spell = 391568, type = "debuff", unit = "target", talent = 96179 }, -- Insidious Chill
        { spell = 434765, type = "debuff", unit = "target", herotalent = 117659 }, -- Reaper's Mark
        { spell = 443404, type = "debuff", unit = "target", herotalent = 117633 }, -- Wave of Souls
        { spell = 454824, type = "debuff", unit = "target", talent = 96209 }, -- Subduing Grasp
        { spell = 458478, type = "debuff", unit = "target", herotalent = 117637 }, -- Incite Terror
      },
      icon = 237514
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 3714, type = "ability", buff = true }, -- Path of Frost
        { spell = 43265, type = "ability", charges = true, overlayGlow = true }, -- Death and Decay
        { spell = 45524, type = "ability", debuff = true, requiresTarget = true }, -- Chains of Ice
        { spell = 47528, type = "ability", requiresTarget = true, talent = 96213 }, -- Mind Freeze
        { spell = 47541, type = "ability", requiresTarget = true }, -- Death Coil
        { spell = 48265, type = "ability", charges = true, buff = true }, -- Death's Advance
        { spell = 48707, type = "ability", buff = true }, -- Anti-Magic Shell
        { spell = 48743, type = "ability", talent = 96204 }, -- Death Pact
        { spell = 48792, type = "ability", buff = true, talent = 96210 }, -- Icebound Fortitude
        { spell = 49028, type = "ability", requiresTarget = true, talent = 96269 }, -- Dancing Rune Weapon
        { spell = 49039, type = "ability", buff = true }, -- Lichborne
        { spell = 49576, type = "ability", charges = true, requiresTarget = true }, -- Death Grip
        { spell = 49998, type = "ability", requiresTarget = true, talent = 96200 }, -- Death Strike
        { spell = 50842, type = "ability", charges = true, talent = 96305 }, -- Blood Boil
        { spell = 50977, type = "ability", usable = true }, -- Death Gate
        { spell = 51052, type = "ability", talent = 96194 }, -- Anti-Magic Zone
        { spell = 55233, type = "ability", buff = true, talent = 96308 }, -- Vampiric Blood
        { spell = 56222, type = "ability", requiresTarget = true }, -- Dark Command
        { spell = 61999, type = "ability" }, -- Raise Ally
        { spell = 108199, type = "ability", requiresTarget = true, talent = 96170 }, -- Gorefiend's Grasp
        { spell = 111673, type = "ability", talent = 96188 }, -- Control Undead
        { spell = 194679, type = "ability", charges = true, buff = true, talent = 96301 }, -- Rune Tap
        { spell = 194844, type = "ability", buff = true, usable = true, talent = 96258 }, -- Bonestorm
        { spell = 195182, type = "ability", charges = true, overlayGlow = true, requiresTarget = true, talent = 96303 }, -- Marrowrend
        { spell = 195292, type = "ability", requiresTarget = true }, -- Death's Caress
        { spell = 206930, type = "ability", overlayGlow = true, requiresTarget = true, talent = 96304 }, -- Heart Strike
        { spell = 206931, type = "ability", debuff = true, requiresTarget = true, talent = 126300 }, -- Blooddrinker
        { spell = 206940, type = "ability", debuff = true, requiresTarget = true, talent = 96271 }, -- Mark of Blood
        { spell = 207167, type = "ability", talent = 96172 }, -- Blinding Sleet
        { spell = 212552, type = "ability", buff = true, talent = 96206 }, -- Wraith Walk
        { spell = 219809, type = "ability", buff = true, usable = true, talent = 96270 }, -- Tombstone
        { spell = 221562, type = "ability", requiresTarget = true, talent = 96193 }, -- Asphyxiate
        { spell = 221699, type = "ability", charges = true, talent = 96167 }, -- Blood Tap
        { spell = 274156, type = "ability", buff = true, talent = 126299 }, -- Consumption
        { spell = 343294, type = "ability", debuff = true, requiresTarget = true, talent = 96192 }, -- Soul Reaper
        { spell = 383269, type = "ability", buff = true, talent = 96177 }, -- Abomination Limb
        { spell = 433895, type = "ability", overlayGlow = true, herotalent = 117648 }, -- Vampiric Strike
        { spell = 439843, type = "ability", requiresTarget = true, herotalent = 117659 }, -- Reaper's Mark
      },
      icon = 136120
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\PlayerFrame\\UI-PlayerFrame-Deathknight-SingleRune",
    },
  },
  [2] = { -- Frost
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 3714, type = "buff", unit = "player" }, -- Path of Frost
        { spell = 47568, type = "buff", unit = "player", talent = 96240 }, -- Empower Rune Weapon
        { spell = 48265, type = "buff", unit = "player" }, -- Death's Advance
        { spell = 48707, type = "buff", unit = "player" }, -- Anti-Magic Shell
        { spell = 48792, type = "buff", unit = "player", talent = 96210 }, -- Icebound Fortitude
        { spell = 49039, type = "buff", unit = "player" }, -- Lichborne
        { spell = 51124, type = "buff", unit = "player", talent = 96247 }, -- Killing Machine
        { spell = 51271, type = "buff", unit = "player", talent = 125874 }, -- Pillar of Frost
        { spell = 59052, type = "buff", unit = "player" }, -- Rime
        { spell = 145629, type = "buff", unit = "player", talent = 96194 }, -- Anti-Magic Zone
        { spell = 152279, type = "buff", unit = "player", talent = 96222 }, -- Breath of Sindragosa
        { spell = 188290, type = "buff", unit = "player" }, -- Death and Decay
        { spell = 194879, type = "buff", unit = "player", talent = 96214 }, -- Icy Talons
        { spell = 196770, type = "buff", unit = "player" }, -- Remorseless Winter
        { spell = 207203, type = "buff", unit = "player" }, -- Frost Shield
        { spell = 211805, type = "buff", unit = "player", talent = 96229 }, -- Gathering Storm
        { spell = 212552, type = "buff", unit = "player", talent = 96206 }, -- Wraith Walk
        { spell = 253595, type = "buff", unit = "player", talent = 96165 }, -- Inexorable Assault
        { spell = 281209, type = "buff", unit = "player", talent = 96163 }, -- Cold Heart
        { spell = 374271, type = "buff", unit = "player", talent = 96198 }, -- Unholy Ground
        { spell = 374585, type = "buff", unit = "player", talent = 96208 }, -- Rune Mastery
        { spell = 376907, type = "buff", unit = "player", talent = 96248 }, -- Unleashed Frenzy
        { spell = 377101, type = "buff", unit = "player", talent = 96253 }, -- Bonegrinder
        { spell = 377192, type = "buff", unit = "player", talent = 96230 }, -- Enduring Strength
        { spell = 377253, type = "buff", unit = "player", talent = 96236 }, -- Frostwhelp's Aid
        { spell = 383269, type = "buff", unit = "player", talent = 96177 }, -- Abomination Limb
        { spell = 440289, type = "buff", unit = "player", herotalent = 123420 }, -- Rune Carved Plates
        { spell = 441416, type = "buff", unit = "player", herotalent = 117665 }, -- Exterminate
        { spell = 443532, type = "buff", unit = "player", herotalent = 117640 }, -- Bind in Darkness
        { spell = 444505, type = "buff", unit = "player", herotalent = 117664 }, -- Mograine's Might
        { spell = 444763, type = "buff", unit = "player" }, -- Apocalyptic Conquest
        { spell = 456370, type = "buff", unit = "player", talent = 96239 }, -- Cryogenic Chamber
        { spell = 469169, type = "buff", unit = "player", herotalent = 117629 }, -- Swift and Painful
        { spell = 469172, type = "buff", unit = "player", herotalent = 128235 }, -- Reaper of Souls
      },
      icon = 135305
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 45524, type = "debuff", unit = "target" }, -- Chains of Ice
        { spell = 51714, type = "debuff", unit = "target" }, -- Razorice
        { spell = 55095, type = "debuff", unit = "target" }, -- Frost Fever
        { spell = 204206, type = "debuff", unit = "target" }, -- Chilled
        { spell = 211793, type = "debuff", unit = "target" }, -- Remorseless Winter
        { spell = 343294, type = "debuff", unit = "target", talent = 96192 }, -- Soul Reaper
        { spell = 374557, type = "debuff", unit = "target", talent = 96190 }, -- Brittle
        { spell = 376974, type = "debuff", unit = "target", talent = 96243 }, -- Everfrost
        { spell = 377359, type = "debuff", unit = "target", talent = 96227 }, -- Piercing Chill
        { spell = 391568, type = "debuff", unit = "target", talent = 96179 }, -- Insidious Chill
        { spell = 392490, type = "debuff", unit = "target", talent = 96189 }, -- Enfeeble
        { spell = 434765, type = "debuff", unit = "target", herotalent = 117659 }, -- Reaper's Mark
        { spell = 443404, type = "debuff", unit = "target", herotalent = 117633 }, -- Wave of Souls
        { spell = 444633, type = "debuff", unit = "target" }, -- Undeath
        { spell = 458169, type = "debuff", unit = "target", talent = 96238 }, -- Hyperpyrexia
      },
      icon = 237522
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 3714, type = "ability", buff = true }, -- Path of Frost
        { spell = 43265, type = "ability", charges = true }, -- Death and Decay
        { spell = 45524, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Chains of Ice
        { spell = 46585, type = "ability", totem = true, talent = 96201 }, -- Raise Dead
        { spell = 47528, type = "ability", requiresTarget = true, talent = 96213 }, -- Mind Freeze
        { spell = 47541, type = "ability", requiresTarget = true }, -- Death Coil
        { spell = 47568, type = "ability", buff = true, talent = 96240 }, -- Empower Rune Weapon
        { spell = 48265, type = "ability", charges = true, buff = true }, -- Death's Advance
        { spell = 48707, type = "ability", buff = true }, -- Anti-Magic Shell
        { spell = 48743, type = "ability", talent = 96204 }, -- Death Pact
        { spell = 48792, type = "ability", buff = true, talent = 96210 }, -- Icebound Fortitude
        { spell = 49020, type = "ability", overlayGlow = true, requiresTarget = true, talent = 96246 }, -- Obliterate
        { spell = 49039, type = "ability", buff = true }, -- Lichborne
        { spell = 49143, type = "ability", requiresTarget = true, talent = 96245 }, -- Frost Strike
        { spell = 49184, type = "ability", overlayGlow = true, requiresTarget = true, talent = 96244 }, -- Howling Blast
        { spell = 49576, type = "ability", charges = true, requiresTarget = true }, -- Death Grip
        { spell = 49998, type = "ability", requiresTarget = true, talent = 96200 }, -- Death Strike
        { spell = 50977, type = "ability", usable = true }, -- Death Gate
        { spell = 51052, type = "ability", talent = 96194 }, -- Anti-Magic Zone
        { spell = 51271, type = "ability", buff = true, talent = 125874 }, -- Pillar of Frost
        { spell = 56222, type = "ability", requiresTarget = true }, -- Dark Command
        { spell = 57330, type = "ability", talent = 96218 }, -- Horn of Winter
        { spell = 61999, type = "ability" }, -- Raise Ally
        { spell = 152279, type = "ability", buff = true, talent = 96222 }, -- Breath of Sindragosa
        { spell = 196770, type = "ability", buff = true }, -- Remorseless Winter
        { spell = 207167, type = "ability", talent = 96172 }, -- Blinding Sleet
        { spell = 207230, type = "ability", talent = 96225 }, -- Frostscythe
        { spell = 212552, type = "ability", buff = true, talent = 96206 }, -- Wraith Walk
        { spell = 221562, type = "ability", requiresTarget = true, talent = 96193 }, -- Asphyxiate
        { spell = 279302, type = "ability", talent = 125876 }, -- Frostwyrm's Fury
        { spell = 305392, type = "ability", requiresTarget = true, talent = 96228 }, -- Chill Streak
        { spell = 327574, type = "ability", talent = 125608 }, -- Sacrificial Pact
        { spell = 343294, type = "ability", debuff = true, requiresTarget = true, talent = 96192 }, -- Soul Reaper
        { spell = 383269, type = "ability", buff = true, talent = 96177 }, -- Abomination Limb
        { spell = 439843, type = "ability", requiresTarget = true, herotalent = 117659 }, -- Reaper's Mark
      },
      icon = 135372
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\PlayerFrame\\UI-PlayerFrame-Deathknight-SingleRune",
    },
  },
  [3] = { -- Unholy
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 3714, type = "buff", unit = "player" }, -- Path of Frost
        { spell = 48265, type = "buff", unit = "player" }, -- Death's Advance
        { spell = 48707, type = "buff", unit = "player" }, -- Anti-Magic Shell
        { spell = 48792, type = "buff", unit = "player", talent = 96210 }, -- Icebound Fortitude
        { spell = 49039, type = "buff", unit = "player" }, -- Lichborne
        { spell = 51460, type = "buff", unit = "player" }, -- Runic Corruption
        { spell = 81340, type = "buff", unit = "player", talent = 96328 }, -- Sudden Doom
        { spell = 145629, type = "buff", unit = "player", talent = 96194 }, -- Anti-Magic Zone
        { spell = 188290, type = "buff", unit = "player" }, -- Death and Decay
        { spell = 194879, type = "buff", unit = "player", talent = 96214 }, -- Icy Talons
        { spell = 207203, type = "buff", unit = "player" }, -- Frost Shield
        { spell = 207289, type = "buff", unit = "player", talent = 96285 }, -- Unholy Assault
        { spell = 212552, type = "buff", unit = "player", talent = 96206 }, -- Wraith Walk
        { spell = 374271, type = "buff", unit = "player", talent = 96198 }, -- Unholy Ground
        { spell = 374585, type = "buff", unit = "player", talent = 96208 }, -- Rune Mastery
        { spell = 377588, type = "buff", unit = "player", talent = 96331 }, -- Ghoulish Frenzy
        { spell = 377591, type = "buff", unit = "player", talent = 96286 }, -- Festermight
        { spell = 383269, type = "buff", unit = "player", talent = 96177 }, -- Abomination Limb
        { spell = 390178, type = "buff", unit = "player", talent = 96319 }, -- Plaguebringer
        { spell = 390260, type = "buff", unit = "player", talent = 96283 }, -- Commander of the Dead
        { spell = 433925, type = "buff", unit = "player" }, -- Essence of the Blood Queen
        { spell = 434034, type = "buff", unit = "player", herotalent = 117645 }, -- Blood-Soaked Ground
        { spell = 434105, type = "buff", unit = "player", herotalent = 117653 }, -- Vampiric Aura
        { spell = 434159, type = "buff", unit = "player", herotalent = 117642 }, -- Visceral Strength
        { spell = 440861, type = "buff", unit = "player", herotalent = 123411 }, -- A Feast of Souls
        { spell = 444347, type = "buff", unit = "player", herotalent = 123412 }, -- Death Charge
        { spell = 444505, type = "buff", unit = "player", herotalent = 117664 }, -- Mograine's Might
        { spell = 444763, type = "buff", unit = "player" }, -- Apocalyptic Conquest
        { spell = 453773, type = "buff", unit = "player", herotalent = 123410 }, -- Pact of the Apocalypse
        { spell = 459238, type = "buff", unit = "player", talent = 96330 }, -- Festering Scythe
        { spell = 63560, type = "buff", unit = "pet", talent = 96324 }, -- Dark Transformation
      },
      icon = 136181
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 45524, type = "debuff", unit = "target" }, -- Chains of Ice
        { spell = 55078, type = "debuff", unit = "target" }, -- Blood Plague
        { spell = 55095, type = "debuff", unit = "target" }, -- Frost Fever
        { spell = 115994, type = "debuff", unit = "target", talent = 96297 }, -- Unholy Blight
        { spell = 191587, type = "debuff", unit = "target" }, -- Virulent Plague
        { spell = 194310, type = "debuff", unit = "target" }, -- Festering Wound
        { spell = 343294, type = "debuff", unit = "target", talent = 96192 }, -- Soul Reaper
        { spell = 374557, type = "debuff", unit = "target", talent = 96190 }, -- Brittle
        { spell = 377445, type = "debuff", unit = "target", talent = 96284 }, -- Unholy Aura
        { spell = 377540, type = "debuff", unit = "target", talent = 96292 }, -- Death Rot
        { spell = 390271, type = "debuff", unit = "target", talent = 96290 }, -- Coil of Devastation
        { spell = 390276, type = "debuff", unit = "target", talent = 96310 }, -- Rotten Touch
        { spell = 391568, type = "debuff", unit = "target", talent = 96179 }, -- Insidious Chill
        { spell = 392490, type = "debuff", unit = "target", talent = 96189 }, -- Enfeeble
        { spell = 444633, type = "debuff", unit = "target" }, -- Undeath
        { spell = 454824, type = "debuff", unit = "target", talent = 96209 }, -- Subduing Grasp
        { spell = 458478, type = "debuff", unit = "target", herotalent = 117637 }, -- Incite Terror
      },
      icon = 1129420
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 43265, type = "ability", charges = true }, -- Death and Decay
        { spell = 45524, type = "ability", debuff = true, requiresTarget = true }, -- Chains of Ice
        { spell = 46584, type = "ability", talent = 96325 }, -- Raise Dead
        { spell = 47468, type = "ability", requiresTarget = true }, -- Claw
        { spell = 47481, type = "ability", requiresTarget = true }, -- Gnaw
        { spell = 47484, type = "ability" }, -- Huddle
        { spell = 47528, type = "ability", requiresTarget = true, talent = 96213 }, -- Mind Freeze
        { spell = 47541, type = "ability", overlayGlow = true, requiresTarget = true }, -- Death Coil
        { spell = 48265, type = "ability", charges = true, buff = true }, -- Death's Advance
        { spell = 48707, type = "ability", buff = true }, -- Anti-Magic Shell
        { spell = 48743, type = "ability", talent = 96204 }, -- Death Pact
        { spell = 48792, type = "ability", buff = true, talent = 96210 }, -- Icebound Fortitude
        { spell = 49039, type = "ability", buff = true }, -- Lichborne
        { spell = 49206, type = "ability", requiresTarget = true, totem = true, talent = 96311 }, -- Summon Gargoyle
        { spell = 49576, type = "ability", charges = true, requiresTarget = true }, -- Death Grip
        { spell = 49998, type = "ability", requiresTarget = true, talent = 96200 }, -- Death Strike
        { spell = 50977, type = "ability", usable = true }, -- Death Gate
        { spell = 51052, type = "ability", talent = 96194 }, -- Anti-Magic Zone
        { spell = 55090, type = "ability", requiresTarget = true, talent = 96327 }, -- Scourge Strike
        { spell = 56222, type = "ability", requiresTarget = true }, -- Dark Command
        { spell = 61999, type = "ability" }, -- Raise Ally
        { spell = 63560, type = "ability", buff = true, unit = 'pet', talent = 96324 }, -- Dark Transformation
        { spell = 77575, type = "ability", requiresTarget = true }, -- Outbreak
        { spell = 85948, type = "ability", requiresTarget = true, talent = 96326 }, -- Festering Strike
        { spell = 152280, type = "ability", charges = true, talent = 96315 }, -- Defile
        { spell = 207167, type = "ability", talent = 96172 }, -- Blinding Sleet
        { spell = 207289, type = "ability", buff = true, requiresTarget = true, talent = 96285 }, -- Unholy Assault
        { spell = 207311, type = "ability", requiresTarget = true, talent = 96320 }, -- Clawing Shadows
        { spell = 212552, type = "ability", buff = true, usable = true, talent = 96206 }, -- Wraith Walk
        { spell = 221562, type = "ability", requiresTarget = true, talent = 96193 }, -- Asphyxiate
        { spell = 275699, type = "ability", requiresTarget = true, usable = true, talent = 96322 }, -- Apocalypse
        { spell = 327574, type = "ability", talent = 125608 }, -- Sacrificial Pact
        { spell = 343294, type = "ability", debuff = true, requiresTarget = true, talent = 96192 }, -- Soul Reaper
        { spell = 383269, type = "ability", buff = true, talent = 96177 }, -- Abomination Limb
        { spell = 390279, type = "ability", requiresTarget = true, talent = 96293 }, -- Vile Contagion
        { spell = 444347, type = "ability", charges = true, buff = true, herotalent = 123412 }, -- Death Charge
        { spell = 455395, type = "ability", totem = true, talent = 96287 }, -- Raise Abomination
      },
      icon = 136144
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\PlayerFrame\\UI-PlayerFrame-Deathknight-SingleRune",
    },
  },
}

-- General Section
tinsert(templates.general.args, {
  title = L["Health"],
  icon = "Interface\\Icons\\inv_alchemy_70_red",
  type = "health"
});
tinsert(templates.general.args, {
  title = L["Cast"],
  icon = 136209,
  type = "cast"
});
tinsert(templates.general.args, {
  title = L["Always Active"],
  icon = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura78",
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Conditions"),
    event = "Conditions",
    use_alwaystrue = true}}}
});

tinsert(templates.general.args, {
  title = L["Pet alive"],
  icon = "Interface\\Icons\\ability_hunter_pet_raptor",
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Conditions"),
    event = "Conditions",
    use_HasPet = true}}}
});

tinsert(templates.general.args, {
  title = L["Pet Behavior"],
  icon = "Interface\\Icons\\Ability_hunter_pet_assist",
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Pet Behavior"),
    event = "Pet Behavior",
    use_behavior = true,
    behavior = "assist"}}}
});

tinsert(templates.general.args, {
  spell = 2825, type = "buff", unit = "player",
  forceOwnOnly = true,
  ownOnly = nil,
  overideTitle = L["Bloodlust/Heroism"],
  spellIds = {2825, 32182, 80353, 264667, 390386, 178207, 230935, 256740, 309658}}
);

-- Meta template for Power triggers
local function createSimplePowerTemplate(powertype)
  local power = {
    title = powerTypes[powertype].name,
    icon = powerTypes[powertype].icon,
    type = "power",
    powertype = powertype,
  }
  return power;
end

-------------------------------
-- Hardcoded trigger templates
-------------------------------
local resourceSection = 11
-- Warrior
for i = 1, 3 do
  tinsert(templates.class.WARRIOR[i][resourceSection].args, createSimplePowerTemplate(1));
end

-- Paladin
for i = 1, 3 do
  tinsert(templates.class.PALADIN[i][resourceSection].args, createSimplePowerTemplate(9));
  tinsert(templates.class.PALADIN[i][resourceSection].args, createSimplePowerTemplate(0));
end

-- Hunter
for i = 1, 3 do
  tinsert(templates.class.HUNTER[i][resourceSection].args, createSimplePowerTemplate(2));
end

-- Rogue
for i = 1, 3 do
  tinsert(templates.class.ROGUE[i][resourceSection].args, createSimplePowerTemplate(3));
  tinsert(templates.class.ROGUE[i][resourceSection].args, createSimplePowerTemplate(4));
end

-- Priest
for i = 1, 3 do
  tinsert(templates.class.PRIEST[i][resourceSection].args, createSimplePowerTemplate(0));
end
tinsert(templates.class.PRIEST[3][resourceSection].args, createSimplePowerTemplate(13));

-- Shaman
for i = 1, 3 do
  tinsert(templates.class.SHAMAN[i][resourceSection].args, createSimplePowerTemplate(0));
end
for i = 1, 2 do
  tinsert(templates.class.SHAMAN[i][resourceSection].args, createSimplePowerTemplate(11));
end

-- Mage
tinsert(templates.class.MAGE[1][resourceSection].args, createSimplePowerTemplate(16));
for i = 1, 3 do
  tinsert(templates.class.MAGE[i][resourceSection].args, createSimplePowerTemplate(0));
end

-- Warlock
for i = 1, 3 do
  tinsert(templates.class.WARLOCK[i][resourceSection].args, createSimplePowerTemplate(0));
  tinsert(templates.class.WARLOCK[i][resourceSection].args, createSimplePowerTemplate(7));
end

-- Monk
tinsert(templates.class.MONK[1][resourceSection].args, createSimplePowerTemplate(3));
tinsert(templates.class.MONK[2][resourceSection].args, createSimplePowerTemplate(0));
tinsert(templates.class.MONK[3][resourceSection].args, createSimplePowerTemplate(3));
tinsert(templates.class.MONK[3][resourceSection].args, createSimplePowerTemplate(12));

-- Druid
for i = 1, 4 do
  -- Shapeshift Form
  tinsert(templates.class.DRUID[i][resourceSection].args, {
    title = L["Shapeshift Form"],
    icon = 132276,
    triggers = {[1] = { trigger = {
      type = WeakAuras.GetTriggerCategoryFor("Stance/Form/Aura"),
      event = "Stance/Form/Aura",
      }}}
  });
end

for i = 1, 4 do
  local ids = i == 1 and {5487, 768, 783, 24858, 114282, 210053} or {5487, 768, 783, 114282, 210053}
  for j, id in ipairs(ids) do
    local title, _, icon = GetSpellInfo(id)
    if title then
      tinsert(templates.class.DRUID[i][resourceSection].args, {
        title = title,
        icon = icon,
        triggers = {
          [1] = {
            trigger = {
              type = WeakAuras.GetTriggerCategoryFor("Stance/Form/Aura"),
              event = "Stance/Form/Aura",
              use_form = true,
              form = { single = j }
            }
          }
        }
      })
    end
  end
end

-- Astral Power
tinsert(templates.class.DRUID[1][resourceSection].args, createSimplePowerTemplate(8));

for i = 1, 4 do
  tinsert(templates.class.DRUID[i][resourceSection].args, createSimplePowerTemplate(0)); -- Mana
  tinsert(templates.class.DRUID[i][resourceSection].args, createSimplePowerTemplate(1)); -- Rage
  tinsert(templates.class.DRUID[i][resourceSection].args, createSimplePowerTemplate(3)); -- Energy
  tinsert(templates.class.DRUID[i][resourceSection].args, createSimplePowerTemplate(4)); -- Combo Points
end

-- Demon Hunter
tinsert(templates.class.DEMONHUNTER[1][resourceSection].args, createSimplePowerTemplate(17));
tinsert(templates.class.DEMONHUNTER[2][resourceSection].args, createSimplePowerTemplate(17));

-- Death Knight
for i = 1, 3 do
  tinsert(templates.class.DEATHKNIGHT[i][resourceSection].args, createSimplePowerTemplate(6));

  tinsert(templates.class.DEATHKNIGHT[i][resourceSection].args, {
    title = L["Runes"],
    icon = "Interface\\Icons\\spell_deathknight_frozenruneweapon",
    triggers = {[1] = { trigger = {
      type = WeakAuras.GetTriggerCategoryFor("Death Knight Rune"),
      event = "Death Knight Rune"}}}
  });
end

-- Evoker
tinsert(templates.class.EVOKER[1][resourceSection].args, createSimplePowerTemplate(19)); -- Essence
tinsert(templates.class.EVOKER[1][resourceSection].args, createSimplePowerTemplate(0)); -- Mana
tinsert(templates.class.EVOKER[2][resourceSection].args, createSimplePowerTemplate(19)); -- Essence
tinsert(templates.class.EVOKER[2][resourceSection].args, createSimplePowerTemplate(0)); -- Mana

------------------------------
-- Hardcoded race templates
-------------------------------

-- Every Man for Himself
tinsert(templates.race.Human, { spell = 59752, type = "ability" });
-- Stoneform
tinsert(templates.race.Dwarf, { spell = 20594, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Dwarf, { spell = 65116, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- Shadow Meld
tinsert(templates.race.NightElf, { spell = 58984, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.NightElf, { spell = 58984, type = "buff", titleSuffix = L["buff"]});
-- Escape Artist
tinsert(templates.race.Gnome, { spell = 20589, type = "ability" });
-- Gift of the Naaru
tinsert(templates.race.Draenei, { spell = 28880, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Draenei, { spell = 28880, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- Dark Flight
tinsert(templates.race.Worgen, { spell = 68992, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Worgen, { spell = 68992, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- Quaking Palm
tinsert(templates.race.Pandaren, { spell = 107079, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Pandaren, { spell = 107079, type = "buff", titleSuffix = L["buff"]});
-- Tail Swipe
tinsert(templates.race.Dracthyr, { spell = 368970, type = "ability" })
-- Wing Buffet
tinsert(templates.race.Dracthyr, { spell = 357214, type = "ability" })
-- Soar
tinsert(templates.race.Dracthyr, { spell = 369536, type = "ability" })
 -- Azerite Surge)
tinsert(templates.race.EarthenDwarf, { spell = 436344, type = "ability" })
-- Blood Fury
tinsert(templates.race.Orc, { spell = 20572, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Orc, { spell = 20572, type = "buff", unit = "player", titleSuffix = L["buff"]});
--Cannibalize
tinsert(templates.race.Scourge, { spell = 20577, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Scourge, { spell = 20578, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- War Stomp
tinsert(templates.race.Tauren, { spell = 20549, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Tauren, { spell = 20549, type = "debuff", titleSuffix = L["debuff"]});
--Beserking
tinsert(templates.race.Troll, { spell = 26297, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Troll, { spell = 26297, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- Arcane Torrent
tinsert(templates.race.BloodElf, { spell = 69179, type = "ability", titleSuffix = L["cooldown"]});
-- Pack Hobgoblin
tinsert(templates.race.Goblin, { spell = 69046, type = "ability" });
-- Rocket Barrage
tinsert(templates.race.Goblin, { spell = 69041, type = "ability" });

-- Arcane Pulse
tinsert(templates.race.Nightborne, { spell = 260364, type = "ability" });
-- Cantrips
tinsert(templates.race.Nightborne, { spell = 255661, type = "ability" });
-- Light's Judgment
tinsert(templates.race.LightforgedDraenei, { spell = 255647, type = "ability" });
-- Forge of Light
tinsert(templates.race.LightforgedDraenei, { spell = 259930, type = "ability" });
-- Bull Rush
tinsert(templates.race.HighmountainTauren, { spell = 255654, type = "ability" });
--Spatial Rift
tinsert(templates.race.VoidElf, { spell = 256948, type = "ability" });
-- Fireblood
tinsert(templates.race.DarkIronDwarf, { spell = 265221, type = "ability" });
-- Mole Machine
tinsert(templates.race.DarkIronDwarf, { spell = 265225, type = "ability" });
--Haymaker
tinsert(templates.race.KulTiran, { spell = 287712, type = "ability", requiresTarget = true });
-- Brush it Off
tinsert(templates.race.KulTiran, { spell = 291843, type = "buff"});
-- Hyper Organic Light Originator
tinsert(templates.race.Mechagnome, { spell = 312924, type = "ability" });
-- Combat Analysis
tinsert(templates.race.Mechagnome, { spell = 313424, type = "buff" });
-- Recently Failed
tinsert(templates.race.Mechagnome, { spell = 313015, type = "debuff" });
-- Ancestral Call
tinsert(templates.race.MagharOrc, { spell = 274738, type = "ability" });
-- ZandalariTroll = {}
-- Pterrordax Swoop
tinsert(templates.race.ZandalariTroll, { spell = 281954, type = "ability" });
-- Regenratin'
tinsert(templates.race.ZandalariTroll, { spell = 291944, type = "ability" });
-- Embrace of the Loa
tinsert(templates.race.ZandalariTroll, { spell = 292752, type = "ability" });
-- Vulpera = {}
-- Bag of Tricks
tinsert(templates.race.Vulpera, { spell = 312411, type = "ability" });
-- Make Camp
tinsert(templates.race.Vulpera, { spell = 312370, type = "ability" });


------------------------------
-- Helper code for options
-------------------------------

-- Enrich items from spell, set title
local function handleItem(item)
  local waitingForItemInfo = false;
  if (item.spell) then
    local name, icon, _;
    if (item.type == "item") then
      name, _, _, _, _, _, _, _, _, icon = C_Item.GetItemInfo(item.spell);
      if (name == nil) then
        name = L["Unknown Item"] .. " " .. tostring(item.spell);
        waitingForItemInfo = true;
      end
    else
      name, _, icon = GetSpellInfo(item.spell);
      if (name == nil) then
        name = L["Unknown Spell"] .. " " .. tostring(item.spell);
      end
    end
    if (icon and not item.icon) then
      item.icon = icon;
    end

    item.title = item.overideTitle or name or "";
    if (item.titleSuffix) then
      item.title = item.title .. " " .. item.titleSuffix;
    end
    if (item.titlePrefix) then
      item.title = item.titlePrefix .. item.title;
    end
    if (item.titleItemPrefix) then
      local prefix = C_Item.GetItemInfo(item.titleItemPrefix);
      if (prefix) then
        item.title = prefix .. "-" .. item.title;
      else
        waitingForItemInfo = true;
      end
    end
    if (item.type ~= "item") then
      local spell = Spell:CreateFromSpellID(item.spell);
      if (not spell:IsSpellEmpty()) then
        spell:ContinueOnSpellLoad(function()
          item.description = GetSpellDescription(spell:GetSpellID());
        end);
      end
      item.description = GetSpellDescription(item.spell);
    end
  end
  if (item.talent) then
    item.load = item.load or {}
    item.load.use_talent = false
    item.load.talent = { multi = {} }
    if type(item.talent) == "table" then
      for _,v in pairs(item.talent) do
        if v > 0 then
          item.load.talent.multi[v] = true
        else
          item.load.talent.multi[-v] = false
        end
      end
    else
      item.load.talent.multi[item.talent] = true
    end
  end
  if (item.pvptalent) then
    item.load = item.load or {};
    item.load.use_pvptalent = true;
    item.load.pvptalent = {
      single = item.pvptalent,
      multi = {};
    }
  end
  -- form field is lazy handled by a usable condition
  if item.form then
    item.usable = true
  end
  return waitingForItemInfo;
end

local function addLoadCondition(item, loadCondition)
  -- No need to deep copy here, templates are read-only
  item.load = item.load or {};
  for k, v in pairs(loadCondition) do
    item.load[k] = v;
  end
end

local delayedEnrichDatabase = false;
local itemInfoReceived = CreateFrame("Frame")

local enrichTries = 0;
local function enrichDatabase()
  if (enrichTries > 3) then
    return;
  end
  enrichTries = enrichTries + 1;

  local waitingForItemInfo = false;
  for className, class in pairs(templates.class) do
    for specIndex, spec in pairs(class) do
      for _, section in pairs(spec) do
        local loadCondition
        if WeakAuras.IsRetail() then
          local specializationId
          for classID = 1, GetNumClasses() do
            local _, classFile = GetClassInfo(classID)
            if classFile == className then
              specializationId = GetSpecializationInfoForClassID(classID, specIndex)
              break
            end
          end
          loadCondition = {
            use_class_and_spec = true, class_and_spec = { single = specializationId, multi = {} },
          }
        else
          loadCondition = {
            use_class = true, class = { single = className, multi = {} },
            use_spec = true, spec = { single = specIndex, multi = {}}
          };
        end
        for itemIndex, item in pairs(section.args or {}) do
          local handle = handleItem(item)
          if(handle) then
            waitingForItemInfo = true;
          end
          addLoadCondition(item, loadCondition);
        end
      end
    end
  end

  for raceName, race in pairs(templates.race) do
    local loadCondition = {
      use_race = true, race = { single = raceName, multi = {} }
    };
    for _, item in pairs(race) do
      local handle = handleItem(item)
      if handle then
        waitingForItemInfo = true;
      end
      if handle ~= nil then
        addLoadCondition(item, loadCondition);
      end
    end
  end

  for _, item in pairs(templates.general.args) do
    if (handleItem(item)) then
      waitingForItemInfo = true;
    end
  end

  if (waitingForItemInfo) then
    itemInfoReceived:RegisterEvent("GET_ITEM_INFO_RECEIVED");
  else
    itemInfoReceived:UnregisterEvent("GET_ITEM_INFO_RECEIVED");
  end
end

local function fixupIcons()
  for className, class in pairs(templates.class) do
    for specIndex, spec in pairs(class) do
      for _, section in pairs(spec) do
        if section.args then
          for _, item in pairs(section.args) do
            if (item.spell and (not item.type ~= "item")) then
              local icon = GetSpellIcon(item.spell)
              if (icon) then
                item.icon = icon;
              end
            end
          end
        end
      end
    end
  end
end

local fixupIconsFrame = CreateFrame("Frame");
fixupIconsFrame:RegisterEvent("PLAYER_TALENT_UPDATE")
fixupIconsFrame:SetScript("OnEvent", fixupIcons);

enrichDatabase();

itemInfoReceived:SetScript("OnEvent", function()
  if (not delayedEnrichDatabase) then
    delayedEnrichDatabase = true;
    C_Timer.After(2, function()
      enrichDatabase();
      delayedEnrichDatabase = false;
    end)
  end
end);

TemplatePrivate.triggerTemplates = templates



-- ========================================
-- File: WeakAurasTemplates/TriggerTemplatesDataCataclysm.lua
-- ========================================

local AddonName, TemplatePrivate = ...
---@class WeakAuras
local WeakAuras = WeakAuras
if not WeakAuras.IsCataClassic() then return end
local L = WeakAuras.L
local GetSpellInfo, tinsert, GetSpellDescription, C_Timer, Spell
    = GetSpellInfo, tinsert, GetSpellDescription, C_Timer, Spell

-- The templates tables are created on demand
local templates =
  {
    class = { },
    race = {
      Human = {},
      NightElf = {},
      Dwarf = {},
      Gnome = {},
      Draenei = {},
      Orc = {},
      Scourge = {},
      Tauren = {},
      Troll = {},
      BloodElf = {},
    },
    general = {
      title = L["General"],
      icon = 136116,
      args = {}
    },
  }

local manaIcon = "Interface\\Icons\\spell_frost_manarecharge.blp"
local rageIcon = "Interface\\Icons\\ability_racial_bloodrage.blp"
local comboPointsIcon = "Interface\\Icons\\ability_backstab"

local powerTypes =
  {
    [0] = { name = POWER_TYPE_MANA, icon = manaIcon },
    [1] = { name = POWER_TYPE_RED_POWER, icon = rageIcon},
    [2] = { name = POWER_TYPE_FOCUS, icon = "Interface\\Icons\\ability_hunter_focusfire"},
    [3] = { name = POWER_TYPE_ENERGY, icon = "Interface\\Icons\\spell_shadow_shadowworddominate"},
    [4] = { name = COMBO_POINTS, icon = comboPointsIcon},
  }

-- Collected by WeakAurasTemplateCollector:
--------------------------------------------------------------------------------

templates.class.WARRIOR = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 469, type = "buff", unit = "player" }, -- Commanding Shout
        { spell = 871, type = "buff", unit = "player" }, -- Shield Wall
        { spell = 1134, type = "buff", unit = "player" }, -- Inner Rage
        { spell = 1719, type = "buff", unit = "player" }, -- Recklessness
        { spell = 2565, type = "buff", unit = "player" }, -- Shield Block
        { spell = 6673, type = "buff", unit = "player" }, -- Battle Shout
        { spell = 12292, type = "buff", unit = "player", talent = 35 }, -- Death Wish
        { spell = 12328, type = "buff", unit = "player", talent = 4 }, -- Sweeping Strikes
        { spell = 12964, type = "buff", unit = "player", talent = 29 }, -- Battle Trance
        { spell = 12968, type = "buff", unit = "player", talent = 37 }, -- Flurry
        { spell = 14202, type = "buff", unit = "player", talent = 32 }, -- Enrage
        { spell = 18499, type = "buff", unit = "player" }, -- Berserker Rage
        { spell = 20230, type = "buff", unit = "player" }, -- Retaliation
        { spell = 23885, type = "buff", unit = "player" }, -- Bloodthirst
        { spell = 23920, type = "buff", unit = "player" }, -- Spell Reflection
        { spell = 29801, type = "buff", unit = "player", talent = 41 }, -- Rampage
        { spell = 46916, type = "buff", unit = "player", talent = 42 }, -- Bloodsurge
        { spell = 55694, type = "buff", unit = "player" }, -- Enraged Regeneration
        { spell = 60116, type = "buff", unit = "player" }, -- Armored Brown Bear
        { spell = 60503, type = "buff", unit = "player", talent = 12 }, -- Taste for Blood
        { spell = 65156, type = "buff", unit = "player", talent = 6 }, -- Juggernaut
        { spell = 84586, type = "buff", unit = "player" }, -- Slaughter
        { spell = 85730, type = "buff", unit = "player", talent = 17 }, -- Deadly Calm
        { spell = 85739, type = "buff", unit = "player", talent = 38 }, -- Meat Cleaver
        { spell = 87096, type = "buff", unit = "player", talent = 68 }, -- Thunderstruck
        { spell = 97954, type = "buff", unit = "player" }, -- Spell Block
        { spell = 102740, type = "buff", unit = "player" }, -- Strength of Courage
        { spell = 102742, type = "buff", unit = "player" }, -- Mastery of Nimbleness
      },
      icon = 132333
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 355, type = "debuff", unit = "target" }, -- Taunt
        { spell = 1160, type = "debuff", unit = "target" }, -- Demoralizing Shout
        { spell = 1161, type = "debuff", unit = "target" }, -- Challenging Shout
        { spell = 1715, type = "debuff", unit = "target" }, -- Hamstring
        { spell = 6343, type = "debuff", unit = "target" }, -- Thunder Clap
        { spell = 7922, type = "debuff", unit = "target" }, -- Charge Stun
        { spell = 12294, type = "debuff", unit = "target" }, -- Mortal Strike
        { spell = 12323, type = "debuff", unit = "target", talent = 33 }, -- Piercing Howl
        { spell = 18498, type = "debuff", unit = "target" }, -- Silenced - Gag Order
        { spell = 20253, type = "debuff", unit = "target" }, -- Intercept
        { spell = 20511, type = "debuff", unit = "target" }, -- Intimidating Shout
        { spell = 30070, type = "debuff", unit = "target", talent = 9 }, -- Blood Frenzy
        { spell = 46857, type = "debuff", unit = "target" }, -- Trauma
        { spell = 46968, type = "debuff", unit = "target", talent = 73 }, -- Shockwave
        { spell = 56112, type = "debuff", unit = "target", talent = 36 }, -- Furious Attacks
        { spell = 58567, type = "debuff", unit = "target" }, -- Sunder Armor
        { spell = 64382, type = "debuff", unit = "target" }, -- Shattering Throw
        { spell = 85388, type = "debuff", unit = "target", talent = 16 }, -- Throwdown
        { spell = 86346, type = "debuff", unit = "target" }, -- Colossus Smash
        { spell = 94009, type = "debuff", unit = "target" }, -- Rend
        { spell = 413763, type = "debuff", unit = "target", talent = 1 }, -- Deep Wounds
      },
      icon = 132366
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 71, type = "ability" }, -- Defensive Stance
        { spell = 78, type = "ability", requiresTarget = true }, -- Heroic Strike
        { spell = 100, type = "ability", requiresTarget = true, usable = true }, -- Charge
        { spell = 355, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Taunt
        { spell = 469, type = "ability", buff = true }, -- Commanding Shout
        { spell = 676, type = "ability", requiresTarget = true, usable = true }, -- Disarm
        { spell = 772, type = "ability", requiresTarget = true, usable = true }, -- Rend
        { spell = 845, type = "ability", requiresTarget = true }, -- Cleave
        { spell = 871, type = "ability", buff = true, usable = true }, -- Shield Wall
        { spell = 1134, type = "ability", buff = true }, -- Inner Rage
        { spell = 1161, type = "ability", debuff = true }, -- Challenging Shout
        { spell = 1464, type = "ability", overlayGlow = true, requiresTarget = true }, -- Slam
        { spell = 1680, type = "ability", usable = true }, -- Whirlwind
        { spell = 1715, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Hamstring
        { spell = 1719, type = "ability", buff = true, usable = true }, -- Recklessness
        { spell = 2457, type = "ability" }, -- Battle Stance
        { spell = 2458, type = "ability" }, -- Berserker Stance
        { spell = 2565, type = "ability", buff = true, usable = true }, -- Shield Block
        { spell = 2764, type = "ability", requiresTarget = true }, -- Throw
        { spell = 3018, type = "ability", requiresTarget = true }, -- Shoot
        { spell = 5246, type = "ability", requiresTarget = true }, -- Intimidating Shout
        { spell = 5308, type = "ability", requiresTarget = true, usable = true }, -- Execute
        { spell = 6343, type = "ability", debuff = true, usable = true }, -- Thunder Clap
        { spell = 6544, type = "ability" }, -- Heroic Leap
        { spell = 6552, type = "ability", requiresTarget = true }, -- Pummel
        { spell = 6572, type = "ability", requiresTarget = true, usable = true }, -- Revenge
        { spell = 6673, type = "ability", buff = true }, -- Battle Shout
        { spell = 7384, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Overpower
        { spell = 7386, type = "ability", requiresTarget = true }, -- Sunder Armor
        { spell = 12292, type = "ability", buff = true, talent = 35 }, -- Death Wish
        { spell = 12294, type = "ability", debuff = true, requiresTarget = true }, -- Mortal Strike
        { spell = 12328, type = "ability", buff = true, usable = true, talent = 4 }, -- Sweeping Strikes
        { spell = 12809, type = "ability", talent = 63 }, -- Concussion Blow
        { spell = 18499, type = "ability", buff = true }, -- Berserker Rage
        { spell = 20230, type = "ability", buff = true, usable = true }, -- Retaliation
        { spell = 20243, type = "ability", requiresTarget = true, usable = true, talent = 67 }, -- Devastate
        { spell = 20252, type = "ability", requiresTarget = true, usable = true }, -- Intercept
        { spell = 23881, type = "ability", requiresTarget = true }, -- Bloodthirst
        { spell = 23920, type = "ability", buff = true, usable = true }, -- Spell Reflection
        { spell = 23922, type = "ability", requiresTarget = true, usable = true }, -- Shield Slam
        { spell = 34428, type = "ability", requiresTarget = true, usable = true }, -- Victory Rush
        { spell = 46924, type = "ability", talent = 8 }, -- Bladestorm
        { spell = 46968, type = "ability", debuff = true, talent = 73 }, -- Shockwave
        { spell = 55694, type = "ability", buff = true, usable = true }, -- Enraged Regeneration
        { spell = 57755, type = "ability", requiresTarget = true }, -- Heroic Throw
        { spell = 60970, type = "ability", talent = 40 }, -- Heroic Fury
        { spell = 64382, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Shattering Throw
        { spell = 85288, type = "ability", overlayGlow = true, requiresTarget = true, usable = true, talent = 47 }, -- Raging Blow
        { spell = 85388, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 16 }, -- Throwdown
        { spell = 85730, type = "ability", buff = true, talent = 17 }, -- Deadly Calm
        { spell = 86346, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Colossus Smash
        { spell = 88161, type = "ability", requiresTarget = true }, -- Strike
      },
      icon = 132355
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = rageIcon,
    }
  }
}

templates.class.PALADIN = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 465, type = "buff", unit = "player" }, -- Devotion Aura
        { spell = 498, type = "buff", unit = "player" }, -- Divine Protection
        { spell = 642, type = "buff", unit = "player" }, -- Divine Shield
        { spell = 1022, type = "buff", unit = "player" }, -- Hand of Protection
        { spell = 1038, type = "buff", unit = "player" }, -- Hand of Salvation
        { spell = 1044, type = "buff", unit = "player" }, -- Hand of Freedom
        { spell = 7294, type = "buff", unit = "player" }, -- Retribution Aura
        { spell = 19746, type = "buff", unit = "player" }, -- Concentration Aura
        { spell = 19891, type = "buff", unit = "player" }, -- Resistance Aura
        { spell = 20052, type = "buff", unit = "player", talent = 17 }, -- Conviction
        { spell = 20154, type = "buff", unit = "player" }, -- Seal of Righteousness
        { spell = 20164, type = "buff", unit = "player" }, -- Seal of Justice
        { spell = 20165, type = "buff", unit = "player" }, -- Seal of Insight
        { spell = 20925, type = "buff", unit = "player", talent = 37 }, -- Holy Shield
        { spell = 25780, type = "buff", unit = "player" }, -- Righteous Fury
        { spell = 31801, type = "buff", unit = "player" }, -- Seal of Truth
        { spell = 31821, type = "buff", unit = "player", talent = 5 }, -- Aura Mastery
        { spell = 31842, type = "buff", unit = "player", talent = 12 }, -- Divine Favor
        { spell = 31850, type = "buff", unit = "player", talent = 36 }, -- Ardent Defender
        { spell = 31884, type = "buff", unit = "player" }, -- Avenging Wrath
        { spell = 31930, type = "buff", unit = "player" }, -- Judgements of the Wise
        { spell = 32223, type = "buff", unit = "player" }, -- Crusader Aura
        { spell = 53563, type = "buff", unit = "player", talent = 10 }, -- Beacon of Light
        { spell = 53655, type = "buff", unit = "player", talent = 8 }, -- Judgements of the Pure
        { spell = 54149, type = "buff", unit = "player", talent = 9 }, -- Infusion of Light
        { spell = 54428, type = "buff", unit = "player" }, -- Divine Plea
        { spell = 57669, type = "buff", unit = "player" }, -- Replenishment
        { spell = 59578, type = "buff", unit = "player", talent = 61 }, -- The Art of War
        { spell = 60116, type = "buff", unit = "player" }, -- Armored Brown Bear
        { spell = 79063, type = "buff", unit = "player" }, -- Blessing of Kings
        { spell = 79102, type = "buff", unit = "player" }, -- Blessing of Might
        { spell = 82327, type = "buff", unit = "player" }, -- Holy Radiance
        { spell = 84963, type = "buff", unit = "player" }, -- Inquisition
        { spell = 85416, type = "buff", unit = "player", talent = 44 }, -- Grand Crusader
        { spell = 85433, type = "buff", unit = "player", talent = 38 }, -- Sacred Duty
        { spell = 85497, type = "buff", unit = "player", talent = 15 }, -- Speed of Light
        { spell = 85696, type = "buff", unit = "player", talent = 69 }, -- Zealotry
        { spell = 88819, type = "buff", unit = "player", talent = 16 }, -- Daybreak
        { spell = 89906, type = "buff", unit = "player" }, -- Judgements of the Bold
        { spell = 90174, type = "buff", unit = "player", talent = 57 }, -- Divine Purpose
        { spell = 102740, type = "buff", unit = "player" }, -- Strength of Courage
        { spell = 102742, type = "buff", unit = "player" }, -- Mastery of Nimbleness
      },
      icon = 135964
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 853, type = "debuff", unit = "target" }, -- Hammer of Justice
        { spell = 20170, type = "debuff", unit = "target" }, -- Seal of Justice
        { spell = 26017, type = "debuff", unit = "target", talent = 41 }, -- Vindication
        { spell = 31803, type = "debuff", unit = "target" }, -- Censure
        { spell = 31935, type = "debuff", unit = "target" }, -- Avenger's Shield
        { spell = 62124, type = "debuff", unit = "target" }, -- Hand of Reckoning
        { spell = 68055, type = "debuff", unit = "target", talent = 39 }, -- Judgements of the Just
      },
      icon = 135952
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 498, type = "ability", buff = true }, -- Divine Protection
        { spell = 633, type = "ability", usable = true }, -- Lay on Hands
        { spell = 642, type = "ability", buff = true, usable = true }, -- Divine Shield
        { spell = 853, type = "ability", debuff = true, requiresTarget = true }, -- Hammer of Justice
        { spell = 879, type = "ability", overlayGlow = true, requiresTarget = true }, -- Exorcism
        { spell = 1022, type = "ability", buff = true, usable = true }, -- Hand of Protection
        { spell = 1038, type = "ability", buff = true }, -- Hand of Salvation
        { spell = 1044, type = "ability", buff = true }, -- Hand of Freedom
        { spell = 2812, type = "ability" }, -- Holy Wrath
        { spell = 6940, type = "ability" }, -- Hand of Sacrifice
        { spell = 20066, type = "ability", talent = 62 }, -- Repentance
        { spell = 20271, type = "ability", requiresTarget = true, usable = true }, -- Judgement
        { spell = 20473, type = "ability", requiresTarget = true }, -- Holy Shock
        { spell = 20925, type = "ability", buff = true, usable = true, talent = 37 }, -- Holy Shield
        { spell = 24275, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Hammer of Wrath
        { spell = 26573, type = "ability", totem = true }, -- Consecration
        { spell = 31821, type = "ability", buff = true, talent = 5 }, -- Aura Mastery
        { spell = 31842, type = "ability", buff = true, talent = 12 }, -- Divine Favor
        { spell = 31850, type = "ability", buff = true, talent = 36 }, -- Ardent Defender
        { spell = 31884, type = "ability", buff = true }, -- Avenging Wrath
        { spell = 31935, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true, usable = true }, -- Avenger's Shield
        { spell = 35395, type = "ability", requiresTarget = true, usable = true }, -- Crusader Strike
        { spell = 53385, type = "ability", talent = 66 }, -- Divine Storm
        { spell = 53595, type = "ability", requiresTarget = true, usable = true, talent = 40 }, -- Hammer of the Righteous
        { spell = 53600, type = "ability", requiresTarget = true, usable = true, talent = 46 }, -- Shield of the Righteous
        { spell = 54428, type = "ability", buff = true }, -- Divine Plea
        { spell = 62124, type = "ability", debuff = true, requiresTarget = true }, -- Hand of Reckoning
        { spell = 82327, type = "ability", buff = true, requiresTarget = true }, -- Holy Radiance
        { spell = 85256, type = "ability", overlayGlow = true, requiresTarget = true }, -- Templar's Verdict
        { spell = 85673, type = "ability" }, -- Word of Glory
        { spell = 85696, type = "ability", buff = true, overlayGlow = true, talent = 69 }, -- Zealotry
        { spell = 96231, type = "ability", requiresTarget = true }, -- Rebuke
      },
      icon = 135972
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  }
}

templates.class.HUNTER = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 3045, type = "buff", unit = "player" }, -- Rapid Fire
        { spell = 5118, type = "buff", unit = "player" }, -- Aspect of the Cheetah
        { spell = 5384, type = "buff", unit = "player" }, -- Feign Death
        { spell = 13159, type = "buff", unit = "player" }, -- Aspect of the Pack
        { spell = 13165, type = "buff", unit = "player" }, -- Aspect of the Hawk
        { spell = 19263, type = "buff", unit = "player" }, -- Deterrence
        { spell = 19506, type = "buff", unit = "player", talent = 38 }, -- Trueshot Aura
        { spell = 20043, type = "buff", unit = "player" }, -- Aspect of the Wild
        { spell = 24529, type = "buff", unit = "player", talent = 8 }, -- Spirit Bond
        { spell = 34471, type = "buff", unit = "player", talent = 16 }, -- The Beast Within
        { spell = 34477, type = "buff", unit = "player" }, -- Misdirection
        { spell = 53220, type = "buff", unit = "player", talent = 34 }, -- Improved Steady Shot
        { spell = 53290, type = "buff", unit = "player", talent = 70 }, -- Hunting Party
        { spell = 54216, type = "buff", unit = "player" }, -- Master's Call
        { spell = 54227, type = "buff", unit = "player", talent = 42 }, -- Rapid Recuperation
        { spell = 56453, type = "buff", unit = "player", talent = 63 }, -- Lock and Load
        { spell = 64420, type = "buff", unit = "player", talent = 71 }, -- Sniper Training
        { spell = 75447, type = "buff", unit = "player", talent = 9 }, -- Ferocious Inspiration
        { spell = 77769, type = "buff", unit = "player" }, -- Trap Launcher
        { spell = 82661, type = "buff", unit = "player" }, -- Aspect of the Fox
        { spell = 82692, type = "buff", unit = "player", talent = 10 }, -- Focus Fire
        { spell = 82921, type = "buff", unit = "player", talent = 37 }, -- Bombardment
        { spell = 82925, type = "buff", unit = "player" }, -- Ready, Set, Aim...
        { spell = 82926, type = "buff", unit = "player" }, -- Fire!
        { spell = 89388, type = "buff", unit = "player", talent = 32 }, -- Sic 'Em!
        { spell = 136, type = "buff", unit = "pet" }, -- Mend Pet
        { spell = 19574, type = "buff", unit = "pet", talent = 12 }, -- Bestial Wrath
        { spell = 19615, type = "buff", unit = "pet" }, -- Frenzy Effect
        { spell = 62305, type = "buff", unit = "pet" }, -- Master's Call
      },
      icon = 132242
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 1130, type = "debuff", unit = "target" }, -- Hunter's Mark
        { spell = 1978, type = "debuff", unit = "target" }, -- Serpent Sting
        { spell = 2974, type = "debuff", unit = "target" }, -- Wing Clip
        { spell = 3355, type = "debuff", unit = "target" }, -- Freezing Trap
        { spell = 3674, type = "debuff", unit = "target", talent = 72 }, -- Black Arrow
        { spell = 5116, type = "debuff", unit = "target" }, -- Concussive Shot
        { spell = 13797, type = "debuff", unit = "target" }, -- Immolation Trap
        { spell = 13810, type = "debuff", unit = "target" }, -- Ice Trap
        { spell = 13812, type = "debuff", unit = "target" }, -- Explosive Trap
        { spell = 19386, type = "debuff", unit = "target", talent = 67 }, -- Wyvern Sting
        { spell = 19503, type = "debuff", unit = "target" }, -- Scatter Shot
        { spell = 20736, type = "debuff", unit = "target" }, -- Distracting Shot
        { spell = 24394, type = "debuff", unit = "target" }, -- Intimidation
        { spell = 25810, type = "debuff", unit = "target" }, -- Mind-numbing Poison
        { spell = 34490, type = "debuff", unit = "target", talent = 43 }, -- Silencing Shot
        { spell = 34655, type = "debuff", unit = "target" }, -- Deadly Poison
        { spell = 35101, type = "debuff", unit = "target", talent = 36 }, -- Concussive Barrage
        { spell = 50518, type = "debuff", unit = "target" }, -- Ravage
        { spell = 53301, type = "debuff", unit = "target" }, -- Explosive Shot
        { spell = 82654, type = "debuff", unit = "target" }, -- Widow Venom
        { spell = 88691, type = "debuff", unit = "target", talent = 45 }, -- Marked for Death
        { spell = 94528, type = "debuff", unit = "target" }, -- Flare
        { spell = 413848, type = "debuff", unit = "target", talent = 47 }, -- Piercing Shots
      },
      icon = 135860
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 75, type = "ability", requiresTarget = true, usable = true }, -- Auto Shot
        { spell = 781, type = "ability" }, -- Disengage
        { spell = 1499, type = "ability" }, -- Freezing Trap
        { spell = 1543, type = "ability" }, -- Flare
        { spell = 1978, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Serpent Sting
        { spell = 2643, type = "ability", requiresTarget = true, usable = true }, -- Multi-Shot
        { spell = 2649, type = "ability" }, -- Growl
        { spell = 2973, type = "ability", requiresTarget = true, usable = true }, -- Raptor Strike
        { spell = 2974, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Wing Clip
        { spell = 3044, type = "ability", requiresTarget = true, usable = true }, -- Arcane Shot
        { spell = 3045, type = "ability", buff = true }, -- Rapid Fire
        { spell = 3674, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 72 }, -- Black Arrow
        { spell = 5116, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Concussive Shot
        { spell = 5118, type = "ability", buff = true }, -- Aspect of the Cheetah
        { spell = 5384, type = "ability", buff = true }, -- Feign Death
        { spell = 6991, type = "ability", requiresTarget = true, usable = true }, -- Feed Pet
        { spell = 13159, type = "ability", buff = true }, -- Aspect of the Pack
        { spell = 13165, type = "ability", buff = true }, -- Aspect of the Hawk
        { spell = 13795, type = "ability" }, -- Immolation Trap
        { spell = 13809, type = "ability" }, -- Ice Trap
        { spell = 13813, type = "ability" }, -- Explosive Trap
        { spell = 17253, type = "ability" }, -- Bite
        { spell = 19263, type = "ability", buff = true }, -- Deterrence
        { spell = 19306, type = "ability", requiresTarget = true, usable = true, talent = 61 }, -- Counterattack
        { spell = 19386, type = "ability", debuff = true, requiresTarget = true, usable = true, talent = 67 }, -- Wyvern Sting
        { spell = 19434, type = "ability", overlayGlow = true, requiresTarget = true }, -- Aimed Shot
        { spell = 19503, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Scatter Shot
        { spell = 19574, type = "ability", buff = true, unit = 'pet', talent = 12 }, -- Bestial Wrath
        { spell = 19577, type = "ability" }, -- Intimidation
        { spell = 19801, type = "ability", requiresTarget = true, usable = true }, -- Tranquilizing Shot
        { spell = 20043, type = "ability", buff = true }, -- Aspect of the Wild
        { spell = 20736, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Distracting Shot
        { spell = 23989, type = "ability", talent = 35 }, -- Readiness
        { spell = 34026, type = "ability" }, -- Kill Command
        { spell = 34477, type = "ability", buff = true }, -- Misdirection
        { spell = 34490, type = "ability", debuff = true, requiresTarget = true, talent = 43 }, -- Silencing Shot
        { spell = 34600, type = "ability" }, -- Snake Trap
        { spell = 50518, type = "ability", debuff = true }, -- Ravage
        { spell = 51753, type = "ability", usable = true }, -- Camouflage
        { spell = 53209, type = "ability", requiresTarget = true, talent = 46 }, -- Chimera Shot
        { spell = 53271, type = "ability" }, -- Master's Call
        { spell = 53301, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true, usable = true }, -- Explosive Shot
        { spell = 53351, type = "ability", requiresTarget = true, usable = true }, -- Kill Shot
        { spell = 56641, type = "ability", requiresTarget = true, usable = true }, -- Steady Shot
        { spell = 60192, type = "ability", overlayGlow = true }, -- Freezing Trap
        { spell = 77767, type = "ability", requiresTarget = true, usable = true }, -- Cobra Shot
        { spell = 77769, type = "ability", buff = true, usable = true }, -- Trap Launcher
        { spell = 82654, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Widow Venom
        { spell = 82661, type = "ability", buff = true }, -- Aspect of the Fox
        { spell = 82692, type = "ability", buff = true, overlayGlow = true, talent = 10 }, -- Focus Fire
        { spell = 82726, type = "ability", talent = 5 }, -- Fervor
        { spell = 82939, type = "ability", overlayGlow = true }, -- Explosive Trap
        { spell = 82941, type = "ability", overlayGlow = true }, -- Ice Trap
        { spell = 82945, type = "ability", overlayGlow = true }, -- Immolation Trap
        { spell = 82948, type = "ability", overlayGlow = true }, -- Snake Trap
      },
      icon = 135130
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  }
}

templates.class.ROGUE = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 1784, type = "buff", unit = "player" }, -- Stealth
        { spell = 1966, type = "buff", unit = "player" }, -- Feint
        { spell = 2983, type = "buff", unit = "player" }, -- Sprint
        { spell = 5171, type = "buff", unit = "player" }, -- Slice and Dice
        { spell = 5277, type = "buff", unit = "player" }, -- Evasion
        { spell = 11327, type = "buff", unit = "player" }, -- Vanish
        { spell = 13750, type = "buff", unit = "player", talent = 33 }, -- Adrenaline Rush
        { spell = 13877, type = "buff", unit = "player" }, -- Blade Flurry
        { spell = 14177, type = "buff", unit = "player", talent = 6 }, -- Cold Blood
        { spell = 31224, type = "buff", unit = "player" }, -- Cloak of Shadows
        { spell = 31665, type = "buff", unit = "player" }, -- Master of Subtlety
        { spell = 32645, type = "buff", unit = "player" }, -- Envenom
        { spell = 36554, type = "buff", unit = "player" }, -- Shadowstep
        { spell = 51690, type = "buff", unit = "player", talent = 42 }, -- Killing Spree
        { spell = 51701, type = "buff", unit = "player", talent = 68 }, -- Honor Among Thieves
        { spell = 51713, type = "buff", unit = "player", talent = 70 }, -- Shadow Dance
        { spell = 58427, type = "buff", unit = "player", talent = 7 }, -- Overkill
        { spell = 73651, type = "buff", unit = "player" }, -- Recuperate
        { spell = 74001, type = "buff", unit = "player" }, -- Combat Readiness
        { spell = 102742, type = "buff", unit = "player" }, -- Mastery of Nimbleness
        { spell = 102747, type = "buff", unit = "player" }, -- Agility of the Tiger
      },
      icon = 132290
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 408, type = "debuff", unit = "target" }, -- Kidney Shot
        { spell = 703, type = "debuff", unit = "target" }, -- Garrote
        { spell = 1330, type = "debuff", unit = "target" }, -- Garrote - Silence
        { spell = 1776, type = "debuff", unit = "target" }, -- Gouge
        { spell = 1833, type = "debuff", unit = "target" }, -- Cheap Shot
        { spell = 1943, type = "debuff", unit = "target" }, -- Rupture
        { spell = 2094, type = "debuff", unit = "target" }, -- Blind
        { spell = 2818, type = "debuff", unit = "target" }, -- Deadly Poison
        { spell = 3409, type = "debuff", unit = "target" }, -- Crippling Poison
        { spell = 5760, type = "debuff", unit = "target" }, -- Mind-numbing Poison
        { spell = 8647, type = "debuff", unit = "target" }, -- Expose Armor
        { spell = 13218, type = "debuff", unit = "target" }, -- Wound Poison
        { spell = 16511, type = "debuff", unit = "target", talent = 64 }, -- Hemorrhage
        { spell = 26679, type = "debuff", unit = "target" }, -- Deadly Throw
        { spell = 51585, type = "debuff", unit = "target", talent = 37 }, -- Blade Twisting
        { spell = 51693, type = "debuff", unit = "target", talent = 67 }, -- Waylay
        { spell = 58683, type = "debuff", unit = "target", talent = 41 }, -- Savage Combat
        { spell = 79140, type = "debuff", unit = "target", talent = 14 }, -- Vendetta
        { spell = 88611, type = "debuff", unit = "target" }, -- Smoke Bomb
        { spell = 93068, type = "debuff", unit = "target", talent = 10 }, -- Master Poisoner
      },
      icon = 132302
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 53, type = "ability", requiresTarget = true, usable = true }, -- Backstab
        { spell = 408, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Kidney Shot
        { spell = 703, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Garrote
        { spell = 921, type = "ability", requiresTarget = true, usable = true }, -- Pick Pocket
        { spell = 1329, type = "ability", requiresTarget = true }, -- Mutilate
        { spell = 1725, type = "ability" }, -- Distract
        { spell = 1752, type = "ability", requiresTarget = true }, -- Sinister Strike
        { spell = 1766, type = "ability", requiresTarget = true }, -- Kick
        { spell = 1776, type = "ability", debuff = true, requiresTarget = true }, -- Gouge
        { spell = 1784, type = "ability", buff = true, usable = true }, -- Stealth
        { spell = 1833, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Cheap Shot
        { spell = 1856, type = "ability" }, -- Vanish
        { spell = 1943, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Rupture
        { spell = 1966, type = "ability", buff = true, requiresTarget = true }, -- Feint
        { spell = 2094, type = "ability", debuff = true, requiresTarget = true }, -- Blind
        { spell = 2098, type = "ability", requiresTarget = true, usable = true }, -- Eviscerate
        { spell = 2764, type = "ability", requiresTarget = true }, -- Throw
        { spell = 2983, type = "ability", buff = true, usable = true }, -- Sprint
        { spell = 3018, type = "ability", requiresTarget = true, usable = true }, -- Shoot
        { spell = 5277, type = "ability", buff = true }, -- Evasion
        { spell = 5938, type = "ability", requiresTarget = true }, -- Shiv
        { spell = 8647, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Expose Armor
        { spell = 8676, type = "ability", requiresTarget = true, usable = true }, -- Ambush
        { spell = 13750, type = "ability", buff = true, talent = 33 }, -- Adrenaline Rush
        { spell = 13877, type = "ability", buff = true }, -- Blade Flurry
        { spell = 14177, type = "ability", buff = true, usable = true, talent = 6 }, -- Cold Blood
        { spell = 14183, type = "ability", requiresTarget = true, usable = true, talent = 63 }, -- Premeditation
        { spell = 14185, type = "ability", talent = 62 }, -- Preparation
        { spell = 16511, type = "ability", debuff = true, requiresTarget = true, talent = 64 }, -- Hemorrhage
        { spell = 26679, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Deadly Throw
        { spell = 31224, type = "ability", buff = true }, -- Cloak of Shadows
        { spell = 32645, type = "ability", buff = true, requiresTarget = true, usable = true }, -- Envenom
        { spell = 36554, type = "ability", buff = true, requiresTarget = true, usable = true }, -- Shadowstep
        { spell = 51690, type = "ability", buff = true, talent = 42 }, -- Killing Spree
        { spell = 51713, type = "ability", buff = true, talent = 70 }, -- Shadow Dance
        { spell = 51722, type = "ability", requiresTarget = true }, -- Dismantle
        { spell = 57934, type = "ability" }, -- Tricks of the Trade
        { spell = 73981, type = "ability", requiresTarget = true }, -- Redirect
        { spell = 74001, type = "ability", buff = true }, -- Combat Readiness
        { spell = 76577, type = "ability", duration = 5 }, -- Smoke Bomb
        { spell = 79140, type = "ability", debuff = true, requiresTarget = true, talent = 14 }, -- Vendetta
        { spell = 84617, type = "ability", requiresTarget = true, talent = 46 }, -- Revealing Strike
      },
      icon = 132350
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = comboPointsIcon,
    },
  }
}

templates.class.PRIEST = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 17, type = "buff", unit = "player" }, -- Power Word: Shield
        { spell = 139, type = "buff", unit = "player" }, -- Renew
        { spell = 586, type = "buff", unit = "player" }, -- Fade
        { spell = 588, type = "buff", unit = "player" }, -- Inner Fire
        { spell = 6346, type = "buff", unit = "player" }, -- Fear Ward
        { spell = 10060, type = "buff", unit = "player", talent = 10 }, -- Power Infusion
        { spell = 14751, type = "buff", unit = "player", talent = 41 }, -- Chakra
        { spell = 15286, type = "buff", unit = "player", talent = 63 }, -- Vampiric Embrace
        { spell = 15357, type = "buff", unit = "player", talent = 31 }, -- Inspiration
        { spell = 15473, type = "buff", unit = "player", talent = 66 }, -- Shadowform
        { spell = 33206, type = "buff", unit = "player", talent = 13 }, -- Pain Suppression
        { spell = 41635, type = "buff", unit = "player" }, -- Prayer of Mending
        { spell = 47585, type = "buff", unit = "player", talent = 72 }, -- Dispersion
        { spell = 47753, type = "buff", unit = "player", talent = 9 }, -- Divine Aegis
        { spell = 47788, type = "buff", unit = "player", talent = 38 }, -- Guardian Spirit
        { spell = 49868, type = "buff", unit = "player" }, -- Mind Quickening
        { spell = 57669, type = "buff", unit = "player" }, -- Replenishment
        { spell = 59888, type = "buff", unit = "player", talent = 17 }, -- Borrowed Time
        { spell = 60116, type = "buff", unit = "player" }, -- Armored Brown Bear
        { spell = 63735, type = "buff", unit = "player", talent = 32 }, -- Serendipity
        { spell = 64843, type = "buff", unit = "player" }, -- Divine Hymn
        { spell = 64901, type = "buff", unit = "player" }, -- Hymn of Hope
        { spell = 65081, type = "buff", unit = "player", talent = 34 }, -- Body and Soul
        { spell = 73413, type = "buff", unit = "player" }, -- Inner Will
        { spell = 77487, type = "buff", unit = "player" }, -- Shadow Orb
        { spell = 77489, type = "buff", unit = "player" }, -- Echo of Light
        { spell = 77613, type = "buff", unit = "player", talent = 14 }, -- Grace
        { spell = 79105, type = "buff", unit = "player" }, -- Power Word: Fortitude
        { spell = 79107, type = "buff", unit = "player" }, -- Shadow Protection
        { spell = 81208, type = "buff", unit = "player" }, -- Chakra: Serenity
        { spell = 81782, type = "buff", unit = "player", talent = 6 }, -- Power Word: Barrier
        { spell = 87160, type = "buff", unit = "player", talent = 64 }, -- Mind Melt
        { spell = 88684, type = "buff", unit = "player" }, -- Holy Word: Serenity
        { spell = 89485, type = "buff", unit = "player", talent = 3 }, -- Inner Focus
        { spell = 91139, type = "buff", unit = "player" }, -- Cleansing Tears
        { spell = 91724, type = "buff", unit = "player" }, -- Spell Warding
        { spell = 95799, type = "buff", unit = "player" }, -- Empowered Shadow
        { spell = 96267, type = "buff", unit = "player", talent = 20 }, -- Strength of Soul
        { spell = 17, type = "buff", unit = "target" }, -- Power Word: Shield
        { spell = 47788, type = "buff", unit = "target", talent = 38 }, -- Guardian Spirit
        { spell = 65081, type = "buff", unit = "target", talent = 34 }, -- Body and Soul
        { spell = 63619, type = "buff", unit = "pet" }, -- Shadowcrawl
      },
      icon = 135940
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 589, type = "debuff", unit = "target" }, -- Shadow Word: Pain
        { spell = 2944, type = "debuff", unit = "target" }, -- Devouring Plague
        { spell = 6788, type = "debuff", unit = "target" }, -- Weakened Soul
        { spell = 8122, type = "debuff", unit = "target" }, -- Psychic Scream
        { spell = 15407, type = "debuff", unit = "target" }, -- Mind Flay
        { spell = 15487, type = "debuff", unit = "target", talent = 62 }, -- Silence
        { spell = 34914, type = "debuff", unit = "target", talent = 70 }, -- Vampiric Touch
        { spell = 48045, type = "debuff", unit = "target" }, -- Mind Sear
        { spell = 48301, type = "debuff", unit = "target" }, -- Mind Trauma
        { spell = 64044, type = "debuff", unit = "target", talent = 69 }, -- Psychic Horror
        { spell = 87178, type = "debuff", unit = "target" }, -- Mind Spike
        { spell = 87194, type = "debuff", unit = "target", talent = 75 }, -- Paralysis
        { spell = 88625, type = "debuff", unit = "target" }, -- Holy Word: Chastise
      },
      icon = 136207
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 17, type = "ability", buff = true, usable = true }, -- Power Word: Shield
        { spell = 527, type = "ability", requiresTarget = true }, -- Dispel Magic
        { spell = 585, type = "ability", requiresTarget = true }, -- Smite
        { spell = 586, type = "ability", buff = true }, -- Fade
        { spell = 589, type = "ability", debuff = true, requiresTarget = true }, -- Shadow Word: Pain
        { spell = 724, type = "ability", totem = true, talent = 40 }, -- Lightwell
        { spell = 2944, type = "ability", debuff = true, requiresTarget = true }, -- Devouring Plague
        { spell = 6346, type = "ability", buff = true }, -- Fear Ward
        { spell = 8092, type = "ability", overlayGlow = true, requiresTarget = true }, -- Mind Blast
        { spell = 8122, type = "ability", debuff = true }, -- Psychic Scream
        { spell = 8129, type = "ability", requiresTarget = true }, -- Mana Burn
        { spell = 10060, type = "ability", buff = true, talent = 10 }, -- Power Infusion
        { spell = 14751, type = "ability", buff = true, usable = true, talent = 41 }, -- Chakra
        { spell = 14914, type = "ability", requiresTarget = true }, -- Holy Fire
        { spell = 15407, type = "ability", debuff = true, requiresTarget = true }, -- Mind Flay
        { spell = 15473, type = "ability", buff = true, usable = true, talent = 66 }, -- Shadowform
        { spell = 15487, type = "ability", debuff = true, requiresTarget = true, talent = 62 }, -- Silence
        { spell = 19236, type = "ability", talent = 43 }, -- Desperate Prayer
        { spell = 32379, type = "ability", requiresTarget = true }, -- Shadow Word: Death
        { spell = 33076, type = "ability" }, -- Prayer of Mending
        { spell = 33206, type = "ability", buff = true, talent = 13 }, -- Pain Suppression
        { spell = 34433, type = "ability", requiresTarget = true }, -- Shadowfiend
        { spell = 34861, type = "ability", requiresTarget = true, talent = 36 }, -- Circle of Healing
        { spell = 34914, type = "ability", debuff = true, requiresTarget = true, talent = 70 }, -- Vampiric Touch
        { spell = 47540, type = "ability", requiresTarget = true }, -- Penance
        { spell = 47585, type = "ability", buff = true, talent = 72 }, -- Dispersion
        { spell = 47788, type = "ability", buff = true, talent = 38 }, -- Guardian Spirit
        { spell = 48045, type = "ability", debuff = true, requiresTarget = true }, -- Mind Sear
        { spell = 62618, type = "ability", talent = 6 }, -- Power Word: Barrier
        { spell = 64044, type = "ability", debuff = true, requiresTarget = true, talent = 69 }, -- Psychic Horror
        { spell = 64843, type = "ability", buff = true }, -- Divine Hymn
        { spell = 64901, type = "ability", buff = true }, -- Hymn of Hope
        { spell = 73510, type = "ability", overlayGlow = true, requiresTarget = true }, -- Mind Spike
        { spell = 88625, type = "ability", debuff = true, requiresTarget = true }, -- Holy Word: Chastise
        { spell = 88684, type = "ability", buff = true, overlayGlow = true }, -- Holy Word: Serenity
        { spell = 89485, type = "ability", buff = true, usable = true, talent = 3 }, -- Inner Focus
      },
      icon = 136224
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  }
}

templates.class.SHAMAN = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 324, type = "buff", unit = "player" }, -- Lightning Shield
        { spell = 974, type = "buff", unit = "player" }, -- Earth Shield
        { spell = 2645, type = "buff", unit = "player" }, -- Ghost Wolf
        { spell = 2825, type = "buff", unit = "player" }, -- Bloodlust
        { spell = 2895, type = "buff", unit = "player" }, -- Wrath of Air Totem
        { spell = 5677, type = "buff", unit = "player" }, -- Mana Spring
        { spell = 8072, type = "buff", unit = "player" }, -- Stoneskin
        { spell = 8076, type = "buff", unit = "player" }, -- Strength of Earth
        { spell = 8178, type = "buff", unit = "player" }, -- Grounding Totem Effect
        { spell = 8185, type = "buff", unit = "player" }, -- Elemental Resistance
        { spell = 8515, type = "buff", unit = "player" }, -- Windfury Totem
        { spell = 16166, type = "buff", unit = "player", talent = 4 }, -- Elemental Mastery
        { spell = 16188, type = "buff", unit = "player", talent = 61 }, -- Nature's Swiftness
        { spell = 16191, type = "buff", unit = "player" }, -- Mana Tide
        { spell = 16236, type = "buff", unit = "player" }, -- Ancestral Fortitude
        { spell = 16246, type = "buff", unit = "player" }, -- Clearcasting
        { spell = 16278, type = "buff", unit = "player", talent = 29 }, -- Flurry
        { spell = 29178, type = "buff", unit = "player", talent = 44 }, -- Elemental Devastation
        { spell = 30802, type = "buff", unit = "player", talent = 35 }, -- Unleashed Rage
        { spell = 30823, type = "buff", unit = "player", talent = 36 }, -- Shamanistic Rage
        { spell = 51470, type = "buff", unit = "player", talent = 11 }, -- Elemental Oath
        { spell = 52109, type = "buff", unit = "player" }, -- Flametongue Totem
        { spell = 52127, type = "buff", unit = "player" }, -- Water Shield
        { spell = 53390, type = "buff", unit = "player", talent = 68 }, -- Tidal Waves
        { spell = 53817, type = "buff", unit = "player", talent = 39 }, -- Maelstrom Weapon
        { spell = 60116, type = "buff", unit = "player" }, -- Armored Brown Bear
        { spell = 61295, type = "buff", unit = "player", talent = 69 }, -- Riptide
        { spell = 77747, type = "buff", unit = "player", talent = 13 }, -- Totemic Wrath
        { spell = 77800, type = "buff", unit = "player", talent = 71 }, -- Focused Insight
        { spell = 98007, type = "buff", unit = "player", talent = 76 }, -- Spirit Link Totem
        { spell = 105284, type = "buff", unit = "player" }, -- Ancestral Vigor
        { spell = 8178, type = "buff", unit = "pet" }, -- Grounding Totem Effect
        { spell = 8185, type = "buff", unit = "pet" }, -- Elemental Resistance
        { spell = 52109, type = "buff", unit = "pet" }, -- Flametongue Totem
      },
      icon = 135863
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 3600, type = "debuff", unit = "target" }, -- Earthbind
        { spell = 8034, type = "debuff", unit = "target" }, -- Frostbrand Attack
        { spell = 8042, type = "debuff", unit = "target" }, -- Earth Shock
        { spell = 8050, type = "debuff", unit = "target" }, -- Flame Shock
        { spell = 8056, type = "debuff", unit = "target" }, -- Frost Shock
        { spell = 17364, type = "debuff", unit = "target", talent = 34 }, -- Stormstrike
        { spell = 58861, type = "debuff", unit = "target" }, -- Bash
        { spell = 77661, type = "debuff", unit = "target", talent = 41 }, -- Searing Flames
        { spell = 100955, type = "debuff", unit = "target" }, -- Thunderstorm
      },
      icon = 135813
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 370, type = "ability", requiresTarget = true }, -- Purge
        { spell = 403, type = "ability", requiresTarget = true }, -- Lightning Bolt
        { spell = 421, type = "ability", requiresTarget = true }, -- Chain Lightning
        { spell = 556, type = "ability", usable = true }, -- Astral Recall
        { spell = 1535, type = "ability" }, -- Fire Nova
        { spell = 2062, type = "ability", totem = true }, -- Earth Elemental Totem
        { spell = 2484, type = "ability", totem = true }, -- Earthbind Totem
        { spell = 2825, type = "ability", buff = true }, -- Bloodlust
        { spell = 2894, type = "ability", totem = true }, -- Fire Elemental Totem
        { spell = 5730, type = "ability" }, -- Stoneclaw Totem
        { spell = 8042, type = "ability", debuff = true, requiresTarget = true }, -- Earth Shock
        { spell = 8050, type = "ability", debuff = true, requiresTarget = true }, -- Flame Shock
        { spell = 8056, type = "ability", debuff = true, requiresTarget = true }, -- Frost Shock
        { spell = 8143, type = "ability" }, -- Tremor Totem
        { spell = 8177, type = "ability", totem = true }, -- Grounding Totem
        { spell = 16166, type = "ability", buff = true, usable = true, talent = 4 }, -- Elemental Mastery
        { spell = 16188, type = "ability", buff = true, usable = true, talent = 61 }, -- Nature's Swiftness
        { spell = 16190, type = "ability", totem = true, talent = 60 }, -- Mana Tide Totem
        { spell = 17364, type = "ability", debuff = true, requiresTarget = true, talent = 34 }, -- Stormstrike
        { spell = 30823, type = "ability", buff = true, talent = 36 }, -- Shamanistic Rage
        { spell = 51490, type = "ability" }, -- Thunderstorm
        { spell = 51505, type = "ability", requiresTarget = true }, -- Lava Burst
        { spell = 51514, type = "ability" }, -- Hex
        { spell = 51533, type = "ability", talent = 40 }, -- Feral Spirit
        { spell = 57994, type = "ability", requiresTarget = true }, -- Wind Shear
        { spell = 60103, type = "ability", requiresTarget = true, usable = true }, -- Lava Lash
        { spell = 61295, type = "ability", buff = true, talent = 69 }, -- Riptide
        { spell = 61882, type = "ability", talent = 10 }, -- Earthquake
        { spell = 73899, type = "ability" }, -- Primal Strike
        { spell = 98008, type = "ability", totem = true, talent = 76 }, -- Spirit Link Totem
      },
      icon = 135963
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = 135990,
    },
  }
}

templates.class.MAGE = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 66, type = "buff", unit = "player" }, -- Invisibility
        { spell = 543, type = "buff", unit = "player" }, -- Mage Ward
        { spell = 1463, type = "buff", unit = "player" }, -- Mana Shield
        { spell = 6117, type = "buff", unit = "player" }, -- Mage Armor
        { spell = 7302, type = "buff", unit = "player" }, -- Frost Armor
        { spell = 11426, type = "buff", unit = "player", talent = 65 }, -- Ice Barrier
        { spell = 12042, type = "buff", unit = "player", talent = 9 }, -- Arcane Power
        { spell = 12043, type = "buff", unit = "player", talent = 6 }, -- Presence of Mind
        { spell = 12051, type = "buff", unit = "player" }, -- Evocation
        { spell = 12472, type = "buff", unit = "player", talent = 59 }, -- Icy Veins
        { spell = 12536, type = "buff", unit = "player" }, -- Clearcasting
        { spell = 30482, type = "buff", unit = "player" }, -- Molten Armor
        { spell = 44544, type = "buff", unit = "player", talent = 63 }, -- Fingers of Frost
        { spell = 45438, type = "buff", unit = "player" }, -- Ice Block
        { spell = 48108, type = "buff", unit = "player", talent = 43 }, -- Hot Streak
        { spell = 57531, type = "buff", unit = "player", talent = 8 }, -- Arcane Potency
        { spell = 57669, type = "buff", unit = "player" }, -- Replenishment
        { spell = 57761, type = "buff", unit = "player", talent = 66 }, -- Brain Freeze
        { spell = 64343, type = "buff", unit = "player", talent = 32 }, -- Impact
        { spell = 79058, type = "buff", unit = "player" }, -- Arcane Brilliance
        { spell = 79683, type = "buff", unit = "player" }, -- Arcane Missiles!
        { spell = 80169, type = "buff", unit = "player" }, -- Food
        { spell = 80353, type = "buff", unit = "player" }, -- Time Warp
        { spell = 82930, type = "buff", unit = "player", talent = 17 }, -- Arcane Tactics
        { spell = 87959, type = "buff", unit = "player" }, -- Drink
        { spell = 90887, type = "buff", unit = "player" }, -- Witching Hour
        { spell = 90898, type = "buff", unit = "player" }, -- Tendrils of Darkness
        { spell = 54646, type = "buff", unit = "target", talent = 16 }, -- Focus Magic
        { spell = 57669, type = "buff", unit = "pet" }, -- Replenishment
      },
      icon = 136096
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 116, type = "debuff", unit = "target" }, -- Frostbolt
        { spell = 120, type = "debuff", unit = "target" }, -- Cone of Cold
        { spell = 122, type = "debuff", unit = "target" }, -- Frost Nova
        { spell = 11113, type = "debuff", unit = "target", talent = 37 }, -- Blast Wave
        { spell = 11366, type = "debuff", unit = "target" }, -- Pyroblast
        { spell = 12355, type = "debuff", unit = "target", talent = 32 }, -- Impact
        { spell = 12485, type = "debuff", unit = "target" }, -- Chilled
        { spell = 22959, type = "debuff", unit = "target", talent = 33 }, -- Critical Mass
        { spell = 31589, type = "debuff", unit = "target", talent = 13 }, -- Slow
        { spell = 31661, type = "debuff", unit = "target", talent = 42 }, -- Dragon's Breath
        { spell = 44457, type = "debuff", unit = "target", talent = 44 }, -- Living Bomb
        { spell = 44572, type = "debuff", unit = "target", talent = 68 }, -- Deep Freeze
        { spell = 44614, type = "debuff", unit = "target" }, -- Frostfire Bolt
        { spell = 84721, type = "debuff", unit = "target", talent = 72 }, -- Frostfire Orb
        { spell = 92315, type = "debuff", unit = "target" }, -- Pyroblast!
        { spell = 413841, type = "debuff", unit = "target", talent = 30 }, -- Ignite
      },
      icon = 135848
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 66, type = "ability", buff = true }, -- Invisibility
        { spell = 116, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Frostbolt
        { spell = 120, type = "ability", debuff = true }, -- Cone of Cold
        { spell = 122, type = "ability", debuff = true }, -- Frost Nova
        { spell = 133, type = "ability", overlayGlow = true, requiresTarget = true }, -- Fireball
        { spell = 543, type = "ability", buff = true }, -- Mage Ward
        { spell = 1463, type = "ability", buff = true }, -- Mana Shield
        { spell = 1953, type = "ability" }, -- Blink
        { spell = 2136, type = "ability", overlayGlow = true, requiresTarget = true }, -- Fire Blast
        { spell = 2139, type = "ability", requiresTarget = true }, -- Counterspell
        { spell = 2948, type = "ability", requiresTarget = true }, -- Scorch
        { spell = 5143, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Arcane Missiles
        { spell = 11113, type = "ability", debuff = true, talent = 37 }, -- Blast Wave
        { spell = 11426, type = "ability", buff = true, talent = 65 }, -- Ice Barrier
        { spell = 11958, type = "ability", talent = 62 }, -- Cold Snap
        { spell = 12042, type = "ability", buff = true, usable = true, talent = 9 }, -- Arcane Power
        { spell = 12043, type = "ability", buff = true, usable = true, talent = 6 }, -- Presence of Mind
        { spell = 12051, type = "ability", buff = true }, -- Evocation
        { spell = 12472, type = "ability", buff = true, talent = 59 }, -- Icy Veins
        { spell = 30449, type = "ability", requiresTarget = true }, -- Spellsteal
        { spell = 30451, type = "ability", requiresTarget = true }, -- Arcane Blast
        { spell = 30455, type = "ability", overlayGlow = true, requiresTarget = true }, -- Ice Lance
        { spell = 31589, type = "ability", debuff = true, requiresTarget = true, talent = 13 }, -- Slow
        { spell = 31661, type = "ability", debuff = true, talent = 42 }, -- Dragon's Breath
        { spell = 31707, type = "ability" }, -- Waterbolt
        { spell = 43987, type = "ability", usable = true }, -- Ritual of Refreshment
        { spell = 44425, type = "ability", requiresTarget = true }, -- Arcane Barrage
        { spell = 44572, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true, usable = true, talent = 68 }, -- Deep Freeze
        { spell = 44614, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Frostfire Bolt
        { spell = 45438, type = "ability", buff = true, usable = true }, -- Ice Block
        { spell = 55342, type = "ability" }, -- Mirror Image
        { spell = 82676, type = "ability" }, -- Ring of Frost
        { spell = 82731, type = "ability" }, -- Flame Orb
        { spell = 92283, type = "ability", talent = 72 }, -- Frostfire Orb
      },
      icon = 136075
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  }
}

templates.class.WARLOCK = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 687, type = "buff", unit = "player" }, -- Demon Armor
        { spell = 1949, type = "buff", unit = "player" }, -- Hellfire
        { spell = 5697, type = "buff", unit = "player" }, -- Unending Breath
        { spell = 6229, type = "buff", unit = "player" }, -- Shadow Ward
        { spell = 6307, type = "buff", unit = "player" }, -- Blood Pact
        { spell = 25228, type = "buff", unit = "player" }, -- Soul Link
        { spell = 28176, type = "buff", unit = "player" }, -- Fel Armor
        { spell = 47241, type = "buff", unit = "player", talent = 37 }, -- Metamorphosis
        { spell = 47283, type = "buff", unit = "player", talent = 68 }, -- Empowered Imp
        { spell = 48018, type = "buff", unit = "player" }, -- Demonic Circle: Summon
        { spell = 50589, type = "buff", unit = "player" }, -- Immolation Aura
        { spell = 53646, type = "buff", unit = "player", talent = 36 }, -- Demonic Pact
        { spell = 54276, type = "buff", unit = "player", talent = 66 }, -- Backdraft
        { spell = 57669, type = "buff", unit = "player" }, -- Replenishment
        { spell = 64371, type = "buff", unit = "player", talent = 9 }, -- Eradication
        { spell = 71165, type = "buff", unit = "player", talent = 34 }, -- Molten Core
        { spell = 74434, type = "buff", unit = "player" }, -- Soulburn
        { spell = 79268, type = "buff", unit = "player" }, -- Soul Harvest
        { spell = 79462, type = "buff", unit = "player" }, -- Demon Soul: Felguard
        { spell = 85383, type = "buff", unit = "player", talent = 59 }, -- Improved Soul Fire
        { spell = 85768, type = "buff", unit = "player" }, -- Dark Intent
        { spell = 86211, type = "buff", unit = "player", talent = 16 }, -- Soul Swap
        { spell = 90887, type = "buff", unit = "player" }, -- Witching Hour
        { spell = 90898, type = "buff", unit = "player" }, -- Tendrils of Darkness
        { spell = 6307, type = "buff", unit = "target" }, -- Blood Pact
        { spell = 25228, type = "buff", unit = "target" }, -- Soul Link
        { spell = 53646, type = "buff", unit = "target", talent = 36 }, -- Demonic Pact
        { spell = 54508, type = "buff", unit = "target", talent = 38 }, -- Demonic Empowerment
        { spell = 85767, type = "buff", unit = "target" }, -- Dark Intent
        { spell = 6307, type = "buff", unit = "pet" }, -- Blood Pact
        { spell = 25228, type = "buff", unit = "pet" }, -- Soul Link
        { spell = 53646, type = "buff", unit = "pet", talent = 36 }, -- Demonic Pact
        { spell = 54508, type = "buff", unit = "pet", talent = 38 }, -- Demonic Empowerment
        { spell = 57669, type = "buff", unit = "pet" }, -- Replenishment
        { spell = 85759, type = "buff", unit = "pet" }, -- Dark Intent
        { spell = 89751, type = "buff", unit = "pet" }, -- Felstorm
      },
      icon = 136210
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 172, type = "debuff", unit = "target" }, -- Corruption
        { spell = 348, type = "debuff", unit = "target" }, -- Immolate
        { spell = 603, type = "debuff", unit = "target" }, -- Bane of Doom
        { spell = 689, type = "debuff", unit = "target" }, -- Drain Life
        { spell = 702, type = "debuff", unit = "target" }, -- Curse of Weakness
        { spell = 980, type = "debuff", unit = "target" }, -- Bane of Agony
        { spell = 1120, type = "debuff", unit = "target" }, -- Drain Soul
        { spell = 1490, type = "debuff", unit = "target" }, -- Curse of the Elements
        { spell = 1714, type = "debuff", unit = "target" }, -- Curse of Tongues
        { spell = 5484, type = "debuff", unit = "target" }, -- Howl of Terror
        { spell = 5782, type = "debuff", unit = "target" }, -- Fear
        { spell = 6789, type = "debuff", unit = "target" }, -- Death Coil
        { spell = 17800, type = "debuff", unit = "target", talent = 57 }, -- Shadow and Flame
        { spell = 18118, type = "debuff", unit = "target", talent = 74 }, -- Aftermath
        { spell = 18223, type = "debuff", unit = "target", talent = 8 }, -- Curse of Exhaustion
        { spell = 27243, type = "debuff", unit = "target" }, -- Seed of Corruption
        { spell = 30108, type = "debuff", unit = "target" }, -- Unstable Affliction
        { spell = 30213, type = "debuff", unit = "target" }, -- Legion Strike
        { spell = 30283, type = "debuff", unit = "target", talent = 67 }, -- Shadowfury
        { spell = 32389, type = "debuff", unit = "target", talent = 7 }, -- Shadow Embrace
        { spell = 47960, type = "debuff", unit = "target" }, -- Shadowflame
        { spell = 48181, type = "debuff", unit = "target", talent = 13 }, -- Haunt
        { spell = 54786, type = "debuff", unit = "target" }, -- Demon Leap
        { spell = 60947, type = "debuff", unit = "target" }, -- Nightmare
        { spell = 80240, type = "debuff", unit = "target", talent = 63 }, -- Bane of Havoc
        { spell = 85421, type = "debuff", unit = "target", talent = 72 }, -- Burning Embers
        { spell = 86000, type = "debuff", unit = "target" }, -- Curse of Gul'dan
        { spell = 89766, type = "debuff", unit = "target" }, -- Axe Toss
        { spell = 93986, type = "debuff", unit = "target", talent = 47 }, -- Aura of Foreboding
      },
      icon = 136139
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 172, type = "ability", debuff = true, requiresTarget = true }, -- Corruption
        { spell = 348, type = "ability", debuff = true, requiresTarget = true }, -- Immolate
        { spell = 603, type = "ability", debuff = true, requiresTarget = true }, -- Bane of Doom
        { spell = 686, type = "ability", requiresTarget = true }, -- Shadow Bolt
        { spell = 689, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Drain Life
        { spell = 698, type = "ability", usable = true }, -- Ritual of Summoning
        { spell = 702, type = "ability", debuff = true, requiresTarget = true }, -- Curse of Weakness
        { spell = 980, type = "ability", debuff = true, requiresTarget = true }, -- Bane of Agony
        { spell = 1120, type = "ability", debuff = true, requiresTarget = true }, -- Drain Soul
        { spell = 1122, type = "ability" }, -- Summon Infernal
        { spell = 1490, type = "ability", debuff = true, requiresTarget = true }, -- Curse of the Elements
        { spell = 1714, type = "ability", debuff = true, requiresTarget = true }, -- Curse of Tongues
        { spell = 5484, type = "ability", debuff = true }, -- Howl of Terror
        { spell = 5676, type = "ability", overlayGlow = true, requiresTarget = true }, -- Searing Pain
        { spell = 5782, type = "ability", debuff = true, requiresTarget = true }, -- Fear
        { spell = 6229, type = "ability", buff = true }, -- Shadow Ward
        { spell = 6353, type = "ability", overlayGlow = true, requiresTarget = true }, -- Soul Fire
        { spell = 6789, type = "ability", debuff = true, requiresTarget = true }, -- Death Coil
        { spell = 17877, type = "ability", requiresTarget = true, usable = true, talent = 60 }, -- Shadowburn
        { spell = 17962, type = "ability", requiresTarget = true, usable = true }, -- Conflagrate
        { spell = 18223, type = "ability", debuff = true, requiresTarget = true, talent = 8 }, -- Curse of Exhaustion
        { spell = 18540, type = "ability" }, -- Summon Doomguard
        { spell = 27243, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Seed of Corruption
        { spell = 29722, type = "ability", overlayGlow = true, requiresTarget = true }, -- Incinerate
        { spell = 29858, type = "ability" }, -- Soulshatter
        { spell = 29893, type = "ability" }, -- Ritual of Souls
        { spell = 30108, type = "ability", debuff = true, requiresTarget = true }, -- Unstable Affliction
        { spell = 30151, type = "ability" }, -- Pursuit
        { spell = 30213, type = "ability", debuff = true }, -- Legion Strike
        { spell = 30283, type = "ability", debuff = true, talent = 67 }, -- Shadowfury
        { spell = 47193, type = "ability", talent = 38 }, -- Demonic Empowerment
        { spell = 47241, type = "ability", buff = true, talent = 37 }, -- Metamorphosis
        { spell = 47897, type = "ability" }, -- Shadowflame
        { spell = 48020, type = "ability", overlayGlow = true, usable = true }, -- Demonic Circle: Teleport
        { spell = 48181, type = "ability", debuff = true, requiresTarget = true, talent = 13 }, -- Haunt
        { spell = 50589, type = "ability", buff = true, usable = true }, -- Immolation Aura
        { spell = 50796, type = "ability", requiresTarget = true, talent = 70 }, -- Chaos Bolt
        { spell = 54785, type = "ability", usable = true }, -- Demon Leap
        { spell = 71521, type = "ability", requiresTarget = true, totem = true, talent = 44 }, -- Hand of Gul'dan
        { spell = 74434, type = "ability", buff = true }, -- Soulburn
        { spell = 77799, type = "ability", requiresTarget = true }, -- Fel Flame
        { spell = 77801, type = "ability" }, -- Demon Soul
        { spell = 79268, type = "ability", buff = true, usable = true }, -- Soul Harvest
        { spell = 80240, type = "ability", debuff = true, requiresTarget = true, talent = 63 }, -- Bane of Havoc
        { spell = 86121, type = "ability", requiresTarget = true, talent = 16 }, -- Soul Swap
        { spell = 89751, type = "ability", buff = true, unit = 'pet' }, -- Felstorm
        { spell = 89766, type = "ability", debuff = true }, -- Axe Toss
        { spell = 89792, type = "ability" }, -- Flee
      },
      icon = 135808
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\Icons\\inv_misc_gem_amethyst_02",
    },
  }
}

templates.class.DRUID = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 467, type = "buff", unit = "player" }, -- Thorns
        { spell = 768, type = "buff", unit = "player" }, -- Cat Form
        { spell = 774, type = "buff", unit = "player" }, -- Rejuvenation
        { spell = 783, type = "buff", unit = "player" }, -- Travel Form
        { spell = 1850, type = "buff", unit = "player" }, -- Dash
        { spell = 5215, type = "buff", unit = "player" }, -- Prowl
        { spell = 5217, type = "buff", unit = "player" }, -- Tiger's Fury
        { spell = 5229, type = "buff", unit = "player" }, -- Enrage
        { spell = 5487, type = "buff", unit = "player" }, -- Bear Form
        { spell = 8936, type = "buff", unit = "player" }, -- Regrowth
        { spell = 16689, type = "buff", unit = "player" }, -- Nature's Grasp
        { spell = 16870, type = "buff", unit = "player" }, -- Clearcasting
        { spell = 17116, type = "buff", unit = "player", talent = 60 }, -- Nature's Swiftness
        { spell = 22812, type = "buff", unit = "player" }, -- Barkskin
        { spell = 22842, type = "buff", unit = "player" }, -- Frenzied Regeneration
        { spell = 24858, type = "buff", unit = "player", talent = 15 }, -- Moonkin Form
        { spell = 24907, type = "buff", unit = "player" }, -- Moonkin Aura
        { spell = 24932, type = "buff", unit = "player", talent = 39 }, -- Leader of the Pack
        { spell = 29166, type = "buff", unit = "player" }, -- Innervate
        { spell = 33763, type = "buff", unit = "player" }, -- Lifebloom
        { spell = 33891, type = "buff", unit = "player", talent = 67 }, -- Tree of Life
        { spell = 44203, type = "buff", unit = "player" }, -- Tranquility
        { spell = 48438, type = "buff", unit = "player", talent = 69 }, -- Wild Growth
        { spell = 48504, type = "buff", unit = "player", talent = 61 }, -- Living Seed
        { spell = 48505, type = "buff", unit = "player", talent = 13 }, -- Starfall
        { spell = 50334, type = "buff", unit = "player", talent = 43 }, -- Berserk
        { spell = 51185, type = "buff", unit = "player", talent = 38 }, -- King of the Jungle
        { spell = 52610, type = "buff", unit = "player" }, -- Savage Roar
        { spell = 57669, type = "buff", unit = "player" }, -- Replenishment
        { spell = 60116, type = "buff", unit = "player" }, -- Armored Brown Bear
        { spell = 77761, type = "buff", unit = "player" }, -- Stampeding Roar
        { spell = 79061, type = "buff", unit = "player" }, -- Mark of the Wild
        { spell = 80879, type = "buff", unit = "player", talent = 40 }, -- Primal Madness
        { spell = 81022, type = "buff", unit = "player", talent = 32 }, -- Stampede
        { spell = 91143, type = "buff", unit = "player" }, -- Anthem
      },
      icon = 136097
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 99, type = "debuff", unit = "target" }, -- Demoralizing Roar
        { spell = 339, type = "debuff", unit = "target" }, -- Entangling Roots
        { spell = 1079, type = "debuff", unit = "target" }, -- Rip
        { spell = 5209, type = "debuff", unit = "target" }, -- Challenging Roar
        { spell = 5211, type = "debuff", unit = "target" }, -- Bash
        { spell = 5570, type = "debuff", unit = "target" }, -- Insect Swarm
        { spell = 6795, type = "debuff", unit = "target" }, -- Growl
        { spell = 8921, type = "debuff", unit = "target" }, -- Moonfire
        { spell = 22570, type = "debuff", unit = "target" }, -- Maim
        { spell = 33745, type = "debuff", unit = "target" }, -- Lacerate
        { spell = 33876, type = "debuff", unit = "target" }, -- Mangle
        { spell = 50259, type = "debuff", unit = "target" }, -- Dazed
        { spell = 58180, type = "debuff", unit = "target", talent = 46 }, -- Infected Wounds
        { spell = 60433, type = "debuff", unit = "target", talent = 14 }, -- Earth and Moon
        { spell = 61391, type = "debuff", unit = "target", talent = 17 }, -- Typhoon
        { spell = 81261, type = "debuff", unit = "target", talent = 4 }, -- Solar Beam
        { spell = 91565, type = "debuff", unit = "target" }, -- Faerie Fire
      },
      icon = 132114
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 339, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Entangling Roots
        { spell = 467, type = "ability", buff = true, requiresTarget = true }, -- Thorns
        { spell = 740, type = "ability" }, -- Tranquility
        { spell = 770, type = "ability", requiresTarget = true }, -- Faerie Fire
        { spell = 779, type = "ability", usable = true }, -- Swipe
        { spell = 1079, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Rip
        { spell = 1082, type = "ability", requiresTarget = true, usable = true }, -- Claw
        { spell = 1126, type = "ability", requiresTarget = true }, -- Mark of the Wild
        { spell = 1822, type = "ability", requiresTarget = true, usable = true }, -- Rake
        { spell = 1850, type = "ability", buff = true, usable = true }, -- Dash
        { spell = 2908, type = "ability", requiresTarget = true }, -- Soothe
        { spell = 2912, type = "ability", requiresTarget = true }, -- Starfire
        { spell = 5176, type = "ability", overlayGlow = true, requiresTarget = true }, -- Wrath
        { spell = 5209, type = "ability", debuff = true, usable = true }, -- Challenging Roar
        { spell = 5211, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Bash
        { spell = 5215, type = "ability", buff = true, usable = true }, -- Prowl
        { spell = 5217, type = "ability", buff = true, usable = true }, -- Tiger's Fury
        { spell = 5221, type = "ability", requiresTarget = true, usable = true }, -- Shred
        { spell = 5229, type = "ability", buff = true, usable = true }, -- Enrage
        { spell = 5570, type = "ability", debuff = true, requiresTarget = true }, -- Insect Swarm
        { spell = 6785, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Ravage
        { spell = 6795, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Growl
        { spell = 6807, type = "ability", requiresTarget = true, usable = true }, -- Maul
        { spell = 8921, type = "ability", debuff = true, requiresTarget = true }, -- Moonfire
        { spell = 8998, type = "ability", requiresTarget = true, usable = true }, -- Cower
        { spell = 9005, type = "ability", requiresTarget = true, usable = true }, -- Pounce
        { spell = 16689, type = "ability", buff = true }, -- Nature's Grasp
        { spell = 16857, type = "ability", requiresTarget = true, usable = true }, -- Faerie Fire (Feral)
        { spell = 16979, type = "ability", requiresTarget = true, talent = 31 }, -- Feral Charge
        { spell = 17116, type = "ability", buff = true, usable = true, talent = 60 }, -- Nature's Swiftness
        { spell = 18562, type = "ability", usable = true }, -- Swiftmend
        { spell = 20484, type = "ability", usable = true }, -- Rebirth
        { spell = 22568, type = "ability", requiresTarget = true, usable = true }, -- Ferocious Bite
        { spell = 22570, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Maim
        { spell = 22812, type = "ability", buff = true }, -- Barkskin
        { spell = 22842, type = "ability", buff = true, usable = true }, -- Frenzied Regeneration
        { spell = 29166, type = "ability", buff = true, requiresTarget = true }, -- Innervate
        { spell = 33745, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Lacerate
        { spell = 33786, type = "ability", requiresTarget = true }, -- Cyclone
        { spell = 33831, type = "ability", talent = 11 }, -- Force of Nature
        { spell = 33876, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Mangle
        { spell = 33878, type = "ability", overlayGlow = true, requiresTarget = true }, -- Mangle
        { spell = 33891, type = "ability", buff = true, talent = 67 }, -- Tree of Life
        { spell = 48438, type = "ability", buff = true, overlayGlow = true, requiresTarget = true, talent = 69 }, -- Wild Growth
        { spell = 48505, type = "ability", buff = true, talent = 13 }, -- Starfall
        { spell = 49376, type = "ability", requiresTarget = true, usable = true, talent = 31 }, -- Feral Charge
        { spell = 49377, type = "ability", requiresTarget = true, talent = 31 }, -- Feral Charge
        { spell = 50334, type = "ability", buff = true, talent = 43 }, -- Berserk
        { spell = 50516, type = "ability", talent = 17 }, -- Typhoon
        { spell = 77758, type = "ability", usable = true }, -- Thrash
        { spell = 77761, type = "ability", buff = true, usable = true }, -- Stampeding Roar
        { spell = 77764, type = "ability", usable = true }, -- Stampeding Roar
        { spell = 78674, type = "ability", requiresTarget = true }, -- Starsurge
        { spell = 78675, type = "ability", requiresTarget = true, talent = 4 }, -- Solar Beam
        { spell = 80313, type = "ability", requiresTarget = true, usable = true, talent = 37 }, -- Pulverize
        { spell = 80964, type = "ability", requiresTarget = true, usable = true }, -- Skull Bash
        { spell = 80965, type = "ability", requiresTarget = true, usable = true }, -- Skull Bash
        { spell = 88751, type = "ability" }, -- Wild Mushroom: Detonate
      },
      icon = 132134
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources and Shapeshift Form"],
      args = {
      },
      icon = manaIcon,
    },
  },
}

templates.class.DEATHKNIGHT = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 3714, type = "buff", unit = "player" }, -- Path of Frost
        { spell = 42650, type = "buff", unit = "player" }, -- Army of the Dead
        { spell = 45529, type = "buff", unit = "player" }, -- Blood Tap
        { spell = 48263, type = "buff", unit = "player" }, -- Blood Presence
        { spell = 48265, type = "buff", unit = "player" }, -- Unholy Presence
        { spell = 48266, type = "buff", unit = "player" }, -- Frost Presence
        { spell = 48707, type = "buff", unit = "player" }, -- Anti-Magic Shell
        { spell = 48792, type = "buff", unit = "player" }, -- Icebound Fortitude
        { spell = 49016, type = "buff", unit = "player", talent = 71 }, -- Unholy Frenzy
        { spell = 49222, type = "buff", unit = "player", talent = 14 }, -- Bone Shield
        { spell = 50461, type = "buff", unit = "player", talent = 68 }, -- Anti-Magic Zone
        { spell = 51124, type = "buff", unit = "player", talent = 41 }, -- Killing Machine
        { spell = 51271, type = "buff", unit = "player", talent = 30 }, -- Pillar of Frost
        { spell = 51460, type = "buff", unit = "player", talent = 65 }, -- Runic Corruption
        { spell = 51721, type = "buff", unit = "player" }, -- Dominion Over Acherus
        { spell = 53138, type = "buff", unit = "player", talent = 11 }, -- Abomination's Might
        { spell = 55233, type = "buff", unit = "player", talent = 10 }, -- Vampiric Blood
        { spell = 55610, type = "buff", unit = "player", talent = 44 }, -- Improved Icy Talons
        { spell = 57330, type = "buff", unit = "player" }, -- Horn of Winter
        { spell = 59052, type = "buff", unit = "player" }, -- Freezing Fog
        { spell = 81141, type = "buff", unit = "player", talent = 18 }, -- Crimson Scourge
        { spell = 81340, type = "buff", unit = "player", talent = 72 }, -- Sudden Doom
        { spell = 91364, type = "buff", unit = "player" }, -- Heartened
        { spell = 96268, type = "buff", unit = "player", talent = 76 }, -- Death's Advance
        { spell = 102740, type = "buff", unit = "player" }, -- Strength of Courage
        { spell = 102742, type = "buff", unit = "player" }, -- Mastery of Nimbleness
        { spell = 63560, type = "buff", unit = "pet", talent = 67 }, -- Dark Transformation
        { spell = 91342, type = "buff", unit = "pet", talent = 74 }, -- Shadow Infusion
      },
      icon = 237517
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 43265, type = "debuff", unit = "target" }, -- Death and Decay
        { spell = 45524, type = "debuff", unit = "target" }, -- Chains of Ice
        { spell = 47476, type = "debuff", unit = "target" }, -- Strangulate
        { spell = 49203, type = "debuff", unit = "target", talent = 36 }, -- Hungering Cold
        { spell = 49206, type = "debuff", unit = "target", talent = 60 }, -- Summon Gargoyle
        { spell = 50435, type = "debuff", unit = "target", talent = 45 }, -- Chilblains
        { spell = 50536, type = "debuff", unit = "target", talent = 59 }, -- Unholy Blight
        { spell = 55078, type = "debuff", unit = "target" }, -- Blood Plague
        { spell = 55095, type = "debuff", unit = "target" }, -- Frost Fever
        { spell = 56222, type = "debuff", unit = "target" }, -- Dark Command
        { spell = 65142, type = "debuff", unit = "target" }, -- Ebon Plague
        { spell = 73975, type = "debuff", unit = "target" }, -- Necrotic Strike
        { spell = 77606, type = "debuff", unit = "target" }, -- Dark Simulacrum
        { spell = 81130, type = "debuff", unit = "target", talent = 17 }, -- Scarlet Fever
        { spell = 81325, type = "debuff", unit = "target", talent = 31 }, -- Brittle Bones
        { spell = 91800, type = "debuff", unit = "target" }, -- Gnaw
      },
      icon = 237514
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 3714, type = "ability", buff = true }, -- Path of Frost
        { spell = 42650, type = "ability", buff = true }, -- Army of the Dead
        { spell = 43265, type = "ability", debuff = true }, -- Death and Decay
        { spell = 45462, type = "ability", requiresTarget = true }, -- Plague Strike
        { spell = 45477, type = "ability", overlayGlow = true, requiresTarget = true }, -- Icy Touch
        { spell = 45524, type = "ability", debuff = true, requiresTarget = true }, -- Chains of Ice
        { spell = 45529, type = "ability", buff = true }, -- Blood Tap
        { spell = 45902, type = "ability", requiresTarget = true }, -- Blood Strike
        { spell = 46584, type = "ability", totem = true }, -- Raise Dead
        { spell = 47468, type = "ability" }, -- Claw
        { spell = 47476, type = "ability", debuff = true, requiresTarget = true }, -- Strangulate
        { spell = 47481, type = "ability" }, -- Gnaw
        { spell = 47482, type = "ability" }, -- Leap
        { spell = 47484, type = "ability" }, -- Huddle
        { spell = 47528, type = "ability", requiresTarget = true }, -- Mind Freeze
        { spell = 47541, type = "ability", overlayGlow = true, requiresTarget = true }, -- Death Coil
        { spell = 47568, type = "ability" }, -- Empower Rune Weapon
        { spell = 48707, type = "ability", buff = true }, -- Anti-Magic Shell
        { spell = 48721, type = "ability", overlayGlow = true }, -- Blood Boil
        { spell = 48743, type = "ability" }, -- Death Pact
        { spell = 48792, type = "ability", buff = true }, -- Icebound Fortitude
        { spell = 48982, type = "ability", talent = 4 }, -- Rune Tap
        { spell = 49016, type = "ability", buff = true, talent = 71 }, -- Unholy Frenzy
        { spell = 49020, type = "ability", overlayGlow = true, requiresTarget = true }, -- Obliterate
        { spell = 49028, type = "ability", requiresTarget = true, talent = 8 }, -- Dancing Rune Weapon
        { spell = 49143, type = "ability", overlayGlow = true, requiresTarget = true }, -- Frost Strike
        { spell = 49184, type = "ability", overlayGlow = true, requiresTarget = true, talent = 33 }, -- Howling Blast
        { spell = 49203, type = "ability", debuff = true, talent = 36 }, -- Hungering Cold
        { spell = 49206, type = "ability", debuff = true, talent = 60 }, -- Summon Gargoyle
        { spell = 49222, type = "ability", buff = true, talent = 14 }, -- Bone Shield
        { spell = 49576, type = "ability", requiresTarget = true }, -- Death Grip
        { spell = 49998, type = "ability", requiresTarget = true }, -- Death Strike
        { spell = 50842, type = "ability", requiresTarget = true }, -- Pestilence
        { spell = 50977, type = "ability", usable = true }, -- Death Gate
        { spell = 51052, type = "ability", talent = 68 }, -- Anti-Magic Zone
        { spell = 51271, type = "ability", buff = true, talent = 30 }, -- Pillar of Frost
        { spell = 55050, type = "ability", requiresTarget = true }, -- Heart Strike
        { spell = 55090, type = "ability", requiresTarget = true }, -- Scourge Strike
        { spell = 55233, type = "ability", buff = true, talent = 10 }, -- Vampiric Blood
        { spell = 56222, type = "ability", debuff = true, requiresTarget = true }, -- Dark Command
        { spell = 56815, type = "ability", requiresTarget = true, usable = true }, -- Rune Strike
        { spell = 57330, type = "ability", buff = true }, -- Horn of Winter
        { spell = 61999, type = "ability" }, -- Raise Ally
        { spell = 63560, type = "ability", buff = true, unit = 'pet', overlayGlow = true, usable = true, talent = 67 }, -- Dark Transformation
        { spell = 73975, type = "ability", debuff = true, requiresTarget = true }, -- Necrotic Strike
        { spell = 77575, type = "ability", requiresTarget = true }, -- Outbreak
        { spell = 77606, type = "ability", debuff = true, requiresTarget = true }, -- Dark Simulacrum
        { spell = 85948, type = "ability", requiresTarget = true }, -- Festering Strike
      },
      icon = 136120
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\PlayerFrame\\UI-PlayerFrame-Deathknight-SingleRune",
    },
  }
}

-- General Section
tinsert(templates.general.args, {
  title = L["Health"],
  icon = "Interface\\Icons\\inv_potion_54",
  type = "health"
});
tinsert(templates.general.args, {
  title = L["Cast"],
  icon = 136209,
  type = "cast"
});
tinsert(templates.general.args, {
  title = L["Always Active"],
  icon = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura78",
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Conditions"),
    event = "Conditions",
    use_alwaystrue = true}}}
});

tinsert(templates.general.args, {
  title = L["Pet alive"],
  icon = "Interface\\Icons\\ability_hunter_pet_raptor",
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Conditions"),
    event = "Conditions",
    use_HasPet = true}}}
});

tinsert(templates.general.args, {
  title = L["Pet Behavior"],
  icon = "Interface\\Icons\\ability_defend.blp",
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Pet Behavior"),
    event = "Pet Behavior",
    use_behavior = true,
    behavior = "assist"}}}
});

tinsert(templates.general.args, {
  spell = 2825, type = "buff", unit = "player",
  forceOwnOnly = true,
  ownOnly = nil,
  overideTitle = L["Bloodlust/Heroism"],
  spellIds = {2825, 32182}}
);

-- Meta template for Power triggers
local function createSimplePowerTemplate(powertype)
  local power = {
    title = powerTypes[powertype].name,
    icon = powerTypes[powertype].icon,
    type = "power",
    powertype = powertype,
  }
  return power;
end

-------------------------------
-- Hardcoded trigger templates
-------------------------------

-- Warrior
tinsert(templates.class.WARRIOR[1][8].args, {
  title = L["Stance"],
  icon = 132349,
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Stance/Form/Aura"),
    event = "Stance/Form/Aura"}}}
})
for j, id in ipairs({2457, 71, 2458}) do
  local title, _, icon = GetSpellInfo(id)
  if title then
    tinsert(templates.class.WARRIOR[1][8].args, {
      title = title,
      icon = icon,
      triggers = {
        [1] = {
          trigger = {
            type = WeakAuras.GetTriggerCategoryFor("Stance/Form/Aura"),
            event = "Stance/Form/Aura",
            use_form = true,
            form = { single = j }
          }
        }
      }
    });
  end
end

tinsert(templates.class.WARRIOR[1][8].args, createSimplePowerTemplate(1));
tinsert(templates.class.PALADIN[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.HUNTER[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.ROGUE[1][8].args, createSimplePowerTemplate(3));
tinsert(templates.class.ROGUE[1][8].args, createSimplePowerTemplate(4));
tinsert(templates.class.PRIEST[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.SHAMAN[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.MAGE[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.WARLOCK[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.DRUID[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.DRUID[1][8].args, createSimplePowerTemplate(1));
tinsert(templates.class.DRUID[1][8].args, createSimplePowerTemplate(3));
tinsert(templates.class.DRUID[1][8].args, createSimplePowerTemplate(4));

-- Shapeshift Form
tinsert(templates.class.DRUID[1][8].args, {
  title = L["Shapeshift Form"],
  icon = 132276,
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Stance/Form/Aura"),
    event = "Stance/Form/Aura"}}}
});
for j, id in ipairs({5487, 768, 783, 114282, 1394966}) do
  local title, _, icon = GetSpellInfo(id)
  if title then
    tinsert(templates.class.DRUID[1][8].args, {
      title = title,
      icon = icon,
      triggers = {
        [1] = {
          trigger = {
            type = WeakAuras.GetTriggerCategoryFor("Stance/Form/Aura"),
            event = "Stance/Form/Aura",
            use_form = true,
            form = { single = j }
          }
        }
      }
    });
  end
end


------------------------------
-- Hardcoded race templates
-------------------------------

-- Will of Survive
tinsert(templates.race.Human, { spell = 59752, type = "ability" });
-- Stoneform
tinsert(templates.race.Dwarf, { spell = 20594, type = "ability", buff = true, titleSuffix = L["cooldown"]});
tinsert(templates.race.Dwarf, { spell = 20594, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- Shadow Meld
tinsert(templates.race.NightElf, { spell = 58984, type = "ability", buff = true, titleSuffix = L["cooldown"]});
tinsert(templates.race.NightElf, { spell = 58984, type = "buff", titleSuffix = L["buff"]});
-- Escape Artist
tinsert(templates.race.Gnome, { spell = 20589, type = "ability" });

-- Blood Fury
tinsert(templates.race.Orc, { spell = 20572, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Orc, { spell = 20572, type = "buff", unit = "player", titleSuffix = L["buff"]});
--Cannibalize
tinsert(templates.race.Scourge, { spell = 20577, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Scourge, { spell = 20578, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- Will of the Forsaken
tinsert(templates.race.Scourge, { spell = 7744, type = "ability", buff = true, titleSuffix = L["cooldown"]});
tinsert(templates.race.Scourge, { spell = 7744, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- War Stomp
tinsert(templates.race.Tauren, { spell = 20549, type = "ability", debuff = true, titleSuffix = L["cooldown"]});
tinsert(templates.race.Tauren, { spell = 20549, type = "debuff", titleSuffix = L["debuff"]});
--Beserking
tinsert(templates.race.Troll, { spell = 26297, type = "ability", buff = true, titleSuffix = L["cooldown"]});
tinsert(templates.race.Troll, { spell = 26297, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- Arcane Torrent
tinsert(templates.race.BloodElf, { spell = 28730, type = "ability", debuff = true, titleSuffix = L["cooldown"]});
-- Gift of the Naaru
tinsert(templates.race.Draenei, { spell = 28880, type = "ability", buff = true, titleSuffix = L["cooldown"]});
tinsert(templates.race.Draenei, { spell = 28880, type = "buff", unit = "player", titleSuffix = L["buff"]});

------------------------------
-- Helper code for options
-------------------------------

-- Enrich items from spell, set title
local function handleItem(item)
  local waitingForItemInfo = false;
  if (item.spell) then
    local name, icon, _;
    if (item.type == "item") then
      name, _, _, _, _, _, _, _, _, icon = C_Item.GetItemInfo(item.spell);
      if (name == nil) then
        name = L["Unknown Item"] .. " " .. tostring(item.spell);
        waitingForItemInfo = true;
      end
    else
      name, _, icon = GetSpellInfo(item.spell);
      if (name == nil) then
        name = L["Unknown Spell"] .. " " .. tostring(item.spell);
      end
    end
    if (icon and not item.icon) then
      item.icon = icon;
    end

    item.title = item.overideTitle or name or "";
    if (item.titleSuffix) then
      item.title = item.title .. " " .. item.titleSuffix;
    end
    if (item.titlePrefix) then
      item.title = item.titlePrefix .. item.title;
    end
    if (item.titleItemPrefix) then
      local prefix = C_Item.GetItemInfo(item.titleItemPrefix);
      if (prefix) then
        item.title = prefix .. "-" .. item.title;
      else
        waitingForItemInfo = true;
      end
    end
    if (item.type ~= "item") then
      local spell = Spell:CreateFromSpellID(item.spell);
      if (not spell:IsSpellEmpty()) then
        spell:ContinueOnSpellLoad(function()
          item.description = GetSpellDescription(spell:GetSpellID());
        end);
      end
      item.description = GetSpellDescription(item.spell);
    end
  end
  if (item.talent) then
    item.load = item.load or {};
    if type(item.talent) == "table" then
      item.load.talent = { multi = {} };
      for _,v in pairs(item.talent) do
        item.load.talent.multi[v] = true;
      end
      item.load.use_talent = false;
    else
      item.load.talent = {
        single = item.talent,
        multi = {};
      };
      item.load.use_talent = true;
    end
  end
  if (item.pvptalent) then
    item.load = item.load or {};
    item.load.use_pvptalent = true;
    item.load.pvptalent = {
      single = item.pvptalent,
      multi = {};
    }
  end
  if (item.covenant) then
    item.load = item.load or {}
    item.load.use_covenant = true
    item.load.covenant = {
      single = item.covenant,
      multi = {}
    }
  end
  if (item.bonusItemId) then
    item.load = item.load or {}
    item.load.use_item_bonusid_equipped = true
    item.load.item_bonusid_equipped = tostring(item.bonusItemId)
  end
  -- form field is lazy handled by a usable condition
  if item.form then
    item.usable = true
  end
  return waitingForItemInfo;
end

local function addLoadCondition(item, loadCondition)
  -- No need to deep copy here, templates are read-only
  item.load = item.load or {};
  for k, v in pairs(loadCondition) do
    item.load[k] = v;
  end
end

local delayedEnrichDatabase = false;
local itemInfoReceived = CreateFrame("Frame")

local enrichTries = 0;
local function enrichDatabase()
  if (enrichTries > 3) then
    return;
  end
  enrichTries = enrichTries + 1;

  local waitingForItemInfo = false;
  for className, class in pairs(templates.class) do
    for specIndex, spec in pairs(class) do
      for _, section in pairs(spec) do
        local loadCondition = {
          use_class = true, class = { single = className, multi = {} },
        };
        for itemIndex, item in pairs(section.args or {}) do
          local handle = handleItem(item)
          if(handle) then
            waitingForItemInfo = true;
          end
          addLoadCondition(item, loadCondition);
        end
      end
    end
  end

  for raceName, race in pairs(templates.race) do
    local loadCondition = {
      use_race = true, race = { single = raceName, multi = {} }
    };
    for _, item in pairs(race) do
      local handle = handleItem(item)
      if handle then
        waitingForItemInfo = true;
      end
      if handle ~= nil then
        addLoadCondition(item, loadCondition);
      end
    end
  end

  for _, item in pairs(templates.general.args) do
    if (handleItem(item)) then
      waitingForItemInfo = true;
    end
  end

  if (waitingForItemInfo) then
    itemInfoReceived:RegisterEvent("GET_ITEM_INFO_RECEIVED");
  else
    itemInfoReceived:UnregisterEvent("GET_ITEM_INFO_RECEIVED");
  end
end


enrichDatabase();

itemInfoReceived:SetScript("OnEvent", function()
  if (not delayedEnrichDatabase) then
    delayedEnrichDatabase = true;
    C_Timer.After(2, function()
      enrichDatabase();
      delayedEnrichDatabase = false;
    end)
  end
end);


TemplatePrivate.triggerTemplates = templates


-- ========================================
-- File: WeakAurasTemplates/TriggerTemplatesDataClassicEra.lua
-- ========================================

local AddonName, TemplatePrivate = ...
---@class WeakAuras
local WeakAuras = WeakAuras
if not WeakAuras.IsClassicEra() then return end
local L = WeakAuras.L
local GetSpellInfo, tinsert, GetSpellDescription, C_Timer, Spell = GetSpellInfo, tinsert, GetSpellDescription, C_Timer, Spell


local SoD = C_Seasons and C_Seasons.GetActiveSeason and C_Seasons.GetActiveSeason() == 2

-- The templates tables are created on demand
local templates =
  {
    class = { },
    race = {
      Human = {},
      NightElf = {},
      Dwarf = {},
      Gnome = {},
      Orc = {},
      Scourge = {},
      Tauren = {},
      Troll = {},
    },
    general = {
      title = L["General"],
      icon = 136116,
      args = {}
    },
  }

local manaIcon = "Interface\\Icons\\spell_frost_manarecharge.blp"
local rageIcon = "Interface\\Icons\\ability_racial_bloodrage.blp"
local comboPointsIcon = "Interface\\Icons\\ability_backstab"

local powerTypes =
  {
    [0] = { name = POWER_TYPE_MANA, icon = manaIcon },
    [1] = { name = POWER_TYPE_RED_POWER, icon = rageIcon},
    [2] = { name = POWER_TYPE_FOCUS, icon = "Interface\\Icons\\ability_hunter_focusfire"},
    [3] = { name = POWER_TYPE_ENERGY, icon = "Interface\\Icons\\spell_shadow_shadowworddominate"},
    [4] = { name = COMBO_POINTS, icon = comboPointsIcon},
  }

-- Collected by WeakAurasTemplateCollector:
--------------------------------------------------------------------------------

templates.class.WARRIOR = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 2565, type = "buff", unit = "player"}, -- Shield Block
        { spell = 6673, type = "buff", unit = "player"}, -- Battle Shout
        { spell = 18499, type = "buff", unit = "player"}, -- Berserker Rage
        { spell = 12292, type = "buff", unit = "player"}, -- Sweeping Strikes
        { spell = 12328, type = "buff", unit = "player"}, -- Death Wish
        { spell = 12317, type = "buff", unit = "player"}, -- Enrage
        { spell = 12319, type = "buff", unit = "player"}, -- Flurry
        { spell = 12975, type = "buff", unit = "player"}, -- Last Stand
      },
      icon = 132333
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 355, type = "debuff", unit = "target"}, -- Taunt
        { spell = 676, type = "debuff", unit = "target"}, -- Disarm
        { spell = 694, type = "debuff", unit = "target"}, -- Mocking Blow
        { spell = 772, type = "debuff", unit = "target"}, -- Rend
        { spell = 1160, type = "debuff", unit = "target"}, -- Demoralizing Shout
        { spell = 1715, type = "debuff", unit = "target"}, -- Hamstring
        { spell = 5246, type = "debuff", unit = "target"}, -- Intimidating Shout
        { spell = 6343, type = "debuff", unit = "target"}, -- Thunder Clap
        { spell = 7384, type = "debuff", unit = "target"}, -- Sunder Armor
        { spell = 12289, type = "debuff", unit = "target"}, -- Improved Hamstring
        { spell = 12294, type = "debuff", unit = "target"}, -- Mortal Strike
        { spell = 12797, type = "debuff", unit = "target"}, -- Improved Revenge
        { spell = 12809, type = "debuff", unit = "target"}, -- Concussion Blow
      },
      icon = 132366
    },
    [3] = {
      title = L["Abilities"],
      args = {
        { spell = 72, type = "ability", debuff = true, requiresTarget = true, form = 2}, -- Shield Bash
        { spell = 78, type = "ability", queued = true}, -- Heroic Strike
        { spell = 100, type = "ability", requiresTarget = true, form = 1}, -- Charge
        { spell = 355, type = "ability", debuff = true, requiresTarget = true, form = 2}, -- Taunt
        { spell = 676, type = "ability", debuff = true, requiresTarget = true, form = 2}, -- Disarm
        { spell = 694, type = "ability", debuff = true, requiresTarget = true, form = 1}, -- Mocking Blow
        { spell = 772, type = "ability", debuff = true, requiresTarget = true}, -- Rend
        { spell = 845, type = "ability", queued = true}, -- Cleave
        { spell = 871, type = "ability", buff = true, form = 2}, -- Shield Wall
        { spell = 1160, type = "ability", debuff = true}, -- Demoralizing Shout
        { spell = 1161, type = "ability", debuff = true}, -- Challenging Shout
        { spell = 1464, type = "ability", requiresTarget = true}, -- Slam
        { spell = 1680, type = "ability", form = 3}, -- Whirlwind
        { spell = 1715, type = "ability", requiresTarget = true, form = {1, 2}}, -- Hamstring
        { spell = 1719, type = "ability", buff = true, form = 3}, -- Recklessness
        { spell = 2565, type = "ability", buff = true, form = 2}, -- Shield Block
        { spell = 2687, type = "ability", buff = true}, -- Bloodrage
        { spell = 5246, type = "ability", debuff = true, requiresTarget = true}, -- Intimidating Shout
        { spell = 5308, type = "ability", requiresTarget = true, form = {1, 3}}, -- Execute
        { spell = 6343, type = "ability", debuff = true, form = 1}, -- Thunder Clap
        { spell = 6552, type = "ability", requiresTarget = true, form = 3}, -- Pummel
        { spell = 6572, type = "ability", requiresTarget = true, usable = true, form = 2}, -- Revenge
        { spell = 6673, type = "ability", buff = true}, -- Battle Shout
        { spell = 7384, type = "ability", requiresTarget = true, form = 1}, -- Overpower
        { spell = 7386, type = "ability", requiresTarget = true, debuff = true}, -- Sunder Armor
        { spell = 12323, type = "ability", debuff = true, talent = 26}, -- Piercing Howl
        { spell = 12292, type = "ability", buff = true, talent = 13}, -- Sweeping Strikes
        { spell = 12294, type = "ability", requiresTarget = true, talent = 18}, -- Mortal Strike
        { spell = 12809, type = "ability", requiresTarget = true, debuff = true, talent = 54}, -- Concussion Blow
        { spell = 12975, type = "ability", buff = true, talent = 46}, -- Last Stand
        { spell = 12328, type = "ability", buff = true, talent = 33}, -- Death Wish
        { spell = 18499, type = "ability", buff = true, form = 3}, -- Berserker Rage
        { spell = 20230, type = "ability", buff = true, form = 1}, -- Retaliation
        { spell = 20252, type = "ability", requiresTarget = true, form = 3}, -- Intercept
        { spell = 23881, type = "ability", requiresTarget = true, talent = 37}, -- Bloodthirst
        { spell = 23922, type = "ability", requiresTarget = true, talent = 57}, -- Shield Slam
      },
      icon = 132355
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = rageIcon,
    }
  }
}

if SoD then
  local warrior = templates.class.WARRIOR[1]
  local buffs = warrior[1].args
  local debuffs = warrior[2].args
  local abilities = warrior[3].args

  -- 1/12 https://www.wowhead.com/classic/spell=402877/flagellation
  table.insert(buffs, { spell = 402877, type = "buff", unit = "player", known = true })
  -- 2/12 https://www.wowhead.com/classic/spell=412507/blood-frenzy
  -- 3/12 https://www.wowhead.com/classic/spell=402911/raging-blow
  table.insert(abilities, { spell = 402911, type = "ability", usable = true, known = true })
  -- 4/12 https://www.wowhead.com/classic/spell=425421/warbringer
  -- 5/12 https://www.wowhead.com/classic/spell=403219/furious-thunder
  -- 6/12 https://www.wowhead.com/classic/spell=425418/consumed-by-rage same buff name as Enrage's talent
  -- 7/12 https://www.wowhead.com/classic/spell=425412/frenzied-assault
  -- 8/12 https://www.wowhead.com/classic/spell=402927/victory-rush
  table.insert(abilities, { spell = 425336, type = "ability", usable = true, known = true })
  -- 9/12 https://www.wowhead.com/classic/spell=403218/endless-rage
  -- 10/12 https://www.wowhead.com/classic/spell=403196/devastate
  -- 11/12 https://www.wowhead.com/classic/spell=413404/single-minded-fury
  -- 12/12 https://www.wowhead.com/classic/spell=429765/quick-strike
  table.insert(abilities, { spell = 429765, type = "ability", requiresTarget = true, known = true })
end

templates.class.PALADIN = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 498, type = "buff", unit = "player"}, -- Divine Protection
        { spell = 642, type = "buff", unit = "player"}, -- Divine Shield
        { spell = 1022, type = "buff", unit = "group"}, -- Blessing of Protection
        { spell = 1044, type = "buff", unit = "group"}, -- Blessing of Freedom
        { spell = 6940, type = "buff", unit = "group"}, -- Blessing of Sacrifice
      },
      icon = 135964
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 853, type = "debuff", unit = "target"}, -- Hammer of Justice
      },
      icon = 135952
    },
    [3] = {
      title = L["Abilities"],
      args = {
        { spell = 498, type = "ability", buff = true}, -- Divine Protection
        { spell = 633, type = "ability"}, -- Lay on Hands
        { spell = 642, type = "ability", buff = true}, -- Divine Shield
        { spell = 853, type = "ability", requiresTarget = true, debuff = true}, -- Hammer of Justice
        { spell = 879, type = "ability", requiresTarget = true, usable = true}, -- Exorcism
        { spell = 1022, type = "ability", buff = true}, -- Blessing of Protection
        { spell = 1044, type = "ability", buff = true}, -- Blessing of Freedom
        { spell = 1152, type = "ability"}, -- Purify
        { spell = 2812, type = "ability"}, -- Holy Wrath
        { spell = 4987, type = "ability"}, -- Cleanse
        { spell = 6940, type = "ability"}, -- Blessing of Sacrifice
        { spell = 19876, type = "ability", buff = true}, -- Shadow Resistance Aura
        { spell = 19888, type = "ability", buff = true}, -- Frost Resistance Aura
        { spell = 19891, type = "ability", buff = true}, -- Fire Resistance Aura
        { spell = 20066, type = "ability", requiresTarget = true, debuff = true, talent = 55}, -- Repentance
        { spell = 20164, type = "ability", buff = true}, -- Seal of Justice
        { spell = 20165, type = "ability", buff = true}, -- Seal of Light
        { spell = 20166, type = "ability", buff = true}, -- Seal of Wisdom
        { spell = 20271, type = "ability", buff = true, requiresTarget = true}, -- Judgement
        { spell = 20375, type = "ability", buff = true, talent = 48}, -- Seal of Command
        { spell = 20925, type = "ability", charges = true, buff = true, talent = 35}, -- Holy Shield
        { spell = 21082, type = "ability", buff = true}, -- Seal of the Crusader
        { spell = 21084, type = "ability", buff = true}, -- Seal of Righteousness
        { spell = 24275, type = "ability", requiresTarget = true, usable = true}, -- Hammer of Wrath
        { spell = 26573, type = "ability", talent = 6}, -- Consecration
      },
      icon = 135972
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  }
}

if SoD then
  local paladin = templates.class.PALADIN[1]
  local buffs = paladin[1].args
  local debuffs = paladin[2].args
  local abilities = paladin[3].args

  -- 1/12 https://www.wowhead.com/classic/spell=407798/seal-of-martyrdom
  table.insert(abilities, { spell = 407798, type = "ability", buff = true, known = true})
  -- 2/12 https://www.wowhead.com/classic/spell=407778/divine-storm
  table.insert(abilities, { spell = 407778, type = "ability", buff = true, known = true})
  -- 3/12 https://www.wowhead.com/classic/spell=425600/horn-of-lordaeron
  table.insert(buffs, { spell = 425600, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 425600, type = "ability", buff = true, known = true})
  -- 4/12 https://www.wowhead.com/classic/spell=425589/aegis
  table.insert(buffs, { spell = 425589, type = "buff", unit = "player", known = true })
  -- 5/12 https://www.wowhead.com/classic/spell=407804/divine-sacrifice
  table.insert(buffs, { spell = 407804, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 407804, type = "ability", buff = true, known = true})
  -- 6/12 https://www.wowhead.com/classic/spell=407880/inspiration-exemplar
  -- 7/12 https://www.wowhead.com/classic/spell=407669/avengers-shield
  table.insert(abilities, { spell = 407669, type = "ability", requiresTarget = true, known = true})
  -- 8/12 https://www.wowhead.com/classic/spell=415076/exorcist
  -- 9/12 https://www.wowhead.com/classic/spell=425609/rebuke
  table.insert(abilities, { spell = 425609, type = "ability", requiresTarget = true, known = true})
  -- 10/12 https://www.wowhead.com/classic/spell=407613/beacon-of-light
  -- 11/12 https://www.wowhead.com/classic/spell=407676/crusader-strike
  table.insert(abilities, { spell = 407676, type = "ability", requiresTarget = true, known = true })
  -- 12/12 https://www.wowhead.com/classic/spell=407631/hand-of-reckoning
  table.insert(abilities, { spell = 407631, type = "ability", debuff = true, known = true })
end

templates.class.HUNTER = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 136, type = "buff", unit = "pet"}, -- Mend Pet
        { spell = 3045, type = "buff", unit = "player"}, -- Rapid Fire
        { spell = 5384, type = "buff", unit = "player"}, -- Feign Death
        { spell = 6197, type = "buff", unit = "player"}, -- Eagle Eye
        { spell = 19621, type = "buff", unit = "pet"}, -- Frenzy
        { spell = 24450, type = "buff", unit = "pet"}, -- Prowl
      },
      icon = 132242
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 1130, type = "debuff", unit = "target"}, -- Hunter's Mark
        { spell = 1513, type = "debuff", unit = "target"}, -- Scare Beast
        { spell = 1978, type = "debuff", unit = "target"}, -- Serpent Sting
        { spell = 2649, type = "debuff", unit = "target"}, -- Growl
        { spell = 2974, type = "debuff", unit = "target"}, -- Wing Clip
        { spell = 3034, type = "debuff", unit = "target"}, -- Viper Sting
        { spell = 3043, type = "debuff", unit = "target"}, -- Scorpid Sting
        { spell = 3355, type = "debuff", unit = "multi"}, -- Freezing Trap
        { spell = 5116, type = "debuff", unit = "target"}, -- Concussive Shot
        { spell = 24394, type = "debuff", unit = "target"}, -- Intimidation
      },
      icon = 135860
    },
    [3] = {
      title = L["Abilities"],
      args = {
        { spell = 781, type = "ability"}, -- Disengage
        { spell = 1130, type = "ability", requiresTarget = true, debuff = true}, -- Hunter's Mark
        { spell = 1495, type = "ability", requiresTarget = true, usable = true}, -- Mongoose Bite
        { spell = 1499, type = "ability"}, -- Freezing Trap
        { spell = 1510, type = "ability"}, -- Volley
        { spell = 1513, type = "ability", requiresTarget = true, debuff = true}, -- Scare Beast
        { spell = 1543, type = "ability", duration = 30}, -- Flare
        { spell = 1978, type = "ability", requiresTarget = true, debuff = true}, -- Serpent Sting
        { spell = 2643, type = "ability"}, -- Multi-Shot
        { spell = 2649, type = "ability", requiresTarget = true, debuff = true}, -- Growl
        { spell = 2973, type = "ability", queued = true}, -- Raptor Strike
        { spell = 2974, type = "ability", requiresTarget = true, debuff = true}, -- Wing Clip
        { spell = 3034, type = "ability", requiresTarget = true, debuff = true}, -- Viper Sting
        { spell = 3043, type = "ability", requiresTarget = true, debuff = true}, -- Scorpid Sting
        { spell = 3044, type = "ability", requiresTarget = true}, -- Arcane Shot
        { spell = 3045, type = "ability", buff = true}, -- Rapid Fire
        { spell = 5116, type = "ability", requiresTarget = true, debuff = true}, -- Concussive Shot
        { spell = 5384, type = "ability", buff = true, unit = "player"}, -- Feign Death
        { spell = 13795, type = "ability"}, -- Immolation Trap
        { spell = 13809, type = "ability"}, -- Frost Trap
        { spell = 13813, type = "ability"}, -- Explosive Trap
        { spell = 16827, type = "ability", requiresTarget = true}, -- Claw
        { spell = 19263, type = "ability", buff = true}, -- Deterrence
        { spell = 19306, type = "ability", requiresTarget = true, usable = true}, -- Counterattack
        { spell = 19434, type = "ability", requiresTarget = true}, -- Aimed Shot
        { spell = 19386, type = "ability", requiresTarget = true, debuff = true}, -- Wyvern Sting
        { spell = 19503, type = "ability", requiresTarget = true, debuff = true}, -- Scatter Shot
        { spell = 19574, type = "ability", buff = true}, -- Bestial Wrath
        { spell = 19577, type = "ability", requiresTarget = true, debuff = true}, -- Intimidation
        { spell = 19801, type = "ability", requiresTarget = true}, -- Tranquilizing Shot
        { spell = 20736, type = "ability", requiresTarget = true}, -- Distracting Shot
      },
      icon = 135130
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  }
}

if SoD then
  local hunter = templates.class.HUNTER[1]
  local buffs = hunter[1].args
  local debuffs = hunter[2].args
  local abilities = hunter[3].args

  -- 1/12 https://www.wowhead.com/classic/spell=409580/heart-of-the-lion
  table.insert(buffs, { spell = 409580, type = "buff", unit = "player", known = true })
  -- 2/12 https://www.wowhead.com/classic/spell=409428/master-marksman
  -- 3/12 https://www.wowhead.com/classic/spell=415370/lone-wolf
  -- 4/12 https://www.wowhead.com/classic/spell=425713/cobra-strikes
  table.insert(buffs, { spell = 425713, type = "buff", unit = "target", known = true })
  -- 5/12 https://www.wowhead.com/classic/spell=409379/kill-command
  table.insert(buffs, { spell = 409379, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 409379, type = "ability", buff = true, known = true })
  -- 6/12 https://www.wowhead.com/classic/spell=415399/sniper-training
  table.insert(buffs, { spell = 415399, type = "buff", unit = "player", known = true })
  -- 7/12 https://www.wowhead.com/classic/spell=425738/serpent-spread
  -- 8/12 https://www.wowhead.com/classic/spell=415320/flanking-strike
  table.insert(buffs, { spell = 415320, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 415320, type = "ability", buff = true, known = true })
  -- 9/12 https://www.wowhead.com/classic/spell=409368/beast-mastery
  -- 10/12 https://www.wowhead.com/classic/spell=409433/chimera-shot
  table.insert(abilities, { spell = 409433, type = "ability", requiresTarget = true, known = true })
  -- 11/12 https://www.wowhead.com/classic/spell=409552/explosive-shot
  table.insert(abilities, { spell = 409552, type = "ability", requiresTarget = true, known = true })
  -- 12/12 https://www.wowhead.com/classic/spell=425711/carve
  table.insert(abilities, { spell = 409552, type = "ability", known = true })
end

templates.class.ROGUE = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 2983, type = "buff", unit = "player"}, -- Sprint
        { spell = 5171, type = "buff", unit = "player"}, -- Slice and Dice
        { spell = 5277, type = "buff", unit = "player"}, -- Evasion
        { spell = 13750, type = "buff", unit = "player"}, -- Adrenaline Rush
        { spell = 13877, type = "buff", unit = "player"}, -- Blade Fury
        { spell = 14177, type = "buff", unit = "player"}, -- Cold Blood
        { spell = 14149, type = "buff", unit = "player"}, -- Remorseless
        { spell = 14278, type = "buff", unit = "player"}, -- Ghostly Strike
      },
      icon = 132290
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 703, type = "debuff", unit = "target"}, -- Garrote
        { spell = 14251, type = "debuff", unit = "target"}, -- Riposte
        { spell = 11198, type = "debuff", unit = "target"}, -- Expose Armor
        { spell = 18425, type = "debuff", unit = "target"}, -- Kick - Silenced
        { spell = 17348, type = "debuff", unit = "target"}, -- Hemorrhage
        { spell = 14183, type = "debuff", unit = "target"}, -- Premeditation
      },
      icon = 132302
    },
    [3] = {
      title = L["Abilities"],
      args = {
        { spell = 53, type = "ability", requiresTarget = true, usable = true}, -- Backstab
        { spell = 703, type = "ability", requiresTarget = true, debuff = true}, -- Garrote
        { spell = 921, type = "ability", requiresTarget = true, usable = true}, -- Pick Pocket
        { spell = 1725, type = "ability", usable = true}, -- Distract
        { spell = 1752, type = "ability", requiresTarget = true}, -- Sinister Strike
        { spell = 1766, type = "ability", requiresTarget = true}, -- Kick
        { spell = 1776, type = "ability", requiresTarget = true, usable = true, debuff = true}, -- Gouge
        { spell = 1784, type = "ability", buff = true}, -- Stealth
        { spell = 1856, type = "ability", buff = true}, -- Vanish
        { spell = 2094, type = "ability", requiresTarget = true}, -- Blind
        { spell = 2098, type = "ability", requiresTarget = true}, -- Eviscerate
        { spell = 2983, type = "ability", buff = true}, -- Sprint
        { spell = 5171, type = "ability", requiresTarget = true, buff = true}, -- Slice and Dice
        { spell = 5277, type = "ability", buff = true}, -- Evasion
        { spell = 6770, type = "ability", requiresTarget = true, usable = true, debuff = true}, -- Sap
        { spell = 8647, type = "ability", requiresTarget = true, debuff = true}, -- Expose Armor
        { spell = 13750, type = "ability", buff = true, talent = 39}, -- Adrenaline Rush
        { spell = 13877, type = "ability", buff = true, talent = 34}, -- Blade Fury
        { spell = 14177, type = "ability", buff = true, talent = 12}, -- Cold Blood
        { spell = 14183, type = "ability", requiresTarget = true, debuff = true, talent = 57}, -- Premeditation
        { spell = 14185, type = "ability"}, -- Preparation
        { spell = 14251, type = "ability", requiresTarget = true, usable = true, debuff = true, talent = 28}, -- Riposte
        { spell = 14271, type = "ability", requiresTarget = true, buff = true, talent = 47}, -- Ghostly Strike
        { spell = 16511, type = "ability", requiresTarget = true, debuff = true, talent = 55}, -- Hemorrhage
      },
      icon = 132350
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = comboPointsIcon,
    },
  }
}

if SoD then
  local rogue = templates.class.ROGUE[1]
  local buffs = rogue[1].args
  local debuffs = rogue[2].args
  local abilities = rogue[3].args

  -- 1/12 https://www.wowhead.com/classic/spell=399965/deadly-brew
  -- 2/12 https://www.wowhead.com/classic/spell=400014/just-a-flesh-wound
  -- 3/12 https://www.wowhead.com/classic/spell=398196/quick-draw
  table.insert(abilities, { spell = 398196, type = "ability", requiresTarget = true, debuff = true, known = true })
  -- 4/12 https://www.wowhead.com/classic/spell=424925/slaughter-from-the-shadows
  -- 5/12 https://www.wowhead.com/classic/spell=400009/between-the-eyes
  table.insert(debuffs, { spell = 400012, type = "debuff", unit = "target", known = true })
  table.insert(abilities, { spell = 400009, type = "ability", requiresTarget = true, usable = true, debuff = true, known = true })
  -- 6/12 https://www.wowhead.com/classic/spell=400012/blade-dance
  table.insert(buffs, { spell = 400012, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 400012, type = "ability", usable = true, buff = true, known = true })
  -- 7/12 https://www.wowhead.com/classic/spell=399963/envenom
  table.insert(buffs, { spell = 399963, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 399963, type = "ability", requiresTarget = true, usable = true, buff = true, known = true })
  -- 8/12 https://www.wowhead.com/classic/spell=399960/mutilate
  table.insert(abilities, { spell = 399960, type = "ability", requiresTarget = true, usable = true, known = true })
  -- 9/12 https://www.wowhead.com/classic/spell=399985/shadowstrike
  table.insert(abilities, { spell = 399985, type = "ability", requiresTarget = true, usable = true, known = true })
  -- 10/12 https://www.wowhead.com/classic/spell=424785/saber-slash
  table.insert(debuffs, { spell = 424785, type = "debuff", unit = "target", known = true })
  table.insert(abilities, { spell = 424785, type = "ability", requiresTarget = true, debuff = true, known = true })
  -- 11/12 https://www.wowhead.com/classic/spell=424800/shiv
  table.insert(abilities, { spell = 424800, type = "ability", requiresTarget = true, known = true })
  -- 12/12 https://www.wowhead.com/classic/spell=424919/main-gauche
  table.insert(buffs, { spell = 424919, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 424919, type = "ability", requiresTarget = true, buff = true, known = true })
end

templates.class.PRIEST = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 586, type = "buff", unit = "player"}, -- Fade
        { spell = 17, type = "buff", unit = "target"}, -- Power Word: Shield
        { spell = 21562, type = "buff", unit = "player"}, -- Power Word: Fortitude
        { spell = 2096, type = "buff", unit = "player"}, -- Mind Vision
        { spell = 1706, type = "buff", unit = "player"}, -- Levitate
        { spell = 19266, type = "buff", unit = "player", titleSuffix = L["(Undead)"] }, -- Touch of Weakness
        { spell = 19312, type = "buff", unit = "player", titleSuffix = L["(Troll)"] }, -- Shadowguard
        { spell = 6346, type = "buff", unit = "player", titleSuffix = L["(Dwarf)"] }, -- Fear Ward
        { spell = 19275, type = "buff", unit = "player", titleSuffix = L["(Human)"] }, -- Feedback
        { spell = 19293, type = "buff", unit = "player", titleSuffix = L["(Night Elf)"] }, -- Elune's Grace
      },
      icon = 135940
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 8122, type = "debuff", unit = "target"}, -- Psychic Scream
        { spell = 2096, type = "debuff", unit = "target"}, -- Mind Vision
        { spell = 589, type = "debuff", unit = "target"}, -- Shadow Word: Pain
        { spell = 9484, type = "debuff", unit = "multi" }, -- Shackle Undead
        { spell = 19280, type = "debuff", unit = "target", titleSuffix = L["(Undead)"] }, -- Devouring Plague
        { spell = 25816, type = "debuff", unit = "target", titleSuffix = L["(Troll)"] }, -- Hex of Weakness
      },
      icon = 136207
    },
    [3] = {
      title = L["Abilities"],
      args = {
        { spell = 17, type = "ability"}, -- Power Word: Shield
        { spell = 527, type = "ability"}, -- Purify
        { spell = 552, type = "ability"}, -- Abolish Disease
        { spell = 585, type = "ability", requireTarget = true}, -- Smite
        { spell = 586, type = "ability", buff = true}, -- Fade
        { spell = 589, type = "ability", debuff = true}, -- Shadow Word: Pain
        { spell = 2060, type = "ability"}, -- Greater Heal
        { spell = 2061, type = "ability"}, -- Flash Heal
        { spell = 6064, type = "ability"}, -- Heal
        { spell = 8092, type = "ability", requireTarget = true}, -- Mind Blast
        { spell = 8122, type = "ability"}, -- Psychic Scream
        { spell = 10060, type = "ability", buff = true, talent = 15}, -- Power Infusion
        { spell = 10876, type = "ability", requireTarget = true}, -- Mana Burn
        { spell = 10947, type = "ability", requireTarget = true}, -- Mind Flay
        { spell = 10951, type = "ability", buff = true}, -- Inner Fire
        { spell = 14751, type = "ability", buff = true, talent = 7}, -- Inner Focus
        { spell = 14914, type = "ability", debuff = true, requireTarget = true}, -- Holy Fire
        { spell = 15487, type = "ability", debuff = true, requireTarget = true, talent = 52}, -- Silence
        { spell = 19243, type = "ability", titleSuffix = L["(Dwarf/Human)"]}, -- Desperate Prayer
        { spell = 19305, type = "ability", requireTarget = true, titleSuffix = L["(Night Elf)"]}, -- Starshards
        { spell = 19280, type = "ability", requireTarget = true, debuff = true, titleSuffix = L["(Undead)"] }, -- Devouring Plague
        { spell = 6346, type = "ability", buff = true, titleSuffix = L["(Dwarf)"] }, -- Fear Ward
      },
      icon = 136224
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  }
}

if SoD then
  local priest = templates.class.PRIEST[1]
  local buffs = priest[1].args
  local debuffs = priest[2].args
  local abilities = priest[3].args

  -- 1/12 https://www.wowhead.com/classic/spell=425204/void-plague
  table.insert(debuffs, { spell = 425204, type = "debuff", unit = "target", known = true })
  table.insert(abilities, { spell = 425204, type = "ability", requiresTarget = true, debuff = true, known = true })
  -- 2/12 https://www.wowhead.com/classic/spell=413248/serendipity
  table.insert(buffs, { spell = 413248, type = "buff", unit = "player", known = true })
  -- 3/12 https://www.wowhead.com/classic/spell=415739/strength-of-soul
  -- 4/12 https://www.wowhead.com/classic/spell=425198/twisted-faith
  -- 5/12 https://www.wowhead.com/classic/spell=425207/power-word-barrier
  table.insert(buffs, { spell = 425207, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 425207, type = "ability", duration = 10, known = true })
  -- 6/12 https://www.wowhead.com/classic/spell=401969/shared-pain
  -- 7/12 https://www.wowhead.com/classic/spell=402799/homunculi
  table.insert(buffs, { spell = 402799, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 402799, type = "ability", buff = true, known = true })
  -- 8/12 https://www.wowhead.com/classic/spell=401859/prayer-of-mending
  table.insert(abilities, { spell = 401859, type = "ability", known = true })
  -- 9/12 https://www.wowhead.com/classic/spell=402174/penance
  table.insert(abilities, { spell = 402174, type = "ability", requiresTarget = true, known = true })
  -- 10/12 https://www.wowhead.com/classic/spell=413259/mind-sear
  table.insert(abilities, { spell = 413259, type = "ability", requiresTarget = true, known = true })
  -- 11/12 https://www.wowhead.com/classic/spell=401946/circle-of-healing
  table.insert(abilities, { spell = 401946, type = "ability", known = true })
  -- 12/12 https://www.wowhead.com/classic/spell=401955/shadow-word-death
  table.insert(abilities, { spell = 401955, type = "ability", requiresTarget = true, known = true })
end

templates.class.SHAMAN = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 546, type = "buff", unit = "player"}, -- Water Walking
        { spell = 16256, type = "buff", unit = "player", talent = 30}, -- Flurry
      },
      icon = 135863
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 3600, type = "debuff", unit = "target"}, -- Earthbind
      },
      icon = 135813
    },
    [3] = {
      title = L["Abilities"],
      args = {
        { spell = 131, type = "ability", buff = true, usable = true}, -- Water Breathing
        { spell = 324, type = "ability", buff = true}, -- Lightning Shield
        { spell = 331, type = "ability"}, -- Healing Wave
        { spell = 403, type = "ability", requireTarget = true}, -- Lightning Bolt
        { spell = 421, type = "ability", requireTarget = true}, -- Chain Lightning
        { spell = 546, type = "ability", buff = true, usable = true}, -- Water Walking
        { spell = 556, type = "ability"}, -- Astral Recall
        { spell = 1064, type = "ability"}, -- Chain Heal
        { spell = 1535, type = "ability", totem = true}, -- Fire Nova Totem
        { spell = 2008, type = "ability"}, -- Ancestral Spirit
        { spell = 2484, type = "ability", totem = true}, -- Earthbind Totem
        { spell = 2645, type = "ability", buff = true}, -- Ghost Wolf
        { spell = 3599, type = "ability", totem = true}, -- Searing Totem
        { spell = 5394, type = "ability", totem = true}, -- Healing Stream Totem
        { spell = 5675, type = "ability", totem = true}, -- Mana Spring Totem
        { spell = 5730, type = "ability", totem = true}, -- Stoneclaw Totem
        { spell = 6495, type = "ability", totem = true}, -- Sentry Totem
        { spell = 8142, type = "ability", requireTarget = true}, -- Earth Shock
        { spell = 8143, type = "ability", requireTarget = true, debuff = true}, -- Frost Shock
        { spell = 8017, type = "ability", weaponBuff = true}, -- Rockbiter Weapon -- !! weaponBuff is not supported yet
        { spell = 8024, type = "ability", weaponBuff = true}, -- Flametongue Weapon
        { spell = 8033, type = "ability", weaponBuff = true}, -- Frostbrand Weapon
        { spell = 8050, type = "ability", requireTarget = true, debuff = true}, -- Flame Shock
        { spell = 8071, type = "ability", totem = true}, -- Stoneskin Totem
        { spell = 8075, type = "ability", totem = true}, -- Strength of Earth Totem
        { spell = 8143, type = "ability", totem = true}, -- Tremor Totem
        { spell = 8166, type = "ability", totem = true}, -- Poison Cleansing Totem
        { spell = 8170, type = "ability", totem = true}, -- Disease Cleansing Totem
        { spell = 8177, type = "ability", totem = true}, -- Grounding Totem
        { spell = 8181, type = "ability", totem = true}, -- Frost Resistance Totem
        { spell = 8184, type = "ability", totem = true}, -- Fire Resistance Totem
        { spell = 8190, type = "ability", totem = true}, -- Magma Totem
        { spell = 8227, type = "ability", totem = true}, -- Flametongue Totem
        { spell = 8514, type = "ability", totem = true}, -- Windfury Totem
        { spell = 8835, type = "ability", totem = true}, -- Grace of Air Totem
        { spell = 10595, type = "ability", totem = true}, -- Nature Resistance Totem
        { spell = 15107, type = "ability", totem = true}, -- Windwall Totem
        { spell = 16188, type = "ability", buff = true, talent = 53}, -- Nature Swiftness
        { spell = 16190, type = "ability", totem = true, talent = 55}, -- Mana Tide Totem
        { spell = 17364, type = "ability", debuff = true, talent = 36}, -- Stormstrike
        { spell = 20608, type = "ability"}, -- Reincarnation
        { spell = 25908, type = "ability", totem = true}, -- Tranquil Air Totem
      },
      icon = 135963
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = 135990,
    },
  }
}

if SoD then
  local shaman = templates.class.SHAMAN[1]
  local buffs = shaman[1].args
  local debuffs = shaman[2].args
  local abilities = shaman[3].args

  -- 1/12 https://www.wowhead.com/classic/spell=408496/dual-wield-specialization
  -- 2/12 https://www.wowhead.com/classic/spell=408524/shield-mastery
  -- 3/12 https://www.wowhead.com/classic/spell=408438/overload
  -- 4/12 https://www.wowhead.com/classic/spell=415236/healing-rain
  table.insert(abilities, { spell = 415236, type = "ability", duration = 10, known = true })
  -- 5/12 https://www.wowhead.com/classic/spell=409324/ancestral-guidance
  table.insert(buffs, { spell = 409324, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 409324, type = "ability", buff = true, known = true })
  -- 6/12 https://www.wowhead.com/classic/spell=408514/earth-shield
  table.insert(buffs, { spell = 408514, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 408514, type = "ability", buff = true, known = true })
  -- 7/12 https://www.wowhead.com/classic/spell=408531/way-of-earth
  -- 8/12 https://www.wowhead.com/classic/spell=425336/shamanistic-rage
  table.insert(buffs, { spell = 425336, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 425336, type = "ability", buff = true, known = true })
  -- 9/12 https://www.wowhead.com/classic/spell=408510/water-shield
  table.insert(buffs, { spell = 408510, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 408510, type = "ability", buff = true, known = true })
  -- 10/12 https://www.wowhead.com/classic/spell=408490/lava-burst
  table.insert(abilities, { spell = 414644, type = "ability", requiresTarget = true, known = true })
  -- 11/12 https://www.wowhead.com/classic/spell=408507/lava-lash
  table.insert(abilities, { spell = 408507, type = "ability", requiresTarget = true, known = true })
  -- 12/12 https://www.wowhead.com/classic/spell=425339/molten-blast
  table.insert(abilities, { spell = 425339, type = "ability", known = true })
end

templates.class.MAGE = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 130, type = "buff", unit = "player"}, -- Slow Fall
        { spell = 543, type = "buff", unit = "player"}, -- Fire Ward
        { spell = 604, type = "buff", unit = "player"}, -- Dampen Magic
        { spell = 1008, type = "buff", unit = "player"}, -- Amplify Magic
        { spell = 1459, type = "buff", unit = "player"}, -- Arcane Intellect
        { spell = 1463, type = "buff", unit = "player"}, -- Mana Shield
        { spell = 6143, type = "buff", unit = "player"}, -- Frost Ward
        { spell = 11958, type = "buff", unit = "player"}, -- Ice Block
        { spell = 12042, type = "buff", unit = "player"}, -- Arcane Power
        { spell = 12536, type = "buff", unit = "player"}, -- Clearcasting
      },
      icon = 136096
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 122, type = "debuff", unit = "target"}, -- Frost Nova
        { spell = 118, type = "debuff", unit = "multi" }, -- Polymorph
        { spell = 11071, type = "debuff", unit = "target"}, -- Frostbite
        { spell = 11103, type = "debuff", unit = "target"}, -- Impact
        { spell = 11180, type = "debuff", unit = "target"}, -- Winter's Chill
      },
      icon = 135848
    },
    [3] = {
      title = L["Abilities"],
      args = {
        { spell = 118, type = "ability", debuff = true, requireTarget = true}, -- Polymorph
        { spell = 120, type = "ability"}, -- Cone of Cold
        { spell = 122, type = "ability"}, -- Frost Nova
        { spell = 130, type = "ability", buff = true}, -- Slow Fall
        { spell = 475, type = "ability"}, -- Remove Curse
        { spell = 543, type = "ability", buff = true}, -- Fire Ward
        { spell = 1449, type = "ability"}, -- Arcane Explosion
        { spell = 1463, type = "ability", buff = true}, -- Mana Shield
        { spell = 1953, type = "ability"}, -- Blink
        { spell = 2120, type = "ability"}, -- Flamestrike
        { spell = 2136, type = "ability", requiresTarget = true}, -- Fire Blast
        { spell = 2139, type = "ability", requiresTarget = true}, -- Counterspell
        { spell = 2855, type = "ability", debuff = true, requireTarget = true}, -- Detect Magic
        { spell = 2948, type = "ability", requiresTarget = true}, -- Scorch
        { spell = 5143, type = "ability", requiresTarget = true}, -- Arcane Missiles
        { spell = 6143, type = "ability", buff = true}, -- Frost Ward
        { spell = 10187, type = "ability"}, -- Blizzard
        { spell = 11113, type = "ability", debuff = true, talent = 34}, -- Blast Wave
        { spell = 11129, type = "ability", buff = true, talent = 36}, -- Combustion
        { spell = 11426, type = "ability", buff = true, talent = 57}, --ice Barrier
        { spell = 11958, type = "ability", buff = true, talent = 54}, -- Ice Block
        { spell = 12042, type = "ability", buff = true, talent = 16}, -- Arcane Power
        { spell = 12043, type = "ability", buff = true, talent = 13}, -- Presence of Mind
        { spell = 12051, type = "ability"}, -- Evocation
        { spell = 12472, type = "ability", buff = true, talent = 49}, -- Cold Snap
        { spell = 18809, type = "ability", requiresTarget = true}, -- Pyroblast
        { spell = 25304, type = "ability", requiresTarget = true}, -- Frostbolt
      },
      icon = 136075
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  }
}

if SoD then
  local mage = templates.class.MAGE[1]
  local buffs = mage[1].args
  local debuffs = mage[2].args
  local abilities = mage[3].args

  -- 1/12 https://www.wowhead.com/classic/spell=412286/burnout
  -- 2/12 https://www.wowhead.com/classic/spell=400647/fingers-of-frost
  table.insert(buffs, { spell = 400647, type = "buff", unit = "player", known = true })
  -- 3/12 https://www.wowhead.com/classic/spell=401417/regeneration
  table.insert(buffs, { spell = 400735, type = "buff", unit = "player" }) -- temporal beacon
  table.insert(abilities, { spell = 401417, type = "ability", known = true })
  -- 4/12 https://www.wowhead.com/classic/spell=412324/enlightenment
  table.insert(buffs, { spell = 412326, type = "buff", exactSpellId = true, unit = "player", titleSuffix = L["dps buff"] })
  table.insert(buffs, { spell = 412325, type = "buff", exactSpellId = true, unit = "player", titleSuffix = L["regen buff"] })
  -- 5/12 https://www.wowhead.com/classic/spell=425121/icy-veins
  table.insert(buffs, { spell = 425121, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 425121, type = "ability", buff = true, known = true })
  -- 6/12 https://www.wowhead.com/classic/spell=425124/arcane-surge
  table.insert(abilities, { spell = 425124, type = "ability", buff = true, known = true })
  -- 7/12 https://www.wowhead.com/classic/spell=412510/mass-regeneration
  table.insert(abilities, { spell = 412510, type = "ability", })
  -- 8/12 https://www.wowhead.com/classic/spell=401556/living-flame
  table.insert(abilities, { spell = 401556, type = "ability", duration = 20, known = true })
  -- 9/12 https://www.wowhead.com/classic/spell=401462/rewind-time
  table.insert(abilities, { spell = 401462, type = "ability", known = true })
  -- 10/12 https://www.wowhead.com/classic/spell=400613/living-bomb
  table.insert(abilities, { spell = 401462, type = "ability", requiresTarget = true, debuff = true, known = true })
  -- 11/12 https://www.wowhead.com/classic/spell=400574/arcane-blast
  table.insert(debuffs, { spell = 400574, type = "debuff", unit = "player", known = true })
  table.insert(abilities, { spell = 400574, type = "ability", requiresTarget = true, debuff = true, unit = "player", known = true })
  -- 12/12 https://www.wowhead.com/classic/spell=400640/ice-lance
  table.insert(abilities, { spell = 400640, type = "ability", requiresTarget = true, known = true })
end

templates.class.WARLOCK = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 126, type = "buff", unit = "player"}, -- Eye of Kilrogg
        { spell = 687, type = "buff", unit = "player"}, -- Demon Skin
        { spell = 755, type = "buff", unit = "pet"}, -- Health Funnel
        { spell = 5697, type = "buff", unit = "player"}, -- Unending Breath
        { spell = 6229, type = "buff", unit = "player"}, -- Shadow Ward
        { spell = 7870, type = "buff", unit = "pet"}, -- Lesser Invisibility
        { spell = 18094, type = "buff", unit = "player"}, -- Nightfall
        { spell = 19028, type = "buff", unit = "player"}, -- Soul Link
        { spell = 20707, type = "buff", unit = "group"}, -- Soulstone
      },
      icon = 136210
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 172, type = "debuff", unit = "target"}, -- Corruption
        { spell = 348, type = "debuff", unit = "target"}, -- Immolate
        { spell = 603, type = "debuff", unit = "target"}, -- Curse of Doom
        { spell = 702, type = "debuff", unit = "target"}, -- Curse of Weakness
        { spell = 704, type = "debuff", unit = "target"}, -- Curse of Recklessness
        { spell = 710, type = "debuff", unit = "multi"}, -- Banish
        { spell = 980, type = "debuff", unit = "target"}, -- Curse of Agony
        { spell = 1098, type = "debuff", unit = "multi"}, -- Enslave Demon
        { spell = 1490, type = "debuff", unit = "target"}, -- Curse of the Elements
        { spell = 1714, type = "debuff", unit = "target"}, -- Curse of Tongues
        { spell = 6358, type = "debuff", unit = "target"}, -- Seduction
        { spell = 6789, type = "debuff", unit = "target", talent = 14 }, -- Mortal Coil
        { spell = 6360, type = "debuff", unit = "target"}, -- Whiplash
        { spell = 17862, type = "debuff", unit = "target"}, -- Curse of Shadow
        { spell = 18223, type = "debuff", unit = "target"}, -- Curse of Exhaustion
        { spell = 18265, type = "debuff", unit = "target", talent = 6 }, -- Siphon Life
      },
      icon = 136139
    },
    [3] = {
      title = L["Abilities"],
      args = {
        { spell = 172, type = "ability", requiresTarget = true, debuff = true}, -- Corruption
        { spell = 348, type = "ability", requiresTarget = true, debuff = true}, -- Immolate
        { spell = 686, type = "ability", requiresTarget = true}, -- Shadow Bolt
        { spell = 698, type = "ability"}, -- Ritual of Summoning
        { spell = 710, type = "ability", requiresTarget = true, debuff = true}, -- Banish
        { spell = 980, type = "ability", requiresTarget = true, debuff = true}, -- Agony
        { spell = 1120, type = "ability", requiresTarget = true}, -- Drain Soul
        { spell = 3110, type = "ability", requiresTarget = true}, -- Firebolt
        { spell = 3716, type = "ability", requiresTarget = true}, -- Consuming Shadows
        { spell = 5138, type = "ability", requiresTarget = true}, -- Drain Mana
        { spell = 5484, type = "ability"}, -- Howl of Terror
        { spell = 5676, type = "ability", requiresTarget = true}, -- Searing Pain
        { spell = 5740, type = "ability"}, -- Rain of Fire
        { spell = 5782, type = "ability", requiresTarget = true, debuff = true}, -- Fear
        { spell = 6353, type = "ability", requiresTarget = true}, -- Soul Fire
        { spell = 6358, type = "ability", requiresTarget = true}, -- Seduction
        { spell = 6360, type = "ability", requiresTarget = true}, -- Whiplash
        { spell = 6789, type = "ability", requiresTarget = true, talent = 15 }, -- Mortal Coil
        { spell = 7814, type = "ability", requiresTarget = true}, -- Lash of Pain
        { spell = 7870, type = "ability"}, -- Lesser Invisibility
        { spell = 17962, type = "ability", requiresTarget = true, usable = true, talent = 56}, -- Conflagrate
        { spell = 17926, type = "ability", requiresTarget = true}, -- Death Coil
        { spell = 18288, type = "ability", buff = true, talent = 9}, -- Amplify Curse
        { spell = 18708, type = "ability", talent = 28}, -- Fel Domination
        { spell = 18877, type = "ability", requiresTarget = true, debuff = true, talent = 48}, -- Shadowburn
      },
      icon = 135808
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\Icons\\inv_misc_gem_amethyst_02",
    },
  }
}

if SoD then
  local warlock = templates.class.WARLOCK[1]
  local buffs = warlock[1].args
  local debuffs = warlock[2].args
  local abilities = warlock[3].args

  -- 1/12 https://www.wowhead.com/classic/spell=403666/lake-of-fire
  table.insert(debuffs, { spell = 403666, type = "debuff", unit = "target", known = true })
  -- 2/12 https://www.wowhead.com/classic/spell=403668/master-channeler
  table.insert(debuffs, { spell = 689, type = "debuff", unit = "target", known = true, titleSuffix = L["Master Channeler Rune"] })
  -- 3/12 https://www.wowhead.com/classic/spell=403511/soul-siphon
  -- 4/12 https://www.wowhead.com/classic/spell=412727/demonic-tactics
  -- 5/12 https://www.wowhead.com/classic/spell=412689/everlasting-affliction
  -- 6/12 https://www.wowhead.com/classic/spell=412758/incinerate
  table.insert(abilities, { spell = 412758, type = "ability", requiresTarget = true, buff = true, known = true })
  -- 7/12 https://www.wowhead.com/classic/spell=425463/demonic-grace
  table.insert(buffs, { spell = 425463, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 425463, type = "ability", buff = true, known = true })
  -- 8/12 https://www.wowhead.com/classic/spell=425464/demonic-pact
  table.insert(buffs, { spell = 425464, type = "buff", unit = "player", known = true })
  -- 9/12 https://www.wowhead.com/classic/spell=403789/metamorphosis TODO: add meta's skills
  table.insert(buffs, { spell = 403789, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 403789, type = "ability", buff = true, known = true })
  -- 10/12 https://www.wowhead.com/classic/spell=403628/shadow-bolt-volley
  -- 11/12 https://www.wowhead.com/classic/spell=403629/chaos-bolt
  table.insert(abilities, { spell = 403629, type = "ability", requiresTarget = true, known = true })
  -- 12/12 https://www.wowhead.com/classic/spell=403501/haunt
  table.insert(debuffs, { spell = 403501, type = "debuff", unit = "target", known = true })
  table.insert(abilities, { spell = 403501, type = "ability", requiresTarget = true, debuff = true, known = true })
end

templates.class.DRUID = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 774, type = "buff", unit = "player", talent = 9 }, -- Rejuvenation
        { spell = 5487, type = "buff", unit = "player"}, -- Bear Form
        { spell = 8936, type = "buff", unit = "player"}, -- Regrowth
        { spell = 783, type = "buff", unit = "player"}, -- Travel Form
        { spell = 768, type = "buff", unit = "player"}, -- Cat Form
        { spell = 22812, type = "buff", unit = "player"}, -- Barkskin
        { spell = 1850, type = "buff", unit = "player"}, -- Dash
        { spell = 5215, type = "buff", unit = "player"}, -- Prowl
        { spell = 29166, type = "buff", unit = "group"}, -- Innervate
      },
      icon = 136097
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 339, type = "debuff", unit = "multi"}, -- Entangling Roots
        { spell = 5211, type = "debuff", unit = "target", talent = 10 }, -- Mighty Bash
        { spell = 1079, type = "debuff", unit = "target", talent = 7 }, -- Rip
        { spell = 6795, type = "debuff", unit = "target"}, -- Growl
        { spell = 2637, type = "debuff", unit = "multi"}, -- Hibernate
      },
      icon = 132114
    },
    [3] = {
      title = L["Abilities"],
      args = {
        { spell = 99, type = "ability", debuff = true}, -- Demoralizing Roar
        { spell = 339, type = "ability", requiresTarget = true, debuff = true}, -- Entangling Roots
        { spell = 740, type = "ability", duration = 10}, -- Tranquility
        { spell = 768, type = "ability"}, -- Cat Form
        { spell = 770, type = "ability", requiresTarget = true, debuff = true}, -- Faerie Fire
        { spell = 779, type = "ability", form = 3}, -- Swipe
        { spell = 783, type = "ability"}, -- Travel Form
        { spell = 1066, type = "ability"}, -- Aquatic Form
        { spell = 1079, type = "ability", requiresTarget = true, form = 3}, -- Rip
        { spell = 1082, type = "ability", requiresTarget = true, form = 3}, -- Claw
        { spell = 1822, type = "ability", requiresTarget = true, debuff = true, form = 3}, -- Rake
        { spell = 1850, type = "ability", buff = true}, -- Dash
        { spell = 2637, type = "ability", requiresTarget = true, debuff = true}, -- Hibernate
        { spell = 2782, type = "ability"}, -- Remove Curse
        { spell = 2893, type = "ability"}, -- Abolish Poison
        { spell = 2908, type = "ability", requiresTarget = true}, -- Soothe
        { spell = 2912, type = "ability", requiresTarget = true}, -- Starfire
        { spell = 5176, type = "ability", requiresTarget = true}, -- Wrath
        { spell = 5209, type = "ability", form = 1}, -- Challenging Roar
        { spell = 5211, type = "ability", requiresTarget = true, talent = 6, form = 1}, -- Mighty Bash
        { spell = 5215, type = "ability", buff = true}, -- Prowl
        { spell = 5217, type = "ability", buff = true, form = 3}, -- Tiger's Fury
        { spell = 5221, type = "ability", requiresTarget = true, form = 3}, -- Shred
        { spell = 5229, type = "ability", buff = true, form = 1}, -- Enrage
        { spell = 5487, type = "ability"}, -- Bear Form
        { spell = 5570, type = "ability", requiresTarget = true, debuff = true, talent = 47}, -- Insect Swarm
        { spell = 6785, type = "ability", requiresTarget = true, form = 1}, -- Ravage
        { spell = 6795, type = "ability", debuff = true, requiresTarget = true, form = 1}, -- Growl
        { spell = 6807, type = "ability", queued = true, form = 1}, -- Maul
        { spell = 8921, type = "ability", requiresTarget = true, debuff = true}, -- Moonfire
        { spell = 8946, type = "ability"}, -- Cure Poison
        { spell = 9005, type = "ability", requiresTarget = true, debuff = true, form = 3}, -- Pounce
        { spell = 9634, type = "ability"}, -- Dire Bear Form
        { spell = 16689, type = "ability", buff = true, talent = 2}, -- Nature's Grasp
        { spell = 16914, type = "ability"}, -- Hurricane
        { spell = 16979, type = "ability", form = 1, talent = 27}, -- Feral Charge
        { spell = 17116, type = "ability", buff = true, talent = 51}, -- Nature's Swiftness
        { spell = 18562, type = "ability", talent = 55}, -- Swiftmend
        { spell = 22568, type = "ability", form = 3}, -- Ferocious Bite
        { spell = 22812, type = "ability", buff = true}, -- Barkskin
        { spell = 22842, type = "ability", buff = true}, -- Frenzied Regeneration
        { spell = 24858, type = "ability", talent = 16}, -- Moonkin Form
      },
      icon = 132134
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources and Shapeshift Form"],
      args = {
      },
      icon = manaIcon,
    },
  }
}

if SoD then
  local druid = templates.class.DRUID[1]
  local buffs = druid[1].args
  local debuffs = druid[2].args
  local abilities = druid[3].args

  -- 1/12 https://www.wowhead.com/classic/spell=414677/living-seed
  table.insert(buffs, { spell = 414677, type = "buff", unit = "player", known = true })
  -- 2/12 https://www.wowhead.com/classic/spell=407977/wild-strikes
  -- 3/12 https://www.wowhead.com/classic/spell=414799/fury-of-stormrage
  table.insert(buffs, { spell = 414799, type = "buff", unit = "player", known = true })
  -- 4/12 https://www.wowhead.com/classic/spell=411115/survival-of-the-fittest
  -- 5/12 https://www.wowhead.com/classic/spell=417157/starsurge
  table.insert(abilities, { spell = 417157, type = "ability", requiresTarget = true, known = true })
  -- 6/12 https://www.wowhead.com/classic/spell=408124/lifebloom
  table.insert(buffs, { spell = 408124, type = "buff", unit = "player", known = true })
  -- 7/12 https://www.wowhead.com/classic/spell=410176/skull-bash
  table.insert(abilities, { spell = 410176, type = "ability", requiresTarget = true, known = true })
  -- 8/12 https://www.wowhead.com/classic/spell=407988/savage-roar
  table.insert(buffs, { spell = 407988, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 407988, type = "ability", requiresTarget = true, form = 3, known = true })
  -- 9/12 https://www.wowhead.com/classic/spell=414684/sunfire
  table.insert(debuffs, { spell = 414684, type = "debuff", unit = "target", known = true })
  table.insert(abilities, { spell = 414684, type = "ability", requiresTarget = true, debuff = true, known = true })
  -- 10/12 https://www.wowhead.com/classic/spell=414644/lacerate
  table.insert(debuffs, { spell = 414644, type = "debuff", unit = "target", known = true })
  table.insert(abilities, { spell = 414644, type = "ability", requiresTarget = true, debuff = true, form = 1, known = true })
  -- 11/12 https://www.wowhead.com/classic/spell=408120/wild-growth
  table.insert(buffs, { spell = 408120, type = "buff", unit = "player", known = true })
  table.insert(abilities, { spell = 408120, type = "ability", buff = true, known = true })
  -- 12/12 https://www.wowhead.com/classic/spell=409828/mangle
  table.insert(abilities, { spell = 409828, type = "ability", requiresTarget = true, debuff = true, known = true })
  table.insert(debuffs, { spell = 409828, type = "debuff", unit = "target", known = true })
end

-- General Section
tinsert(templates.general.args, {
  title = L["Health"],
  icon = "Interface\\Icons\\inv_potion_54",
  type = "health"
});
tinsert(templates.general.args, {
  title = L["Cast"],
  icon = 136209,
  type = "cast"
});
tinsert(templates.general.args, {
  title = L["Always Active"],
  icon = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura78",
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Conditions"),
    event = "Conditions",
    use_alwaystrue = true}}}
});

tinsert(templates.general.args, {
  title = L["Pet alive"],
  icon = "Interface\\Icons\\ability_hunter_pet_raptor",
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Conditions"),
    event = "Conditions",
    use_HasPet = true}}}
});

tinsert(templates.general.args, {
  title = L["Pet Behavior"],
  icon = "Interface\\Icons\\ability_defend.blp",
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Pet Behavior"),
    event = "Pet Behavior",
    use_behavior = true,
    behavior = "assist"}}}
});

-- Meta template for Power triggers
local function createSimplePowerTemplate(powertype)
  local power = {
    title = powerTypes[powertype].name,
    icon = powerTypes[powertype].icon,
    type = "power",
    powertype = powertype,
  }
  return power;
end

-------------------------------
-- Hardcoded trigger templates
-------------------------------

-- Warrior
tinsert(templates.class.WARRIOR[1][8].args, {
  title = L["Stance"],
  icon = 132349,
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Stance/Form/Aura"),
    event = "Stance/Form/Aura"}}}
})
for j, id in ipairs({2457, 71, 2458}) do
  local title, _, icon = GetSpellInfo(id)
  if title then
    tinsert(templates.class.WARRIOR[1][8].args, {
      title = title,
      icon = icon,
      triggers = {
        [1] = {
          trigger = {
            type = WeakAuras.GetTriggerCategoryFor("Stance/Form/Aura"),
            event = "Stance/Form/Aura",
            use_form = true,
            form = { single = j }
          }
        }
      }
    });
  end
end

tinsert(templates.class.WARRIOR[1][8].args, createSimplePowerTemplate(1));
tinsert(templates.class.PALADIN[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.HUNTER[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.ROGUE[1][8].args, createSimplePowerTemplate(3));
tinsert(templates.class.ROGUE[1][8].args, createSimplePowerTemplate(4));
tinsert(templates.class.PRIEST[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.SHAMAN[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.MAGE[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.WARLOCK[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.DRUID[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.DRUID[1][8].args, createSimplePowerTemplate(1));
tinsert(templates.class.DRUID[1][8].args, createSimplePowerTemplate(3));
tinsert(templates.class.DRUID[1][8].args, createSimplePowerTemplate(4));

-- Shapeshift Form
tinsert(templates.class.DRUID[1][8].args, {
  title = L["Shapeshift Form"],
  icon = 132276,
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Stance/Form/Aura"),
    event = "Stance/Form/Aura"}}}
});
for j, id in ipairs({5487, 768, 783, 114282, 1394966}) do
  local title, _, icon = GetSpellInfo(id)
  if title then
    tinsert(templates.class.DRUID[1][8].args, {
      title = title,
      icon = icon,
      triggers = {
        [1] = {
          trigger = {
            type = WeakAuras.GetTriggerCategoryFor("Stance/Form/Aura"),
            event = "Stance/Form/Aura",
            use_form = true,
            form = { single = j }
          }
        }
      }
    });
  end
end

------------------------------
-- Hardcoded race templates
-------------------------------

-- Every Man for Himself
tinsert(templates.race.Human, { spell = 20600, type = "ability" });
-- Stoneform
tinsert(templates.race.Dwarf, { spell = 20594, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Dwarf, { spell = 20594, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- Shadow Meld
tinsert(templates.race.NightElf, { spell = 20580, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.NightElf, { spell = 20580, type = "buff", titleSuffix = L["buff"]});
-- Escape Artist
tinsert(templates.race.Gnome, { spell = 20589, type = "ability" });

-- Blood Fury
tinsert(templates.race.Orc, { spell = 20572, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Orc, { spell = 20572, type = "buff", unit = "player", titleSuffix = L["buff"]});
--Cannibalize
tinsert(templates.race.Scourge, { spell = 20577, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Scourge, { spell = 20578, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- Will of the Forsaken
tinsert(templates.race.Scourge, { spell = 7744, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Scourge, { spell = 7744, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- War Stomp
tinsert(templates.race.Tauren, { spell = 20549, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Tauren, { spell = 20549, type = "debuff", titleSuffix = L["debuff"]});
--Beserking
tinsert(templates.race.Troll, { spell = 26297, type = "ability", titleSuffix = L["Rogue cooldown"]});
tinsert(templates.race.Troll, { spell = 26296, type = "ability", titleSuffix = L["Warrior cooldown"]});
tinsert(templates.race.Troll, { spell = 20554, type = "ability", titleSuffix = L["Other cooldown"]});
tinsert(templates.race.Troll, { spell = 26635, type = "buff", unit = "player", titleSuffix = L["buff"]});

------------------------------
-- Helper code for options
-------------------------------

-- Enrich items from spell, set title
local function handleItem(item)
  local waitingForItemInfo = false;
  if (item.spell) then
    local name, icon, _;
    if (item.type == "item") then
      name, _, _, _, _, _, _, _, _, icon = C_Item.GetItemInfo(item.spell);
      if (name == nil) then
        name = L["Unknown Item"] .. " " .. tostring(item.spell);
        waitingForItemInfo = true;
      end
    else
      name, _, icon = GetSpellInfo(item.spell);
      if (name == nil) then
        name = L["Unknown Spell"] .. " " .. tostring(item.spell);
      end
    end
    if (icon and not item.icon) then
      item.icon = icon;
    end

    item.title = item.overideTitle or name or "";
    if (item.titleSuffix) then
      item.title = item.title .. " " .. item.titleSuffix;
    end
    if (item.titlePrefix) then
      item.title = item.titlePrefix .. item.title;
    end
    if (item.titleItemPrefix) then
      local prefix = C_Item.GetItemInfo(item.titleItemPrefix);
      if (prefix) then
        item.title = prefix .. "-" .. item.title;
      else
        waitingForItemInfo = true;
      end
    end
    if (item.type ~= "item") then
      local spell = Spell:CreateFromSpellID(item.spell);
      if (not spell:IsSpellEmpty()) then
        spell:ContinueOnSpellLoad(function()
          item.description = GetSpellDescription(spell:GetSpellID());
        end);
      end
      item.description = GetSpellDescription(item.spell);
    end
  end
  if (item.talent) then
    item.load = item.load or {};
    if type(item.talent) == "table" then
      item.load.talent = { multi = {} };
      for _,v in pairs(item.talent) do
        item.load.talent.multi[v] = true;
      end
      item.load.use_talent = false;
    else
      item.load.talent = {
        single = item.talent,
        multi = {};
      };
      item.load.use_talent = true;
    end
  end
  if (item.pvptalent) then
    item.load = item.load or {};
    item.load.use_pvptalent = true;
    item.load.pvptalent = {
      single = item.pvptalent,
      multi = {};
    }
  end
  if (item.known) then
    item.load = item.load or {};
    item.load.use_spellknown = true;
    item.load.spellknown = item.spell;
  end
  if (item.covenant) then
    item.load = item.load or {}
    item.load.use_covenant = true
    item.load.covenant = {
      single = item.covenant,
      multi = {}
    }
  end
  if (item.bonusItemId) then
    item.load = item.load or {}
    item.load.use_item_bonusid_equipped = true
    item.load.item_bonusid_equipped = tostring(item.bonusItemId)
  end
  -- form field is lazy handled by a usable condition
  if item.form then
    item.usable = true
  end
  return waitingForItemInfo;
end

local function addLoadCondition(item, loadCondition)
  -- No need to deep copy here, templates are read-only
  item.load = item.load or {};
  for k, v in pairs(loadCondition) do
    item.load[k] = v;
  end
end

local delayedEnrichDatabase = false;
local itemInfoReceived = CreateFrame("Frame")

local enrichTries = 0;
local function enrichDatabase()
  if (enrichTries > 3) then
    return;
  end
  enrichTries = enrichTries + 1;

  local waitingForItemInfo = false;
  for className, class in pairs(templates.class) do
    for specIndex, spec in pairs(class) do
      for _, section in pairs(spec) do
        local loadCondition = {
          use_class = true, class = { single = className, multi = {} },
        };
        for itemIndex, item in pairs(section.args or {}) do
          local handle = handleItem(item)
          if(handle) then
            waitingForItemInfo = true;
          end
          addLoadCondition(item, loadCondition);
        end
      end
    end
  end

  for raceName, race in pairs(templates.race) do
    local loadCondition = {
      use_race = true, race = { single = raceName, multi = {} }
    };
    for _, item in pairs(race) do
      local handle = handleItem(item)
      if handle then
        waitingForItemInfo = true;
      end
      if handle ~= nil then
        addLoadCondition(item, loadCondition);
      end
    end
  end

  for _, item in pairs(templates.general.args) do
    if (handleItem(item)) then
      waitingForItemInfo = true;
    end
  end

  if (waitingForItemInfo) then
    itemInfoReceived:RegisterEvent("GET_ITEM_INFO_RECEIVED");
  else
    itemInfoReceived:UnregisterEvent("GET_ITEM_INFO_RECEIVED");
  end
end

enrichDatabase();

itemInfoReceived:SetScript("OnEvent", function()
  if (not delayedEnrichDatabase) then
    delayedEnrichDatabase = true;
    C_Timer.After(2, function()
      enrichDatabase();
      delayedEnrichDatabase = false;
    end)
  end
end);


TemplatePrivate.triggerTemplates = templates


-- ========================================
-- File: WeakAurasTemplates/TriggerTemplatesDataMists.lua
-- ========================================

local AddonName, TemplatePrivate = ...
---@class WeakAuras
local WeakAuras = WeakAuras
if not WeakAuras.IsMists() then return end
local L = WeakAuras.L
local GetSpellInfo, tinsert, GetSpellDescription, C_Timer, Spell
    = GetSpellInfo, tinsert, GetSpellDescription, C_Timer, Spell

-- The templates tables are created on demand
local templates =
  {
    class = { },
    race = {
      Human = {},
      NightElf = {},
      Dwarf = {},
      Gnome = {},
      Draenei = {},
      Orc = {},
      Scourge = {},
      Tauren = {},
      Troll = {},
      BloodElf = {},
      Pandaren = {},
    },
    general = {
      title = L["General"],
      icon = 136116,
      args = {}
    },
  }

local manaIcon = "Interface\\Icons\\spell_frost_manarecharge.blp"
local rageIcon = "Interface\\Icons\\ability_racial_bloodrage.blp"
local comboPointsIcon = "Interface\\Icons\\ability_backstab"

local powerTypes =
  {
    [0] = { name = POWER_TYPE_MANA, icon = manaIcon },
    [1] = { name = POWER_TYPE_RED_POWER, icon = rageIcon},
    [2] = { name = POWER_TYPE_FOCUS, icon = "Interface\\Icons\\ability_hunter_focusfire"},
    [3] = { name = POWER_TYPE_ENERGY, icon = "Interface\\Icons\\spell_shadow_shadowworddominate"},
    [4] = { name = COMBO_POINTS, icon = comboPointsIcon},
    [12] = {name = CHI_POWER, icon = "Interface\\Icons\\ability_monk_healthsphere"},
  }

-- Collected by WeakAurasTemplateCollector:
--------------------------------------------------------------------------------

-- DONE
templates.class.WARRIOR = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 469, type = "buff", unit = "player" }, -- Commanding Shout
        { spell = 871, type = "buff", unit = "player" }, -- Shield Wall
        { spell = 1719, type = "buff", unit = "player" }, -- Recklessness
        { spell = 6673, type = "buff", unit = "player" }, -- Battle Shout
        { spell = 12292, type = "buff", unit = "player", talent = 17 }, -- Bloodbath
        { spell = 12328, type = "buff", unit = "player" }, -- Sweeping Strikes
        { spell = 12880, type = "buff", unit = "player" }, -- Enrage
        { spell = 12968, type = "buff", unit = "player" }, -- Flurry
        { spell = 18499, type = "buff", unit = "player" }, -- Berserker Rage
        { spell = 20572, type = "buff", unit = "player" }, -- Blood Fury
        { spell = 23920, type = "buff", unit = "player" }, -- Spell Reflection
        { spell = 46916, type = "buff", unit = "player" }, -- Bloodsurge
        { spell = 50227, type = "buff", unit = "player" }, -- Sword and Board
        { spell = 52437, type = "buff", unit = "player" }, -- Sudden Death
        { spell = 55694, type = "buff", unit = "player", talent = 4 }, -- Enraged Regeneration
        { spell = 60503, type = "buff", unit = "player" }, -- Taste for Blood
        { spell = 97463, type = "buff", unit = "player" }, -- Rallying Cry
        { spell = 107574, type = "buff", unit = "player", talent = 16 }, -- Avatar
        { spell = 112048, type = "buff", unit = "player" }, -- Shield Barrier
        { spell = 114028, type = "buff", unit = "player", talent = 13 }, -- Mass Spell Reflection
        { spell = 118038, type = "buff", unit = "player" }, -- Die by the Sword
        { spell = 122510, type = "buff", unit = "player" }, -- Ultimatum
        { spell = 125565, type = "buff", unit = "player" }, -- Demoralizing Shout
        { spell = 126513, type = "buff", unit = "player" }, -- Poised to Strike
        { spell = 131116, type = "buff", unit = "player" }, -- Raging Blow!
        { spell = 132404, type = "buff", unit = "player" }, -- Shield Block
        { spell = 139958, type = "buff", unit = "player" }, -- Sudden Execute
        { spell = 147833, type = "buff", unit = "target" }, -- Intervene
      },
      icon = 132333
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 355, type = "debuff", unit = "target" }, -- Taunt
        { spell = 1160, type = "debuff", unit = "target" }, -- Demoralizing Shout
        { spell = 1715, type = "debuff", unit = "target" }, -- Hamstring
        { spell = 5246, type = "debuff", unit = "target" }, -- Intimidating Shout
        { spell = 7922, type = "debuff", unit = "target" }, -- Charge Stun
        { spell = 12323, type = "debuff", unit = "target", talent = 8 }, -- Piercing Howl
        { spell = 64382, type = "debuff", unit = "target" }, -- Shattering Throw
        { spell = 81326, type = "debuff", unit = "target" }, -- Physical Vulnerability
        { spell = 86346, type = "debuff", unit = "target" }, -- Colossus Smash
        { spell = 105771, type = "debuff", unit = "target", talent = 3 }, -- Warbringer
        { spell = 107566, type = "debuff", unit = "target", talent = 7 }, -- Staggering Shout
        { spell = 113344, type = "debuff", unit = "target", talent = 17 }, -- Bloodbath
        { spell = 113746, type = "debuff", unit = "target" }, -- Weakened Armor
        { spell = 115767, type = "debuff", unit = "target" }, -- Deep Wounds
        { spell = 115798, type = "debuff", unit = "target" }, -- Weakened Blows
        { spell = 115804, type = "debuff", unit = "target" }, -- Mortal Wounds
        { spell = 132168, type = "debuff", unit = "target", talent = 11 }, -- Shockwave
        { spell = 132169, type = "debuff", unit = "target", talent = 18 }, -- Storm Bolt
      },
      icon = 132366
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 71, type = "ability" }, -- Defensive Stance
        { spell = 78, type = "ability", overlayGlow = true, requiresTarget = true }, -- Heroic Strike
        { spell = 100, type = "ability", requiresTarget = true, usable = true }, -- Charge
        { spell = 355, type = "ability", debuff = true, requiresTarget = true }, -- Taunt
        { spell = 469, type = "ability", buff = true }, -- Commanding Shout
        { spell = 676, type = "ability", requiresTarget = true }, -- Disarm
        { spell = 845, type = "ability", overlayGlow = true, requiresTarget = true }, -- Cleave
        { spell = 871, type = "ability", buff = true }, -- Shield Wall
        { spell = 1160, type = "ability", debuff = true }, -- Demoralizing Shout
        { spell = 1464, type = "ability", requiresTarget = true }, -- Slam
        { spell = 1715, type = "ability", debuff = true, requiresTarget = true }, -- Hamstring
        { spell = 1719, type = "ability", buff = true }, -- Recklessness
        { spell = 2457, type = "ability" }, -- Battle Stance
        { spell = 2458, type = "ability" }, -- Berserker Stance
        { spell = 2565, type = "ability", charges = true, usable = true }, -- Shield Block
        { spell = 3411, type = "ability", requiresTarget = true }, -- Intervene
        { spell = 5246, type = "ability", debuff = true, requiresTarget = true }, -- Intimidating Shout
        { spell = 5308, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Execute
        { spell = 6343, type = "ability" }, -- Thunder Clap
        { spell = 6552, type = "ability", requiresTarget = true }, -- Pummel
        { spell = 6572, type = "ability", requiresTarget = true }, -- Revenge
        { spell = 6673, type = "ability", buff = true }, -- Battle Shout
        { spell = 7384, type = "ability", charges = true, requiresTarget = true, usable = true }, -- Overpower
        { spell = 7386, type = "ability", requiresTarget = true }, -- Sunder Armor
        { spell = 12292, type = "ability", buff = true, talent = 17 }, -- Bloodbath
        { spell = 12294, type = "ability", requiresTarget = true }, -- Mortal Strike
        { spell = 12328, type = "ability", buff = true }, -- Sweeping Strikes
        { spell = 18499, type = "ability", buff = true }, -- Berserker Rage
        { spell = 20243, type = "ability", requiresTarget = true, usable = true }, -- Devastate
        { spell = 20572, type = "ability", buff = true }, -- Blood Fury
        { spell = 23881, type = "ability", requiresTarget = true }, -- Bloodthirst
        { spell = 23920, type = "ability", buff = true }, -- Spell Reflection
        { spell = 23922, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Shield Slam
        { spell = 34428, type = "ability", requiresTarget = true, usable = true }, -- Victory Rush
        { spell = 46924, type = "ability", talent = 10 }, -- Bladestorm
        { spell = 46968, type = "ability", talent = 11 }, -- Shockwave
        { spell = 55694, type = "ability", buff = true, talent = 4 }, -- Enraged Regeneration
        { spell = 57755, type = "ability", requiresTarget = true }, -- Heroic Throw
        { spell = 64382, type = "ability", debuff = true, requiresTarget = true }, -- Shattering Throw
        { spell = 85288, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Raging Blow
        { spell = 86346, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Colossus Smash
        { spell = 97462, type = "ability" }, -- Rallying Cry
        { spell = 100130, type = "ability", charges = true, overlayGlow = true, requiresTarget = true, usable = true }, -- Wild Strike
        { spell = 102060, type = "ability", talent = 9 }, -- Disrupting Shout
        { spell = 103840, type = "ability", requiresTarget = true, talent = 6 }, -- Impending Victory
        { spell = 107566, type = "ability", debuff = true, talent = 7 }, -- Staggering Shout
        { spell = 107570, type = "ability", requiresTarget = true, talent = 18 }, -- Storm Bolt
        { spell = 107574, type = "ability", buff = true, talent = 16 }, -- Avatar
        { spell = 112048, type = "ability", buff = true, usable = true }, -- Shield Barrier
        { spell = 114028, type = "ability", buff = true, talent = 13 }, -- Mass Spell Reflection
        { spell = 118000, type = "ability", talent = 12 }, -- Dragon Roar
        { spell = 118038, type = "ability", buff = true }, -- Die by the Sword
        { spell = 122475, type = "ability", requiresTarget = true }, -- Throw
        { spell = 1250619, type = "ability", charges = true, requiresTarget = true }, -- Charge
      },
      icon = 132355
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = rageIcon,
    }
  }
}

templates.class.PALADIN = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 498, type = "buff", unit = "player" }, -- Divine Protection
        { spell = 642, type = "buff", unit = "player" }, -- Divine Shield
        { spell = 1022, type = "buff", unit = "player" }, -- Hand of Protection
        { spell = 1038, type = "buff", unit = "player" }, -- Hand of Salvation
        { spell = 1044, type = "buff", unit = "player" }, -- Hand of Freedom
        { spell = 19740, type = "buff", unit = "player" }, -- Blessing of Might
        { spell = 20217, type = "buff", unit = "player" }, -- Blessing of Kings
        { spell = 20925, type = "buff", unit = "player", talent = 9 }, -- Sacred Shield
        { spell = 25780, type = "buff", unit = "player" }, -- Righteous Fury
        { spell = 31821, type = "buff", unit = "player" }, -- Devotion Aura
        { spell = 31842, type = "buff", unit = "player" }, -- Divine Favor
        { spell = 31850, type = "buff", unit = "player" }, -- Ardent Defender
        { spell = 31884, type = "buff", unit = "player" }, -- Avenging Wrath
        { spell = 53563, type = "buff", unit = "player" }, -- Beacon of Light
        { spell = 54428, type = "buff", unit = "player" }, -- Divine Plea
        { spell = 84963, type = "buff", unit = "player" }, -- Inquisition
        { spell = 85499, type = "buff", unit = "player", talent = 1 }, -- Speed of Light
        { spell = 86273, type = "buff", unit = "player" }, -- Illuminated Healing
        { spell = 86659, type = "buff", unit = "player" }, -- Guardian of Ancient Kings
        { spell = 86700, type = "buff", unit = "player" }, -- Ancient Power
        { spell = 90174, type = "buff", unit = "player", talent = 15 }, -- Divine Purpose
        { spell = 105809, type = "buff", unit = "player", talent = 13 }, -- Holy Avenger
        { spell = 114039, type = "buff", unit = "player", talent = 10 }, -- Hand of Purity
        { spell = 114163, type = "buff", unit = "player", talent = 8 }, -- Eternal Flame
        { spell = 114250, type = "buff", unit = "player", talent = 7 }, -- Selfless Healer
        { spell = 114637, type = "buff", unit = "player" }, -- Bastion of Glory
        { spell = 114695, type = "buff", unit = "player", talent = 3 }, -- Pursuit of Justice
        { spell = 126513, type = "buff", unit = "player" }, -- Poised to Strike
        { spell = 132403, type = "buff", unit = "player" }, -- Shield of the Righteous
      },
      icon = 135964
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 853, type = "debuff", unit = "target" }, -- Hammer of Justice
        { spell = 2812, type = "debuff", unit = "target" }, -- Denounce
        { spell = 20170, type = "debuff", unit = "target" }, -- Seal of Justice
        { spell = 31803, type = "debuff", unit = "target" }, -- Censure
        { spell = 31935, type = "debuff", unit = "target" }, -- Avenger's Shield
        { spell = 62124, type = "debuff", unit = "target" }, -- Reckoning
        { spell = 81298, type = "debuff", unit = "target" }, -- Consecration
        { spell = 81326, type = "debuff", unit = "target" }, -- Physical Vulnerability
        { spell = 105421, type = "debuff", unit = "target" }, -- Blinding Light
        { spell = 105593, type = "debuff", unit = "target", talent = 4 }, -- Fist of Justice
        { spell = 114916, type = "debuff", unit = "target", talent = 18 }, -- Execution Sentence
        { spell = 114919, type = "debuff", unit = "target" }, -- Arcing Light
        { spell = 115798, type = "debuff", unit = "target" }, -- Weakened Blows
      },
      icon = 135952
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 498, type = "ability", buff = true }, -- Divine Protection
        { spell = 633, type = "ability" }, -- Lay on Hands
        { spell = 642, type = "ability", buff = true }, -- Divine Shield
        { spell = 853, type = "ability", debuff = true, requiresTarget = true }, -- Hammer of Justice
        { spell = 879, type = "ability", overlayGlow = true }, -- Exorcism
        { spell = 1022, type = "ability", charges = true, buff = true, usable = true }, -- Hand of Protection
        { spell = 1038, type = "ability", charges = true, buff = true }, -- Hand of Salvation
        { spell = 1044, type = "ability", charges = true, buff = true }, -- Hand of Freedom
        { spell = 2812, type = "ability", debuff = true, requiresTarget = true }, -- Denounce
        { spell = 4987, type = "ability" }, -- Cleanse
        { spell = 6940, type = "ability", charges = true }, -- Hand of Sacrifice
        { spell = 10326, type = "ability" }, -- Turn Evil
        { spell = 20066, type = "ability", talent = 5 }, -- Repentance
        { spell = 20271, type = "ability", requiresTarget = true, usable = true }, -- Judgment
        { spell = 20473, type = "ability" }, -- Holy Shock
        { spell = 20925, type = "ability", buff = true, talent = 9 }, -- Sacred Shield
        { spell = 24275, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Hammer of Wrath
        { spell = 25780, type = "ability", buff = true }, -- Righteous Fury
        { spell = 26573, type = "ability", totem = true }, -- Consecration
        { spell = 31821, type = "ability", buff = true }, -- Devotion Aura
        { spell = 31842, type = "ability", buff = true }, -- Divine Favor
        { spell = 31850, type = "ability", buff = true }, -- Ardent Defender
        { spell = 31884, type = "ability", buff = true }, -- Avenging Wrath
        { spell = 31935, type = "ability", debuff = true, usable = true }, -- Avenger's Shield
        { spell = 35395, type = "ability", requiresTarget = true, usable = true }, -- Crusader Strike
        { spell = 53563, type = "ability", buff = true }, -- Beacon of Light
        { spell = 53595, type = "ability", requiresTarget = true, usable = true }, -- Hammer of the Righteous
        { spell = 53600, type = "ability", requiresTarget = true, usable = true }, -- Shield of the Righteous
        { spell = 54428, type = "ability", buff = true }, -- Divine Plea
        { spell = 62124, type = "ability", debuff = true, requiresTarget = true }, -- Reckoning
        { spell = 85256, type = "ability", overlayGlow = true, requiresTarget = true }, -- Templar's Verdict
        { spell = 85499, type = "ability", buff = true, talent = 1 }, -- Speed of Light
        { spell = 85673, type = "ability", overlayGlow = true }, -- Word of Glory
        { spell = 86659, type = "ability", buff = true }, -- Guardian of Ancient Kings
        { spell = 96231, type = "ability", requiresTarget = true }, -- Rebuke
        { spell = 105593, type = "ability", debuff = true, requiresTarget = true, talent = 4 }, -- Fist of Justice
        { spell = 105809, type = "ability", buff = true, talent = 13 }, -- Holy Avenger
        { spell = 114039, type = "ability", buff = true, talent = 10 }, -- Hand of Purity
        { spell = 114157, type = "ability", talent = 18 }, -- Execution Sentence
        { spell = 114158, type = "ability", totem = true, talent = 17 }, -- Light's Hammer
        { spell = 114163, type = "ability", buff = true, talent = 8 }, -- Eternal Flame
        { spell = 114165, type = "ability", talent = 16 }, -- Holy Prism
        { spell = 115750, type = "ability" }, -- Blinding Light
        { spell = 119072, type = "ability" }, -- Holy Wrath
      },
      icon = 135972
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  }
}

templates.class.HUNTER = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 3045, type = "buff", unit = "player" }, -- Rapid Fire
        { spell = 5118, type = "buff", unit = "player" }, -- Aspect of the Cheetah
        { spell = 5384, type = "buff", unit = "player" }, -- Feign Death
        { spell = 13159, type = "buff", unit = "player" }, -- Aspect of the Pack
        { spell = 13165, type = "buff", unit = "player" }, -- Aspect of the Hawk
        { spell = 19263, type = "buff", unit = "player" }, -- Deterrence
        { spell = 19506, type = "buff", unit = "player" }, -- Trueshot Aura
        { spell = 19615, type = "buff", unit = "player" }, -- Frenzy
        { spell = 34471, type = "buff", unit = "player" }, -- The Beast Within
        { spell = 34720, type = "buff", unit = "player", talent = 12 }, -- Thrill of the Hunt
        { spell = 45444, type = "buff", unit = "player" }, -- Bonfire's Blessing
        { spell = 51755, type = "buff", unit = "player" }, -- Camouflage
        { spell = 53257, type = "buff", unit = "player" }, -- Cobra Strikes
        { spell = 54216, type = "buff", unit = "player" }, -- Master's Call
        { spell = 54227, type = "buff", unit = "player" }, -- Rapid Recuperation
        { spell = 56453, type = "buff", unit = "player" }, -- Lock and Load
        { spell = 77769, type = "buff", unit = "player" }, -- Trap Launcher
        { spell = 82692, type = "buff", unit = "player" }, -- Focus Fire
        { spell = 82726, type = "buff", unit = "player", talent = 10 }, -- Fervor
        { spell = 109260, type = "buff", unit = "player", talent = 8 }, -- Aspect of the Iron Hawk
        { spell = 118694, type = "buff", unit = "player", talent = 9 }, -- Spirit Bond
        { spell = 118922, type = "buff", unit = "player", talent = 1 }, -- Posthaste
        { spell = 126483, type = "buff", unit = "player" }, -- Windswept Pages
        { spell = 136, type = "buff", unit = "target" }, -- Mend Pet
        { spell = 136, type = "buff", unit = "pet" }, -- Mend Pet
        { spell = 19574, type = "buff", unit = "pet" }, -- Bestial Wrath
        { spell = 61684, type = "buff", unit = "pet" }, -- Dash
        { spell = 62305, type = "buff", unit = "pet" }, -- Master's Call
        { spell = 82728, type = "buff", unit = "pet", talent = 10 }, -- Fervor
        { spell = 118455, type = "buff", unit = "pet" }, -- Beast Cleave
      },
      icon = 132242
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 1130, type = "debuff", unit = "target" }, -- Hunter's Mark
        { spell = 2649, type = "debuff", unit = "target" }, -- Growl
        { spell = 3674, type = "debuff", unit = "target" }, -- Black Arrow
        { spell = 4167, type = "debuff", unit = "target" }, -- Web
        { spell = 5116, type = "debuff", unit = "target" }, -- Concussive Shot
        { spell = 19386, type = "debuff", unit = "target", talent = 5 }, -- Wyvern Sting
        { spell = 19503, type = "debuff", unit = "target" }, -- Scatter Shot
        { spell = 20736, type = "debuff", unit = "target" }, -- Distracting Shot
        { spell = 24394, type = "debuff", unit = "target", talent = 6 }, -- Intimidation
        { spell = 34490, type = "debuff", unit = "target" }, -- Silencing Shot
        { spell = 35101, type = "debuff", unit = "target" }, -- Concussive Barrage
        { spell = 53301, type = "debuff", unit = "target" }, -- Explosive Shot
        { spell = 82654, type = "debuff", unit = "target" }, -- Widow Venom
        { spell = 117405, type = "debuff", unit = "target", talent = 4 }, -- Binding Shot
        { spell = 118253, type = "debuff", unit = "target" }, -- Serpent Sting
        { spell = 120699, type = "debuff", unit = "target", talent = 15 }, -- Lynx Rush
        { spell = 120761, type = "debuff", unit = "target", talent = 16 }, -- Glaive Toss
        { spell = 131894, type = "debuff", unit = "target", talent = 13 }, -- A Murder of Crows
      },
      icon = 135860
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 75, type = "ability", requiresTarget = true, usable = true }, -- Auto Shot
        { spell = 781, type = "ability" }, -- Disengage
        { spell = 1543, type = "ability" }, -- Flare
        { spell = 1978, type = "ability", requiresTarget = true, usable = true }, -- Serpent Sting
        { spell = 2643, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Multi-Shot
        { spell = 2649, type = "ability", debuff = true }, -- Growl
        { spell = 3044, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Arcane Shot
        { spell = 3045, type = "ability", buff = true }, -- Rapid Fire
        { spell = 3674, type = "ability", debuff = true }, -- Black Arrow
        { spell = 4167, type = "ability", debuff = true }, -- Web
        { spell = 5116, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Concussive Shot
        { spell = 5118, type = "ability", buff = true }, -- Aspect of the Cheetah
        { spell = 5384, type = "ability", buff = true }, -- Feign Death
        { spell = 6991, type = "ability", requiresTarget = true, usable = true }, -- Feed Pet
        { spell = 13159, type = "ability", buff = true }, -- Aspect of the Pack
        { spell = 13165, type = "ability", buff = true }, -- Aspect of the Hawk
        { spell = 17253, type = "ability" }, -- Bite
        { spell = 19263, type = "ability", charges = true, buff = true }, -- Deterrence
        { spell = 19386, type = "ability", debuff = true, talent = 5 }, -- Wyvern Sting
        { spell = 19503, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Scatter Shot
        { spell = 19574, type = "ability", buff = true, unit = 'pet' }, -- Bestial Wrath
        { spell = 19577, type = "ability", talent = 6 }, -- Intimidation
        { spell = 19801, type = "ability", requiresTarget = true, usable = true }, -- Tranquilizing Shot
        { spell = 20736, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Distracting Shot
        { spell = 34026, type = "ability" }, -- Kill Command
        { spell = 34490, type = "ability", debuff = true }, -- Silencing Shot
        { spell = 51753, type = "ability" }, -- Camouflage
        { spell = 53209, type = "ability" }, -- Chimera Shot
        { spell = 53271, type = "ability" }, -- Master's Call
        { spell = 53301, type = "ability", debuff = true, overlayGlow = true }, -- Explosive Shot
        { spell = 53351, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Kill Shot
        { spell = 61684, type = "ability", buff = true, unit = 'pet' }, -- Dash
        { spell = 77767, type = "ability", requiresTarget = true, usable = true }, -- Cobra Shot
        { spell = 77769, type = "ability", buff = true }, -- Trap Launcher
        { spell = 82654, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Widow Venom
        { spell = 82692, type = "ability", charges = true, buff = true, overlayGlow = true, usable = true }, -- Focus Fire
        { spell = 82726, type = "ability", buff = true, talent = 10 }, -- Fervor
        { spell = 109248, type = "ability", usable = true, talent = 4 }, -- Binding Shot
        { spell = 109259, type = "ability", talent = 17 }, -- Powershot
        { spell = 109260, type = "ability", buff = true, talent = 8 }, -- Aspect of the Iron Hawk
        { spell = 109304, type = "ability", talent = 7 }, -- Exhilaration
        { spell = 117050, type = "ability", requiresTarget = true, usable = true, talent = 16 }, -- Glaive Toss
        { spell = 120360, type = "ability", usable = true, talent = 18 }, -- Barrage
        { spell = 120679, type = "ability", talent = 11 }, -- Dire Beast
        { spell = 120697, type = "ability", talent = 15 }, -- Lynx Rush
        { spell = 121818, type = "ability", requiresTarget = true }, -- Stampede
        { spell = 131894, type = "ability", debuff = true, requiresTarget = true, talent = 13 }, -- A Murder of Crows
        { spell = 147362, type = "ability", requiresTarget = true, usable = true }, -- Counter Shot
        { spell = 148467, type = "ability", charges = true, buff = true }, -- Deterrence
      },
      icon = 135130
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  }
}

templates.class.ROGUE = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 1784, type = "buff", unit = "player" }, -- Stealth
        { spell = 1966, type = "buff", unit = "player" }, -- Feint
        { spell = 2823, type = "buff", unit = "player" }, -- Deadly Poison
        { spell = 2983, type = "buff", unit = "player" }, -- Sprint
        { spell = 3408, type = "buff", unit = "player" }, -- Crippling Poison
        { spell = 5171, type = "buff", unit = "player" }, -- Slice and Dice
        { spell = 5277, type = "buff", unit = "player" }, -- Evasion
        { spell = 5761, type = "buff", unit = "player" }, -- Mind-numbing Poison
        { spell = 8679, type = "buff", unit = "player" }, -- Wound Poison
        { spell = 11327, type = "buff", unit = "player" }, -- Vanish
        { spell = 13750, type = "buff", unit = "player" }, -- Adrenaline Rush
        { spell = 13877, type = "buff", unit = "player" }, -- Blade Flurry
        { spell = 31224, type = "buff", unit = "player" }, -- Cloak of Shadows
        { spell = 31665, type = "buff", unit = "player" }, -- Master of Subtlety
        { spell = 32645, type = "buff", unit = "player" }, -- Envenom
        { spell = 36554, type = "buff", unit = "player", talent = 11 }, -- Shadowstep
        { spell = 51690, type = "buff", unit = "player" }, -- Killing Spree
        { spell = 51713, type = "buff", unit = "player" }, -- Shadow Dance
        { spell = 73651, type = "buff", unit = "player" }, -- Recuperate
        { spell = 74001, type = "buff", unit = "player", talent = 6 }, -- Combat Readiness
        { spell = 84745, type = "buff", unit = "player" }, -- Shallow Insight
        { spell = 108211, type = "buff", unit = "player", talent = 8 }, -- Leeching Poison
        { spell = 108215, type = "buff", unit = "player", talent = 14 }, -- Paralytic Poison
        { spell = 112942, type = "buff", unit = "player", talent = 3 }, -- Shadow Focus
        { spell = 113742, type = "buff", unit = "player" }, -- Swiftblade's Cunning
        { spell = 114018, type = "buff", unit = "player" }, -- Shroud of Concealment
        { spell = 114842, type = "buff", unit = "player" }, -- Shadow Walk
        { spell = 115189, type = "buff", unit = "player", talent = 18 }, -- Anticipation
        { spell = 115192, type = "buff", unit = "player", talent = 2 }, -- Subterfuge
        { spell = 121153, type = "buff", unit = "player" }, -- Blindside
        { spell = 121471, type = "buff", unit = "player" }, -- Shadow Blades
        { spell = 137573, type = "buff", unit = "player", talent = 12 }, -- Burst of Speed
        { spell = 1246774, type = "buff", unit = "player" }, -- Bandit's Guile
      },
      icon = 132290
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 408, type = "debuff", unit = "target" }, -- Kidney Shot
        { spell = 703, type = "debuff", unit = "target" }, -- Garrote
        { spell = 1330, type = "debuff", unit = "target" }, -- Garrote - Silence
        { spell = 1776, type = "debuff", unit = "target" }, -- Gouge
        { spell = 1833, type = "debuff", unit = "target" }, -- Cheap Shot
        { spell = 1943, type = "debuff", unit = "target" }, -- Rupture
        { spell = 2094, type = "debuff", unit = "target" }, -- Blind
        { spell = 2818, type = "debuff", unit = "target" }, -- Deadly Poison
        { spell = 3409, type = "debuff", unit = "target" }, -- Crippling Poison
        { spell = 5760, type = "debuff", unit = "target" }, -- Mind-numbing Poison
        { spell = 8680, type = "debuff", unit = "target" }, -- Wound Poison
        { spell = 79140, type = "debuff", unit = "target" }, -- Vendetta
        { spell = 84617, type = "debuff", unit = "target" }, -- Revealing Strike
        { spell = 88611, type = "debuff", unit = "target" }, -- Smoke Bomb
        { spell = 89775, type = "debuff", unit = "target" }, -- Hemorrhage
        { spell = 91021, type = "debuff", unit = "target" }, -- Find Weakness
        { spell = 93068, type = "debuff", unit = "target" }, -- Master Poisoner
        { spell = 112947, type = "debuff", unit = "target", talent = 5 }, -- Nerve Strike
        { spell = 112961, type = "debuff", unit = "target", talent = 8 }, -- Leeching Poison
        { spell = 113746, type = "debuff", unit = "target" }, -- Weakened Armor
        { spell = 113952, type = "debuff", unit = "target", talent = 14 }, -- Paralytic Poison
        { spell = 113953, type = "debuff", unit = "target" }, -- Paralysis
        { spell = 115197, type = "debuff", unit = "target" }, -- Partial Paralysis
        { spell = 122233, type = "debuff", unit = "target" }, -- Crimson Tempest
        { spell = 137619, type = "debuff", unit = "target", talent = 17 }, -- Marked for Death
      },
      icon = 132302
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 53, type = "ability", requiresTarget = true }, -- Backstab
        { spell = 408, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Kidney Shot
        { spell = 703, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Garrote
        { spell = 921, type = "ability", requiresTarget = true, usable = true }, -- Pick Pocket
        { spell = 1725, type = "ability" }, -- Distract
        { spell = 1752, type = "ability", requiresTarget = true, usable = true }, -- Sinister Strike
        { spell = 1766, type = "ability", requiresTarget = true }, -- Kick
        { spell = 1776, type = "ability", debuff = true, requiresTarget = true }, -- Gouge
        { spell = 1784, type = "ability", buff = true, usable = true }, -- Stealth
        { spell = 1833, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Cheap Shot
        { spell = 1856, type = "ability" }, -- Vanish
        { spell = 1943, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Rupture
        { spell = 2094, type = "ability", debuff = true, requiresTarget = true }, -- Blind
        { spell = 2098, type = "ability", requiresTarget = true, usable = true }, -- Eviscerate
        { spell = 2983, type = "ability", buff = true, usable = true }, -- Sprint
        { spell = 5277, type = "ability", buff = true }, -- Evasion
        { spell = 5938, type = "ability", requiresTarget = true }, -- Shiv
        { spell = 8647, type = "ability", requiresTarget = true }, -- Expose Armor
        { spell = 8676, type = "ability", requiresTarget = true, usable = true }, -- Ambush
        { spell = 13750, type = "ability", buff = true }, -- Adrenaline Rush
        { spell = 13877, type = "ability", buff = true }, -- Blade Flurry
        { spell = 14183, type = "ability", requiresTarget = true, usable = true }, -- Premeditation
        { spell = 14185, type = "ability" }, -- Preparation
        { spell = 16511, type = "ability", requiresTarget = true }, -- Hemorrhage
        { spell = 31224, type = "ability", buff = true }, -- Cloak of Shadows
        { spell = 36554, type = "ability", buff = true, requiresTarget = true, talent = 11 }, -- Shadowstep
        { spell = 51690, type = "ability", buff = true }, -- Killing Spree
        { spell = 51713, type = "ability", buff = true }, -- Shadow Dance
        { spell = 51722, type = "ability", requiresTarget = true }, -- Dismantle
        { spell = 73981, type = "ability", requiresTarget = true }, -- Redirect
        { spell = 74001, type = "ability", buff = true, talent = 6 }, -- Combat Readiness
        { spell = 76577, type = "ability" }, -- Smoke Bomb
        { spell = 79140, type = "ability", debuff = true }, -- Vendetta
        { spell = 84617, type = "ability", debuff = true, requiresTarget = true }, -- Revealing Strike
        { spell = 114018, type = "ability", buff = true, usable = true }, -- Shroud of Concealment
        { spell = 114842, type = "ability", buff = true, usable = true }, -- Shadow Walk
        { spell = 115191, type = "ability", buff = true }, -- Stealth
        { spell = 121471, type = "ability", buff = true }, -- Shadow Blades
        { spell = 121733, type = "ability", requiresTarget = true }, -- Throw
        { spell = 137619, type = "ability", debuff = true, requiresTarget = true, talent = 17 }, -- Marked for Death
      },
      icon = 132350
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = comboPointsIcon,
    },
  }
}

templates.class.PRIEST = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 17, type = "buff", unit = "player" }, -- Power Word: Shield
        { spell = 139, type = "buff", unit = "player" }, -- Renew
        { spell = 586, type = "buff", unit = "player" }, -- Fade
        { spell = 588, type = "buff", unit = "player" }, -- Inner Fire
        { spell = 6346, type = "buff", unit = "player" }, -- Fear Ward
        { spell = 10060, type = "buff", unit = "player", talent = 14 }, -- Power Infusion
        { spell = 15286, type = "buff", unit = "player" }, -- Vampiric Embrace
        { spell = 15473, type = "buff", unit = "player" }, -- Shadowform
        { spell = 21562, type = "buff", unit = "player" }, -- Power Word: Fortitude
        { spell = 33206, type = "buff", unit = "player" }, -- Pain Suppression
        { spell = 41635, type = "buff", unit = "player" }, -- Prayer of Mending
        { spell = 47585, type = "buff", unit = "player" }, -- Dispersion
        { spell = 47753, type = "buff", unit = "player" }, -- Divine Aegis
        { spell = 47788, type = "buff", unit = "player" }, -- Guardian Spirit
        { spell = 49868, type = "buff", unit = "player" }, -- Mind Quickening
        { spell = 59889, type = "buff", unit = "player" }, -- Borrowed Time
        { spell = 63735, type = "buff", unit = "player" }, -- Serendipity
        { spell = 64843, type = "buff", unit = "player" }, -- Divine Hymn
        { spell = 64901, type = "buff", unit = "player" }, -- Hymn of Hope
        { spell = 65081, type = "buff", unit = "player", talent = 4 }, -- Body and Soul
        { spell = 73413, type = "buff", unit = "player" }, -- Inner Will
        { spell = 77489, type = "buff", unit = "player" }, -- Echo of Light
        { spell = 77613, type = "buff", unit = "player" }, -- Grace
        { spell = 81206, type = "buff", unit = "player" }, -- Chakra: Sanctuary
        { spell = 81208, type = "buff", unit = "player" }, -- Chakra: Serenity
        { spell = 81209, type = "buff", unit = "player" }, -- Chakra: Chastise
        { spell = 81661, type = "buff", unit = "player" }, -- Evangelism
        { spell = 81700, type = "buff", unit = "player" }, -- Archangel
        { spell = 81782, type = "buff", unit = "player" }, -- Power Word: Barrier
        { spell = 88684, type = "buff", unit = "player" }, -- Holy Word: Serenity
        { spell = 89485, type = "buff", unit = "player" }, -- Inner Focus
        { spell = 109964, type = "buff", unit = "player" }, -- Spirit Shell
        { spell = 111759, type = "buff", unit = "player" }, -- Levitate
        { spell = 114239, type = "buff", unit = "player", talent = 6 }, -- Phantasm
        { spell = 114255, type = "buff", unit = "player" }, -- Surge of Light
        { spell = 119032, type = "buff", unit = "player", talent = 11 }, -- Spectral Guise
        { spell = 121557, type = "buff", unit = "player", talent = 5 }, -- Angelic Feather
        { spell = 124430, type = "buff", unit = "player", talent = 15 }, -- Divine Insight
        { spell = 63619, type = "buff", unit = "pet" }, -- Shadowcrawl
      },
      icon = 135940
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 589, type = "debuff", unit = "target" }, -- Shadow Word: Pain
        { spell = 2096, type = "debuff", unit = "target" }, -- Mind Vision
        { spell = 2944, type = "debuff", unit = "target" }, -- Devouring Plague
        { spell = 8122, type = "debuff", unit = "target" }, -- Psychic Scream
        { spell = 14914, type = "debuff", unit = "target" }, -- Holy Fire
        { spell = 15407, type = "debuff", unit = "target" }, -- Mind Flay
        { spell = 15487, type = "debuff", unit = "target" }, -- Silence
        { spell = 34914, type = "debuff", unit = "target" }, -- Vampiric Touch
        { spell = 48045, type = "debuff", unit = "target" }, -- Mind Sear
        { spell = 64044, type = "debuff", unit = "target" }, -- Psychic Horror
        { spell = 88625, type = "debuff", unit = "target" }, -- Holy Word: Chastise
        { spell = 129197, type = "debuff", unit = "target" }, -- Mind Flay (Insanity)
      },
      icon = 136207
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 17, type = "ability", buff = true, usable = true }, -- Power Word: Shield
        { spell = 527, type = "ability" }, -- Purify
        { spell = 528, type = "ability", requiresTarget = true }, -- Dispel Magic
        { spell = 585, type = "ability", requiresTarget = true }, -- Smite
        { spell = 586, type = "ability", buff = true }, -- Fade
        { spell = 589, type = "ability", debuff = true, requiresTarget = true }, -- Shadow Word: Pain
        { spell = 2944, type = "ability", debuff = true, requiresTarget = true }, -- Devouring Plague
        { spell = 5019, type = "ability", requiresTarget = true, usable = true }, -- Shoot
        { spell = 6346, type = "ability", buff = true }, -- Fear Ward
        { spell = 8092, type = "ability", overlayGlow = true, requiresTarget = true }, -- Mind Blast
        { spell = 8122, type = "ability", debuff = true }, -- Psychic Scream
        { spell = 10060, type = "ability", buff = true, talent = 14 }, -- Power Infusion
        { spell = 14914, type = "ability", debuff = true, requiresTarget = true }, -- Holy Fire
        { spell = 15286, type = "ability", buff = true }, -- Vampiric Embrace
        { spell = 15407, type = "ability", debuff = true, requiresTarget = true }, -- Mind Flay
        { spell = 15487, type = "ability", debuff = true, requiresTarget = true }, -- Silence
        { spell = 19236, type = "ability", talent = 10 }, -- Desperate Prayer
        { spell = 32375, type = "ability" }, -- Mass Dispel
        { spell = 32379, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Shadow Word: Death
        { spell = 33076, type = "ability" }, -- Prayer of Mending
        { spell = 33206, type = "ability", buff = true }, -- Pain Suppression
        { spell = 34433, type = "ability", requiresTarget = true }, -- Shadowfiend
        { spell = 34861, type = "ability" }, -- Circle of Healing
        { spell = 34914, type = "ability", debuff = true, requiresTarget = true }, -- Vampiric Touch
        { spell = 47540, type = "ability", requiresTarget = true }, -- Penance
        { spell = 47585, type = "ability", buff = true }, -- Dispersion
        { spell = 47788, type = "ability", buff = true }, -- Guardian Spirit
        { spell = 48045, type = "ability", debuff = true, requiresTarget = true }, -- Mind Sear
        { spell = 62618, type = "ability" }, -- Power Word: Barrier
        { spell = 64044, type = "ability", debuff = true, requiresTarget = true }, -- Psychic Horror
        { spell = 64843, type = "ability", buff = true }, -- Divine Hymn
        { spell = 64901, type = "ability", buff = true }, -- Hymn of Hope
        { spell = 73510, type = "ability", requiresTarget = true }, -- Mind Spike
        { spell = 81700, type = "ability", buff = true, overlayGlow = true, usable = true }, -- Archangel
        { spell = 88625, type = "ability", debuff = true }, -- Holy Word: Chastise
        { spell = 88684, type = "ability", buff = true }, -- Holy Word: Serenity
        { spell = 88685, type = "ability" }, -- Holy Word: Sanctuary
        { spell = 89485, type = "ability", buff = true, usable = true }, -- Inner Focus
        { spell = 108920, type = "ability", talent = 1 }, -- Void Tendrils
        { spell = 108921, type = "ability", talent = 2 }, -- Psyfiend
        { spell = 109964, type = "ability", buff = true }, -- Spirit Shell
        { spell = 110744, type = "ability", talent = 17 }, -- Divine Star
        { spell = 112833, type = "ability", talent = 11 }, -- Spectral Guise
        { spell = 120517, type = "ability", talent = 18 }, -- Halo
        { spell = 120644, type = "ability", talent = 18 }, -- Halo
        { spell = 121135, type = "ability", requiresTarget = true, talent = 16 }, -- Cascade
        { spell = 121536, type = "ability", charges = true, talent = 5 }, -- Angelic Feather
        { spell = 123040, type = "ability", talent = 8 }, -- Mindbender
        { spell = 126135, type = "ability", totem = true }, -- Lightwell
      },
      icon = 136224
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  }
}

templates.class.SHAMAN = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 324, type = "buff", unit = "player" }, -- Lightning Shield
        { spell = 546, type = "buff", unit = "player" }, -- Water Walking
        { spell = 974, type = "buff", unit = "player" }, -- Earth Shield
        { spell = 2645, type = "buff", unit = "player" }, -- Ghost Wolf
        { spell = 2825, type = "buff", unit = "player" }, -- Bloodlust
        { spell = 8178, type = "buff", unit = "player" }, -- Grounding Totem Effect
        { spell = 16166, type = "buff", unit = "player", talent = 10 }, -- Elemental Mastery
        { spell = 16188, type = "buff", unit = "player", talent = 11 }, -- Ancestral Swiftness
        { spell = 16246, type = "buff", unit = "player" }, -- Clearcasting
        { spell = 16278, type = "buff", unit = "player" }, -- Flurry
        { spell = 30809, type = "buff", unit = "player" }, -- Unleashed Rage
        { spell = 30823, type = "buff", unit = "player" }, -- Shamanistic Rage
        { spell = 51470, type = "buff", unit = "player" }, -- Elemental Oath
        { spell = 51945, type = "buff", unit = "player" }, -- Earthliving
        { spell = 52127, type = "buff", unit = "player" }, -- Water Shield
        { spell = 53390, type = "buff", unit = "player" }, -- Tidal Waves
        { spell = 53817, type = "buff", unit = "player" }, -- Maelstrom Weapon
        { spell = 58875, type = "buff", unit = "player" }, -- Spirit Walk
        { spell = 61295, type = "buff", unit = "player" }, -- Riptide
        { spell = 73681, type = "buff", unit = "player" }, -- Unleash Wind
        { spell = 73683, type = "buff", unit = "player" }, -- Unleash Flame
        { spell = 73920, type = "buff", unit = "player" }, -- Healing Rain
        { spell = 77747, type = "buff", unit = "player" }, -- Burning Wrath
        { spell = 77762, type = "buff", unit = "player" }, -- Lava Surge
        { spell = 79206, type = "buff", unit = "player" }, -- Spiritwalker's Grace
        { spell = 98007, type = "buff", unit = "player" }, -- Spirit Link Totem
        { spell = 105284, type = "buff", unit = "player" }, -- Ancestral Vigor
        { spell = 108271, type = "buff", unit = "player", talent = 3 }, -- Astral Shift
        { spell = 108281, type = "buff", unit = "player", talent = 14 }, -- Ancestral Guidance
        { spell = 114050, type = "buff", unit = "player" }, -- Ascendance
        { spell = 114893, type = "buff", unit = "player" }, -- Stone Bulwark
        { spell = 114896, type = "buff", unit = "player", talent = 6 }, -- Windwalk Totem
        { spell = 116956, type = "buff", unit = "player" }, -- Grace of Air
        { spell = 118474, type = "buff", unit = "player", talent = 16 }, -- Unleashed Fury
        { spell = 118522, type = "buff", unit = "player", talent = 18 }, -- Elemental Blast
        { spell = 120676, type = "buff", unit = "player" }, -- Stormlash Totem
      },
      icon = 135863
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 3600, type = "debuff", unit = "target" }, -- Earthbind
        { spell = 8034, type = "debuff", unit = "target" }, -- Frostbrand Attack
        { spell = 8050, type = "debuff", unit = "target" }, -- Flame Shock
        { spell = 8056, type = "debuff", unit = "target" }, -- Frost Shock
        { spell = 17364, type = "debuff", unit = "target" }, -- Stormstrike
        { spell = 51490, type = "debuff", unit = "target" }, -- Thunderstorm
        { spell = 61882, type = "debuff", unit = "target" }, -- Earthquake
        { spell = 63685, type = "debuff", unit = "target" }, -- Freeze
        { spell = 64695, type = "debuff", unit = "target" }, -- Earthgrab
        { spell = 73682, type = "debuff", unit = "target" }, -- Unleash Frost
        { spell = 73684, type = "debuff", unit = "target" }, -- Unleash Earth
        { spell = 115798, type = "debuff", unit = "target" }, -- Weakened Blows
        { spell = 118470, type = "debuff", unit = "target", talent = 16 }, -- Unleashed Fury
        { spell = 118905, type = "debuff", unit = "target" }, -- Static Charge
      },
      icon = 135813
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 370, type = "ability", requiresTarget = true }, -- Purge
        { spell = 403, type = "ability", requiresTarget = true }, -- Lightning Bolt
        { spell = 421, type = "ability", requiresTarget = true }, -- Chain Lightning
        { spell = 556, type = "ability", usable = true }, -- Astral Recall
        { spell = 1535, type = "ability" }, -- Fire Nova
        { spell = 2825, type = "ability", buff = true }, -- Bloodlust
        { spell = 8042, type = "ability", overlayGlow = true, requiresTarget = true }, -- Earth Shock
        { spell = 8050, type = "ability", debuff = true, requiresTarget = true }, -- Flame Shock
        { spell = 8056, type = "ability", debuff = true, requiresTarget = true }, -- Frost Shock
        { spell = 16166, type = "ability", buff = true, talent = 10 }, -- Elemental Mastery
        { spell = 16188, type = "ability", buff = true, talent = 11 }, -- Ancestral Swiftness
        { spell = 17364, type = "ability", debuff = true, requiresTarget = true }, -- Stormstrike
        { spell = 30823, type = "ability", buff = true }, -- Shamanistic Rage
        { spell = 51490, type = "ability", debuff = true }, -- Thunderstorm
        { spell = 51505, type = "ability", overlayGlow = true, requiresTarget = true }, -- Lava Burst
        { spell = 51514, type = "ability", debuff = true }, -- Hex
        { spell = 51533, type = "ability" }, -- Feral Spirit
        { spell = 51886, type = "ability" }, -- Cleanse Spirit
        { spell = 57994, type = "ability", requiresTarget = true }, -- Wind Shear
        { spell = 58875, type = "ability", buff = true }, -- Spirit Walk
        { spell = 60103, type = "ability", requiresTarget = true, usable = true }, -- Lava Lash
        { spell = 61295, type = "ability", buff = true }, -- Riptide
        { spell = 61882, type = "ability", debuff = true }, -- Earthquake
        { spell = 73680, type = "ability", requiresTarget = true }, -- Unleash Elements
        { spell = 73899, type = "ability", requiresTarget = true }, -- Primal Strike
        { spell = 73920, type = "ability", buff = true }, -- Healing Rain
        { spell = 77130, type = "ability" }, -- Purify Spirit
        { spell = 79206, type = "ability", buff = true }, -- Spiritwalker's Grace
        { spell = 107079, type = "ability", requiresTarget = true }, -- Quaking Palm
        { spell = 108271, type = "ability", buff = true, talent = 3 }, -- Astral Shift
        { spell = 108281, type = "ability", buff = true, talent = 14 }, -- Ancestral Guidance
        { spell = 108285, type = "ability", talent = 7 }, -- Call of the Elements
        { spell = 108287, type = "ability", talent = 9 }, -- Totemic Projection
        { spell = 114049, type = "ability", buff = true }, -- Ascendance
        { spell = 117014, type = "ability", talent = 18, requiresTarget = true }, -- Elemental Blast
      },
      icon = 135963
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = 135990,
    },
  }
}

templates.class.MAGE = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 66, type = "buff", unit = "player" }, -- Invisibility
        { spell = 130, type = "buff", unit = "player" }, -- Slow Fall
        { spell = 1459, type = "buff", unit = "player" }, -- Arcane Brilliance
        { spell = 1463, type = "buff", unit = "player", talent = 18 }, -- Incanter's Ward
        { spell = 6117, type = "buff", unit = "player" }, -- Mage Armor
        { spell = 7302, type = "buff", unit = "player" }, -- Frost Armor
        { spell = 11426, type = "buff", unit = "player", talent = 6 }, -- Ice Barrier
        { spell = 12042, type = "buff", unit = "player" }, -- Arcane Power
        { spell = 12043, type = "buff", unit = "player", talent = 1 }, -- Presence of Mind
        { spell = 12051, type = "buff", unit = "player" }, -- Evocation
        { spell = 12472, type = "buff", unit = "player" }, -- Icy Veins
        { spell = 30482, type = "buff", unit = "player" }, -- Molten Armor
        { spell = 44544, type = "buff", unit = "player" }, -- Fingers of Frost
        { spell = 45438, type = "buff", unit = "player" }, -- Ice Block
        { spell = 48107, type = "buff", unit = "player" }, -- Heating Up
        { spell = 48108, type = "buff", unit = "player" }, -- Pyroblast!
        { spell = 57761, type = "buff", unit = "player" }, -- Brain Freeze
        { spell = 79683, type = "buff", unit = "player" }, -- Arcane Missiles!
        { spell = 80353, type = "buff", unit = "player" }, -- Time Warp
        { spell = 108839, type = "buff", unit = "player", talent = 3 }, -- Ice Floes
        { spell = 108843, type = "buff", unit = "player", talent = 2 }, -- Blazing Speed
        { spell = 110909, type = "buff", unit = "player" }, -- Alter Time
        { spell = 110960, type = "buff", unit = "player", talent = 10 }, -- Greater Invisibility
        { spell = 111264, type = "buff", unit = "player", talent = 8 }, -- Ice Ward
        { spell = 115610, type = "buff", unit = "player", talent = 4 }, -- Temporal Shield
        { spell = 116014, type = "buff", unit = "player", talent = 17 }, -- Rune of Power
        { spell = 116257, type = "buff", unit = "player" }, -- Invoker's Energy
        { spell = 126476, type = "buff", unit = "player" }, -- Predation
      },
      icon = 136096
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 120, type = "debuff", unit = "target" }, -- Cone of Cold
        { spell = 122, type = "debuff", unit = "target" }, -- Frost Nova
        { spell = 2120, type = "debuff", unit = "target" }, -- Flamestrike
        { spell = 11113, type = "debuff", unit = "target" }, -- Blast Wave
        { spell = 11366, type = "debuff", unit = "target" }, -- Pyroblast
        { spell = 12486, type = "debuff", unit = "target" }, -- Chilled
        { spell = 31589, type = "debuff", unit = "target" }, -- Slow
        { spell = 31661, type = "debuff", unit = "target" }, -- Dragon's Breath
        { spell = 33395, type = "debuff", unit = "target" }, -- Freeze
        { spell = 44457, type = "debuff", unit = "target", talent = 14 }, -- Living Bomb
        { spell = 44572, type = "debuff", unit = "target" }, -- Deep Freeze
        { spell = 44614, type = "debuff", unit = "target" }, -- Frostfire Bolt
        { spell = 55021, type = "debuff", unit = "target" }, -- Silenced - Improved Counterspell
        { spell = 59638, type = "debuff", unit = "target" }, -- Frostbolt
        { spell = 83853, type = "debuff", unit = "target" }, -- Combustion
        { spell = 84721, type = "debuff", unit = "target" }, -- Frozen Orb
        { spell = 102051, type = "debuff", unit = "target", talent = 9 }, -- Frostjaw
        { spell = 112948, type = "debuff", unit = "target", talent = 15 }, -- Frost Bomb
        { spell = 114923, type = "debuff", unit = "target", talent = 13 }, -- Nether Tempest
        { spell = 118271, type = "debuff", unit = "target" }, -- Combustion Impact
        { spell = 132210, type = "debuff", unit = "target" }, -- Pyromaniac
        { spell = 413841, type = "debuff", unit = "target" }, -- Ignite
      },
      icon = 135848
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 66, type = "ability", buff = true }, -- Invisibility
        { spell = 116, type = "ability", requiresTarget = true }, -- Frostbolt
        { spell = 120, type = "ability", debuff = true }, -- Cone of Cold
        { spell = 122, type = "ability", debuff = true }, -- Frost Nova
        { spell = 475, type = "ability" }, -- Remove Curse
        { spell = 1463, type = "ability", buff = true, talent = 18 }, -- Incanter's Ward
        { spell = 1953, type = "ability" }, -- Blink
        { spell = 2120, type = "ability", debuff = true }, -- Flamestrike
        { spell = 2136, type = "ability", requiresTarget = true }, -- Fire Blast
        { spell = 2139, type = "ability", requiresTarget = true }, -- Counterspell
        { spell = 5019, type = "ability", requiresTarget = true, usable = true }, -- Shoot
        { spell = 5143, type = "ability", charges = true, overlayGlow = true, requiresTarget = true, usable = true }, -- Arcane Missiles
        { spell = 11129, type = "ability" }, -- Combustion
        { spell = 11426, type = "ability", buff = true, talent = 6 }, -- Ice Barrier
        { spell = 11958, type = "ability", talent = 12 }, -- Cold Snap
        { spell = 12042, type = "ability", buff = true }, -- Arcane Power
        { spell = 12043, type = "ability", buff = true, usable = true, talent = 1 }, -- Presence of Mind
        { spell = 12051, type = "ability", buff = true }, -- Evocation
        { spell = 12472, type = "ability", buff = true }, -- Icy Veins
        { spell = 30449, type = "ability", requiresTarget = true }, -- Spellsteal
        { spell = 30451, type = "ability", requiresTarget = true }, -- Arcane Blast
        { spell = 30455, type = "ability", charges = true, overlayGlow = true, requiresTarget = true }, -- Ice Lance
        { spell = 31589, type = "ability", debuff = true, requiresTarget = true }, -- Slow
        { spell = 31661, type = "ability", debuff = true }, -- Dragon's Breath
        { spell = 31687, type = "ability" }, -- Summon Water Elemental
        { spell = 31707, type = "ability" }, -- Waterbolt
        { spell = 33395, type = "ability", debuff = true }, -- Freeze
        { spell = 43987, type = "ability" }, -- Conjure Refreshment Table
        { spell = 44425, type = "ability", requiresTarget = true }, -- Arcane Barrage
        { spell = 44572, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true, usable = true }, -- Deep Freeze
        { spell = 44614, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Frostfire Bolt
        { spell = 45438, type = "ability", buff = true, usable = true }, -- Ice Block
        { spell = 55342, type = "ability" }, -- Mirror Image
        { spell = 80353, type = "ability", buff = true }, -- Time Warp
        { spell = 84714, type = "ability" }, -- Frozen Orb
        { spell = 102051, type = "ability", debuff = true, requiresTarget = true, talent = 9 }, -- Frostjaw
        { spell = 108839, type = "ability", charges = true, buff = true, talent = 3 }, -- Ice Floes
        { spell = 108843, type = "ability", buff = true, usable = true, talent = 2 }, -- Blazing Speed
        { spell = 108853, type = "ability" }, -- Inferno Blast
        { spell = 108978, type = "ability" }, -- Alter Time
        { spell = 110959, type = "ability", talent = 10 }, -- Greater Invisibility
        { spell = 111264, type = "ability", buff = true, talent = 8 }, -- Ice Ward
        { spell = 112948, type = "ability", debuff = true, requiresTarget = true, talent = 15 }, -- Frost Bomb
        { spell = 113724, type = "ability", talent = 7 }, -- Ring of Frost
        { spell = 114923, type = "ability", debuff = true, requiresTarget = true, talent = 13 }, -- Nether Tempest
        { spell = 115610, type = "ability", buff = true, talent = 4 }, -- Temporal Shield
        { spell = 127140, type = "ability" }, -- Alter Time
        { spell = 140376, type = "ability", talent = 7 }, -- Ring of Frost
      },
      icon = 136075
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = manaIcon,
    },
  }
}

templates.class.WARLOCK = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 126, type = "buff", unit = "player" }, -- Eye of Kilrogg
        { spell = 1949, type = "buff", unit = "player" }, -- Hellfire
        { spell = 5697, type = "buff", unit = "player" }, -- Unending Breath
        { spell = 6229, type = "buff", unit = "player" }, -- Twilight Ward
        { spell = 17941, type = "buff", unit = "player" }, -- Shadow Trance
        { spell = 20707, type = "buff", unit = "player" }, -- Soulstone
        { spell = 48018, type = "buff", unit = "player" }, -- Demonic Circle: Summon
        { spell = 59752, type = "buff", unit = "player" }, -- Will to Survive
        { spell = 74434, type = "buff", unit = "player" }, -- Soulburn
        { spell = 80240, type = "buff", unit = "player" }, -- Havoc
        { spell = 86211, type = "buff", unit = "player" }, -- Soul Swap
        { spell = 103958, type = "buff", unit = "player" }, -- Metamorphosis
        { spell = 104232, type = "buff", unit = "player" }, -- Rain of Fire
        { spell = 104773, type = "buff", unit = "player" }, -- Unending Resolve
        { spell = 108359, type = "buff", unit = "player", talent = 1 }, -- Dark Regeneration
        { spell = 108416, type = "buff", unit = "player", talent = 8 }, -- Sacrificial Pact
        { spell = 108503, type = "buff", unit = "player", talent = 15 }, -- Grimoire of Sacrifice
        { spell = 108508, type = "buff", unit = "player", talent = 18 }, -- Mannoroth's Fury
        { spell = 109773, type = "buff", unit = "player" }, -- Dark Intent
        { spell = 110913, type = "buff", unit = "player", talent = 9 }, -- Dark Bargain
        { spell = 111397, type = "buff", unit = "player", talent = 10 }, -- Blood Horror
        { spell = 111400, type = "buff", unit = "player", talent = 11 }, -- Burning Rush
        { spell = 113858, type = "buff", unit = "player" }, -- Dark Soul: Instability
        { spell = 113860, type = "buff", unit = "player" }, -- Dark Soul: Misery
        { spell = 113861, type = "buff", unit = "player" }, -- Dark Soul: Knowledge
        { spell = 114925, type = "buff", unit = "player" }, -- Demonic Calling
        { spell = 117828, type = "buff", unit = "player" }, -- Backdraft
        { spell = 119899, type = "buff", unit = "player" }, -- Cauterize Master
        { spell = 122355, type = "buff", unit = "player" }, -- Molten Core
        { spell = 126476, type = "buff", unit = "player" }, -- Predation
        { spell = 30151, type = "buff", unit = "pet" }, -- Pursuit
        { spell = 89751, type = "buff", unit = "pet" }, -- Felstorm
        { spell = 134477, type = "buff", unit = "pet" }, -- Threatening Presence
      },
      icon = 136210
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 348, type = "debuff", unit = "target" }, -- Immolate
        { spell = 689, type = "debuff", unit = "target" }, -- Drain Life
        { spell = 980, type = "debuff", unit = "target" }, -- Agony
        { spell = 1120, type = "debuff", unit = "target" }, -- Drain Soul
        { spell = 1490, type = "debuff", unit = "target" }, -- Curse of the Elements
        { spell = 5484, type = "debuff", unit = "target" }, -- Howl of Terror
        { spell = 6789, type = "debuff", unit = "target", talent = 5 }, -- Mortal Coil
        { spell = 17962, type = "debuff", unit = "target" }, -- Conflagrate
        { spell = 18223, type = "debuff", unit = "target" }, -- Curse of Exhaustion
        { spell = 22703, type = "debuff", unit = "target" }, -- Infernal Awakening
        { spell = 27243, type = "debuff", unit = "target" }, -- Seed of Corruption
        { spell = 30108, type = "debuff", unit = "target" }, -- Unstable Affliction
        { spell = 30213, type = "debuff", unit = "target" }, -- Legion Strike
        { spell = 30283, type = "debuff", unit = "target", talent = 6 }, -- Shadowfury
        { spell = 47960, type = "debuff", unit = "target" }, -- Shadowflame
        { spell = 48181, type = "debuff", unit = "target" }, -- Haunt
        { spell = 60947, type = "debuff", unit = "target" }, -- Nightmare
        { spell = 103103, type = "debuff", unit = "target" }, -- Malefic Grasp
        { spell = 109466, type = "debuff", unit = "target" }, -- Curse of Enfeeblement
        { spell = 116858, type = "debuff", unit = "target" }, -- Chaos Bolt
        { spell = 118699, type = "debuff", unit = "target" }, -- Fear
        { spell = 146739, type = "debuff", unit = "target" }, -- Corruption
      },
      icon = 136139
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 172, type = "ability", requiresTarget = true }, -- Corruption
        { spell = 686, type = "ability", requiresTarget = true }, -- Shadow Bolt
        { spell = 689, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Drain Life
        { spell = 698, type = "ability", usable = true }, -- Ritual of Summoning
        { spell = 980, type = "ability", debuff = true, requiresTarget = true }, -- Agony
        { spell = 1120, type = "ability", debuff = true, requiresTarget = true }, -- Drain Soul
        { spell = 1122, type = "ability" }, -- Summon Infernal
        { spell = 1490, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Curse of the Elements
        { spell = 5019, type = "ability", requiresTarget = true, usable = true }, -- Shoot
        { spell = 5484, type = "ability", debuff = true }, -- Howl of Terror
        { spell = 5782, type = "ability", requiresTarget = true }, -- Fear
        { spell = 6229, type = "ability", buff = true }, -- Twilight Ward
        { spell = 6353, type = "ability", charges = true, overlayGlow = true }, -- Soul Fire
        { spell = 6789, type = "ability", debuff = true, requiresTarget = true, talent = 5 }, -- Mortal Coil
        { spell = 17962, type = "ability", charges = true, debuff = true }, -- Conflagrate
        { spell = 18223, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Curse of Exhaustion
        { spell = 18540, type = "ability", requiresTarget = true }, -- Summon Doomguard
        { spell = 20707, type = "ability", buff = true }, -- Soulstone
        { spell = 27243, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Seed of Corruption
        { spell = 29858, type = "ability" }, -- Soulshatter
        { spell = 29893, type = "ability" }, -- Create Soulwell
        { spell = 30108, type = "ability", debuff = true, requiresTarget = true }, -- Unstable Affliction
        { spell = 30151, type = "ability", buff = true, unit = 'pet' }, -- Pursuit
        { spell = 30213, type = "ability", debuff = true }, -- Legion Strike
        { spell = 30283, type = "ability", debuff = true, talent = 6 }, -- Shadowfury
        { spell = 47897, type = "ability", talent = 4 }, -- Demonic Breath
        { spell = 48020, type = "ability", overlayGlow = true, usable = true }, -- Demonic Circle: Teleport
        { spell = 48181, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Haunt
        { spell = 59752, type = "ability", buff = true }, -- Will to Survive
        { spell = 74434, type = "ability", buff = true }, -- Soulburn
        { spell = 77799, type = "ability", requiresTarget = true }, -- Fel Flame
        { spell = 80240, type = "ability", buff = true, debuff = true }, -- Havoc
        { spell = 86121, type = "ability", overlayGlow = true, requiresTarget = true }, -- Soul Swap
        { spell = 89751, type = "ability", buff = true, unit = 'pet' }, -- Felstorm
        { spell = 103103, type = "ability", debuff = true, requiresTarget = true }, -- Malefic Grasp
        { spell = 103958, type = "ability", buff = true }, -- Metamorphosis
        { spell = 103967, type = "ability", usable = true }, -- Carrion Swarm
        { spell = 104027, type = "ability", charges = true, overlayGlow = true }, -- Soul Fire
        { spell = 104136, type = "ability" }, -- Demonic Circle: Teleport
        { spell = 104773, type = "ability", buff = true }, -- Unending Resolve
        { spell = 105174, type = "ability", charges = true }, -- Hand of Gul'dan
        { spell = 108359, type = "ability", buff = true, talent = 1 }, -- Dark Regeneration
        { spell = 108416, type = "ability", buff = true, talent = 8 }, -- Sacrificial Pact
        { spell = 108482, type = "ability", talent = 12 }, -- Unbound Will
        { spell = 108503, type = "ability", buff = true, talent = 15 }, -- Grimoire of Sacrifice
        { spell = 108508, type = "ability", buff = true, talent = 18 }, -- Mannoroth's Fury
        { spell = 109151, type = "ability" }, -- Demonic Leap
        { spell = 109466, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true }, -- Curse of Enfeeblement
        { spell = 110913, type = "ability", buff = true, talent = 9 }, -- Dark Bargain
        { spell = 111397, type = "ability", buff = true, talent = 10 }, -- Blood Horror
        { spell = 111771, type = "ability" }, -- Demonic Gateway
        { spell = 112921, type = "ability" }, -- Summon Abyssal
        { spell = 112927, type = "ability" }, -- Summon Terrorguard
        { spell = 113858, type = "ability", buff = true }, -- Dark Soul: Instability
        { spell = 113860, type = "ability", charges = true, buff = true }, -- Dark Soul: Misery
        { spell = 113861, type = "ability", buff = true }, -- Dark Soul: Knowledge
        { spell = 114794, type = "ability", overlayGlow = true }, -- Demonic Circle: Teleport
        { spell = 115746, type = "ability" }, -- Felbolt
        { spell = 119899, type = "ability", buff = true }, -- Cauterize Master
        { spell = 119905, type = "ability" }, -- Cauterize Master
        { spell = 119914, type = "ability" }, -- Felstorm
        { spell = 124916, type = "ability", charges = true }, -- Chaos Waves
        { spell = 132411, type = "ability" }, -- Singe Magic
        { spell = 134477, type = "ability", buff = true, unit = 'pet' }, -- Threatening Presence
      },
      icon = 135808
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\Icons\\inv_misc_gem_amethyst_02",
    },
  }
}

templates.class.DRUID = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 768, type = "buff", unit = "player" }, -- Cat Form
        { spell = 774, type = "buff", unit = "player" }, -- Rejuvenation
        { spell = 783, type = "buff", unit = "player" }, -- Travel Form
        { spell = 1126, type = "buff", unit = "player" }, -- Mark of the Wild
        { spell = 1850, type = "buff", unit = "player" }, -- Dash
        { spell = 5215, type = "buff", unit = "player" }, -- Prowl
        { spell = 5217, type = "buff", unit = "player" }, -- Tiger's Fury
        { spell = 5229, type = "buff", unit = "player" }, -- Enrage
        { spell = 5487, type = "buff", unit = "player" }, -- Bear Form
        { spell = 8936, type = "buff", unit = "player" }, -- Regrowth
        { spell = 16689, type = "buff", unit = "player" }, -- Nature's Grasp
        { spell = 16886, type = "buff", unit = "player" }, -- Nature's Grace
        { spell = 22812, type = "buff", unit = "player" }, -- Barkskin
        { spell = 24858, type = "buff", unit = "player" }, -- Moonkin Form
        { spell = 24907, type = "buff", unit = "player" }, -- Moonkin Aura
        { spell = 24932, type = "buff", unit = "player" }, -- Leader of the Pack
        { spell = 29166, type = "buff", unit = "player" }, -- Innervate
        { spell = 33763, type = "buff", unit = "player" }, -- Lifebloom
        { spell = 33891, type = "buff", unit = "player" }, -- Incarnation: Tree of Life
        { spell = 40120, type = "buff", unit = "player" }, -- Swift Flight Form
        { spell = 44203, type = "buff", unit = "player" }, -- Tranquility
        { spell = 48438, type = "buff", unit = "player" }, -- Wild Growth
        { spell = 48504, type = "buff", unit = "player" }, -- Living Seed
        { spell = 48505, type = "buff", unit = "player" }, -- Starfall
        { spell = 48518, type = "buff", unit = "player" }, -- Eclipse (Lunar)
        { spell = 50334, type = "buff", unit = "player" }, -- Berserk
        { spell = 52610, type = "buff", unit = "player" }, -- Savage Roar
        { spell = 61336, type = "buff", unit = "player" }, -- Survival Instincts
        { spell = 69369, type = "buff", unit = "player" }, -- Predatory Swiftness
        { spell = 77761, type = "buff", unit = "player" }, -- Stampeding Roar
        { spell = 81192, type = "buff", unit = "player" }, -- Lunar Shower
        { spell = 93400, type = "buff", unit = "player" }, -- Shooting Stars
        { spell = 100977, type = "buff", unit = "player" }, -- Harmony
        { spell = 102342, type = "buff", unit = "player" }, -- Ironbark
        { spell = 102351, type = "buff", unit = "player", talent = 6 }, -- Cenarion Ward
        { spell = 102543, type = "buff", unit = "player" }, -- Incarnation: King of the Jungle
        { spell = 106922, type = "buff", unit = "player" }, -- Might of Ursoc
        { spell = 108291, type = "buff", unit = "player", talent = 16 }, -- Heart of the Wild
        { spell = 112071, type = "buff", unit = "player" }, -- Celestial Alignment
        { spell = 117679, type = "buff", unit = "player", talent = 11 }, -- Incarnation
        { spell = 124974, type = "buff", unit = "player", talent = 18 }, -- Nature's Vigil
        { spell = 127663, type = "buff", unit = "player" }, -- Astral Communion
        { spell = 132158, type = "buff", unit = "player" }, -- Nature's Swiftness
        { spell = 132402, type = "buff", unit = "player" }, -- Savage Defense
        { spell = 135286, type = "buff", unit = "player" }, -- Tooth and Claw
        { spell = 135700, type = "buff", unit = "player" }, -- Clearcasting
        { spell = 137452, type = "buff", unit = "player", talent = 2 }, -- Displacer Beast
        { spell = 145138, type = "buff", unit = "player" }, -- Astral Insight
      },
      icon = 136097
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 99, type = "debuff", unit = "target", talent = 13 }, -- Disorienting Roar
        { spell = 339, type = "debuff", unit = "target" }, -- Entangling Roots
        { spell = 770, type = "debuff", unit = "target" }, -- Faerie Fire
        { spell = 1079, type = "debuff", unit = "target" }, -- Rip
        { spell = 1822, type = "debuff", unit = "target" }, -- Rake
        { spell = 5211, type = "debuff", unit = "target", talent = 15 }, -- Mighty Bash
        { spell = 6795, type = "debuff", unit = "target" }, -- Growl
        { spell = 8921, type = "debuff", unit = "target" }, -- Moonfire
        { spell = 9005, type = "debuff", unit = "target" }, -- Pounce
        { spell = 9007, type = "debuff", unit = "target" }, -- Pounce Bleed
        { spell = 16914, type = "debuff", unit = "target" }, -- Hurricane
        { spell = 22570, type = "debuff", unit = "target" }, -- Maim
        { spell = 33745, type = "debuff", unit = "target" }, -- Lacerate
        { spell = 45334, type = "debuff", unit = "target" }, -- Immobilized
        { spell = 58180, type = "debuff", unit = "target" }, -- Infected Wounds
        { spell = 61391, type = "debuff", unit = "target", talent = 9 }, -- Typhoon
        { spell = 77758, type = "debuff", unit = "target" }, -- Thrash
        { spell = 81261, type = "debuff", unit = "target" }, -- Solar Beam
        { spell = 81281, type = "debuff", unit = "target" }, -- Fungal Growth
        { spell = 93402, type = "debuff", unit = "target" }, -- Sunfire
        { spell = 102355, type = "debuff", unit = "target", talent = 7 }, -- Faerie Swarm
        { spell = 102359, type = "debuff", unit = "target", talent = 8 }, -- Mass Entanglement
        { spell = 102795, type = "debuff", unit = "target" }, -- Bear Hug
        { spell = 106996, type = "debuff", unit = "target" }, -- Astral Storm
        { spell = 113746, type = "debuff", unit = "target" }, -- Weakened Armor
        { spell = 113830, type = "debuff", unit = "target" }, -- Taunt
        { spell = 115798, type = "debuff", unit = "target" }, -- Weakened Blows
        { spell = 127797, type = "debuff", unit = "target", talent = 14 }, -- Ursol's Vortex
        { spell = 135601, type = "debuff", unit = "target" }, -- Tooth and Claw
      },
      icon = 132114
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 99, type = "ability", debuff = true, talent = 13 }, -- Disorienting Roar
        { spell = 339, type = "ability", debuff = true, overlayGlow = true, requiresTarget = true, usable = true }, -- Entangling Roots
        { spell = 740, type = "ability", usable = true }, -- Tranquility
        { spell = 770, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Faerie Fire
        { spell = 779, type = "ability" }, -- Swipe
        { spell = 1079, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Rip
        { spell = 1822, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Rake
        { spell = 1850, type = "ability", buff = true, usable = true }, -- Dash
        { spell = 2782, type = "ability", usable = true }, -- Remove Corruption
        { spell = 5211, type = "ability", debuff = true, requiresTarget = true, talent = 15 }, -- Mighty Bash
        { spell = 5215, type = "ability", buff = true, usable = true }, -- Prowl
        { spell = 5217, type = "ability", buff = true }, -- Tiger's Fury
        { spell = 5221, type = "ability", requiresTarget = true, usable = true }, -- Shred
        { spell = 5225, type = "ability", usable = true }, -- Track Humanoids
        { spell = 5229, type = "ability", buff = true }, -- Enrage
        { spell = 6785, type = "ability", requiresTarget = true, usable = true }, -- Ravage
        { spell = 6795, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Growl
        { spell = 6807, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Maul
        { spell = 9005, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Pounce
        { spell = 16689, type = "ability", buff = true, usable = true }, -- Nature's Grasp
        { spell = 16979, type = "ability", talent = 3 }, -- Wild Charge
        { spell = 18562, type = "ability", usable = true }, -- Swiftmend
        { spell = 20484, type = "ability", usable = true }, -- Rebirth
        { spell = 22568, type = "ability", requiresTarget = true, usable = true }, -- Ferocious Bite
        { spell = 22570, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Maim
        { spell = 22812, type = "ability", buff = true, usable = true }, -- Barkskin
        { spell = 22842, type = "ability", usable = true }, -- Frenzied Regeneration
        { spell = 29166, type = "ability", buff = true, usable = true }, -- Innervate
        { spell = 33745, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Lacerate
        { spell = 33786, type = "ability", requiresTarget = true, usable = true }, -- Cyclone
        { spell = 33878, type = "ability", overlayGlow = true, requiresTarget = true }, -- Mangle
        { spell = 33891, type = "ability", buff = true }, -- Incarnation: Tree of Life
        { spell = 33917, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Mangle
        { spell = 48438, type = "ability", buff = true, overlayGlow = true }, -- Wild Growth
        { spell = 48505, type = "ability", buff = true, overlayGlow = true, usable = true }, -- Starfall
        { spell = 50334, type = "ability", buff = true }, -- Berserk
        { spell = 61336, type = "ability", buff = true }, -- Survival Instincts
        { spell = 62606, type = "ability", charges = true, usable = true }, -- Savage Defense
        { spell = 77758, type = "ability", debuff = true, requiresTarget = true }, -- Thrash
        { spell = 77761, type = "ability", buff = true }, -- Stampeding Roar
        { spell = 77764, type = "ability" }, -- Stampeding Roar
        { spell = 78674, type = "ability", overlayGlow = true, usable = true }, -- Starsurge
        { spell = 78675, type = "ability", usable = true }, -- Solar Beam
        { spell = 88423, type = "ability" }, -- Nature's Cure
        { spell = 88751, type = "ability", usable = true }, -- Wild Mushroom: Detonate
        { spell = 102280, type = "ability", talent = 2 }, -- Displacer Beast
        { spell = 102342, type = "ability", buff = true }, -- Ironbark
        { spell = 102351, type = "ability", buff = true, talent = 6 }, -- Cenarion Ward
        { spell = 102359, type = "ability", debuff = true, usable = true, talent = 8 }, -- Mass Entanglement
        { spell = 102401, type = "ability", requiresTarget = true, usable = true, talent = 3 }, -- Wild Charge
        { spell = 102543, type = "ability", buff = true }, -- Incarnation: King of the Jungle
        { spell = 102547, type = "ability", buff = true }, -- Prowl
        { spell = 102791, type = "ability" }, -- Wild Mushroom: Bloom
        { spell = 102793, type = "ability", talent = 14 }, -- Ursol's Vortex
        { spell = 102795, type = "ability", debuff = true, requiresTarget = true }, -- Bear Hug
        { spell = 106737, type = "ability", charges = true, talent = 12 }, -- Force of Nature
        { spell = 106832, type = "ability", requiresTarget = true, usable = true }, -- Thrash
        { spell = 106839, type = "ability", requiresTarget = true, usable = true }, -- Skull Bash
        { spell = 106898, type = "ability", buff = true, usable = true }, -- Stampeding Roar
        { spell = 106922, type = "ability", buff = true }, -- Ursocs Macht
        { spell = 106951, type = "ability" }, -- Berserk
        { spell = 106952, type = "ability", usable = true }, -- Berserk
        { spell = 108238, type = "ability", usable = true, talent = 5 }, -- Renewal
        { spell = 108291, type = "ability", buff = true, talent = 16 }, -- Heart of the Wild
        { spell = 110309, type = "ability", usable = true }, -- Symbiosis
        { spell = 112071, type = "ability", buff = true, usable = true }, -- Celestial Alignment
        { spell = 124974, type = "ability", buff = true, talent = 18 }, -- Nature's Vigil
        { spell = 132158, type = "ability", buff = true, usable = true }, -- Nature's Swiftness
        { spell = 132469, type = "ability", talent = 9 }, -- Typhoon
        { spell = 145205, type = "ability", totem = true }, -- Wild Mushroom
      },
      icon = 132134
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources and Shapeshift Form"],
      args = {
      },
      icon = manaIcon,
    },
  },
}

templates.class.DEATHKNIGHT = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 3714, type = "buff", unit = "player" }, -- Path of Frost
        { spell = 42650, type = "buff", unit = "player" }, -- Army of the Dead
        { spell = 48263, type = "buff", unit = "player" }, -- Blood Presence
        { spell = 48265, type = "buff", unit = "player" }, -- Unholy Presence
        { spell = 48266, type = "buff", unit = "player" }, -- Frost Presence
        { spell = 48707, type = "buff", unit = "player" }, -- Anti-Magic Shell
        { spell = 48792, type = "buff", unit = "player" }, -- Icebound Fortitude
        { spell = 49016, type = "buff", unit = "player" }, -- Unholy Frenzy
        { spell = 49039, type = "buff", unit = "player", talent = 4 }, -- Lichborne
        { spell = 49222, type = "buff", unit = "player" }, -- Bone Shield
        { spell = 50421, type = "buff", unit = "player" }, -- Scent of Blood
        { spell = 51124, type = "buff", unit = "player" }, -- Killing Machine
        { spell = 51271, type = "buff", unit = "player" }, -- Pillar of Frost
        { spell = 51460, type = "buff", unit = "player", talent = 15 }, -- Runic Corruption
        { spell = 51721, type = "buff", unit = "player" }, -- Dominion Over Acherus
        { spell = 55233, type = "buff", unit = "player" }, -- Vampiric Blood
        { spell = 55610, type = "buff", unit = "player" }, -- Unholy Aura
        { spell = 57330, type = "buff", unit = "player" }, -- Horn of Winter
        { spell = 59052, type = "buff", unit = "player" }, -- Freezing Fog
        { spell = 81141, type = "buff", unit = "player" }, -- Crimson Scourge
        { spell = 81256, type = "buff", unit = "player" }, -- Dancing Rune Weapon
        { spell = 81340, type = "buff", unit = "player" }, -- Sudden Doom
        { spell = 91342, type = "buff", unit = "player" }, -- Shadow Infusion
        { spell = 96268, type = "buff", unit = "player", talent = 7 }, -- Death's Advance
        { spell = 108200, type = "buff", unit = "player", talent = 17 }, -- Remorseless Winter
        { spell = 114851, type = "buff", unit = "player" }, -- Blood Charge
        { spell = 115018, type = "buff", unit = "player", talent = 18 }, -- Desecrated Ground
        { spell = 115989, type = "buff", unit = "player", talent = 3 }, -- Unholy Blight
        { spell = 119975, type = "buff", unit = "player", talent = 12 }, -- Conversion
        { spell = 126513, type = "buff", unit = "player" }, -- Poised to Strike
        { spell = 145629, type = "buff", unit = "player", talent = 5 }, -- Anti-Magic Zone
        { spell = 63560, type = "buff", unit = "pet" }, -- Dark Transformation
      },
      icon = 237517
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 43265, type = "debuff", unit = "target" }, -- Death and Decay
        { spell = 49206, type = "debuff", unit = "target" }, -- Summon Gargoyle
        { spell = 55078, type = "debuff", unit = "target" }, -- Blood Plague
        { spell = 55095, type = "debuff", unit = "target" }, -- Frost Fever
        { spell = 73975, type = "debuff", unit = "target" }, -- Necrotic Strike
        { spell = 77606, type = "debuff", unit = "target" }, -- Dark Simulacrum
        { spell = 81326, type = "debuff", unit = "target" }, -- Physical Vulnerability
        { spell = 114866, type = "debuff", unit = "target" }, -- Soul Reaper
        { spell = 115798, type = "debuff", unit = "target" }, -- Weakened Blows
      },
      icon = 237514
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 3714, type = "ability", buff = true }, -- Path of Frost
        { spell = 42650, type = "ability", buff = true }, -- Army of the Dead
        { spell = 43265, type = "ability", debuff = true, overlayGlow = true }, -- Death and Decay
        { spell = 45462, type = "ability", requiresTarget = true }, -- Plague Strike
        { spell = 45477, type = "ability", overlayGlow = true }, -- Icy Touch
        { spell = 45524, type = "ability" }, -- Chains of Ice
        { spell = 45529, type = "ability", charges = true, talent = 13 }, -- Blood Tap
        { spell = 45902, type = "ability", requiresTarget = true }, -- Blood Strike
        { spell = 46584, type = "ability", totem = true }, -- Raise Dead
        { spell = 47468, type = "ability" }, -- Claw
        { spell = 47476, type = "ability" }, -- Strangulate
        { spell = 47481, type = "ability" }, -- Gnaw
        { spell = 47484, type = "ability" }, -- Huddle
        { spell = 47528, type = "ability", requiresTarget = true }, -- Mind Freeze
        { spell = 47568, type = "ability" }, -- Empower Rune Weapon
        { spell = 48707, type = "ability", buff = true }, -- Anti-Magic Shell
        { spell = 48721, type = "ability", overlayGlow = true }, -- Blood Boil
        { spell = 48743, type = "ability", talent = 10 }, -- Death Pact
        { spell = 48792, type = "ability", buff = true }, -- Icebound Fortitude
        { spell = 48982, type = "ability" }, -- Rune Tap
        { spell = 49016, type = "ability", buff = true }, -- Unholy Frenzy
        { spell = 49020, type = "ability", overlayGlow = true, requiresTarget = true }, -- Obliterate
        { spell = 49028, type = "ability" }, -- Dancing Rune Weapon
        { spell = 49039, type = "ability", buff = true, talent = 4 }, -- Lichborne
        { spell = 49143, type = "ability", overlayGlow = true, requiresTarget = true }, -- Frost Strike
        { spell = 49184, type = "ability", overlayGlow = true }, -- Howling Blast
        { spell = 49206, type = "ability", debuff = true }, -- Summon Gargoyle
        { spell = 49222, type = "ability", buff = true }, -- Bone Shield
        { spell = 49576, type = "ability" }, -- Death Grip
        { spell = 49998, type = "ability", charges = true, requiresTarget = true }, -- Death Strike
        { spell = 50842, type = "ability", requiresTarget = true }, -- Pestilence
        { spell = 50977, type = "ability", usable = true }, -- Death Gate
        { spell = 51052, type = "ability", talent = 5 }, -- Anti-Magic Zone
        { spell = 51271, type = "ability", buff = true }, -- Pillar of Frost
        { spell = 55050, type = "ability", requiresTarget = true }, -- Heart Strike
        { spell = 55090, type = "ability", requiresTarget = true }, -- Scourge Strike
        { spell = 55233, type = "ability", buff = true }, -- Vampiric Blood
        { spell = 56222, type = "ability" }, -- Dark Command
        { spell = 56815, type = "ability", requiresTarget = true }, -- Rune Strike
        { spell = 57330, type = "ability", buff = true }, -- Horn of Winter
        { spell = 61999, type = "ability" }, -- Raise Ally
        { spell = 63560, type = "ability", charges = true, buff = true, unit = 'pet', overlayGlow = true, usable = true }, -- Dark Transformation
        { spell = 73975, type = "ability", debuff = true, requiresTarget = true }, -- Necrotic Strike
        { spell = 77575, type = "ability" }, -- Outbreak
        { spell = 77606, type = "ability", debuff = true }, -- Dark Simulacrum
        { spell = 85948, type = "ability", requiresTarget = true }, -- Festering Strike
        { spell = 96268, type = "ability", buff = true, talent = 7 }, -- Death's Advance
        { spell = 108194, type = "ability", talent = 9 }, -- Asphyxiate
        { spell = 108199, type = "ability", talent = 16 }, -- Gorefiend's Grasp
        { spell = 108200, type = "ability", buff = true, talent = 17 }, -- Remorseless Winter
        { spell = 108201, type = "ability", talent = 18 }, -- Desecrated Ground
        { spell = 111673, type = "ability" }, -- Control Undead
        { spell = 114866, type = "ability", debuff = true, requiresTarget = true }, -- Soul Reaper
        { spell = 115989, type = "ability", buff = true, talent = 3 }, -- Unholy Blight
        { spell = 123693, type = "ability", talent = 2 }, -- Plague Leech
        { spell = 130735, type = "ability", debuff = true, requiresTarget = true }, -- Soul Reaper
        { spell = 130736, type = "ability", debuff = true, requiresTarget = true }, -- Soul Reaper
      },
      icon = 136120
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\PlayerFrame\\UI-PlayerFrame-Deathknight-SingleRune",
    },
  }
}

templates.class.MONK = {
  [1] = {
    [1] = {
      title = L["Buffs"],
      args = {
        { spell = 101546, type = "buff", unit = "player" }, -- Spinning Crane Kick
        { spell = 101643, type = "buff", unit = "player" }, -- Transcendence
        { spell = 113656, type = "buff", unit = "player" }, -- Fists of Fury
        { spell = 115175, type = "buff", unit = "player" }, -- Soothing Mist
        { spell = 115213, type = "buff", unit = "player" }, -- Avert Harm
        { spell = 115288, type = "buff", unit = "player" }, -- Energizing Brew
        { spell = 115295, type = "buff", unit = "player" }, -- Guard
        { spell = 115307, type = "buff", unit = "player" }, -- Shuffle
        { spell = 115308, type = "buff", unit = "player" }, -- Elusive Brew
        { spell = 115867, type = "buff", unit = "player" }, -- Mana Tea
        { spell = 116680, type = "buff", unit = "player" }, -- Thunder Focus Tea
        { spell = 116781, type = "buff", unit = "player" }, -- Legacy of the White Tiger
        { spell = 116841, type = "buff", unit = "player", talent = 2 }, -- Tiger's Lust
        { spell = 116844, type = "buff", unit = "player", talent = 10 }, -- Ring of Peace
        { spell = 116847, type = "buff", unit = "player", talent = 16 }, -- Rushing Jade Wind
        { spell = 116849, type = "buff", unit = "player" }, -- Life Cocoon
        { spell = 117666, type = "buff", unit = "player" }, -- Legacy of the Emperor
        { spell = 118636, type = "buff", unit = "player" }, -- Power Guard
        { spell = 118674, type = "buff", unit = "player" }, -- Vital Mists
        { spell = 119085, type = "buff", unit = "player", talent = 3 }, -- Momentum
        { spell = 119611, type = "buff", unit = "player" }, -- Renewing Mist
        { spell = 120273, type = "buff", unit = "player" }, -- Tiger Strikes
        { spell = 120954, type = "buff", unit = "player" }, -- Fortifying Brew
        { spell = 121125, type = "buff", unit = "player" }, -- Death Note
        { spell = 122278, type = "buff", unit = "player", talent = 14 }, -- Dampen Harm
        { spell = 122783, type = "buff", unit = "player", talent = 15 }, -- Diffuse Magic
        { spell = 124081, type = "buff", unit = "player", talent = 5 }, -- Zen Sphere
        { spell = 124458, type = "buff", unit = "player" }, -- Healing Sphere
        { spell = 125174, type = "buff", unit = "player" }, -- Touch of Karma
        { spell = 125359, type = "buff", unit = "player" }, -- Tiger Power
        { spell = 126119, type = "buff", unit = "player" }, -- Sanctuary of the Ox
        { spell = 126483, type = "buff", unit = "player" }, -- Windswept Pages
        { spell = 127722, type = "buff", unit = "player" }, -- Serpent's Zeal
        { spell = 129914, type = "buff", unit = "player", talent = 7 }, -- Power Strikes
        { spell = 131523, type = "buff", unit = "player" }, -- Zen Meditation
        { spell = 132120, type = "buff", unit = "player" }, -- Enveloping Mist
        { spell = 134563, type = "buff", unit = "player", talent = 13 }, -- Healing Elixirs
        { spell = 137562, type = "buff", unit = "player" }, -- Nimble Brew
        { spell = 137639, type = "buff", unit = "player" }, -- Storm, Earth, and Fire
        { spell = 139597, type = "buff", unit = "player" }, -- Muscle Memory
        { spell = 1247275, type = "buff", unit = "player" }, -- Tigereye Brew
      },
      icon = 237517
    },
    [2] = {
      title = L["Debuffs"],
      args = {
        { spell = 107079, type = "debuff", unit = "target" }, -- Quaking Palm
        { spell = 115078, type = "debuff", unit = "target" }, -- Paralysis
        { spell = 115798, type = "debuff", unit = "target" }, -- Weakened Blows
        { spell = 115804, type = "debuff", unit = "target" }, -- Mortal Wounds
        { spell = 116095, type = "debuff", unit = "target" }, -- Disable
        { spell = 116189, type = "debuff", unit = "target" }, -- Provoke
        { spell = 116330, type = "debuff", unit = "target" }, -- Dizzying Haze
        { spell = 116709, type = "debuff", unit = "target" }, -- Spear Hand Strike
        { spell = 117952, type = "debuff", unit = "target" }, -- Crackling Jade Lightning
        { spell = 119381, type = "debuff", unit = "target", talent = 12 }, -- Leg Sweep
        { spell = 119392, type = "debuff", unit = "target", talent = 11 }, -- Charging Ox Wave
        { spell = 120086, type = "debuff", unit = "target" }, -- Fists of Fury
        { spell = 122470, type = "debuff", unit = "target" }, -- Touch of Karma
        { spell = 123725, type = "debuff", unit = "target" }, -- Breath of Fire
        { spell = 130320, type = "debuff", unit = "target" }, -- Rising Sun Kick
        { spell = 137460, type = "debuff", unit = "target" }, -- Silenced
        { spell = 140023, type = "debuff", unit = "target", talent = 10 }, -- Ring of Peace
      },
      icon = 237514
    },
    [3] = {
      title = L["Cooldowns"],
      args = {
        { spell = 100784, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Blackout Kick
        { spell = 100787, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Tiger Palm
        { spell = 101545, type = "ability", usable = true }, -- Flying Serpent Kick
        { spell = 101643, type = "ability", buff = true, usable = true }, -- Transcendence
        { spell = 107079, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Quaking Palm
        { spell = 107428, type = "ability", requiresTarget = true, usable = true }, -- Rising Sun Kick
        { spell = 109132, type = "ability", charges = true, usable = true }, -- Roll
        { spell = 113656, type = "ability", buff = true, usable = true }, -- Fists of Fury
        { spell = 115008, type = "ability", charges = true, usable = true, talent = 18 }, -- Chi Torpedo
        { spell = 115072, type = "ability", usable = true }, -- Expel Harm
        { spell = 115078, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Paralysis
        { spell = 115080, type = "ability", overlayGlow = true, requiresTarget = true, usable = true }, -- Touch of Death
        { spell = 115098, type = "ability", usable = true, talent = 4 }, -- Chi Wave
        { spell = 115151, type = "ability", usable = true }, -- Renewing Mist
        { spell = 115176, type = "ability", usable = true }, -- Zen Meditation
        { spell = 115203, type = "ability", usable = true }, -- Fortifying Brew
        { spell = 115213, type = "ability", buff = true, usable = true }, -- Avert Harm
        { spell = 115288, type = "ability", buff = true, usable = true }, -- Energizing Brew
        { spell = 115294, type = "ability", charges = true, usable = true }, -- Mana Tea
        { spell = 115295, type = "ability", buff = true, overlayGlow = true, usable = true }, -- Guard
        { spell = 115308, type = "ability", charges = true, buff = true, usable = true }, -- Elusive Brew
        { spell = 115310, type = "ability", usable = true }, -- Revival
        { spell = 115313, type = "ability", totem = true, usable = true }, -- Summon Jade Serpent Statue
        { spell = 115315, type = "ability", totem = true, usable = true }, -- Summon Black Ox Statue
        { spell = 115399, type = "ability", charges = true, talent = 9 }, -- Chi Brew
        { spell = 115450, type = "ability", usable = true }, -- Detox
        { spell = 115460, type = "ability", usable = true }, -- Healing Sphere
        { spell = 115546, type = "ability", usable = true }, -- Provoke
        { spell = 116095, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Disable
        { spell = 116680, type = "ability", buff = true, usable = true }, -- Thunder Focus Tea
        { spell = 116705, type = "ability", requiresTarget = true, usable = true }, -- Spear Hand Strike
        { spell = 116841, type = "ability", buff = true, usable = true, talent = 2 }, -- Tiger's Lust
        { spell = 116844, type = "ability", buff = true, usable = true, talent = 10 }, -- Ring of Peace
        { spell = 116847, type = "ability", buff = true, usable = true, talent = 16 }, -- Rushing Jade Wind
        { spell = 116849, type = "ability", buff = true, usable = true }, -- Life Cocoon
        { spell = 117368, type = "ability", usable = true }, -- Grapple Weapon
        { spell = 119381, type = "ability", debuff = true, usable = true, talent = 12 }, -- Leg Sweep
        { spell = 119392, type = "ability", debuff = true, usable = true, talent = 11 }, -- Charging Ox Wave
        { spell = 119582, type = "ability", usable = true }, -- Purifying Brew
        { spell = 119996, type = "ability", usable = true }, -- Transcendence: Transfer
        { spell = 121253, type = "ability", requiresTarget = true, usable = true }, -- Keg Smash
        { spell = 121827, type = "ability", charges = true }, -- Roll
        { spell = 122057, type = "ability", requiresTarget = true, usable = true }, -- Clash
        { spell = 122278, type = "ability", buff = true, usable = true, talent = 14 }, -- Dampen Harm
        { spell = 122470, type = "ability", debuff = true, requiresTarget = true, usable = true }, -- Touch of Karma
        { spell = 122783, type = "ability", buff = true, usable = true, talent = 15 }, -- Diffuse Magic
        { spell = 123904, type = "ability", usable = true, talent = 17 }, -- Invoke Xuen, the White Tiger
        { spell = 123986, type = "ability", usable = true, talent = 6 }, -- Chi Burst
        { spell = 124081, type = "ability", buff = true, usable = true, talent = 5 }, -- Zen Sphere
        { spell = 126892, type = "ability", usable = true }, -- Zen Pilgrimage
        { spell = 137562, type = "ability", buff = true, usable = true }, -- Nimble Brew
        { spell = 1247275, type = "ability", charges = true, buff = true }, -- Tigereye Brew
      },
      icon = 136120
    },
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {
      title = L["Resources"],
      args = {
      },
      icon = "Interface\\Icons\\monk_stance_drunkenox",
    },
  }
}

-- General Section
tinsert(templates.general.args, {
  title = L["Health"],
  icon = "Interface\\Icons\\inv_potion_54",
  type = "health"
});
tinsert(templates.general.args, {
  title = L["Cast"],
  icon = 136209,
  type = "cast"
});
tinsert(templates.general.args, {
  title = L["Always Active"],
  icon = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura78",
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Conditions"),
    event = "Conditions",
    use_alwaystrue = true}}}
});

tinsert(templates.general.args, {
  title = L["Pet alive"],
  icon = "Interface\\Icons\\ability_hunter_pet_raptor",
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Conditions"),
    event = "Conditions",
    use_HasPet = true}}}
});

tinsert(templates.general.args, {
  title = L["Pet Behavior"],
  icon = "Interface\\Icons\\ability_defend.blp",
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Pet Behavior"),
    event = "Pet Behavior",
    use_behavior = true,
    behavior = "assist"}}}
});

tinsert(templates.general.args, {
  spell = 2825, type = "buff", unit = "player",
  forceOwnOnly = true,
  ownOnly = nil,
  overideTitle = L["Bloodlust/Heroism"],
  spellIds = {2825, 32182}}
);

-- Meta template for Power triggers
local function createSimplePowerTemplate(powertype)
  local power = {
    title = powerTypes[powertype].name,
    icon = powerTypes[powertype].icon,
    type = "power",
    powertype = powertype,
  }
  return power;
end

-------------------------------
-- Hardcoded trigger templates
-------------------------------

-- Warrior
tinsert(templates.class.WARRIOR[1][8].args, {
  title = L["Stance"],
  icon = 132349,
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Stance/Form/Aura"),
    event = "Stance/Form/Aura"}}}
})
for j, id in ipairs({2457, 71, 2458}) do
  local title, _, icon = GetSpellInfo(id)
  if title then
    tinsert(templates.class.WARRIOR[1][8].args, {
      title = title,
      icon = icon,
      triggers = {
        [1] = {
          trigger = {
            type = WeakAuras.GetTriggerCategoryFor("Stance/Form/Aura"),
            event = "Stance/Form/Aura",
            use_form = true,
            form = { single = j }
          }
        }
      }
    });
  end
end

tinsert(templates.class.WARRIOR[1][8].args, createSimplePowerTemplate(1));
tinsert(templates.class.PALADIN[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.HUNTER[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.ROGUE[1][8].args, createSimplePowerTemplate(3));
tinsert(templates.class.ROGUE[1][8].args, createSimplePowerTemplate(4));
tinsert(templates.class.PRIEST[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.SHAMAN[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.MAGE[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.WARLOCK[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.DRUID[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.DRUID[1][8].args, createSimplePowerTemplate(1));
tinsert(templates.class.DRUID[1][8].args, createSimplePowerTemplate(3));
tinsert(templates.class.DRUID[1][8].args, createSimplePowerTemplate(4));

tinsert(templates.class.MONK[1][8].args, createSimplePowerTemplate(0));
tinsert(templates.class.MONK[1][8].args, createSimplePowerTemplate(3));
tinsert(templates.class.MONK[1][8].args, createSimplePowerTemplate(12));

-- Shapeshift Form
tinsert(templates.class.DRUID[1][8].args, {
  title = L["Shapeshift Form"],
  icon = 132276,
  triggers = {[1] = { trigger = {
    type = WeakAuras.GetTriggerCategoryFor("Stance/Form/Aura"),
    event = "Stance/Form/Aura"}}}
});
for j, id in ipairs({5487, 768, 783, 114282, 1394966}) do
  local title, _, icon = GetSpellInfo(id)
  if title then
    tinsert(templates.class.DRUID[1][8].args, {
      title = title,
      icon = icon,
      triggers = {
        [1] = {
          trigger = {
            type = WeakAuras.GetTriggerCategoryFor("Stance/Form/Aura"),
            event = "Stance/Form/Aura",
            use_form = true,
            form = { single = j }
          }
        }
      }
    });
  end
end


------------------------------
-- Hardcoded race templates
-------------------------------

-- Will of Survive
tinsert(templates.race.Human, { spell = 59752, type = "ability" });
-- Stoneform
tinsert(templates.race.Dwarf, { spell = 20594, type = "ability", buff = true, titleSuffix = L["cooldown"]});
tinsert(templates.race.Dwarf, { spell = 20594, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- Shadow Meld
tinsert(templates.race.NightElf, { spell = 58984, type = "ability", buff = true, titleSuffix = L["cooldown"]});
tinsert(templates.race.NightElf, { spell = 58984, type = "buff", titleSuffix = L["buff"]});
-- Escape Artist
tinsert(templates.race.Gnome, { spell = 20589, type = "ability" });

-- Blood Fury
tinsert(templates.race.Orc, { spell = 20572, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Orc, { spell = 20572, type = "buff", unit = "player", titleSuffix = L["buff"]});
--Cannibalize
tinsert(templates.race.Scourge, { spell = 20577, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Scourge, { spell = 20578, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- Will of the Forsaken
tinsert(templates.race.Scourge, { spell = 7744, type = "ability", buff = true, titleSuffix = L["cooldown"]});
tinsert(templates.race.Scourge, { spell = 7744, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- War Stomp
tinsert(templates.race.Tauren, { spell = 20549, type = "ability", debuff = true, titleSuffix = L["cooldown"]});
tinsert(templates.race.Tauren, { spell = 20549, type = "debuff", titleSuffix = L["debuff"]});
--Beserking
tinsert(templates.race.Troll, { spell = 26297, type = "ability", buff = true, titleSuffix = L["cooldown"]});
tinsert(templates.race.Troll, { spell = 26297, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- Arcane Torrent
tinsert(templates.race.BloodElf, { spell = 28730, type = "ability", debuff = true, titleSuffix = L["cooldown"]});
-- Gift of the Naaru
tinsert(templates.race.Draenei, { spell = 28880, type = "ability", buff = true, titleSuffix = L["cooldown"]});
tinsert(templates.race.Draenei, { spell = 28880, type = "buff", unit = "player", titleSuffix = L["buff"]});
-- Quaking Palm
tinsert(templates.race.Pandaren, { spell = 107079, type = "ability", titleSuffix = L["cooldown"]});
tinsert(templates.race.Pandaren, { spell = 107079, type = "buff", titleSuffix = L["buff"]});
------------------------------
-- Helper code for options
-------------------------------

-- Enrich items from spell, set title
local function handleItem(item)
  local waitingForItemInfo = false;
  if (item.spell) then
    local name, icon, _;
    if (item.type == "item") then
      name, _, _, _, _, _, _, _, _, icon = C_Item.GetItemInfo(item.spell);
      if (name == nil) then
        name = L["Unknown Item"] .. " " .. tostring(item.spell);
        waitingForItemInfo = true;
      end
    else
      name, _, icon = GetSpellInfo(item.spell);
      if (name == nil) then
        name = L["Unknown Spell"] .. " " .. tostring(item.spell);
      end
    end
    if (icon and not item.icon) then
      item.icon = icon;
    end

    item.title = item.overideTitle or name or "";
    if (item.titleSuffix) then
      item.title = item.title .. " " .. item.titleSuffix;
    end
    if (item.titlePrefix) then
      item.title = item.titlePrefix .. item.title;
    end
    if (item.titleItemPrefix) then
      local prefix = C_Item.GetItemInfo(item.titleItemPrefix);
      if (prefix) then
        item.title = prefix .. "-" .. item.title;
      else
        waitingForItemInfo = true;
      end
    end
    if (item.type ~= "item") then
      local spell = Spell:CreateFromSpellID(item.spell);
      if (not spell:IsSpellEmpty()) then
        spell:ContinueOnSpellLoad(function()
          item.description = GetSpellDescription(spell:GetSpellID());
        end);
      end
      item.description = GetSpellDescription(item.spell);
    end
  end
  if (item.talent) then
    item.load = item.load or {};
    if type(item.talent) == "table" then
      item.load.talent = { multi = {} };
      for _,v in pairs(item.talent) do
        item.load.talent.multi[v] = true;
      end
      item.load.use_talent = false;
    else
      item.load.talent = {
        single = item.talent,
        multi = {};
      };
      item.load.use_talent = true;
    end
  end
  if (item.pvptalent) then
    item.load = item.load or {};
    item.load.use_pvptalent = true;
    item.load.pvptalent = {
      single = item.pvptalent,
      multi = {};
    }
  end
  if (item.covenant) then
    item.load = item.load or {}
    item.load.use_covenant = true
    item.load.covenant = {
      single = item.covenant,
      multi = {}
    }
  end
  if (item.bonusItemId) then
    item.load = item.load or {}
    item.load.use_item_bonusid_equipped = true
    item.load.item_bonusid_equipped = tostring(item.bonusItemId)
  end
  -- form field is lazy handled by a usable condition
  if item.form then
    item.usable = true
  end
  return waitingForItemInfo;
end

local function addLoadCondition(item, loadCondition)
  -- No need to deep copy here, templates are read-only
  item.load = item.load or {};
  for k, v in pairs(loadCondition) do
    item.load[k] = v;
  end
end

local delayedEnrichDatabase = false;
local itemInfoReceived = CreateFrame("Frame")

local enrichTries = 0;
local function enrichDatabase()
  if (enrichTries > 3) then
    return;
  end
  enrichTries = enrichTries + 1;

  local waitingForItemInfo = false;
  for className, class in pairs(templates.class) do
    for specIndex, spec in pairs(class) do
      for _, section in pairs(spec) do
        local loadCondition = {
          use_class = true, class = { single = className, multi = {} },
        };
        for itemIndex, item in pairs(section.args or {}) do
          local handle = handleItem(item)
          if(handle) then
            waitingForItemInfo = true;
          end
          addLoadCondition(item, loadCondition);
        end
      end
    end
  end

  for raceName, race in pairs(templates.race) do
    local loadCondition = {
      use_race = true, race = { single = raceName, multi = {} }
    };
    for _, item in pairs(race) do
      local handle = handleItem(item)
      if handle then
        waitingForItemInfo = true;
      end
      if handle ~= nil then
        addLoadCondition(item, loadCondition);
      end
    end
  end

  for _, item in pairs(templates.general.args) do
    if (handleItem(item)) then
      waitingForItemInfo = true;
    end
  end

  if (waitingForItemInfo) then
    itemInfoReceived:RegisterEvent("GET_ITEM_INFO_RECEIVED");
  else
    itemInfoReceived:UnregisterEvent("GET_ITEM_INFO_RECEIVED");
  end
end


enrichDatabase();

itemInfoReceived:SetScript("OnEvent", function()
  if (not delayedEnrichDatabase) then
    delayedEnrichDatabase = true;
    C_Timer.After(2, function()
      enrichDatabase();
      delayedEnrichDatabase = false;
    end)
  end
end);


TemplatePrivate.triggerTemplates = templates


