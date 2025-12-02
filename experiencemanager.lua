function math.inverse_lerp(a, b, v)
	return (v - a) / (b - a)
end

function ExperienceManager:prestige_availible()
	return self:current_rank() >= 5 and self:current_level() >= self:level_cap()
end

function ExperienceManager:set_current_prestige_xp(value)
	Global.infamy_manager.unlocks.prestige_xp_gained = Application:digest_value(math.min(value, self:get_max_prestige_xp()), true)
end

function ExperienceManager:get_current_prestige_xp()
	return Global.infamy_manager.unlocks.prestige_xp_gained and Application:digest_value(Global.infamy_manager.unlocks.prestige_xp_gained, false) or 0
end

function ExperienceManager:get_max_prestige_xp()
	return 30000000
end

function ExperienceManager:get_prestige_xp_percentage_progress()
	return math.inverse_lerp(0, self:get_max_prestige_xp(), self:get_current_prestige_xp())
end

function ExperienceManager:xp_gained()
	if self:prestige_availible() then
		return self:get_current_prestige_xp()
	else
		return self._global.xp_gained and Application:digest_value(self._global.xp_gained, false) or 0
	end
end

function ExperienceManager:next_level_data_points()
	if self:prestige_availible() then
		return self:get_max_prestige_xp()
	else
		return self._global.next_level_data and Application:digest_value(self._global.next_level_data.points, false) or 0
	end
end

function ExperienceManager:next_level_data_current_points()
	if self:prestige_availible() then
		return self:get_current_prestige_xp()
	else
		return self._global.next_level_data and Application:digest_value(self._global.next_level_data.current_points, false) or 0
	end
end

function ExperienceManager:reached_level_cap()
	if self:prestige_availible() then
		return self:get_prestige_xp_percentage_progress() == 1
	else
		return self:current_level() >= self:level_cap()
	end
end

function ExperienceManager:rank_string(rank, use_roman_numerals)
	if use_roman_numerals == nil then
		use_roman_numerals = true
	end

	if not use_roman_numerals then
		return tostring(rank)
	end

	local numbers = {
		1,
		4,
		5,
		9,
		10,
		40,
		50,
		90,
		100,
		400,
		500,
		900,
		1000
	}
	local chars = {
		"I",
		"IV",
		"V",
		"IX",
		"X",
		"XL",
		"L",
		"XC",
		"C",
		"CD",
		"D",
		"CM",
		"M"
	}
	local roman = ""
	local index = #chars

	while rank > 0 do
		local div = rank / numbers[index]
		rank = rank % numbers[index]

		for i = 1, div do
			roman = roman .. chars[index]
		end

		index = index - 1
	end

	return roman
end

Hooks:PreHook(ExperienceManager, "add_points", "INF4.ExperienceManager.add_points", function(self, points)
	if self:prestige_availible() then
		self:set_current_prestige_xp(self:get_current_prestige_xp() + points)
	end
end)