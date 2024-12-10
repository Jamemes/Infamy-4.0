function MoneyManager:get_infamous_cost(rank)
	return Application:digest_value(tweak_data.infamy.offshore_cost[rank] or tweak_data.infamy.offshore_cost[#tweak_data.infamy.offshore_cost], false)
end