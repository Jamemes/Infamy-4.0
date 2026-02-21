Hooks:PreHook(NetworkPeer, "send", "INF4.NetworkPeer.send.PreHook", function(self, func_name)
	if func_name == "lobby_info" or func_name == "sync_profile" then
		_G.LuaNetworking:SendToPeer(self:id(), "INF4_rank_info", table.concat({managers.network:session():local_peer():user_id(), managers.experience:current_rank()}, "|"))
	end
end)