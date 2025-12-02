Hooks:PostHook(HUDStageEndScreen, "update", "INF4.HUDStageEndScreen.update", function(self)
	if managers.experience:prestige_availible() then
		if self._data and self._data.gained ~= self._data.bonuses.total then
			self._data.gained = self._data.bonuses.total
		end
		
		if self._data and self._data.end_t.level ~= math.floor(managers.experience:get_prestige_xp_percentage_progress() * 100) then
			self._data.end_t.level = math.floor(managers.experience:get_prestige_xp_percentage_progress() * 100)
		end
		
		if not self._lp_panels_ajusted then
			self._lp_circle:move(0, 20)
			self._lp_text:move(-20, 20)
			self._lp_forepanel:move(20, 0)
			self._lp_forepanel:child("level_progress_text"):move(-10, 0)
			self._lp_backpanel:set_h(self._lp_backpanel:h() + 40)
			self._lp_backpanel:child("bg_progress_circle"):move(0, 20)
			self._box:close()
			self._box = BoxGuiObject:new(self._lp_backpanel, {
				sides = {
					1,
					1,
					1,
					1
				}
			})
			self._lp_panels_ajusted = true
		end

		if self._data and (self._data.start_t.total ~= managers.experience:get_max_prestige_xp() and self._static_start_xp and self._static_start_xp == 0 or self._data.start_t.total == managers.experience:get_max_prestige_xp()) then
			if not self._lp_circle_changed_to_prestige then
				if self._experience_added and self._static_start_xp == 0 then
					self._current_xp = 0
					self._experience_added = self._experience_added + managers.experience:get_current_prestige_xp()
				end
				self._lp_forepanel:child("level_progress_text"):set_text(managers.localization:to_upper_text("menu_infamy_infamy_panel_prestige_level"))
				self._lp_forepanel:child("level_progress_text"):set_w(2000)
				self._lp_backpanel:child("bg_progress_circle"):set_color(tweak_data.screen_colors.text)
				self._lp_circle:set_image(DB:has(Idstring("texture"), Idstring("guis/textures/pd2/exp_ring_purple")) and "guis/textures/pd2/exp_ring_purple" or "guis/textures/pd2/hud_progress_active")
				self._lp_circle_changed_to_prestige = true
			end
			
			self._lp_text:set_text(tostring(math.floor(self._lp_circle:color().red * 100)) .. "%")
		end
	end
end)
