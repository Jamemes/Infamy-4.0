function InfamyManager:get_infamy_card_id_and_rect()
	local texture_id = "guis/textures/pd2/skilltree/ace"
	local texture_rect = {
		13.5,
		15,
		100,
		100
	}
	
	if DB:has(Idstring("texture"), "guis/dlcs/infamous/textures/pd2/infamous_tree/infamy_card_display") then
		texture_id = "guis/dlcs/infamous/textures/pd2/infamous_tree/infamy_card_display"

		local inf_rank = math.min(managers.experience:current_rank(), #tweak_data.infamy.ranks - 1) - 1
		local x_pos = 38 + (inf_rank - inf_rank % 100 - (inf_rank - inf_rank % 400)) / 100 * 256
		local y_pos = (inf_rank - inf_rank % 400) / 400 * 256
		texture_rect = {
			x_pos,
			y_pos,
			180,
			256
		}
	end

	return texture_id, texture_rect
end