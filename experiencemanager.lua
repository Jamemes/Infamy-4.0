function math.inverse_lerp(a, b, v)
	return (v - a) / (b - a)
end

function ExperienceManager:set_current_prestige_xp(value)
	self._global.prestige_xp_gained = Application:digest_value(math.min(value, self:get_max_prestige_xp()), true)
end

function ExperienceManager:get_current_prestige_xp()
	return self._global.prestige_xp_gained and Application:digest_value(self._global.prestige_xp_gained, false) or 0
end

function ExperienceManager:get_max_prestige_xp()
	return 30000000
end

function ExperienceManager:get_prestige_xp_percentage_progress()
	return math.inverse_lerp(0, self:get_max_prestige_xp(), self:get_current_prestige_xp())
end

Hooks:PreHook(ExperienceManager, "add_points", "Infamy_4_add_prestige_xp_gained", function(self, points)
	if self:level_cap() <= self:current_level() then
		if self:current_rank() >= 5 then
			self:set_current_prestige_xp(self:get_current_prestige_xp() + points)
		end
	end
end)

Hooks:PostHook(ExperienceManager, "save", "Infamy_4_save_prestige_xp_gained", function(self, data)
	data.ExperienceManager.prestige_xp_gained = self._global.prestige_xp_gained
end)

Hooks:PostHook(ExperienceManager, "load", "Infamy_4_load_prestige_xp_gained", function(self, data)
	local state = data.ExperienceManager
	if state then
		self._global.prestige_xp_gained = state.prestige_xp_gained or Application:digest_value(0, true)
	end
end)