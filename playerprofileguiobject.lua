Hooks:PostHook(PlayerProfileGuiObject, "init", "INF4_PlayerProfileGuiObject_init", function(self)
	if managers.experience:prestige_availible() then
		self._panel:child(0):set_color(tweak_data.screen_colors.infamy_color:with_alpha(0.5))
	end
	
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
end)