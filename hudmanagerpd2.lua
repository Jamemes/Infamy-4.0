local label = HUDManager._add_name_label
function HUDManager:_add_name_label(data)
	local id = label(self, data)
	local infamy = self._hud.name_labels[id].panel:child("infamy")
	if infamy and data.unit:base().is_husk_player then
		local texture = tweak_data.hud_icons:get_icon_data(tweak_data.infamy:rank_icon(data.unit:network():peer():rank()))
		infamy:set_image(texture)
	end

	return id
end