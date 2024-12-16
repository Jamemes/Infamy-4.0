local function digest(value)
	return Application:digest_value(value, true)
end

tweak_data.screen_colors.infamy_color = Color("C864C8")

tweak_data.infamy.ranks = {}

for i = 0, 1000 do
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

if tweak_data.infamy.items.infamy_maskpack_balaclava then
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
		"infamy_maskpack_destroyer"
	}
end

local reward_type = {"masks", "textures", "materials", "colors"}
local tbl = {}
for index, item_type in pairs(reward_type) do
	local items = {}
	for id, item in pairs(tweak_data.blackmarket[item_type]) do
		if not item.dlc and item.pcs and #item.pcs > 0 and item.value > 0 then
			local value = tweak_data.blackmarket[item_type][id].infamous and item.value + 100 or item.value
			if tweak_data.blackmarket[item_type][id].infamous then
				table.insert(items, {value, {
					tweak_data.blackmarket[item_type][id].infamous and "infamy" or tweak_data.blackmarket[item_type][id].global_value,
					item_type,
					id
				}})
			end
		end
	end
	
	table.sort(items, function (a, b)
		return a[1] > b[1]
	end)

	local min = 0
	for i = 1, #items do
		if tbl[i] and #tbl[i] >= 3 then
			min = min + 1
		end
	end

	for i = 1, #items do
		if not tbl[i + min] then
			tbl[i + min] = {}
		end
		
		table.insert(tbl[i + min], items[i][2])
	end	
end

for i = 1, #tbl do
	table.insert(tweak_data.infamy.tree, "infamy_xp_medium_" .. i)
	local params = {
		name_id = "",
	    desc_id = "",
		add_tier = false,
		icon_xy = {1, 1},
		cost = digest(1),
		upgrades = {}
	}

	local desc_type = ""
	if tbl[i][1][2] == "masks" then
		params.name_id = "bm_msk_" .. tostring(tbl[i][1][3])
		params.desc_id = "bm_msk_" .. tostring(tbl[i][1][3]) .. "_desc"
	elseif tbl[i][1][2] == "textures" then
		params.name_id = "bm_txt_" .. tostring(tbl[i][1][3])
	elseif tbl[i][1][2] == "materials" then
		params.name_id = "bm_mtl_" .. tostring(tbl[i][1][3])
	elseif tbl[i][1][2] == "colors" then
		params.name_id = "bm_clr_" .. tostring(tbl[i][1][3])
	end
	
	params.upgrades = tbl[i]

	if #tweak_data.infamy.tree <= 25 then
		params.desc_id = {params.desc_id, "menu_infamy_desc_xp"}
		params.desc_params = {xpboost = "10%"}
		params.upgrades.infamous_xp = 1.1
	end
	
	tweak_data.infamy.items["infamy_xp_medium_" .. i] = deep_clone(params)
end


for i = 0, #tweak_data.infamy.tree do
	table.insert(tweak_data.infamy.statistics_rank_steps, 1, i)
end