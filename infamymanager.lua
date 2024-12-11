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