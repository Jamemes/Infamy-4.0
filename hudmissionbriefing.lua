Hooks:PostHook(HUDMissionBriefing, "set_player_slot", "INF4.HUDMissionBriefing.set_player_slot.change_infamy_icon", function(self, nr, params)
	local slot = self._ready_slot_panel:child("slot_" .. tostring(nr))
	local infamy_icon = slot:child("infamy")
	if infamy_icon:visible() then
		local texture, pos = tweak_data.hud_icons:get_icon_data(tweak_data.infamy:rank_icon(params.rank))
		infamy_icon:move(0, 0.5)
		infamy_icon:set_image(texture)
		infamy_icon:set_texture_rect(pos[1], pos[2], pos[3], pos[4])
	end
end)