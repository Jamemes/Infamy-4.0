Hooks:PostHook(HUDLootScreen, "feed_lootdrop", "INF4.HUDLootScreen.feed_lootdrop.change_infamy_icon", function(self, lootdrop_data)
	local peer = lootdrop_data[1]
	local peer_id = peer and peer:id() or 1
	local panel = self._peers_panel:child("peer" .. tostring(peer_id))
	local peer_info_panel = panel:child("peer_info")
	local peer_infamy = peer_info_panel:child("peer_infamy")
	if peer_infamy:visible() then
		local is_local_peer = self:get_local_peer_id() == peer_id
		local player_rank = is_local_peer and managers.experience:current_rank() or peer and peer:rank() or 0
		local texture, pos = tweak_data.hud_icons:get_icon_data(tweak_data.infamy:rank_icon(player_rank))
		peer_infamy:move(0, 4)
		peer_infamy:set_image(texture)
		peer_infamy:set_texture_rect(pos[1], pos[2], pos[3], pos[4] + 16)
	end
end)