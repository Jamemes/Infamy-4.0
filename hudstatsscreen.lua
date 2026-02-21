Hooks:PostHook(HUDStatsScreen, "_create_stats_screen_profile", "INF4.HUDStatsScreen._create_stats_screen_profile", function(self, profile_wrapper_panel)
	profile_wrapper_panel:clear()
	local next_level_data = managers.experience:next_level_data() or {}
	local current_progress = (next_level_data.current_points or 1) / (next_level_data.points or 1)
	
	local level_cap = managers.experience:level_cap()
	local plevel = managers.experience:current_level()
	local prank = managers.experience:current_rank()
	local prestige_xp = managers.experience:get_prestige_xp_percentage_progress()
	local at_max_level = plevel == level_cap
	local bg_ring = profile_wrapper_panel:bitmap({
		texture = "guis/textures/pd2/level_ring_small",
		w = 64,
		h = 64,
		alpha = 0.4,
		color = Color.black
	})
	local exp_ring = profile_wrapper_panel:bitmap({
		texture = "guis/textures/pd2/level_ring_small",
		h = 64,
		render_template = "VertexColorTexturedRadial",
		w = 64,
		blend_mode = "add",
		rotation = 360,
		layer = 1,
		color = at_max_level and Color(1, 1, 1) or Color(current_progress, 1, 1)
	})
	
	bg_ring:set_bottom(profile_wrapper_panel:h())
	exp_ring:set_bottom(profile_wrapper_panel:h())

	local gain_xp = managers.experience:get_xp_dissected(true, 0, true)
	local can_lvl_up = not at_max_level and gain_xp >= next_level_data.points - next_level_data.current_points
	local progress = (next_level_data.current_points or 1) / (next_level_data.points or 1)
	
	local exp_left_to_fill_the_pool = managers.experience:get_max_prestige_xp() - managers.experience:get_current_prestige_xp()
	local gain_progress = at_max_level and prestige_xp or (gain_xp or 1) / (next_level_data.points or 1)
	local calc_infamy_pool_progress = (gain_xp or 1) / (managers.experience:get_max_prestige_xp() or 1)
	local calc_infamy_pool_ceil = (exp_left_to_fill_the_pool or 1) / (managers.experience:get_max_prestige_xp() or 1)
	local gain_infamy_pool_progress = calc_infamy_pool_progress > calc_infamy_pool_ceil and calc_infamy_pool_ceil or calc_infamy_pool_progress
	local h = at_max_level and 70 or 64
	local w = at_max_level and 70 or 64
	local prestige_allowed = prestige_xp < 1 and prank > 0
	local below_max = plevel < 100 or prestige_allowed
	
	if at_max_level then
		exp_ring:set_layer(4)
		local infamy_pool_gain_ring = profile_wrapper_panel:bitmap({
			texture = "guis/textures/pd2/level_ring_potential_small",
			render_template = "VertexColorTexturedRadial",
			h = h + 7,
			w = w + 7,
			blend_mode = "normal",
			rotation = 360,
			layer = 3,
			color = Color(gain_infamy_pool_progress, 1, 0)
		})
		infamy_pool_gain_ring:rotate(360 * prestige_xp)
		infamy_pool_gain_ring:set_center(exp_ring:center())
	end

	local exp_ring_purple = "guis/textures/pd2/hud_progress_active"
	if (blt and blt.db_create_entry) or (DB and DB.create_entry) then
		exp_ring_purple = "guis/textures/pd2/exp_ring_purple"
	end

	local exp_gain_ring = profile_wrapper_panel:bitmap({
		texture = at_max_level and exp_ring_purple or "guis/textures/pd2/level_ring_potential_small",
		h = h,
		w = w,
		render_template = "VertexColorTexturedRadial",
		blend_mode = "normal",
		rotation = 360,
		layer = 2,
		color = Color(gain_progress, 1, 0)
	})

	if not at_max_level then
		exp_gain_ring:rotate(360 * progress)
	end
	
	exp_gain_ring:set_center(exp_ring:center())

	local level_text = profile_wrapper_panel:text({
		name = "level_text",
		font = tweak_data.menu.pd2_medium_font,
		font_size = at_max_level and tweak_data.menu.pd2_small_font_size or tweak_data.hud_stats.day_description_size,
		text = at_max_level and math.floor(prestige_xp * 100) .. "%" or tostring(plevel),
		color = tweak_data.screen_colors.text
	})

	managers.hud:make_fine_text(level_text)
	level_text:set_center(exp_ring:center())

	if not below_max then
		local text = managers.localization:to_upper_text("hud_at_max_level")
		local at_max_level_text = profile_wrapper_panel:text({
			name = "at_max_level_text",
			text = text,
			font_size = tweak_data.menu.pd2_small_font_size,
			font = tweak_data.menu.pd2_small_font,
			color = tweak_data.hud_stats.potential_xp_color
		})

		managers.hud:make_fine_text(at_max_level_text)
		at_max_level_text:set_left(math.round(exp_ring:right() + 4))
		at_max_level_text:set_center_y(math.round(exp_ring:center_y()) + 0)
	else
		local next_level_in = profile_wrapper_panel:text({
			text = "",
			name = "next_level_in",
			font_size = tweak_data.menu.pd2_small_font_size,
			font = tweak_data.menu.pd2_small_font,
			color = tweak_data.screen_colors.text
		})
		
		local points = next_level_data.points - next_level_data.current_points
		local prestige_xp_left = exp_left_to_fill_the_pool > 0 and exp_left_to_fill_the_pool or 0
		
		local points_left = managers.money:add_decimal_marks_to_string(tostring(at_max_level and prestige_xp_left or points))
		next_level_in:set_text("##" .. managers.localization:to_upper_text("menu_es_next_level") .. "## " .. points_left)
		managers.menu_component:make_color_text(next_level_in, tweak_data.screen_colors.text:with_alpha(0.55))
		managers.hud:make_fine_text(next_level_in)
		next_level_in:set_left(math.round(exp_ring:right() + 4))
		next_level_in:set_center_y(math.round(exp_ring:center_y()) - 20)

		local text = managers.localization:to_upper_text("hud_potential_xp", {
			XP = "##" .. managers.money:add_decimal_marks_to_string(tostring(gain_xp)) .. "##"
		})
		local gain_xp_text = profile_wrapper_panel:text({
			name = "gain_xp_text",
			text = text,
			font_size = tweak_data.menu.pd2_small_font_size,
			font = tweak_data.menu.pd2_small_font,
			color = tweak_data.screen_colors.text:with_alpha(0.55)
		})

		managers.hud:make_fine_text(gain_xp_text)
		gain_xp_text:set_left(math.round(exp_ring:right() + 4))
		gain_xp_text:set_center_y(math.round(exp_ring:center_y()) + 0)
		managers.menu_component:make_color_text(gain_xp_text, tweak_data.hud_stats.potential_xp_color)

		local level_ups = math.floor(managers.experience:get_levels_gained_from_xp(gain_xp))
		local above = at_max_level and "##" .. managers.localization:to_upper_text("menu_infamy_infamy_panel_prestige_level") .. "## " .. managers.money:add_decimal_marks_to_string(tostring(managers.experience:get_current_prestige_xp()))
		local below = can_lvl_up and "##" .. managers.localization:to_upper_text("hud_potential_level_up"):gsub("!", "") ..":## ".. level_ups .. "!" or ""
		
		local potential_level_up_text = profile_wrapper_panel:text({
			vertical = "center",
			name = "potential_level_up_text",
			blend_mode = "normal",
			align = "left",
			layer = 3,
			text = "",
			font_size = tweak_data.menu.pd2_small_font_size,
			font = tweak_data.menu.pd2_small_font,
			color = tweak_data.hud_stats.potential_xp_color
		})

		potential_level_up_text:set_text(above or below or "")
		potential_level_up_text:set_color(at_max_level and tweak_data.screen_colors.infamy_color or tweak_data.hud_stats.potential_xp_color)
		managers.menu_component:make_color_text(potential_level_up_text, tweak_data.screen_colors.text:with_alpha(0.55))
		
		managers.hud:make_fine_text(potential_level_up_text)
		potential_level_up_text:set_left(math.round(exp_ring:right() + 4))
		potential_level_up_text:set_center_y(math.round(exp_ring:center_y()) + 20)
		
		if can_lvl_up then
			potential_level_up_text:animate(callback(self, self, "_animate_text_pulse"), exp_gain_ring, exp_ring, bg_ring)
		end
	end
end)