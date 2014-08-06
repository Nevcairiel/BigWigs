
--------------------------------------------------------------------------------
-- Module Declaration
--

if not BigWigs.isWOD then return end -- XXX compat
local mod, CL = BigWigs:NewBoss("Operator Thogar", 988, 1147)
if not mod then return end
mod:RegisterEnableMob(
	76906 -- Operator Thogar (Unconfirmed)
)
--mod.engageId = 1622

--------------------------------------------------------------------------------
-- Locals
--



--------------------------------------------------------------------------------
-- Localization
--

local L = mod:NewLocale("enUS", true)
if L then
	
end
L = mod:GetLocale()

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
		
	}
end

function mod:OnBossEnable()

	self:RegisterEvent("INSTANCE_ENCOUNTER_ENGAGE_UNIT", "CheckBossStatus")
end

--------------------------------------------------------------------------------
-- Event Handlers
--