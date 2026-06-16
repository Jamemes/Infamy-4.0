local label = HUDManager._add_name_label
function HUDManager:_add_name_label(data)
	local id = label(self, data)
	local infamy = self._hud.name_labels and self._hud.name_labels[id] and self._hud.name_labels[id].panel:child("infamy")
	if infamy and data.unit:base().is_husk_player then
		local texture, pos = tweak_data.hud_icons:get_icon_data(tweak_data.infamy:rank_icon(data.unit:network():peer():rank()))
		infamy:set_image(texture)
		infamy:set_texture_rect(pos[1], pos[2], pos[3], pos[4] + 16)
		infamy:move(0, 3)
	end

	return id
end