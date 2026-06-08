function ChatManager:receive_message_by_peer(channel_id, peer, message)
	self:_receive_message(channel_id, peer:name(), message, tweak_data.chat_colors[peer:id()], (peer:level() == nil and managers.experience:current_rank() > 0 or 0 < peer:rank()) and tweak_data.infamy:rank_icon(peer:rank()))
end