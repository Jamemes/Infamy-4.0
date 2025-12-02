Hooks:PostHook(PlayerProfileGuiObject, "init", "INF4.PlayerProfileGuiObject.init", function(self)
	local player_level = managers.experience:prestige_availible() and math.floor(managers.experience:get_prestige_xp_percentage_progress() * 100) .. "%" or managers.experience:current_level()
	local player_rank = managers.experience:current_rank()
	local is_infamous = player_rank > 0
	local level_string = tostring(player_level) .. (is_infamous and "\n" .. managers.experience:rank_string(player_rank) or "")
	local level_text = self._panel:child(2)
	level_text:set_text(level_string)
	self:_make_fine_text(level_text)
	
	local _, _, w, h = level_text:text_rect()
	while level_text:h() > 44 or level_text:w() > 44 do
		level_text:set_font_size(level_text:font_size() * 0.99)
		self:_make_fine_text(level_text)
		_, _, w, h = level_text:text_rect()
	end
	
	level_text:set_align("center")
	level_text:set_center(self._panel:child(0):center())
	
	if managers.experience:prestige_availible() then
		local lvl_circle = self._panel:child(1)
		local lvl_circle_bg = self._panel:child(0)
		lvl_circle_bg:set_color(tweak_data.screen_colors.text)
		lvl_circle_bg:set_alpha(1)
		if DB:has(Idstring("texture"), Idstring("guis/textures/pd2/exp_ring_purple")) then
			lvl_circle:set_image("guis/textures/pd2/exp_ring_purple")
			lvl_circle:set_size(lvl_circle_bg:h() + 7, lvl_circle_bg:w() + 7)
		else
			lvl_circle:set_image("guis/textures/pd2/hud_progress_active")
			lvl_circle:set_size(lvl_circle_bg:h() + 3, lvl_circle_bg:w() + 3)
		end
		lvl_circle:set_center(self._panel:child(0):center())
	end
end)