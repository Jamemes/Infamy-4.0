local sync_profile = ConnectionNetworkHandler.sync_profile
function ConnectionNetworkHandler:sync_profile(...)
	local data = {...}
	local peer = self._verify_sender(data[#data])
	if not peer then
		return
	end

	data[2] = Global.INF4_rank_info and Global.INF4_rank_info[peer:ip()] or data[2]

	sync_profile(self, unpack(data))
end

local lobby_info = ConnectionNetworkHandler.lobby_info
function ConnectionNetworkHandler:lobby_info(...)
	local data = {...}
	local peer = self._verify_sender(data[#data])
	if not peer then
		return
	end

	data[2] = Global.INF4_rank_info and Global.INF4_rank_info[peer:ip()] or data[2]

	lobby_info(self, unpack(data))
end

Hooks:PostHook(ConnectionNetworkHandler, "send_chat_message", "INF4.ConnectionNetworkHandler.send_chat_message.PostHook", function(self, channel_id, message, sender)
	local peer = self._verify_sender(sender)
	if peer and peer:ip() and message:find("INF4_rank_info") and channel_id == 3 then
		local peer_data = string.split(message, "|")
		Global.INF4_rank_info = Global.INF4_rank_info or {}
		Global.INF4_rank_info[peer:ip()] = tonumber(peer_data[2])
	end
end)