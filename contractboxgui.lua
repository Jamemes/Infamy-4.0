Hooks:PostHook(ContractBoxGui, "create_character_text", "INF4.ContractBoxGui.create_character_text.change_infamy_icon", function(self, peer_id, x, y, text, icon)
	if self._peers_icon and self._peers_icon[peer_id] then
		local local_peer = managers.network:session() and managers.network:session():local_peer()
		local peer = managers.network:session():peer(peer_id)
		local player_rank = peer == local_peer and managers.experience:current_rank() or peer:rank()
		local texture, pos = tweak_data.hud_icons:get_icon_data(tweak_data.infamy:rank_icon(player_rank))
		self._peers_icon[peer_id]:move(0, 4)
		self._peers_icon[peer_id]:set_image(texture)
		self._peers_icon[peer_id]:set_texture_rect(pos[1], pos[2], pos[3], pos[4] + 16)
	end
end)