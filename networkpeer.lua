Hooks:PreHook(NetworkPeer, "send", "INF4.NetworkPeer.send.PreHook", function(self, func_name)
	if func_name == "lobby_info" or func_name == "sync_profile" then
		self:send("send_chat_message", 3, table.concat({"INF4_rank_info", managers.experience:current_rank()}, "|"))
	end
end)