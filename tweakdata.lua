local function digest(value)
	return Application:digest_value(value, true)
end

tweak_data.screen_colors.infamy_color = Color("C864C8")

tweak_data.infamy.ranks = {}

for i = 0, 500 do
	table.insert(tweak_data.infamy.ranks, digest(0))
end

tweak_data.infamy.offshore_cost = {
	digest(200000000),
	digest(200000000),
	digest(200000000),
	digest(200000000),
	digest(200000000),
	digest(0)
}

tweak_data.infamy.statistics_rank_steps = {}

tweak_data.infamy.infamy_icons = {
	{
		hud_icon = "infamy_icon_1",
		color = Color("000000")
	},
	{
		hud_icon = "infamy_icon_2",
		color = Color("B8000A")
	},
	{
		hud_icon = "infamy_icon_3",
		color = Color("000000")
	},
	{
		hud_icon = "infamy_icon_4",
		color = Color("B8000A")
	},
	{
		hud_icon = "infamy_icon_5",
		color = Color("FFD700")
	}
}

for i = 0, 25 do
	table.insert(tweak_data.infamy.statistics_rank_steps, 1, i)
end

if not tweak_data.infamy.items.infamy_maskpack_balaclava then
	for i = 1, 20 do
		table.insert(tweak_data.infamy.tree, "infamy_xp_medium_" .. i)
		tweak_data.infamy.items["infamy_xp_medium_" .. i] = deep_clone({
			name_id = "menu_infamy_name_xp",
			add_tier = false,
			desc_id = "menu_infamy_desc_xp",
			desc_params = {xpboost = "10%"},
			icon_xy = {1, 1},
			cost = digest(1),
			upgrades = {infamous_xp = 1.1}
		})
	end	
else
	tweak_data.infamy.tree = {
		"infamy_root",
		"infamy_mastermind",
		"infamy_enforcer",
		"infamy_technician",
		"infamy_ghost",
		"infamy_maskpack_balaclava",
		"infamy_maskpack_lurker",
		"infamy_maskpack_daft",
		"infamy_maskpack_punk",
		"infamy_maskpack_pain",
		"infamy_maskpack_ranger",
		"infamy_maskpack_hood",
		"infamy_maskpack_destroyer",
		"infamy_xp_medium_1",
		"infamy_xp_medium_2",
		"infamy_xp_medium_3",
		"infamy_xp_medium_4",
		"infamy_xp_medium_5",
		"infamy_xp_medium_6",
		"infamy_xp_medium_7",
		"infamy_xp_medium_8",
		"infamy_xp_medium_9",
		"infamy_xp_medium_10",
		"infamy_xp_medium_11",
		"infamy_xp_medium_12"
	}
end