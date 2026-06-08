InfamyManager.VERSION = 4
function InfamyManager:get_infamy_card_id_and_rect()
	local texture_id = "guis/textures/pd2/lootscreen/loot_cards"
	local texture_rect = {
		128,
		0,
		128,
		180
	}

	return texture_id, texture_rect
end

Hooks:PostHook(InfamyManager, "reset", "INF4.InfamyManager.reset.reset_card_gui", function()
	if managers.menu_scene._card_guis and managers.menu_scene._card_guis.menu_character then
		managers.menu_scene._card_guis.menu_character:destroy()
		managers.menu_scene._card_guis.menu_character = nil
	end
end)
