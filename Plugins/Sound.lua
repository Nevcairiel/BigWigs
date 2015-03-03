-------------------------------------------------------------------------------
-- Module Declaration
--

local plugin = BigWigs:NewPlugin("Sounds")
if not plugin then return end

-------------------------------------------------------------------------------
-- Locals
--

local media = LibStub("LibSharedMedia-3.0")
local mType = media.MediaType and media.MediaType.SOUND or "sound"
local soundList = nil
local db, bwDb

local sounds = {
	Long = "BigWigs: Long",
	Info = "BigWigs: Info",
	Alert = "BigWigs: Alert",
	Alarm = "BigWigs: Alarm",
	Warning = "BigWigs: Raid Warning",
}
local L = LibStub("AceLocale-3.0"):GetLocale("Big Wigs: Plugins")

--------------------------------------------------------------------------------
-- Options
--

plugin.defaultDB = {
	defaultonly = false,
	media = {
		Long = "BigWigs: Long",
		Info = "BigWigs: Info",
		Alert = "BigWigs: Alert",
		Alarm = "BigWigs: Alarm",
		Warning = "BigWigs: Raid Warning",
	},
}

plugin.pluginOptions = {
	type = "group",
	name = L.Sounds,
	get = function(info)
		for i, v in next, soundList do
			if v == plugin.db.profile.media[info[#info]] then
				return i
			end
		end
	end,
	set = function(info, value)
		local sound = info[#info]
		PlaySoundFile(media:Fetch(mType, soundList[value]), "Master")
		plugin.db.profile.media[sound] = soundList[value]
	end,
	args = {
		default = {
			type = "toggle",
			name = "|cfffed000".. L.defaultOnly .."|r",
			desc = L.soundDefaultDescription,
			get = function(info) return plugin.db.profile.defaultonly end,
			set = function(info, v) plugin.db.profile.defaultonly = v end,
			order = 1,
			width = "full",
			descStyle = "inline",
		},
		resetAll = {
			type = "execute",
			name = L.resetAll,
			desc = L.resetAllCustomSound,
			func = function() plugin.db:ResetProfile() end,
			order = 3,
		},
	}
}

local soundOptions = {
	type = "group",
	name = L.Sounds,
	handler = plugin,
	inline = true,
	args = {
		customSoundDesc = {
			name = L.customSoundDesc,
			type = "description",
			order = 1,
			width = "full",
		},
	},
}
plugin.soundOptions = soundOptions

local function addKey(t, key)
	if t.type and t.type == "select" then
		t.arg = key
	elseif t.args then
		for k, v in next, t.args do
			t.args[k] = addKey(v, key)
		end
	end
	return t
end

local C = BigWigs.C
local keyTable = {}
function plugin:SetSoundOptions(name, key, flags)
	wipe(keyTable)
	keyTable[1] = name
	keyTable[2] = key
	local t = addKey(soundOptions, keyTable)
	if t.args.countdown then
		t.args.countdown.disabled = not flags or bit.band(flags, C.COUNTDOWN) == 0
	end
	return t
end

-------------------------------------------------------------------------------
-- Initialization
--

local function updateProfile()
	db = plugin.db.profile
	bwDb = BigWigs.db.profile
	db.media.Victory = nil -- XXX temp cleanup
end

local function shouldDisable() return plugin.db.profile.defaultonly end

function plugin:OnRegister()
	self:RegisterMessage("BigWigs_ProfileUpdate", updateProfile)
	updateProfile()

	media:Register(mType, "BigWigs: Long", "Interface\\AddOns\\BigWigs\\Sounds\\Long.ogg")
	media:Register(mType, "BigWigs: Info", "Interface\\AddOns\\BigWigs\\Sounds\\Info.ogg")
	media:Register(mType, "BigWigs: Alert", "Interface\\AddOns\\BigWigs\\Sounds\\Alert.ogg")
	media:Register(mType, "BigWigs: Alarm", "Interface\\AddOns\\BigWigs\\Sounds\\Alarm.ogg")
	media:Register(mType, "BigWigs: 5", "Interface\\AddOns\\BigWigs\\Sounds\\Amy\\5.ogg")
	media:Register(mType, "BigWigs: 4", "Interface\\AddOns\\BigWigs\\Sounds\\Amy\\4.ogg")
	media:Register(mType, "BigWigs: 3", "Interface\\AddOns\\BigWigs\\Sounds\\Amy\\3.ogg")
	media:Register(mType, "BigWigs: 2", "Interface\\AddOns\\BigWigs\\Sounds\\Amy\\2.ogg")
	media:Register(mType, "BigWigs: 1", "Interface\\AddOns\\BigWigs\\Sounds\\Amy\\1.ogg")

	-- Ingame sounds that DBM uses for DBM converts
	media:Register(mType, "BigWigs: [DBM] ".. L.FlagTaken, "Sound\\Spells\\PVPFlagTaken.ogg")
	media:Register(mType, "BigWigs: [DBM] ".. L.Beware, "Sound\\Creature\\AlgalonTheObserver\\UR_Algalon_BHole01.ogg")
	media:Register(mType, "BigWigs: [DBM] ".. L.Destruction, "Sound\\Creature\\KilJaeden\\KILJAEDEN02.ogg")
	media:Register(mType, "BigWigs: [DBM] ".. L.RunAway, "Sound\\Creature\\HoodWolf\\HoodWolfTransformPlayer01.ogg")

	-- Ingame sounds used by Blizzard
	media:Register(mType, "BigWigs: Raid Warning", "Sound\\Interface\\RaidWarning.ogg")
	media:Register(mType, "BigWigs: Raid Boss Whisper", "Sound\\Interface\\UI_RaidBossWhisperWarning.ogg")

	soundList = media:List(mType)

	for k, s in next, sounds do
		local n = L[k] or k
		self.pluginOptions.args[k] = {
			type = "select",
			name = n,
			order = 2,
			disabled = shouldDisable,
			values = soundList,
			width = "full",
			itemControl = "DDI-Sound",
		}
		soundOptions.args[k] = {
			name = n,
			get = function(info)
				local name, key = unpack(info.arg)
				local optionName = info[#info]
				for i, v in next, soundList do
					-- If no custom sound exists for this option, fall back to global sound option
					if v == (plugin.db.profile[optionName] and plugin.db.profile[optionName][name] and plugin.db.profile[optionName][name][key] or plugin.db.profile.media[optionName]) then
						return i
					end
				end
			end,
			set = function(info, value)
				local name, key = unpack(info.arg)
				local optionName = info[#info]
				if not plugin.db.profile[optionName] then plugin.db.profile[optionName] = {} end
				if not plugin.db.profile[optionName][name] then plugin.db.profile[optionName][name] = {} end
				plugin.db.profile[optionName][name][key] = soundList[value]
				-- We don't cleanup/reset the DB as someone may have a custom global sound but wish to use the default sound on a specific option
			end,
			type = "select",
			values = soundList,
			order = 2,
			width = "full",
			itemControl = "DDI-Sound",
		}
	end
end

function plugin:OnPluginEnable()
	self:RegisterMessage("BigWigs_Sound")
end

-------------------------------------------------------------------------------
-- Event Handlers
--

do
	local GetSpellInfo, PlaySoundFile, PlaySound, type = GetSpellInfo, PlaySoundFile, PlaySound, type
	function plugin:BigWigs_Sound(event, module, key, sound, overwrite)
		if bwDb.sound then
			local sDb = db[sound]
			if not module or not key or not sDb or not sDb[module.name] or not sDb[module.name][key] then
				if db.defaultonly and not overwrite then
					PlaySound("RaidWarning", "Master")
				else
					local path = db.media[sound] and media:Fetch(mType, db.media[sound]) or media:Fetch(mType, sound)
					if path then
						PlaySoundFile(path, "Master")
					end
				end
			else
				local newSound = sDb[module.name][key]
				if db.defaultonly and not overwrite then
					PlaySound("RaidWarning", "Master")
				else
					local path = db.media[newSound] and media:Fetch(mType, db.media[newSound]) or media:Fetch(mType, newSound)
					if path then
						PlaySoundFile(path, "Master")
					end
				end
			end
		end
	end
end

