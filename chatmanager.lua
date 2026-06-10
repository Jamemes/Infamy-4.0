function ChatManager:receive_message_by_peer(channel_id, peer, message)
	if type(self.is_peer_muted) ~= "nil" and self:is_peer_muted(peer) then
		return
	end

	local color_id = peer:id()
	local color = tweak_data.chat_colors[color_id] or tweak_data.chat_colors[#tweak_data.chat_colors]
	local rank = peer:level() == nil and managers.experience:current_rank() or peer:rank()
	local icon = tweak_data.infamy:rank_icon(rank)

	self:_receive_message(channel_id, peer:name(), message, tweak_data.chat_colors[color_id] or tweak_data.chat_colors[#tweak_data.chat_colors], icon)
end