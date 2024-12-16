Hooks:PreHook(HUDStageEndScreen, "update", "INF4_update", function(self, data)
	if managers.experience:prestige_availible() then
		if self._data and self._data.end_t.level ~= math.floor(managers.experience:get_prestige_xp_percentage_progress() * 100) then
			self._data.end_t.level = math.floor(managers.experience:get_prestige_xp_percentage_progress() * 100)
		end
		
		local prestige_progress = tostring(math.floor(self._lp_circle:color().red * 100)) .. "%"
		if self._data and self._data.start_t and self._data.start_t.level == 100 or self._lp_text:text() == "100" or self._lp_text:text() == prestige_progress then
			if self._data.start_t.level ~= 100 then
				self._data.start_t.level = 100
			end

			self._lp_text:set_text(prestige_progress)
			self._lp_forepanel:child("level_progress_text"):set_text(managers.localization:to_upper_text("menu_infamy_infamy_panel_prestige_level"))
			self._lp_forepanel:child("level_progress_text"):set_w(2000)
			self._lp_backpanel:child("bg_progress_circle"):set_color(tweak_data.screen_colors.infamy_color:with_alpha(0.3))
		end
	end
end)