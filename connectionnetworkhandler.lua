
Hooks:Add("NetworkReceivedData", "INF4_receive_rank", function(sender, id, data)
	if id == "INF4_rank_info" then
		local peer_data = string.split(data, "|")
		if peer_data[1] and peer_data[2] then
			Global.INF4_rank_info = Global.INF4_rank_info or {}
			Global.INF4_rank_info[peer_data[1]] = tonumber(peer_data[2])
		end
	end
end)

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