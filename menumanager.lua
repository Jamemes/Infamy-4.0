Hooks:Add("LocalizationManagerPostInit", "INF4.LocalizationManagerPostInit", function(...)
	LocalizationManager:add_localized_strings({
		menu_infamy_infamy_panel_reputation_level = "Current reputation: $reputation;",
		menu_infamy_prestige_error_rank = "Infamy Pool system unlocks at Infamy 5",
		menu_infamy_infamy_panel_prestige_level = "Current Infamy Pool: ",
		menu_infamy_infamy_panel_infamy_level = "Current Infamy: $infamy;",
		menu_infamy_go_infamous_error_prestige_xp = "Not enough xp in your Infamy Pool",
		menu_infamy_go_infamous = "Go Infamous",
		menu_infamy_go_inf_rep = "With Reputation",
		menu_infamy_go_inf_prestige = "With Infamy Pool",
		menu_infamy_banner_unlock = "Unlocked at Infamy rank $rank;.",
		menu_infamy_box_title = "Infamy Reward",
		menu_infamy_box_description = "Reach this rank of Infamy to unlock something special!",
		menu_infamy_prestige_error_paused = "You must be level 100 to collect Infamy Pool xp",
		menu_infamy_go_infamous_error_level = "You need to be level 100 to go infamous",
		menu_infamy_banner_already_unlocked = "Item rewards have already been unlocked.\nExperience boost will be unlocked at Infamy rank $rank;",
		menu_infamy_desc_xp = "Experience gained is increased by ##$xpboost;##.",
	})

	if Idstring("russian"):key() == SystemInfo:language():key() then
		LocalizationManager:add_localized_strings({
			menu_infamy_infamy_panel_reputation_level = [[Текущий уровень репутации: $reputation;]],
			menu_infamy_prestige_error_rank = [[Система Резерва Бесславия разблокируется на 5 уровне Бесславия]],
			menu_infamy_infamy_panel_prestige_level = [[Текущий Резерв Бесславия:]],
			menu_infamy_infamy_panel_infamy_level = [[Текущий ранг: $infamy;]],
			menu_infamy_go_infamous_error_prestige_xp = [[В вашем Резерве Бесславия не хватает опыта]],
			menu_infamy_go_infamous = [[Go Infamous]],
			menu_infamy_go_inf_rep = [[С репутацией]],
			menu_infamy_go_inf_prestige = [[C Резервом Бесславия]],
			menu_infamy_banner_unlock = [[Открывается на $rank; ранге Бесславия.]],
			menu_infamy_box_title = [[Награда за Бесславие]],
			menu_infamy_box_description = [[Достигните этого ранга Бесславия, чтобы получить особую награду!]],
			menu_infamy_prestige_error_paused = [[Вы должны бать 100 уровня, чтобы получить опыт Резерва Бесславия]],
			menu_infamy_go_infamous_error_level = [[Вам нужен 100-ый уровень, чтобы получить ранг Бесславия.]],
			menu_infamy_banner_already_unlocked = [[Предметы уже были разблокированы\nБонус к получаемому опыту будет разблокирован на $rank; ранге Бесславия.]],
			menu_infamy_desc_xp = [[Количество получаемого опыта увеличено на ##$xpboost;##.]],
		})
	end
end)

MenuCallbackHandler._sound_source = SoundDevice:create_source("MenuCallbackHandler")

function MenuManager:play_join_stinger_by_index(index)
	local sound_switch = string.format("infamy_stinger_%02d", index)

	self._sound_source:set_switch("infamy_stinger", sound_switch)

	return self._sound_source:post_event("infamy_stinger_player_join")
end

function MenuCallbackHandler:_increase_infamous(yes_clbk)
	managers.menu_scene:destroy_infamy_card()

	local max_rank = #tweak_data.infamy.ranks

	if managers.experience:current_level() < 100 or max_rank <= managers.experience:current_rank() then
		return
	end

	local rank = managers.experience:current_rank() + 1

	managers.experience:reset()
	managers.experience:set_current_rank(rank)

	local offshore_cost = managers.money:get_infamous_cost(rank)

	if offshore_cost > 0 then
		managers.money:deduct_from_total(managers.money:total())
		managers.money:deduct_from_offshore(offshore_cost)
	end

	if managers.skilltree.infamy_reset then
		managers.skilltree:infamy_reset()
	else
		managers.skilltree:reset()
	end

	managers.blackmarket:reset_equipped()

	if managers.menu_component then
		managers.menu_component:refresh_player_profile_gui()
	end

	local logic = managers.menu:active_menu().logic

	if logic then
		logic:refresh_node()
		logic:select_item("crimenet")
	end

	managers.savefile:save_progress()
	managers.savefile:save_setting(true)
	managers.menu:post_event("infamous_player_join_stinger")

	if yes_clbk then
		yes_clbk()
	end

	-- if SystemInfo:distribution() == Idstring("STEAM") then
		-- managers.statistics:publish_level_to_steam()
	-- end
end

function MenuCallbackHandler:_increase_infamous_with_prestige(yes_clbk)
	managers.menu_scene:destroy_infamy_card()

	local max_rank = #tweak_data.infamy.ranks

	if managers.experience:current_level() < 100 or max_rank <= managers.experience:current_rank() then
		return
	end

	local rank = managers.experience:current_rank() + 1

	managers.experience:set_current_rank(rank)
	managers.experience:set_current_prestige_xp(0)

	local offshore_cost = managers.money:get_infamous_cost(rank)

	if offshore_cost > 0 then
		managers.money:deduct_from_total(managers.money:total())
		managers.money:deduct_from_offshore(offshore_cost)
	end

	if managers.menu_component then
		managers.menu_component:refresh_player_profile_gui()
	end

	local logic = managers.menu:active_menu().logic

	if logic then
		logic:refresh_node()
		logic:select_item("crimenet")
	end

	managers.savefile:save_progress()
	managers.savefile:save_setting(true)
	managers.menu:post_event("infamous_player_join_stinger")

	if yes_clbk then
		yes_clbk()
	end

	-- if SystemInfo:distribution() == Idstring("STEAM") then
		-- managers.statistics:publish_level_to_steam()
	-- end
end

function MenuCallbackHandler:become_infamous(params)
	if not self:can_become_infamous_4() then
		return
	end

	local rank = managers.experience:current_rank() + 1
	local infamous_cost = managers.money:get_infamous_cost(rank)
	local yes_clbk = params and params.yes_clbk or false
	local no_clbk = params and params.no_clbk
	local params = {
		cost = managers.experience:cash_string(infamous_cost),
		free = infamous_cost == 0
	}

	if infamous_cost <= managers.money:offshore() and managers.experience:current_level() >= 100 then
		function params.yes_func()
			managers.menu:open_node("blackmarket_preview_node", {
				{
					back_callback = callback(MenuCallbackHandler, MenuCallbackHandler, "_increase_infamous", yes_clbk)
				}
			})
			managers.menu:post_event("infamous_stinger_level_" .. (rank < 10 and "0" or "") .. tostring(rank))
			managers.menu_scene:spawn_infamy_card(rank)
		end
	end

	function params.no_func()
		if no_clbk then
			no_clbk()
		end
	end

	managers.menu:show_confirm_become_infamous(params)
end

function MenuCallbackHandler:become_infamous_with_prestige(params)
	if not self:can_become_infamous_4() then
		return
	end

	local rank = managers.experience:current_rank() + 1
	local infamous_cost = managers.money:get_infamous_cost(rank)
	local yes_clbk = params and params.yes_clbk or false
	local no_clbk = params and params.no_clbk
	local params = {
		cost = managers.experience:cash_string(infamous_cost),
		free = infamous_cost == 0,
		prestige = true
	}

	if infamous_cost <= managers.money:offshore() and managers.experience:current_level() >= 100 then
		function params.yes_func()
			managers.menu:open_node("blackmarket_preview_node", {
				{
					back_callback = callback(MenuCallbackHandler, MenuCallbackHandler, "_increase_infamous_with_prestige", yes_clbk)
				}
			})
			managers.menu:post_event("infamous_stinger_level_" .. (rank < 10 and "0" or "") .. tostring(rank))
			managers.menu_scene:spawn_infamy_card(rank)
		end
	end

	function params.no_func()
		if no_clbk then
			no_clbk()
		end
	end

	managers.menu:show_confirm_become_infamous(params)
end


function MenuCallbackHandler:can_become_infamous_4()
	return self:is_level_100() and self:is_not_max_rank()
end

function MenuCallbackHandler:can_become_infamous()
	return false
end